; ModuleID = 'fs/proc/inode.c'
source_filename = "fs/proc/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.pcpu_hot = type { %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [16 x i8] }
%struct.anon.33 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
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
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.17, ptr, %union.anon.18, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.pde_opener = type { %struct.list_head, ptr, i8, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.25, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.25 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.delayed_call = type { ptr, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, %union.anon.28 }
%union.anon.28 = type { ptr }
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
%struct.mm_struct = type { %struct.anon.29, [0 x i64] }
%struct.anon.29 = type { %struct.anon.30, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.30 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.31, i32, ptr }
%union.anon.31 = type { %struct.spinlock }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"proc_inode_cache\00", align 1, !dbg !0
@proc_inode_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !7
@.str.1 = private unnamed_addr constant [11 x i8] c"pde_opener\00", align 1, !dbg !4422
@pde_opener_cache = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !4438
@.str.2 = private unnamed_addr constant [15 x i8] c"proc_dir_entry\00", align 1, !dbg !4427
@proc_dir_entry_cache = external dso_local global ptr, align 8
@proc_sops = hidden constant %struct.super_operations { ptr @proc_alloc_inode, ptr null, ptr @proc_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @proc_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @proc_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4432
@proc_link_inode_operations = hidden constant %struct.inode_operations { ptr null, ptr @proc_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4434
@proc_iter_file_ops = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr null, ptr @proc_reg_write, ptr @proc_reg_read_iter, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i64 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4488
@proc_reg_file_ops = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr @proc_reg_read, ptr @proc_reg_write, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i64 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4490
@proc_iter_file_ops_compat = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr null, ptr @proc_reg_write, ptr @proc_reg_read_iter, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr @proc_reg_compat_ioctl, ptr @proc_reg_mmap, i64 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4492
@proc_reg_file_ops_compat = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr @proc_reg_read, ptr @proc_reg_write, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr @proc_reg_compat_ioctl, ptr @proc_reg_mmap, i64 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4494
@.str.3 = private unnamed_addr constant [16 x i8] c"fs/proc/inode.c\00", align 1, !dbg !4436
@.str.4 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1, !dbg !4440
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c",hidepid=%s\00", align 1, !dbg !4442
@.str.6 = private unnamed_addr constant [12 x i8] c",subset=pid\00", align 1, !dbg !4445
@overflowgid = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !4447
@.str.8 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1, !dbg !4450
@.str.9 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1, !dbg !4455
@.str.10 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1, !dbg !4460
@hidepid2str.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4462
@.str.11 = private unnamed_addr constant [24 x i8] c"bad hide_pid value: %d\0A\00", align 1, !dbg !4481
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !4486
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @proc_init_kmemcache() #0 section ".init.text" align 16 !dbg !4505 {
entry:
  %call = call ptr @kmem_cache_create(ptr noundef @.str, i32 noundef 672, i32 noundef 0, i32 noundef 1441792, ptr noundef @init_once) #10, !dbg !4506
  store ptr %call, ptr @proc_inode_cachep, align 8, !dbg !4507
  %call1 = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 40, i32 noundef 0, i32 noundef 262144, ptr noundef null) #10, !dbg !4508
  store ptr %call1, ptr @pde_opener_cache, align 8, !dbg !4509
  %call2 = call ptr @kmem_cache_create_usercopy(ptr noundef @.str.2, i32 noundef 192, i32 noundef 0, i32 noundef 262144, i32 noundef 172, i32 noundef 16, ptr noundef null) #10, !dbg !4510
  store ptr %call2, ptr @proc_dir_entry_cache, align 8, !dbg !4511
  br label %do.body, !dbg !4512

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4513

do.end:                                           ; preds = %do.body
  ret void, !dbg !4515
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4516 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_once(ptr noundef %foo) #2 align 16 !dbg !4520 {
entry:
  %foo.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %foo.addr, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4523, metadata !DIExpression()), !dbg !4526
  %0 = load ptr, ptr %foo.addr, align 8, !dbg !4527
  store ptr %0, ptr %ei, align 8, !dbg !4526
  %1 = load ptr, ptr %ei, align 8, !dbg !4528
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %1, i32 0, i32 8, !dbg !4529
  call void @inode_init_once(ptr noundef %vfs_inode) #10, !dbg !4530
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !4531
  ret void, !dbg !4531
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4532 dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @proc_invalidate_siblings_dcache(ptr noundef %inodes, ptr noundef %lock) #2 align 16 !dbg !4535 {
entry:
  %inodes.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %node = alloca ptr, align 8
  %old_sb = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  store ptr %inodes, ptr %inodes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inodes.addr, metadata !4539, metadata !DIExpression()), !dbg !4556
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4540, metadata !DIExpression()), !dbg !4557
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4558
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4541, metadata !DIExpression()), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4542, metadata !DIExpression()), !dbg !4561
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #11, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %node, metadata !4543, metadata !DIExpression()), !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_sb) #11, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %old_sb, metadata !4544, metadata !DIExpression()), !dbg !4565
  store ptr null, ptr %old_sb, align 8, !dbg !4565
  call void @rcu_read_lock() #10, !dbg !4566
  br label %for.cond, !dbg !4567

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #11, !dbg !4568
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4545, metadata !DIExpression()), !dbg !4569
  %0 = load ptr, ptr %inodes.addr, align 8, !dbg !4570
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !4570
  %1 = load ptr, ptr %first, align 8, !dbg !4570
  store ptr %1, ptr %node, align 8, !dbg !4571
  %2 = load ptr, ptr %node, align 8, !dbg !4572
  %tobool = icmp ne ptr %2, null, !dbg !4572
  br i1 %tobool, label %if.end, label %if.then, !dbg !4574

if.then:                                          ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4575

if.end:                                           ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4549, metadata !DIExpression()), !dbg !4576
  %3 = load ptr, ptr %node, align 8, !dbg !4576
  store ptr %3, ptr %__mptr, align 8, !dbg !4576
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4576
  %add.ptr = getelementptr i8, ptr %4, i64 -48, !dbg !4576
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4577
  %5 = load ptr, ptr %tmp, align 8, !dbg !4576
  store ptr %5, ptr %ei, align 8, !dbg !4578
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !4579
  call void @spin_lock(ptr noundef %6) #10, !dbg !4580
  %7 = load ptr, ptr %ei, align 8, !dbg !4581
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, ptr %7, i32 0, i32 6, !dbg !4582
  call void @hlist_del_init_rcu(ptr noundef %sibling_inodes) #10, !dbg !4583
  %8 = load ptr, ptr %lock.addr, align 8, !dbg !4584
  call void @spin_unlock(ptr noundef %8) #10, !dbg !4585
  %9 = load ptr, ptr %ei, align 8, !dbg !4586
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %9, i32 0, i32 8, !dbg !4587
  store ptr %vfs_inode, ptr %inode, align 8, !dbg !4588
  %10 = load ptr, ptr %inode, align 8, !dbg !4589
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !4590
  %11 = load ptr, ptr %i_sb, align 8, !dbg !4590
  store ptr %11, ptr %sb, align 8, !dbg !4591
  %12 = load ptr, ptr %sb, align 8, !dbg !4592
  %13 = load ptr, ptr %old_sb, align 8, !dbg !4594
  %cmp = icmp ne ptr %12, %13, !dbg !4595
  br i1 %cmp, label %land.lhs.true, label %if.end2, !dbg !4596

land.lhs.true:                                    ; preds = %if.end
  %14 = load ptr, ptr %sb, align 8, !dbg !4597
  %s_active = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 16, !dbg !4598
  %call = call zeroext i1 @atomic_inc_not_zero(ptr noundef %s_active) #10, !dbg !4599
  br i1 %call, label %if.end2, label %if.then1, !dbg !4600

if.then1:                                         ; preds = %land.lhs.true
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4601, !llvm.loop !4602

if.end2:                                          ; preds = %land.lhs.true, %if.end
  %15 = load ptr, ptr %inode, align 8, !dbg !4606
  %call3 = call ptr @igrab(ptr noundef %15) #10, !dbg !4607
  store ptr %call3, ptr %inode, align 8, !dbg !4608
  call void @rcu_read_unlock() #10, !dbg !4609
  %16 = load ptr, ptr %sb, align 8, !dbg !4610
  %17 = load ptr, ptr %old_sb, align 8, !dbg !4612
  %cmp4 = icmp ne ptr %16, %17, !dbg !4613
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !4614

if.then5:                                         ; preds = %if.end2
  %18 = load ptr, ptr %old_sb, align 8, !dbg !4615
  %tobool6 = icmp ne ptr %18, null, !dbg !4615
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4618

if.then7:                                         ; preds = %if.then5
  %19 = load ptr, ptr %old_sb, align 8, !dbg !4619
  call void @deactivate_super(ptr noundef %19) #10, !dbg !4620
  br label %if.end8, !dbg !4620

if.end8:                                          ; preds = %if.then7, %if.then5
  %20 = load ptr, ptr %sb, align 8, !dbg !4621
  store ptr %20, ptr %old_sb, align 8, !dbg !4622
  br label %if.end9, !dbg !4623

if.end9:                                          ; preds = %if.end8, %if.end2
  %21 = load ptr, ptr %inode, align 8, !dbg !4624
  %tobool10 = icmp ne ptr %21, null, !dbg !4624
  %lnot = xor i1 %tobool10, true, !dbg !4624
  %lnot11 = xor i1 %lnot, true, !dbg !4624
  %lnot12 = xor i1 %lnot11, true, !dbg !4624
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !4624
  %conv = sext i32 %lnot.ext to i64, !dbg !4624
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4624
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4624
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4626

if.then14:                                        ; preds = %if.end9
  call void @rcu_read_lock() #10, !dbg !4627
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4629, !llvm.loop !4602

if.end15:                                         ; preds = %if.end9
  %22 = load ptr, ptr %inode, align 8, !dbg !4630
  %i_mode = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 0, !dbg !4630
  %23 = load i16, ptr %i_mode, align 8, !dbg !4630
  %conv16 = zext i16 %23 to i32, !dbg !4630
  %and = and i32 %conv16, 61440, !dbg !4630
  %cmp17 = icmp eq i32 %and, 16384, !dbg !4630
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !4631

if.then19:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #11, !dbg !4632
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !4551, metadata !DIExpression()), !dbg !4633
  %24 = load ptr, ptr %inode, align 8, !dbg !4634
  %call20 = call ptr @d_find_any_alias(ptr noundef %24) #10, !dbg !4635
  store ptr %call20, ptr %dir, align 8, !dbg !4633
  %25 = load ptr, ptr %dir, align 8, !dbg !4636
  %tobool21 = icmp ne ptr %25, null, !dbg !4636
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4638

if.then22:                                        ; preds = %if.then19
  %26 = load ptr, ptr %dir, align 8, !dbg !4639
  call void @d_invalidate(ptr noundef %26) #10, !dbg !4641
  %27 = load ptr, ptr %dir, align 8, !dbg !4642
  call void @dput(ptr noundef %27) #10, !dbg !4643
  br label %if.end23, !dbg !4644

if.end23:                                         ; preds = %if.then22, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #11, !dbg !4645
  br label %if.end26, !dbg !4646

if.else:                                          ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #11, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4554, metadata !DIExpression()), !dbg !4648
  br label %while.cond, !dbg !4649

while.cond:                                       ; preds = %while.body, %if.else
  %28 = load ptr, ptr %inode, align 8, !dbg !4650
  %call24 = call ptr @d_find_alias(ptr noundef %28) #10, !dbg !4651
  store ptr %call24, ptr %dentry, align 8, !dbg !4652
  %tobool25 = icmp ne ptr %call24, null, !dbg !4649
  br i1 %tobool25, label %while.body, label %while.end, !dbg !4649

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %dentry, align 8, !dbg !4653
  call void @d_invalidate(ptr noundef %29) #10, !dbg !4655
  %30 = load ptr, ptr %dentry, align 8, !dbg !4656
  call void @dput(ptr noundef %30) #10, !dbg !4657
  br label %while.cond, !dbg !4649, !llvm.loop !4658

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #11, !dbg !4661
  br label %if.end26

if.end26:                                         ; preds = %while.end, %if.end23
  %31 = load ptr, ptr %inode, align 8, !dbg !4662
  call void @iput(ptr noundef %31) #10, !dbg !4663
  call void @rcu_read_lock() #10, !dbg !4664
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4665
  br label %cleanup, !dbg !4665

cleanup:                                          ; preds = %if.end26, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #11, !dbg !4665
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 3, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !4666, !llvm.loop !4602

for.end:                                          ; preds = %cleanup
  call void @rcu_read_unlock() #10, !dbg !4667
  %32 = load ptr, ptr %old_sb, align 8, !dbg !4668
  %tobool27 = icmp ne ptr %32, null, !dbg !4668
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4670

if.then28:                                        ; preds = %for.end
  %33 = load ptr, ptr %old_sb, align 8, !dbg !4671
  call void @deactivate_super(ptr noundef %33) #10, !dbg !4672
  br label %if.end29, !dbg !4672

if.end29:                                         ; preds = %if.then28, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_sb) #11, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #11, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4673
  ret void, !dbg !4673

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !4674 {
entry:
  call void @__rcu_read_lock() #10, !dbg !4676
  br label %do.body, !dbg !4677

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4678

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4680

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4681

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4683
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4684 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4691
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4691
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !4691
  ret void, !dbg !4692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init_rcu(ptr noundef %n) #6 align 16 !dbg !4693 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load ptr, ptr %n.addr, align 8, !dbg !4700
  %call = call i32 @hlist_unhashed(ptr noundef %0) #10, !dbg !4702
  %tobool = icmp ne i32 %call, 0, !dbg !4702
  br i1 %tobool, label %if.end, label %if.then, !dbg !4703

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !4704
  call void @__hlist_del(ptr noundef %1) #10, !dbg !4706
  br label %do.body, !dbg !4707

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !4708

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4710

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4708

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr %n.addr, align 8, !dbg !4712
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !4712
  store volatile ptr null, ptr %pprev, align 8, !dbg !4712
  br label %do.end3, !dbg !4712

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4708

do.end4:                                          ; preds = %do.end3
  br label %if.end, !dbg !4714

if.end:                                           ; preds = %do.end4, %entry
  ret void, !dbg !4715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !4716 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4720
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4720
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !4720
  ret void, !dbg !4721
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_inc_not_zero(ptr noundef %v) #5 align 16 !dbg !4722 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  br label %do.body, !dbg !4730

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4731

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4733
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !4734
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4735
  %call = call zeroext i1 @raw_atomic_inc_not_zero(ptr noundef %1) #10, !dbg !4736
  ret i1 %call, !dbg !4737
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4738 dso_local ptr @igrab(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #6 align 16 !dbg !4741 {
entry:
  br label %do.body, !dbg !4742

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4743

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #10, !dbg !4745
  br label %do.body1, !dbg !4746

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4747

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4750 dso_local void @deactivate_super(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4751 dso_local ptr @d_find_any_alias(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4754 dso_local void @d_invalidate(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4755 dso_local void @dput(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4756 dso_local ptr @d_find_alias(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4757 dso_local void @iput(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_alloc_inode(ptr noundef %sb) #2 align 16 !dbg !4758 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4760, metadata !DIExpression()), !dbg !4762
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4761, metadata !DIExpression()), !dbg !4764
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4765
  %1 = load ptr, ptr @proc_inode_cachep, align 8, !dbg !4766
  %call = call ptr @alloc_inode_sb(ptr noundef %0, ptr noundef %1, i32 noundef 3264) #10, !dbg !4767
  store ptr %call, ptr %ei, align 8, !dbg !4768
  %2 = load ptr, ptr %ei, align 8, !dbg !4769
  %tobool = icmp ne ptr %2, null, !dbg !4769
  br i1 %tobool, label %if.end, label %if.then, !dbg !4771

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4772

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ei, align 8, !dbg !4773
  %pid = getelementptr inbounds %struct.proc_inode, ptr %3, i32 0, i32 0, !dbg !4774
  store ptr null, ptr %pid, align 8, !dbg !4775
  %4 = load ptr, ptr %ei, align 8, !dbg !4776
  %fd = getelementptr inbounds %struct.proc_inode, ptr %4, i32 0, i32 1, !dbg !4777
  store i32 0, ptr %fd, align 8, !dbg !4778
  %5 = load ptr, ptr %ei, align 8, !dbg !4779
  %op = getelementptr inbounds %struct.proc_inode, ptr %5, i32 0, i32 2, !dbg !4780
  store ptr null, ptr %op, align 8, !dbg !4781
  %6 = load ptr, ptr %ei, align 8, !dbg !4782
  %pde = getelementptr inbounds %struct.proc_inode, ptr %6, i32 0, i32 3, !dbg !4783
  store ptr null, ptr %pde, align 8, !dbg !4784
  %7 = load ptr, ptr %ei, align 8, !dbg !4785
  %sysctl = getelementptr inbounds %struct.proc_inode, ptr %7, i32 0, i32 4, !dbg !4786
  store ptr null, ptr %sysctl, align 8, !dbg !4787
  %8 = load ptr, ptr %ei, align 8, !dbg !4788
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, ptr %8, i32 0, i32 5, !dbg !4789
  store ptr null, ptr %sysctl_entry, align 8, !dbg !4790
  %9 = load ptr, ptr %ei, align 8, !dbg !4791
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, ptr %9, i32 0, i32 6, !dbg !4792
  call void @INIT_HLIST_NODE(ptr noundef %sibling_inodes) #10, !dbg !4793
  %10 = load ptr, ptr %ei, align 8, !dbg !4794
  %ns_ops = getelementptr inbounds %struct.proc_inode, ptr %10, i32 0, i32 7, !dbg !4795
  store ptr null, ptr %ns_ops, align 8, !dbg !4796
  %11 = load ptr, ptr %ei, align 8, !dbg !4797
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %11, i32 0, i32 8, !dbg !4798
  store ptr %vfs_inode, ptr %retval, align 8, !dbg !4799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4799

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !4800
  %12 = load ptr, ptr %retval, align 8, !dbg !4800
  ret ptr %12, !dbg !4800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_free_inode(ptr noundef %inode) #2 align 16 !dbg !4801 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr @proc_inode_cachep, align 8, !dbg !4805
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4806
  %call = call ptr @PROC_I(ptr noundef %1) #10, !dbg !4807
  call void @kmem_cache_free(ptr noundef %0, ptr noundef %call) #10, !dbg !4808
  ret void, !dbg !4809
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_evict_inode(ptr noundef %inode) #2 align 16 !dbg !4810 {
entry:
  %inode.addr = alloca ptr, align 8
  %de = alloca ptr, align 8
  %head = alloca ptr, align 8
  %ei = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4812, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #11, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %de, metadata !4813, metadata !DIExpression()), !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #11, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %head, metadata !4814, metadata !DIExpression()), !dbg !4820
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4815, metadata !DIExpression()), !dbg !4822
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4823
  %call = call ptr @PROC_I(ptr noundef %0) #10, !dbg !4824
  store ptr %call, ptr %ei, align 8, !dbg !4822
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4825
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, !dbg !4826
  call void @truncate_inode_pages_final(ptr noundef %i_data) #10, !dbg !4827
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4828
  call void @clear_inode(ptr noundef %2) #10, !dbg !4829
  %3 = load ptr, ptr %ei, align 8, !dbg !4830
  %pid = getelementptr inbounds %struct.proc_inode, ptr %3, i32 0, i32 0, !dbg !4832
  %4 = load ptr, ptr %pid, align 8, !dbg !4832
  %tobool = icmp ne ptr %4, null, !dbg !4830
  br i1 %tobool, label %if.then, label %if.end, !dbg !4833

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ei, align 8, !dbg !4834
  call void @proc_pid_evict_inode(ptr noundef %5) #10, !dbg !4836
  %6 = load ptr, ptr %ei, align 8, !dbg !4837
  %pid1 = getelementptr inbounds %struct.proc_inode, ptr %6, i32 0, i32 0, !dbg !4838
  store ptr null, ptr %pid1, align 8, !dbg !4839
  br label %if.end, !dbg !4840

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %ei, align 8, !dbg !4841
  %pde = getelementptr inbounds %struct.proc_inode, ptr %7, i32 0, i32 3, !dbg !4842
  %8 = load ptr, ptr %pde, align 8, !dbg !4842
  store ptr %8, ptr %de, align 8, !dbg !4843
  %9 = load ptr, ptr %de, align 8, !dbg !4844
  %tobool2 = icmp ne ptr %9, null, !dbg !4844
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4846

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %de, align 8, !dbg !4847
  call void @pde_put(ptr noundef %10) #10, !dbg !4849
  %11 = load ptr, ptr %ei, align 8, !dbg !4850
  %pde4 = getelementptr inbounds %struct.proc_inode, ptr %11, i32 0, i32 3, !dbg !4851
  store ptr null, ptr %pde4, align 8, !dbg !4852
  br label %if.end5, !dbg !4853

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load ptr, ptr %ei, align 8, !dbg !4854
  %sysctl = getelementptr inbounds %struct.proc_inode, ptr %12, i32 0, i32 4, !dbg !4855
  %13 = load ptr, ptr %sysctl, align 8, !dbg !4855
  store ptr %13, ptr %head, align 8, !dbg !4856
  %14 = load ptr, ptr %head, align 8, !dbg !4857
  %tobool6 = icmp ne ptr %14, null, !dbg !4857
  br i1 %tobool6, label %if.then7, label %if.end18, !dbg !4859

if.then7:                                         ; preds = %if.end5
  br label %do.body, !dbg !4860

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !4862

do.body8:                                         ; preds = %do.body
  br label %do.body9, !dbg !4864

do.body9:                                         ; preds = %do.body8
  br label %do.cond, !dbg !4866

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4866

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4864

do.body10:                                        ; preds = %do.end
  %15 = load ptr, ptr %ei, align 8, !dbg !4868
  %sysctl11 = getelementptr inbounds %struct.proc_inode, ptr %15, i32 0, i32 4, !dbg !4868
  store volatile ptr null, ptr %sysctl11, align 8, !dbg !4868
  br label %do.cond12, !dbg !4868

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !4868

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !4864

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4864

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !4862

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4862

do.end17:                                         ; preds = %do.cond16
  %16 = load ptr, ptr %inode.addr, align 8, !dbg !4870
  %17 = load ptr, ptr %head, align 8, !dbg !4871
  call void @proc_sys_evict_inode(ptr noundef %16, ptr noundef %17) #10, !dbg !4872
  br label %if.end18, !dbg !4873

if.end18:                                         ; preds = %do.end17, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #11, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #11, !dbg !4874
  ret void, !dbg !4874
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_show_options(ptr noundef %seq, ptr noundef %root) #2 align 16 !dbg !4875 {
entry:
  %seq.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %fs_info = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kgid_t, align 4
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !4877, metadata !DIExpression()), !dbg !4889
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !4878, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs_info) #11, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %fs_info, metadata !4879, metadata !DIExpression()), !dbg !4892
  %0 = load ptr, ptr %root.addr, align 8, !dbg !4893
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !4894
  %1 = load ptr, ptr %d_sb, align 8, !dbg !4894
  %call = call ptr @proc_sb_info(ptr noundef %1) #10, !dbg !4895
  store ptr %call, ptr %fs_info, align 8, !dbg !4892
  %2 = load ptr, ptr %fs_info, align 8, !dbg !4896
  %pid_gid = getelementptr inbounds %struct.proc_fs_info, ptr %2, i32 0, i32 3, !dbg !4898
  %val = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4899
  store i32 0, ptr %val, align 4, !dbg !4899
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %pid_gid, i32 0, i32 0, !dbg !4900
  %3 = load i32, ptr %coerce.dive, align 8, !dbg !4900
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4900
  %4 = load i32, ptr %coerce.dive1, align 4, !dbg !4900
  %call2 = call zeroext i1 @gid_eq(i32 %3, i32 %4) #10, !dbg !4900
  br i1 %call2, label %if.end, label %if.then, !dbg !4901

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %seq.addr, align 8, !dbg !4902
  %6 = load ptr, ptr %fs_info, align 8, !dbg !4903
  %pid_gid3 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 3, !dbg !4904
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %pid_gid3, i32 0, i32 0, !dbg !4905
  %7 = load i32, ptr %coerce.dive4, align 8, !dbg !4905
  %call5 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %7) #10, !dbg !4905
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.4, i32 noundef %call5) #10, !dbg !4906
  br label %if.end, !dbg !4906

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %fs_info, align 8, !dbg !4907
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, ptr %8, i32 0, i32 4, !dbg !4909
  %9 = load i32, ptr %hide_pid, align 4, !dbg !4909
  %cmp = icmp ne i32 %9, 0, !dbg !4910
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !4911

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %seq.addr, align 8, !dbg !4912
  %11 = load ptr, ptr %fs_info, align 8, !dbg !4913
  %hide_pid7 = getelementptr inbounds %struct.proc_fs_info, ptr %11, i32 0, i32 4, !dbg !4914
  %12 = load i32, ptr %hide_pid7, align 4, !dbg !4914
  %call8 = call ptr @hidepid2str(i32 noundef %12) #10, !dbg !4915
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef @.str.5, ptr noundef %call8) #10, !dbg !4916
  br label %if.end9, !dbg !4916

if.end9:                                          ; preds = %if.then6, %if.end
  %13 = load ptr, ptr %fs_info, align 8, !dbg !4917
  %pidonly = getelementptr inbounds %struct.proc_fs_info, ptr %13, i32 0, i32 5, !dbg !4919
  %14 = load i32, ptr %pidonly, align 8, !dbg !4919
  %cmp10 = icmp ne i32 %14, 0, !dbg !4920
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4921

if.then11:                                        ; preds = %if.end9
  %15 = load ptr, ptr %seq.addr, align 8, !dbg !4922
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef @.str.6) #10, !dbg !4923
  br label %if.end12, !dbg !4923

if.end12:                                         ; preds = %if.then11, %if.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs_info) #11, !dbg !4924
  ret i32 0, !dbg !4925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @proc_entry_rundown(ptr noundef %de) #2 align 16 !dbg !4926 {
entry:
  %de.addr = alloca ptr, align 8
  %c = alloca %struct.completion, align 8
  %pdeo = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !4930, metadata !DIExpression()), !dbg !4936
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #11, !dbg !4937
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4931, metadata !DIExpression()), !dbg !4937
  %done = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 0, !dbg !4937
  store i32 0, ptr %done, align 8, !dbg !4937
  %wait = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4937
  %lock = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 0, !dbg !4937
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 0, !dbg !4937
  %0 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4937
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4937
  store i32 0, ptr %counter, align 8, !dbg !4937
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 1, !dbg !4937
  %next = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 0, !dbg !4937
  %wait1 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4937
  %task_list2 = getelementptr inbounds %struct.swait_queue_head, ptr %wait1, i32 0, i32 1, !dbg !4937
  store ptr %task_list2, ptr %next, align 8, !dbg !4937
  %prev = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 1, !dbg !4937
  %wait3 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !4937
  %task_list4 = getelementptr inbounds %struct.swait_queue_head, ptr %wait3, i32 0, i32 1, !dbg !4937
  store ptr %task_list4, ptr %prev, align 8, !dbg !4937
  %1 = load ptr, ptr %de.addr, align 8, !dbg !4938
  %pde_unload_completion = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 4, !dbg !4939
  store ptr %c, ptr %pde_unload_completion, align 8, !dbg !4940
  %2 = load ptr, ptr %de.addr, align 8, !dbg !4941
  %in_use = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 0, !dbg !4943
  %call = call i32 @atomic_add_return(i32 noundef -2147483648, ptr noundef %in_use) #10, !dbg !4944
  %cmp = icmp ne i32 %call, -2147483648, !dbg !4945
  br i1 %cmp, label %if.then, label %if.end, !dbg !4946

if.then:                                          ; preds = %entry
  call void @wait_for_completion(ptr noundef %c) #10, !dbg !4947
  br label %if.end, !dbg !4947

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %de.addr, align 8, !dbg !4948
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 3, !dbg !4949
  call void @spin_lock(ptr noundef %pde_unload_lock) #10, !dbg !4950
  br label %while.cond, !dbg !4951

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %de.addr, align 8, !dbg !4952
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 2, !dbg !4953
  %call5 = call i32 @list_empty(ptr noundef %pde_openers) #10, !dbg !4954
  %tobool = icmp ne i32 %call5, 0, !dbg !4955
  %lnot = xor i1 %tobool, true, !dbg !4955
  br i1 %lnot, label %while.body, label %while.end, !dbg !4951

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdeo) #11, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %pdeo, metadata !4932, metadata !DIExpression()), !dbg !4957
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4958
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4934, metadata !DIExpression()), !dbg !4958
  %5 = load ptr, ptr %de.addr, align 8, !dbg !4958
  %pde_openers6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 2, !dbg !4958
  %next7 = getelementptr inbounds %struct.list_head, ptr %pde_openers6, i32 0, i32 0, !dbg !4958
  %6 = load ptr, ptr %next7, align 8, !dbg !4958
  store ptr %6, ptr %__mptr, align 8, !dbg !4958
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4958
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !4958
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4958
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4959
  %8 = load ptr, ptr %tmp, align 8, !dbg !4958
  store ptr %8, ptr %pdeo, align 8, !dbg !4960
  %9 = load ptr, ptr %de.addr, align 8, !dbg !4961
  %10 = load ptr, ptr %pdeo, align 8, !dbg !4962
  call void @close_pdeo(ptr noundef %9, ptr noundef %10) #10, !dbg !4963
  %11 = load ptr, ptr %de.addr, align 8, !dbg !4964
  %pde_unload_lock8 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 3, !dbg !4965
  call void @spin_lock(ptr noundef %pde_unload_lock8) #10, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdeo) #11, !dbg !4967
  br label %while.cond, !dbg !4951, !llvm.loop !4968

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %de.addr, align 8, !dbg !4969
  %pde_unload_lock9 = getelementptr inbounds %struct.proc_dir_entry, ptr %12, i32 0, i32 3, !dbg !4970
  call void @spin_unlock(ptr noundef %pde_unload_lock9) #10, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #11, !dbg !4972
  ret void, !dbg !4972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4973 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4977, metadata !DIExpression()), !dbg !4979
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4978, metadata !DIExpression()), !dbg !4980
  br label %do.body, !dbg !4981

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4982

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4984
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !4985
  %1 = load i32, ptr %i.addr, align 4, !dbg !4986
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4987
  %call = call i32 @raw_atomic_add_return(i32 noundef %1, ptr noundef %2) #10, !dbg !4988
  ret i32 %call, !dbg !4989
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4990 dso_local void @wait_for_completion(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !4993 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  br label %do.body, !dbg !5002

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5004

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5002
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5002
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5002
  store ptr %1, ptr %tmp, align 8, !dbg !5004
  %2 = load ptr, ptr %tmp, align 8, !dbg !5002
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5006
  %cmp = icmp eq ptr %2, %3, !dbg !5007
  %conv = zext i1 %cmp to i32, !dbg !5007
  ret i32 %conv, !dbg !5008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @close_pdeo(ptr noundef %pde, ptr noundef %pdeo) #2 align 16 !dbg !5009 {
entry:
  %pde.addr = alloca ptr, align 8
  %pdeo.addr = alloca ptr, align 8
  %c = alloca %struct.completion, align 8
  %file = alloca ptr, align 8
  %c6 = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5013, metadata !DIExpression()), !dbg !5021
  store ptr %pdeo, ptr %pdeo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdeo.addr, metadata !5014, metadata !DIExpression()), !dbg !5022
  %0 = load ptr, ptr %pdeo.addr, align 8, !dbg !5023
  %closing = getelementptr inbounds %struct.pde_opener, ptr %0, i32 0, i32 2, !dbg !5024
  %1 = load i8, ptr %closing, align 8, !dbg !5024, !range !5025, !noundef !613
  %tobool = trunc i8 %1 to i1, !dbg !5024
  br i1 %tobool, label %if.then, label %if.else, !dbg !5026

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #11, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5015, metadata !DIExpression()), !dbg !5027
  %done = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 0, !dbg !5027
  store i32 0, ptr %done, align 8, !dbg !5027
  %wait = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !5027
  %lock = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 0, !dbg !5027
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 0, !dbg !5027
  %2 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5027
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5027
  store i32 0, ptr %counter, align 8, !dbg !5027
  %task_list = getelementptr inbounds %struct.swait_queue_head, ptr %wait, i32 0, i32 1, !dbg !5027
  %next = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 0, !dbg !5027
  %wait1 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !5027
  %task_list2 = getelementptr inbounds %struct.swait_queue_head, ptr %wait1, i32 0, i32 1, !dbg !5027
  store ptr %task_list2, ptr %next, align 8, !dbg !5027
  %prev = getelementptr inbounds %struct.list_head, ptr %task_list, i32 0, i32 1, !dbg !5027
  %wait3 = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1, !dbg !5027
  %task_list4 = getelementptr inbounds %struct.swait_queue_head, ptr %wait3, i32 0, i32 1, !dbg !5027
  store ptr %task_list4, ptr %prev, align 8, !dbg !5027
  %3 = load ptr, ptr %pdeo.addr, align 8, !dbg !5028
  %c5 = getelementptr inbounds %struct.pde_opener, ptr %3, i32 0, i32 3, !dbg !5029
  store ptr %c, ptr %c5, align 8, !dbg !5030
  %4 = load ptr, ptr %pde.addr, align 8, !dbg !5031
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 3, !dbg !5032
  call void @spin_unlock(ptr noundef %pde_unload_lock) #10, !dbg !5033
  call void @wait_for_completion(ptr noundef %c) #10, !dbg !5034
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #11, !dbg !5035
  br label %if.end18, !dbg !5036

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #11, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5018, metadata !DIExpression()), !dbg !5038
  call void @llvm.lifetime.start.p0(i64 8, ptr %c6) #11, !dbg !5039
  call void @llvm.dbg.declare(metadata ptr %c6, metadata !5020, metadata !DIExpression()), !dbg !5040
  %5 = load ptr, ptr %pdeo.addr, align 8, !dbg !5041
  %closing7 = getelementptr inbounds %struct.pde_opener, ptr %5, i32 0, i32 2, !dbg !5042
  store i8 1, ptr %closing7, align 8, !dbg !5043
  %6 = load ptr, ptr %pde.addr, align 8, !dbg !5044
  %pde_unload_lock8 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 3, !dbg !5045
  call void @spin_unlock(ptr noundef %pde_unload_lock8) #10, !dbg !5046
  %7 = load ptr, ptr %pdeo.addr, align 8, !dbg !5047
  %file9 = getelementptr inbounds %struct.pde_opener, ptr %7, i32 0, i32 1, !dbg !5048
  %8 = load ptr, ptr %file9, align 8, !dbg !5048
  store ptr %8, ptr %file, align 8, !dbg !5049
  %9 = load ptr, ptr %pde.addr, align 8, !dbg !5050
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 6, !dbg !5051
  %11 = load ptr, ptr %10, align 8, !dbg !5051
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %11, i32 0, i32 6, !dbg !5052
  %12 = load ptr, ptr %proc_release, align 8, !dbg !5052
  %13 = load ptr, ptr %file, align 8, !dbg !5053
  %call = call ptr @file_inode(ptr noundef %13) #10, !dbg !5054
  %14 = load ptr, ptr %file, align 8, !dbg !5055
  %call10 = call i32 %12(ptr noundef %call, ptr noundef %14) #10, !dbg !5050
  %15 = load ptr, ptr %pde.addr, align 8, !dbg !5056
  %pde_unload_lock11 = getelementptr inbounds %struct.proc_dir_entry, ptr %15, i32 0, i32 3, !dbg !5057
  call void @spin_lock(ptr noundef %pde_unload_lock11) #10, !dbg !5058
  %16 = load ptr, ptr %pdeo.addr, align 8, !dbg !5059
  %lh = getelementptr inbounds %struct.pde_opener, ptr %16, i32 0, i32 0, !dbg !5060
  call void @list_del(ptr noundef %lh) #10, !dbg !5061
  %17 = load ptr, ptr %pdeo.addr, align 8, !dbg !5062
  %c12 = getelementptr inbounds %struct.pde_opener, ptr %17, i32 0, i32 3, !dbg !5063
  %18 = load ptr, ptr %c12, align 8, !dbg !5063
  store ptr %18, ptr %c6, align 8, !dbg !5064
  %19 = load ptr, ptr %pde.addr, align 8, !dbg !5065
  %pde_unload_lock13 = getelementptr inbounds %struct.proc_dir_entry, ptr %19, i32 0, i32 3, !dbg !5066
  call void @spin_unlock(ptr noundef %pde_unload_lock13) #10, !dbg !5067
  %20 = load ptr, ptr %c6, align 8, !dbg !5068
  %tobool14 = icmp ne ptr %20, null, !dbg !5068
  %lnot = xor i1 %tobool14, true, !dbg !5068
  %lnot15 = xor i1 %lnot, true, !dbg !5068
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5068
  %conv = sext i32 %lnot.ext to i64, !dbg !5068
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5068
  %tobool16 = icmp ne i64 %expval, 0, !dbg !5068
  br i1 %tobool16, label %if.then17, label %if.end, !dbg !5070

if.then17:                                        ; preds = %if.else
  %21 = load ptr, ptr %c6, align 8, !dbg !5071
  call void @complete(ptr noundef %21) #10, !dbg !5072
  br label %if.end, !dbg !5072

if.end:                                           ; preds = %if.then17, %if.else
  %22 = load ptr, ptr @pde_opener_cache, align 8, !dbg !5073
  %23 = load ptr, ptr %pdeo.addr, align 8, !dbg !5074
  call void @kmem_cache_free(ptr noundef %22, ptr noundef %23) #10, !dbg !5075
  call void @llvm.lifetime.end.p0(i64 8, ptr %c6) #11, !dbg !5076
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #11, !dbg !5076
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  ret void, !dbg !5077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done) #2 align 16 !dbg !5078 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %done.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5080, metadata !DIExpression()), !dbg !5084
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5081, metadata !DIExpression()), !dbg !5085
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !5082, metadata !DIExpression()), !dbg !5086
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !5083, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5089
  %call = call ptr @PDE(ptr noundef %0) #10, !dbg !5090
  store ptr %call, ptr %pde, align 8, !dbg !5088
  %1 = load ptr, ptr %pde, align 8, !dbg !5091
  %call1 = call i32 @use_pde(ptr noundef %1) #10, !dbg !5093
  %tobool = icmp ne i32 %call1, 0, !dbg !5093
  br i1 %tobool, label %if.end, label %if.then, !dbg !5094

if.then:                                          ; preds = %entry
  %call2 = call ptr @ERR_PTR(i64 noundef -22) #10, !dbg !5095
  store ptr %call2, ptr %retval, align 8, !dbg !5096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5096

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %done.addr, align 8, !dbg !5097
  %3 = load ptr, ptr %pde, align 8, !dbg !5098
  call void @set_delayed_call(ptr noundef %2, ptr noundef @proc_put_link, ptr noundef %3) #10, !dbg !5099
  %4 = load ptr, ptr %pde, align 8, !dbg !5100
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 10, !dbg !5101
  %5 = load ptr, ptr %data, align 8, !dbg !5101
  store ptr %5, ptr %retval, align 8, !dbg !5102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5102

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !5103
  %6 = load ptr, ptr %retval, align 8, !dbg !5103
  ret ptr %6, !dbg !5103
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @proc_get_inode(ptr noundef %sb, ptr noundef %de) #2 align 16 !dbg !5104 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %de.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5108, metadata !DIExpression()), !dbg !5111
  store ptr %de, ptr %de.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !5109, metadata !DIExpression()), !dbg !5112
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5110, metadata !DIExpression()), !dbg !5114
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5115
  %call = call ptr @new_inode(ptr noundef %0) #10, !dbg !5116
  store ptr %call, ptr %inode, align 8, !dbg !5114
  %1 = load ptr, ptr %inode, align 8, !dbg !5117
  %tobool = icmp ne ptr %1, null, !dbg !5117
  br i1 %tobool, label %if.end, label %if.then, !dbg !5119

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %de.addr, align 8, !dbg !5120
  call void @pde_put(ptr noundef %2) #10, !dbg !5122
  store ptr null, ptr %retval, align 8, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %de.addr, align 8, !dbg !5124
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 10, !dbg !5125
  %4 = load ptr, ptr %data, align 8, !dbg !5125
  %5 = load ptr, ptr %inode, align 8, !dbg !5126
  %i_private = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47, !dbg !5127
  store ptr %4, ptr %i_private, align 8, !dbg !5128
  %6 = load ptr, ptr %de.addr, align 8, !dbg !5129
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 12, !dbg !5130
  %7 = load i32, ptr %low_ino, align 4, !dbg !5130
  %conv = zext i32 %7 to i64, !dbg !5129
  %8 = load ptr, ptr %inode, align 8, !dbg !5131
  %i_ino = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12, !dbg !5132
  store i64 %conv, ptr %i_ino, align 8, !dbg !5133
  %9 = load ptr, ptr %inode, align 8, !dbg !5134
  %i_mtime = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17, !dbg !5135
  %10 = load ptr, ptr %inode, align 8, !dbg !5136
  %i_atime = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 16, !dbg !5137
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #11, !dbg !5138
  %11 = load ptr, ptr %inode, align 8, !dbg !5139
  %call1 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %11) #10, !dbg !5138
  %12 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5138
  %13 = extractvalue { i64, i64 } %call1, 0, !dbg !5138
  store i64 %13, ptr %12, align 8, !dbg !5138
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5138
  %15 = extractvalue { i64, i64 } %call1, 1, !dbg !5138
  store i64 %15, ptr %14, align 8, !dbg !5138
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp, i64 16, i1 false), !dbg !5138
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #11, !dbg !5138
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !5140
  %16 = load ptr, ptr %de.addr, align 8, !dbg !5141
  %17 = load ptr, ptr %inode, align 8, !dbg !5142
  %call2 = call ptr @PROC_I(ptr noundef %17) #10, !dbg !5143
  %pde = getelementptr inbounds %struct.proc_inode, ptr %call2, i32 0, i32 3, !dbg !5144
  store ptr %16, ptr %pde, align 8, !dbg !5145
  %18 = load ptr, ptr %de.addr, align 8, !dbg !5146
  %call3 = call zeroext i1 @is_empty_pde(ptr noundef %18) #10, !dbg !5148
  br i1 %call3, label %if.then4, label %if.end5, !dbg !5149

if.then4:                                         ; preds = %if.end
  %19 = load ptr, ptr %inode, align 8, !dbg !5150
  call void @make_empty_dir_inode(ptr noundef %19) #10, !dbg !5152
  %20 = load ptr, ptr %inode, align 8, !dbg !5153
  store ptr %20, ptr %retval, align 8, !dbg !5154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5154

if.end5:                                          ; preds = %if.end
  %21 = load ptr, ptr %de.addr, align 8, !dbg !5155
  %mode = getelementptr inbounds %struct.proc_dir_entry, ptr %21, i32 0, i32 21, !dbg !5157
  %22 = load i16, ptr %mode, align 8, !dbg !5157
  %tobool6 = icmp ne i16 %22, 0, !dbg !5155
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5158

if.then7:                                         ; preds = %if.end5
  %23 = load ptr, ptr %de.addr, align 8, !dbg !5159
  %mode8 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 21, !dbg !5161
  %24 = load i16, ptr %mode8, align 8, !dbg !5161
  %25 = load ptr, ptr %inode, align 8, !dbg !5162
  %i_mode = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 0, !dbg !5163
  store i16 %24, ptr %i_mode, align 8, !dbg !5164
  %26 = load ptr, ptr %inode, align 8, !dbg !5165
  %i_uid = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 2, !dbg !5166
  %27 = load ptr, ptr %de.addr, align 8, !dbg !5167
  %uid = getelementptr inbounds %struct.proc_dir_entry, ptr %27, i32 0, i32 14, !dbg !5168
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !5168
  %28 = load ptr, ptr %inode, align 8, !dbg !5169
  %i_gid = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 4, !dbg !5170
  %29 = load ptr, ptr %de.addr, align 8, !dbg !5171
  %gid = getelementptr inbounds %struct.proc_dir_entry, ptr %29, i32 0, i32 15, !dbg !5172
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %gid, i64 4, i1 false), !dbg !5172
  br label %if.end9, !dbg !5173

if.end9:                                          ; preds = %if.then7, %if.end5
  %30 = load ptr, ptr %de.addr, align 8, !dbg !5174
  %size = getelementptr inbounds %struct.proc_dir_entry, ptr %30, i32 0, i32 16, !dbg !5176
  %31 = load i64, ptr %size, align 8, !dbg !5176
  %tobool10 = icmp ne i64 %31, 0, !dbg !5174
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5177

if.then11:                                        ; preds = %if.end9
  %32 = load ptr, ptr %de.addr, align 8, !dbg !5178
  %size12 = getelementptr inbounds %struct.proc_dir_entry, ptr %32, i32 0, i32 16, !dbg !5179
  %33 = load i64, ptr %size12, align 8, !dbg !5179
  %34 = load ptr, ptr %inode, align 8, !dbg !5180
  %i_size = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 15, !dbg !5181
  store i64 %33, ptr %i_size, align 8, !dbg !5182
  br label %if.end13, !dbg !5180

if.end13:                                         ; preds = %if.then11, %if.end9
  %35 = load ptr, ptr %de.addr, align 8, !dbg !5183
  %nlink = getelementptr inbounds %struct.proc_dir_entry, ptr %35, i32 0, i32 13, !dbg !5185
  %36 = load i32, ptr %nlink, align 8, !dbg !5185
  %tobool14 = icmp ne i32 %36, 0, !dbg !5183
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5186

if.then15:                                        ; preds = %if.end13
  %37 = load ptr, ptr %inode, align 8, !dbg !5187
  %38 = load ptr, ptr %de.addr, align 8, !dbg !5188
  %nlink16 = getelementptr inbounds %struct.proc_dir_entry, ptr %38, i32 0, i32 13, !dbg !5189
  %39 = load i32, ptr %nlink16, align 8, !dbg !5189
  call void @set_nlink(ptr noundef %37, i32 noundef %39) #10, !dbg !5190
  br label %if.end17, !dbg !5190

if.end17:                                         ; preds = %if.then15, %if.end13
  %40 = load ptr, ptr %inode, align 8, !dbg !5191
  %i_mode18 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 0, !dbg !5191
  %41 = load i16, ptr %i_mode18, align 8, !dbg !5191
  %conv19 = zext i16 %41 to i32, !dbg !5191
  %and = and i32 %conv19, 61440, !dbg !5191
  %cmp = icmp eq i32 %and, 32768, !dbg !5191
  br i1 %cmp, label %if.then21, label %if.else33, !dbg !5193

if.then21:                                        ; preds = %if.end17
  %42 = load ptr, ptr %de.addr, align 8, !dbg !5194
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, ptr %42, i32 0, i32 5, !dbg !5196
  %43 = load ptr, ptr %proc_iops, align 8, !dbg !5196
  %44 = load ptr, ptr %inode, align 8, !dbg !5197
  %i_op = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 8, !dbg !5198
  store ptr %43, ptr %i_op, align 8, !dbg !5199
  %45 = load ptr, ptr %de.addr, align 8, !dbg !5200
  %46 = getelementptr inbounds %struct.proc_dir_entry, ptr %45, i32 0, i32 6, !dbg !5202
  %47 = load ptr, ptr %46, align 8, !dbg !5202
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, ptr %47, i32 0, i32 3, !dbg !5203
  %48 = load ptr, ptr %proc_read_iter, align 8, !dbg !5203
  %tobool22 = icmp ne ptr %48, null, !dbg !5200
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !5204

if.then23:                                        ; preds = %if.then21
  %49 = load ptr, ptr %inode, align 8, !dbg !5205
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 39, !dbg !5206
  store ptr @proc_iter_file_ops, ptr %50, align 8, !dbg !5207
  br label %if.end24, !dbg !5205

if.else:                                          ; preds = %if.then21
  %51 = load ptr, ptr %inode, align 8, !dbg !5208
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 39, !dbg !5209
  store ptr @proc_reg_file_ops, ptr %52, align 8, !dbg !5210
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %53 = load ptr, ptr %de.addr, align 8, !dbg !5211
  %54 = getelementptr inbounds %struct.proc_dir_entry, ptr %53, i32 0, i32 6, !dbg !5213
  %55 = load ptr, ptr %54, align 8, !dbg !5213
  %proc_compat_ioctl = getelementptr inbounds %struct.proc_ops, ptr %55, i32 0, i32 9, !dbg !5214
  %56 = load ptr, ptr %proc_compat_ioctl, align 8, !dbg !5214
  %tobool25 = icmp ne ptr %56, null, !dbg !5211
  br i1 %tobool25, label %if.then26, label %if.end32, !dbg !5215

if.then26:                                        ; preds = %if.end24
  %57 = load ptr, ptr %de.addr, align 8, !dbg !5216
  %58 = getelementptr inbounds %struct.proc_dir_entry, ptr %57, i32 0, i32 6, !dbg !5219
  %59 = load ptr, ptr %58, align 8, !dbg !5219
  %proc_read_iter27 = getelementptr inbounds %struct.proc_ops, ptr %59, i32 0, i32 3, !dbg !5220
  %60 = load ptr, ptr %proc_read_iter27, align 8, !dbg !5220
  %tobool28 = icmp ne ptr %60, null, !dbg !5216
  br i1 %tobool28, label %if.then29, label %if.else30, !dbg !5221

if.then29:                                        ; preds = %if.then26
  %61 = load ptr, ptr %inode, align 8, !dbg !5222
  %62 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 39, !dbg !5223
  store ptr @proc_iter_file_ops_compat, ptr %62, align 8, !dbg !5224
  br label %if.end31, !dbg !5222

if.else30:                                        ; preds = %if.then26
  %63 = load ptr, ptr %inode, align 8, !dbg !5225
  %64 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 39, !dbg !5226
  store ptr @proc_reg_file_ops_compat, ptr %64, align 8, !dbg !5227
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  br label %if.end32, !dbg !5228

if.end32:                                         ; preds = %if.end31, %if.end24
  br label %if.end60, !dbg !5229

if.else33:                                        ; preds = %if.end17
  %65 = load ptr, ptr %inode, align 8, !dbg !5230
  %i_mode34 = getelementptr inbounds %struct.inode, ptr %65, i32 0, i32 0, !dbg !5230
  %66 = load i16, ptr %i_mode34, align 8, !dbg !5230
  %conv35 = zext i16 %66 to i32, !dbg !5230
  %and36 = and i32 %conv35, 61440, !dbg !5230
  %cmp37 = icmp eq i32 %and36, 16384, !dbg !5230
  br i1 %cmp37, label %if.then39, label %if.else42, !dbg !5232

if.then39:                                        ; preds = %if.else33
  %67 = load ptr, ptr %de.addr, align 8, !dbg !5233
  %proc_iops40 = getelementptr inbounds %struct.proc_dir_entry, ptr %67, i32 0, i32 5, !dbg !5235
  %68 = load ptr, ptr %proc_iops40, align 8, !dbg !5235
  %69 = load ptr, ptr %inode, align 8, !dbg !5236
  %i_op41 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8, !dbg !5237
  store ptr %68, ptr %i_op41, align 8, !dbg !5238
  %70 = load ptr, ptr %de.addr, align 8, !dbg !5239
  %71 = getelementptr inbounds %struct.proc_dir_entry, ptr %70, i32 0, i32 6, !dbg !5240
  %72 = load ptr, ptr %71, align 8, !dbg !5240
  %73 = load ptr, ptr %inode, align 8, !dbg !5241
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 39, !dbg !5242
  store ptr %72, ptr %74, align 8, !dbg !5243
  br label %if.end59, !dbg !5244

if.else42:                                        ; preds = %if.else33
  %75 = load ptr, ptr %inode, align 8, !dbg !5245
  %i_mode43 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 0, !dbg !5245
  %76 = load i16, ptr %i_mode43, align 8, !dbg !5245
  %conv44 = zext i16 %76 to i32, !dbg !5245
  %and45 = and i32 %conv44, 61440, !dbg !5245
  %cmp46 = icmp eq i32 %and45, 40960, !dbg !5245
  br i1 %cmp46, label %if.then48, label %if.else51, !dbg !5247

if.then48:                                        ; preds = %if.else42
  %77 = load ptr, ptr %de.addr, align 8, !dbg !5248
  %proc_iops49 = getelementptr inbounds %struct.proc_dir_entry, ptr %77, i32 0, i32 5, !dbg !5250
  %78 = load ptr, ptr %proc_iops49, align 8, !dbg !5250
  %79 = load ptr, ptr %inode, align 8, !dbg !5251
  %i_op50 = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 8, !dbg !5252
  store ptr %78, ptr %i_op50, align 8, !dbg !5253
  %80 = load ptr, ptr %inode, align 8, !dbg !5254
  %81 = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 39, !dbg !5255
  store ptr null, ptr %81, align 8, !dbg !5256
  br label %if.end58, !dbg !5257

if.else51:                                        ; preds = %if.else42
  br label %do.body, !dbg !5258

do.body:                                          ; preds = %if.else51
  br label %do.body52, !dbg !5260

do.body52:                                        ; preds = %do.body
  br label %do.cond, !dbg !5262

do.cond:                                          ; preds = %do.body52
  br label %do.end, !dbg !5262

do.end:                                           ; preds = %do.cond
  br label %do.body53, !dbg !5260

do.body53:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 701, i32 0, i64 12) #11, !dbg !5264, !srcloc !5266
  br label %do.cond54, !dbg !5264

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5264

do.end55:                                         ; preds = %do.cond54
  unreachable, !dbg !5260

do.cond56:                                        ; No predecessors!
  br label %do.end57, !dbg !5260

do.end57:                                         ; preds = %do.cond56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.then48
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then39
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end32
  %82 = load ptr, ptr %inode, align 8, !dbg !5267
  store ptr %82, ptr %retval, align 8, !dbg !5268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5268

cleanup:                                          ; preds = %if.end60, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !5269
  %83 = load ptr, ptr %retval, align 8, !dbg !5269
  ret ptr %83, !dbg !5269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5270 dso_local ptr @new_inode(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5271 dso_local void @pde_put(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5272 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PROC_I(ptr noundef %inode) #6 align 16 !dbg !5275 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5279, metadata !DIExpression()), !dbg !5282
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5283
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5280, metadata !DIExpression()), !dbg !5283
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5283
  store ptr %0, ptr %__mptr, align 8, !dbg !5283
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5283
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !5283
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5283
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5284
  %2 = load ptr, ptr %tmp, align 8, !dbg !5283
  ret ptr %2, !dbg !5285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_empty_pde(ptr noundef %pde) #6 align 16 !dbg !5286 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !5294
  %mode = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 21, !dbg !5294
  %1 = load i16, ptr %mode, align 8, !dbg !5294
  %conv = zext i16 %1 to i32, !dbg !5294
  %and = and i32 %conv, 61440, !dbg !5294
  %cmp = icmp eq i32 %and, 16384, !dbg !5294
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5295

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %pde.addr, align 8, !dbg !5296
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 5, !dbg !5297
  %3 = load ptr, ptr %proc_iops, align 8, !dbg !5297
  %tobool = icmp ne ptr %3, null, !dbg !5298
  %lnot = xor i1 %tobool, true, !dbg !5298
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5299
  ret i1 %4, !dbg !5300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5301 dso_local void @make_empty_dir_inode(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5302 dso_local void @set_nlink(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5305 dso_local void @inode_init_once(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5306 dso_local void @__rcu_read_lock() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5307 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #6 align 16 !dbg !5312 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5320
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !5321
  %1 = load ptr, ptr %pprev, align 8, !dbg !5321
  %tobool = icmp ne ptr %1, null, !dbg !5322
  %lnot = xor i1 %tobool, true, !dbg !5322
  %lnot.ext = zext i1 %lnot to i32, !dbg !5322
  ret i32 %lnot.ext, !dbg !5323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #6 align 16 !dbg !5324 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5326, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #11, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5327, metadata !DIExpression()), !dbg !5331
  %0 = load ptr, ptr %n.addr, align 8, !dbg !5332
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !5333
  %1 = load ptr, ptr %next1, align 8, !dbg !5333
  store ptr %1, ptr %next, align 8, !dbg !5331
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #11, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !5328, metadata !DIExpression()), !dbg !5335
  %2 = load ptr, ptr %n.addr, align 8, !dbg !5336
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !5337
  %3 = load ptr, ptr %pprev2, align 8, !dbg !5337
  store ptr %3, ptr %pprev, align 8, !dbg !5335
  br label %do.body, !dbg !5338

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !5339

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !5341

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !5341

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !5339

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !5343
  %5 = load ptr, ptr %pprev, align 8, !dbg !5343
  store volatile ptr %4, ptr %5, align 8, !dbg !5343
  br label %do.cond5, !dbg !5343

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5343

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !5339

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5339

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !5345
  %tobool = icmp ne ptr %6, null, !dbg !5345
  br i1 %tobool, label %if.then, label %if.end, !dbg !5347

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !5348

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !5349

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5351

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5351

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5349

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !5353
  %8 = load ptr, ptr %next, align 8, !dbg !5353
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !5353
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !5353
  br label %do.cond15, !dbg !5353

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !5353

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !5349

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5349

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5349

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #11, !dbg !5355
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #11, !dbg !5355
  ret void, !dbg !5355
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5356 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5357 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5365, metadata !DIExpression()), !dbg !5367
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5369
  %1 = load i64, ptr %size.addr, align 8, !dbg !5370
  %conv = trunc i64 %1 to i32, !dbg !5370
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !5371
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5372
  %3 = load i64, ptr %size.addr, align 8, !dbg !5372
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !5372
  ret void, !dbg !5373
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_inc_not_zero(ptr noundef %v) #5 align 16 !dbg !5374 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5379
  %call = call zeroext i1 @raw_atomic_add_unless(ptr noundef %0, i32 noundef 1, i32 noundef 0) #10, !dbg !5380
  ret i1 %call, !dbg !5381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5382 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5387, metadata !DIExpression()), !dbg !5389
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5388, metadata !DIExpression()), !dbg !5390
  ret i1 true, !dbg !5391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5392 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5397, metadata !DIExpression()), !dbg !5400
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5398, metadata !DIExpression()), !dbg !5401
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5399, metadata !DIExpression()), !dbg !5402
  ret void, !dbg !5403
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #5 align 16 !dbg !5404 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5408, metadata !DIExpression()), !dbg !5411
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5409, metadata !DIExpression()), !dbg !5412
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5410, metadata !DIExpression()), !dbg !5413
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5414
  %1 = load i32, ptr %a.addr, align 4, !dbg !5415
  %2 = load i32, ptr %u.addr, align 4, !dbg !5416
  %call = call i32 @raw_atomic_fetch_add_unless(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !5417
  %3 = load i32, ptr %u.addr, align 4, !dbg !5418
  %cmp = icmp ne i32 %call, %3, !dbg !5419
  ret i1 %cmp, !dbg !5420
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #5 align 16 !dbg !5421 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5425, metadata !DIExpression()), !dbg !5429
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5426, metadata !DIExpression()), !dbg !5430
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #11, !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5428, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5434
  %call = call i32 @raw_atomic_read(ptr noundef %0) #10, !dbg !5435
  store i32 %call, ptr %c, align 4, !dbg !5433
  br label %do.body, !dbg !5436

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !5437
  %2 = load i32, ptr %u.addr, align 4, !dbg !5437
  %cmp = icmp eq i32 %1, %2, !dbg !5437
  %lnot = xor i1 %cmp, true, !dbg !5437
  %lnot1 = xor i1 %lnot, true, !dbg !5437
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5437
  %conv = sext i32 %lnot.ext to i64, !dbg !5437
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5437
  %tobool = icmp ne i64 %expval, 0, !dbg !5437
  br i1 %tobool, label %if.then, label %if.end, !dbg !5440

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5441

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5442

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5443
  %4 = load i32, ptr %c, align 4, !dbg !5444
  %5 = load i32, ptr %a.addr, align 4, !dbg !5445
  %add = add i32 %4, %5, !dbg !5446
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %3, ptr noundef %c, i32 noundef %add) #10, !dbg !5447
  %lnot3 = xor i1 %call2, true, !dbg !5448
  br i1 %lnot3, label %do.body, label %do.end, !dbg !5442, !llvm.loop !5449

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i32, ptr %c, align 4, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #11, !dbg !5452
  ret i32 %6, !dbg !5453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !5454 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5460, metadata !DIExpression()), !dbg !5461
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5462
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !5463
  ret i32 %call, !dbg !5464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !5465 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5469, metadata !DIExpression()), !dbg !5472
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5470, metadata !DIExpression()), !dbg !5473
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5471, metadata !DIExpression()), !dbg !5474
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5475
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5476
  %2 = load i32, ptr %new.addr, align 4, !dbg !5477
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10, !dbg !5478
  ret i1 %call, !dbg !5479
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !5480 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5485
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5485
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5485
  ret i32 %1, !dbg !5486
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #5 align 16 !dbg !5487 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5489, metadata !DIExpression()), !dbg !5498
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5490, metadata !DIExpression()), !dbg !5499
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5491, metadata !DIExpression()), !dbg !5500
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5492, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5494, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %old.addr, align 8, !dbg !5501
  store ptr %0, ptr %_old, align 8, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #11, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5495, metadata !DIExpression()), !dbg !5501
  %1 = load ptr, ptr %_old, align 8, !dbg !5501
  %2 = load i32, ptr %1, align 4, !dbg !5501
  store i32 %2, ptr %__old, align 4, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #11, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5496, metadata !DIExpression()), !dbg !5501
  %3 = load i32, ptr %new.addr, align 4, !dbg !5501
  store i32 %3, ptr %__new, align 4, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5497, metadata !DIExpression()), !dbg !5501
  %4 = load ptr, ptr %v.addr, align 8, !dbg !5501
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5501
  store ptr %counter, ptr %__ptr, align 8, !dbg !5501
  %5 = load ptr, ptr %__ptr, align 8, !dbg !5501
  %6 = load i32, ptr %__old, align 4, !dbg !5501
  %7 = load i32, ptr %__new, align 4, !dbg !5501
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #11, !dbg !5501, !srcloc !5502
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !5501
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !5501
  %9 = icmp ult i8 %asmresult, 2, !dbg !5501
  call void @llvm.assume(i1 %9), !dbg !5501
  store i8 %asmresult, ptr %success, align 1, !dbg !5501
  store i32 %asmresult1, ptr %__old, align 4, !dbg !5501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !5501
  %10 = load i8, ptr %success, align 1, !dbg !5503, !range !5025, !noundef !613
  %tobool = trunc i8 %10 to i1, !dbg !5503
  %lnot = xor i1 %tobool, true, !dbg !5503
  %lnot2 = xor i1 %lnot, true, !dbg !5503
  %lnot3 = xor i1 %lnot2, true, !dbg !5503
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5503
  %conv = sext i32 %lnot.ext to i64, !dbg !5503
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5503
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5503
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5501

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !5503
  %12 = load ptr, ptr %_old, align 8, !dbg !5503
  store i32 %11, ptr %12, align 4, !dbg !5503
  br label %if.end, !dbg !5503

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !5501, !range !5025, !noundef !613
  %tobool5 = trunc i8 %13 to i1, !dbg !5501
  %lnot6 = xor i1 %tobool5, true, !dbg !5501
  %lnot8 = xor i1 %lnot6, true, !dbg !5501
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5501
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5501
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !5501
  store i64 %expval11, ptr %tmp, align 8, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #11, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #11, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !5505
  %14 = load i64, ptr %tmp, align 8, !dbg !5501
  %tobool12 = icmp ne i64 %14, 0, !dbg !5505
  ret i1 %tobool12, !dbg !5506
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5507 dso_local void @__rcu_read_unlock() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_inode_sb(ptr noundef %sb, ptr noundef %cache, i32 noundef %gfp) #6 align 16 !dbg !5508 {
entry:
  %sb.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5512, metadata !DIExpression()), !dbg !5515
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !5513, metadata !DIExpression()), !dbg !5516
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5514, metadata !DIExpression()), !dbg !5517
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !5518
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !5519
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 50, !dbg !5520
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5521
  %call = call noalias align 8 ptr @kmem_cache_alloc_lru(ptr noundef %0, ptr noundef %s_inode_lru, i32 noundef %2) #10, !dbg !5522
  ret ptr %call, !dbg !5523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #6 align 16 !dbg !5524 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5528
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !5529
  store ptr null, ptr %next, align 8, !dbg !5530
  %1 = load ptr, ptr %h.addr, align 8, !dbg !5531
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !5532
  store ptr null, ptr %pprev, align 8, !dbg !5533
  ret void, !dbg !5534
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5535 dso_local noalias ptr @kmem_cache_alloc_lru(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5539 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5542 dso_local void @truncate_inode_pages_final(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5545 dso_local void @clear_inode(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5546 dso_local void @proc_pid_evict_inode(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5549 dso_local void @proc_sys_evict_inode(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_sb_info(ptr noundef %sb) #6 align 16 !dbg !5552 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5558
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5559
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5559
  ret ptr %1, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #6 align 16 !dbg !5561 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5565, metadata !DIExpression()), !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5566, metadata !DIExpression()), !dbg !5568
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !5569
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5569
  %call = call i32 @__kgid_val(i32 %0) #10, !dbg !5569
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !5570
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5570
  %call4 = call i32 @__kgid_val(i32 %1) #10, !dbg !5570
  %cmp = icmp eq i32 %call, %call4, !dbg !5571
  ret i1 %cmp, !dbg !5572
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5573 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #6 align 16 !dbg !5576 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5580, metadata !DIExpression()), !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5581, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #11, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5582, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5587
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5588
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !5588
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #10, !dbg !5588
  store i32 %call, ptr %gid, align 4, !dbg !5586
  %2 = load i32, ptr %gid, align 4, !dbg !5589
  %cmp = icmp eq i32 %2, -1, !dbg !5591
  br i1 %cmp, label %if.then, label %if.end, !dbg !5592

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !5593
  store i32 %3, ptr %gid, align 4, !dbg !5594
  br label %if.end, !dbg !5595

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !5596
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #11, !dbg !5597
  ret i32 %4, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hidepid2str(i32 noundef %v) #6 align 16 !dbg !4464 {
entry:
  %retval = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4468, metadata !DIExpression()), !dbg !5599
  %0 = load i32, ptr %v.addr, align 4, !dbg !5600
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
  ], !dbg !5601

sw.bb:                                            ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8, !dbg !5602
  br label %return, !dbg !5602

sw.bb1:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !5604
  br label %return, !dbg !5604

sw.bb2:                                           ; preds = %entry
  store ptr @.str.9, ptr %retval, align 8, !dbg !5605
  br label %return, !dbg !5605

sw.bb3:                                           ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8, !dbg !5606
  br label %return, !dbg !5606

sw.epilog:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #11, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4469, metadata !DIExpression()), !dbg !5607
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5607
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #11, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4471, metadata !DIExpression()), !dbg !5608
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !5608, !range !5025, !noundef !613
  %tobool = trunc i8 %1 to i1, !dbg !5608
  %lnot = xor i1 %tobool, true, !dbg !5608
  %lnot4 = xor i1 %lnot, true, !dbg !5608
  %frombool = zext i1 %lnot4 to i8, !dbg !5608
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !5608
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #11, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4474, metadata !DIExpression()), !dbg !5608
  store i8 0, ptr %__ret_once, align 1, !dbg !5608
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !5609, !range !5025, !noundef !613
  %tobool5 = trunc i8 %2 to i1, !dbg !5609
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !5609

land.rhs:                                         ; preds = %sw.epilog
  %3 = load i8, ptr @hidepid2str.__already_done, align 1, !dbg !5609, !range !5025, !noundef !613
  %tobool6 = trunc i8 %3 to i1, !dbg !5609
  %lnot7 = xor i1 %tobool6, true, !dbg !5609
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %4 = phi i1 [ false, %sw.epilog ], [ %lnot7, %land.rhs ], !dbg !5611
  %lnot8 = xor i1 %4, true, !dbg !5609
  %lnot9 = xor i1 %lnot8, true, !dbg !5609
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5609
  %conv = sext i32 %lnot.ext to i64, !dbg !5609
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5609
  %tobool10 = icmp ne i64 %expval, 0, !dbg !5609
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %land.end
  store i8 1, ptr @hidepid2str.__already_done, align 1, !dbg !5612
  store i8 1, ptr %__ret_once, align 1, !dbg !5612
  br label %if.end, !dbg !5612

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !5608, !range !5025, !noundef !613
  %tobool11 = trunc i8 %5 to i1, !dbg !5608
  %lnot12 = xor i1 %tobool11, true, !dbg !5608
  %lnot14 = xor i1 %lnot12, true, !dbg !5608
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !5608
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !5608
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !5608
  store i64 %expval17, ptr %tmp, align 8, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #11, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #11, !dbg !5614
  %6 = load i64, ptr %tmp, align 8, !dbg !5608
  %tobool18 = icmp ne i64 %6, 0, !dbg !5614
  br i1 %tobool18, label %if.then19, label %if.end56, !dbg !5607

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4475, metadata !DIExpression()), !dbg !5615
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5615
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5616
  %tobool20 = icmp ne i32 %7, 0, !dbg !5616
  %lnot21 = xor i1 %tobool20, true, !dbg !5616
  %lnot23 = xor i1 %lnot21, true, !dbg !5616
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5616
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !5616
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !5616
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !5616
  br i1 %tobool27, label %if.then28, label %if.end47, !dbg !5615

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !5616

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !5617

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !5618

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !5618

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %v.addr, align 4, !dbg !5617
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.11, i32 noundef %8) #10, !dbg !5617
  br label %do.body30, !dbg !5617

do.body30:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4477, metadata !DIExpression()), !dbg !5620
  store i32 2313, ptr %__flags, align 4, !dbg !5620
  br label %do.body31, !dbg !5620

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !5621

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5621

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !5620

do.body34:                                        ; preds = %do.end33
  %9 = load i32, ptr %__flags, align 4, !dbg !5623
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 175, i32 %9, i64 12) #11, !dbg !5623, !srcloc !5625
  br label %do.cond35, !dbg !5623

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5623

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5620

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !5626

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5626

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5617
  br label %do.cond40, !dbg !5620

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5620

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !5617

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !5628

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !5628

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !5617

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5617

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !5617

if.end47:                                         ; preds = %do.end46, %if.then19
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !5615
  %tobool49 = icmp ne i32 %10, 0, !dbg !5615
  %lnot50 = xor i1 %tobool49, true, !dbg !5615
  %lnot52 = xor i1 %lnot50, true, !dbg !5615
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !5615
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !5615
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !5615
  store i64 %expval55, ptr %tmp48, align 8, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5614
  %11 = load i64, ptr %tmp48, align 8, !dbg !5615
  br label %if.end56, !dbg !5614

if.end56:                                         ; preds = %if.end47, %if.end
  %12 = load i8, ptr %__ret_do_once, align 1, !dbg !5607, !range !5025, !noundef !613
  %tobool58 = trunc i8 %12 to i1, !dbg !5607
  %lnot59 = xor i1 %tobool58, true, !dbg !5607
  %lnot61 = xor i1 %lnot59, true, !dbg !5607
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5607
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !5607
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !5607
  store i64 %expval64, ptr %tmp57, align 8, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #11, !dbg !5630
  %13 = load i64, ptr %tmp57, align 8, !dbg !5607
  store ptr @.str.12, ptr %retval, align 8, !dbg !5631
  br label %return, !dbg !5631

return:                                           ; preds = %if.end56, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %14 = load ptr, ptr %retval, align 8, !dbg !5632
  ret ptr %14, !dbg !5632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #6 align 16 !dbg !5633 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5637, metadata !DIExpression()), !dbg !5638
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5639
  %0 = load i32, ptr %val, align 4, !dbg !5639
  ret i32 %0, !dbg !5640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #6 align 16 !dbg !5641 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5643, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5644, metadata !DIExpression()), !dbg !5646
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5647
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5647
  %call = call i32 @__kgid_val(i32 %0) #10, !dbg !5647
  ret i32 %call, !dbg !5648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5649 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5652 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5654, metadata !DIExpression()), !dbg !5656
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5655, metadata !DIExpression()), !dbg !5657
  %0 = load i32, ptr %i.addr, align 4, !dbg !5658
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5659
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #10, !dbg !5660
  ret i32 %call, !dbg !5661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5662 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5664, metadata !DIExpression()), !dbg !5668
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5665, metadata !DIExpression()), !dbg !5669
  %0 = load i32, ptr %i.addr, align 4, !dbg !5670
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !5671
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5666, metadata !DIExpression()), !dbg !5671
  %1 = load i32, ptr %i.addr, align 4, !dbg !5671
  store i32 %1, ptr %__ret, align 4, !dbg !5671
  %2 = load i32, ptr %__ret, align 4, !dbg !5671
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5671
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5671
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #11, !dbg !5671, !srcloc !5672
  store i32 %4, ptr %__ret, align 4, !dbg !5671
  %5 = load i32, ptr %__ret, align 4, !dbg !5671
  store i32 %5, ptr %tmp, align 4, !dbg !5671
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !5673
  %6 = load i32, ptr %tmp, align 4, !dbg !5671
  %add = add i32 %0, %6, !dbg !5674
  ret i32 %add, !dbg !5675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #6 align 16 !dbg !5676 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5682
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5683
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5683
  ret ptr %1, !dbg !5684
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !5685 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5691
  call void @__list_del_entry(ptr noundef %0) #10, !dbg !5692
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5693
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5694
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5695
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5696
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5697
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5698
  ret void, !dbg !5699
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5700 dso_local void @complete(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !5701 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5705
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #10, !dbg !5707
  br i1 %call, label %if.end, label %if.then, !dbg !5708

if.then:                                          ; preds = %entry
  br label %return, !dbg !5709

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5710
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5711
  %2 = load ptr, ptr %prev, align 8, !dbg !5711
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5712
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5713
  %4 = load ptr, ptr %next, align 8, !dbg !5713
  call void @__list_del(ptr noundef %2, ptr noundef %4) #10, !dbg !5714
  br label %return, !dbg !5715

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5715
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !5716 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  ret i1 true, !dbg !5722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !5723 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5727, metadata !DIExpression()), !dbg !5729
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5728, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5731
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5732
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5733
  store ptr %0, ptr %prev1, align 8, !dbg !5734
  br label %do.body, !dbg !5735

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5736

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5738

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5736

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5740
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5740
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5740
  store volatile ptr %2, ptr %next4, align 8, !dbg !5740
  br label %do.end5, !dbg !5740

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5736

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PDE(ptr noundef %inode) #6 align 16 !dbg !5743 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5749
  %call = call ptr @PROC_I(ptr noundef %0) #10, !dbg !5750
  %pde = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 3, !dbg !5751
  %1 = load ptr, ptr %pde, align 8, !dbg !5751
  ret ptr %1, !dbg !5752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @use_pde(ptr noundef %pde) #6 align 16 !dbg !5753 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !5759
  %in_use = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 0, !dbg !5759
  %call = call zeroext i1 @atomic_inc_unless_negative(ptr noundef %in_use) #10, !dbg !5759
  %lnot = xor i1 %call, true, !dbg !5759
  %lnot1 = xor i1 %lnot, true, !dbg !5759
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5759
  %conv = sext i32 %lnot.ext to i64, !dbg !5759
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5759
  %conv2 = trunc i64 %expval to i32, !dbg !5759
  ret i32 %conv2, !dbg !5760
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !5761 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  %0 = load i64, ptr %error.addr, align 8, !dbg !5768
  %1 = inttoptr i64 %0 to ptr, !dbg !5769
  ret ptr %1, !dbg !5770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_delayed_call(ptr noundef %call, ptr noundef %fn, ptr noundef %arg) #6 align 16 !dbg !5771 {
entry:
  %call.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !5775, metadata !DIExpression()), !dbg !5778
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !5776, metadata !DIExpression()), !dbg !5779
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5777, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !5781
  %1 = load ptr, ptr %call.addr, align 8, !dbg !5782
  %fn1 = getelementptr inbounds %struct.delayed_call, ptr %1, i32 0, i32 0, !dbg !5783
  store ptr %0, ptr %fn1, align 8, !dbg !5784
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !5785
  %3 = load ptr, ptr %call.addr, align 8, !dbg !5786
  %arg2 = getelementptr inbounds %struct.delayed_call, ptr %3, i32 0, i32 1, !dbg !5787
  store ptr %2, ptr %arg2, align 8, !dbg !5788
  ret void, !dbg !5789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_put_link(ptr noundef %p) #2 align 16 !dbg !5790 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5794
  call void @unuse_pde(ptr noundef %0) #10, !dbg !5795
  ret void, !dbg !5796
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_inc_unless_negative(ptr noundef %v) #5 align 16 !dbg !5797 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  br label %do.body, !dbg !5801

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5802

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5804
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !5805
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5806
  %call = call zeroext i1 @raw_atomic_inc_unless_negative(ptr noundef %1) #10, !dbg !5807
  ret i1 %call, !dbg !5808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_inc_unless_negative(ptr noundef %v) #5 align 16 !dbg !5809 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #11, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5812, metadata !DIExpression()), !dbg !5815
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5816
  %call = call i32 @raw_atomic_read(ptr noundef %0) #10, !dbg !5817
  store i32 %call, ptr %c, align 4, !dbg !5815
  br label %do.body, !dbg !5818

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !5819
  %cmp = icmp slt i32 %1, 0, !dbg !5819
  %lnot = xor i1 %cmp, true, !dbg !5819
  %lnot1 = xor i1 %lnot, true, !dbg !5819
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5819
  %conv = sext i32 %lnot.ext to i64, !dbg !5819
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5819
  %tobool = icmp ne i64 %expval, 0, !dbg !5819
  br i1 %tobool, label %if.then, label %if.end, !dbg !5822

if.then:                                          ; preds = %do.body
  store i1 false, ptr %retval, align 1, !dbg !5823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5823

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5824

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5825
  %3 = load i32, ptr %c, align 4, !dbg !5826
  %add = add i32 %3, 1, !dbg !5827
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %c, i32 noundef %add) #10, !dbg !5828
  %lnot3 = xor i1 %call2, true, !dbg !5829
  br i1 %lnot3, label %do.body, label %do.end, !dbg !5824, !llvm.loop !5830

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !5832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5832

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #11, !dbg !5833
  %4 = load i1, ptr %retval, align 1, !dbg !5833
  ret i1 %4, !dbg !5833
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @unuse_pde(ptr noundef %pde) #2 align 16 !dbg !5834 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !5838
  %in_use = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 0, !dbg !5838
  %call = call i32 @atomic_dec_return(ptr noundef %in_use) #10, !dbg !5838
  %cmp = icmp eq i32 %call, -2147483648, !dbg !5838
  %lnot = xor i1 %cmp, true, !dbg !5838
  %lnot1 = xor i1 %lnot, true, !dbg !5838
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5838
  %conv = sext i32 %lnot.ext to i64, !dbg !5838
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5838
  %tobool = icmp ne i64 %expval, 0, !dbg !5838
  br i1 %tobool, label %if.then, label %if.end, !dbg !5840

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pde.addr, align 8, !dbg !5841
  %pde_unload_completion = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 4, !dbg !5842
  %2 = load ptr, ptr %pde_unload_completion, align 8, !dbg !5842
  call void @complete(ptr noundef %2) #10, !dbg !5843
  br label %if.end, !dbg !5843

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5844
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_dec_return(ptr noundef %v) #5 align 16 !dbg !5845 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  br label %do.body, !dbg !5851

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5852

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5854
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !5855
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5856
  %call = call i32 @raw_atomic_dec_return(ptr noundef %1) #10, !dbg !5857
  ret i32 %call, !dbg !5858
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_dec_return(ptr noundef %v) #5 align 16 !dbg !5859 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5863
  %call = call i32 @raw_atomic_sub_return(i32 noundef 1, ptr noundef %0) #10, !dbg !5864
  ret i32 %call, !dbg !5865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5866 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5868, metadata !DIExpression()), !dbg !5870
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  %0 = load i32, ptr %i.addr, align 4, !dbg !5872
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5873
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #10, !dbg !5874
  ret i32 %call, !dbg !5875
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5876 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  %0 = load i32, ptr %i.addr, align 4, !dbg !5882
  %sub = sub i32 0, %0, !dbg !5883
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5884
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #10, !dbg !5885
  ret i32 %call, !dbg !5886
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #2 align 16 !dbg !5887 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5889, metadata !DIExpression()), !dbg !5894
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5890, metadata !DIExpression()), !dbg !5895
  store i32 %whence, ptr %whence.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %whence.addr, metadata !5891, metadata !DIExpression()), !dbg !5896
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !5897
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !5892, metadata !DIExpression()), !dbg !5898
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5899
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !5900
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !5901
  store ptr %call1, ptr %pde, align 8, !dbg !5898
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !5893, metadata !DIExpression()), !dbg !5903
  store i64 -22, ptr %rv, align 8, !dbg !5903
  %1 = load ptr, ptr %pde, align 8, !dbg !5904
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !5906
  br i1 %call2, label %if.then, label %if.else, !dbg !5907

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !5908
  %3 = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 6, !dbg !5910
  %4 = load ptr, ptr %3, align 8, !dbg !5910
  %proc_lseek = getelementptr inbounds %struct.proc_ops, ptr %4, i32 0, i32 5, !dbg !5911
  %5 = load ptr, ptr %proc_lseek, align 8, !dbg !5911
  %6 = load ptr, ptr %file.addr, align 8, !dbg !5912
  %7 = load i64, ptr %offset.addr, align 8, !dbg !5913
  %8 = load i32, ptr %whence.addr, align 4, !dbg !5914
  %call3 = call i64 %5(ptr noundef %6, i64 noundef %7, i32 noundef %8) #10, !dbg !5908
  store i64 %call3, ptr %retval, align 8, !dbg !5915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5915

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %pde, align 8, !dbg !5916
  %call4 = call i32 @use_pde(ptr noundef %9) #10, !dbg !5918
  %tobool = icmp ne i32 %call4, 0, !dbg !5918
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5919

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %pde, align 8, !dbg !5920
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 6, !dbg !5922
  %12 = load ptr, ptr %11, align 8, !dbg !5922
  %proc_lseek6 = getelementptr inbounds %struct.proc_ops, ptr %12, i32 0, i32 5, !dbg !5923
  %13 = load ptr, ptr %proc_lseek6, align 8, !dbg !5923
  %14 = load ptr, ptr %file.addr, align 8, !dbg !5924
  %15 = load i64, ptr %offset.addr, align 8, !dbg !5925
  %16 = load i32, ptr %whence.addr, align 4, !dbg !5926
  %call7 = call i64 %13(ptr noundef %14, i64 noundef %15, i32 noundef %16) #10, !dbg !5920
  store i64 %call7, ptr %rv, align 8, !dbg !5927
  %17 = load ptr, ptr %pde, align 8, !dbg !5928
  call void @unuse_pde(ptr noundef %17) #10, !dbg !5929
  br label %if.end, !dbg !5930

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  %18 = load i64, ptr %rv, align 8, !dbg !5931
  store i64 %18, ptr %retval, align 8, !dbg !5932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5932

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !5933
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !5933
  %19 = load i64, ptr %retval, align 8, !dbg !5933
  ret i64 %19, !dbg !5933
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #2 align 16 !dbg !5934 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5936, metadata !DIExpression()), !dbg !5942
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5937, metadata !DIExpression()), !dbg !5943
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5938, metadata !DIExpression()), !dbg !5944
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5939, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !5940, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5948
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !5949
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !5950
  store ptr %call1, ptr %pde, align 8, !dbg !5947
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !5941, metadata !DIExpression()), !dbg !5952
  store i64 -5, ptr %rv, align 8, !dbg !5952
  %1 = load ptr, ptr %pde, align 8, !dbg !5953
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !5955
  br i1 %call2, label %if.then, label %if.else, !dbg !5956

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !5957
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5959
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5960
  %5 = load i64, ptr %count.addr, align 8, !dbg !5961
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !5962
  %call3 = call i64 @pde_write(ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) #10, !dbg !5963
  store i64 %call3, ptr %retval, align 8, !dbg !5964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5964

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pde, align 8, !dbg !5965
  %call4 = call i32 @use_pde(ptr noundef %7) #10, !dbg !5967
  %tobool = icmp ne i32 %call4, 0, !dbg !5967
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5968

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %pde, align 8, !dbg !5969
  %9 = load ptr, ptr %file.addr, align 8, !dbg !5971
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5972
  %11 = load i64, ptr %count.addr, align 8, !dbg !5973
  %12 = load ptr, ptr %ppos.addr, align 8, !dbg !5974
  %call6 = call i64 @pde_write(ptr noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12) #10, !dbg !5975
  store i64 %call6, ptr %rv, align 8, !dbg !5976
  %13 = load ptr, ptr %pde, align 8, !dbg !5977
  call void @unuse_pde(ptr noundef %13) #10, !dbg !5978
  br label %if.end, !dbg !5979

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %14 = load i64, ptr %rv, align 8, !dbg !5980
  store i64 %14, ptr %retval, align 8, !dbg !5981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5981

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !5982
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !5982
  %15 = load i64, ptr %retval, align 8, !dbg !5982
  ret i64 %15, !dbg !5982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_read_iter(ptr noundef %iocb, ptr noundef %iter) #2 align 16 !dbg !5983 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !5985, metadata !DIExpression()), !dbg !5989
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5986, metadata !DIExpression()), !dbg !5990
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !5987, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !5993
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !5994
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !5994
  %call = call ptr @file_inode(ptr noundef %1) #10, !dbg !5995
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !5996
  store ptr %call1, ptr %pde, align 8, !dbg !5992
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5988, metadata !DIExpression()), !dbg !5998
  %2 = load ptr, ptr %pde, align 8, !dbg !5999
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %2) #10, !dbg !6001
  br i1 %call2, label %if.then, label %if.end, !dbg !6002

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pde, align 8, !dbg !6003
  %4 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6, !dbg !6004
  %5 = load ptr, ptr %4, align 8, !dbg !6004
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, ptr %5, i32 0, i32 3, !dbg !6005
  %6 = load ptr, ptr %proc_read_iter, align 8, !dbg !6005
  %7 = load ptr, ptr %iocb.addr, align 8, !dbg !6006
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !6007
  %call3 = call i64 %6(ptr noundef %7, ptr noundef %8) #10, !dbg !6003
  store i64 %call3, ptr %retval, align 8, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6008

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pde, align 8, !dbg !6009
  %call4 = call i32 @use_pde(ptr noundef %9) #10, !dbg !6011
  %tobool = icmp ne i32 %call4, 0, !dbg !6011
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6012

if.then5:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !6013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6013

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %pde, align 8, !dbg !6014
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 6, !dbg !6015
  %12 = load ptr, ptr %11, align 8, !dbg !6015
  %proc_read_iter7 = getelementptr inbounds %struct.proc_ops, ptr %12, i32 0, i32 3, !dbg !6016
  %13 = load ptr, ptr %proc_read_iter7, align 8, !dbg !6016
  %14 = load ptr, ptr %iocb.addr, align 8, !dbg !6017
  %15 = load ptr, ptr %iter.addr, align 8, !dbg !6018
  %call8 = call i64 %13(ptr noundef %14, ptr noundef %15) #10, !dbg !6014
  store i64 %call8, ptr %ret, align 8, !dbg !6019
  %16 = load ptr, ptr %pde, align 8, !dbg !6020
  call void @unuse_pde(ptr noundef %16) #10, !dbg !6021
  %17 = load i64, ptr %ret, align 8, !dbg !6022
  store i64 %17, ptr %retval, align 8, !dbg !6023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6023

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !6024
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6024
  %18 = load i64, ptr %retval, align 8, !dbg !6024
  ret i64 %18, !dbg !6024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_reg_poll(ptr noundef %file, ptr noundef %pts) #2 align 16 !dbg !6025 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %pts.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6027, metadata !DIExpression()), !dbg !6031
  store ptr %pts, ptr %pts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pts.addr, metadata !6028, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6029, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6035
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6036
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6037
  store ptr %call1, ptr %pde, align 8, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #11, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6030, metadata !DIExpression()), !dbg !6039
  store i32 325, ptr %rv, align 4, !dbg !6039
  %1 = load ptr, ptr %pde, align 8, !dbg !6040
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6042
  br i1 %call2, label %if.then, label %if.else, !dbg !6043

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6044
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6046
  %4 = load ptr, ptr %pts.addr, align 8, !dbg !6047
  %call3 = call i32 @pde_poll(ptr noundef %2, ptr noundef %3, ptr noundef %4) #10, !dbg !6048
  store i32 %call3, ptr %retval, align 4, !dbg !6049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6049

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pde, align 8, !dbg !6050
  %call4 = call i32 @use_pde(ptr noundef %5) #10, !dbg !6052
  %tobool = icmp ne i32 %call4, 0, !dbg !6052
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6053

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %pde, align 8, !dbg !6054
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6056
  %8 = load ptr, ptr %pts.addr, align 8, !dbg !6057
  %call6 = call i32 @pde_poll(ptr noundef %6, ptr noundef %7, ptr noundef %8) #10, !dbg !6058
  store i32 %call6, ptr %rv, align 4, !dbg !6059
  %9 = load ptr, ptr %pde, align 8, !dbg !6060
  call void @unuse_pde(ptr noundef %9) #10, !dbg !6061
  br label %if.end, !dbg !6062

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %10 = load i32, ptr %rv, align 4, !dbg !6063
  store i32 %10, ptr %retval, align 4, !dbg !6064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6064

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #11, !dbg !6065
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6065
  %11 = load i32, ptr %retval, align 4, !dbg !6065
  ret i32 %11, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_unlocked_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !6066 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6068, metadata !DIExpression()), !dbg !6073
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6069, metadata !DIExpression()), !dbg !6074
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6070, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6071, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6078
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6079
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6080
  store ptr %call1, ptr %pde, align 8, !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6072, metadata !DIExpression()), !dbg !6082
  store i64 -25, ptr %rv, align 8, !dbg !6082
  %1 = load ptr, ptr %pde, align 8, !dbg !6083
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6085
  br i1 %call2, label %if.then, label %if.else, !dbg !6086

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6087
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6089
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !6090
  %5 = load i64, ptr %arg.addr, align 8, !dbg !6091
  %call3 = call i64 @pde_ioctl(ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) #10, !dbg !6092
  store i64 %call3, ptr %retval, align 8, !dbg !6093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6093

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pde, align 8, !dbg !6094
  %call4 = call i32 @use_pde(ptr noundef %6) #10, !dbg !6096
  %tobool = icmp ne i32 %call4, 0, !dbg !6096
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6097

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %pde, align 8, !dbg !6098
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6100
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !6101
  %10 = load i64, ptr %arg.addr, align 8, !dbg !6102
  %call6 = call i64 @pde_ioctl(ptr noundef %7, ptr noundef %8, i32 noundef %9, i64 noundef %10) #10, !dbg !6103
  store i64 %call6, ptr %rv, align 8, !dbg !6104
  %11 = load ptr, ptr %pde, align 8, !dbg !6105
  call void @unuse_pde(ptr noundef %11) #10, !dbg !6106
  br label %if.end, !dbg !6107

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %12 = load i64, ptr %rv, align 8, !dbg !6108
  store i64 %12, ptr %retval, align 8, !dbg !6109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6109

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6110
  %13 = load i64, ptr %retval, align 8, !dbg !6110
  ret i64 %13, !dbg !6110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_reg_mmap(ptr noundef %file, ptr noundef %vma) #2 align 16 !dbg !6111 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6113, metadata !DIExpression()), !dbg !6117
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6114, metadata !DIExpression()), !dbg !6118
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6115, metadata !DIExpression()), !dbg !6120
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6121
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6122
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6123
  store ptr %call1, ptr %pde, align 8, !dbg !6120
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #11, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6116, metadata !DIExpression()), !dbg !6125
  store i32 -5, ptr %rv, align 4, !dbg !6125
  %1 = load ptr, ptr %pde, align 8, !dbg !6126
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6128
  br i1 %call2, label %if.then, label %if.else, !dbg !6129

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6130
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6132
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !6133
  %call3 = call i32 @pde_mmap(ptr noundef %2, ptr noundef %3, ptr noundef %4) #10, !dbg !6134
  store i32 %call3, ptr %retval, align 4, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pde, align 8, !dbg !6136
  %call4 = call i32 @use_pde(ptr noundef %5) #10, !dbg !6138
  %tobool = icmp ne i32 %call4, 0, !dbg !6138
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6139

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %pde, align 8, !dbg !6140
  %7 = load ptr, ptr %file.addr, align 8, !dbg !6142
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !6143
  %call6 = call i32 @pde_mmap(ptr noundef %6, ptr noundef %7, ptr noundef %8) #10, !dbg !6144
  store i32 %call6, ptr %rv, align 4, !dbg !6145
  %9 = load ptr, ptr %pde, align 8, !dbg !6146
  call void @unuse_pde(ptr noundef %9) #10, !dbg !6147
  br label %if.end, !dbg !6148

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %10 = load i32, ptr %rv, align 4, !dbg !6149
  store i32 %10, ptr %retval, align 4, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #11, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6151
  %11 = load i32, ptr %retval, align 4, !dbg !6151
  ret i32 %11, !dbg !6151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_reg_open(ptr noundef %inode, ptr noundef %file) #2 align 16 !dbg !6152 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i32, align 4
  %open = alloca ptr, align 8
  %release = alloca ptr, align 8
  %pdeo = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6154, metadata !DIExpression()), !dbg !6162
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6155, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6156, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6166
  %call = call ptr @PDE(ptr noundef %0) #10, !dbg !6167
  store ptr %call, ptr %pde, align 8, !dbg !6165
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #11, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6157, metadata !DIExpression()), !dbg !6169
  store i32 0, ptr %rv, align 4, !dbg !6169
  call void @llvm.lifetime.start.p0(i64 8, ptr %open) #11, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %open, metadata !6158, metadata !DIExpression()), !dbg !6171
  call void @llvm.lifetime.start.p0(i64 8, ptr %release) #11, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %release, metadata !6159, metadata !DIExpression()), !dbg !6173
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdeo) #11, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %pdeo, metadata !6160, metadata !DIExpression()), !dbg !6175
  %1 = load ptr, ptr %pde, align 8, !dbg !6176
  %2 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6, !dbg !6178
  %3 = load ptr, ptr %2, align 8, !dbg !6178
  %proc_lseek = getelementptr inbounds %struct.proc_ops, ptr %3, i32 0, i32 5, !dbg !6179
  %4 = load ptr, ptr %proc_lseek, align 8, !dbg !6179
  %tobool = icmp ne ptr %4, null, !dbg !6176
  br i1 %tobool, label %if.end, label %if.then, !dbg !6180

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %file.addr, align 8, !dbg !6181
  %f_mode = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2, !dbg !6182
  %6 = load i32, ptr %f_mode, align 4, !dbg !6183
  %and = and i32 %6, -5, !dbg !6183
  store i32 %and, ptr %f_mode, align 4, !dbg !6183
  br label %if.end, !dbg !6181

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pde, align 8, !dbg !6184
  %call1 = call zeroext i1 @pde_is_permanent(ptr noundef %7) #10, !dbg !6186
  br i1 %call1, label %if.then2, label %if.end7, !dbg !6187

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pde, align 8, !dbg !6188
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6, !dbg !6190
  %10 = load ptr, ptr %9, align 8, !dbg !6190
  %proc_open = getelementptr inbounds %struct.proc_ops, ptr %10, i32 0, i32 1, !dbg !6191
  %11 = load ptr, ptr %proc_open, align 8, !dbg !6191
  store ptr %11, ptr %open, align 8, !dbg !6192
  %12 = load ptr, ptr %open, align 8, !dbg !6193
  %tobool3 = icmp ne ptr %12, null, !dbg !6193
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6195

if.then4:                                         ; preds = %if.then2
  %13 = load ptr, ptr %open, align 8, !dbg !6196
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !6197
  %15 = load ptr, ptr %file.addr, align 8, !dbg !6198
  %call5 = call i32 %13(ptr noundef %14, ptr noundef %15) #10, !dbg !6196
  store i32 %call5, ptr %rv, align 4, !dbg !6199
  br label %if.end6, !dbg !6200

if.end6:                                          ; preds = %if.then4, %if.then2
  %16 = load i32, ptr %rv, align 4, !dbg !6201
  store i32 %16, ptr %retval, align 4, !dbg !6202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6202

if.end7:                                          ; preds = %if.end
  %17 = load ptr, ptr %pde, align 8, !dbg !6203
  %call8 = call i32 @use_pde(ptr noundef %17) #10, !dbg !6205
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6205
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6206

if.then10:                                        ; preds = %if.end7
  store i32 -2, ptr %retval, align 4, !dbg !6207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6207

if.end11:                                         ; preds = %if.end7
  %18 = load ptr, ptr %pde, align 8, !dbg !6208
  %19 = getelementptr inbounds %struct.proc_dir_entry, ptr %18, i32 0, i32 6, !dbg !6209
  %20 = load ptr, ptr %19, align 8, !dbg !6209
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %20, i32 0, i32 6, !dbg !6210
  %21 = load ptr, ptr %proc_release, align 8, !dbg !6210
  store ptr %21, ptr %release, align 8, !dbg !6211
  %22 = load ptr, ptr %release, align 8, !dbg !6212
  %tobool12 = icmp ne ptr %22, null, !dbg !6212
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !6214

if.then13:                                        ; preds = %if.end11
  %23 = load ptr, ptr @pde_opener_cache, align 8, !dbg !6215
  %call14 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %23, i32 noundef 3264) #10, !dbg !6217
  store ptr %call14, ptr %pdeo, align 8, !dbg !6218
  %24 = load ptr, ptr %pdeo, align 8, !dbg !6219
  %tobool15 = icmp ne ptr %24, null, !dbg !6219
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6222

if.then16:                                        ; preds = %if.then13
  store i32 -12, ptr %rv, align 4, !dbg !6223
  br label %out_unuse, !dbg !6225

if.end17:                                         ; preds = %if.then13
  br label %if.end18, !dbg !6226

if.end18:                                         ; preds = %if.end17, %if.end11
  %25 = load ptr, ptr %pde, align 8, !dbg !6227
  %26 = getelementptr inbounds %struct.proc_dir_entry, ptr %25, i32 0, i32 6, !dbg !6228
  %27 = load ptr, ptr %26, align 8, !dbg !6228
  %proc_open19 = getelementptr inbounds %struct.proc_ops, ptr %27, i32 0, i32 1, !dbg !6229
  %28 = load ptr, ptr %proc_open19, align 8, !dbg !6229
  store ptr %28, ptr %open, align 8, !dbg !6230
  %29 = load ptr, ptr %open, align 8, !dbg !6231
  %tobool20 = icmp ne ptr %29, null, !dbg !6231
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !6233

if.then21:                                        ; preds = %if.end18
  %30 = load ptr, ptr %open, align 8, !dbg !6234
  %31 = load ptr, ptr %inode.addr, align 8, !dbg !6235
  %32 = load ptr, ptr %file.addr, align 8, !dbg !6236
  %call22 = call i32 %30(ptr noundef %31, ptr noundef %32) #10, !dbg !6234
  store i32 %call22, ptr %rv, align 4, !dbg !6237
  br label %if.end23, !dbg !6238

if.end23:                                         ; preds = %if.then21, %if.end18
  %33 = load ptr, ptr %release, align 8, !dbg !6239
  %tobool24 = icmp ne ptr %33, null, !dbg !6239
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !6241

if.then25:                                        ; preds = %if.end23
  %34 = load i32, ptr %rv, align 4, !dbg !6242
  %cmp = icmp eq i32 %34, 0, !dbg !6245
  br i1 %cmp, label %if.then26, label %if.else, !dbg !6246

if.then26:                                        ; preds = %if.then25
  %35 = load ptr, ptr %file.addr, align 8, !dbg !6247
  %36 = load ptr, ptr %pdeo, align 8, !dbg !6249
  %file27 = getelementptr inbounds %struct.pde_opener, ptr %36, i32 0, i32 1, !dbg !6250
  store ptr %35, ptr %file27, align 8, !dbg !6251
  %37 = load ptr, ptr %pdeo, align 8, !dbg !6252
  %closing = getelementptr inbounds %struct.pde_opener, ptr %37, i32 0, i32 2, !dbg !6253
  store i8 0, ptr %closing, align 8, !dbg !6254
  %38 = load ptr, ptr %pdeo, align 8, !dbg !6255
  %c = getelementptr inbounds %struct.pde_opener, ptr %38, i32 0, i32 3, !dbg !6256
  store ptr null, ptr %c, align 8, !dbg !6257
  %39 = load ptr, ptr %pde, align 8, !dbg !6258
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %39, i32 0, i32 3, !dbg !6259
  call void @spin_lock(ptr noundef %pde_unload_lock) #10, !dbg !6260
  %40 = load ptr, ptr %pdeo, align 8, !dbg !6261
  %lh = getelementptr inbounds %struct.pde_opener, ptr %40, i32 0, i32 0, !dbg !6262
  %41 = load ptr, ptr %pde, align 8, !dbg !6263
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %41, i32 0, i32 2, !dbg !6264
  call void @list_add(ptr noundef %lh, ptr noundef %pde_openers) #10, !dbg !6265
  %42 = load ptr, ptr %pde, align 8, !dbg !6266
  %pde_unload_lock28 = getelementptr inbounds %struct.proc_dir_entry, ptr %42, i32 0, i32 3, !dbg !6267
  call void @spin_unlock(ptr noundef %pde_unload_lock28) #10, !dbg !6268
  br label %if.end29, !dbg !6269

if.else:                                          ; preds = %if.then25
  %43 = load ptr, ptr @pde_opener_cache, align 8, !dbg !6270
  %44 = load ptr, ptr %pdeo, align 8, !dbg !6271
  call void @kmem_cache_free(ptr noundef %43, ptr noundef %44) #10, !dbg !6272
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %if.end30, !dbg !6273

if.end30:                                         ; preds = %if.end29, %if.end23
  br label %out_unuse, !dbg !6239

out_unuse:                                        ; preds = %if.end30, %if.then16
  call void @llvm.dbg.label(metadata !6161), !dbg !6274
  %45 = load ptr, ptr %pde, align 8, !dbg !6275
  call void @unuse_pde(ptr noundef %45) #10, !dbg !6276
  %46 = load i32, ptr %rv, align 4, !dbg !6277
  store i32 %46, ptr %retval, align 4, !dbg !6278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6278

cleanup:                                          ; preds = %out_unuse, %if.then10, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdeo) #11, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %release) #11, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %open) #11, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #11, !dbg !6279
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6279
  %47 = load i32, ptr %retval, align 4, !dbg !6279
  ret i32 %47, !dbg !6279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_reg_release(ptr noundef %inode, ptr noundef %file) #2 align 16 !dbg !6280 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %pdeo = alloca ptr, align 8
  %release = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6282, metadata !DIExpression()), !dbg !6295
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6283, metadata !DIExpression()), !dbg !6296
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6297
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6284, metadata !DIExpression()), !dbg !6298
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6299
  %call = call ptr @PDE(ptr noundef %0) #10, !dbg !6300
  store ptr %call, ptr %pde, align 8, !dbg !6298
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdeo) #11, !dbg !6301
  call void @llvm.dbg.declare(metadata ptr %pdeo, metadata !6285, metadata !DIExpression()), !dbg !6302
  %1 = load ptr, ptr %pde, align 8, !dbg !6303
  %call1 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6304
  br i1 %call1, label %if.then, label %if.end4, !dbg !6305

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %release) #11, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %release, metadata !6286, metadata !DIExpression()), !dbg !6307
  %2 = load ptr, ptr %pde, align 8, !dbg !6308
  %3 = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 6, !dbg !6309
  %4 = load ptr, ptr %3, align 8, !dbg !6309
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %4, i32 0, i32 6, !dbg !6310
  %5 = load ptr, ptr %proc_release, align 8, !dbg !6310
  store ptr %5, ptr %release, align 8, !dbg !6311
  %6 = load ptr, ptr %release, align 8, !dbg !6312
  %tobool = icmp ne ptr %6, null, !dbg !6312
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6314

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %release, align 8, !dbg !6315
  %8 = load ptr, ptr %inode.addr, align 8, !dbg !6317
  %9 = load ptr, ptr %file.addr, align 8, !dbg !6318
  %call3 = call i32 %7(ptr noundef %8, ptr noundef %9) #10, !dbg !6315
  store i32 %call3, ptr %retval, align 4, !dbg !6319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6319

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !6320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6320

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %release) #11, !dbg !6321
  br label %cleanup16

if.end4:                                          ; preds = %entry
  %10 = load ptr, ptr %pde, align 8, !dbg !6322
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 3, !dbg !6323
  call void @spin_lock(ptr noundef %pde_unload_lock) #10, !dbg !6324
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6289, metadata !DIExpression()), !dbg !6325
  %11 = load ptr, ptr %pde, align 8, !dbg !6325
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 2, !dbg !6325
  %next = getelementptr inbounds %struct.list_head, ptr %pde_openers, i32 0, i32 0, !dbg !6325
  %12 = load ptr, ptr %next, align 8, !dbg !6325
  store ptr %12, ptr %__mptr, align 8, !dbg !6325
  %13 = load ptr, ptr %__mptr, align 8, !dbg !6325
  %add.ptr = getelementptr i8, ptr %13, i64 0, !dbg !6325
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !6326
  %14 = load ptr, ptr %tmp, align 8, !dbg !6325
  store ptr %14, ptr %pdeo, align 8, !dbg !6326
  br label %for.cond, !dbg !6326

for.cond:                                         ; preds = %for.inc, %if.end4
  %15 = load ptr, ptr %pdeo, align 8, !dbg !6327
  %lh = getelementptr inbounds %struct.pde_opener, ptr %15, i32 0, i32 0, !dbg !6327
  %16 = load ptr, ptr %pde, align 8, !dbg !6327
  %pde_openers5 = getelementptr inbounds %struct.proc_dir_entry, ptr %16, i32 0, i32 2, !dbg !6327
  %cmp = icmp eq ptr %lh, %pde_openers5, !dbg !6327
  %lnot = xor i1 %cmp, true, !dbg !6327
  br i1 %lnot, label %for.body, label %for.end, !dbg !6326

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pdeo, align 8, !dbg !6328
  %file6 = getelementptr inbounds %struct.pde_opener, ptr %17, i32 0, i32 1, !dbg !6331
  %18 = load ptr, ptr %file6, align 8, !dbg !6331
  %19 = load ptr, ptr %file.addr, align 8, !dbg !6332
  %cmp7 = icmp eq ptr %18, %19, !dbg !6333
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6334

if.then8:                                         ; preds = %for.body
  %20 = load ptr, ptr %pde, align 8, !dbg !6335
  %21 = load ptr, ptr %pdeo, align 8, !dbg !6337
  call void @close_pdeo(ptr noundef %20, ptr noundef %21) #10, !dbg !6338
  store i32 0, ptr %retval, align 4, !dbg !6339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !6339

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !6340

for.inc:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #11, !dbg !6341
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !6292, metadata !DIExpression()), !dbg !6341
  %22 = load ptr, ptr %pdeo, align 8, !dbg !6341
  %lh11 = getelementptr inbounds %struct.pde_opener, ptr %22, i32 0, i32 0, !dbg !6341
  %next12 = getelementptr inbounds %struct.list_head, ptr %lh11, i32 0, i32 0, !dbg !6341
  %23 = load ptr, ptr %next12, align 8, !dbg !6341
  store ptr %23, ptr %__mptr10, align 8, !dbg !6341
  %24 = load ptr, ptr %__mptr10, align 8, !dbg !6341
  %add.ptr14 = getelementptr i8, ptr %24, i64 0, !dbg !6341
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !6341
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #11, !dbg !6327
  %25 = load ptr, ptr %tmp13, align 8, !dbg !6341
  store ptr %25, ptr %pdeo, align 8, !dbg !6327
  br label %for.cond, !dbg !6327, !llvm.loop !6342

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %pde, align 8, !dbg !6344
  %pde_unload_lock15 = getelementptr inbounds %struct.proc_dir_entry, ptr %26, i32 0, i32 3, !dbg !6345
  call void @spin_unlock(ptr noundef %pde_unload_lock15) #10, !dbg !6346
  store i32 0, ptr %retval, align 4, !dbg !6347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !6347

cleanup16:                                        ; preds = %for.end, %if.then8, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdeo) #11, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6348
  %27 = load i32, ptr %retval, align 4, !dbg !6348
  ret i32 %27, !dbg !6348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_get_unmapped_area(ptr noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #2 align 16 !dbg !6349 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %orig_addr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %pgoff.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6351, metadata !DIExpression()), !dbg !6358
  store i64 %orig_addr, ptr %orig_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_addr.addr, metadata !6352, metadata !DIExpression()), !dbg !6359
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6353, metadata !DIExpression()), !dbg !6360
  store i64 %pgoff, ptr %pgoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgoff.addr, metadata !6354, metadata !DIExpression()), !dbg !6361
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6355, metadata !DIExpression()), !dbg !6362
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6356, metadata !DIExpression()), !dbg !6364
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6365
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6366
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6367
  store ptr %call1, ptr %pde, align 8, !dbg !6364
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6357, metadata !DIExpression()), !dbg !6369
  store i64 -5, ptr %rv, align 8, !dbg !6369
  %1 = load ptr, ptr %pde, align 8, !dbg !6370
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6372
  br i1 %call2, label %if.then, label %if.else, !dbg !6373

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6374
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6376
  %4 = load i64, ptr %orig_addr.addr, align 8, !dbg !6377
  %5 = load i64, ptr %len.addr, align 8, !dbg !6378
  %6 = load i64, ptr %pgoff.addr, align 8, !dbg !6379
  %7 = load i64, ptr %flags.addr, align 8, !dbg !6380
  %call3 = call i64 @pde_get_unmapped_area(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #10, !dbg !6381
  store i64 %call3, ptr %retval, align 8, !dbg !6382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6382

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pde, align 8, !dbg !6383
  %call4 = call i32 @use_pde(ptr noundef %8) #10, !dbg !6385
  %tobool = icmp ne i32 %call4, 0, !dbg !6385
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6386

if.then5:                                         ; preds = %if.else
  %9 = load ptr, ptr %pde, align 8, !dbg !6387
  %10 = load ptr, ptr %file.addr, align 8, !dbg !6389
  %11 = load i64, ptr %orig_addr.addr, align 8, !dbg !6390
  %12 = load i64, ptr %len.addr, align 8, !dbg !6391
  %13 = load i64, ptr %pgoff.addr, align 8, !dbg !6392
  %14 = load i64, ptr %flags.addr, align 8, !dbg !6393
  %call6 = call i64 @pde_get_unmapped_area(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14) #10, !dbg !6394
  store i64 %call6, ptr %rv, align 8, !dbg !6395
  %15 = load ptr, ptr %pde, align 8, !dbg !6396
  call void @unuse_pde(ptr noundef %15) #10, !dbg !6397
  br label %if.end, !dbg !6398

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %16 = load i64, ptr %rv, align 8, !dbg !6399
  store i64 %16, ptr %retval, align 8, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6401
  %17 = load i64, ptr %retval, align 8, !dbg !6401
  ret i64 %17, !dbg !6401
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pde_is_permanent(ptr noundef %pde) #6 align 16 !dbg !6402 {
entry:
  %pde.addr = alloca ptr, align 8
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6404, metadata !DIExpression()), !dbg !6405
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6406
  %flags = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 22, !dbg !6407
  %1 = load i8, ptr %flags, align 2, !dbg !6407
  %conv = zext i8 %1 to i32, !dbg !6406
  %and = and i32 %conv, 1, !dbg !6408
  %tobool = icmp ne i32 %and, 0, !dbg !6406
  ret i1 %tobool, !dbg !6409
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pde_write(ptr noundef %pde, ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #2 align 16 !dbg !6410 {
entry:
  %retval = alloca i64, align 8
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %write = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6414, metadata !DIExpression()), !dbg !6420
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6415, metadata !DIExpression()), !dbg !6421
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6416, metadata !DIExpression()), !dbg !6422
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6417, metadata !DIExpression()), !dbg !6423
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6418, metadata !DIExpression()), !dbg !6424
  call void @llvm.lifetime.start.p0(i64 8, ptr %write) #11, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %write, metadata !6419, metadata !DIExpression()), !dbg !6426
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6427
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6428
  %2 = load ptr, ptr %1, align 8, !dbg !6428
  %proc_write = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 4, !dbg !6429
  %3 = load ptr, ptr %proc_write, align 8, !dbg !6429
  store ptr %3, ptr %write, align 8, !dbg !6430
  %4 = load ptr, ptr %write, align 8, !dbg !6431
  %tobool = icmp ne ptr %4, null, !dbg !6431
  br i1 %tobool, label %if.then, label %if.end, !dbg !6433

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %write, align 8, !dbg !6434
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6435
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !6436
  %8 = load i64, ptr %count.addr, align 8, !dbg !6437
  %9 = load ptr, ptr %ppos.addr, align 8, !dbg !6438
  %call = call i64 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) #10, !dbg !6434
  store i64 %call, ptr %retval, align 8, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

if.end:                                           ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6440

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %write) #11, !dbg !6441
  %10 = load i64, ptr %retval, align 8, !dbg !6441
  ret i64 %10, !dbg !6441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pde_poll(ptr noundef %pde, ptr noundef %file, ptr noundef %pts) #2 align 16 !dbg !6442 {
entry:
  %retval = alloca i32, align 4
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %pts.addr = alloca ptr, align 8
  %poll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6446, metadata !DIExpression()), !dbg !6450
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6447, metadata !DIExpression()), !dbg !6451
  store ptr %pts, ptr %pts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pts.addr, metadata !6448, metadata !DIExpression()), !dbg !6452
  call void @llvm.lifetime.start.p0(i64 8, ptr %poll) #11, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %poll, metadata !6449, metadata !DIExpression()), !dbg !6454
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6455
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6456
  %2 = load ptr, ptr %1, align 8, !dbg !6456
  %proc_poll = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 7, !dbg !6457
  %3 = load ptr, ptr %proc_poll, align 8, !dbg !6457
  store ptr %3, ptr %poll, align 8, !dbg !6458
  %4 = load ptr, ptr %poll, align 8, !dbg !6459
  %tobool = icmp ne ptr %4, null, !dbg !6459
  br i1 %tobool, label %if.then, label %if.end, !dbg !6461

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %poll, align 8, !dbg !6462
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6463
  %7 = load ptr, ptr %pts.addr, align 8, !dbg !6464
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #10, !dbg !6462
  store i32 %call, ptr %retval, align 4, !dbg !6465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6465

if.end:                                           ; preds = %entry
  store i32 325, ptr %retval, align 4, !dbg !6466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6466

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %poll) #11, !dbg !6467
  %8 = load i32, ptr %retval, align 4, !dbg !6467
  ret i32 %8, !dbg !6467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pde_ioctl(ptr noundef %pde, ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !6468 {
entry:
  %retval = alloca i64, align 8
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %ioctl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6472, metadata !DIExpression()), !dbg !6477
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6473, metadata !DIExpression()), !dbg !6478
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6474, metadata !DIExpression()), !dbg !6479
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6475, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioctl) #11, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %ioctl, metadata !6476, metadata !DIExpression()), !dbg !6482
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6483
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6484
  %2 = load ptr, ptr %1, align 8, !dbg !6484
  %proc_ioctl = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 8, !dbg !6485
  %3 = load ptr, ptr %proc_ioctl, align 8, !dbg !6485
  store ptr %3, ptr %ioctl, align 8, !dbg !6486
  %4 = load ptr, ptr %ioctl, align 8, !dbg !6487
  %tobool = icmp ne ptr %4, null, !dbg !6487
  br i1 %tobool, label %if.then, label %if.end, !dbg !6489

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ioctl, align 8, !dbg !6490
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6491
  %7 = load i32, ptr %cmd.addr, align 4, !dbg !6492
  %8 = load i64, ptr %arg.addr, align 8, !dbg !6493
  %call = call i64 %5(ptr noundef %6, i32 noundef %7, i64 noundef %8) #10, !dbg !6490
  store i64 %call, ptr %retval, align 8, !dbg !6494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6494

if.end:                                           ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !6495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6495

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioctl) #11, !dbg !6496
  %9 = load i64, ptr %retval, align 8, !dbg !6496
  ret i64 %9, !dbg !6496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pde_mmap(ptr noundef %pde, ptr noundef %file, ptr noundef %vma) #2 align 16 !dbg !6497 {
entry:
  %retval = alloca i32, align 4
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %mmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6501, metadata !DIExpression()), !dbg !6505
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6502, metadata !DIExpression()), !dbg !6506
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6503, metadata !DIExpression()), !dbg !6507
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmap) #11, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %mmap, metadata !6504, metadata !DIExpression()), !dbg !6509
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6510
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6511
  %2 = load ptr, ptr %1, align 8, !dbg !6511
  %proc_mmap = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 10, !dbg !6512
  %3 = load ptr, ptr %proc_mmap, align 8, !dbg !6512
  store ptr %3, ptr %mmap, align 8, !dbg !6513
  %4 = load ptr, ptr %mmap, align 8, !dbg !6514
  %tobool = icmp ne ptr %4, null, !dbg !6514
  br i1 %tobool, label %if.then, label %if.end, !dbg !6516

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %mmap, align 8, !dbg !6517
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6518
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !6519
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #10, !dbg !6517
  store i32 %call, ptr %retval, align 4, !dbg !6520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6520

if.end:                                           ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !6521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6521

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmap) #11, !dbg !6522
  %8 = load i32, ptr %retval, align 4, !dbg !6522
  ret i32 %8, !dbg !6522
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6523 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !6526 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6529, metadata !DIExpression()), !dbg !6531
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6532
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6533
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6534
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6535
  %3 = load ptr, ptr %next, align 8, !dbg !6535
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #10, !dbg !6536
  ret void, !dbg !6537
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6538 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6542, metadata !DIExpression()), !dbg !6545
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6543, metadata !DIExpression()), !dbg !6546
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6544, metadata !DIExpression()), !dbg !6547
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6548
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6550
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6551
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10, !dbg !6552
  br i1 %call, label %if.end, label %if.then, !dbg !6553

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6554

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6555
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6556
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6557
  store ptr %3, ptr %prev1, align 8, !dbg !6558
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6559
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6560
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6561
  store ptr %5, ptr %next2, align 8, !dbg !6562
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6563
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6564
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6565
  store ptr %7, ptr %prev3, align 8, !dbg !6566
  br label %do.body, !dbg !6567

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6568

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6570

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6568

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6572
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6572
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6572
  store volatile ptr %9, ptr %next6, align 8, !dbg !6572
  br label %do.end7, !dbg !6572

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6568

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6574
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6575 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6579, metadata !DIExpression()), !dbg !6582
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6580, metadata !DIExpression()), !dbg !6583
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6581, metadata !DIExpression()), !dbg !6584
  ret i1 true, !dbg !6585
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pde_get_unmapped_area(ptr noundef %pde, ptr noundef %file, i64 noundef %orig_addr, i64 noundef %len, i64 noundef %pgoff, i64 noundef %flags) #2 align 16 !dbg !6586 {
entry:
  %retval = alloca i64, align 8
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %orig_addr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %pgoff.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %get_area = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6590, metadata !DIExpression()), !dbg !6597
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6591, metadata !DIExpression()), !dbg !6598
  store i64 %orig_addr, ptr %orig_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_addr.addr, metadata !6592, metadata !DIExpression()), !dbg !6599
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6593, metadata !DIExpression()), !dbg !6600
  store i64 %pgoff, ptr %pgoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgoff.addr, metadata !6594, metadata !DIExpression()), !dbg !6601
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6595, metadata !DIExpression()), !dbg !6602
  call void @llvm.lifetime.start.p0(i64 8, ptr %get_area) #11, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %get_area, metadata !6596, metadata !DIExpression()), !dbg !6604
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6605
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6606
  %2 = load ptr, ptr %1, align 8, !dbg !6606
  %proc_get_unmapped_area = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 11, !dbg !6607
  %3 = load ptr, ptr %proc_get_unmapped_area, align 8, !dbg !6607
  store ptr %3, ptr %get_area, align 8, !dbg !6608
  %4 = load ptr, ptr %get_area, align 8, !dbg !6609
  %tobool = icmp ne ptr %4, null, !dbg !6609
  br i1 %tobool, label %if.end, label %if.then, !dbg !6611

if.then:                                          ; preds = %entry
  %call = call ptr @get_current() #10, !dbg !6612
  %mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 49, !dbg !6613
  %5 = load ptr, ptr %mm, align 64, !dbg !6613
  %6 = getelementptr inbounds %struct.mm_struct, ptr %5, i32 0, i32 0, !dbg !6614
  %get_unmapped_area = getelementptr inbounds %struct.anon.29, ptr %6, i32 0, i32 2, !dbg !6614
  %7 = load ptr, ptr %get_unmapped_area, align 16, !dbg !6614
  store ptr %7, ptr %get_area, align 8, !dbg !6615
  br label %if.end, !dbg !6616

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %get_area, align 8, !dbg !6617
  %tobool1 = icmp ne ptr %8, null, !dbg !6617
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !6619

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %get_area, align 8, !dbg !6620
  %10 = load ptr, ptr %file.addr, align 8, !dbg !6621
  %11 = load i64, ptr %orig_addr.addr, align 8, !dbg !6622
  %12 = load i64, ptr %len.addr, align 8, !dbg !6623
  %13 = load i64, ptr %pgoff.addr, align 8, !dbg !6624
  %14 = load i64, ptr %flags.addr, align 8, !dbg !6625
  %call3 = call i64 %9(ptr noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14) #10, !dbg !6620
  store i64 %call3, ptr %retval, align 8, !dbg !6626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6626

if.end4:                                          ; preds = %if.end
  %15 = load i64, ptr %orig_addr.addr, align 8, !dbg !6627
  store i64 %15, ptr %retval, align 8, !dbg !6628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6628

cleanup:                                          ; preds = %if.end4, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %get_area) #11, !dbg !6629
  %16 = load i64, ptr %retval, align 8, !dbg !6629
  ret i64 %16, !dbg !6629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6630 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6635, metadata !DIExpression()), !dbg !6641
  br label %do.body, !dbg !6641

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6642
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6637, metadata !DIExpression()), !dbg !6642
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6642
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6642
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !6641
  br label %do.cond, !dbg !6642

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6642

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !6643
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6639, metadata !DIExpression()), !dbg !6643
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #12, !dbg !6643, !srcloc !6644
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6643
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6643
  %3 = inttoptr i64 %2 to ptr, !dbg !6643
  store ptr %3, ptr %tmp, align 8, !dbg !6643
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !6641
  %4 = load ptr, ptr %tmp, align 8, !dbg !6643
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6641
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6641
  store ptr %5, ptr %tmp1, align 8, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !6645
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6641
  ret ptr %6, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #2 align 16 !dbg !6647 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6649, metadata !DIExpression()), !dbg !6655
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6650, metadata !DIExpression()), !dbg !6656
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6651, metadata !DIExpression()), !dbg !6657
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6652, metadata !DIExpression()), !dbg !6658
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6653, metadata !DIExpression()), !dbg !6660
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6661
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6662
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6663
  store ptr %call1, ptr %pde, align 8, !dbg !6660
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6654, metadata !DIExpression()), !dbg !6665
  store i64 -5, ptr %rv, align 8, !dbg !6665
  %1 = load ptr, ptr %pde, align 8, !dbg !6666
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6668
  br i1 %call2, label %if.then, label %if.else, !dbg !6669

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6670
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6672
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6673
  %5 = load i64, ptr %count.addr, align 8, !dbg !6674
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !6675
  %call3 = call i64 @pde_read(ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) #10, !dbg !6676
  store i64 %call3, ptr %retval, align 8, !dbg !6677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6677

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pde, align 8, !dbg !6678
  %call4 = call i32 @use_pde(ptr noundef %7) #10, !dbg !6680
  %tobool = icmp ne i32 %call4, 0, !dbg !6680
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6681

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %pde, align 8, !dbg !6682
  %9 = load ptr, ptr %file.addr, align 8, !dbg !6684
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !6685
  %11 = load i64, ptr %count.addr, align 8, !dbg !6686
  %12 = load ptr, ptr %ppos.addr, align 8, !dbg !6687
  %call6 = call i64 @pde_read(ptr noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12) #10, !dbg !6688
  store i64 %call6, ptr %rv, align 8, !dbg !6689
  %13 = load ptr, ptr %pde, align 8, !dbg !6690
  call void @unuse_pde(ptr noundef %13) #10, !dbg !6691
  br label %if.end, !dbg !6692

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %14 = load i64, ptr %rv, align 8, !dbg !6693
  store i64 %14, ptr %retval, align 8, !dbg !6694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6694

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6695
  %15 = load i64, ptr %retval, align 8, !dbg !6695
  ret i64 %15, !dbg !6695
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pde_read(ptr noundef %pde, ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #2 align 16 !dbg !6696 {
entry:
  %retval = alloca i64, align 8
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %read = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6700, metadata !DIExpression()), !dbg !6706
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6701, metadata !DIExpression()), !dbg !6707
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6702, metadata !DIExpression()), !dbg !6708
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6703, metadata !DIExpression()), !dbg !6709
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6704, metadata !DIExpression()), !dbg !6710
  call void @llvm.lifetime.start.p0(i64 8, ptr %read) #11, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %read, metadata !6705, metadata !DIExpression()), !dbg !6712
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6713
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6714
  %2 = load ptr, ptr %1, align 8, !dbg !6714
  %proc_read = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 2, !dbg !6715
  %3 = load ptr, ptr %proc_read, align 8, !dbg !6715
  store ptr %3, ptr %read, align 8, !dbg !6716
  %4 = load ptr, ptr %read, align 8, !dbg !6717
  %tobool = icmp ne ptr %4, null, !dbg !6717
  br i1 %tobool, label %if.then, label %if.end, !dbg !6719

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %read, align 8, !dbg !6720
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6721
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !6722
  %8 = load i64, ptr %count.addr, align 8, !dbg !6723
  %9 = load ptr, ptr %ppos.addr, align 8, !dbg !6724
  %call = call i64 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) #10, !dbg !6720
  store i64 %call, ptr %retval, align 8, !dbg !6725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6725

if.end:                                           ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %read) #11, !dbg !6727
  %10 = load i64, ptr %retval, align 8, !dbg !6727
  ret i64 %10, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_reg_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !6728 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %pde = alloca ptr, align 8
  %rv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6730, metadata !DIExpression()), !dbg !6735
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6731, metadata !DIExpression()), !dbg !6736
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6732, metadata !DIExpression()), !dbg !6737
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #11, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6733, metadata !DIExpression()), !dbg !6739
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6740
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !6741
  %call1 = call ptr @PDE(ptr noundef %call) #10, !dbg !6742
  store ptr %call1, ptr %pde, align 8, !dbg !6739
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #11, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !6734, metadata !DIExpression()), !dbg !6744
  store i64 -25, ptr %rv, align 8, !dbg !6744
  %1 = load ptr, ptr %pde, align 8, !dbg !6745
  %call2 = call zeroext i1 @pde_is_permanent(ptr noundef %1) #10, !dbg !6747
  br i1 %call2, label %if.then, label %if.else, !dbg !6748

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pde, align 8, !dbg !6749
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6751
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !6752
  %5 = load i64, ptr %arg.addr, align 8, !dbg !6753
  %call3 = call i64 @pde_compat_ioctl(ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) #10, !dbg !6754
  store i64 %call3, ptr %retval, align 8, !dbg !6755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6755

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %pde, align 8, !dbg !6756
  %call4 = call i32 @use_pde(ptr noundef %6) #10, !dbg !6758
  %tobool = icmp ne i32 %call4, 0, !dbg !6758
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6759

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %pde, align 8, !dbg !6760
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6762
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !6763
  %10 = load i64, ptr %arg.addr, align 8, !dbg !6764
  %call6 = call i64 @pde_compat_ioctl(ptr noundef %7, ptr noundef %8, i32 noundef %9, i64 noundef %10) #10, !dbg !6765
  store i64 %call6, ptr %rv, align 8, !dbg !6766
  %11 = load ptr, ptr %pde, align 8, !dbg !6767
  call void @unuse_pde(ptr noundef %11) #10, !dbg !6768
  br label %if.end, !dbg !6769

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %12 = load i64, ptr %rv, align 8, !dbg !6770
  store i64 %12, ptr %retval, align 8, !dbg !6771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6771

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #11, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #11, !dbg !6772
  %13 = load i64, ptr %retval, align 8, !dbg !6772
  ret i64 %13, !dbg !6772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pde_compat_ioctl(ptr noundef %pde, ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !6773 {
entry:
  %retval = alloca i64, align 8
  %pde.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %compat_ioctl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pde, ptr %pde.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pde.addr, metadata !6775, metadata !DIExpression()), !dbg !6780
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6776, metadata !DIExpression()), !dbg !6781
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6777, metadata !DIExpression()), !dbg !6782
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6778, metadata !DIExpression()), !dbg !6783
  call void @llvm.lifetime.start.p0(i64 8, ptr %compat_ioctl) #11, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %compat_ioctl, metadata !6779, metadata !DIExpression()), !dbg !6785
  %0 = load ptr, ptr %pde.addr, align 8, !dbg !6786
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6, !dbg !6787
  %2 = load ptr, ptr %1, align 8, !dbg !6787
  %proc_compat_ioctl = getelementptr inbounds %struct.proc_ops, ptr %2, i32 0, i32 9, !dbg !6788
  %3 = load ptr, ptr %proc_compat_ioctl, align 8, !dbg !6788
  store ptr %3, ptr %compat_ioctl, align 8, !dbg !6789
  %4 = load ptr, ptr %compat_ioctl, align 8, !dbg !6790
  %tobool = icmp ne ptr %4, null, !dbg !6790
  br i1 %tobool, label %if.then, label %if.end, !dbg !6792

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %compat_ioctl, align 8, !dbg !6793
  %6 = load ptr, ptr %file.addr, align 8, !dbg !6794
  %7 = load i32, ptr %cmd.addr, align 4, !dbg !6795
  %8 = load i64, ptr %arg.addr, align 8, !dbg !6796
  %call = call i64 %5(ptr noundef %6, i32 noundef %7, i64 noundef %8) #10, !dbg !6793
  store i64 %call, ptr %retval, align 8, !dbg !6797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6797

if.end:                                           ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !6798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6798

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %compat_ioctl) #11, !dbg !6799
  %9 = load i64, ptr %retval, align 8, !dbg !6799
  ret i64 %9, !dbg !6799
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503}
!llvm.ident = !{!4504}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/proc/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bfb199e1aa8baaf7fb4d757157a24be6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "proc_inode_cachep", scope: !9, file: !2, line: 60, type: !4210, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/inode.ll fs/proc/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !210, globals: !4421, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !27, !32, !38, !45, !53, !69, !76, !82, !87, !93, !188, !191, !196, !203, !207}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !20, line: 68, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!23 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!24 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !28, line: 65, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!31 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !33, line: 16, baseType: !13, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "TT_NONE", value: 0)
!36 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!37 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !39, line: 51, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!42 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!43 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!44 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !13, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !54, line: 1325, baseType: !13, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!56 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!57 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!58 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!59 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!60 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!61 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!62 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!63 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!64 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!65 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!66 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!67 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!68 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !70, line: 15, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!73 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!74 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!75 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !77, line: 26, baseType: !13, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!80 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!81 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !83, line: 2052, baseType: !13, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!86 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !88, line: 54, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "USRQUOTA", value: 0)
!91 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!92 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !95, file: !94, line: 147, baseType: !13, size: 32, elements: !185)
!94 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !94, line: 135, size: 512, elements: !96)
!96 = !{!97, !100, !102, !104, !108, !109, !125, !183, !184}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !95, file: !94, line: 136, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !95, file: !94, line: 137, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !95, file: !94, line: 138, baseType: !103, size: 32, offset: 128)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !95, file: !94, line: 139, baseType: !105, size: 16, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !106, line: 24, baseType: !107)
!106 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!107 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !94, line: 150, baseType: !93, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !95, file: !94, line: 151, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !94, line: 64, baseType: !112)
!112 = !DISubroutineType(types: !113)
!113 = !{!103, !114, !103, !101, !115, !121}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 61, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !118, line: 72, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !118, line: 16, baseType: !120)
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !106, line: 52, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !118, line: 88, baseType: !124)
!124 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !95, file: !94, line: 152, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !94, line: 117, size: 256, elements: !128)
!128 = !{!129, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !127, file: !94, line: 118, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !106, line: 174, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 172, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !131, file: !106, line: 173, baseType: !103, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !127, file: !94, line: 119, baseType: !135, size: 192, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !136, line: 41, baseType: !137)
!136 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !136, line: 37, size: 192, elements: !138)
!138 = !{!139, !177}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !137, file: !136, line: 38, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !141, line: 29, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !141, line: 17, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !141, line: 18, baseType: !145, size: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !141, line: 18, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !145, file: !141, line: 19, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !149, line: 14, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !148, file: !149, line: 15, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !153, line: 44, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !153, line: 14, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 15, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 15, size: 32, elements: !158)
!158 = !{!159, !160, !170}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !153, line: 16, baseType: !130, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 24, baseType: !161, size: 16)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 24, size: 16, elements: !162)
!162 = !{!163, !169}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !161, file: !153, line: 25, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !165, line: 17, baseType: !166)
!165 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !167, line: 21, baseType: !168)
!167 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !161, file: !153, line: 26, baseType: !164, size: 8, offset: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 28, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 28, size: 32, elements: !172)
!172 = !{!173, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !171, file: !153, line: 29, baseType: !174, size: 16)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !165, line: 19, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !167, line: 24, baseType: !107)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !171, file: !153, line: 30, baseType: !174, size: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !137, file: !136, line: 39, baseType: !178, size: 128, offset: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !106, line: 190, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !106, line: 191, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !106, line: 191, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !95, file: !94, line: 153, baseType: !101, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !95, file: !94, line: 154, baseType: !101, size: 64, offset: 448)
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!187 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 202, baseType: !13, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIEnumerator(name: "BIAS", value: 2147483648, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 10, baseType: !13, size: 32, elements: !193)
!192 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!193 = !{!194, !195}
!194 = !DIEnumerator(name: "false", value: 0)
!195 = !DIEnumerator(name: "true", value: 1)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_hidepid", file: !197, line: 48, baseType: !13, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "HIDEPID_OFF", value: 0)
!200 = !DIEnumerator(name: "HIDEPID_NO_ACCESS", value: 1)
!201 = !DIEnumerator(name: "HIDEPID_INVISIBLE", value: 2)
!202 = !DIEnumerator(name: "HIDEPID_NOT_PTRACEABLE", value: 4)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_pidonly", file: !197, line: 56, baseType: !13, size: 32, elements: !204)
!204 = !{!205, !206}
!205 = !DIEnumerator(name: "PROC_PIDONLY_OFF", value: 0)
!206 = !DIEnumerator(name: "PROC_PIDONLY_ON", value: 1)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 16, baseType: !13, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIEnumerator(name: "PROC_ENTRY_PERMANENT", value: 1)
!210 = !{!211, !212, !101, !218, !4398, !4405, !4407, !4409, !2162, !4412, !272, !4414, !704, !4416, !4419, !1979, !631, !4420, !279, !120}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !106, line: 155, baseType: !13)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !106, line: 198, size: 128, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !106, line: 199, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !214, file: !106, line: 199, baseType: !212, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_inode", file: !220, line: 98, size: 5376, elements: !221)
!220 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!221 = !{!222, !4266, !4267, !4279, !4337, !4394, !4395, !4396, !4397}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !219, file: !220, line: 99, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !225)
!225 = !{!226, !232, !233, !234, !241, !242, !243, !252}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !224, file: !46, line: 61, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !228, line: 113, baseType: !229)
!228 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !228, line: 111, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !229, file: !228, line: 112, baseType: !130, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !224, file: !46, line: 62, baseType: !13, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !46, line: 63, baseType: !140, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !224, file: !46, line: 65, baseType: !235, size: 256, offset: 128)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !239)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !106, line: 194, size: 64, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !236, file: !106, line: 195, baseType: !213, size: 64)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !224, file: !46, line: 66, baseType: !236, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !224, file: !46, line: 68, baseType: !135, size: 192, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !224, file: !46, line: 69, baseType: !244, size: 128, align: 64, offset: 640)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !106, line: 232, size: 128, align: 64, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !106, line: 233, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !244, file: !106, line: 234, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !247}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !224, file: !46, line: 70, baseType: !253, offset: 768)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !898)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !254, file: !46, line: 55, baseType: !103, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !254, file: !46, line: 56, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !260, line: 26, size: 1152, elements: !261)
!260 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!261 = !{!262, !276, !277, !278, !4209, !4213, !4214, !4215, !4218, !4219, !4220, !4221, !4265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !259, file: !260, line: 27, baseType: !263, size: 192)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !264, line: 19, size: 192, elements: !265)
!264 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!265 = !{!266, !274, !275}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !263, file: !264, line: 20, baseType: !267, size: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !268, line: 296, size: 128, elements: !269)
!268 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!269 = !{!270, !271, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !267, file: !268, line: 297, baseType: !140, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !267, file: !268, line: 299, baseType: !272, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !106, line: 154, baseType: !13)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !267, file: !268, line: 300, baseType: !101, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !263, file: !264, line: 21, baseType: !13, size: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !263, file: !264, line: 22, baseType: !13, size: 32, offset: 160)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !259, file: !260, line: 28, baseType: !244, size: 128, align: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !259, file: !260, line: 29, baseType: !13, size: 32, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !259, file: !260, line: 30, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !281, line: 746, size: 58368, elements: !282)
!281 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!282 = !{!283, !293, !294, !295, !296, !297, !298, !299, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !382, !393, !494, !498, !501, !532, !533, !534, !535, !546, !548, !549, !550, !551, !552, !553, !564, !565, !568, !569, !570, !571, !572, !573, !574, !575, !582, !583, !590, !591, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3380, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3428, !3434, !3435, !3436, !3437, !3438, !3440, !3443, !3450, !3455, !3458, !3461, !3464, !3490, !3623, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3661, !3662, !3663, !3672, !3680, !3681, !3682, !3683, !3684, !3689, !3690, !3691, !3694, !3695, !3698, !3701, !3704, !3712, !3715, !3716, !3802, !3803, !3804, !3805, !3806, !3812, !3813, !3814, !3815, !3818, !3819, !3822, !3825, !3826, !3829, !3830, !3831, !3834, !3835, !3836, !3837, !3838, !3839, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3871, !3872, !3878, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3890, !3962, !3964, !3965, !3966, !3967, !3968, !3969, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3986, !3987, !3988}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !280, file: !281, line: 752, baseType: !284, size: 192)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !285, line: 56, size: 192, elements: !286)
!285 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!286 = !{!287, !288, !289, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !285, line: 57, baseType: !120, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !284, file: !285, line: 58, baseType: !120, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !284, file: !285, line: 59, baseType: !290, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !165, line: 21, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !167, line: 27, baseType: !13)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !284, file: !285, line: 61, baseType: !290, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !280, file: !281, line: 754, baseType: !13, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !280, file: !281, line: 767, baseType: !101, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !280, file: !281, line: 768, baseType: !227, size: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !281, line: 770, baseType: !13, size: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !280, file: !281, line: 771, baseType: !13, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !280, file: !281, line: 774, baseType: !103, size: 32, offset: 416)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !280, file: !281, line: 775, baseType: !300, size: 128, offset: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !301, line: 58, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!302 = !{!303, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !300, file: !301, line: 59, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !305, line: 60, size: 64, elements: !306)
!305 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !305, line: 61, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !301, line: 60, baseType: !310, size: 32, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 60, size: 32, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !310, file: !301, line: 61, baseType: !13, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !310, file: !301, line: 62, baseType: !130, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !300, file: !301, line: 65, baseType: !174, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !300, file: !301, line: 65, baseType: !174, size: 16, offset: 112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !280, file: !281, line: 776, baseType: !13, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !280, file: !281, line: 777, baseType: !120, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !280, file: !281, line: 778, baseType: !279, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !280, file: !281, line: 787, baseType: !103, size: 32, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !280, file: !281, line: 788, baseType: !103, size: 32, offset: 800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !280, file: !281, line: 790, baseType: !103, size: 32, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !280, file: !281, line: 792, baseType: !103, size: 32, offset: 864)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !280, file: !281, line: 793, baseType: !103, size: 32, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !280, file: !281, line: 794, baseType: !103, size: 32, offset: 928)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !280, file: !281, line: 795, baseType: !13, size: 32, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !280, file: !281, line: 797, baseType: !327, size: 2048, offset: 1024)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !281, line: 551, size: 2048, elements: !328)
!328 = !{!329, !334, !342, !346, !347, !348, !349, !350, !351, !352, !353, !356, !357, !358, !359, !361, !364, !365, !366}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !327, file: !281, line: 553, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !281, line: 411, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !330, file: !281, line: 412, baseType: !120, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !330, file: !281, line: 413, baseType: !290, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !327, file: !281, line: 554, baseType: !335, size: 192, align: 64, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !336, line: 5, size: 192, align: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!337 = !{!338, !339, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !335, file: !336, line: 6, baseType: !120, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !335, file: !336, line: 7, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !335, file: !336, line: 8, baseType: !340, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !327, file: !281, line: 555, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !165, line: 23, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !167, line: 31, baseType: !345)
!345 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !327, file: !281, line: 556, baseType: !343, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !327, file: !281, line: 558, baseType: !178, size: 128, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !327, file: !281, line: 559, baseType: !13, size: 32, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !327, file: !281, line: 561, baseType: !343, size: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !327, file: !281, line: 562, baseType: !343, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !327, file: !281, line: 563, baseType: !343, size: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !327, file: !281, line: 564, baseType: !343, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !327, file: !281, line: 565, baseType: !354, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !165, line: 22, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !167, line: 30, baseType: !124)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !327, file: !281, line: 566, baseType: !343, size: 64, offset: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !327, file: !281, line: 568, baseType: !343, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !327, file: !281, line: 571, baseType: !103, size: 32, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !327, file: !281, line: 572, baseType: !360, size: 64, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !327, file: !281, line: 574, baseType: !362, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !281, line: 49, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !327, file: !281, line: 576, baseType: !362, size: 64, offset: 1280)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !327, file: !281, line: 578, baseType: !120, size: 64, offset: 1344)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !327, file: !281, line: 588, baseType: !367, size: 512, align: 512, offset: 1536)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !281, line: 497, size: 512, align: 512, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !367, file: !281, line: 498, baseType: !343, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !367, file: !281, line: 499, baseType: !343, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !367, file: !281, line: 500, baseType: !343, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !367, file: !281, line: 501, baseType: !290, size: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !367, file: !281, line: 502, baseType: !290, size: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !367, file: !281, line: 503, baseType: !120, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !367, file: !281, line: 504, baseType: !120, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !367, file: !281, line: 505, baseType: !120, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !367, file: !281, line: 506, baseType: !378, size: 64, align: 64, offset: 448)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !281, line: 445, size: 64, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !378, file: !281, line: 446, baseType: !13, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !378, file: !281, line: 447, baseType: !13, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !280, file: !281, line: 798, baseType: !383, size: 384, offset: 3072)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !281, line: 592, size: 384, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !383, file: !281, line: 593, baseType: !178, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !383, file: !281, line: 594, baseType: !120, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !383, file: !281, line: 595, baseType: !120, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !383, file: !281, line: 596, baseType: !13, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !383, file: !281, line: 597, baseType: !107, size: 16, offset: 288)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !383, file: !281, line: 598, baseType: !107, size: 16, offset: 304)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !383, file: !281, line: 600, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !280, file: !281, line: 799, baseType: !394, size: 1792, offset: 3456)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !281, line: 610, size: 1792, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !491, !492}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !394, file: !281, line: 611, baseType: !335, size: 192, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !394, file: !281, line: 618, baseType: !343, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !394, file: !281, line: 619, baseType: !343, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !394, file: !281, line: 620, baseType: !343, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !394, file: !281, line: 621, baseType: !343, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !394, file: !281, line: 622, baseType: !343, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !394, file: !281, line: 629, baseType: !354, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !394, file: !281, line: 630, baseType: !343, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !281, line: 631, baseType: !13, size: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !394, file: !281, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !394, file: !281, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !394, file: !281, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !394, file: !281, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !394, file: !281, line: 662, baseType: !410, size: 512, offset: 704)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !28, line: 118, size: 512, elements: !411)
!411 = !{!412, !420, !421, !426, !487, !488, !489, !490}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !410, file: !28, line: 119, baseType: !413, size: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !414, line: 9, size: 256, elements: !415)
!414 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !413, file: !414, line: 10, baseType: !335, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !413, file: !414, line: 11, baseType: !418, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !419, line: 29, baseType: !354)
!419 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !410, file: !28, line: 120, baseType: !418, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !410, file: !28, line: 121, baseType: !422, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!27, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !410, file: !28, line: 122, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !28, line: 159, size: 512, align: 512, elements: !429)
!429 = !{!430, !456, !457, !460, !470, !471, !482, !486}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !428, file: !28, line: 160, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !28, line: 215, size: 4608, align: 512, elements: !433)
!433 = !{!434, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !28, line: 216, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !149, line: 23, baseType: !148)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !432, file: !28, line: 217, baseType: !13, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !432, file: !28, line: 218, baseType: !13, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !432, file: !28, line: 219, baseType: !13, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !432, file: !28, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !432, file: !28, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !432, file: !28, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !432, file: !28, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !432, file: !28, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !432, file: !28, line: 226, baseType: !13, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !432, file: !28, line: 227, baseType: !107, size: 16, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !432, file: !28, line: 228, baseType: !107, size: 16, offset: 208)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !432, file: !28, line: 229, baseType: !13, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !432, file: !28, line: 235, baseType: !418, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !432, file: !28, line: 236, baseType: !425, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !432, file: !28, line: 237, baseType: !418, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !432, file: !28, line: 238, baseType: !425, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !432, file: !28, line: 239, baseType: !453, size: 4096, align: 512, offset: 512)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 4096, align: 512, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 8)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !428, file: !28, line: 161, baseType: !13, size: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !428, file: !28, line: 162, baseType: !458, size: 32, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !106, line: 32, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !118, line: 96, baseType: !103)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !428, file: !28, line: 163, baseType: !461, size: 32, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !462, line: 274, baseType: !463)
!462 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !462, line: 274, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !463, file: !462, line: 274, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !462, line: 69, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !462, line: 64, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !467, file: !462, line: 65, baseType: !13, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !428, file: !28, line: 164, baseType: !425, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !428, file: !28, line: 165, baseType: !472, size: 128, offset: 256)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !414, line: 14, size: 128, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !472, file: !414, line: 15, baseType: !475, size: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !336, line: 26, size: 128, elements: !476)
!476 = !{!477, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !475, file: !336, line: 27, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !336, line: 12, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !478, file: !336, line: 13, baseType: !340, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !475, file: !336, line: 28, baseType: !340, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !428, file: !28, line: 166, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!418}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !428, file: !28, line: 167, baseType: !418, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !28, line: 123, baseType: !164, size: 8, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !410, file: !28, line: 124, baseType: !164, size: 8, offset: 456)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !410, file: !28, line: 125, baseType: !164, size: 8, offset: 464)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !410, file: !28, line: 126, baseType: !164, size: 8, offset: 472)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !394, file: !281, line: 671, baseType: !410, size: 512, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !394, file: !281, line: 679, baseType: !493, size: 64, offset: 1728)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !280, file: !281, line: 800, baseType: !495, size: 64, offset: 5248)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !281, line: 800, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !280, file: !281, line: 809, baseType: !499, size: 64, offset: 5312)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !281, line: 70, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !280, file: !281, line: 825, baseType: !502, size: 2048, align: 512, offset: 5632)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !281, line: 509, size: 2048, align: 512, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !502, file: !281, line: 511, baseType: !343, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !502, file: !281, line: 512, baseType: !343, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !502, file: !281, line: 513, baseType: !343, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !502, file: !281, line: 514, baseType: !343, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !502, file: !281, line: 515, baseType: !343, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !502, file: !281, line: 516, baseType: !343, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !502, file: !281, line: 518, baseType: !343, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !502, file: !281, line: 519, baseType: !343, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !502, file: !281, line: 520, baseType: !354, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !502, file: !281, line: 522, baseType: !343, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !502, file: !281, line: 523, baseType: !343, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !502, file: !281, line: 524, baseType: !354, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !502, file: !281, line: 526, baseType: !354, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !502, file: !281, line: 527, baseType: !343, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !502, file: !281, line: 529, baseType: !343, size: 64, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !502, file: !281, line: 530, baseType: !343, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !502, file: !281, line: 531, baseType: !343, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !502, file: !281, line: 532, baseType: !343, size: 64, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !502, file: !281, line: 533, baseType: !343, size: 64, offset: 1152)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !502, file: !281, line: 535, baseType: !343, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !502, file: !281, line: 536, baseType: !343, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !502, file: !281, line: 537, baseType: !343, size: 64, offset: 1344)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !502, file: !281, line: 538, baseType: !343, size: 64, offset: 1408)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !502, file: !281, line: 539, baseType: !343, size: 64, offset: 1472)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !502, file: !281, line: 540, baseType: !343, size: 64, offset: 1536)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !502, file: !281, line: 541, baseType: !343, size: 64, offset: 1600)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !502, file: !281, line: 542, baseType: !343, size: 64, offset: 1664)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !502, file: !281, line: 543, baseType: !343, size: 64, offset: 1728)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !280, file: !281, line: 833, baseType: !13, size: 32, offset: 7680)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !280, file: !281, line: 836, baseType: !13, size: 32, offset: 7712)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !280, file: !281, line: 837, baseType: !103, size: 32, offset: 7744)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !280, file: !281, line: 838, baseType: !536, size: 64, offset: 7808)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !539, line: 19, baseType: !540)
!539 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !539, line: 19, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !540, file: !539, line: 19, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 1)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !280, file: !281, line: 839, baseType: !547, size: 64, offset: 7872)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !280, file: !281, line: 840, baseType: !538, size: 64, offset: 7936)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !280, file: !281, line: 841, baseType: !101, size: 64, offset: 8000)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !280, file: !281, line: 843, baseType: !107, size: 16, offset: 8064)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !280, file: !281, line: 845, baseType: !107, size: 16, offset: 8080)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !280, file: !281, line: 848, baseType: !103, size: 32, offset: 8096)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !280, file: !281, line: 849, baseType: !554, size: 32, offset: 8128)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !281, line: 718, size: 32, elements: !555)
!555 = !{!556, !563}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !554, file: !281, line: 724, baseType: !557, size: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !554, file: !281, line: 719, size: 32, elements: !558)
!558 = !{!559, !560, !561, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !557, file: !281, line: 720, baseType: !164, size: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !557, file: !281, line: 721, baseType: !164, size: 8, offset: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !557, file: !281, line: 722, baseType: !164, size: 8, offset: 16)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !557, file: !281, line: 723, baseType: !164, size: 8, offset: 24)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !554, file: !281, line: 725, baseType: !290, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !280, file: !281, line: 850, baseType: !178, size: 128, offset: 8192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !280, file: !281, line: 851, baseType: !566, size: 64, offset: 8320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !281, line: 60, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !280, file: !281, line: 855, baseType: !120, size: 64, offset: 8384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !280, file: !281, line: 856, baseType: !164, size: 8, offset: 8448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !280, file: !281, line: 857, baseType: !164, size: 8, offset: 8456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !280, file: !281, line: 858, baseType: !103, size: 32, offset: 8480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !280, file: !281, line: 859, baseType: !178, size: 128, offset: 8512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !280, file: !281, line: 860, baseType: !103, size: 32, offset: 8640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !280, file: !281, line: 861, baseType: !178, size: 128, offset: 8704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !280, file: !281, line: 873, baseType: !576, size: 256, offset: 8832)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !281, line: 376, size: 256, elements: !577)
!577 = !{!578, !579, !580, !581}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !576, file: !281, line: 381, baseType: !120, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !576, file: !281, line: 384, baseType: !345, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !576, file: !281, line: 389, baseType: !345, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !576, file: !281, line: 392, baseType: !345, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !280, file: !281, line: 875, baseType: !178, size: 128, offset: 9088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !280, file: !281, line: 877, baseType: !584, size: 320, offset: 9216)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !585, line: 86, size: 320, elements: !586)
!585 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!586 = !{!587, !588, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !584, file: !585, line: 87, baseType: !103, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !584, file: !585, line: 88, baseType: !178, size: 128, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !584, file: !585, line: 89, baseType: !178, size: 128, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !280, file: !281, line: 878, baseType: !335, size: 192, align: 64, offset: 9536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !280, file: !281, line: 881, baseType: !592, size: 64, offset: 9728)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !54, line: 733, size: 10240, elements: !594)
!594 = !{!595, !3294}
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !54, line: 734, baseType: !596, size: 10240)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !54, line: 734, size: 10240, elements: !597)
!597 = !{!598, !602, !616, !3114, !3115, !3116, !3117, !3118, !3119, !3126, !3127, !3128, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3167, !3169, !3231, !3274, !3275, !3276, !3279, !3280, !3281, !3284, !3285, !3286, !3292, !3293}
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !54, line: 739, baseType: !599, size: 512, align: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !596, file: !54, line: 739, size: 512, align: 512, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !599, file: !54, line: 747, baseType: !130, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !596, file: !54, line: 750, baseType: !603, size: 128, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !604, line: 218, size: 128, elements: !605)
!604 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!605 = !{!606, !614, !615}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !604, line: 219, baseType: !607, size: 32)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !604, line: 219, size: 32, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !607, file: !604, line: 220, baseType: !140, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !607, file: !604, line: 221, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !604, line: 197, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !604, line: 197, elements: !613)
!613 = !{}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !603, file: !604, line: 223, baseType: !13, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !603, file: !604, line: 224, baseType: !101, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !596, file: !54, line: 752, baseType: !617, size: 64, offset: 640)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!120, !620, !120, !120, !120, !120}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !83, line: 994, size: 1856, align: 64, elements: !622)
!622 = !{!623, !629, !630, !632, !639, !651, !652, !653, !691, !905, !914, !3104, !3105, !3106, !3107, !3108, !3109, !3111, !3112, !3113}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !83, line: 995, baseType: !624, size: 128)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !83, line: 995, size: 128, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !624, file: !83, line: 996, baseType: !304, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !624, file: !83, line: 997, baseType: !244, size: 128, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !624, file: !83, line: 998, baseType: !13, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !621, file: !83, line: 1005, baseType: !140, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !621, file: !83, line: 1006, baseType: !631, size: 32, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !106, line: 156, baseType: !13)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !621, file: !83, line: 1007, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !634, line: 13, baseType: !635)
!634 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !106, line: 181, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 179, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !636, file: !106, line: 180, baseType: !354, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !621, file: !83, line: 1008, baseType: !640, size: 256, offset: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !641, line: 66, size: 256, elements: !642)
!641 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!642 = !{!643, !644, !645, !650}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !641, line: 67, baseType: !633, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !640, file: !641, line: 68, baseType: !435, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !640, file: !641, line: 70, baseType: !646, size: 32, offset: 96)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !647, line: 15, size: 32, elements: !648)
!647 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !646, file: !647, line: 20, baseType: !130, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !640, file: !641, line: 72, baseType: !178, size: 128, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !621, file: !83, line: 1009, baseType: !122, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !621, file: !83, line: 1010, baseType: !13, size: 32, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !621, file: !83, line: 1011, baseType: !654, size: 256, offset: 640)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !83, line: 948, size: 256, elements: !655)
!655 = !{!656, !679, !680, !681, !689, !690}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !83, line: 949, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !658, line: 34, baseType: !659)
!658 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 25, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !659, file: !658, line: 26, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !663, line: 27, baseType: !664)
!663 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !663, line: 13, size: 64, elements: !665)
!665 = !{!666, !678}
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !663, line: 14, baseType: !667, size: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !663, line: 14, size: 32, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !667, file: !663, line: 15, baseType: !130, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !663, line: 16, baseType: !671, size: 32)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !667, file: !663, line: 16, size: 32, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !671, file: !663, line: 18, baseType: !164, size: 8)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !671, file: !663, line: 19, baseType: !675, size: 24, offset: 8)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 24, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 3)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !664, file: !663, line: 26, baseType: !152, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !654, file: !83, line: 950, baseType: !223, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !654, file: !83, line: 951, baseType: !45, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !654, file: !83, line: 952, baseType: !682, size: 32, offset: 160)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !683, line: 23, baseType: !684)
!683 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 21, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !683, line: 22, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !106, line: 37, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !118, line: 49, baseType: !13)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !654, file: !83, line: 952, baseType: !682, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !654, file: !83, line: 953, baseType: !103, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !621, file: !83, line: 1012, baseType: !692, size: 64, offset: 896)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !695, line: 110, size: 1472, elements: !696)
!695 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!696 = !{!697, !698, !699, !706, !707, !708, !709, !710, !711, !712, !713, !719, !720, !721, !722, !723, !724, !848, !849, !850, !851, !852, !883, !886, !890, !900}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !694, file: !695, line: 111, baseType: !633, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !694, file: !695, line: 112, baseType: !682, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !694, file: !695, line: 113, baseType: !700, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !683, line: 28, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 26, size: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !701, file: !683, line: 27, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !106, line: 38, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !118, line: 50, baseType: !13)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !694, file: !695, line: 114, baseType: !682, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !694, file: !695, line: 115, baseType: !700, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !694, file: !695, line: 116, baseType: !682, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !694, file: !695, line: 117, baseType: !700, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !694, file: !695, line: 118, baseType: !682, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !694, file: !695, line: 119, baseType: !700, size: 32, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !694, file: !695, line: 120, baseType: !13, size: 32, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !694, file: !695, line: 121, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !715, line: 24, baseType: !716)
!715 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 24, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !716, file: !715, line: 24, baseType: !343, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !694, file: !695, line: 122, baseType: !714, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !694, file: !695, line: 123, baseType: !714, size: 64, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !694, file: !695, line: 124, baseType: !714, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !694, file: !695, line: 125, baseType: !714, size: 64, offset: 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !694, file: !695, line: 127, baseType: !168, size: 8, offset: 704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !694, file: !695, line: 129, baseType: !725, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !727, line: 195, size: 1728, elements: !728)
!727 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!728 = !{!729, !730, !735, !740, !749, !752, !753, !760, !761, !762, !763, !766, !767, !768, !770, !771, !812, !833}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !726, file: !727, line: 196, baseType: !227, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !726, file: !727, line: 197, baseType: !731, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !727, line: 28, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !106, line: 104, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !165, line: 20, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !167, line: 26, baseType: !103)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 198, baseType: !736, size: 192, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 198, size: 192, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !736, file: !727, line: 199, baseType: !178, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !736, file: !727, line: 200, baseType: !335, size: 192, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !726, file: !727, line: 205, baseType: !741, size: 320, offset: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !742, line: 48, size: 320, elements: !743)
!742 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!743 = !{!744, !745, !746, !747, !748}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 49, baseType: !633, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !741, file: !742, line: 55, baseType: !633, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !741, file: !742, line: 57, baseType: !646, size: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !741, file: !742, line: 59, baseType: !435, size: 32, offset: 160)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !741, file: !742, line: 60, baseType: !178, size: 128, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !726, file: !727, line: 206, baseType: !750, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !727, line: 206, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !726, file: !727, line: 207, baseType: !101, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 208, baseType: !754, size: 64, offset: 704)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 208, size: 64, elements: !755)
!755 = !{!756, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !754, file: !727, line: 209, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !758, line: 8, baseType: !355)
!758 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!759 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !754, file: !727, line: 210, baseType: !757, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !726, file: !727, line: 212, baseType: !757, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !726, file: !727, line: 213, baseType: !682, size: 32, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !726, file: !727, line: 214, baseType: !700, size: 32, offset: 864)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !726, file: !727, line: 215, baseType: !764, size: 32, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !727, line: 31, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 110, baseType: !290)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !726, file: !727, line: 216, baseType: !107, size: 16, offset: 928)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !726, file: !727, line: 217, baseType: !107, size: 16, offset: 944)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !726, file: !727, line: 221, baseType: !769, size: 16, offset: 960)
!769 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !727, line: 228, baseType: !120, size: 64, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 245, baseType: !772, size: 320, offset: 1088)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 245, size: 320, elements: !773)
!773 = !{!774, !803}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !772, file: !727, line: 246, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !727, line: 114, size: 320, elements: !776)
!776 = !{!777, !778, !790, !793, !802}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !775, file: !727, line: 116, baseType: !120, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !727, line: 117, baseType: !779, size: 64, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !727, line: 117, size: 64, elements: !780)
!780 = !{!781, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !727, line: 118, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !727, line: 118, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !782, file: !727, line: 120, baseType: !174, size: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !782, file: !727, line: 121, baseType: !786, size: 48, offset: 16)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 6)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !779, file: !727, line: 127, baseType: !120, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !727, line: 129, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !727, line: 102, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !775, file: !727, line: 130, baseType: !794, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !727, line: 108, size: 192, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !795, file: !727, line: 109, baseType: !244, size: 128, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !795, file: !727, line: 110, baseType: !227, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !795, file: !727, line: 111, baseType: !800, size: 8, offset: 160)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !106, line: 35, baseType: !801)
!801 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !775, file: !727, line: 131, baseType: !98, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !727, line: 247, baseType: !804, size: 320)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !727, line: 247, size: 320, elements: !805)
!805 = !{!806, !807, !808, !809, !810}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !804, file: !727, line: 248, baseType: !120, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !804, file: !727, line: 249, baseType: !120, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !727, line: 250, baseType: !791, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !804, file: !727, line: 251, baseType: !794, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !804, file: !727, line: 252, baseType: !811, size: 64, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 260, baseType: !813, size: 256, offset: 1408)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 260, size: 256, elements: !814)
!814 = !{!815, !821}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !813, file: !727, line: 261, baseType: !816, size: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !727, line: 134, size: 256, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !816, file: !727, line: 135, baseType: !101, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !816, file: !727, line: 136, baseType: !820, size: 256)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !239)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !727, line: 262, baseType: !822, size: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !727, line: 262, size: 256, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !822, file: !727, line: 264, baseType: !178, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !822, file: !727, line: 265, baseType: !826, size: 128, offset: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !827, line: 22, size: 128, elements: !828)
!827 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!828 = !{!829, !832}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !826, file: !827, line: 23, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !827, line: 23, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !826, file: !827, line: 24, baseType: !120, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !726, file: !727, line: 280, baseType: !834, size: 64, offset: 1664)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !727, line: 176, size: 192, elements: !836)
!836 = !{!837, !846, !847}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !835, file: !727, line: 177, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !727, line: 171, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!103, !725, !842, !844, !725}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !835, file: !727, line: 178, baseType: !725, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !835, file: !727, line: 179, baseType: !791, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !694, file: !695, line: 130, baseType: !725, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !694, file: !695, line: 131, baseType: !725, size: 64, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !694, file: !695, line: 132, baseType: !725, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !694, file: !695, line: 135, baseType: !101, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !694, file: !695, line: 137, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !855, line: 14, size: 1088, elements: !856)
!855 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!856 = !{!857, !858, !867, !868, !869, !870, !871, !872}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !854, file: !855, line: 15, baseType: !227, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !854, file: !855, line: 17, baseType: !859, size: 320, offset: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !860, line: 22, size: 320, elements: !861)
!860 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!861 = !{!862, !863, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !859, file: !860, line: 23, baseType: !435, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !860, line: 24, baseType: !354, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !859, file: !860, line: 26, baseType: !178, size: 128, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !859, file: !860, line: 28, baseType: !866, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !854, file: !855, line: 19, baseType: !120, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !854, file: !855, line: 20, baseType: !633, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !854, file: !855, line: 23, baseType: !214, size: 128, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !854, file: !855, line: 24, baseType: !682, size: 32, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !854, file: !855, line: 29, baseType: !633, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !854, file: !855, line: 36, baseType: !873, size: 320, offset: 768)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !874, line: 15, size: 320, elements: !875)
!874 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!875 = !{!876, !877, !878, !879, !880, !881, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !873, file: !874, line: 16, baseType: !435, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !873, file: !874, line: 18, baseType: !103, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !873, file: !874, line: 19, baseType: !103, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !873, file: !874, line: 20, baseType: !103, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !873, file: !874, line: 21, baseType: !103, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !873, file: !874, line: 22, baseType: !120, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !874, line: 23, baseType: !120, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !694, file: !695, line: 138, baseType: !884, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !683, line: 18, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !694, file: !695, line: 139, baseType: !887, size: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !889, line: 16, flags: DIFlagFwdDecl)
!889 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !694, file: !695, line: 140, baseType: !891, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !695, line: 25, size: 64, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !892, file: !695, line: 26, baseType: !130, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !892, file: !695, line: 27, baseType: !103, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !892, file: !695, line: 28, baseType: !897, offset: 64)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: -1)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !695, line: 142, baseType: !901, size: 128, offset: 1344)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !695, line: 142, size: 128, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !901, file: !695, line: 143, baseType: !103, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !901, file: !695, line: 144, baseType: !244, size: 128, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !621, file: !83, line: 1013, baseType: !906, size: 256, offset: 960)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !83, line: 970, size: 256, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !906, file: !83, line: 971, baseType: !120, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !906, file: !83, line: 972, baseType: !13, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !906, file: !83, line: 973, baseType: !13, size: 32, offset: 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !906, file: !83, line: 974, baseType: !13, size: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !906, file: !83, line: 975, baseType: !13, size: 32, offset: 160)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !906, file: !83, line: 976, baseType: !122, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !621, file: !83, line: 1014, baseType: !915, size: 128, offset: 1216)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !916, line: 8, size: 128, elements: !917)
!916 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!917 = !{!918, !3103}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !915, file: !916, line: 9, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !921, line: 70, size: 256, elements: !922)
!921 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!922 = !{!923, !3100, !3101, !3102}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !920, file: !921, line: 71, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !926, line: 82, size: 1536, elements: !927)
!926 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!927 = !{!928, !929, !934, !942, !943, !958, !3068, !3070, !3083, !3084, !3085, !3086, !3087, !3092, !3093, !3094}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !925, file: !926, line: 84, baseType: !13, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !925, file: !926, line: 85, baseType: !930, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !462, line: 275, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !462, line: 275, size: 32, elements: !932)
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !931, file: !462, line: 275, baseType: !466, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !925, file: !926, line: 86, baseType: !935, size: 128, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !936, line: 38, size: 128, elements: !937)
!936 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!937 = !{!938, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !935, file: !936, line: 39, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !935, file: !936, line: 39, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !925, file: !926, line: 87, baseType: !924, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !925, file: !926, line: 88, baseType: !944, size: 128, offset: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !926, line: 49, size: 128, elements: !945)
!945 = !{!946, !955}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !926, line: 50, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !926, line: 50, size: 64, elements: !948)
!948 = !{!949, !954}
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !926, line: 51, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !947, file: !926, line: 51, size: 64, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !950, file: !926, line: 52, baseType: !290, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !950, file: !926, line: 52, baseType: !290, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !947, file: !926, line: 54, baseType: !343, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !944, file: !926, line: 56, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !925, file: !926, line: 89, baseType: !959, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !83, line: 641, size: 4800, elements: !961)
!961 = !{!962, !963, !964, !965, !966, !967, !968, !971, !972, !1160, !2882, !2883, !2884, !2885, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !3050, !3053, !3054, !3055, !3064, !3065, !3066, !3067}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !960, file: !83, line: 642, baseType: !105, size: 16)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !960, file: !83, line: 643, baseType: !107, size: 16, offset: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !960, file: !83, line: 644, baseType: !682, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !960, file: !83, line: 645, baseType: !178, size: 128, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !960, file: !83, line: 646, baseType: !700, size: 32, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !960, file: !83, line: 647, baseType: !13, size: 32, offset: 224)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !960, file: !83, line: 650, baseType: !969, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !83, line: 607, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !960, file: !83, line: 651, baseType: !969, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !960, file: !83, line: 654, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !83, line: 1966, size: 2048, align: 512, elements: !976)
!976 = !{!977, !981, !994, !1000, !1004, !1008, !1012, !1016, !1020, !1024, !1028, !1029, !1035, !1039, !1077, !1108, !1115, !1121, !1125, !1129, !1133, !1137, !1141, !1147, !1151}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !975, file: !83, line: 1967, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!924, !959, !924, !13}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !975, file: !83, line: 1968, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!98, !924, !959, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !987, line: 10, size: 128, elements: !988)
!987 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!988 = !{!989, !993}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !986, file: !987, line: 11, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !101}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !986, file: !987, line: 12, baseType: !101, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !975, file: !83, line: 1969, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!103, !998, !959, !103}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !715, line: 42, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !975, file: !83, line: 1970, baseType: !1001, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!969, !959, !103, !800}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !975, file: !83, line: 1972, baseType: !1005, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!103, !924, !811, !103}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !975, file: !83, line: 1974, baseType: !1009, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!103, !998, !959, !924, !105, !800}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !975, file: !83, line: 1976, baseType: !1013, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!103, !924, !959, !924}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !975, file: !83, line: 1977, baseType: !1017, size: 64, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!103, !959, !924}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !975, file: !83, line: 1978, baseType: !1021, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!103, !998, !959, !924, !98}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !975, file: !83, line: 1980, baseType: !1025, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!103, !998, !959, !924, !105}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !975, file: !83, line: 1982, baseType: !1017, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !975, file: !83, line: 1983, baseType: !1030, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!103, !998, !959, !924, !105, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !106, line: 21, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !106, line: 18, baseType: !290)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !975, file: !83, line: 1985, baseType: !1036, size: 64, offset: 768)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!103, !998, !959, !924, !959, !924, !13}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !975, file: !83, line: 1987, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!103, !998, !924, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !83, line: 226, size: 640, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1058, !1067, !1068, !1074, !1075, !1076}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1044, file: !83, line: 227, baseType: !13, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1044, file: !83, line: 228, baseType: !105, size: 16, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !83, line: 241, baseType: !1049, size: 32, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !83, line: 241, size: 32, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1049, file: !83, line: 242, baseType: !682, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1049, file: !83, line: 243, baseType: !1053, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1054, line: 16, baseType: !1055)
!1054 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1054, line: 14, size: 32, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1055, file: !1054, line: 15, baseType: !687, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !83, line: 245, baseType: !1059, size: 32, offset: 96)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !83, line: 245, size: 32, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1059, file: !83, line: 246, baseType: !700, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1059, file: !83, line: 247, baseType: !1063, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1054, line: 20, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1054, line: 18, size: 32, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1064, file: !1054, line: 19, baseType: !704, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1044, file: !83, line: 249, baseType: !122, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1044, file: !83, line: 250, baseType: !1069, size: 128, offset: 192)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !758, line: 13, size: 128, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1069, file: !758, line: 14, baseType: !757, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1069, file: !758, line: 15, baseType: !1073, size: 64, offset: 64)
!1073 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1044, file: !83, line: 251, baseType: !1069, size: 128, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1044, file: !83, line: 252, baseType: !1069, size: 128, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1044, file: !83, line: 259, baseType: !620, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !975, file: !83, line: 1988, baseType: !1078, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!103, !998, !1081, !1083, !290, !13}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1085, line: 22, size: 1280, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1084, file: !1085, line: 23, baseType: !290, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1084, file: !1085, line: 24, baseType: !105, size: 16, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1084, file: !1085, line: 25, baseType: !13, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1084, file: !1085, line: 26, baseType: !765, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1084, file: !1085, line: 27, baseType: !343, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1084, file: !1085, line: 28, baseType: !343, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1084, file: !1085, line: 41, baseType: !343, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1084, file: !1085, line: 42, baseType: !1033, size: 32, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1084, file: !1085, line: 43, baseType: !1033, size: 32, offset: 352)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1084, file: !1085, line: 44, baseType: !682, size: 32, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1084, file: !1085, line: 45, baseType: !700, size: 32, offset: 416)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1084, file: !1085, line: 46, baseType: !122, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1084, file: !1085, line: 47, baseType: !1069, size: 128, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1084, file: !1085, line: 48, baseType: !1069, size: 128, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1084, file: !1085, line: 49, baseType: !1069, size: 128, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1084, file: !1085, line: 50, baseType: !1069, size: 128, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1084, file: !1085, line: 51, baseType: !343, size: 64, offset: 1024)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1084, file: !1085, line: 52, baseType: !343, size: 64, offset: 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1084, file: !1085, line: 53, baseType: !290, size: 32, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1084, file: !1085, line: 54, baseType: !290, size: 32, offset: 1184)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1084, file: !1085, line: 55, baseType: !343, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !975, file: !83, line: 1990, baseType: !1109, size: 64, offset: 960)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112, !924, !811, !116}
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !106, line: 66, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !118, line: 73, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !118, line: 15, baseType: !1073)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !975, file: !83, line: 1991, baseType: !1116, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!103, !959, !1119, !343, !343}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !83, line: 55, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !975, file: !83, line: 1993, baseType: !1122, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!103, !959, !103}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !975, file: !83, line: 1994, baseType: !1126, size: 64, offset: 1152)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!103, !959, !924, !620, !13, !105}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !975, file: !83, line: 1997, baseType: !1130, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!103, !998, !959, !620, !105}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !975, file: !83, line: 1999, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!969, !998, !924, !103}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !975, file: !83, line: 2001, baseType: !1138, size: 64, offset: 1344)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!103, !998, !924, !969, !103}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !975, file: !83, line: 2003, baseType: !1142, size: 64, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!103, !998, !924, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !83, line: 76, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !975, file: !83, line: 2005, baseType: !1148, size: 64, offset: 1472)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!103, !924, !1145}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !975, file: !83, line: 2006, baseType: !1152, size: 64, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1155, !959}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !83, line: 3192, size: 192, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1156, file: !83, line: 3193, baseType: !267, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1156, file: !83, line: 3194, baseType: !290, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !960, file: !83, line: 655, baseType: !1161, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !83, line: 1190, size: 10752, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !2395, !2527, !2567, !2650, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2667, !2671, !2672, !2675, !2678, !2681, !2684, !2685, !2686, !2727, !2753, !2754, !2755, !2756, !2757, !2758, !2761, !2765, !2774, !2775, !2776, !2777, !2836, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1162, file: !83, line: 1191, baseType: !178, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1162, file: !83, line: 1192, baseType: !1033, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1162, file: !83, line: 1193, baseType: !168, size: 8, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1162, file: !83, line: 1194, baseType: !120, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1162, file: !83, line: 1195, baseType: !122, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1162, file: !83, line: 1196, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !83, line: 2366, size: 576, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1181, !1185, !1189, !1193, !2383, !2384, !2385, !2387, !2388, !2389, !2391, !2392, !2393, !2394}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1171, file: !83, line: 2367, baseType: !98, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1171, file: !83, line: 2368, baseType: !103, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1171, file: !83, line: 2376, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!103, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !921, line: 21, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1171, file: !83, line: 2377, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !83, line: 75, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1171, file: !83, line: 2378, baseType: !1186, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!924, !1170, !103, !98, !101}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1171, file: !83, line: 2380, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1161}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1171, file: !83, line: 2381, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1203, !2026, !2052, !2053, !2054, !2055, !2059, !2062, !2063, !2064, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2132, !2136, !2156, !2176, !2177, !2178, !2179, !2188, !2211, !2212, !2215, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2229, !2230, !2341, !2349, !2350, !2351, !2353, !2357, !2358, !2362, !2363, !2364, !2365, !2367, !2368, !2369, !2376, !2377, !2378, !2382}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1195, file: !12, line: 403, baseType: !11, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1195, file: !12, line: 406, baseType: !178, size: 128, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1195, file: !12, line: 409, baseType: !1200, size: 448, offset: 192)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 56)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1195, file: !12, line: 417, baseType: !1204, size: 768, offset: 640)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !1205)
!1205 = !{!1206, !2019, !2020, !2021, !2024}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1204, file: !12, line: 46, baseType: !1207, size: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1208, line: 64, size: 512, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1209 = !{!1210, !1211, !1212, !1214, !1258, !1866, !2009, !2014, !2015, !2016, !2017, !2018}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1207, file: !1208, line: 65, baseType: !98, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1207, file: !1208, line: 66, baseType: !178, size: 128, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1207, file: !1208, line: 67, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1207, file: !1208, line: 68, baseType: !1215, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1208, line: 168, size: 768, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1216, file: !1208, line: 169, baseType: !178, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1216, file: !1208, line: 170, baseType: !140, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1216, file: !1208, line: 171, baseType: !1207, size: 512, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1216, file: !1208, line: 172, baseType: !1222, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1208, line: 133, size: 192, elements: !1225)
!1225 = !{!1226, !1233, !1238}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1224, file: !1208, line: 134, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!103, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1224, file: !1208, line: 135, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!98, !1231}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1224, file: !1208, line: 136, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!103, !1231, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1208, line: 125, size: 20736, elements: !1245)
!1245 = !{!1246, !1248, !1252, !1253, !1257}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1244, file: !1208, line: 126, baseType: !1247, size: 192)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 192, elements: !676)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1244, file: !1208, line: 127, baseType: !1249, size: 4096, offset: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 4096, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1244, file: !1208, line: 128, baseType: !103, size: 32, offset: 4288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1244, file: !1208, line: 129, baseType: !1254, size: 16384, offset: 4320)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 2048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1244, file: !1208, line: 130, baseType: !103, size: 32, offset: 20704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1207, file: !1208, line: 69, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1208, line: 116, size: 384, elements: !1262)
!1262 = !{!1263, !1267, !1286, !1826, !1856, !1860}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1261, file: !1208, line: 117, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1213}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1261, file: !1208, line: 118, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1271, line: 254, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1272 = !{!1273, !1282}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1270, file: !1271, line: 255, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1112, !1213, !1277, !811}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1271, line: 30, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1271, line: 31, baseType: !98, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1278, file: !1271, line: 32, baseType: !105, size: 16, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1270, file: !1271, line: 256, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1112, !1213, !1277, !98, !116}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1261, file: !1208, line: 119, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1271, line: 84, size: 320, elements: !1291)
!1291 = !{!1292, !1293, !1297, !1822, !1824}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1271, line: 85, baseType: !98, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1290, file: !1271, line: 86, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!105, !1213, !1277, !103}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1290, file: !1271, line: 88, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!105, !1213, !1301, !103}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1271, line: 175, size: 512, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1813, !1817, !1818}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1302, file: !1271, line: 176, baseType: !1278, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1302, file: !1271, line: 177, baseType: !116, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1302, file: !1271, line: 178, baseType: !101, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1302, file: !1271, line: 179, baseType: !1308, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !83, line: 472, size: 1536, align: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1805, !1806, !1807, !1810, !1811, !1812}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1312, file: !83, line: 473, baseType: !959, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1312, file: !83, line: 474, baseType: !267, size: 128, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1312, file: !83, line: 475, baseType: !741, size: 320, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1312, file: !83, line: 476, baseType: !272, size: 32, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1312, file: !83, line: 477, baseType: !130, size: 32, offset: 544)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1312, file: !83, line: 482, baseType: !475, size: 128, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1312, file: !83, line: 483, baseType: !120, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1312, file: !83, line: 484, baseType: !120, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1312, file: !83, line: 485, baseType: !1323, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !83, line: 404, size: 1280, elements: !1326)
!1326 = !{!1327, !1630, !1700, !1704, !1708, !1714, !1720, !1724, !1729, !1733, !1737, !1741, !1769, !1773, !1777, !1781, !1786, !1790, !1797, !1801}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1325, file: !83, line: 405, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!103, !1331, !1628}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !54, line: 74, size: 512, align: 128, elements: !1333)
!1333 = !{!1334, !1335, !1622, !1627}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !54, line: 75, baseType: !120, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !54, line: 83, baseType: !1336, size: 320, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !54, line: 83, size: 320, elements: !1337)
!1337 = !{!1338, !1359, !1373, !1377, !1621}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !54, line: 84, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !54, line: 84, size: 320, elements: !1340)
!1340 = !{!1341, !1352, !1353, !1358}
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !54, line: 90, baseType: !1342, size: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !54, line: 90, size: 128, elements: !1343)
!1343 = !{!1344, !1345, !1350, !1351}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1342, file: !54, line: 91, baseType: !178, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !54, line: 94, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !54, line: 94, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1346, file: !54, line: 96, baseType: !101, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1346, file: !54, line: 98, baseType: !13, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1342, file: !54, line: 102, baseType: !178, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1342, file: !54, line: 103, baseType: !178, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1339, file: !54, line: 106, baseType: !1311, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !54, line: 107, baseType: !1354, size: 64, offset: 192)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !54, line: 107, size: 64, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1354, file: !54, line: 108, baseType: !120, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1354, file: !54, line: 109, baseType: !120, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1339, file: !54, line: 117, baseType: !120, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !54, line: 119, baseType: !1360, size: 320)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !54, line: 119, size: 320, elements: !1361)
!1361 = !{!1362, !1363, !1366, !1367, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1360, file: !54, line: 124, baseType: !120, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1360, file: !54, line: 125, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !54, line: 125, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1360, file: !54, line: 126, baseType: !120, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1360, file: !54, line: 127, baseType: !120, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !54, line: 128, baseType: !1369, size: 64, offset: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !54, line: 128, size: 64, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1369, file: !54, line: 133, baseType: !120, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1369, file: !54, line: 138, baseType: !633, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !54, line: 141, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !54, line: 141, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1374, file: !54, line: 142, baseType: !120, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !54, line: 144, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !54, line: 144, size: 128, elements: !1379)
!1379 = !{!1380, !1620}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1378, file: !54, line: 146, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !20, line: 126, size: 1216, elements: !1383)
!1383 = !{!1384, !1394, !1415, !1426, !1427, !1428, !1429, !1602, !1603, !1604}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1382, file: !20, line: 127, baseType: !1385, size: 384)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !20, line: 21, size: 384, elements: !1386)
!1386 = !{!1387, !1388, !1390, !1391, !1392, !1393}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1385, file: !20, line: 22, baseType: !120, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1385, file: !20, line: 23, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1385, file: !20, line: 24, baseType: !1389, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1385, file: !20, line: 25, baseType: !120, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1385, file: !20, line: 26, baseType: !120, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1385, file: !20, line: 27, baseType: !120, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1382, file: !20, line: 128, baseType: !1395, size: 128, offset: 384)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1396, line: 105, size: 128, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1395, file: !1396, line: 110, baseType: !120, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1395, file: !1396, line: 118, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1396, line: 95, size: 448, elements: !1402)
!1402 = !{!1403, !1404, !1410, !1411, !1412, !1413, !1414}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1401, file: !1396, line: 96, baseType: !633, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1401, file: !1396, line: 97, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1396, line: 60, baseType: !1407)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1401, file: !1396, line: 98, baseType: !1405, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1401, file: !1396, line: 99, baseType: !800, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1401, file: !1396, line: 100, baseType: !800, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1401, file: !1396, line: 101, baseType: !244, size: 128, align: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1401, file: !1396, line: 102, baseType: !1409, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1382, file: !20, line: 129, baseType: !1416, size: 256, offset: 512)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1417, line: 26, size: 256, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1416, file: !1417, line: 27, baseType: !13, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1416, file: !1417, line: 28, baseType: !1421, size: 192, offset: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1422, line: 43, size: 192, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1422, line: 44, baseType: !435, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1421, file: !1422, line: 45, baseType: !178, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !20, line: 130, baseType: !19, size: 32, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !20, line: 131, baseType: !13, size: 32, offset: 800)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1382, file: !20, line: 132, baseType: !120, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1382, file: !20, line: 133, baseType: !1430, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !20, line: 77, size: 192, elements: !1433)
!1433 = !{!1434, !1438, !1598}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1432, file: !20, line: 83, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1331}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1432, file: !20, line: 89, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !54, line: 1184, baseType: !13)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1445, line: 512, size: 896, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1446 = !{!1447, !1565, !1566, !1573, !1580, !1590, !1591, !1592, !1594, !1596}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 513, baseType: !1448, size: 320)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !1445, line: 513, size: 320, elements: !1449)
!1449 = !{!1450, !1561, !1562, !1563, !1564}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1448, file: !1445, line: 514, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !54, line: 625, size: 1344, elements: !1453)
!1453 = !{!1454, !1463, !1464, !1472, !1479, !1480, !1485, !1486, !1491, !1492, !1495, !1554, !1555, !1556, !1557, !1558, !1559}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !54, line: 628, baseType: !1455, size: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !54, line: 628, size: 128, elements: !1456)
!1456 = !{!1457, !1462}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !54, line: 629, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !54, line: 629, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1458, file: !54, line: 631, baseType: !120, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1458, file: !54, line: 632, baseType: !120, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1455, file: !54, line: 635, baseType: !244, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1452, file: !54, line: 639, baseType: !592, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1452, file: !54, line: 640, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1466, line: 297, baseType: !1467)
!1466 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1466, line: 297, size: 64, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1467, file: !1466, line: 297, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1471, line: 19, baseType: !120)
!1471 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !54, line: 646, baseType: !1473, size: 64, offset: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !54, line: 646, size: 64, elements: !1474)
!1474 = !{!1475, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1473, file: !54, line: 647, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !54, line: 542, baseType: !120)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1473, file: !54, line: 648, baseType: !1477, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1452, file: !54, line: 666, baseType: !103, size: 32, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1452, file: !54, line: 667, baseType: !1481, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !54, line: 579, size: 320, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !54, line: 580, baseType: !741, size: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1452, file: !54, line: 670, baseType: !800, size: 8, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1452, file: !54, line: 681, baseType: !1487, size: 256, offset: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !54, line: 678, size: 256, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1487, file: !54, line: 679, baseType: !335, size: 192, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1487, file: !54, line: 680, baseType: !120, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1452, file: !54, line: 689, baseType: !178, size: 128, offset: 768)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1452, file: !54, line: 691, baseType: !1493, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !54, line: 691, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1452, file: !54, line: 694, baseType: !1496, size: 64, offset: 960)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1445, line: 563, size: 1024, elements: !1499)
!1499 = !{!1500, !1504, !1505, !1509, !1513, !1517, !1518, !1522, !1526, !1530, !1531, !1532, !1536, !1540, !1546, !1550}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !1445, line: 564, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1451}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1498, file: !1445, line: 569, baseType: !1501, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1498, file: !1445, line: 571, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!103, !1451, !120}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1498, file: !1445, line: 572, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!103, !1451}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1498, file: !1445, line: 578, baseType: !1514, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!103, !1451, !120, !120, !120}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1498, file: !1445, line: 580, baseType: !1439, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1498, file: !1445, line: 581, baseType: !1519, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!1442, !1443, !13}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1498, file: !1445, line: 582, baseType: !1523, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1442, !1443, !120, !120}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1498, file: !1445, line: 584, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!120, !1451}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1498, file: !1445, line: 588, baseType: !1439, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1498, file: !1445, line: 591, baseType: !1439, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1498, file: !1445, line: 597, baseType: !1533, size: 64, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!103, !1451, !120, !101, !103, !103}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1498, file: !1445, line: 603, baseType: !1537, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!98, !1451}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1498, file: !1445, line: 613, baseType: !1541, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!103, !1451, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !54, line: 717, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1498, file: !1445, line: 625, baseType: !1547, size: 64, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1544, !1451, !120}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1498, file: !1445, line: 633, baseType: !1551, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1331, !1451, !120}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1452, file: !54, line: 697, baseType: !120, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1452, file: !54, line: 699, baseType: !620, size: 64, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1452, file: !54, line: 700, baseType: !101, size: 64, offset: 1152)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1452, file: !54, line: 711, baseType: !633, size: 64, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1452, file: !54, line: 717, baseType: !1544, size: 64, offset: 1280)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1452, file: !54, line: 722, baseType: !1560, offset: 1344)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !54, line: 570, elements: !613)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1448, file: !1445, line: 515, baseType: !272, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1448, file: !1445, line: 516, baseType: !120, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1448, file: !1445, line: 517, baseType: !120, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1448, file: !1445, line: 518, baseType: !120, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !1445, line: 520, baseType: !53, size: 32, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1444, file: !1445, line: 522, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1471, line: 22, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 22, size: 64, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1569, file: !1471, line: 22, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1471, line: 15, baseType: !120)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1444, file: !1445, line: 524, baseType: !1574, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1466, line: 372, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 372, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1576, file: !1466, line: 372, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1471, line: 16, baseType: !120)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1445, line: 527, baseType: !1581, size: 64, offset: 512)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1445, line: 527, size: 64, elements: !1582)
!1582 = !{!1583, !1589}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1581, file: !1445, line: 528, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1471, line: 21, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 21, size: 64, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1585, file: !1471, line: 21, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1471, line: 14, baseType: !120)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1581, file: !1445, line: 529, baseType: !1568, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1444, file: !1445, line: 534, baseType: !1331, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1444, file: !1445, line: 535, baseType: !1331, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1444, file: !1445, line: 541, baseType: !1593, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1444, file: !1445, line: 545, baseType: !1595, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1444, file: !1445, line: 549, baseType: !1597, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1466, line: 520, baseType: !1331)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1432, file: !20, line: 100, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!103, !1381, !120, !120, !103}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1382, file: !20, line: 134, baseType: !101, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1382, file: !20, line: 135, baseType: !103, size: 32, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !20, line: 136, baseType: !1605, size: 128, offset: 1088)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !20, line: 136, size: 128, elements: !1606)
!1606 = !{!1607, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1605, file: !20, line: 137, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1609, line: 6, size: 128, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1608, file: !1609, line: 7, baseType: !343, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1608, file: !1609, line: 8, baseType: !343, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !20, line: 138, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !20, line: 138, elements: !1615)
!1615 = !{!1616, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1614, file: !20, line: 138, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1614, file: !20, line: 138, elements: !613)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1614, file: !20, line: 138, baseType: !1619)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, elements: !898)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1378, file: !54, line: 147, baseType: !101, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1336, file: !54, line: 161, baseType: !244, size: 128, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !54, line: 164, baseType: !1623, size: 32, offset: 384)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !54, line: 164, size: 32, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1623, file: !54, line: 169, baseType: !130, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1623, file: !54, line: 177, baseType: !13, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1332, file: !54, line: 181, baseType: !130, size: 32, offset: 416)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !83, line: 309, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1325, file: !83, line: 406, baseType: !1631, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!103, !620, !1634}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !54, line: 293, size: 1536, elements: !1636)
!1636 = !{!1637, !1667, !1681}
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !54, line: 295, baseType: !1638, size: 512)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !54, line: 295, size: 512, elements: !1639)
!1639 = !{!1640, !1666}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !54, line: 296, baseType: !1641, size: 448)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !54, line: 296, size: 448, elements: !1642)
!1642 = !{!1643, !1644, !1653, !1654, !1655, !1664, !1665}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !54, line: 298, baseType: !120, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !54, line: 299, baseType: !1645, size: 128, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !54, line: 299, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1645, file: !54, line: 300, baseType: !178, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !54, line: 302, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !54, line: 302, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1649, file: !54, line: 303, baseType: !101, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1649, file: !54, line: 305, baseType: !13, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1641, file: !54, line: 310, baseType: !1311, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1641, file: !54, line: 311, baseType: !120, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !54, line: 312, baseType: !1656, size: 64, offset: 320)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !54, line: 312, size: 64, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1656, file: !54, line: 313, baseType: !101, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1656, file: !54, line: 314, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !54, line: 257, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 255, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1661, file: !54, line: 256, baseType: !120, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1641, file: !54, line: 316, baseType: !130, size: 32, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1641, file: !54, line: 317, baseType: !130, size: 32, offset: 416)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1638, file: !54, line: 323, baseType: !1332, size: 512, align: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !54, line: 325, baseType: !1668, size: 512, offset: 512)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !54, line: 325, size: 512, elements: !1669)
!1669 = !{!1670, !1680}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !54, line: 326, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !54, line: 326, size: 320, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1671, file: !54, line: 327, baseType: !120, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1671, file: !54, line: 328, baseType: !120, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1671, file: !54, line: 329, baseType: !120, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1671, file: !54, line: 331, baseType: !130, size: 32, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1671, file: !54, line: 332, baseType: !130, size: 32, offset: 224)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1671, file: !54, line: 333, baseType: !130, size: 32, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1671, file: !54, line: 335, baseType: !13, size: 32, offset: 288)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1668, file: !54, line: 339, baseType: !1332, size: 512, align: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1635, file: !54, line: 341, baseType: !1682, size: 512, offset: 1024)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1635, file: !54, line: 341, size: 512, elements: !1683)
!1683 = !{!1684, !1693, !1699}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !54, line: 342, baseType: !1685, size: 384)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !54, line: 342, size: 384, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1685, file: !54, line: 343, baseType: !120, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1685, file: !54, line: 344, baseType: !120, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1685, file: !54, line: 346, baseType: !101, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1685, file: !54, line: 347, baseType: !101, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1685, file: !54, line: 348, baseType: !101, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1685, file: !54, line: 349, baseType: !101, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !54, line: 352, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !54, line: 352, size: 256, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1694, file: !54, line: 353, baseType: !120, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1694, file: !54, line: 354, baseType: !120, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1694, file: !54, line: 356, baseType: !178, size: 128, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1682, file: !54, line: 359, baseType: !1332, size: 512, align: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1325, file: !83, line: 409, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!103, !1311, !1628}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1325, file: !83, line: 412, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!800, !1311, !1634}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1325, file: !83, line: 414, baseType: !1709, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !83, line: 310, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1325, file: !83, line: 416, baseType: !1715, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!103, !620, !1311, !122, !13, !1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1325, file: !83, line: 419, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!103, !620, !1311, !122, !13, !13, !1331, !101}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1325, file: !83, line: 424, baseType: !1725, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !1311, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !106, line: 131, baseType: !343)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1325, file: !83, line: 425, baseType: !1730, size: 64, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1634, !116, !116}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1325, file: !83, line: 426, baseType: !1734, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!800, !1634, !272}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1325, file: !83, line: 427, baseType: !1738, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !1634}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1325, file: !83, line: 428, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1112, !1745, !1767}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !83, line: 373, size: 384, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1754, !1755, !1756, !1757}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1746, file: !83, line: 374, baseType: !620, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1746, file: !83, line: 375, baseType: !122, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1746, file: !83, line: 376, baseType: !1751, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1745, !1073}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1746, file: !83, line: 377, baseType: !101, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1746, file: !83, line: 378, baseType: !103, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1746, file: !83, line: 379, baseType: !174, size: 16, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !83, line: 380, baseType: !1758, size: 64, offset: 320)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !83, line: 380, size: 64, elements: !1759)
!1759 = !{!1760, !1763}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1758, file: !83, line: 386, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !83, line: 386, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1758, file: !83, line: 395, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1112, !101}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !83, line: 69, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1325, file: !83, line: 433, baseType: !1770, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!103, !1311, !1634, !1634, !69}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1325, file: !83, line: 435, baseType: !1774, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!103, !1634}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1325, file: !83, line: 436, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!800, !1634, !116, !116}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1325, file: !83, line: 438, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1634, !1785, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1325, file: !83, line: 439, baseType: !1787, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!103, !1311, !1331}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1325, file: !83, line: 442, baseType: !1791, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!103, !1794, !620, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !83, line: 66, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1325, file: !83, line: 444, baseType: !1798, size: 64, offset: 1152)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !620}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1325, file: !83, line: 445, baseType: !1802, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!103, !1745, !1767}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !83, line: 486, baseType: !120, size: 64, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1312, file: !83, line: 487, baseType: !741, size: 320, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1312, file: !83, line: 488, baseType: !1808, size: 32, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1809, line: 8, baseType: !290)
!1809 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1312, file: !83, line: 489, baseType: !140, size: 32, offset: 1312)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1312, file: !83, line: 490, baseType: !178, size: 128, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1312, file: !83, line: 491, baseType: !101, size: 64, offset: 1472)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1302, file: !1271, line: 180, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1112, !620, !1213, !1301, !811, !122, !116}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1302, file: !1271, line: 182, baseType: !1814, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1302, file: !1271, line: 184, baseType: !1819, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!103, !620, !1213, !1301, !1451}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1290, file: !1271, line: 90, baseType: !1823, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1290, file: !1271, line: 91, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1261, file: !1208, line: 120, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!1830, !1231}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !77, line: 39, size: 384, elements: !1833)
!1833 = !{!1834, !1835, !1839, !1843, !1851, !1855}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1832, file: !77, line: 40, baseType: !76, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1832, file: !77, line: 41, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!800}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1832, file: !77, line: 42, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!101}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1832, file: !77, line: 43, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !77, line: 19, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1832, file: !77, line: 44, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1847}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1832, file: !77, line: 45, baseType: !990, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1261, file: !1208, line: 121, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1847, !1231}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1261, file: !1208, line: 122, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1231, !1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1207, file: !1208, line: 70, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1869, line: 190, size: 1152, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !2001, !2002, !2003, !2004, !2005, !2008}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1868, file: !1869, line: 191, baseType: !130, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1868, file: !1869, line: 192, baseType: !130, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1868, file: !1869, line: 202, baseType: !1867, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !1869, line: 203, baseType: !98, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1868, file: !1869, line: 205, baseType: !335, size: 192, align: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1868, file: !1869, line: 207, baseType: !1847, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1868, file: !1869, line: 208, baseType: !13, size: 32, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !1869, line: 209, baseType: !1879, size: 256, offset: 512)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !1869, line: 209, size: 256, elements: !1880)
!1880 = !{!1881, !1890, !1894}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1879, file: !1869, line: 210, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1869, line: 153, size: 256, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1889}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1882, file: !1869, line: 154, baseType: !120, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1882, file: !1869, line: 156, baseType: !478, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1882, file: !1869, line: 162, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1869, line: 162, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1882, file: !1869, line: 167, baseType: !120, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1879, file: !1869, line: 211, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1869, line: 170, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1891, file: !1869, line: 171, baseType: !1867, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1879, file: !1869, line: 212, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1869, line: 174, size: 256, elements: !1896)
!1896 = !{!1897, !1996, !1999, !2000}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1895, file: !1869, line: 175, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1869, line: 271, size: 768, elements: !1901)
!1901 = !{!1902, !1960, !1964, !1965, !1966, !1967, !1968, !1972, !1973, !1974, !1975, !1992}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1900, file: !1869, line: 276, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!103, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1869, line: 251, size: 1216, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1907, file: !1869, line: 253, baseType: !1867, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1907, file: !1869, line: 254, baseType: !620, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1907, file: !1869, line: 255, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1914, line: 17, size: 960, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1945, !1946, !1949}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1913, file: !1914, line: 18, baseType: !811, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1913, file: !1914, line: 19, baseType: !116, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1913, file: !1914, line: 20, baseType: !116, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1913, file: !1914, line: 21, baseType: !116, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1913, file: !1914, line: 22, baseType: !116, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1913, file: !1914, line: 23, baseType: !122, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1913, file: !1914, line: 24, baseType: !122, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1913, file: !1914, line: 25, baseType: !640, size: 256, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1913, file: !1914, line: 26, baseType: !1925, size: 64, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1914, line: 32, size: 256, elements: !1928)
!1928 = !{!1929, !1933, !1937, !1941}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1927, file: !1914, line: 33, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!101, !1912, !121}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1927, file: !1914, line: 34, baseType: !1934, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1912, !101}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1927, file: !1914, line: 35, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!101, !1912, !101, !121}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1927, file: !1914, line: 36, baseType: !1942, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!103, !1912, !101}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1913, file: !1914, line: 27, baseType: !103, size: 32, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1913, file: !1914, line: 28, baseType: !1947, size: 64, offset: 832)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1913, file: !1914, line: 29, baseType: !101, size: 64, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1907, file: !1869, line: 256, baseType: !101, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1907, file: !1869, line: 259, baseType: !640, size: 256, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1907, file: !1869, line: 260, baseType: !640, size: 256, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1907, file: !1869, line: 261, baseType: !103, size: 32, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1907, file: !1869, line: 262, baseType: !178, size: 128, offset: 832)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1907, file: !1869, line: 263, baseType: !811, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1907, file: !1869, line: 265, baseType: !116, size: 64, offset: 1024)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1907, file: !1869, line: 266, baseType: !800, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1907, file: !1869, line: 267, baseType: !800, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1907, file: !1869, line: 268, baseType: !1496, size: 64, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1900, file: !1869, line: 277, baseType: !1961, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1906}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1900, file: !1869, line: 290, baseType: !1942, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1900, file: !1869, line: 292, baseType: !1930, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1900, file: !1869, line: 293, baseType: !1938, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1900, file: !1869, line: 294, baseType: !1934, size: 64, offset: 320)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1900, file: !1869, line: 296, baseType: !1969, size: 64, offset: 384)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1112, !1906, !811, !116, !122}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1900, file: !1869, line: 306, baseType: !116, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1900, file: !1869, line: 313, baseType: !800, size: 8, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1900, file: !1869, line: 314, baseType: !1969, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1900, file: !1869, line: 317, baseType: !1976, size: 64, offset: 640)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1979, !1906, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1980, line: 59, baseType: !13)
!1980 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1983, line: 37, size: 128, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1984 = !{!1985, !1991}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1982, file: !1983, line: 38, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1983, line: 31, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !620, !1990, !1981}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1982, file: !1983, line: 39, baseType: !1979, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1900, file: !1869, line: 320, baseType: !1993, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!103, !1906, !1451}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1895, file: !1869, line: 176, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1869, line: 35, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1895, file: !1869, line: 177, baseType: !122, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1895, file: !1869, line: 178, baseType: !1867, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1868, file: !1869, line: 215, baseType: !101, size: 64, offset: 768)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1868, file: !1869, line: 221, baseType: !343, size: 64, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 223, baseType: !107, size: 16, offset: 896)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1868, file: !1869, line: 224, baseType: !105, size: 16, offset: 912)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1868, file: !1869, line: 225, baseType: !2006, size: 64, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1869, line: 36, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1868, file: !1869, line: 227, baseType: !244, size: 128, align: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1207, file: !1208, line: 71, baseType: !2010, size: 32, offset: 448)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2011, line: 19, size: 32, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2010, file: !2011, line: 20, baseType: !227, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1207, file: !1208, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1207, file: !1208, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1207, file: !1208, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1207, file: !1208, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1207, file: !1208, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1204, file: !12, line: 47, baseType: !1194, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1204, file: !12, line: 48, baseType: !1213, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1204, file: !12, line: 49, baseType: !2022, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1204, file: !12, line: 50, baseType: !2025, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1195, file: !12, line: 418, baseType: !2027, size: 64, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !2029)
!2029 = !{!2030, !2031, !2036, !2040, !2044, !2048}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2028, file: !12, line: 54, baseType: !1278, size: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2028, file: !12, line: 55, baseType: !2032, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!1112, !2027, !2035, !811}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2028, file: !12, line: 57, baseType: !2037, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1112, !2027, !2035, !98, !116}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2028, file: !12, line: 59, baseType: !2041, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1194, !98}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2028, file: !12, line: 60, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!103, !1194}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2028, file: !12, line: 61, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1194}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1195, file: !12, line: 419, baseType: !98, size: 64, offset: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1195, file: !12, line: 420, baseType: !98, size: 64, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1195, file: !12, line: 421, baseType: !1213, size: 64, offset: 1600)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1195, file: !12, line: 424, baseType: !2056, size: 64, offset: 1664)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1195, file: !12, line: 425, baseType: !2060, size: 64, offset: 1728)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1195, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1195, file: !12, line: 435, baseType: !640, size: 256, offset: 1856)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1195, file: !12, line: 437, baseType: !2065, size: 64, offset: 2112)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2067, line: 69, size: 320, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2068 = !{!2069, !2070, !2071, !2088, !2090, !2094, !2095}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !2067, line: 70, baseType: !98, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2066, file: !2067, line: 71, baseType: !1194, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2066, file: !2067, line: 72, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2067, line: 47, size: 256, elements: !2075)
!2075 = !{!2076, !2077, !2083, !2087}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2074, file: !2067, line: 49, baseType: !13, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2074, file: !2067, line: 51, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!103, !98, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2074, file: !2067, line: 53, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!103, !811, !2081}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2074, file: !2067, line: 55, baseType: !990, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2066, file: !2067, line: 73, baseType: !2089, size: 16, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2066, file: !2067, line: 74, baseType: !2091, size: 8, offset: 208)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !165, line: 16, baseType: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !167, line: 20, baseType: !2093)
!2093 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 75, baseType: !164, size: 8, offset: 216)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2067, line: 76, baseType: !2096, size: 64, offset: 256)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2067, line: 76, size: 64, elements: !2097)
!2097 = !{!2098, !2099, !2106}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2096, file: !2067, line: 77, baseType: !101, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2096, file: !2067, line: 78, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2067, line: 86, size: 128, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2102, file: !2067, line: 87, baseType: !13, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2102, file: !2067, line: 88, baseType: !811, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2096, file: !2067, line: 79, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2067, line: 92, size: 256, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2115, !2116}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2109, file: !2067, line: 94, baseType: !13, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2109, file: !2067, line: 95, baseType: !13, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2109, file: !2067, line: 96, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2109, file: !2067, line: 97, baseType: !2072, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2109, file: !2067, line: 98, baseType: !101, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1195, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1195, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1195, file: !12, line: 442, baseType: !2056, size: 64, offset: 2240)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1195, file: !12, line: 443, baseType: !2060, size: 64, offset: 2304)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1195, file: !12, line: 444, baseType: !800, size: 8, offset: 2368)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1195, file: !12, line: 451, baseType: !800, size: 8, offset: 2376)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1195, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1195, file: !12, line: 455, baseType: !2125, size: 64, offset: 2432)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2127, line: 23, size: 96, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2126, file: !2127, line: 24, baseType: !103, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2126, file: !2127, line: 24, baseType: !103, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2126, file: !2127, line: 24, baseType: !103, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1195, file: !12, line: 458, baseType: !2133, size: 64, offset: 2496)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!103}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1195, file: !12, line: 460, baseType: !2137, size: 4032, align: 512, offset: 2560)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 4032, elements: !2154)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2138, file: !12, line: 363, baseType: !101, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2138, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2138, file: !12, line: 367, baseType: !2143, size: 448, offset: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2143, file: !12, line: 320, baseType: !1194, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2143, file: !12, line: 321, baseType: !2147, size: 384, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2148, line: 40, size: 384, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2147, file: !2148, line: 41, baseType: !2151, size: 384, align: 64)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, align: 64, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 2)
!2154 = !{!2155}
!2155 = !DISubrange(count: 7)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1195, file: !12, line: 463, baseType: !2157, size: 192, offset: 6592)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2158, line: 8, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2159 = !{!2160, !2161, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2157, file: !2158, line: 10, baseType: !13, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2157, file: !2158, line: 11, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2157, file: !2158, line: 12, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2166, line: 59, size: 48, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2167 = !{!2168, !2171, !2172, !2173, !2174, !2175}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2165, file: !2166, line: 60, baseType: !2169, size: 16)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !165, line: 18, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !167, line: 23, baseType: !769)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2165, file: !2166, line: 61, baseType: !2169, size: 16, offset: 16)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2165, file: !2166, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2165, file: !2166, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2165, file: !2166, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2165, file: !2166, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1195, file: !12, line: 465, baseType: !120, size: 64, offset: 6784)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1195, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1195, file: !12, line: 470, baseType: !178, size: 128, offset: 6912)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1195, file: !12, line: 471, baseType: !2180, size: 64, offset: 7040)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2182, line: 33, size: 96, elements: !2183)
!2182 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2181, file: !2182, line: 37, baseType: !103, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2181, file: !2182, line: 43, baseType: !103, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2181, file: !2182, line: 45, baseType: !107, size: 16, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2181, file: !2182, line: 47, baseType: !107, size: 16, offset: 80)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1195, file: !12, line: 476, baseType: !2189, size: 64, offset: 7104)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !2191)
!2191 = !{!2192, !2208, !2209, !2210}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2190, file: !12, line: 379, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2195, line: 204, baseType: !2196)
!2195 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2195, line: 197, size: 192, elements: !2197)
!2197 = !{!2198, !2200, !2201, !2202, !2204, !2206}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2196, file: !2195, line: 198, baseType: !2199, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2195, line: 21, baseType: !291)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2196, file: !2195, line: 199, baseType: !168, size: 8, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2196, file: !2195, line: 200, baseType: !168, size: 8, offset: 40)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2196, file: !2195, line: 201, baseType: !2203, size: 16, offset: 48)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2195, line: 17, baseType: !175)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2196, file: !2195, line: 202, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2195, line: 16, baseType: !344)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2196, file: !2195, line: 203, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2195, line: 22, baseType: !344)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2190, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2190, file: !12, line: 381, baseType: !811, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2190, file: !12, line: 382, baseType: !811, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1195, file: !12, line: 477, baseType: !2190, size: 256, offset: 7168)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1195, file: !12, line: 480, baseType: !2213, size: 64, offset: 7424)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1195, file: !12, line: 483, baseType: !2216, size: 64, offset: 7488)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1195, file: !12, line: 488, baseType: !811, size: 64, offset: 7552)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1195, file: !12, line: 492, baseType: !101, size: 64, offset: 7616)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1195, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1195, file: !12, line: 495, baseType: !101, size: 64, offset: 7744)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1195, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1195, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1195, file: !12, line: 500, baseType: !2225, size: 64, offset: 7872)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2227, line: 45, baseType: !2228)
!2227 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1195, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1195, file: !12, line: 504, baseType: !2231, size: 64, offset: 8000)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2234, line: 96, size: 192, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2235 = !{!2236, !2237, !2302, !2305}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2233, file: !2234, line: 97, baseType: !13, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2233, file: !2234, line: 98, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2234, line: 24, size: 3072, elements: !2240)
!2240 = !{!2241, !2243, !2244, !2245, !2246, !2260, !2261, !2262, !2263, !2275, !2287, !2288, !2299, !2300, !2301}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2239, file: !2234, line: 26, baseType: !2242, size: 128)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 128, elements: !2152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2239, file: !2234, line: 27, baseType: !2242, size: 128, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2239, file: !2234, line: 28, baseType: !103, size: 32, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !2234, line: 31, baseType: !140, size: 32, align: 512, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2239, file: !2234, line: 32, baseType: !2247, size: 960, offset: 576)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2248, line: 206, size: 960, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2249 = !{!2250, !2251, !2254, !2256, !2257, !2259}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2247, file: !2248, line: 207, baseType: !247, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2247, file: !2248, line: 208, baseType: !2252, size: 256, offset: 64)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 256, elements: !239)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2247, file: !2248, line: 209, baseType: !2255, size: 256, offset: 320)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !239)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2247, file: !2248, line: 213, baseType: !1073, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2247, file: !2248, line: 215, baseType: !2258, size: 256, offset: 640)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 256, elements: !239)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2247, file: !2248, line: 216, baseType: !164, size: 8, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2239, file: !2234, line: 33, baseType: !120, size: 64, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2239, file: !2234, line: 34, baseType: !120, size: 64, offset: 1600)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2239, file: !2234, line: 35, baseType: !800, size: 8, offset: 1664)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2239, file: !2234, line: 36, baseType: !2264, size: 320, offset: 1728)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2265, line: 11, size: 320, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2266 = !{!2267, !2268, !2269, !2274}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2264, file: !2265, line: 16, baseType: !214, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2264, file: !2265, line: 17, baseType: !120, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2264, file: !2265, line: 18, baseType: !2270, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 19, baseType: !290, size: 32, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2239, file: !2234, line: 37, baseType: !2276, size: 256, offset: 2048)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2277, line: 98, size: 256, elements: !2278)
!2277 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2276, file: !2277, line: 99, baseType: !633, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2276, file: !2277, line: 100, baseType: !178, size: 128, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2276, file: !2277, line: 101, baseType: !2282, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2277, line: 21, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2239, file: !2234, line: 38, baseType: !244, size: 128, align: 64, offset: 2304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2239, file: !2234, line: 39, baseType: !2289, size: 64, offset: 2432)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2234, line: 49, size: 768, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !2234, line: 50, baseType: !140, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2290, file: !2234, line: 51, baseType: !2255, size: 256, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2290, file: !2234, line: 53, baseType: !2255, size: 256, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2290, file: !2234, line: 54, baseType: !120, size: 64, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2290, file: !2234, line: 55, baseType: !2289, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2290, file: !2234, line: 56, baseType: !103, size: 32, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2290, file: !2234, line: 57, baseType: !103, size: 32, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2239, file: !2234, line: 40, baseType: !120, size: 64, offset: 2496)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2239, file: !2234, line: 42, baseType: !103, size: 32, offset: 2560)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2239, file: !2234, line: 43, baseType: !2232, size: 64, offset: 2624)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2233, file: !2234, line: 99, baseType: !2303, offset: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2304, line: 211, elements: !613)
!2304 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2233, file: !2234, line: 100, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2234, line: 63, size: 3008, elements: !2308)
!2308 = !{!2309, !2310, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2340}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2307, file: !2234, line: 64, baseType: !2289, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2307, file: !2234, line: 65, baseType: !2311, size: 192, offset: 64)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 192, elements: !676)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2307, file: !2234, line: 67, baseType: !103, size: 32, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2307, file: !2234, line: 68, baseType: !640, size: 256, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2307, file: !2234, line: 69, baseType: !140, size: 32, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2307, file: !2234, line: 70, baseType: !640, size: 256, offset: 640)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2307, file: !2234, line: 71, baseType: !120, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2307, file: !2234, line: 72, baseType: !120, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2307, file: !2234, line: 73, baseType: !120, size: 64, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2307, file: !2234, line: 74, baseType: !120, size: 64, offset: 1088)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2307, file: !2234, line: 75, baseType: !120, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2307, file: !2234, line: 76, baseType: !120, size: 64, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2307, file: !2234, line: 77, baseType: !120, size: 64, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2307, file: !2234, line: 78, baseType: !120, size: 64, offset: 1344)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2307, file: !2234, line: 79, baseType: !800, size: 8, offset: 1408)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2307, file: !2234, line: 80, baseType: !120, size: 64, offset: 1472)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2307, file: !2234, line: 81, baseType: !640, size: 256, offset: 1536)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2307, file: !2234, line: 82, baseType: !1416, size: 256, offset: 1792)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2307, file: !2234, line: 84, baseType: !130, size: 32, offset: 2048)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2307, file: !2234, line: 87, baseType: !120, size: 64, offset: 2112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2307, file: !2234, line: 88, baseType: !120, size: 64, offset: 2176)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2307, file: !2234, line: 89, baseType: !2332, size: 704, offset: 2240)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2277, line: 111, size: 704, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2339}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2332, file: !2277, line: 112, baseType: !2276, size: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2332, file: !2277, line: 113, baseType: !2264, size: 320, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2332, file: !2277, line: 116, baseType: !2337, size: 64, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2277, line: 18, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2332, file: !2277, line: 117, baseType: !103, size: 32, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2307, file: !2234, line: 90, baseType: !2232, size: 64, offset: 2944)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1195, file: !12, line: 515, baseType: !2342, size: 64, offset: 8064)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2344, line: 117, size: 128, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2343, file: !2344, line: 118, baseType: !733, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2343, file: !2344, line: 119, baseType: !733, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2343, file: !2344, line: 120, baseType: !1073, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1195, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1195, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1195, file: !12, line: 520, baseType: !2352, size: 64, offset: 8192)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1195, file: !12, line: 523, baseType: !2354, size: 64, offset: 8256)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1195, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1195, file: !12, line: 525, baseType: !2359, size: 64, offset: 8384)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1195, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1195, file: !12, line: 533, baseType: !101, size: 64, offset: 8512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1195, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1195, file: !12, line: 535, baseType: !2366, size: 64, offset: 8640)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1195, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1195, file: !12, line: 539, baseType: !103, size: 32, offset: 8736)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1195, file: !12, line: 540, baseType: !2370, size: 64, offset: 8768)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2372, line: 32, size: 64, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2371, file: !2372, line: 33, baseType: !733, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2371, file: !2372, line: 34, baseType: !733, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1195, file: !12, line: 563, baseType: !178, size: 128, offset: 8832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1195, file: !12, line: 565, baseType: !178, size: 128, offset: 8960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1195, file: !12, line: 568, baseType: !2379, size: 64, offset: 9088)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1195, file: !12, line: 570, baseType: !130, size: 32, offset: 9152)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !83, line: 2382, baseType: !1170, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1171, file: !83, line: 2383, baseType: !236, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1171, file: !83, line: 2385, baseType: !2386, offset: 576)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2304, line: 206, elements: !613)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1171, file: !83, line: 2386, baseType: !2386, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1171, file: !83, line: 2387, baseType: !2386, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1171, file: !83, line: 2388, baseType: !2390, offset: 576)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2386, elements: !676)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1171, file: !83, line: 2390, baseType: !2386, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1171, file: !83, line: 2391, baseType: !2386, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1171, file: !83, line: 2392, baseType: !2386, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1171, file: !83, line: 2393, baseType: !2386, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1162, file: !83, line: 1197, baseType: !2396, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !83, line: 2057, size: 1664, elements: !2399)
!2399 = !{!2400, !2404, !2408, !2409, !2413, !2417, !2421, !2422, !2423, !2427, !2431, !2435, !2436, !2437, !2443, !2447, !2448, !2452, !2453, !2454, !2455, !2459, !2463, !2510, !2525, !2526}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2398, file: !83, line: 2058, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!959, !1161}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2398, file: !83, line: 2059, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !959}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2398, file: !83, line: 2060, baseType: !2405, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2398, file: !83, line: 2062, baseType: !2410, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !959, !103}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2398, file: !83, line: 2063, baseType: !2414, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!103, !959, !1628}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2398, file: !83, line: 2064, baseType: !2418, size: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!103, !959}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2398, file: !83, line: 2065, baseType: !2405, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2398, file: !83, line: 2066, baseType: !1190, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2398, file: !83, line: 2067, baseType: !2424, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!103, !1161, !103}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2398, file: !83, line: 2068, baseType: !2428, size: 64, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!103, !1161, !82}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2398, file: !83, line: 2069, baseType: !2432, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!103, !1161}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2398, file: !83, line: 2070, baseType: !2428, size: 64, offset: 704)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2398, file: !83, line: 2071, baseType: !2432, size: 64, offset: 768)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2398, file: !83, line: 2072, baseType: !2438, size: 64, offset: 832)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!103, !924, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !83, line: 62, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2398, file: !83, line: 2073, baseType: !2444, size: 64, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!103, !1161, !2162, !811}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2398, file: !83, line: 2074, baseType: !1190, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2398, file: !83, line: 2076, baseType: !2449, size: 64, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!103, !1912, !924}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2398, file: !83, line: 2077, baseType: !2449, size: 64, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2398, file: !83, line: 2078, baseType: !2449, size: 64, offset: 1152)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2398, file: !83, line: 2079, baseType: !2449, size: 64, offset: 1216)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2398, file: !83, line: 2081, baseType: !2456, size: 64, offset: 1280)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!1112, !1161, !103, !811, !116, !122}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2398, file: !83, line: 2082, baseType: !2460, size: 64, offset: 1344)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!1112, !1161, !103, !98, !116, !122}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2398, file: !83, line: 2083, baseType: !2464, size: 64, offset: 1408)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2467, !959}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !88, line: 296, size: 1664, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2495, !2496, !2497}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2469, file: !88, line: 297, baseType: !214, size: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2469, file: !88, line: 298, baseType: !178, size: 128, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2469, file: !88, line: 299, baseType: !178, size: 128, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2469, file: !88, line: 300, baseType: !178, size: 128, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2469, file: !88, line: 301, baseType: !640, size: 256, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2469, file: !88, line: 302, baseType: !140, size: 32, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2469, file: !88, line: 303, baseType: !130, size: 32, offset: 800)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2469, file: !88, line: 304, baseType: !1161, size: 64, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2469, file: !88, line: 305, baseType: !2480, size: 64, offset: 896)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !88, line: 68, size: 64, elements: !2481)
!2481 = !{!2482, !2494}
!2482 = !DIDerivedType(tag: DW_TAG_member, scope: !2480, file: !88, line: 69, baseType: !2483, size: 32)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2480, file: !88, line: 69, size: 32, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2483, file: !88, line: 70, baseType: !682, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2483, file: !88, line: 71, baseType: !700, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2483, file: !88, line: 72, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2489, line: 24, baseType: !2490)
!2489 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2489, line: 22, size: 32, elements: !2491)
!2491 = !{!2492}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2490, file: !2489, line: 23, baseType: !2493, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2489, line: 20, baseType: !688)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2480, file: !88, line: 74, baseType: !87, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2469, file: !88, line: 306, baseType: !122, size: 64, offset: 960)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2469, file: !88, line: 307, baseType: !120, size: 64, offset: 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2469, file: !88, line: 308, baseType: !2498, size: 576, offset: 1088)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !88, line: 205, size: 576, elements: !2499)
!2499 = !{!2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2498, file: !88, line: 206, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !88, line: 66, baseType: !124)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2498, file: !88, line: 207, baseType: !2501, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2498, file: !88, line: 208, baseType: !2501, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2498, file: !88, line: 209, baseType: !2501, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2498, file: !88, line: 210, baseType: !2501, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2498, file: !88, line: 211, baseType: !2501, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2498, file: !88, line: 212, baseType: !2501, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2498, file: !88, line: 213, baseType: !757, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2498, file: !88, line: 214, baseType: !757, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2398, file: !83, line: 2085, baseType: !2511, size: 64, offset: 1472)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!1073, !1161, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2516, line: 15, size: 256, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2517 = !{!2518, !2519, !2520, !2521, !2522}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2515, file: !2516, line: 16, baseType: !272, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2515, file: !2516, line: 19, baseType: !103, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2515, file: !2516, line: 26, baseType: !120, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2515, file: !2516, line: 33, baseType: !120, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2515, file: !2516, line: 36, baseType: !2523, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2516, line: 36, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2398, file: !83, line: 2087, baseType: !2511, size: 64, offset: 1536)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2398, file: !83, line: 2089, baseType: !1190, size: 64, offset: 1600)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1162, file: !83, line: 1198, baseType: !2528, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2530)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !88, line: 324, size: 704, elements: !2531)
!2531 = !{!2532, !2536, !2540, !2544, !2545, !2546, !2547, !2548, !2553, !2558, !2562}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2530, file: !88, line: 325, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!103, !2468}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2530, file: !88, line: 326, baseType: !2537, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2468, !1161, !103}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2530, file: !88, line: 327, baseType: !2541, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2468}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2530, file: !88, line: 328, baseType: !2533, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2530, file: !88, line: 329, baseType: !2533, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2530, file: !88, line: 330, baseType: !2533, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2530, file: !88, line: 331, baseType: !2424, size: 64, offset: 384)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2530, file: !88, line: 334, baseType: !2549, size: 64, offset: 448)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!2552, !959}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2530, file: !88, line: 335, baseType: !2554, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!103, !959, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2530, file: !88, line: 337, baseType: !2559, size: 64, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!103, !959, !2552}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2530, file: !88, line: 339, baseType: !2563, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!103, !1161, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1162, file: !83, line: 1199, baseType: !2568, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !88, line: 430, size: 704, elements: !2571)
!2571 = !{!2572, !2576, !2577, !2581, !2582, !2583, !2598, !2621, !2625, !2626, !2649}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2570, file: !88, line: 431, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!103, !1161, !103, !103, !1081}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2570, file: !88, line: 432, baseType: !2424, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2570, file: !88, line: 433, baseType: !2578, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!103, !1161, !13}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2570, file: !88, line: 434, baseType: !2578, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2570, file: !88, line: 435, baseType: !2424, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2570, file: !88, line: 436, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!103, !1161, !103, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !88, line: 417, size: 256, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2588, file: !88, line: 418, baseType: !103, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2588, file: !88, line: 419, baseType: !13, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2588, file: !88, line: 420, baseType: !13, size: 32, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2588, file: !88, line: 422, baseType: !13, size: 32, offset: 96)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2588, file: !88, line: 423, baseType: !13, size: 32, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2588, file: !88, line: 424, baseType: !13, size: 32, offset: 160)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2588, file: !88, line: 425, baseType: !13, size: 32, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2588, file: !88, line: 426, baseType: !13, size: 32, offset: 224)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2570, file: !88, line: 437, baseType: !2599, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!103, !1161, !2480, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !88, line: 345, size: 960, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2603, file: !88, line: 346, baseType: !103, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2603, file: !88, line: 347, baseType: !343, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2603, file: !88, line: 348, baseType: !343, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2603, file: !88, line: 349, baseType: !343, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2603, file: !88, line: 350, baseType: !343, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2603, file: !88, line: 351, baseType: !343, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2603, file: !88, line: 352, baseType: !343, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2603, file: !88, line: 353, baseType: !354, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2603, file: !88, line: 355, baseType: !354, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2603, file: !88, line: 356, baseType: !103, size: 32, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2603, file: !88, line: 357, baseType: !103, size: 32, offset: 608)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2603, file: !88, line: 358, baseType: !343, size: 64, offset: 640)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2603, file: !88, line: 359, baseType: !343, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2603, file: !88, line: 360, baseType: !343, size: 64, offset: 768)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2603, file: !88, line: 361, baseType: !354, size: 64, offset: 832)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2603, file: !88, line: 362, baseType: !103, size: 32, offset: 896)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2570, file: !88, line: 438, baseType: !2622, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!103, !1161, !2566, !2602}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2570, file: !88, line: 440, baseType: !2599, size: 64, offset: 512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2570, file: !88, line: 441, baseType: !2627, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!103, !1161, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !88, line: 411, size: 1408, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2631, file: !88, line: 412, baseType: !13, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2631, file: !88, line: 413, baseType: !2635, size: 1344, offset: 64)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 1344, elements: !676)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !88, line: 397, size: 448, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2648}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2636, file: !88, line: 398, baseType: !13, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2636, file: !88, line: 399, baseType: !13, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2636, file: !88, line: 401, baseType: !13, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2636, file: !88, line: 402, baseType: !13, size: 32, offset: 96)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2636, file: !88, line: 403, baseType: !13, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2636, file: !88, line: 404, baseType: !13, size: 32, offset: 160)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2636, file: !88, line: 405, baseType: !13, size: 32, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2636, file: !88, line: 406, baseType: !345, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2636, file: !88, line: 407, baseType: !2647, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !106, line: 132, baseType: !343)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2636, file: !88, line: 408, baseType: !2647, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2570, file: !88, line: 442, baseType: !2578, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1162, file: !83, line: 1200, baseType: !2651, size: 64, offset: 576)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !83, line: 54, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1162, file: !83, line: 1201, baseType: !120, size: 64, offset: 640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1162, file: !83, line: 1202, baseType: !120, size: 64, offset: 704)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1162, file: !83, line: 1203, baseType: !120, size: 64, offset: 768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1162, file: !83, line: 1204, baseType: !924, size: 64, offset: 832)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1162, file: !83, line: 1205, baseType: !741, size: 320, offset: 896)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1162, file: !83, line: 1206, baseType: !103, size: 32, offset: 1216)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1162, file: !83, line: 1207, baseType: !130, size: 32, offset: 1248)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1162, file: !83, line: 1209, baseType: !101, size: 64, offset: 1280)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1162, file: !83, line: 1211, baseType: !2663, size: 64, offset: 1344)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !83, line: 1211, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1162, file: !83, line: 1223, baseType: !2668, size: 64, offset: 1408)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !936, line: 34, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2668, file: !936, line: 35, baseType: !939, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1162, file: !83, line: 1224, baseType: !178, size: 128, offset: 1472)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1162, file: !83, line: 1225, baseType: !2673, size: 64, offset: 1600)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !83, line: 1225, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1162, file: !83, line: 1226, baseType: !2676, size: 64, offset: 1664)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !83, line: 1226, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1162, file: !83, line: 1227, baseType: !2679, size: 64, offset: 1728)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !83, line: 50, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1162, file: !83, line: 1228, baseType: !2682, size: 64, offset: 1792)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !83, line: 1228, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1162, file: !83, line: 1229, baseType: !214, size: 128, offset: 1856)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1162, file: !83, line: 1230, baseType: !13, size: 32, offset: 1984)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1162, file: !83, line: 1231, baseType: !2687, size: 2496, offset: 2048)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !88, line: 521, size: 2496, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2693, !2725}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2687, file: !88, line: 522, baseType: !13, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2687, file: !88, line: 523, baseType: !741, size: 320, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2687, file: !88, line: 524, baseType: !2692, size: 192, offset: 384)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 192, elements: !676)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2687, file: !88, line: 525, baseType: !2694, size: 1728, offset: 576)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2695, size: 1728, elements: !676)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !88, line: 222, size: 576, elements: !2696)
!2696 = !{!2697, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2695, file: !88, line: 223, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !88, line: 445, size: 256, elements: !2700)
!2700 = !{!2701, !2702, !2715, !2716}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2699, file: !88, line: 446, baseType: !103, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2699, file: !88, line: 447, baseType: !2703, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !88, line: 312, size: 512, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2705, file: !88, line: 313, baseType: !2424, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2705, file: !88, line: 314, baseType: !2424, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2705, file: !88, line: 315, baseType: !2424, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2705, file: !88, line: 316, baseType: !2424, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2705, file: !88, line: 317, baseType: !2533, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2705, file: !88, line: 318, baseType: !2533, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2705, file: !88, line: 319, baseType: !2533, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2705, file: !88, line: 320, baseType: !2563, size: 64, offset: 448)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2699, file: !88, line: 448, baseType: !1194, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2699, file: !88, line: 449, baseType: !2698, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2695, file: !88, line: 224, baseType: !103, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2695, file: !88, line: 226, baseType: !178, size: 128, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2695, file: !88, line: 227, baseType: !120, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2695, file: !88, line: 228, baseType: !13, size: 32, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2695, file: !88, line: 229, baseType: !13, size: 32, offset: 352)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2695, file: !88, line: 230, baseType: !2501, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2695, file: !88, line: 231, baseType: !2501, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2695, file: !88, line: 232, baseType: !101, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2687, file: !88, line: 526, baseType: !2726, size: 192, offset: 2304)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2703, size: 192, elements: !676)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1162, file: !83, line: 1233, baseType: !2728, size: 2368, offset: 4544)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !83, line: 1184, size: 2368, elements: !2729)
!2729 = !{!2730, !2731, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2728, file: !83, line: 1185, baseType: !107, size: 16)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2728, file: !83, line: 1186, baseType: !107, size: 16, offset: 16)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2728, file: !83, line: 1187, baseType: !2733, size: 2304, offset: 64)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2734, size: 2304, elements: !676)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2735, line: 12, size: 768, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2736 = !{!2737, !2745, !2746, !2751, !2752}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2734, file: !2735, line: 13, baseType: !2738, size: 384)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2739, line: 17, size: 384, elements: !2740)
!2739 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2738, file: !2739, line: 18, baseType: !103, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2738, file: !2739, line: 19, baseType: !103, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2738, file: !2739, line: 20, baseType: !135, size: 192, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2738, file: !2739, line: 22, baseType: !244, size: 128, align: 64, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2734, file: !2735, line: 14, baseType: !2114, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2734, file: !2735, line: 15, baseType: !2747, size: 64, offset: 448)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2748, line: 16, size: 64, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2747, file: !2748, line: 17, baseType: !279, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2734, file: !2735, line: 16, baseType: !135, size: 192, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2734, file: !2735, line: 17, baseType: !130, size: 32, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1162, file: !83, line: 1240, baseType: !101, size: 64, offset: 6912)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1162, file: !83, line: 1243, baseType: !290, size: 32, offset: 6976)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1162, file: !83, line: 1245, baseType: !757, size: 64, offset: 7040)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1162, file: !83, line: 1246, baseType: !757, size: 64, offset: 7104)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1162, file: !83, line: 1248, baseType: !291, size: 32, offset: 7168)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1162, file: !83, line: 1249, baseType: !2759, size: 64, offset: 7232)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !83, line: 634, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1162, file: !83, line: 1252, baseType: !2762, size: 256, offset: 7296)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2763)
!2763 = !{!2764}
!2764 = !DISubrange(count: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1162, file: !83, line: 1253, baseType: !2766, size: 128, offset: 7552)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2767, line: 21, baseType: !2768)
!2767 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2767, line: 19, size: 128, elements: !2769)
!2769 = !{!2770}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2768, file: !2767, line: 20, baseType: !2771, size: 128)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !2772)
!2772 = !{!2773}
!2773 = !DISubrange(count: 16)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1162, file: !83, line: 1255, baseType: !13, size: 32, offset: 7680)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1162, file: !83, line: 1261, baseType: !640, size: 256, offset: 7744)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1162, file: !83, line: 1267, baseType: !98, size: 64, offset: 8000)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1162, file: !83, line: 1269, baseType: !2778, size: 64, offset: 8064)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !926, line: 128, size: 1024, align: 512, elements: !2781)
!2781 = !{!2782, !2786, !2787, !2794, !2800, !2804, !2808, !2812, !2813, !2817, !2821, !2826, !2830}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2780, file: !926, line: 129, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!103, !924, !13}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2780, file: !926, line: 130, baseType: !2783, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2780, file: !926, line: 131, baseType: !2788, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!103, !2791, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2780, file: !926, line: 132, baseType: !2795, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!103, !2791, !13, !98, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2780, file: !926, line: 134, baseType: !2801, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!103, !2791}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2780, file: !926, line: 135, baseType: !2805, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!103, !924}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2780, file: !926, line: 136, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !924}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2780, file: !926, line: 137, baseType: !2809, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2780, file: !926, line: 138, baseType: !2814, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !924, !959}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2780, file: !926, line: 139, baseType: !2818, size: 64, offset: 576)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!811, !924, !811, !103}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2780, file: !926, line: 140, baseType: !2822, size: 64, offset: 640)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!919, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2780, file: !926, line: 141, baseType: !2827, size: 64, offset: 704)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!103, !1081, !800}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2780, file: !926, line: 142, baseType: !2831, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!924, !924, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1162, file: !83, line: 1271, baseType: !2837, size: 448, offset: 8128)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2516, line: 63, size: 448, elements: !2838)
!2838 = !{!2839, !2844, !2845, !2846, !2847, !2848, !2849}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2837, file: !2516, line: 64, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!120, !2843, !2514}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2837, file: !2516, line: 66, baseType: !2840, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2837, file: !2516, line: 69, baseType: !1073, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2837, file: !2516, line: 70, baseType: !103, size: 32, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2837, file: !2516, line: 71, baseType: !13, size: 32, offset: 224)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2837, file: !2516, line: 74, baseType: !178, size: 128, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2837, file: !2516, line: 85, baseType: !2850, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1162, file: !83, line: 1274, baseType: !633, size: 64, offset: 8576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1162, file: !83, line: 1280, baseType: !633, size: 64, offset: 8640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1162, file: !83, line: 1283, baseType: !103, size: 32, offset: 8704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1162, file: !83, line: 1286, baseType: !1808, size: 32, offset: 8736)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1162, file: !83, line: 1289, baseType: !2337, size: 64, offset: 8768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1162, file: !83, line: 1290, baseType: !236, size: 64, offset: 8832)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1162, file: !83, line: 1297, baseType: !884, size: 64, offset: 8896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1162, file: !83, line: 1304, baseType: !2859, size: 64, offset: 8960)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2860, line: 49, size: 64, elements: !2861)
!2860 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2861 = !{!2862}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2859, file: !2860, line: 50, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2860, line: 41, size: 512, align: 512, elements: !2865)
!2865 = !{!2866, !2867, !2872}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2864, file: !2860, line: 43, baseType: !140, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2864, file: !2860, line: 45, baseType: !2868, size: 192, offset: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2860, line: 29, size: 192, elements: !2869)
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2868, file: !2860, line: 30, baseType: !178, size: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2868, file: !2860, line: 32, baseType: !1073, size: 64, offset: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2864, file: !2860, line: 46, baseType: !1073, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1162, file: !83, line: 1305, baseType: !2859, size: 64, offset: 9024)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1162, file: !83, line: 1306, baseType: !244, size: 128, align: 64, offset: 9088)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1162, file: !83, line: 1307, baseType: !2276, size: 256, offset: 9216)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1162, file: !83, line: 1309, baseType: !640, size: 256, offset: 9472)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1162, file: !83, line: 1314, baseType: !103, size: 32, offset: 9728)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1162, file: !83, line: 1317, baseType: !140, size: 32, align: 512, offset: 10240)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1162, file: !83, line: 1318, baseType: !178, size: 128, offset: 10304)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1162, file: !83, line: 1320, baseType: !140, size: 32, offset: 10432)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1162, file: !83, line: 1321, baseType: !178, size: 128, offset: 10496)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !960, file: !83, line: 656, baseType: !1311, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !960, file: !83, line: 659, baseType: !101, size: 64, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !960, file: !83, line: 663, baseType: !120, size: 64, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !83, line: 671, baseType: !2886, size: 32, offset: 704)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !83, line: 671, size: 32, elements: !2887)
!2887 = !{!2888, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2886, file: !83, line: 672, baseType: !2889, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2886, file: !83, line: 673, baseType: !13, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !960, file: !83, line: 675, baseType: !1033, size: 32, offset: 736)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !960, file: !83, line: 676, baseType: !122, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !960, file: !83, line: 677, baseType: !1069, size: 128, offset: 832)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !960, file: !83, line: 678, baseType: !1069, size: 128, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !960, file: !83, line: 679, baseType: !1069, size: 128, offset: 1088)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !960, file: !83, line: 680, baseType: !140, size: 32, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !960, file: !83, line: 681, baseType: !107, size: 16, offset: 1248)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !960, file: !83, line: 682, baseType: !164, size: 8, offset: 1264)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !960, file: !83, line: 683, baseType: !164, size: 8, offset: 1272)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !960, file: !83, line: 684, baseType: !2647, size: 64, offset: 1280)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !960, file: !83, line: 691, baseType: !120, size: 64, offset: 1344)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !960, file: !83, line: 692, baseType: !741, size: 320, offset: 1408)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !960, file: !83, line: 694, baseType: !120, size: 64, offset: 1728)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !960, file: !83, line: 695, baseType: !120, size: 64, offset: 1792)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !960, file: !83, line: 697, baseType: !214, size: 128, offset: 1856)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !960, file: !83, line: 698, baseType: !178, size: 128, offset: 1984)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !960, file: !83, line: 707, baseType: !178, size: 128, offset: 2112)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !960, file: !83, line: 708, baseType: !178, size: 128, offset: 2240)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !83, line: 709, baseType: !2910, size: 128, offset: 2368)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !83, line: 709, size: 128, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2910, file: !83, line: 710, baseType: !236, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2910, file: !83, line: 711, baseType: !244, size: 128, align: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !960, file: !83, line: 713, baseType: !635, size: 64, offset: 2496)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !960, file: !83, line: 714, baseType: !635, size: 64, offset: 2560)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !960, file: !83, line: 715, baseType: !130, size: 32, offset: 2624)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !960, file: !83, line: 716, baseType: !130, size: 32, offset: 2656)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !960, file: !83, line: 717, baseType: !130, size: 32, offset: 2688)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !960, file: !83, line: 719, baseType: !130, size: 32, offset: 2720)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !83, line: 721, baseType: !2921, size: 64, offset: 2752)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !83, line: 721, size: 64, elements: !2922)
!2922 = !{!2923, !3049}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2921, file: !83, line: 722, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !83, line: 1914, size: 2112, elements: !2927)
!2927 = !{!2928, !2929, !2933, !2937, !2941, !2942, !2943, !2949, !2962, !2966, !2970, !2971, !2975, !2976, !2980, !2985, !2986, !2990, !2994, !3000, !3001, !3005, !3006, !3012, !3016, !3017, !3022, !3026, !3030, !3034, !3038, !3039, !3045}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2926, file: !83, line: 1915, baseType: !1194, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2926, file: !83, line: 1916, baseType: !2930, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!122, !620, !122, !103}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2926, file: !83, line: 1917, baseType: !2934, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!1112, !620, !811, !116, !121}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2926, file: !83, line: 1918, baseType: !2938, size: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!1112, !620, !98, !116, !121}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2926, file: !83, line: 1919, baseType: !1742, size: 64, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2926, file: !83, line: 1920, baseType: !1742, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2926, file: !83, line: 1921, baseType: !2944, size: 64, offset: 384)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!103, !1745, !2947, !13}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !83, line: 53, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2926, file: !83, line: 1923, baseType: !2950, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!103, !620, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !83, line: 1858, size: 128, elements: !2955)
!2955 = !{!2956, !2961}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2954, file: !83, line: 1859, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !83, line: 1855, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!800, !2953, !98, !103, !122, !343, !13}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2954, file: !83, line: 1860, baseType: !122, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2926, file: !83, line: 1924, baseType: !2963, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!1979, !620, !1981}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2926, file: !83, line: 1925, baseType: !2967, size: 64, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!1073, !620, !13, !120}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2926, file: !83, line: 1926, baseType: !2967, size: 64, offset: 640)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2926, file: !83, line: 1927, baseType: !2972, size: 64, offset: 704)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!103, !620, !1451}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2926, file: !83, line: 1928, baseType: !120, size: 64, offset: 768)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2926, file: !83, line: 1929, baseType: !2977, size: 64, offset: 832)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!103, !959, !620}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2926, file: !83, line: 1930, baseType: !2981, size: 64, offset: 896)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!103, !620, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !83, line: 1061, baseType: !101)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2926, file: !83, line: 1931, baseType: !2977, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2926, file: !83, line: 1932, baseType: !2987, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!103, !620, !122, !122, !103}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2926, file: !83, line: 1933, baseType: !2991, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!103, !103, !620, !103}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2926, file: !83, line: 1934, baseType: !2995, size: 64, offset: 1152)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!103, !620, !103, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !83, line: 1063, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2926, file: !83, line: 1935, baseType: !617, size: 64, offset: 1216)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2926, file: !83, line: 1936, baseType: !3002, size: 64, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!103, !103}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2926, file: !83, line: 1937, baseType: !2995, size: 64, offset: 1344)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2926, file: !83, line: 1938, baseType: !3007, size: 64, offset: 1408)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!1112, !3010, !620, !121, !116, !13}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !281, line: 59, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2926, file: !83, line: 1939, baseType: !3013, size: 64, offset: 1472)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!1112, !620, !121, !3010, !116, !13}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2926, file: !83, line: 1940, baseType: !1798, size: 64, offset: 1536)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2926, file: !83, line: 1941, baseType: !3018, size: 64, offset: 1600)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!103, !620, !103, !3021, !1719}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2926, file: !83, line: 1942, baseType: !3023, size: 64, offset: 1664)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!1073, !620, !103, !122, !122}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2926, file: !83, line: 1944, baseType: !3027, size: 64, offset: 1728)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !1912, !620}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2926, file: !83, line: 1948, baseType: !3031, size: 64, offset: 1792)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!1112, !620, !122, !620, !122, !116, !13}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2926, file: !83, line: 1950, baseType: !3035, size: 64, offset: 1856)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!122, !620, !122, !620, !122, !122, !13}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2926, file: !83, line: 1953, baseType: !2987, size: 64, offset: 1920)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2926, file: !83, line: 1954, baseType: !3040, size: 64, offset: 1984)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!103, !3043, !13}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !83, line: 1911, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2926, file: !83, line: 1955, baseType: !3046, size: 64, offset: 2048)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!103, !3043, !2947, !13}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2921, file: !83, line: 723, baseType: !2405, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !960, file: !83, line: 725, baseType: !3051, size: 64, offset: 2816)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !83, line: 725, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !960, file: !83, line: 726, baseType: !1312, size: 1536, align: 64, offset: 2880)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !960, file: !83, line: 727, baseType: !178, size: 128, offset: 4416)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !83, line: 728, baseType: !3056, size: 64, offset: 4544)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !83, line: 728, size: 64, elements: !3057)
!3057 = !{!3058, !3059, !3062, !3063}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3056, file: !83, line: 729, baseType: !3010, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3056, file: !83, line: 730, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !83, line: 730, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3056, file: !83, line: 731, baseType: !811, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3056, file: !83, line: 732, baseType: !13, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !960, file: !83, line: 735, baseType: !291, size: 32, offset: 4608)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !960, file: !83, line: 738, baseType: !291, size: 32, offset: 4640)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !960, file: !83, line: 739, baseType: !2759, size: 64, offset: 4672)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !960, file: !83, line: 750, baseType: !101, size: 64, offset: 4736)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !925, file: !926, line: 91, baseType: !3069, size: 256, offset: 448)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !2763)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !925, file: !926, line: 94, baseType: !3071, size: 64, offset: 704)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3072, line: 25, size: 64, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !3072, line: 26, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !3072, line: 26, size: 64, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3075, file: !3072, line: 28, baseType: !344, size: 64, align: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3072, line: 30, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3072, line: 30, size: 64, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3079, file: !3072, line: 31, baseType: !140, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3079, file: !3072, line: 32, baseType: !103, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !925, file: !926, line: 95, baseType: !2778, size: 64, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !925, file: !926, line: 96, baseType: !1161, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !925, file: !926, line: 97, baseType: !120, size: 64, offset: 896)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !925, file: !926, line: 98, baseType: !101, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !926, line: 100, baseType: !3088, size: 128, offset: 1024)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !926, line: 100, size: 128, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3088, file: !926, line: 101, baseType: !178, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3088, file: !926, line: 102, baseType: !1990, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !925, file: !926, line: 104, baseType: !178, size: 128, offset: 1152)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !925, file: !926, line: 105, baseType: !178, size: 128, offset: 1280)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !925, file: !926, line: 113, baseType: !3095, size: 128, offset: 1408)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !926, line: 109, size: 128, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3095, file: !926, line: 110, baseType: !214, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3095, file: !926, line: 111, baseType: !935, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3095, file: !926, line: 112, baseType: !244, size: 128, align: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !920, file: !921, line: 72, baseType: !1161, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !920, file: !921, line: 73, baseType: !103, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !920, file: !921, line: 74, baseType: !998, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !915, file: !916, line: 10, baseType: !924, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !621, file: !83, line: 1015, baseType: !959, size: 64, offset: 1344)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !621, file: !83, line: 1016, baseType: !2924, size: 64, offset: 1408)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !621, file: !83, line: 1018, baseType: !343, size: 64, offset: 1472)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !621, file: !83, line: 1020, baseType: !101, size: 64, offset: 1536)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !621, file: !83, line: 1023, baseType: !101, size: 64, offset: 1600)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !621, file: !83, line: 1027, baseType: !3110, size: 64, offset: 1664)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !621, file: !83, line: 1029, baseType: !1311, size: 64, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !621, file: !83, line: 1030, baseType: !1808, size: 32, offset: 1792)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !621, file: !83, line: 1031, baseType: !1808, size: 32, offset: 1824)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !596, file: !54, line: 756, baseType: !120, size: 64, offset: 704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !596, file: !54, line: 757, baseType: !120, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !596, file: !54, line: 760, baseType: !120, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !596, file: !54, line: 761, baseType: !120, size: 64, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !596, file: !54, line: 763, baseType: !120, size: 64, offset: 960)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !596, file: !54, line: 764, baseType: !3120, size: 64, offset: 1024)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1466, line: 299, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 299, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3122, file: !1466, line: 299, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1471, line: 18, baseType: !120)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !596, file: !54, line: 773, baseType: !130, size: 32, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !596, file: !54, line: 785, baseType: !130, size: 32, offset: 1120)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !596, file: !54, line: 795, baseType: !3129, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !54, line: 726, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3130, file: !54, line: 727, baseType: !343, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3130, file: !54, line: 728, baseType: !103, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !596, file: !54, line: 801, baseType: !120, size: 64, offset: 1216)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !596, file: !54, line: 804, baseType: !633, size: 64, offset: 1280)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !596, file: !54, line: 806, baseType: !103, size: 32, offset: 1344)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !596, file: !54, line: 808, baseType: !140, size: 32, offset: 1376)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !596, file: !54, line: 823, baseType: !741, size: 320, offset: 1408)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !596, file: !54, line: 825, baseType: !178, size: 128, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !596, file: !54, line: 845, baseType: !103, size: 32, offset: 1856)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !596, file: !54, line: 849, baseType: !120, size: 64, offset: 1920)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !596, file: !54, line: 850, baseType: !120, size: 64, offset: 1984)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !596, file: !54, line: 852, baseType: !120, size: 64, offset: 2048)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !596, file: !54, line: 853, baseType: !120, size: 64, offset: 2112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !596, file: !54, line: 854, baseType: !635, size: 64, offset: 2176)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !596, file: !54, line: 855, baseType: !120, size: 64, offset: 2240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !596, file: !54, line: 856, baseType: !120, size: 64, offset: 2304)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !596, file: !54, line: 857, baseType: !120, size: 64, offset: 2368)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !596, file: !54, line: 858, baseType: !120, size: 64, offset: 2432)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !596, file: !54, line: 865, baseType: !466, size: 32, offset: 2496)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !596, file: !54, line: 867, baseType: !140, size: 32, offset: 2528)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !596, file: !54, line: 869, baseType: !120, size: 64, offset: 2560)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !596, file: !54, line: 869, baseType: !120, size: 64, offset: 2624)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !596, file: !54, line: 869, baseType: !120, size: 64, offset: 2688)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !596, file: !54, line: 869, baseType: !120, size: 64, offset: 2752)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !596, file: !54, line: 870, baseType: !120, size: 64, offset: 2816)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !596, file: !54, line: 870, baseType: !120, size: 64, offset: 2880)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !596, file: !54, line: 870, baseType: !120, size: 64, offset: 2944)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !596, file: !54, line: 871, baseType: !120, size: 64, offset: 3008)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !596, file: !54, line: 871, baseType: !120, size: 64, offset: 3072)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !596, file: !54, line: 871, baseType: !120, size: 64, offset: 3136)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !596, file: !54, line: 871, baseType: !120, size: 64, offset: 3200)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !596, file: !54, line: 873, baseType: !3164, size: 3328, offset: 3264)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 3328, elements: !3165)
!3165 = !{!3166}
!3166 = !DISubrange(count: 52)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !596, file: !54, line: 875, baseType: !3168, size: 1280, offset: 6592)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 1280, elements: !239)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !596, file: !54, line: 877, baseType: !3170, size: 64, offset: 7872)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !3172, line: 84, size: 448, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!3173 = !{!3174, !3175, !3176, !3219, !3223, !3230}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !3171, file: !3172, line: 85, baseType: !178, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3171, file: !3172, line: 86, baseType: !1194, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !3171, file: !3172, line: 87, baseType: !3177, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!103, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !3172, line: 18, size: 3328, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3215}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3181, file: !3172, line: 20, baseType: !1451, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !3181, file: !3172, line: 21, baseType: !120, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3181, file: !3172, line: 26, baseType: !592, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3181, file: !3172, line: 27, baseType: !120, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !3181, file: !3172, line: 28, baseType: !120, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !3181, file: !3172, line: 31, baseType: !13, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !3181, file: !3172, line: 34, baseType: !13, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !3181, file: !3172, line: 40, baseType: !13, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !3181, file: !3172, line: 45, baseType: !13, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !3181, file: !3172, line: 47, baseType: !13, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !3181, file: !3172, line: 48, baseType: !620, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !3181, file: !3172, line: 49, baseType: !620, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3181, file: !3172, line: 50, baseType: !620, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3181, file: !3172, line: 51, baseType: !3197, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !3181, file: !3172, line: 52, baseType: !103, size: 32, offset: 640)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !3181, file: !3172, line: 53, baseType: !13, size: 32, offset: 672)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !3181, file: !3172, line: 54, baseType: !103, size: 32, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !3181, file: !3172, line: 54, baseType: !103, size: 32, offset: 736)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !3181, file: !3172, line: 55, baseType: !98, size: 64, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !3181, file: !3172, line: 56, baseType: !98, size: 64, offset: 832)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !3181, file: !3172, line: 59, baseType: !98, size: 64, offset: 896)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !3181, file: !3172, line: 60, baseType: !13, size: 32, offset: 960)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !3181, file: !3172, line: 61, baseType: !103, size: 32, offset: 992)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !3181, file: !3172, line: 62, baseType: !120, size: 64, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !3181, file: !3172, line: 62, baseType: !120, size: 64, offset: 1088)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !3181, file: !3172, line: 64, baseType: !3210, size: 128, offset: 1152)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3211, line: 43, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3210, file: !3211, line: 44, baseType: !119, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3210, file: !3211, line: 45, baseType: !119, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3181, file: !3172, line: 66, baseType: !3216, size: 2048, offset: 1280)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !3217)
!3217 = !{!3218}
!3218 = !DISubrange(count: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !3171, file: !3172, line: 88, baseType: !3220, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!103, !620}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !3171, file: !3172, line: 90, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!103, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !3229, line: 66, flags: DIFlagFwdDecl)
!3229 = !DIFile(filename: "./include/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b1d3b970b1358b3a026c26044689afa")
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !3171, file: !3172, line: 91, baseType: !120, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !596, file: !54, line: 880, baseType: !3232, size: 1088, offset: 7936)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3233, line: 72, baseType: !3234)
!3233 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3233, line: 23, size: 1088, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3243, !3244, !3245, !3246, !3271, !3272, !3273}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3234, file: !3233, line: 28, baseType: !343, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3234, file: !3233, line: 38, baseType: !635, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3234, file: !3233, line: 40, baseType: !120, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3234, file: !3233, line: 43, baseType: !741, size: 320, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3234, file: !3233, line: 44, baseType: !3241, size: 64, offset: 512)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3233, line: 44, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3234, file: !3233, line: 48, baseType: !120, size: 64, offset: 576)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3234, file: !3233, line: 59, baseType: !640, size: 256, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3234, file: !3233, line: 60, baseType: !101, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3234, file: !3233, line: 61, baseType: !3247, size: 64, offset: 960)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3250, line: 13, size: 1216, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3249, file: !3250, line: 14, baseType: !101, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3249, file: !3250, line: 15, baseType: !120, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3249, file: !3250, line: 17, baseType: !120, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3249, file: !3250, line: 17, baseType: !120, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3249, file: !3250, line: 18, baseType: !120, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3249, file: !3250, line: 18, baseType: !120, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3249, file: !3250, line: 19, baseType: !1847, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3249, file: !3250, line: 21, baseType: !1073, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3249, file: !3250, line: 23, baseType: !1073, size: 64, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3249, file: !3250, line: 24, baseType: !1073, size: 64, offset: 576)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3249, file: !3250, line: 25, baseType: !1073, size: 64, offset: 640)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3249, file: !3250, line: 26, baseType: !1073, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3249, file: !3250, line: 27, baseType: !1073, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3249, file: !3250, line: 28, baseType: !1073, size: 64, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3249, file: !3250, line: 29, baseType: !1073, size: 64, offset: 896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3249, file: !3250, line: 30, baseType: !1073, size: 64, offset: 960)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3249, file: !3250, line: 31, baseType: !1073, size: 64, offset: 1024)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3249, file: !3250, line: 32, baseType: !1073, size: 64, offset: 1088)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3249, file: !3250, line: 33, baseType: !1073, size: 64, offset: 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3234, file: !3233, line: 63, baseType: !130, size: 32, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3234, file: !3233, line: 69, baseType: !174, size: 16, offset: 1056)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3234, file: !3233, line: 70, baseType: !2169, size: 16, offset: 1072)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !54, line: 882, baseType: !120, size: 64, offset: 9024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !596, file: !54, line: 885, baseType: !140, size: 32, offset: 9088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !596, file: !54, line: 886, baseType: !3277, size: 64, offset: 9152)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !54, line: 732, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !596, file: !54, line: 901, baseType: !884, size: 64, offset: 9216)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !596, file: !54, line: 904, baseType: !620, size: 64, offset: 9280)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !596, file: !54, line: 906, baseType: !3282, size: 64, offset: 9344)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !54, line: 906, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !596, file: !54, line: 930, baseType: !130, size: 32, offset: 9408)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !596, file: !54, line: 933, baseType: !130, size: 32, offset: 9440)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !596, file: !54, line: 935, baseType: !3287, size: 64, offset: 9472)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !39, line: 103, size: 64, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3287, file: !39, line: 104, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !39, line: 101, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !596, file: !54, line: 940, baseType: !633, size: 64, offset: 9536)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !596, file: !54, line: 942, baseType: !2276, size: 256, offset: 9600)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !593, file: !54, line: 986, baseType: !3295, offset: 10240)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, elements: !898)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !280, file: !281, line: 882, baseType: !592, size: 64, offset: 9792)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !280, file: !281, line: 884, baseType: !103, size: 32, offset: 9856)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !280, file: !281, line: 885, baseType: !103, size: 32, offset: 9888)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !280, file: !281, line: 886, baseType: !103, size: 32, offset: 9920)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !280, file: !281, line: 888, baseType: !103, size: 32, offset: 9952)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !280, file: !281, line: 890, baseType: !120, size: 64, offset: 9984)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !280, file: !281, line: 893, baseType: !13, size: 32, offset: 10048)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !280, file: !281, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !280, file: !281, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !280, file: !281, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !280, file: !281, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !280, file: !281, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !280, file: !281, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !280, file: !281, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !280, file: !281, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !280, file: !281, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !280, file: !281, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !280, file: !281, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !280, file: !281, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !280, file: !281, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !280, file: !281, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !280, file: !281, line: 969, baseType: !120, size: 64, offset: 10176)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !280, file: !281, line: 971, baseType: !3319, size: 448, offset: 10240)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !33, line: 25, size: 448, elements: !3320)
!3320 = !{!3321, !3322, !3327}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3319, file: !33, line: 26, baseType: !120, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3319, file: !33, line: 27, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!1073, !3326}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !33, line: 28, baseType: !3328, size: 320, offset: 128)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3319, file: !33, line: 28, size: 320, elements: !3329)
!3329 = !{!3330, !3340, !3365}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3328, file: !33, line: 37, baseType: !3331, size: 320)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !33, line: 30, size: 320, elements: !3332)
!3332 = !{!3333, !3335, !3336, !3337, !3338, !3339}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3331, file: !33, line: 31, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3331, file: !33, line: 32, baseType: !290, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !33, line: 33, baseType: !290, size: 32, offset: 96)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3331, file: !33, line: 34, baseType: !290, size: 32, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3331, file: !33, line: 35, baseType: !343, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3331, file: !33, line: 36, baseType: !3334, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3328, file: !33, line: 47, baseType: !3341, size: 192)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !33, line: 39, size: 192, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3364}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3341, file: !33, line: 40, baseType: !458, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3341, file: !33, line: 41, baseType: !32, size: 32, offset: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3341, file: !33, line: 42, baseType: !3346, size: 64, offset: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3341, file: !33, line: 42, size: 64, elements: !3347)
!3347 = !{!3348, !3356}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3346, file: !33, line: 43, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3351, line: 7, size: 128, elements: !3352)
!3351 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3352 = !{!3353, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3350, file: !3351, line: 8, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !118, line: 93, baseType: !124)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3350, file: !3351, line: 9, baseType: !124, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3346, file: !33, line: 44, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3359, line: 7, size: 64, elements: !3360)
!3359 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3360 = !{!3361, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3358, file: !3359, line: 8, baseType: !3362, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3359, line: 5, baseType: !733)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3358, file: !3359, line: 9, baseType: !733, size: 32, offset: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3341, file: !33, line: 46, baseType: !343, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3328, file: !33, line: 55, baseType: !3366, size: 256)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !33, line: 49, size: 256, elements: !3367)
!3367 = !{!3368, !3376, !3377, !3378, !3379}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3366, file: !33, line: 50, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3371, line: 36, size: 64, elements: !3372)
!3371 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3372 = !{!3373, !3374, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3370, file: !3371, line: 37, baseType: !103, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3370, file: !3371, line: 38, baseType: !769, size: 16, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3370, file: !3371, line: 39, baseType: !769, size: 16, offset: 48)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3366, file: !33, line: 51, baseType: !103, size: 32, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3366, file: !33, line: 52, baseType: !103, size: 32, offset: 96)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3366, file: !33, line: 53, baseType: !120, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3366, file: !33, line: 54, baseType: !120, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !280, file: !281, line: 973, baseType: !3381, size: 32, offset: 10688)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !106, line: 27, baseType: !3382)
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !118, line: 28, baseType: !103)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !280, file: !281, line: 974, baseType: !3381, size: 32, offset: 10720)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !280, file: !281, line: 978, baseType: !120, size: 64, offset: 10752)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !280, file: !281, line: 987, baseType: !279, size: 64, offset: 10816)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !280, file: !281, line: 990, baseType: !279, size: 64, offset: 10880)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !280, file: !281, line: 995, baseType: !178, size: 128, offset: 10944)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !280, file: !281, line: 996, baseType: !178, size: 128, offset: 11072)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !280, file: !281, line: 997, baseType: !279, size: 64, offset: 11200)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !280, file: !281, line: 1005, baseType: !178, size: 128, offset: 11264)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !280, file: !281, line: 1006, baseType: !178, size: 128, offset: 11392)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !280, file: !281, line: 1009, baseType: !223, size: 64, offset: 11520)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !280, file: !281, line: 1010, baseType: !3394, size: 512, offset: 11584)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 512, elements: !239)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !280, file: !281, line: 1011, baseType: !178, size: 128, offset: 12096)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !280, file: !281, line: 1012, baseType: !178, size: 128, offset: 12224)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !280, file: !281, line: 1014, baseType: !2025, size: 64, offset: 12352)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !280, file: !281, line: 1017, baseType: !2162, size: 64, offset: 12416)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !280, file: !281, line: 1020, baseType: !2162, size: 64, offset: 12480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !280, file: !281, line: 1023, baseType: !101, size: 64, offset: 12544)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !280, file: !281, line: 1025, baseType: !343, size: 64, offset: 12608)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !280, file: !281, line: 1026, baseType: !343, size: 64, offset: 12672)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !280, file: !281, line: 1031, baseType: !343, size: 64, offset: 12736)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !280, file: !281, line: 1032, baseType: !3405, size: 192, offset: 12800)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !281, line: 324, size: 192, elements: !3406)
!3406 = !{!3407, !3408, !3409}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3405, file: !281, line: 326, baseType: !343, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3405, file: !281, line: 327, baseType: !343, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3405, file: !281, line: 328, baseType: !435, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !280, file: !281, line: 1041, baseType: !120, size: 64, offset: 12992)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !280, file: !281, line: 1042, baseType: !120, size: 64, offset: 13056)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !280, file: !281, line: 1045, baseType: !343, size: 64, offset: 13120)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !280, file: !281, line: 1048, baseType: !343, size: 64, offset: 13184)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !280, file: !281, line: 1051, baseType: !120, size: 64, offset: 13248)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !280, file: !281, line: 1052, baseType: !120, size: 64, offset: 13312)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !280, file: !281, line: 1055, baseType: !3417, size: 640, offset: 13376)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3418, line: 132, size: 640, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3419 = !{!3420, !3426, !3427}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3417, file: !3418, line: 133, baseType: !3421, size: 576)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3422, size: 576, elements: !676)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3418, line: 117, size: 192, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3422, file: !3418, line: 118, baseType: !343, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3422, file: !3418, line: 119, baseType: !472, size: 128, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3417, file: !3418, line: 134, baseType: !13, size: 32, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3417, file: !3418, line: 135, baseType: !13, size: 32, offset: 608)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !280, file: !281, line: 1058, baseType: !3429, size: 448, offset: 14016)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3418, line: 144, size: 448, elements: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3429, file: !3418, line: 145, baseType: !244, size: 128, align: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3429, file: !3418, line: 146, baseType: !640, size: 256, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3429, file: !3418, line: 147, baseType: !13, size: 32, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !280, file: !281, line: 1064, baseType: !692, size: 64, offset: 14464)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !280, file: !281, line: 1067, baseType: !692, size: 64, offset: 14528)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !280, file: !281, line: 1070, baseType: !692, size: 64, offset: 14592)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !280, file: !281, line: 1074, baseType: !725, size: 64, offset: 14656)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !280, file: !281, line: 1084, baseType: !3439, size: 128, offset: 14720)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2772)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !280, file: !281, line: 1086, baseType: !3441, size: 64, offset: 14848)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !281, line: 55, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !280, file: !281, line: 1089, baseType: !3444, size: 64, offset: 14912)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3445, line: 12, size: 64, elements: !3446)
!3445 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3444, file: !3445, line: 13, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3445, line: 8, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !280, file: !281, line: 1090, baseType: !3451, size: 128, offset: 14976)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3452, line: 13, size: 128, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3453 = !{!3454}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3451, file: !3452, line: 14, baseType: !178, size: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !280, file: !281, line: 1097, baseType: !3456, size: 64, offset: 15104)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !281, line: 50, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !280, file: !281, line: 1100, baseType: !3459, size: 64, offset: 15168)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !281, line: 1100, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !280, file: !281, line: 1103, baseType: !3462, size: 64, offset: 15232)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !281, line: 53, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !280, file: !281, line: 1107, baseType: !3465, size: 64, offset: 15296)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3467, line: 31, size: 576, elements: !3468)
!3467 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3468 = !{!3469, !3470, !3473, !3476, !3479, !3480, !3483, !3486, !3487}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3466, file: !3467, line: 32, baseType: !227, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3466, file: !3467, line: 33, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3467, line: 9, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3466, file: !3467, line: 34, baseType: !3474, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3467, line: 10, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3466, file: !3467, line: 35, baseType: !3477, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3467, line: 8, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3466, file: !3467, line: 36, baseType: !258, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3466, file: !3467, line: 37, baseType: !3481, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !727, line: 34, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3466, file: !3467, line: 38, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3467, line: 38, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3466, file: !3467, line: 39, baseType: !3484, size: 64, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3466, file: !3467, line: 40, baseType: !3488, size: 64, offset: 512)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3467, line: 12, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !280, file: !281, line: 1110, baseType: !3491, size: 64, offset: 15360)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3493, line: 93, size: 8768, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3542, !3551, !3552, !3554, !3555, !3556, !3559, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3597, !3598, !3600, !3610, !3613, !3614, !3617, !3618, !3619, !3620, !3621, !3622}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3492, file: !3493, line: 94, baseType: !227, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3492, file: !3493, line: 95, baseType: !130, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3492, file: !3493, line: 96, baseType: !103, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3492, file: !3493, line: 97, baseType: !103, size: 32, offset: 96)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3492, file: !3493, line: 98, baseType: !178, size: 128, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3492, file: !3493, line: 100, baseType: !135, size: 192, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3492, file: !3493, line: 103, baseType: !279, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3492, file: !3493, line: 106, baseType: !3503, size: 192, offset: 512)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !889, line: 32, size: 192, elements: !3504)
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3503, file: !889, line: 33, baseType: !178, size: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3503, file: !889, line: 34, baseType: !3507, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3508, line: 25, baseType: !3509)
!3508 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3508, line: 23, size: 64, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3509, file: !3508, line: 24, baseType: !543, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3492, file: !3493, line: 109, baseType: !236, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3492, file: !3493, line: 112, baseType: !103, size: 32, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3492, file: !3493, line: 114, baseType: !103, size: 32, offset: 800)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3492, file: !3493, line: 115, baseType: !279, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3492, file: !3493, line: 118, baseType: !103, size: 32, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !3493, line: 119, baseType: !13, size: 32, offset: 928)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3492, file: !3493, line: 121, baseType: !3519, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3493, line: 80, size: 448, elements: !3521)
!3521 = !{!3522, !3523, !3529}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3520, file: !3493, line: 81, baseType: !130, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3520, file: !3493, line: 82, baseType: !3524, size: 128, offset: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3493, line: 75, size: 128, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3524, file: !3493, line: 76, baseType: !279, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3524, file: !3493, line: 77, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3520, file: !3493, line: 83, baseType: !1416, size: 256, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3492, file: !3493, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3492, file: !3493, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3492, file: !3493, line: 138, baseType: !13, size: 32, offset: 1056)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3492, file: !3493, line: 139, baseType: !178, size: 128, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3492, file: !3493, line: 142, baseType: !410, size: 512, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3492, file: !3493, line: 143, baseType: !418, size: 64, offset: 1728)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3492, file: !3493, line: 150, baseType: !3537, size: 256, offset: 1792)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3538, size: 256, elements: !2152)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3493, line: 38, size: 128, elements: !3539)
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3538, file: !3493, line: 39, baseType: !343, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3538, file: !3493, line: 40, baseType: !343, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3492, file: !3493, line: 156, baseType: !3543, size: 192, offset: 2048)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3493, line: 66, size: 192, elements: !3544)
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3543, file: !3493, line: 67, baseType: !3546, size: 192)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3493, line: 47, size: 192, elements: !3547)
!3547 = !{!3548, !3549, !3550}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3546, file: !3493, line: 48, baseType: !635, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3546, file: !3493, line: 49, baseType: !635, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3546, file: !3493, line: 50, baseType: !635, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3492, file: !3493, line: 160, baseType: !3417, size: 640, offset: 2240)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3492, file: !3493, line: 163, baseType: !3553, size: 256, offset: 2880)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !239)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3492, file: !3493, line: 169, baseType: !223, size: 64, offset: 3136)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3492, file: !3493, line: 172, baseType: !103, size: 32, offset: 3200)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3492, file: !3493, line: 174, baseType: !3557, size: 64, offset: 3264)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3493, line: 174, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3492, file: !3493, line: 185, baseType: !3560, size: 64, offset: 3328)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !462, line: 860, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 853, size: 64, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3561, file: !462, line: 858, baseType: !930, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3561, file: !462, line: 859, baseType: !140, size: 32, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3492, file: !3493, line: 186, baseType: !343, size: 64, offset: 3392)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3492, file: !3493, line: 186, baseType: !343, size: 64, offset: 3456)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3492, file: !3493, line: 186, baseType: !343, size: 64, offset: 3520)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3492, file: !3493, line: 186, baseType: !343, size: 64, offset: 3584)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3492, file: !3493, line: 187, baseType: !343, size: 64, offset: 3648)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3492, file: !3493, line: 188, baseType: !343, size: 64, offset: 3712)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3492, file: !3493, line: 189, baseType: !3405, size: 192, offset: 3776)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3492, file: !3493, line: 190, baseType: !120, size: 64, offset: 3968)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3492, file: !3493, line: 190, baseType: !120, size: 64, offset: 4032)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3492, file: !3493, line: 190, baseType: !120, size: 64, offset: 4096)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3492, file: !3493, line: 190, baseType: !120, size: 64, offset: 4160)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3492, file: !3493, line: 191, baseType: !120, size: 64, offset: 4224)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3492, file: !3493, line: 191, baseType: !120, size: 64, offset: 4288)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3492, file: !3493, line: 191, baseType: !120, size: 64, offset: 4352)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3492, file: !3493, line: 191, baseType: !120, size: 64, offset: 4416)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3492, file: !3493, line: 192, baseType: !120, size: 64, offset: 4480)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3492, file: !3493, line: 192, baseType: !120, size: 64, offset: 4544)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3492, file: !3493, line: 192, baseType: !120, size: 64, offset: 4608)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3492, file: !3493, line: 192, baseType: !120, size: 64, offset: 4672)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3492, file: !3493, line: 193, baseType: !120, size: 64, offset: 4736)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3492, file: !3493, line: 193, baseType: !120, size: 64, offset: 4800)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3492, file: !3493, line: 194, baseType: !3587, size: 448, offset: 4864)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3588, line: 12, size: 448, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3587, file: !3588, line: 15, baseType: !343, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3587, file: !3588, line: 17, baseType: !343, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3587, file: !3588, line: 19, baseType: !343, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3587, file: !3588, line: 21, baseType: !343, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3587, file: !3588, line: 29, baseType: !343, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3587, file: !3588, line: 35, baseType: !343, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3587, file: !3588, line: 44, baseType: !343, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3492, file: !3493, line: 202, baseType: !345, size: 64, offset: 5312)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3492, file: !3493, line: 213, baseType: !3599, size: 2048, offset: 5376)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3210, size: 2048, elements: !2772)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3492, file: !3493, line: 216, baseType: !3601, size: 448, offset: 7424)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3493, line: 30, size: 448, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3601, file: !3493, line: 31, baseType: !103, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3601, file: !3493, line: 32, baseType: !1073, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3601, file: !3493, line: 33, baseType: !120, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3601, file: !3493, line: 34, baseType: !343, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3601, file: !3493, line: 34, baseType: !343, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3601, file: !3493, line: 35, baseType: !120, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3601, file: !3493, line: 35, baseType: !120, size: 64, offset: 384)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3492, file: !3493, line: 219, baseType: !3611, size: 64, offset: 7872)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3493, line: 219, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3492, file: !3493, line: 222, baseType: !13, size: 32, offset: 7936)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3492, file: !3493, line: 223, baseType: !3615, size: 64, offset: 8000)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3493, line: 223, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3492, file: !3493, line: 230, baseType: !800, size: 8, offset: 8064)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3492, file: !3493, line: 231, baseType: !769, size: 16, offset: 8080)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3492, file: !3493, line: 232, baseType: !769, size: 16, offset: 8096)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3492, file: !3493, line: 234, baseType: !592, size: 64, offset: 8128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3492, file: !3493, line: 237, baseType: !640, size: 256, offset: 8192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3492, file: !3493, line: 243, baseType: !741, size: 320, offset: 8448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !280, file: !281, line: 1111, baseType: !3624, size: 64, offset: 15424)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3493, line: 20, size: 16640, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3625, file: !3493, line: 21, baseType: !140, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3625, file: !3493, line: 22, baseType: !227, size: 32, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3625, file: !3493, line: 23, baseType: !135, size: 192, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3625, file: !3493, line: 24, baseType: !3631, size: 16384, offset: 256)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3632, size: 16384, elements: !1250)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !889, line: 51, size: 256, elements: !3633)
!3633 = !{!3634}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3632, file: !889, line: 52, baseType: !3635, size: 256)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !889, line: 37, size: 256, elements: !3636)
!3636 = !{!3637, !3644, !3645, !3649}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3635, file: !889, line: 39, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3639, line: 83, baseType: !3640)
!3639 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3639, line: 82, baseType: !3642)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !103}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3635, file: !889, line: 40, baseType: !120, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3635, file: !889, line: 46, baseType: !3646, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3639, line: 86, baseType: !3647)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3639, line: 85, baseType: !2380)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3635, file: !889, line: 48, baseType: !3507, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !280, file: !281, line: 1112, baseType: !3507, size: 64, offset: 15488)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !280, file: !281, line: 1113, baseType: !3507, size: 64, offset: 15552)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !280, file: !281, line: 1115, baseType: !3507, size: 64, offset: 15616)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !280, file: !281, line: 1116, baseType: !3503, size: 192, offset: 15680)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !280, file: !281, line: 1117, baseType: !120, size: 64, offset: 15872)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !280, file: !281, line: 1118, baseType: !116, size: 64, offset: 15936)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !280, file: !281, line: 1119, baseType: !13, size: 32, offset: 16000)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !280, file: !281, line: 1121, baseType: !247, size: 64, offset: 16064)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !280, file: !281, line: 1125, baseType: !3659, size: 64, offset: 16128)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !281, line: 43, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !280, file: !281, line: 1127, baseType: !682, size: 32, offset: 16192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !280, file: !281, line: 1128, baseType: !13, size: 32, offset: 16224)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !280, file: !281, line: 1130, baseType: !3664, size: 128, offset: 16256)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3665, line: 37, size: 128, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3664, file: !3665, line: 38, baseType: !103, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3664, file: !3665, line: 39, baseType: !130, size: 32, offset: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3664, file: !3665, line: 40, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3665, line: 24, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !280, file: !281, line: 1131, baseType: !3673, size: 256, offset: 16384)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3674, line: 12, size: 256, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3673, file: !3674, line: 13, baseType: !811, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3673, file: !3674, line: 14, baseType: !120, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3673, file: !3674, line: 15, baseType: !120, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3673, file: !3674, line: 16, baseType: !800, size: 8, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !280, file: !281, line: 1134, baseType: !343, size: 64, offset: 16640)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !280, file: !281, line: 1135, baseType: !343, size: 64, offset: 16704)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !280, file: !281, line: 1138, baseType: !140, size: 32, offset: 16768)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !280, file: !281, line: 1141, baseType: !435, size: 32, offset: 16800)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !280, file: !281, line: 1143, baseType: !3685, size: 64, offset: 16832)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !281, line: 735, size: 64, elements: !3686)
!3686 = !{!3687}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3685, file: !281, line: 736, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !280, file: !281, line: 1147, baseType: !475, size: 128, offset: 16896)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !280, file: !281, line: 1149, baseType: !279, size: 64, offset: 17024)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !280, file: !281, line: 1151, baseType: !3692, size: 64, offset: 17088)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !281, line: 1151, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !280, file: !281, line: 1188, baseType: !101, size: 64, offset: 17152)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !280, file: !281, line: 1191, baseType: !3696, size: 64, offset: 17216)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !281, line: 44, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !280, file: !281, line: 1194, baseType: !3699, size: 64, offset: 17280)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !281, line: 45, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !280, file: !281, line: 1197, baseType: !3702, size: 64, offset: 17344)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !281, line: 61, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !280, file: !281, line: 1199, baseType: !3705, size: 64, offset: 17408)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3707, line: 99, size: 128, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3708 = !{!3709, !3710, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3706, file: !3707, line: 100, baseType: !633, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3706, file: !3707, line: 101, baseType: !130, size: 32, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3706, file: !3707, line: 103, baseType: !107, size: 16, offset: 96)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !280, file: !281, line: 1202, baseType: !3713, size: 64, offset: 17472)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !281, line: 48, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !280, file: !281, line: 1205, baseType: !120, size: 64, offset: 17536)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !280, file: !281, line: 1206, baseType: !3717, size: 64, offset: 17600)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !889, line: 14, baseType: !3719)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !889, line: 12, size: 384, elements: !3720)
!3720 = !{!3721}
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !889, line: 13, baseType: !3722, size: 384)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3719, file: !889, line: 13, size: 384, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3722, file: !889, line: 13, baseType: !103, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3722, file: !889, line: 13, baseType: !103, size: 32, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3722, file: !889, line: 13, baseType: !103, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3722, file: !889, line: 13, baseType: !3728, size: 256, offset: 128)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3729, line: 37, size: 256, elements: !3730)
!3729 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3730 = !{!3731, !3736, !3749, !3755, !3764, !3791, !3796}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3728, file: !3729, line: 42, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 39, size: 64, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3732, file: !3729, line: 40, baseType: !3382, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3732, file: !3729, line: 41, baseType: !688, size: 32, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3728, file: !3729, line: 50, baseType: !3737, size: 192)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 45, size: 192, elements: !3738)
!3738 = !{!3739, !3741, !3742, !3748}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3737, file: !3729, line: 46, baseType: !3740, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !118, line: 95, baseType: !103)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3737, file: !3729, line: 47, baseType: !103, size: 32, offset: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3737, file: !3729, line: 48, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3729, line: 11, baseType: !3744)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3729, line: 8, size: 64, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3744, file: !3729, line: 9, baseType: !103, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3744, file: !3729, line: 10, baseType: !101, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3737, file: !3729, line: 49, baseType: !103, size: 32, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3728, file: !3729, line: 57, baseType: !3750, size: 128)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 53, size: 128, elements: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3750, file: !3729, line: 54, baseType: !3382, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3750, file: !3729, line: 55, baseType: !688, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3750, file: !3729, line: 56, baseType: !3743, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3728, file: !3729, line: 66, baseType: !3756, size: 256)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 60, size: 256, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761, !3763}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3756, file: !3729, line: 61, baseType: !3382, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3756, file: !3729, line: 62, baseType: !688, size: 32, offset: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3756, file: !3729, line: 63, baseType: !103, size: 32, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3756, file: !3729, line: 64, baseType: !3762, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !118, line: 94, baseType: !1114)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3756, file: !3729, line: 65, baseType: !3762, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3728, file: !3729, line: 105, baseType: !3765, size: 256)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 69, size: 256, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3765, file: !3729, line: 70, baseType: !101, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3765, file: !3729, line: 79, baseType: !3769, size: 192, offset: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3765, file: !3729, line: 79, size: 192, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3780, !3785}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3769, file: !3729, line: 81, baseType: !103, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3769, file: !3729, line: 86, baseType: !769, size: 16)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3769, file: !3729, line: 92, baseType: !3774, size: 192)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3729, line: 88, size: 192, elements: !3775)
!3775 = !{!3776, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3774, file: !3729, line: 89, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !454)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3774, file: !3729, line: 90, baseType: !101, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3774, file: !3729, line: 91, baseType: !101, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3769, file: !3729, line: 97, baseType: !3781, size: 96)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3729, line: 94, size: 96, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3781, file: !3729, line: 95, baseType: !3777, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3781, file: !3729, line: 96, baseType: !291, size: 32, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3769, file: !3729, line: 103, baseType: !3786, size: 128)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3729, line: 99, size: 128, elements: !3787)
!3787 = !{!3788, !3789, !3790}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3786, file: !3729, line: 100, baseType: !120, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3786, file: !3729, line: 101, baseType: !291, size: 32, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3786, file: !3729, line: 102, baseType: !291, size: 32, offset: 96)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3728, file: !3729, line: 111, baseType: !3792, size: 128)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 108, size: 128, elements: !3793)
!3793 = !{!3794, !3795}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3792, file: !3729, line: 109, baseType: !1073, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3792, file: !3729, line: 110, baseType: !103, size: 32, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3728, file: !3729, line: 118, baseType: !3797, size: 128)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3728, file: !3729, line: 114, size: 128, elements: !3798)
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3797, file: !3729, line: 115, baseType: !101, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3797, file: !3729, line: 116, baseType: !103, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3797, file: !3729, line: 117, baseType: !13, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !280, file: !281, line: 1208, baseType: !3587, size: 448, offset: 17664)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !280, file: !281, line: 1215, baseType: !343, size: 64, offset: 18112)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !280, file: !281, line: 1217, baseType: !343, size: 64, offset: 18176)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !280, file: !281, line: 1219, baseType: !343, size: 64, offset: 18240)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !280, file: !281, line: 1223, baseType: !3807, size: 64, offset: 18304)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3808, line: 99, baseType: !3809)
!3808 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3808, line: 99, size: 64, elements: !3810)
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3809, file: !3808, line: 99, baseType: !543, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !280, file: !281, line: 1225, baseType: !930, size: 32, offset: 18368)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !280, file: !281, line: 1226, baseType: !103, size: 32, offset: 18400)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !280, file: !281, line: 1227, baseType: !103, size: 32, offset: 18432)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !280, file: !281, line: 1231, baseType: !3816, size: 64, offset: 18496)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !281, line: 1231, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !280, file: !281, line: 1233, baseType: !178, size: 128, offset: 18560)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !280, file: !281, line: 1240, baseType: !3820, size: 64, offset: 18688)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !281, line: 62, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !280, file: !281, line: 1242, baseType: !3823, size: 64, offset: 18752)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !281, line: 1242, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !280, file: !281, line: 1244, baseType: !178, size: 128, offset: 18816)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !280, file: !281, line: 1245, baseType: !3827, size: 64, offset: 18944)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !281, line: 51, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !280, file: !281, line: 1246, baseType: !640, size: 256, offset: 19008)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !280, file: !281, line: 1247, baseType: !13, size: 32, offset: 19264)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !280, file: !281, line: 1250, baseType: !3832, size: 64, offset: 19328)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !281, line: 57, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !280, file: !281, line: 1251, baseType: !640, size: 256, offset: 19392)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !280, file: !281, line: 1252, baseType: !178, size: 128, offset: 19648)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !280, file: !281, line: 1259, baseType: !1544, size: 64, offset: 19776)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !280, file: !281, line: 1260, baseType: !769, size: 16, offset: 19840)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !280, file: !281, line: 1261, baseType: !769, size: 16, offset: 19856)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !280, file: !281, line: 1314, baseType: !3840, size: 64, offset: 19904)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3842, line: 62, size: 256, align: 256, elements: !3843)
!3842 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3841, file: !3842, line: 75, baseType: !291, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3841, file: !3842, line: 90, baseType: !291, size: 32, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3841, file: !3842, line: 112, baseType: !344, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3841, file: !3842, line: 132, baseType: !291, size: 32, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3841, file: !3842, line: 140, baseType: !291, size: 32, offset: 160)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3841, file: !3842, line: 149, baseType: !291, size: 32, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3841, file: !3842, line: 154, baseType: !3851, offset: 224)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !898)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !280, file: !281, line: 1315, baseType: !290, size: 32, offset: 19968)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !280, file: !281, line: 1316, baseType: !290, size: 32, offset: 20000)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !280, file: !281, line: 1321, baseType: !120, size: 64, offset: 20032)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !280, file: !281, line: 1325, baseType: !103, size: 32, offset: 20096)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !280, file: !281, line: 1326, baseType: !103, size: 32, offset: 20128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !280, file: !281, line: 1327, baseType: !103, size: 32, offset: 20160)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !280, file: !281, line: 1328, baseType: !103, size: 32, offset: 20192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !280, file: !281, line: 1329, baseType: !244, size: 128, align: 64, offset: 20224)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !280, file: !281, line: 1332, baseType: !3861, size: 128, offset: 20352)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3862, line: 51, size: 128, elements: !3863)
!3862 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3863 = !{!3864, !3869, !3870}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3861, file: !3862, line: 60, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3866, line: 7, size: 64, elements: !3867)
!3866 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3867 = !{!3868}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3865, file: !3866, line: 12, baseType: !540, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3861, file: !3862, line: 63, baseType: !800, size: 8, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3861, file: !3862, line: 70, baseType: !800, size: 8, offset: 72)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !280, file: !281, line: 1335, baseType: !3010, size: 64, offset: 20480)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !280, file: !281, line: 1337, baseType: !3873, size: 128, offset: 20544)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3862, line: 39, size: 128, elements: !3874)
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3873, file: !3862, line: 40, baseType: !1331, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3873, file: !3862, line: 42, baseType: !291, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3873, file: !3862, line: 43, baseType: !291, size: 32, offset: 96)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !280, file: !281, line: 1340, baseType: !3879, size: 64, offset: 20672)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !281, line: 69, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !280, file: !281, line: 1351, baseType: !103, size: 32, offset: 20736)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !280, file: !281, line: 1352, baseType: !103, size: 32, offset: 20768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !280, file: !281, line: 1354, baseType: !120, size: 64, offset: 20800)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !280, file: !281, line: 1364, baseType: !343, size: 64, offset: 20864)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !280, file: !281, line: 1365, baseType: !343, size: 64, offset: 20928)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !280, file: !281, line: 1412, baseType: !120, size: 64, offset: 20992)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !280, file: !281, line: 1453, baseType: !3888, size: 64, offset: 21056)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !281, line: 1453, flags: DIFlagFwdDecl)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !280, file: !281, line: 1457, baseType: !3891, size: 64, offset: 21120)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !39, line: 61, size: 576, elements: !3893)
!3893 = !{!3894, !3895, !3914, !3917, !3918, !3951, !3961}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3892, file: !39, line: 62, baseType: !38, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !39, line: 64, baseType: !3896, size: 192, offset: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !39, line: 64, size: 192, elements: !3897)
!3897 = !{!3898, !3909}
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !39, line: 65, baseType: !3899, size: 192)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !39, line: 65, size: 192, elements: !3900)
!3900 = !{!3901, !3908}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3899, file: !39, line: 66, baseType: !3902, size: 128)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3903, line: 50, size: 128, elements: !3904)
!3903 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3902, file: !3903, line: 52, baseType: !120, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3902, file: !3903, line: 54, baseType: !13, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3902, file: !3903, line: 55, baseType: !13, size: 32, offset: 96)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3899, file: !39, line: 67, baseType: !120, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !39, line: 70, baseType: !3910, size: 192)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3896, file: !39, line: 70, size: 192, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3910, file: !39, line: 71, baseType: !244, size: 128, align: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3910, file: !39, line: 72, baseType: !120, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3892, file: !39, line: 76, baseType: !3915, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !39, line: 76, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3892, file: !39, line: 77, baseType: !120, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3892, file: !39, line: 79, baseType: !3919, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3903, line: 25, size: 256, elements: !3921)
!3921 = !{!3922, !3928, !3932}
!3922 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !3903, line: 26, baseType: !3923, size: 128)
!3923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !3903, line: 26, size: 128, elements: !3924)
!3924 = !{!3925, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3923, file: !3903, line: 27, baseType: !3926, size: 128)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !2772)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3923, file: !3903, line: 28, baseType: !3926, size: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3920, file: !3903, line: 31, baseType: !3929, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3903, line: 23, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !3903, line: 33, baseType: !3933, size: 64, offset: 192)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !3903, line: 33, size: 64, elements: !3934)
!3934 = !{!3935, !3941, !3946}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3933, file: !3903, line: 38, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !3903, line: 34, size: 64, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3936, file: !3903, line: 35, baseType: !733, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3936, file: !3903, line: 36, baseType: !164, size: 8, offset: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3936, file: !3903, line: 37, baseType: !164, size: 8, offset: 40)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3933, file: !3903, line: 42, baseType: !3942, size: 16)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !3903, line: 39, size: 16, elements: !3943)
!3943 = !{!3944, !3945}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3942, file: !3903, line: 40, baseType: !164, size: 8)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3942, file: !3903, line: 41, baseType: !164, size: 8, offset: 8)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3933, file: !3903, line: 46, baseType: !3947, size: 16)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !3903, line: 43, size: 16, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3947, file: !3903, line: 44, baseType: !164, size: 8)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3947, file: !3903, line: 45, baseType: !164, size: 8, offset: 8)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3892, file: !39, line: 81, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !39, line: 85, size: 384, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3953, file: !39, line: 86, baseType: !3915, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3953, file: !39, line: 87, baseType: !120, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3953, file: !39, line: 88, baseType: !120, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3953, file: !39, line: 89, baseType: !120, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3953, file: !39, line: 90, baseType: !800, size: 8, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3953, file: !39, line: 92, baseType: !3952, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3892, file: !39, line: 82, baseType: !13, size: 32, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !280, file: !281, line: 1463, baseType: !3963, offset: 21184)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !281, line: 739, elements: !613)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !280, file: !281, line: 1470, baseType: !244, size: 128, align: 64, offset: 21184)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !280, file: !281, line: 1471, baseType: !227, size: 32, offset: 21312)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !280, file: !281, line: 1472, baseType: !103, size: 32, offset: 21344)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !280, file: !281, line: 1474, baseType: !279, size: 64, offset: 21376)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !280, file: !281, line: 1475, baseType: !2264, size: 320, offset: 21440)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !280, file: !281, line: 1478, baseType: !3970, size: 64, offset: 21760)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !281, line: 1478, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !280, file: !281, line: 1482, baseType: !227, size: 32, offset: 21824)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !280, file: !281, line: 1489, baseType: !101, size: 64, offset: 21888)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !280, file: !281, line: 1504, baseType: !101, size: 64, offset: 21952)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !280, file: !281, line: 1505, baseType: !344, size: 64, offset: 22016)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !280, file: !281, line: 1506, baseType: !343, size: 64, offset: 22080)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !280, file: !281, line: 1507, baseType: !344, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !280, file: !281, line: 1508, baseType: !344, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !280, file: !281, line: 1509, baseType: !344, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !280, file: !281, line: 1510, baseType: !244, size: 128, align: 64, offset: 22208)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !280, file: !281, line: 1511, baseType: !103, size: 32, offset: 22336)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !280, file: !281, line: 1515, baseType: !3983, size: 64, offset: 22400)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !305, line: 56, size: 64, elements: !3984)
!3984 = !{!3985}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3983, file: !305, line: 57, baseType: !308, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !280, file: !281, line: 1518, baseType: !3983, size: 64, offset: 22464)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !280, file: !281, line: 1528, baseType: !244, size: 128, align: 64, offset: 22528)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !280, file: !281, line: 1552, baseType: !3989, size: 35328, offset: 23040)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3990, line: 430, size: 35328, elements: !3991)
!3990 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3991 = !{!3992, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4021, !4022, !4023, !4024, !4025, !4026, !4029, !4030, !4031, !4032}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3989, file: !3990, line: 432, baseType: !3993, size: 192)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3994, size: 192, elements: !676)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3995, line: 16, size: 64, elements: !3996)
!3995 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3994, file: !3995, line: 17, baseType: !174, size: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3994, file: !3995, line: 18, baseType: !174, size: 16, offset: 16)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3994, file: !3995, line: 19, baseType: !174, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3994, file: !3995, line: 19, baseType: !174, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3994, file: !3995, line: 19, baseType: !174, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3994, file: !3995, line: 19, baseType: !174, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3994, file: !3995, line: 19, baseType: !174, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3994, file: !3995, line: 20, baseType: !174, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3994, file: !3995, line: 20, baseType: !174, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3994, file: !3995, line: 20, baseType: !174, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3994, file: !3995, line: 20, baseType: !174, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3994, file: !3995, line: 20, baseType: !174, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3994, file: !3995, line: 20, baseType: !174, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3989, file: !3990, line: 436, baseType: !120, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3989, file: !3990, line: 440, baseType: !107, size: 16, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3989, file: !3990, line: 441, baseType: !107, size: 16, offset: 272)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3989, file: !3990, line: 442, baseType: !107, size: 16, offset: 288)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3989, file: !3990, line: 443, baseType: !107, size: 16, offset: 304)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3989, file: !3990, line: 447, baseType: !120, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3989, file: !3990, line: 448, baseType: !120, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3989, file: !3990, line: 459, baseType: !4018, size: 256, offset: 448)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4019, size: 256, elements: !239)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3990, line: 428, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3989, file: !3990, line: 461, baseType: !120, size: 64, offset: 704)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3989, file: !3990, line: 463, baseType: !120, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3989, file: !3990, line: 465, baseType: !120, size: 64, offset: 832)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3989, file: !3990, line: 466, baseType: !120, size: 64, offset: 896)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3989, file: !3990, line: 467, baseType: !120, size: 64, offset: 960)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3989, file: !3990, line: 473, baseType: !4027, size: 64, offset: 1024)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3990, line: 10, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3989, file: !3990, line: 480, baseType: !120, size: 64, offset: 1088)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3989, file: !3990, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3989, file: !3990, line: 491, baseType: !290, size: 32, offset: 1184)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3989, file: !3990, line: 501, baseType: !4033, size: 33792, offset: 1536)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4034, line: 448, size: 33792, elements: !4035)
!4034 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4035 = !{!4036, !4037, !4038, !4200, !4201, !4207, !4208}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4033, file: !4034, line: 461, baseType: !13, size: 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4033, file: !4034, line: 468, baseType: !120, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4033, file: !4034, line: 476, baseType: !4039, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4034, line: 356, size: 33280, align: 512, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4040, file: !4034, line: 358, baseType: !13, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4040, file: !4034, line: 361, baseType: !13, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4040, file: !4034, line: 364, baseType: !343, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4040, file: !4034, line: 367, baseType: !343, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4040, file: !4034, line: 370, baseType: !343, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4040, file: !4034, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4040, file: !4034, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4040, file: !4034, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4040, file: !4034, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4040, file: !4034, line: 397, baseType: !4052, size: 32768, offset: 512)
!4052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4034, line: 348, size: 32768, elements: !4053)
!4053 = !{!4054, !4069, !4106, !4183, !4196}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4052, file: !4034, line: 349, baseType: !4055, size: 896)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4034, line: 12, size: 896, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4068}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4055, file: !4034, line: 13, baseType: !290, size: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4055, file: !4034, line: 14, baseType: !290, size: 32, offset: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4055, file: !4034, line: 15, baseType: !290, size: 32, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4055, file: !4034, line: 16, baseType: !290, size: 32, offset: 96)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4055, file: !4034, line: 17, baseType: !290, size: 32, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4055, file: !4034, line: 18, baseType: !290, size: 32, offset: 160)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4055, file: !4034, line: 19, baseType: !290, size: 32, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4055, file: !4034, line: 22, baseType: !4065, size: 640, offset: 224)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !4066)
!4066 = !{!4067}
!4067 = !DISubrange(count: 20)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4055, file: !4034, line: 25, baseType: !290, size: 32, offset: 864)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4052, file: !4034, line: 350, baseType: !4070, size: 4096, align: 128)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4034, line: 34, size: 4096, align: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4091, !4092, !4093, !4095, !4097, !4101}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4070, file: !4034, line: 35, baseType: !174, size: 16)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4070, file: !4034, line: 36, baseType: !174, size: 16, offset: 16)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4070, file: !4034, line: 37, baseType: !174, size: 16, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4070, file: !4034, line: 38, baseType: !174, size: 16, offset: 48)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4070, file: !4034, line: 39, baseType: !4077, size: 128, offset: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4070, file: !4034, line: 39, size: 128, elements: !4078)
!4078 = !{!4079, !4084}
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !4034, line: 40, baseType: !4080, size: 128)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4077, file: !4034, line: 40, size: 128, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4080, file: !4034, line: 41, baseType: !343, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4080, file: !4034, line: 42, baseType: !343, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !4034, line: 44, baseType: !4085, size: 128)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4077, file: !4034, line: 44, size: 128, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4085, file: !4034, line: 45, baseType: !290, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4085, file: !4034, line: 46, baseType: !290, size: 32, offset: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4085, file: !4034, line: 47, baseType: !290, size: 32, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4085, file: !4034, line: 48, baseType: !290, size: 32, offset: 96)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4070, file: !4034, line: 51, baseType: !290, size: 32, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4070, file: !4034, line: 52, baseType: !290, size: 32, offset: 224)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4070, file: !4034, line: 55, baseType: !4094, size: 1024, offset: 256)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 1024, elements: !2763)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4070, file: !4034, line: 58, baseType: !4096, size: 2048, offset: 1280)
!4096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 2048, elements: !1250)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4070, file: !4034, line: 60, baseType: !4098, size: 384, offset: 3328)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 384, elements: !4099)
!4099 = !{!4100}
!4100 = !DISubrange(count: 12)
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !4070, file: !4034, line: 62, baseType: !4102, size: 384, offset: 3712)
!4102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4070, file: !4034, line: 62, size: 384, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4102, file: !4034, line: 63, baseType: !4098, size: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4102, file: !4034, line: 64, baseType: !4098, size: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4052, file: !4034, line: 351, baseType: !4107, size: 1088)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4034, line: 79, size: 1088, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4182}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4107, file: !4034, line: 80, baseType: !290, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4107, file: !4034, line: 81, baseType: !290, size: 32, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4107, file: !4034, line: 82, baseType: !290, size: 32, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4107, file: !4034, line: 83, baseType: !290, size: 32, offset: 96)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4107, file: !4034, line: 84, baseType: !290, size: 32, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4107, file: !4034, line: 85, baseType: !290, size: 32, offset: 160)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4107, file: !4034, line: 86, baseType: !290, size: 32, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4107, file: !4034, line: 88, baseType: !4065, size: 640, offset: 224)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4107, file: !4034, line: 89, baseType: !164, size: 8, offset: 864)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4107, file: !4034, line: 90, baseType: !164, size: 8, offset: 872)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4107, file: !4034, line: 91, baseType: !164, size: 8, offset: 880)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4107, file: !4034, line: 92, baseType: !164, size: 8, offset: 888)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4107, file: !4034, line: 93, baseType: !164, size: 8, offset: 896)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4107, file: !4034, line: 94, baseType: !164, size: 8, offset: 904)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4107, file: !4034, line: 95, baseType: !4124, size: 64, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4126, line: 11, size: 128, elements: !4127)
!4126 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4127 = !{!4128, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4125, file: !4126, line: 12, baseType: !1073, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4125, file: !4126, line: 13, baseType: !4130, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4132, line: 103, size: 1344, elements: !4133)
!4132 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4162, !4163, !4164}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4131, file: !4132, line: 109, baseType: !120, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4131, file: !4132, line: 110, baseType: !120, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4131, file: !4132, line: 111, baseType: !120, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4131, file: !4132, line: 112, baseType: !120, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4131, file: !4132, line: 113, baseType: !120, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4131, file: !4132, line: 114, baseType: !120, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4131, file: !4132, line: 117, baseType: !120, size: 64, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4131, file: !4132, line: 118, baseType: !120, size: 64, offset: 448)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4131, file: !4132, line: 119, baseType: !120, size: 64, offset: 512)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4131, file: !4132, line: 120, baseType: !120, size: 64, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4131, file: !4132, line: 121, baseType: !120, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4131, file: !4132, line: 122, baseType: !120, size: 64, offset: 704)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4131, file: !4132, line: 123, baseType: !120, size: 64, offset: 768)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4131, file: !4132, line: 124, baseType: !120, size: 64, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4131, file: !4132, line: 125, baseType: !120, size: 64, offset: 896)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4131, file: !4132, line: 139, baseType: !120, size: 64, offset: 960)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4131, file: !4132, line: 142, baseType: !120, size: 64, offset: 1024)
!4151 = !DIDerivedType(tag: DW_TAG_member, scope: !4131, file: !4132, line: 144, baseType: !4152, size: 64, offset: 1088)
!4152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4131, file: !4132, line: 144, size: 64, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4152, file: !4132, line: 146, baseType: !174, size: 16)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4152, file: !4132, line: 148, baseType: !343, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4152, file: !4132, line: 150, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4132, line: 59, size: 64, elements: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4157, file: !4132, line: 61, baseType: !343, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4157, file: !4132, line: 63, baseType: !343, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4157, file: !4132, line: 65, baseType: !343, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4131, file: !4132, line: 153, baseType: !120, size: 64, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4131, file: !4132, line: 154, baseType: !120, size: 64, offset: 1216)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4131, file: !4132, line: 156, baseType: !4165, size: 64, offset: 1280)
!4165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4131, file: !4132, line: 156, size: 64, elements: !4166)
!4166 = !{!4167, !4168, !4169}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4165, file: !4132, line: 158, baseType: !174, size: 16)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4165, file: !4132, line: 160, baseType: !343, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4165, file: !4132, line: 162, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4132, line: 69, size: 64, elements: !4171)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4170, file: !4132, line: 71, baseType: !343, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4170, file: !4132, line: 73, baseType: !343, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4170, file: !4132, line: 75, baseType: !343, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4170, file: !4132, line: 77, baseType: !343, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4170, file: !4132, line: 80, baseType: !343, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4170, file: !4132, line: 83, baseType: !343, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4170, file: !4132, line: 86, baseType: !343, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4170, file: !4132, line: 88, baseType: !343, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4170, file: !4132, line: 93, baseType: !343, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4170, file: !4132, line: 100, baseType: !343, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4107, file: !4034, line: 96, baseType: !290, size: 32, offset: 1024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4052, file: !4034, line: 352, baseType: !4184, size: 4608, align: 512)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4034, line: 333, size: 4608, align: 512, elements: !4185)
!4185 = !{!4186, !4187, !4194}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4184, file: !4034, line: 334, baseType: !4070, size: 4096, align: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4184, file: !4034, line: 335, baseType: !4188, size: 512, offset: 4096)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4034, line: 312, size: 512, elements: !4189)
!4189 = !{!4190, !4191, !4192}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4188, file: !4034, line: 313, baseType: !343, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4188, file: !4034, line: 314, baseType: !343, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4188, file: !4034, line: 315, baseType: !4193, size: 384, offset: 128)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, elements: !787)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4184, file: !4034, line: 336, baseType: !4195, offset: 4608)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !898)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4052, file: !4034, line: 353, baseType: !4197, size: 32768)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32768, elements: !4198)
!4198 = !{!4199}
!4199 = !DISubrange(count: 4096)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4033, file: !4034, line: 484, baseType: !4039, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4033, file: !4034, line: 491, baseType: !4202, size: 128, offset: 256)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4034, line: 404, size: 128, elements: !4203)
!4203 = !{!4204, !4205, !4206}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4202, file: !4034, line: 424, baseType: !343, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4202, file: !4034, line: 432, baseType: !13, size: 32, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4202, file: !4034, line: 440, baseType: !13, size: 32, offset: 96)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4033, file: !4034, line: 498, baseType: !4202, size: 128, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4033, file: !4034, line: 508, baseType: !4040, size: 33280, align: 512, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !259, file: !260, line: 31, baseType: !4210, size: 64, offset: 448)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4212, line: 325, flags: DIFlagFwdDecl)
!4212 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !259, file: !260, line: 32, baseType: !13, size: 32, offset: 512)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !259, file: !260, line: 33, baseType: !258, size: 64, offset: 576)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !259, file: !260, line: 35, baseType: !4216, size: 64, offset: 640)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !260, line: 17, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !259, file: !260, line: 37, baseType: !884, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !259, file: !260, line: 38, baseType: !887, size: 64, offset: 768)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !259, file: !260, line: 39, baseType: !103, size: 32, offset: 832)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !259, file: !260, line: 40, baseType: !4222, size: 192, offset: 896)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !4223, line: 9, size: 192, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!4224 = !{!4225, !4226, !4263, !4264}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !4222, file: !4223, line: 10, baseType: !633, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4222, file: !4223, line: 11, baseType: !4227, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !4230, line: 16, size: 512, elements: !4231)
!4230 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!4231 = !{!4232, !4233, !4234, !4235, !4240, !4244, !4255, !4259}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4229, file: !4230, line: 17, baseType: !98, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !4229, file: !4230, line: 18, baseType: !98, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4229, file: !4230, line: 19, baseType: !103, size: 32, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4229, file: !4230, line: 20, baseType: !4236, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!4239, !279}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4229, file: !4230, line: 21, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4239}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4229, file: !4230, line: 22, baseType: !4245, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!103, !4248, !4239}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !3467, line: 53, size: 256, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4249, file: !3467, line: 54, baseType: !13, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !4249, file: !3467, line: 55, baseType: !3465, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !4249, file: !3467, line: 56, baseType: !3456, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !4249, file: !3467, line: 57, baseType: !692, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4229, file: !4230, line: 23, baseType: !4256, size: 64, offset: 384)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!884, !4239}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4229, file: !4230, line: 24, baseType: !4260, size: 64, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!4239, !4239}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !4222, file: !4223, line: 12, baseType: !13, size: 32, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4222, file: !4223, line: 13, baseType: !227, size: 32, offset: 160)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !259, file: !260, line: 42, baseType: !103, size: 32, offset: 1088)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !219, file: !220, line: 100, baseType: !13, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !219, file: !220, line: 101, baseType: !4268, size: 64, offset: 128)
!4268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "proc_op", file: !220, line: 90, size: 64, elements: !4269)
!4269 = !{!4270, !4274, !4278}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_link", scope: !4268, file: !220, line: 91, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!103, !924, !2825}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4268, file: !220, line: 92, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!103, !1912, !258, !223, !279}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "lsm", scope: !4268, file: !220, line: 95, baseType: !98, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pde", scope: !219, file: !220, line: 102, baseType: !4280, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !220, line: 30, size: 1408, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4310, !4311, !4316, !4321, !4322, !4323, !4324, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4281, file: !220, line: 35, baseType: !130, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4281, file: !220, line: 36, baseType: !227, size: 32, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !4281, file: !220, line: 37, baseType: !178, size: 128, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !4281, file: !220, line: 39, baseType: !140, size: 32, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !4281, file: !220, line: 40, baseType: !2025, size: 64, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !4281, file: !220, line: 41, baseType: !973, size: 64, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_member, scope: !4281, file: !220, line: 42, baseType: !4290, size: 64, offset: 384)
!4290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4281, file: !220, line: 42, size: 64, elements: !4291)
!4291 = !{!4292, !4309}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !4290, file: !220, line: 43, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !197, line: 29, size: 768, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !4295, file: !197, line: 30, baseType: !13, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !4295, file: !197, line: 31, baseType: !2977, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !4295, file: !197, line: 32, baseType: !2934, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !4295, file: !197, line: 33, baseType: !1742, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !4295, file: !197, line: 34, baseType: !2938, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !4295, file: !197, line: 36, baseType: !2930, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !4295, file: !197, line: 37, baseType: !2977, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !4295, file: !197, line: 38, baseType: !2963, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !4295, file: !197, line: 39, baseType: !2967, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !4295, file: !197, line: 41, baseType: !2967, size: 64, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !4295, file: !197, line: 43, baseType: !2972, size: 64, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !4295, file: !197, line: 44, baseType: !617, size: 64, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !4290, file: !220, line: 44, baseType: !2924, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !4281, file: !220, line: 46, baseType: !2778, size: 64, offset: 448)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4281, file: !220, line: 47, baseType: !4312, size: 64, offset: 512)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4281, file: !220, line: 47, size: 64, elements: !4313)
!4313 = !{!4314, !4315}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !4312, file: !220, line: 48, baseType: !1925, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !4312, file: !220, line: 49, baseType: !1942, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4281, file: !220, line: 51, baseType: !4317, size: 64, offset: 576)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !197, line: 77, baseType: !4318)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!103, !620, !811, !116}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4281, file: !220, line: 52, baseType: !101, size: 64, offset: 640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !4281, file: !220, line: 53, baseType: !13, size: 32, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !4281, file: !220, line: 54, baseType: !13, size: 32, offset: 736)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4281, file: !220, line: 55, baseType: !4325, size: 32, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !106, line: 25, baseType: !290)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4281, file: !220, line: 56, baseType: !682, size: 32, offset: 800)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4281, file: !220, line: 57, baseType: !700, size: 32, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4281, file: !220, line: 58, baseType: !122, size: 64, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4281, file: !220, line: 59, baseType: !4280, size: 64, offset: 960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !4281, file: !220, line: 60, baseType: !478, size: 64, offset: 1024)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !4281, file: !220, line: 61, baseType: !335, size: 192, align: 64, offset: 1088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !220, line: 62, baseType: !811, size: 64, offset: 1280)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4281, file: !220, line: 63, baseType: !105, size: 16, offset: 1344)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4281, file: !220, line: 64, baseType: !164, size: 8, offset: 1360)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !4281, file: !220, line: 65, baseType: !164, size: 8, offset: 1368)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !4281, file: !220, line: 66, baseType: !3851, offset: 1376)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !219, file: !220, line: 103, baseType: !4338, size: 64, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !94, line: 173, size: 640, elements: !4340)
!4340 = !{!4341, !4353, !4354, !4355, !4384, !4385, !4387, !4393}
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !4339, file: !94, line: 174, baseType: !4342, size: 192)
!4342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4339, file: !94, line: 174, size: 192, elements: !4343)
!4343 = !{!4344, !4352}
!4344 = !DIDerivedType(tag: DW_TAG_member, scope: !4342, file: !94, line: 175, baseType: !4345, size: 192)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4342, file: !94, line: 175, size: 192, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !4345, file: !94, line: 176, baseType: !114, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !4345, file: !94, line: 177, baseType: !103, size: 32, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4345, file: !94, line: 178, baseType: !103, size: 32, offset: 96)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4345, file: !94, line: 179, baseType: !103, size: 32, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !4345, file: !94, line: 180, baseType: !103, size: 32, offset: 160)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4342, file: !94, line: 182, baseType: !244, size: 128, align: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4339, file: !94, line: 184, baseType: !2025, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !4339, file: !94, line: 185, baseType: !114, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4339, file: !94, line: 186, baseType: !4356, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !94, line: 204, size: 960, elements: !4358)
!4358 = !{!4359, !4372, !4376, !4380}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !4357, file: !94, line: 205, baseType: !4360, size: 768)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !94, line: 199, size: 768, elements: !4361)
!4361 = !{!4362, !4367}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !4360, file: !94, line: 200, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!103, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4360, file: !94, line: 201, baseType: !4368, size: 704, offset: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !94, line: 193, size: 704, elements: !4369)
!4369 = !{!4370, !4371}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4368, file: !94, line: 195, baseType: !4339, size: 640)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4368, file: !94, line: 196, baseType: !478, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4357, file: !94, line: 206, baseType: !4373, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!4366, !4356}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !4357, file: !94, line: 207, baseType: !4377, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !4338, !1864, !1865}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !4357, file: !94, line: 209, baseType: !4381, size: 64, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!103, !4338, !114}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4339, file: !94, line: 187, baseType: !4366, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4339, file: !94, line: 188, baseType: !4386, size: 64, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4339, file: !94, line: 189, baseType: !4388, size: 64, offset: 512)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !94, line: 157, size: 256, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4389, file: !94, line: 158, baseType: !335, size: 192, align: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4389, file: !94, line: 159, baseType: !4338, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !4339, file: !94, line: 190, baseType: !236, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_entry", scope: !219, file: !220, line: 104, baseType: !114, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_inodes", scope: !219, file: !220, line: 105, baseType: !214, size: 128, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ns_ops", scope: !219, file: !220, line: 106, baseType: !4227, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !219, file: !220, line: 107, baseType: !960, size: 4800, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pde_opener", file: !220, line: 210, size: 320, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !4399, file: !220, line: 211, baseType: !178, size: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4399, file: !220, line: 212, baseType: !620, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !4399, file: !220, line: 213, baseType: !800, size: 8, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4399, file: !220, line: 214, baseType: !2025, size: 64, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !213)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4411)
!4411 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !290)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4338)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!4421 = !{!0, !4422, !4427, !4432, !4434, !4436, !7, !4438, !4440, !4442, !4445, !4447, !4450, !4455, !4460, !4462, !4481, !4486, !4488, !4490, !4492, !4494}
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !4424, isLocal: true, isDefinition: true)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 11)
!4427 = !DIGlobalVariableExpression(var: !4428, expr: !DIExpression())
!4428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !4429, isLocal: true, isDefinition: true)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !4430)
!4430 = !{!4431}
!4431 = !DISubrange(count: 15)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "proc_sops", scope: !9, file: !2, line: 193, type: !2397, isLocal: false, isDefinition: true)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "proc_link_inode_operations", scope: !9, file: !2, line: 648, type: !974, isLocal: false, isDefinition: true)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !3439, isLocal: true, isDefinition: true)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(name: "pde_opener_cache", scope: !9, file: !2, line: 61, type: !4210, isLocal: true, isDefinition: true)
!4440 = !DIGlobalVariableExpression(var: !4441, expr: !DIExpression())
!4441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !3777, isLocal: true, isDefinition: true)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !4444, isLocal: true, isDefinition: true)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !4099)
!4445 = !DIGlobalVariableExpression(var: !4446, expr: !DIExpression())
!4446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !4444, isLocal: true, isDefinition: true)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !4449, isLocal: true, isDefinition: true)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !239)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !4452, isLocal: true, isDefinition: true)
!4452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4453)
!4453 = !{!4454}
!4454 = !DISubrange(count: 9)
!4455 = !DIGlobalVariableExpression(var: !4456, expr: !DIExpression())
!4456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !4457, isLocal: true, isDefinition: true)
!4457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !4458)
!4458 = !{!4459}
!4459 = !DISubrange(count: 10)
!4460 = !DIGlobalVariableExpression(var: !4461, expr: !DIExpression())
!4461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !4424, isLocal: true, isDefinition: true)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(name: "__already_done", scope: !4464, file: !2, line: 175, type: !800, isLocal: true, isDefinition: true)
!4464 = distinct !DISubprogram(name: "hidepid2str", scope: !2, file: !2, line: 167, type: !4465, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!98, !196}
!4467 = !{!4468, !4469, !4471, !4474, !4475, !4477}
!4468 = !DILocalVariable(name: "v", arg: 1, scope: !4464, file: !2, line: 167, type: !196)
!4469 = !DILocalVariable(name: "__ret_do_once", scope: !4470, file: !2, line: 175, type: !800)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !2, line: 175, column: 2)
!4471 = !DILocalVariable(name: "__ret_cond", scope: !4472, file: !2, line: 175, type: !800)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 175, column: 2)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !2, line: 175, column: 2)
!4474 = !DILocalVariable(name: "__ret_once", scope: !4472, file: !2, line: 175, type: !800)
!4475 = !DILocalVariable(name: "__ret_warn_on", scope: !4476, file: !2, line: 175, type: !103)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 175, column: 2)
!4477 = !DILocalVariable(name: "__flags", scope: !4478, file: !2, line: 175, type: !103)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 175, column: 2)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !2, line: 175, column: 2)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !2, line: 175, column: 2)
!4481 = !DIGlobalVariableExpression(var: !4482, expr: !DIExpression())
!4482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !4483, isLocal: true, isDefinition: true)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !4484)
!4484 = !{!4485}
!4485 = !DISubrange(count: 24)
!4486 = !DIGlobalVariableExpression(var: !4487, expr: !DIExpression())
!4487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !3777, isLocal: true, isDefinition: true)
!4488 = !DIGlobalVariableExpression(var: !4489, expr: !DIExpression())
!4489 = distinct !DIGlobalVariable(name: "proc_iter_file_ops", scope: !9, file: !2, line: 590, type: !2925, isLocal: true, isDefinition: true)
!4490 = !DIGlobalVariableExpression(var: !4491, expr: !DIExpression())
!4491 = distinct !DIGlobalVariable(name: "proc_reg_file_ops", scope: !9, file: !2, line: 578, type: !2925, isLocal: true, isDefinition: true)
!4492 = !DIGlobalVariableExpression(var: !4493, expr: !DIExpression())
!4493 = distinct !DIGlobalVariable(name: "proc_iter_file_ops_compat", scope: !9, file: !2, line: 617, type: !2925, isLocal: true, isDefinition: true)
!4494 = !DIGlobalVariableExpression(var: !4495, expr: !DIExpression())
!4495 = distinct !DIGlobalVariable(name: "proc_reg_file_ops_compat", scope: !9, file: !2, line: 604, type: !2925, isLocal: true, isDefinition: true)
!4496 = !{i32 7, !"Dwarf Version", i32 5}
!4497 = !{i32 2, !"Debug Info Version", i32 3}
!4498 = !{i32 1, !"wchar_size", i32 2}
!4499 = !{i32 8, !"cf-protection-branch", i32 1}
!4500 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4501 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4502 = !{i32 1, !"Code Model", i32 2}
!4503 = !{i32 1, !"override-stack-alignment", i32 8}
!4504 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4505 = distinct !DISubprogram(name: "proc_init_kmemcache", scope: !2, file: !2, line: 93, type: !2380, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4506 = !DILocation(line: 95, column: 22, scope: !4505)
!4507 = !DILocation(line: 95, column: 20, scope: !4505)
!4508 = !DILocation(line: 102, column: 3, scope: !4505)
!4509 = !DILocation(line: 101, column: 19, scope: !4505)
!4510 = !DILocation(line: 104, column: 25, scope: !4505)
!4511 = !DILocation(line: 104, column: 23, scope: !4505)
!4512 = !DILocation(line: 108, column: 2, scope: !4505)
!4513 = !DILocation(line: 108, column: 2, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4505, file: !2, line: 108, column: 2)
!4515 = !DILocation(line: 109, column: 1, scope: !4505)
!4516 = !DISubprogram(name: "kmem_cache_create", scope: !4517, file: !4517, line: 189, type: !4518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4517 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!4210, !98, !13, !13, !211, !990}
!4520 = distinct !DISubprogram(name: "init_once", scope: !2, file: !2, line: 86, type: !991, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4521)
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "foo", arg: 1, scope: !4520, file: !2, line: 86, type: !101)
!4523 = !DILocalVariable(name: "ei", scope: !4520, file: !2, line: 88, type: !218)
!4524 = !DILocation(line: 86, column: 29, scope: !4520)
!4525 = !DILocation(line: 88, column: 2, scope: !4520)
!4526 = !DILocation(line: 88, column: 21, scope: !4520)
!4527 = !DILocation(line: 88, column: 48, scope: !4520)
!4528 = !DILocation(line: 90, column: 19, scope: !4520)
!4529 = !DILocation(line: 90, column: 23, scope: !4520)
!4530 = !DILocation(line: 90, column: 2, scope: !4520)
!4531 = !DILocation(line: 91, column: 1, scope: !4520)
!4532 = !DISubprogram(name: "kmem_cache_create_usercopy", scope: !4517, file: !4517, line: 192, type: !4533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4210, !98, !13, !13, !211, !13, !13, !990}
!4535 = distinct !DISubprogram(name: "proc_invalidate_siblings_dcache", scope: !2, file: !2, line: 111, type: !4536, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4538)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !3110, !1595}
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544, !4545, !4549, !4551, !4554}
!4539 = !DILocalVariable(name: "inodes", arg: 1, scope: !4535, file: !2, line: 111, type: !3110)
!4540 = !DILocalVariable(name: "lock", arg: 2, scope: !4535, file: !2, line: 111, type: !1595)
!4541 = !DILocalVariable(name: "inode", scope: !4535, file: !2, line: 113, type: !959)
!4542 = !DILocalVariable(name: "ei", scope: !4535, file: !2, line: 114, type: !218)
!4543 = !DILocalVariable(name: "node", scope: !4535, file: !2, line: 115, type: !213)
!4544 = !DILocalVariable(name: "old_sb", scope: !4535, file: !2, line: 116, type: !1161)
!4545 = !DILocalVariable(name: "sb", scope: !4546, file: !2, line: 120, type: !1161)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !2, line: 119, column: 11)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !2, line: 119, column: 2)
!4548 = distinct !DILexicalBlock(scope: !4535, file: !2, line: 119, column: 2)
!4549 = !DILocalVariable(name: "__mptr", scope: !4550, file: !2, line: 124, type: !101)
!4550 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 124, column: 8)
!4551 = !DILocalVariable(name: "dir", scope: !4552, file: !2, line: 146, type: !924)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !2, line: 145, column: 31)
!4553 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 145, column: 7)
!4554 = !DILocalVariable(name: "dentry", scope: !4555, file: !2, line: 152, type: !924)
!4555 = distinct !DILexicalBlock(scope: !4553, file: !2, line: 151, column: 10)
!4556 = !DILocation(line: 111, column: 57, scope: !4535)
!4557 = !DILocation(line: 111, column: 77, scope: !4535)
!4558 = !DILocation(line: 113, column: 2, scope: !4535)
!4559 = !DILocation(line: 113, column: 16, scope: !4535)
!4560 = !DILocation(line: 114, column: 2, scope: !4535)
!4561 = !DILocation(line: 114, column: 21, scope: !4535)
!4562 = !DILocation(line: 115, column: 2, scope: !4535)
!4563 = !DILocation(line: 115, column: 21, scope: !4535)
!4564 = !DILocation(line: 116, column: 2, scope: !4535)
!4565 = !DILocation(line: 116, column: 22, scope: !4535)
!4566 = !DILocation(line: 118, column: 2, scope: !4535)
!4567 = !DILocation(line: 119, column: 2, scope: !4535)
!4568 = !DILocation(line: 120, column: 3, scope: !4546)
!4569 = !DILocation(line: 120, column: 23, scope: !4546)
!4570 = !DILocation(line: 121, column: 10, scope: !4546)
!4571 = !DILocation(line: 121, column: 8, scope: !4546)
!4572 = !DILocation(line: 122, column: 8, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 122, column: 7)
!4574 = !DILocation(line: 122, column: 7, scope: !4546)
!4575 = !DILocation(line: 123, column: 4, scope: !4573)
!4576 = !DILocation(line: 124, column: 8, scope: !4550)
!4577 = !DILocation(line: 124, column: 8, scope: !4546)
!4578 = !DILocation(line: 124, column: 6, scope: !4546)
!4579 = !DILocation(line: 125, column: 13, scope: !4546)
!4580 = !DILocation(line: 125, column: 3, scope: !4546)
!4581 = !DILocation(line: 126, column: 23, scope: !4546)
!4582 = !DILocation(line: 126, column: 27, scope: !4546)
!4583 = !DILocation(line: 126, column: 3, scope: !4546)
!4584 = !DILocation(line: 127, column: 15, scope: !4546)
!4585 = !DILocation(line: 127, column: 3, scope: !4546)
!4586 = !DILocation(line: 129, column: 12, scope: !4546)
!4587 = !DILocation(line: 129, column: 16, scope: !4546)
!4588 = !DILocation(line: 129, column: 9, scope: !4546)
!4589 = !DILocation(line: 130, column: 8, scope: !4546)
!4590 = !DILocation(line: 130, column: 15, scope: !4546)
!4591 = !DILocation(line: 130, column: 6, scope: !4546)
!4592 = !DILocation(line: 131, column: 8, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 131, column: 7)
!4594 = !DILocation(line: 131, column: 14, scope: !4593)
!4595 = !DILocation(line: 131, column: 11, scope: !4593)
!4596 = !DILocation(line: 131, column: 22, scope: !4593)
!4597 = !DILocation(line: 131, column: 47, scope: !4593)
!4598 = !DILocation(line: 131, column: 51, scope: !4593)
!4599 = !DILocation(line: 131, column: 26, scope: !4593)
!4600 = !DILocation(line: 131, column: 7, scope: !4546)
!4601 = !DILocation(line: 132, column: 4, scope: !4593)
!4602 = distinct !{!4602, !4603, !4604, !4605}
!4603 = !DILocation(line: 119, column: 2, scope: !4548)
!4604 = !DILocation(line: 161, column: 2, scope: !4548)
!4605 = !{!"llvm.loop.unroll.disable"}
!4606 = !DILocation(line: 133, column: 17, scope: !4546)
!4607 = !DILocation(line: 133, column: 11, scope: !4546)
!4608 = !DILocation(line: 133, column: 9, scope: !4546)
!4609 = !DILocation(line: 134, column: 3, scope: !4546)
!4610 = !DILocation(line: 135, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 135, column: 7)
!4612 = !DILocation(line: 135, column: 13, scope: !4611)
!4613 = !DILocation(line: 135, column: 10, scope: !4611)
!4614 = !DILocation(line: 135, column: 7, scope: !4546)
!4615 = !DILocation(line: 136, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 136, column: 8)
!4617 = distinct !DILexicalBlock(scope: !4611, file: !2, line: 135, column: 21)
!4618 = !DILocation(line: 136, column: 8, scope: !4617)
!4619 = !DILocation(line: 137, column: 22, scope: !4616)
!4620 = !DILocation(line: 137, column: 5, scope: !4616)
!4621 = !DILocation(line: 138, column: 13, scope: !4617)
!4622 = !DILocation(line: 138, column: 11, scope: !4617)
!4623 = !DILocation(line: 139, column: 3, scope: !4617)
!4624 = !DILocation(line: 140, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 140, column: 7)
!4626 = !DILocation(line: 140, column: 7, scope: !4546)
!4627 = !DILocation(line: 141, column: 4, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !2, line: 140, column: 25)
!4629 = !DILocation(line: 142, column: 4, scope: !4628)
!4630 = !DILocation(line: 145, column: 7, scope: !4553)
!4631 = !DILocation(line: 145, column: 7, scope: !4546)
!4632 = !DILocation(line: 146, column: 4, scope: !4552)
!4633 = !DILocation(line: 146, column: 19, scope: !4552)
!4634 = !DILocation(line: 146, column: 42, scope: !4552)
!4635 = !DILocation(line: 146, column: 25, scope: !4552)
!4636 = !DILocation(line: 147, column: 8, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4552, file: !2, line: 147, column: 8)
!4638 = !DILocation(line: 147, column: 8, scope: !4552)
!4639 = !DILocation(line: 148, column: 18, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !2, line: 147, column: 13)
!4641 = !DILocation(line: 148, column: 5, scope: !4640)
!4642 = !DILocation(line: 149, column: 10, scope: !4640)
!4643 = !DILocation(line: 149, column: 5, scope: !4640)
!4644 = !DILocation(line: 150, column: 4, scope: !4640)
!4645 = !DILocation(line: 151, column: 3, scope: !4553)
!4646 = !DILocation(line: 151, column: 3, scope: !4552)
!4647 = !DILocation(line: 152, column: 4, scope: !4555)
!4648 = !DILocation(line: 152, column: 19, scope: !4555)
!4649 = !DILocation(line: 153, column: 4, scope: !4555)
!4650 = !DILocation(line: 153, column: 34, scope: !4555)
!4651 = !DILocation(line: 153, column: 21, scope: !4555)
!4652 = !DILocation(line: 153, column: 19, scope: !4555)
!4653 = !DILocation(line: 154, column: 18, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4555, file: !2, line: 153, column: 43)
!4655 = !DILocation(line: 154, column: 5, scope: !4654)
!4656 = !DILocation(line: 155, column: 10, scope: !4654)
!4657 = !DILocation(line: 155, column: 5, scope: !4654)
!4658 = distinct !{!4658, !4649, !4659, !4660, !4605}
!4659 = !DILocation(line: 156, column: 4, scope: !4555)
!4660 = !{!"llvm.loop.mustprogress"}
!4661 = !DILocation(line: 157, column: 3, scope: !4553)
!4662 = !DILocation(line: 158, column: 8, scope: !4546)
!4663 = !DILocation(line: 158, column: 3, scope: !4546)
!4664 = !DILocation(line: 160, column: 3, scope: !4546)
!4665 = !DILocation(line: 161, column: 2, scope: !4547)
!4666 = !DILocation(line: 119, column: 2, scope: !4547)
!4667 = !DILocation(line: 162, column: 2, scope: !4535)
!4668 = !DILocation(line: 163, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4535, file: !2, line: 163, column: 6)
!4670 = !DILocation(line: 163, column: 6, scope: !4535)
!4671 = !DILocation(line: 164, column: 20, scope: !4669)
!4672 = !DILocation(line: 164, column: 3, scope: !4669)
!4673 = !DILocation(line: 165, column: 1, scope: !4535)
!4674 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4675, file: !4675, line: 782, type: !2380, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4675 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4676 = !DILocation(line: 784, column: 2, scope: !4674)
!4677 = !DILocation(line: 786, column: 2, scope: !4674)
!4678 = !DILocation(line: 786, column: 2, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4674, file: !4675, line: 786, column: 2)
!4680 = !DILocation(line: 787, column: 2, scope: !4674)
!4681 = !DILocation(line: 787, column: 2, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4674, file: !4675, line: 787, column: 2)
!4683 = !DILocation(line: 789, column: 1, scope: !4674)
!4684 = distinct !DISubprogram(name: "spin_lock", scope: !4685, file: !4685, line: 349, type: !4686, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4688)
!4685 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !1595}
!4688 = !{!4689}
!4689 = !DILocalVariable(name: "lock", arg: 1, scope: !4684, file: !4685, line: 349, type: !1595)
!4690 = !DILocation(line: 349, column: 51, scope: !4684)
!4691 = !DILocation(line: 351, column: 2, scope: !4684)
!4692 = !DILocation(line: 352, column: 1, scope: !4684)
!4693 = distinct !DISubprogram(name: "hlist_del_init_rcu", scope: !4694, file: !4694, line: 181, type: !4695, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4697)
!4694 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !213}
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "n", arg: 1, scope: !4693, file: !4694, line: 181, type: !213)
!4699 = !DILocation(line: 181, column: 58, scope: !4693)
!4700 = !DILocation(line: 183, column: 22, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4693, file: !4694, line: 183, column: 6)
!4702 = !DILocation(line: 183, column: 7, scope: !4701)
!4703 = !DILocation(line: 183, column: 6, scope: !4693)
!4704 = !DILocation(line: 184, column: 15, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !4694, line: 183, column: 26)
!4706 = !DILocation(line: 184, column: 3, scope: !4705)
!4707 = !DILocation(line: 185, column: 3, scope: !4705)
!4708 = !DILocation(line: 185, column: 3, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !4694, line: 185, column: 3)
!4710 = !DILocation(line: 185, column: 3, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4709, file: !4694, line: 185, column: 3)
!4712 = !DILocation(line: 185, column: 3, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !4694, line: 185, column: 3)
!4714 = !DILocation(line: 186, column: 2, scope: !4705)
!4715 = !DILocation(line: 187, column: 1, scope: !4693)
!4716 = distinct !DISubprogram(name: "spin_unlock", scope: !4685, file: !4685, line: 389, type: !4686, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4717)
!4717 = !{!4718}
!4718 = !DILocalVariable(name: "lock", arg: 1, scope: !4716, file: !4685, line: 389, type: !1595)
!4719 = !DILocation(line: 389, column: 53, scope: !4716)
!4720 = !DILocation(line: 391, column: 2, scope: !4716)
!4721 = !DILocation(line: 392, column: 1, scope: !4716)
!4722 = distinct !DISubprogram(name: "atomic_inc_not_zero", scope: !4723, file: !4723, line: 1522, type: !4724, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4727)
!4723 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!800, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!4727 = !{!4728}
!4728 = !DILocalVariable(name: "v", arg: 1, scope: !4722, file: !4723, line: 1522, type: !4726)
!4729 = !DILocation(line: 1522, column: 31, scope: !4722)
!4730 = !DILocation(line: 1524, column: 2, scope: !4722)
!4731 = !DILocation(line: 1524, column: 2, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 1524, column: 2)
!4733 = !DILocation(line: 1525, column: 31, scope: !4722)
!4734 = !DILocation(line: 1525, column: 2, scope: !4722)
!4735 = !DILocation(line: 1526, column: 33, scope: !4722)
!4736 = !DILocation(line: 1526, column: 9, scope: !4722)
!4737 = !DILocation(line: 1526, column: 2, scope: !4722)
!4738 = !DISubprogram(name: "igrab", scope: !83, file: !83, line: 2868, type: !4739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!959, !959}
!4741 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4675, file: !4675, line: 813, type: !2380, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4742 = !DILocation(line: 815, column: 2, scope: !4741)
!4743 = !DILocation(line: 815, column: 2, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !4675, line: 815, column: 2)
!4745 = !DILocation(line: 818, column: 2, scope: !4741)
!4746 = !DILocation(line: 819, column: 2, scope: !4741)
!4747 = !DILocation(line: 819, column: 2, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4741, file: !4675, line: 819, column: 2)
!4749 = !DILocation(line: 820, column: 1, scope: !4741)
!4750 = !DISubprogram(name: "deactivate_super", scope: !83, file: !83, line: 2413, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4751 = !DISubprogram(name: "d_find_any_alias", scope: !926, file: !926, line: 240, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!924, !959}
!4754 = !DISubprogram(name: "d_invalidate", scope: !926, file: !926, line: 246, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4755 = !DISubprogram(name: "dput", scope: !926, file: !926, line: 368, type: !2810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4756 = !DISubprogram(name: "d_find_alias", scope: !926, file: !926, line: 256, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4757 = !DISubprogram(name: "iput", scope: !83, file: !83, line: 2459, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4758 = distinct !DISubprogram(name: "proc_alloc_inode", scope: !2, file: !2, line: 63, type: !2402, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4759)
!4759 = !{!4760, !4761}
!4760 = !DILocalVariable(name: "sb", arg: 1, scope: !4758, file: !2, line: 63, type: !1161)
!4761 = !DILocalVariable(name: "ei", scope: !4758, file: !2, line: 65, type: !218)
!4762 = !DILocation(line: 63, column: 59, scope: !4758)
!4763 = !DILocation(line: 65, column: 2, scope: !4758)
!4764 = !DILocation(line: 65, column: 21, scope: !4758)
!4765 = !DILocation(line: 67, column: 22, scope: !4758)
!4766 = !DILocation(line: 67, column: 26, scope: !4758)
!4767 = !DILocation(line: 67, column: 7, scope: !4758)
!4768 = !DILocation(line: 67, column: 5, scope: !4758)
!4769 = !DILocation(line: 68, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4758, file: !2, line: 68, column: 6)
!4771 = !DILocation(line: 68, column: 6, scope: !4758)
!4772 = !DILocation(line: 69, column: 3, scope: !4770)
!4773 = !DILocation(line: 70, column: 2, scope: !4758)
!4774 = !DILocation(line: 70, column: 6, scope: !4758)
!4775 = !DILocation(line: 70, column: 10, scope: !4758)
!4776 = !DILocation(line: 71, column: 2, scope: !4758)
!4777 = !DILocation(line: 71, column: 6, scope: !4758)
!4778 = !DILocation(line: 71, column: 9, scope: !4758)
!4779 = !DILocation(line: 72, column: 2, scope: !4758)
!4780 = !DILocation(line: 72, column: 6, scope: !4758)
!4781 = !DILocation(line: 72, column: 23, scope: !4758)
!4782 = !DILocation(line: 73, column: 2, scope: !4758)
!4783 = !DILocation(line: 73, column: 6, scope: !4758)
!4784 = !DILocation(line: 73, column: 10, scope: !4758)
!4785 = !DILocation(line: 74, column: 2, scope: !4758)
!4786 = !DILocation(line: 74, column: 6, scope: !4758)
!4787 = !DILocation(line: 74, column: 13, scope: !4758)
!4788 = !DILocation(line: 75, column: 2, scope: !4758)
!4789 = !DILocation(line: 75, column: 6, scope: !4758)
!4790 = !DILocation(line: 75, column: 19, scope: !4758)
!4791 = !DILocation(line: 76, column: 19, scope: !4758)
!4792 = !DILocation(line: 76, column: 23, scope: !4758)
!4793 = !DILocation(line: 76, column: 2, scope: !4758)
!4794 = !DILocation(line: 77, column: 2, scope: !4758)
!4795 = !DILocation(line: 77, column: 6, scope: !4758)
!4796 = !DILocation(line: 77, column: 13, scope: !4758)
!4797 = !DILocation(line: 78, column: 10, scope: !4758)
!4798 = !DILocation(line: 78, column: 14, scope: !4758)
!4799 = !DILocation(line: 78, column: 2, scope: !4758)
!4800 = !DILocation(line: 79, column: 1, scope: !4758)
!4801 = distinct !DISubprogram(name: "proc_free_inode", scope: !2, file: !2, line: 81, type: !2406, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4802)
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "inode", arg: 1, scope: !4801, file: !2, line: 81, type: !959)
!4804 = !DILocation(line: 81, column: 43, scope: !4801)
!4805 = !DILocation(line: 83, column: 18, scope: !4801)
!4806 = !DILocation(line: 83, column: 44, scope: !4801)
!4807 = !DILocation(line: 83, column: 37, scope: !4801)
!4808 = !DILocation(line: 83, column: 2, scope: !4801)
!4809 = !DILocation(line: 84, column: 1, scope: !4801)
!4810 = distinct !DISubprogram(name: "proc_evict_inode", scope: !2, file: !2, line: 31, type: !2406, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4811)
!4811 = !{!4812, !4813, !4814, !4815}
!4812 = !DILocalVariable(name: "inode", arg: 1, scope: !4810, file: !2, line: 31, type: !959)
!4813 = !DILocalVariable(name: "de", scope: !4810, file: !2, line: 33, type: !4280)
!4814 = !DILocalVariable(name: "head", scope: !4810, file: !2, line: 34, type: !4338)
!4815 = !DILocalVariable(name: "ei", scope: !4810, file: !2, line: 35, type: !218)
!4816 = !DILocation(line: 31, column: 44, scope: !4810)
!4817 = !DILocation(line: 33, column: 2, scope: !4810)
!4818 = !DILocation(line: 33, column: 25, scope: !4810)
!4819 = !DILocation(line: 34, column: 2, scope: !4810)
!4820 = !DILocation(line: 34, column: 27, scope: !4810)
!4821 = !DILocation(line: 35, column: 2, scope: !4810)
!4822 = !DILocation(line: 35, column: 21, scope: !4810)
!4823 = !DILocation(line: 35, column: 33, scope: !4810)
!4824 = !DILocation(line: 35, column: 26, scope: !4810)
!4825 = !DILocation(line: 37, column: 30, scope: !4810)
!4826 = !DILocation(line: 37, column: 37, scope: !4810)
!4827 = !DILocation(line: 37, column: 2, scope: !4810)
!4828 = !DILocation(line: 38, column: 14, scope: !4810)
!4829 = !DILocation(line: 38, column: 2, scope: !4810)
!4830 = !DILocation(line: 41, column: 6, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 41, column: 6)
!4832 = !DILocation(line: 41, column: 10, scope: !4831)
!4833 = !DILocation(line: 41, column: 6, scope: !4810)
!4834 = !DILocation(line: 42, column: 24, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4831, file: !2, line: 41, column: 15)
!4836 = !DILocation(line: 42, column: 3, scope: !4835)
!4837 = !DILocation(line: 43, column: 3, scope: !4835)
!4838 = !DILocation(line: 43, column: 7, scope: !4835)
!4839 = !DILocation(line: 43, column: 11, scope: !4835)
!4840 = !DILocation(line: 44, column: 2, scope: !4835)
!4841 = !DILocation(line: 47, column: 7, scope: !4810)
!4842 = !DILocation(line: 47, column: 11, scope: !4810)
!4843 = !DILocation(line: 47, column: 5, scope: !4810)
!4844 = !DILocation(line: 48, column: 6, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 48, column: 6)
!4846 = !DILocation(line: 48, column: 6, scope: !4810)
!4847 = !DILocation(line: 49, column: 11, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 48, column: 10)
!4849 = !DILocation(line: 49, column: 3, scope: !4848)
!4850 = !DILocation(line: 50, column: 3, scope: !4848)
!4851 = !DILocation(line: 50, column: 7, scope: !4848)
!4852 = !DILocation(line: 50, column: 11, scope: !4848)
!4853 = !DILocation(line: 51, column: 2, scope: !4848)
!4854 = !DILocation(line: 53, column: 9, scope: !4810)
!4855 = !DILocation(line: 53, column: 13, scope: !4810)
!4856 = !DILocation(line: 53, column: 7, scope: !4810)
!4857 = !DILocation(line: 54, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4810, file: !2, line: 54, column: 6)
!4859 = !DILocation(line: 54, column: 6, scope: !4810)
!4860 = !DILocation(line: 55, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !2, line: 54, column: 12)
!4862 = !DILocation(line: 55, column: 3, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4861, file: !2, line: 55, column: 3)
!4864 = !DILocation(line: 55, column: 3, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4863, file: !2, line: 55, column: 3)
!4866 = !DILocation(line: 55, column: 3, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 55, column: 3)
!4868 = !DILocation(line: 55, column: 3, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 55, column: 3)
!4870 = !DILocation(line: 56, column: 24, scope: !4861)
!4871 = !DILocation(line: 56, column: 31, scope: !4861)
!4872 = !DILocation(line: 56, column: 3, scope: !4861)
!4873 = !DILocation(line: 57, column: 2, scope: !4861)
!4874 = !DILocation(line: 58, column: 1, scope: !4810)
!4875 = distinct !DISubprogram(name: "proc_show_options", scope: !2, file: !2, line: 179, type: !2450, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879}
!4877 = !DILocalVariable(name: "seq", arg: 1, scope: !4875, file: !2, line: 179, type: !1912)
!4878 = !DILocalVariable(name: "root", arg: 2, scope: !4875, file: !2, line: 179, type: !924)
!4879 = !DILocalVariable(name: "fs_info", scope: !4875, file: !2, line: 181, type: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_fs_info", file: !197, line: 61, size: 320, elements: !4882)
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4888}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns", scope: !4881, file: !197, line: 62, baseType: !258, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "proc_self", scope: !4881, file: !197, line: 63, baseType: !924, size: 64, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "proc_thread_self", scope: !4881, file: !197, line: 64, baseType: !924, size: 64, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pid_gid", scope: !4881, file: !197, line: 65, baseType: !700, size: 32, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "hide_pid", scope: !4881, file: !197, line: 66, baseType: !196, size: 32, offset: 224)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "pidonly", scope: !4881, file: !197, line: 67, baseType: !203, size: 32, offset: 256)
!4889 = !DILocation(line: 179, column: 47, scope: !4875)
!4890 = !DILocation(line: 179, column: 67, scope: !4875)
!4891 = !DILocation(line: 181, column: 2, scope: !4875)
!4892 = !DILocation(line: 181, column: 23, scope: !4875)
!4893 = !DILocation(line: 181, column: 46, scope: !4875)
!4894 = !DILocation(line: 181, column: 52, scope: !4875)
!4895 = !DILocation(line: 181, column: 33, scope: !4875)
!4896 = !DILocation(line: 183, column: 14, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 183, column: 6)
!4898 = !DILocation(line: 183, column: 23, scope: !4897)
!4899 = !DILocation(line: 183, column: 32, scope: !4897)
!4900 = !DILocation(line: 183, column: 7, scope: !4897)
!4901 = !DILocation(line: 183, column: 6, scope: !4875)
!4902 = !DILocation(line: 184, column: 14, scope: !4897)
!4903 = !DILocation(line: 184, column: 62, scope: !4897)
!4904 = !DILocation(line: 184, column: 71, scope: !4897)
!4905 = !DILocation(line: 184, column: 30, scope: !4897)
!4906 = !DILocation(line: 184, column: 3, scope: !4897)
!4907 = !DILocation(line: 185, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 185, column: 6)
!4909 = !DILocation(line: 185, column: 15, scope: !4908)
!4910 = !DILocation(line: 185, column: 24, scope: !4908)
!4911 = !DILocation(line: 185, column: 6, scope: !4875)
!4912 = !DILocation(line: 186, column: 14, scope: !4908)
!4913 = !DILocation(line: 186, column: 46, scope: !4908)
!4914 = !DILocation(line: 186, column: 55, scope: !4908)
!4915 = !DILocation(line: 186, column: 34, scope: !4908)
!4916 = !DILocation(line: 186, column: 3, scope: !4908)
!4917 = !DILocation(line: 187, column: 6, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 187, column: 6)
!4919 = !DILocation(line: 187, column: 15, scope: !4918)
!4920 = !DILocation(line: 187, column: 23, scope: !4918)
!4921 = !DILocation(line: 187, column: 6, scope: !4875)
!4922 = !DILocation(line: 188, column: 14, scope: !4918)
!4923 = !DILocation(line: 188, column: 3, scope: !4918)
!4924 = !DILocation(line: 191, column: 1, scope: !4875)
!4925 = !DILocation(line: 190, column: 2, scope: !4875)
!4926 = distinct !DISubprogram(name: "proc_entry_rundown", scope: !2, file: !2, line: 261, type: !4927, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !4280}
!4929 = !{!4930, !4931, !4932, !4934}
!4930 = !DILocalVariable(name: "de", arg: 1, scope: !4926, file: !2, line: 261, type: !4280)
!4931 = !DILocalVariable(name: "c", scope: !4926, file: !2, line: 263, type: !1416)
!4932 = !DILocalVariable(name: "pdeo", scope: !4933, file: !2, line: 273, type: !4398)
!4933 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 272, column: 40)
!4934 = !DILocalVariable(name: "__mptr", scope: !4935, file: !2, line: 274, type: !101)
!4935 = distinct !DILexicalBlock(scope: !4933, file: !2, line: 274, column: 10)
!4936 = !DILocation(line: 261, column: 48, scope: !4926)
!4937 = !DILocation(line: 263, column: 2, scope: !4926)
!4938 = !DILocation(line: 265, column: 2, scope: !4926)
!4939 = !DILocation(line: 265, column: 6, scope: !4926)
!4940 = !DILocation(line: 265, column: 28, scope: !4926)
!4941 = !DILocation(line: 266, column: 31, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 266, column: 6)
!4943 = !DILocation(line: 266, column: 35, scope: !4942)
!4944 = !DILocation(line: 266, column: 6, scope: !4942)
!4945 = !DILocation(line: 266, column: 43, scope: !4942)
!4946 = !DILocation(line: 266, column: 6, scope: !4926)
!4947 = !DILocation(line: 267, column: 3, scope: !4942)
!4948 = !DILocation(line: 271, column: 13, scope: !4926)
!4949 = !DILocation(line: 271, column: 17, scope: !4926)
!4950 = !DILocation(line: 271, column: 2, scope: !4926)
!4951 = !DILocation(line: 272, column: 2, scope: !4926)
!4952 = !DILocation(line: 272, column: 22, scope: !4926)
!4953 = !DILocation(line: 272, column: 26, scope: !4926)
!4954 = !DILocation(line: 272, column: 10, scope: !4926)
!4955 = !DILocation(line: 272, column: 9, scope: !4926)
!4956 = !DILocation(line: 273, column: 3, scope: !4933)
!4957 = !DILocation(line: 273, column: 22, scope: !4933)
!4958 = !DILocation(line: 274, column: 10, scope: !4935)
!4959 = !DILocation(line: 274, column: 10, scope: !4933)
!4960 = !DILocation(line: 274, column: 8, scope: !4933)
!4961 = !DILocation(line: 275, column: 14, scope: !4933)
!4962 = !DILocation(line: 275, column: 18, scope: !4933)
!4963 = !DILocation(line: 275, column: 3, scope: !4933)
!4964 = !DILocation(line: 276, column: 14, scope: !4933)
!4965 = !DILocation(line: 276, column: 18, scope: !4933)
!4966 = !DILocation(line: 276, column: 3, scope: !4933)
!4967 = !DILocation(line: 277, column: 2, scope: !4926)
!4968 = distinct !{!4968, !4951, !4967, !4660, !4605}
!4969 = !DILocation(line: 278, column: 15, scope: !4926)
!4970 = !DILocation(line: 278, column: 19, scope: !4926)
!4971 = !DILocation(line: 278, column: 2, scope: !4926)
!4972 = !DILocation(line: 279, column: 1, scope: !4926)
!4973 = distinct !DISubprogram(name: "atomic_add_return", scope: !4723, file: !4723, line: 120, type: !4974, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4976)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!103, !103, !4726}
!4976 = !{!4977, !4978}
!4977 = !DILocalVariable(name: "i", arg: 1, scope: !4973, file: !4723, line: 120, type: !103)
!4978 = !DILocalVariable(name: "v", arg: 2, scope: !4973, file: !4723, line: 120, type: !4726)
!4979 = !DILocation(line: 120, column: 23, scope: !4973)
!4980 = !DILocation(line: 120, column: 36, scope: !4973)
!4981 = !DILocation(line: 122, column: 2, scope: !4973)
!4982 = !DILocation(line: 122, column: 2, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4973, file: !4723, line: 122, column: 2)
!4984 = !DILocation(line: 123, column: 31, scope: !4973)
!4985 = !DILocation(line: 123, column: 2, scope: !4973)
!4986 = !DILocation(line: 124, column: 31, scope: !4973)
!4987 = !DILocation(line: 124, column: 34, scope: !4973)
!4988 = !DILocation(line: 124, column: 9, scope: !4973)
!4989 = !DILocation(line: 124, column: 2, scope: !4973)
!4990 = !DISubprogram(name: "wait_for_completion", scope: !1417, file: !1417, line: 102, type: !4991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !2025}
!4993 = distinct !DISubprogram(name: "list_empty", scope: !4994, file: !4994, line: 371, type: !4995, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4999)
!4994 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!103, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!4999 = !{!5000}
!5000 = !DILocalVariable(name: "head", arg: 1, scope: !4993, file: !4994, line: 371, type: !4997)
!5001 = !DILocation(line: 371, column: 54, scope: !4993)
!5002 = !DILocation(line: 373, column: 9, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4993, file: !4994, line: 373, column: 9)
!5004 = !DILocation(line: 373, column: 9, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5003, file: !4994, line: 373, column: 9)
!5006 = !DILocation(line: 373, column: 34, scope: !4993)
!5007 = !DILocation(line: 373, column: 31, scope: !4993)
!5008 = !DILocation(line: 373, column: 2, scope: !4993)
!5009 = distinct !DISubprogram(name: "close_pdeo", scope: !2, file: !2, line: 224, type: !5010, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !4280, !4398}
!5012 = !{!5013, !5014, !5015, !5018, !5020}
!5013 = !DILocalVariable(name: "pde", arg: 1, scope: !5009, file: !2, line: 224, type: !4280)
!5014 = !DILocalVariable(name: "pdeo", arg: 2, scope: !5009, file: !2, line: 224, type: !4398)
!5015 = !DILocalVariable(name: "c", scope: !5016, file: !2, line: 236, type: !1416)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 234, column: 21)
!5017 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 234, column: 6)
!5018 = !DILocalVariable(name: "file", scope: !5019, file: !2, line: 241, type: !620)
!5019 = distinct !DILexicalBlock(scope: !5017, file: !2, line: 240, column: 9)
!5020 = !DILocalVariable(name: "c", scope: !5019, file: !2, line: 242, type: !2025)
!5021 = !DILocation(line: 224, column: 47, scope: !5009)
!5022 = !DILocation(line: 224, column: 71, scope: !5009)
!5023 = !DILocation(line: 234, column: 6, scope: !5017)
!5024 = !DILocation(line: 234, column: 12, scope: !5017)
!5025 = !{i8 0, i8 2}
!5026 = !DILocation(line: 234, column: 6, scope: !5009)
!5027 = !DILocation(line: 236, column: 3, scope: !5016)
!5028 = !DILocation(line: 237, column: 3, scope: !5016)
!5029 = !DILocation(line: 237, column: 9, scope: !5016)
!5030 = !DILocation(line: 237, column: 11, scope: !5016)
!5031 = !DILocation(line: 238, column: 16, scope: !5016)
!5032 = !DILocation(line: 238, column: 21, scope: !5016)
!5033 = !DILocation(line: 238, column: 3, scope: !5016)
!5034 = !DILocation(line: 239, column: 3, scope: !5016)
!5035 = !DILocation(line: 240, column: 2, scope: !5017)
!5036 = !DILocation(line: 240, column: 2, scope: !5016)
!5037 = !DILocation(line: 241, column: 3, scope: !5019)
!5038 = !DILocation(line: 241, column: 16, scope: !5019)
!5039 = !DILocation(line: 242, column: 3, scope: !5019)
!5040 = !DILocation(line: 242, column: 22, scope: !5019)
!5041 = !DILocation(line: 244, column: 3, scope: !5019)
!5042 = !DILocation(line: 244, column: 9, scope: !5019)
!5043 = !DILocation(line: 244, column: 17, scope: !5019)
!5044 = !DILocation(line: 245, column: 16, scope: !5019)
!5045 = !DILocation(line: 245, column: 21, scope: !5019)
!5046 = !DILocation(line: 245, column: 3, scope: !5019)
!5047 = !DILocation(line: 247, column: 10, scope: !5019)
!5048 = !DILocation(line: 247, column: 16, scope: !5019)
!5049 = !DILocation(line: 247, column: 8, scope: !5019)
!5050 = !DILocation(line: 248, column: 3, scope: !5019)
!5051 = !DILocation(line: 248, column: 8, scope: !5019)
!5052 = !DILocation(line: 248, column: 18, scope: !5019)
!5053 = !DILocation(line: 248, column: 42, scope: !5019)
!5054 = !DILocation(line: 248, column: 31, scope: !5019)
!5055 = !DILocation(line: 248, column: 49, scope: !5019)
!5056 = !DILocation(line: 250, column: 14, scope: !5019)
!5057 = !DILocation(line: 250, column: 19, scope: !5019)
!5058 = !DILocation(line: 250, column: 3, scope: !5019)
!5059 = !DILocation(line: 252, column: 13, scope: !5019)
!5060 = !DILocation(line: 252, column: 19, scope: !5019)
!5061 = !DILocation(line: 252, column: 3, scope: !5019)
!5062 = !DILocation(line: 253, column: 7, scope: !5019)
!5063 = !DILocation(line: 253, column: 13, scope: !5019)
!5064 = !DILocation(line: 253, column: 5, scope: !5019)
!5065 = !DILocation(line: 254, column: 16, scope: !5019)
!5066 = !DILocation(line: 254, column: 21, scope: !5019)
!5067 = !DILocation(line: 254, column: 3, scope: !5019)
!5068 = !DILocation(line: 255, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5019, file: !2, line: 255, column: 7)
!5070 = !DILocation(line: 255, column: 7, scope: !5019)
!5071 = !DILocation(line: 256, column: 13, scope: !5069)
!5072 = !DILocation(line: 256, column: 4, scope: !5069)
!5073 = !DILocation(line: 257, column: 19, scope: !5019)
!5074 = !DILocation(line: 257, column: 37, scope: !5019)
!5075 = !DILocation(line: 257, column: 3, scope: !5019)
!5076 = !DILocation(line: 258, column: 2, scope: !5017)
!5077 = !DILocation(line: 259, column: 1, scope: !5009)
!5078 = distinct !DISubprogram(name: "proc_get_link", scope: !2, file: !2, line: 637, type: !983, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5079)
!5079 = !{!5080, !5081, !5082, !5083}
!5080 = !DILocalVariable(name: "dentry", arg: 1, scope: !5078, file: !2, line: 637, type: !924)
!5081 = !DILocalVariable(name: "inode", arg: 2, scope: !5078, file: !2, line: 638, type: !959)
!5082 = !DILocalVariable(name: "done", arg: 3, scope: !5078, file: !2, line: 639, type: !985)
!5083 = !DILocalVariable(name: "pde", scope: !5078, file: !2, line: 641, type: !4280)
!5084 = !DILocation(line: 637, column: 49, scope: !5078)
!5085 = !DILocation(line: 638, column: 20, scope: !5078)
!5086 = !DILocation(line: 639, column: 27, scope: !5078)
!5087 = !DILocation(line: 641, column: 2, scope: !5078)
!5088 = !DILocation(line: 641, column: 25, scope: !5078)
!5089 = !DILocation(line: 641, column: 35, scope: !5078)
!5090 = !DILocation(line: 641, column: 31, scope: !5078)
!5091 = !DILocation(line: 642, column: 15, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5078, file: !2, line: 642, column: 6)
!5093 = !DILocation(line: 642, column: 7, scope: !5092)
!5094 = !DILocation(line: 642, column: 6, scope: !5078)
!5095 = !DILocation(line: 643, column: 10, scope: !5092)
!5096 = !DILocation(line: 643, column: 3, scope: !5092)
!5097 = !DILocation(line: 644, column: 19, scope: !5078)
!5098 = !DILocation(line: 644, column: 40, scope: !5078)
!5099 = !DILocation(line: 644, column: 2, scope: !5078)
!5100 = !DILocation(line: 645, column: 9, scope: !5078)
!5101 = !DILocation(line: 645, column: 14, scope: !5078)
!5102 = !DILocation(line: 645, column: 2, scope: !5078)
!5103 = !DILocation(line: 646, column: 1, scope: !5078)
!5104 = distinct !DISubprogram(name: "proc_get_inode", scope: !2, file: !2, line: 652, type: !5105, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5107)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!959, !1161, !4280}
!5107 = !{!5108, !5109, !5110}
!5108 = !DILocalVariable(name: "sb", arg: 1, scope: !5104, file: !2, line: 652, type: !1161)
!5109 = !DILocalVariable(name: "de", arg: 2, scope: !5104, file: !2, line: 652, type: !4280)
!5110 = !DILocalVariable(name: "inode", scope: !5104, file: !2, line: 654, type: !959)
!5111 = !DILocation(line: 652, column: 50, scope: !5104)
!5112 = !DILocation(line: 652, column: 77, scope: !5104)
!5113 = !DILocation(line: 654, column: 2, scope: !5104)
!5114 = !DILocation(line: 654, column: 16, scope: !5104)
!5115 = !DILocation(line: 654, column: 34, scope: !5104)
!5116 = !DILocation(line: 654, column: 24, scope: !5104)
!5117 = !DILocation(line: 656, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 656, column: 6)
!5119 = !DILocation(line: 656, column: 6, scope: !5104)
!5120 = !DILocation(line: 657, column: 11, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5118, file: !2, line: 656, column: 14)
!5122 = !DILocation(line: 657, column: 3, scope: !5121)
!5123 = !DILocation(line: 658, column: 3, scope: !5121)
!5124 = !DILocation(line: 661, column: 21, scope: !5104)
!5125 = !DILocation(line: 661, column: 25, scope: !5104)
!5126 = !DILocation(line: 661, column: 2, scope: !5104)
!5127 = !DILocation(line: 661, column: 9, scope: !5104)
!5128 = !DILocation(line: 661, column: 19, scope: !5104)
!5129 = !DILocation(line: 662, column: 17, scope: !5104)
!5130 = !DILocation(line: 662, column: 21, scope: !5104)
!5131 = !DILocation(line: 662, column: 2, scope: !5104)
!5132 = !DILocation(line: 662, column: 9, scope: !5104)
!5133 = !DILocation(line: 662, column: 15, scope: !5104)
!5134 = !DILocation(line: 663, column: 2, scope: !5104)
!5135 = !DILocation(line: 663, column: 9, scope: !5104)
!5136 = !DILocation(line: 663, column: 19, scope: !5104)
!5137 = !DILocation(line: 663, column: 26, scope: !5104)
!5138 = !DILocation(line: 663, column: 36, scope: !5104)
!5139 = !DILocation(line: 663, column: 60, scope: !5104)
!5140 = !DILocation(line: 663, column: 34, scope: !5104)
!5141 = !DILocation(line: 664, column: 23, scope: !5104)
!5142 = !DILocation(line: 664, column: 9, scope: !5104)
!5143 = !DILocation(line: 664, column: 2, scope: !5104)
!5144 = !DILocation(line: 664, column: 17, scope: !5104)
!5145 = !DILocation(line: 664, column: 21, scope: !5104)
!5146 = !DILocation(line: 665, column: 19, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 665, column: 6)
!5148 = !DILocation(line: 665, column: 6, scope: !5147)
!5149 = !DILocation(line: 665, column: 6, scope: !5104)
!5150 = !DILocation(line: 666, column: 24, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 665, column: 24)
!5152 = !DILocation(line: 666, column: 3, scope: !5151)
!5153 = !DILocation(line: 667, column: 10, scope: !5151)
!5154 = !DILocation(line: 667, column: 3, scope: !5151)
!5155 = !DILocation(line: 670, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 670, column: 6)
!5157 = !DILocation(line: 670, column: 10, scope: !5156)
!5158 = !DILocation(line: 670, column: 6, scope: !5104)
!5159 = !DILocation(line: 671, column: 19, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !2, line: 670, column: 16)
!5161 = !DILocation(line: 671, column: 23, scope: !5160)
!5162 = !DILocation(line: 671, column: 3, scope: !5160)
!5163 = !DILocation(line: 671, column: 10, scope: !5160)
!5164 = !DILocation(line: 671, column: 17, scope: !5160)
!5165 = !DILocation(line: 672, column: 3, scope: !5160)
!5166 = !DILocation(line: 672, column: 10, scope: !5160)
!5167 = !DILocation(line: 672, column: 18, scope: !5160)
!5168 = !DILocation(line: 672, column: 22, scope: !5160)
!5169 = !DILocation(line: 673, column: 3, scope: !5160)
!5170 = !DILocation(line: 673, column: 10, scope: !5160)
!5171 = !DILocation(line: 673, column: 18, scope: !5160)
!5172 = !DILocation(line: 673, column: 22, scope: !5160)
!5173 = !DILocation(line: 674, column: 2, scope: !5160)
!5174 = !DILocation(line: 675, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 675, column: 6)
!5176 = !DILocation(line: 675, column: 10, scope: !5175)
!5177 = !DILocation(line: 675, column: 6, scope: !5104)
!5178 = !DILocation(line: 676, column: 19, scope: !5175)
!5179 = !DILocation(line: 676, column: 23, scope: !5175)
!5180 = !DILocation(line: 676, column: 3, scope: !5175)
!5181 = !DILocation(line: 676, column: 10, scope: !5175)
!5182 = !DILocation(line: 676, column: 17, scope: !5175)
!5183 = !DILocation(line: 677, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 677, column: 6)
!5185 = !DILocation(line: 677, column: 10, scope: !5184)
!5186 = !DILocation(line: 677, column: 6, scope: !5104)
!5187 = !DILocation(line: 678, column: 13, scope: !5184)
!5188 = !DILocation(line: 678, column: 20, scope: !5184)
!5189 = !DILocation(line: 678, column: 24, scope: !5184)
!5190 = !DILocation(line: 678, column: 3, scope: !5184)
!5191 = !DILocation(line: 680, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 680, column: 6)
!5193 = !DILocation(line: 680, column: 6, scope: !5104)
!5194 = !DILocation(line: 681, column: 17, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !2, line: 680, column: 30)
!5196 = !DILocation(line: 681, column: 21, scope: !5195)
!5197 = !DILocation(line: 681, column: 3, scope: !5195)
!5198 = !DILocation(line: 681, column: 10, scope: !5195)
!5199 = !DILocation(line: 681, column: 15, scope: !5195)
!5200 = !DILocation(line: 682, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !2, line: 682, column: 7)
!5202 = !DILocation(line: 682, column: 11, scope: !5201)
!5203 = !DILocation(line: 682, column: 21, scope: !5201)
!5204 = !DILocation(line: 682, column: 7, scope: !5195)
!5205 = !DILocation(line: 683, column: 4, scope: !5201)
!5206 = !DILocation(line: 683, column: 11, scope: !5201)
!5207 = !DILocation(line: 683, column: 17, scope: !5201)
!5208 = !DILocation(line: 685, column: 4, scope: !5201)
!5209 = !DILocation(line: 685, column: 11, scope: !5201)
!5210 = !DILocation(line: 685, column: 17, scope: !5201)
!5211 = !DILocation(line: 687, column: 7, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5195, file: !2, line: 687, column: 7)
!5213 = !DILocation(line: 687, column: 11, scope: !5212)
!5214 = !DILocation(line: 687, column: 21, scope: !5212)
!5215 = !DILocation(line: 687, column: 7, scope: !5195)
!5216 = !DILocation(line: 688, column: 8, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !2, line: 688, column: 8)
!5218 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 687, column: 40)
!5219 = !DILocation(line: 688, column: 12, scope: !5217)
!5220 = !DILocation(line: 688, column: 22, scope: !5217)
!5221 = !DILocation(line: 688, column: 8, scope: !5218)
!5222 = !DILocation(line: 689, column: 5, scope: !5217)
!5223 = !DILocation(line: 689, column: 12, scope: !5217)
!5224 = !DILocation(line: 689, column: 18, scope: !5217)
!5225 = !DILocation(line: 691, column: 5, scope: !5217)
!5226 = !DILocation(line: 691, column: 12, scope: !5217)
!5227 = !DILocation(line: 691, column: 18, scope: !5217)
!5228 = !DILocation(line: 692, column: 3, scope: !5218)
!5229 = !DILocation(line: 694, column: 2, scope: !5195)
!5230 = !DILocation(line: 694, column: 13, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5192, file: !2, line: 694, column: 13)
!5232 = !DILocation(line: 694, column: 13, scope: !5192)
!5233 = !DILocation(line: 695, column: 17, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5231, file: !2, line: 694, column: 37)
!5235 = !DILocation(line: 695, column: 21, scope: !5234)
!5236 = !DILocation(line: 695, column: 3, scope: !5234)
!5237 = !DILocation(line: 695, column: 10, scope: !5234)
!5238 = !DILocation(line: 695, column: 15, scope: !5234)
!5239 = !DILocation(line: 696, column: 18, scope: !5234)
!5240 = !DILocation(line: 696, column: 22, scope: !5234)
!5241 = !DILocation(line: 696, column: 3, scope: !5234)
!5242 = !DILocation(line: 696, column: 10, scope: !5234)
!5243 = !DILocation(line: 696, column: 16, scope: !5234)
!5244 = !DILocation(line: 697, column: 2, scope: !5234)
!5245 = !DILocation(line: 697, column: 13, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5231, file: !2, line: 697, column: 13)
!5247 = !DILocation(line: 697, column: 13, scope: !5231)
!5248 = !DILocation(line: 698, column: 17, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5246, file: !2, line: 697, column: 37)
!5250 = !DILocation(line: 698, column: 21, scope: !5249)
!5251 = !DILocation(line: 698, column: 3, scope: !5249)
!5252 = !DILocation(line: 698, column: 10, scope: !5249)
!5253 = !DILocation(line: 698, column: 15, scope: !5249)
!5254 = !DILocation(line: 699, column: 3, scope: !5249)
!5255 = !DILocation(line: 699, column: 10, scope: !5249)
!5256 = !DILocation(line: 699, column: 16, scope: !5249)
!5257 = !DILocation(line: 700, column: 2, scope: !5249)
!5258 = !DILocation(line: 701, column: 3, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5246, file: !2, line: 700, column: 9)
!5260 = !DILocation(line: 701, column: 3, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5259, file: !2, line: 701, column: 3)
!5262 = !DILocation(line: 701, column: 3, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5261, file: !2, line: 701, column: 3)
!5264 = !DILocation(line: 701, column: 3, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5261, file: !2, line: 701, column: 3)
!5266 = !{i64 2154330422, i64 2154330451, i64 2154330497, i64 2154330555, i64 2154330609, i64 2154330663, i64 2154330718, i64 2154330749}
!5267 = !DILocation(line: 703, column: 9, scope: !5104)
!5268 = !DILocation(line: 703, column: 2, scope: !5104)
!5269 = !DILocation(line: 704, column: 1, scope: !5104)
!5270 = !DISubprogram(name: "new_inode", scope: !83, file: !83, line: 2932, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5271 = !DISubprogram(name: "pde_put", scope: !220, file: !220, line: 199, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5272 = !DISubprogram(name: "inode_set_ctime_current", scope: !83, file: !83, line: 1515, type: !5273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!1069, !959}
!5275 = distinct !DISubprogram(name: "PROC_I", scope: !220, file: !220, line: 113, type: !5276, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5278)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!218, !2834}
!5278 = !{!5279, !5280}
!5279 = !DILocalVariable(name: "inode", arg: 1, scope: !5275, file: !220, line: 113, type: !2834)
!5280 = !DILocalVariable(name: "__mptr", scope: !5281, file: !220, line: 115, type: !101)
!5281 = distinct !DILexicalBlock(scope: !5275, file: !220, line: 115, column: 9)
!5282 = !DILocation(line: 113, column: 61, scope: !5275)
!5283 = !DILocation(line: 115, column: 9, scope: !5281)
!5284 = !DILocation(line: 115, column: 9, scope: !5275)
!5285 = !DILocation(line: 115, column: 2, scope: !5275)
!5286 = distinct !DISubprogram(name: "is_empty_pde", scope: !220, file: !220, line: 201, type: !5287, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5291)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!800, !5289}
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!5291 = !{!5292}
!5292 = !DILocalVariable(name: "pde", arg: 1, scope: !5286, file: !220, line: 201, type: !5289)
!5293 = !DILocation(line: 201, column: 62, scope: !5286)
!5294 = !DILocation(line: 203, column: 9, scope: !5286)
!5295 = !DILocation(line: 203, column: 28, scope: !5286)
!5296 = !DILocation(line: 203, column: 32, scope: !5286)
!5297 = !DILocation(line: 203, column: 37, scope: !5286)
!5298 = !DILocation(line: 203, column: 31, scope: !5286)
!5299 = !DILocation(line: 0, scope: !5286)
!5300 = !DILocation(line: 203, column: 2, scope: !5286)
!5301 = !DISubprogram(name: "make_empty_dir_inode", scope: !83, file: !83, line: 3178, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5302 = !DISubprogram(name: "set_nlink", scope: !83, file: !83, line: 2330, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{null, !959, !13}
!5305 = !DISubprogram(name: "inode_init_once", scope: !83, file: !83, line: 2866, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5306 = !DISubprogram(name: "__rcu_read_lock", scope: !4675, file: !4675, line: 74, type: !2380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5307 = !DISubprogram(name: "_raw_spin_lock", scope: !5308, file: !5308, line: 22, type: !5309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5308 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5309 = !DISubroutineType(types: !5310)
!5310 = !{null, !5311}
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!5312 = distinct !DISubprogram(name: "hlist_unhashed", scope: !4994, file: !4994, line: 948, type: !5313, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5317)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!103, !5315}
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!5317 = !{!5318}
!5318 = !DILocalVariable(name: "h", arg: 1, scope: !5312, file: !4994, line: 948, type: !5315)
!5319 = !DILocation(line: 948, column: 59, scope: !5312)
!5320 = !DILocation(line: 950, column: 10, scope: !5312)
!5321 = !DILocation(line: 950, column: 13, scope: !5312)
!5322 = !DILocation(line: 950, column: 9, scope: !5312)
!5323 = !DILocation(line: 950, column: 2, scope: !5312)
!5324 = distinct !DISubprogram(name: "__hlist_del", scope: !4994, file: !4994, line: 975, type: !4695, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5325)
!5325 = !{!5326, !5327, !5328}
!5326 = !DILocalVariable(name: "n", arg: 1, scope: !5324, file: !4994, line: 975, type: !213)
!5327 = !DILocalVariable(name: "next", scope: !5324, file: !4994, line: 977, type: !213)
!5328 = !DILocalVariable(name: "pprev", scope: !5324, file: !4994, line: 978, type: !212)
!5329 = !DILocation(line: 975, column: 51, scope: !5324)
!5330 = !DILocation(line: 977, column: 2, scope: !5324)
!5331 = !DILocation(line: 977, column: 21, scope: !5324)
!5332 = !DILocation(line: 977, column: 28, scope: !5324)
!5333 = !DILocation(line: 977, column: 31, scope: !5324)
!5334 = !DILocation(line: 978, column: 2, scope: !5324)
!5335 = !DILocation(line: 978, column: 22, scope: !5324)
!5336 = !DILocation(line: 978, column: 30, scope: !5324)
!5337 = !DILocation(line: 978, column: 33, scope: !5324)
!5338 = !DILocation(line: 980, column: 2, scope: !5324)
!5339 = !DILocation(line: 980, column: 2, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5324, file: !4994, line: 980, column: 2)
!5341 = !DILocation(line: 980, column: 2, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5340, file: !4994, line: 980, column: 2)
!5343 = !DILocation(line: 980, column: 2, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5340, file: !4994, line: 980, column: 2)
!5345 = !DILocation(line: 981, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5324, file: !4994, line: 981, column: 6)
!5347 = !DILocation(line: 981, column: 6, scope: !5324)
!5348 = !DILocation(line: 982, column: 3, scope: !5346)
!5349 = !DILocation(line: 982, column: 3, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5346, file: !4994, line: 982, column: 3)
!5351 = !DILocation(line: 982, column: 3, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5350, file: !4994, line: 982, column: 3)
!5353 = !DILocation(line: 982, column: 3, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !4994, line: 982, column: 3)
!5355 = !DILocation(line: 983, column: 1, scope: !5324)
!5356 = !DISubprogram(name: "_raw_spin_unlock", scope: !5308, file: !5308, line: 39, type: !5309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5358, file: !5358, line: 94, type: !5359, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5364)
!5358 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5359 = !DISubroutineType(types: !5360)
!5360 = !{null, !5361, !116}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5363)
!5363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5364 = !{!5365, !5366}
!5365 = !DILocalVariable(name: "v", arg: 1, scope: !5357, file: !5358, line: 94, type: !5361)
!5366 = !DILocalVariable(name: "size", arg: 2, scope: !5357, file: !5358, line: 94, type: !116)
!5367 = !DILocation(line: 94, column: 79, scope: !5357)
!5368 = !DILocation(line: 94, column: 89, scope: !5357)
!5369 = !DILocation(line: 96, column: 20, scope: !5357)
!5370 = !DILocation(line: 96, column: 23, scope: !5357)
!5371 = !DILocation(line: 96, column: 2, scope: !5357)
!5372 = !DILocation(line: 97, column: 2, scope: !5357)
!5373 = !DILocation(line: 98, column: 1, scope: !5357)
!5374 = distinct !DISubprogram(name: "raw_atomic_inc_not_zero", scope: !5375, file: !5375, line: 2448, type: !4724, scopeLine: 2449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5376)
!5375 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5376 = !{!5377}
!5377 = !DILocalVariable(name: "v", arg: 1, scope: !5374, file: !5375, line: 2448, type: !4726)
!5378 = !DILocation(line: 2448, column: 35, scope: !5374)
!5379 = !DILocation(line: 2453, column: 31, scope: !5374)
!5380 = !DILocation(line: 2453, column: 9, scope: !5374)
!5381 = !DILocation(line: 2453, column: 2, scope: !5374)
!5382 = distinct !DISubprogram(name: "kasan_check_write", scope: !5383, file: !5383, line: 44, type: !5384, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5386)
!5383 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!800, !5361, !13}
!5386 = !{!5387, !5388}
!5387 = !DILocalVariable(name: "p", arg: 1, scope: !5382, file: !5383, line: 44, type: !5361)
!5388 = !DILocalVariable(name: "size", arg: 2, scope: !5382, file: !5383, line: 44, type: !13)
!5389 = !DILocation(line: 44, column: 59, scope: !5382)
!5390 = !DILocation(line: 44, column: 75, scope: !5382)
!5391 = !DILocation(line: 46, column: 2, scope: !5382)
!5392 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5393, file: !5393, line: 229, type: !5394, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5396)
!5393 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5394 = !DISubroutineType(types: !5395)
!5395 = !{null, !5361, !116, !103}
!5396 = !{!5397, !5398, !5399}
!5397 = !DILocalVariable(name: "ptr", arg: 1, scope: !5392, file: !5393, line: 229, type: !5361)
!5398 = !DILocalVariable(name: "size", arg: 2, scope: !5392, file: !5393, line: 229, type: !116)
!5399 = !DILocalVariable(name: "type", arg: 3, scope: !5392, file: !5393, line: 230, type: !103)
!5400 = !DILocation(line: 229, column: 60, scope: !5392)
!5401 = !DILocation(line: 229, column: 72, scope: !5392)
!5402 = !DILocation(line: 230, column: 15, scope: !5392)
!5403 = !DILocation(line: 230, column: 23, scope: !5392)
!5404 = distinct !DISubprogram(name: "raw_atomic_add_unless", scope: !5375, file: !5375, line: 2428, type: !5405, scopeLine: 2429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5407)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!800, !4726, !103, !103}
!5407 = !{!5408, !5409, !5410}
!5408 = !DILocalVariable(name: "v", arg: 1, scope: !5404, file: !5375, line: 2428, type: !4726)
!5409 = !DILocalVariable(name: "a", arg: 2, scope: !5404, file: !5375, line: 2428, type: !103)
!5410 = !DILocalVariable(name: "u", arg: 3, scope: !5404, file: !5375, line: 2428, type: !103)
!5411 = !DILocation(line: 2428, column: 33, scope: !5404)
!5412 = !DILocation(line: 2428, column: 40, scope: !5404)
!5413 = !DILocation(line: 2428, column: 47, scope: !5404)
!5414 = !DILocation(line: 2433, column: 37, scope: !5404)
!5415 = !DILocation(line: 2433, column: 40, scope: !5404)
!5416 = !DILocation(line: 2433, column: 43, scope: !5404)
!5417 = !DILocation(line: 2433, column: 9, scope: !5404)
!5418 = !DILocation(line: 2433, column: 49, scope: !5404)
!5419 = !DILocation(line: 2433, column: 46, scope: !5404)
!5420 = !DILocation(line: 2433, column: 2, scope: !5404)
!5421 = distinct !DISubprogram(name: "raw_atomic_fetch_add_unless", scope: !5375, file: !5375, line: 2399, type: !5422, scopeLine: 2400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!103, !4726, !103, !103}
!5424 = !{!5425, !5426, !5427, !5428}
!5425 = !DILocalVariable(name: "v", arg: 1, scope: !5421, file: !5375, line: 2399, type: !4726)
!5426 = !DILocalVariable(name: "a", arg: 2, scope: !5421, file: !5375, line: 2399, type: !103)
!5427 = !DILocalVariable(name: "u", arg: 3, scope: !5421, file: !5375, line: 2399, type: !103)
!5428 = !DILocalVariable(name: "c", scope: !5421, file: !5375, line: 2404, type: !103)
!5429 = !DILocation(line: 2399, column: 39, scope: !5421)
!5430 = !DILocation(line: 2399, column: 46, scope: !5421)
!5431 = !DILocation(line: 2399, column: 53, scope: !5421)
!5432 = !DILocation(line: 2404, column: 2, scope: !5421)
!5433 = !DILocation(line: 2404, column: 6, scope: !5421)
!5434 = !DILocation(line: 2404, column: 26, scope: !5421)
!5435 = !DILocation(line: 2404, column: 10, scope: !5421)
!5436 = !DILocation(line: 2406, column: 2, scope: !5421)
!5437 = !DILocation(line: 2407, column: 7, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !5375, line: 2407, column: 7)
!5439 = distinct !DILexicalBlock(scope: !5421, file: !5375, line: 2406, column: 5)
!5440 = !DILocation(line: 2407, column: 7, scope: !5439)
!5441 = !DILocation(line: 2408, column: 4, scope: !5438)
!5442 = !DILocation(line: 2409, column: 2, scope: !5439)
!5443 = !DILocation(line: 2409, column: 35, scope: !5421)
!5444 = !DILocation(line: 2409, column: 42, scope: !5421)
!5445 = !DILocation(line: 2409, column: 46, scope: !5421)
!5446 = !DILocation(line: 2409, column: 44, scope: !5421)
!5447 = !DILocation(line: 2409, column: 12, scope: !5421)
!5448 = !DILocation(line: 2409, column: 11, scope: !5421)
!5449 = distinct !{!5449, !5436, !5450, !4660, !4605}
!5450 = !DILocation(line: 2409, column: 48, scope: !5421)
!5451 = !DILocation(line: 2411, column: 9, scope: !5421)
!5452 = !DILocation(line: 2413, column: 1, scope: !5421)
!5453 = !DILocation(line: 2411, column: 2, scope: !5421)
!5454 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5375, file: !5375, line: 442, type: !5455, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5459)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!103, !5457}
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!5459 = !{!5460}
!5460 = !DILocalVariable(name: "v", arg: 1, scope: !5454, file: !5375, line: 442, type: !5457)
!5461 = !DILocation(line: 442, column: 33, scope: !5454)
!5462 = !DILocation(line: 444, column: 26, scope: !5454)
!5463 = !DILocation(line: 444, column: 9, scope: !5454)
!5464 = !DILocation(line: 444, column: 2, scope: !5454)
!5465 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !5375, file: !5375, line: 2109, type: !5466, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5468)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!800, !4726, !2162, !103}
!5468 = !{!5469, !5470, !5471}
!5469 = !DILocalVariable(name: "v", arg: 1, scope: !5465, file: !5375, line: 2109, type: !4726)
!5470 = !DILocalVariable(name: "old", arg: 2, scope: !5465, file: !5375, line: 2109, type: !2162)
!5471 = !DILocalVariable(name: "new", arg: 3, scope: !5465, file: !5375, line: 2109, type: !103)
!5472 = !DILocation(line: 2109, column: 34, scope: !5465)
!5473 = !DILocation(line: 2109, column: 42, scope: !5465)
!5474 = !DILocation(line: 2109, column: 51, scope: !5465)
!5475 = !DILocation(line: 2112, column: 33, scope: !5465)
!5476 = !DILocation(line: 2112, column: 36, scope: !5465)
!5477 = !DILocation(line: 2112, column: 41, scope: !5465)
!5478 = !DILocation(line: 2112, column: 9, scope: !5465)
!5479 = !DILocation(line: 2112, column: 2, scope: !5465)
!5480 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5481, file: !5481, line: 17, type: !5455, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5482)
!5481 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5482 = !{!5483}
!5483 = !DILocalVariable(name: "v", arg: 1, scope: !5480, file: !5481, line: 17, type: !5457)
!5484 = !DILocation(line: 17, column: 61, scope: !5480)
!5485 = !DILocation(line: 23, column: 9, scope: !5480)
!5486 = !DILocation(line: 23, column: 2, scope: !5480)
!5487 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5481, file: !5481, line: 113, type: !5466, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5488)
!5488 = !{!5489, !5490, !5491, !5492, !5494, !5495, !5496, !5497}
!5489 = !DILocalVariable(name: "v", arg: 1, scope: !5487, file: !5481, line: 113, type: !4726)
!5490 = !DILocalVariable(name: "old", arg: 2, scope: !5487, file: !5481, line: 113, type: !2162)
!5491 = !DILocalVariable(name: "new", arg: 3, scope: !5487, file: !5481, line: 113, type: !103)
!5492 = !DILocalVariable(name: "success", scope: !5493, file: !5481, line: 115, type: !800)
!5493 = distinct !DILexicalBlock(scope: !5487, file: !5481, line: 115, column: 9)
!5494 = !DILocalVariable(name: "_old", scope: !5493, file: !5481, line: 115, type: !2162)
!5495 = !DILocalVariable(name: "__old", scope: !5493, file: !5481, line: 115, type: !103)
!5496 = !DILocalVariable(name: "__new", scope: !5493, file: !5481, line: 115, type: !103)
!5497 = !DILocalVariable(name: "__ptr", scope: !5493, file: !5481, line: 115, type: !4412)
!5498 = !DILocation(line: 113, column: 63, scope: !5487)
!5499 = !DILocation(line: 113, column: 71, scope: !5487)
!5500 = !DILocation(line: 113, column: 80, scope: !5487)
!5501 = !DILocation(line: 115, column: 9, scope: !5493)
!5502 = !{i64 2148667183, i64 2148667222, i64 2148667243, i64 2148667280, i64 2148667303, i64 2148667312, i64 2148667610}
!5503 = !DILocation(line: 115, column: 9, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5493, file: !5481, line: 115, column: 9)
!5505 = !DILocation(line: 115, column: 9, scope: !5487)
!5506 = !DILocation(line: 115, column: 2, scope: !5487)
!5507 = !DISubprogram(name: "__rcu_read_unlock", scope: !4675, file: !4675, line: 75, type: !2380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = distinct !DISubprogram(name: "alloc_inode_sb", scope: !83, file: !83, line: 2944, type: !5509, scopeLine: 2945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5511)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!101, !1161, !4210, !272}
!5511 = !{!5512, !5513, !5514}
!5512 = !DILocalVariable(name: "sb", arg: 1, scope: !5508, file: !83, line: 2944, type: !1161)
!5513 = !DILocalVariable(name: "cache", arg: 2, scope: !5508, file: !83, line: 2944, type: !4210)
!5514 = !DILocalVariable(name: "gfp", arg: 3, scope: !5508, file: !83, line: 2944, type: !272)
!5515 = !DILocation(line: 2944, column: 36, scope: !5508)
!5516 = !DILocation(line: 2944, column: 59, scope: !5508)
!5517 = !DILocation(line: 2944, column: 72, scope: !5508)
!5518 = !DILocation(line: 2946, column: 30, scope: !5508)
!5519 = !DILocation(line: 2946, column: 38, scope: !5508)
!5520 = !DILocation(line: 2946, column: 42, scope: !5508)
!5521 = !DILocation(line: 2946, column: 55, scope: !5508)
!5522 = !DILocation(line: 2946, column: 9, scope: !5508)
!5523 = !DILocation(line: 2946, column: 2, scope: !5508)
!5524 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !4994, file: !4994, line: 934, type: !4695, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5525)
!5525 = !{!5526}
!5526 = !DILocalVariable(name: "h", arg: 1, scope: !5524, file: !4994, line: 934, type: !213)
!5527 = !DILocation(line: 934, column: 55, scope: !5524)
!5528 = !DILocation(line: 936, column: 2, scope: !5524)
!5529 = !DILocation(line: 936, column: 5, scope: !5524)
!5530 = !DILocation(line: 936, column: 10, scope: !5524)
!5531 = !DILocation(line: 937, column: 2, scope: !5524)
!5532 = !DILocation(line: 937, column: 5, scope: !5524)
!5533 = !DILocation(line: 937, column: 11, scope: !5524)
!5534 = !DILocation(line: 938, column: 1, scope: !5524)
!5535 = !DISubprogram(name: "kmem_cache_alloc_lru", scope: !4517, file: !4517, line: 501, type: !5536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!101, !4210, !5538, !272}
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!5539 = !DISubprogram(name: "kmem_cache_free", scope: !4517, file: !4517, line: 503, type: !5540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{null, !4210, !101}
!5542 = !DISubprogram(name: "truncate_inode_pages_final", scope: !1445, file: !1445, line: 3342, type: !5543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{null, !1311}
!5545 = !DISubprogram(name: "clear_inode", scope: !83, file: !83, line: 2929, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5546 = !DISubprogram(name: "proc_pid_evict_inode", scope: !220, file: !220, line: 169, type: !5547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{null, !218}
!5549 = !DISubprogram(name: "proc_sys_evict_inode", scope: !220, file: !220, line: 260, type: !5550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{null, !959, !4338}
!5552 = distinct !DISubprogram(name: "proc_sb_info", scope: !197, file: !197, line: 70, type: !5553, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!4880, !1161}
!5555 = !{!5556}
!5556 = !DILocalVariable(name: "sb", arg: 1, scope: !5552, file: !197, line: 70, type: !1161)
!5557 = !DILocation(line: 70, column: 69, scope: !5552)
!5558 = !DILocation(line: 72, column: 9, scope: !5552)
!5559 = !DILocation(line: 72, column: 13, scope: !5552)
!5560 = !DILocation(line: 72, column: 2, scope: !5552)
!5561 = distinct !DISubprogram(name: "gid_eq", scope: !683, file: !683, line: 66, type: !5562, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!800, !700, !700}
!5564 = !{!5565, !5566}
!5565 = !DILocalVariable(name: "left", arg: 1, scope: !5561, file: !683, line: 66, type: !700)
!5566 = !DILocalVariable(name: "right", arg: 2, scope: !5561, file: !683, line: 66, type: !700)
!5567 = !DILocation(line: 66, column: 34, scope: !5561)
!5568 = !DILocation(line: 66, column: 47, scope: !5561)
!5569 = !DILocation(line: 68, column: 9, scope: !5561)
!5570 = !DILocation(line: 68, column: 29, scope: !5561)
!5571 = !DILocation(line: 68, column: 26, scope: !5561)
!5572 = !DILocation(line: 68, column: 2, scope: !5561)
!5573 = !DISubprogram(name: "seq_printf", scope: !1914, file: !1914, line: 119, type: !5574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{null, !1912, !98, null}
!5576 = distinct !DISubprogram(name: "from_kgid_munged", scope: !683, file: !683, line: 171, type: !5577, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5579)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!704, !884, !700}
!5579 = !{!5580, !5581, !5582}
!5580 = !DILocalVariable(name: "to", arg: 1, scope: !5576, file: !683, line: 171, type: !884)
!5581 = !DILocalVariable(name: "kgid", arg: 2, scope: !5576, file: !683, line: 171, type: !700)
!5582 = !DILocalVariable(name: "gid", scope: !5576, file: !683, line: 173, type: !704)
!5583 = !DILocation(line: 171, column: 61, scope: !5576)
!5584 = !DILocation(line: 171, column: 72, scope: !5576)
!5585 = !DILocation(line: 173, column: 2, scope: !5576)
!5586 = !DILocation(line: 173, column: 8, scope: !5576)
!5587 = !DILocation(line: 173, column: 24, scope: !5576)
!5588 = !DILocation(line: 173, column: 14, scope: !5576)
!5589 = !DILocation(line: 174, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5576, file: !683, line: 174, column: 6)
!5591 = !DILocation(line: 174, column: 10, scope: !5590)
!5592 = !DILocation(line: 174, column: 6, scope: !5576)
!5593 = !DILocation(line: 175, column: 9, scope: !5590)
!5594 = !DILocation(line: 175, column: 7, scope: !5590)
!5595 = !DILocation(line: 175, column: 3, scope: !5590)
!5596 = !DILocation(line: 176, column: 9, scope: !5576)
!5597 = !DILocation(line: 177, column: 1, scope: !5576)
!5598 = !DILocation(line: 176, column: 2, scope: !5576)
!5599 = !DILocation(line: 167, column: 57, scope: !4464)
!5600 = !DILocation(line: 169, column: 10, scope: !4464)
!5601 = !DILocation(line: 169, column: 2, scope: !4464)
!5602 = !DILocation(line: 170, column: 21, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !4464, file: !2, line: 169, column: 13)
!5604 = !DILocation(line: 171, column: 27, scope: !5603)
!5605 = !DILocation(line: 172, column: 27, scope: !5603)
!5606 = !DILocation(line: 173, column: 32, scope: !5603)
!5607 = !DILocation(line: 175, column: 2, scope: !4470)
!5608 = !DILocation(line: 175, column: 2, scope: !4472)
!5609 = !DILocation(line: 175, column: 2, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !4472, file: !2, line: 175, column: 2)
!5611 = !DILocation(line: 0, scope: !5610)
!5612 = !DILocation(line: 175, column: 2, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5610, file: !2, line: 175, column: 2)
!5614 = !DILocation(line: 175, column: 2, scope: !4473)
!5615 = !DILocation(line: 175, column: 2, scope: !4476)
!5616 = !DILocation(line: 175, column: 2, scope: !4480)
!5617 = !DILocation(line: 175, column: 2, scope: !4479)
!5618 = !DILocation(line: 175, column: 2, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 175, column: 2)
!5620 = !DILocation(line: 175, column: 2, scope: !4478)
!5621 = !DILocation(line: 175, column: 2, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 175, column: 2)
!5623 = !DILocation(line: 175, column: 2, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 175, column: 2)
!5625 = !{i64 2154321655, i64 2154321684, i64 2154321730, i64 2154321788, i64 2154321842, i64 2154321896, i64 2154321951, i64 2154321982, i64 2154322290, i64 2154322296, i64 2154322343, i64 2154322366, i64 2154322392}
!5626 = !DILocation(line: 175, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !4478, file: !2, line: 175, column: 2)
!5628 = !DILocation(line: 175, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 175, column: 2)
!5630 = !DILocation(line: 175, column: 2, scope: !4464)
!5631 = !DILocation(line: 176, column: 2, scope: !4464)
!5632 = !DILocation(line: 177, column: 1, scope: !4464)
!5633 = distinct !DISubprogram(name: "__kgid_val", scope: !683, file: !683, line: 39, type: !5634, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5636)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!704, !700}
!5636 = !{!5637}
!5637 = !DILocalVariable(name: "gid", arg: 1, scope: !5633, file: !683, line: 39, type: !700)
!5638 = !DILocation(line: 39, column: 39, scope: !5633)
!5639 = !DILocation(line: 41, column: 13, scope: !5633)
!5640 = !DILocation(line: 41, column: 2, scope: !5633)
!5641 = distinct !DISubprogram(name: "from_kgid", scope: !683, file: !683, line: 158, type: !5577, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5642)
!5642 = !{!5643, !5644}
!5643 = !DILocalVariable(name: "to", arg: 1, scope: !5641, file: !683, line: 158, type: !884)
!5644 = !DILocalVariable(name: "kgid", arg: 2, scope: !5641, file: !683, line: 158, type: !700)
!5645 = !DILocation(line: 158, column: 54, scope: !5641)
!5646 = !DILocation(line: 158, column: 65, scope: !5641)
!5647 = !DILocation(line: 160, column: 9, scope: !5641)
!5648 = !DILocation(line: 160, column: 2, scope: !5641)
!5649 = !DISubprogram(name: "__warn_printk", scope: !2182, file: !2182, line: 93, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !98, null}
!5652 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !5375, file: !5375, line: 548, type: !4974, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5653)
!5653 = !{!5654, !5655}
!5654 = !DILocalVariable(name: "i", arg: 1, scope: !5652, file: !5375, line: 548, type: !103)
!5655 = !DILocalVariable(name: "v", arg: 2, scope: !5652, file: !5375, line: 548, type: !4726)
!5656 = !DILocation(line: 548, column: 27, scope: !5652)
!5657 = !DILocation(line: 548, column: 40, scope: !5652)
!5658 = !DILocation(line: 551, column: 32, scope: !5652)
!5659 = !DILocation(line: 551, column: 35, scope: !5652)
!5660 = !DILocation(line: 551, column: 9, scope: !5652)
!5661 = !DILocation(line: 551, column: 2, scope: !5652)
!5662 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !5481, file: !5481, line: 83, type: !4974, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5663)
!5663 = !{!5664, !5665, !5666}
!5664 = !DILocalVariable(name: "i", arg: 1, scope: !5662, file: !5481, line: 83, type: !103)
!5665 = !DILocalVariable(name: "v", arg: 2, scope: !5662, file: !5481, line: 83, type: !4726)
!5666 = !DILocalVariable(name: "__ret", scope: !5667, file: !5481, line: 85, type: !103)
!5667 = distinct !DILexicalBlock(scope: !5662, file: !5481, line: 85, column: 13)
!5668 = !DILocation(line: 83, column: 55, scope: !5662)
!5669 = !DILocation(line: 83, column: 68, scope: !5662)
!5670 = !DILocation(line: 85, column: 9, scope: !5662)
!5671 = !DILocation(line: 85, column: 13, scope: !5667)
!5672 = !{i64 2148656879, i64 2148656918, i64 2148656939, i64 2148656976, i64 2148656999, i64 2148657008}
!5673 = !DILocation(line: 85, column: 13, scope: !5662)
!5674 = !DILocation(line: 85, column: 11, scope: !5662)
!5675 = !DILocation(line: 85, column: 2, scope: !5662)
!5676 = distinct !DISubprogram(name: "file_inode", scope: !83, file: !83, line: 1073, type: !5677, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5679)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!959, !1947}
!5679 = !{!5680}
!5680 = !DILocalVariable(name: "f", arg: 1, scope: !5676, file: !83, line: 1073, type: !1947)
!5681 = !DILocation(line: 1073, column: 59, scope: !5676)
!5682 = !DILocation(line: 1075, column: 9, scope: !5676)
!5683 = !DILocation(line: 1075, column: 12, scope: !5676)
!5684 = !DILocation(line: 1075, column: 2, scope: !5676)
!5685 = distinct !DISubprogram(name: "list_del", scope: !4994, file: !4994, line: 227, type: !5686, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5688)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !181}
!5688 = !{!5689}
!5689 = !DILocalVariable(name: "entry", arg: 1, scope: !5685, file: !4994, line: 227, type: !181)
!5690 = !DILocation(line: 227, column: 47, scope: !5685)
!5691 = !DILocation(line: 229, column: 19, scope: !5685)
!5692 = !DILocation(line: 229, column: 2, scope: !5685)
!5693 = !DILocation(line: 230, column: 2, scope: !5685)
!5694 = !DILocation(line: 230, column: 9, scope: !5685)
!5695 = !DILocation(line: 230, column: 14, scope: !5685)
!5696 = !DILocation(line: 231, column: 2, scope: !5685)
!5697 = !DILocation(line: 231, column: 9, scope: !5685)
!5698 = !DILocation(line: 231, column: 14, scope: !5685)
!5699 = !DILocation(line: 232, column: 1, scope: !5685)
!5700 = !DISubprogram(name: "complete", scope: !1417, file: !1417, line: 118, type: !4991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5701 = distinct !DISubprogram(name: "__list_del_entry", scope: !4994, file: !4994, line: 213, type: !5686, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5702)
!5702 = !{!5703}
!5703 = !DILocalVariable(name: "entry", arg: 1, scope: !5701, file: !4994, line: 213, type: !181)
!5704 = !DILocation(line: 213, column: 55, scope: !5701)
!5705 = !DILocation(line: 215, column: 30, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5701, file: !4994, line: 215, column: 6)
!5707 = !DILocation(line: 215, column: 7, scope: !5706)
!5708 = !DILocation(line: 215, column: 6, scope: !5701)
!5709 = !DILocation(line: 216, column: 3, scope: !5706)
!5710 = !DILocation(line: 218, column: 13, scope: !5701)
!5711 = !DILocation(line: 218, column: 20, scope: !5701)
!5712 = !DILocation(line: 218, column: 26, scope: !5701)
!5713 = !DILocation(line: 218, column: 33, scope: !5701)
!5714 = !DILocation(line: 218, column: 2, scope: !5701)
!5715 = !DILocation(line: 219, column: 1, scope: !5701)
!5716 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4994, file: !4994, line: 134, type: !5717, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5719)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!800, !181}
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "entry", arg: 1, scope: !5716, file: !4994, line: 134, type: !181)
!5721 = !DILocation(line: 134, column: 61, scope: !5716)
!5722 = !DILocation(line: 136, column: 2, scope: !5716)
!5723 = distinct !DISubprogram(name: "__list_del", scope: !4994, file: !4994, line: 193, type: !5724, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5726)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{null, !181, !181}
!5726 = !{!5727, !5728}
!5727 = !DILocalVariable(name: "prev", arg: 1, scope: !5723, file: !4994, line: 193, type: !181)
!5728 = !DILocalVariable(name: "next", arg: 2, scope: !5723, file: !4994, line: 193, type: !181)
!5729 = !DILocation(line: 193, column: 50, scope: !5723)
!5730 = !DILocation(line: 193, column: 75, scope: !5723)
!5731 = !DILocation(line: 195, column: 15, scope: !5723)
!5732 = !DILocation(line: 195, column: 2, scope: !5723)
!5733 = !DILocation(line: 195, column: 8, scope: !5723)
!5734 = !DILocation(line: 195, column: 13, scope: !5723)
!5735 = !DILocation(line: 196, column: 2, scope: !5723)
!5736 = !DILocation(line: 196, column: 2, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5723, file: !4994, line: 196, column: 2)
!5738 = !DILocation(line: 196, column: 2, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5737, file: !4994, line: 196, column: 2)
!5740 = !DILocation(line: 196, column: 2, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5737, file: !4994, line: 196, column: 2)
!5742 = !DILocation(line: 197, column: 1, scope: !5723)
!5743 = distinct !DISubprogram(name: "PDE", scope: !220, file: !220, line: 118, type: !5744, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5746)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!4280, !2834}
!5746 = !{!5747}
!5747 = !DILocalVariable(name: "inode", arg: 1, scope: !5743, file: !220, line: 118, type: !2834)
!5748 = !DILocation(line: 118, column: 62, scope: !5743)
!5749 = !DILocation(line: 120, column: 16, scope: !5743)
!5750 = !DILocation(line: 120, column: 9, scope: !5743)
!5751 = !DILocation(line: 120, column: 24, scope: !5743)
!5752 = !DILocation(line: 120, column: 2, scope: !5743)
!5753 = distinct !DISubprogram(name: "use_pde", scope: !2, file: !2, line: 204, type: !5754, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5756)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!103, !4280}
!5756 = !{!5757}
!5757 = !DILocalVariable(name: "pde", arg: 1, scope: !5753, file: !2, line: 204, type: !4280)
!5758 = !DILocation(line: 204, column: 50, scope: !5753)
!5759 = !DILocation(line: 206, column: 9, scope: !5753)
!5760 = !DILocation(line: 206, column: 2, scope: !5753)
!5761 = distinct !DISubprogram(name: "ERR_PTR", scope: !5762, file: !5762, line: 39, type: !5763, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5765)
!5762 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!101, !1073}
!5765 = !{!5766}
!5766 = !DILocalVariable(name: "error", arg: 1, scope: !5761, file: !5762, line: 39, type: !1073)
!5767 = !DILocation(line: 39, column: 48, scope: !5761)
!5768 = !DILocation(line: 41, column: 18, scope: !5761)
!5769 = !DILocation(line: 41, column: 9, scope: !5761)
!5770 = !DILocation(line: 41, column: 2, scope: !5761)
!5771 = distinct !DISubprogram(name: "set_delayed_call", scope: !987, file: !987, line: 18, type: !5772, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5774)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !985, !990, !101}
!5774 = !{!5775, !5776, !5777}
!5775 = !DILocalVariable(name: "call", arg: 1, scope: !5771, file: !987, line: 18, type: !985)
!5776 = !DILocalVariable(name: "fn", arg: 2, scope: !5771, file: !987, line: 19, type: !990)
!5777 = !DILocalVariable(name: "arg", arg: 3, scope: !5771, file: !987, line: 19, type: !101)
!5778 = !DILocation(line: 18, column: 58, scope: !5771)
!5779 = !DILocation(line: 19, column: 10, scope: !5771)
!5780 = !DILocation(line: 19, column: 29, scope: !5771)
!5781 = !DILocation(line: 21, column: 13, scope: !5771)
!5782 = !DILocation(line: 21, column: 2, scope: !5771)
!5783 = !DILocation(line: 21, column: 8, scope: !5771)
!5784 = !DILocation(line: 21, column: 11, scope: !5771)
!5785 = !DILocation(line: 22, column: 14, scope: !5771)
!5786 = !DILocation(line: 22, column: 2, scope: !5771)
!5787 = !DILocation(line: 22, column: 8, scope: !5771)
!5788 = !DILocation(line: 22, column: 12, scope: !5771)
!5789 = !DILocation(line: 23, column: 1, scope: !5771)
!5790 = distinct !DISubprogram(name: "proc_put_link", scope: !2, file: !2, line: 632, type: !991, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5791)
!5791 = !{!5792}
!5792 = !DILocalVariable(name: "p", arg: 1, scope: !5790, file: !2, line: 632, type: !101)
!5793 = !DILocation(line: 632, column: 33, scope: !5790)
!5794 = !DILocation(line: 634, column: 12, scope: !5790)
!5795 = !DILocation(line: 634, column: 2, scope: !5790)
!5796 = !DILocation(line: 635, column: 1, scope: !5790)
!5797 = distinct !DISubprogram(name: "atomic_inc_unless_negative", scope: !4723, file: !4723, line: 1540, type: !4724, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5798)
!5798 = !{!5799}
!5799 = !DILocalVariable(name: "v", arg: 1, scope: !5797, file: !4723, line: 1540, type: !4726)
!5800 = !DILocation(line: 1540, column: 38, scope: !5797)
!5801 = !DILocation(line: 1542, column: 2, scope: !5797)
!5802 = !DILocation(line: 1542, column: 2, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5797, file: !4723, line: 1542, column: 2)
!5804 = !DILocation(line: 1543, column: 31, scope: !5797)
!5805 = !DILocation(line: 1543, column: 2, scope: !5797)
!5806 = !DILocation(line: 1544, column: 40, scope: !5797)
!5807 = !DILocation(line: 1544, column: 9, scope: !5797)
!5808 = !DILocation(line: 1544, column: 2, scope: !5797)
!5809 = distinct !DISubprogram(name: "raw_atomic_inc_unless_negative", scope: !5375, file: !5375, line: 2468, type: !4724, scopeLine: 2469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5810)
!5810 = !{!5811, !5812}
!5811 = !DILocalVariable(name: "v", arg: 1, scope: !5809, file: !5375, line: 2468, type: !4726)
!5812 = !DILocalVariable(name: "c", scope: !5809, file: !5375, line: 2473, type: !103)
!5813 = !DILocation(line: 2468, column: 42, scope: !5809)
!5814 = !DILocation(line: 2473, column: 2, scope: !5809)
!5815 = !DILocation(line: 2473, column: 6, scope: !5809)
!5816 = !DILocation(line: 2473, column: 26, scope: !5809)
!5817 = !DILocation(line: 2473, column: 10, scope: !5809)
!5818 = !DILocation(line: 2475, column: 2, scope: !5809)
!5819 = !DILocation(line: 2476, column: 7, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !5375, line: 2476, column: 7)
!5821 = distinct !DILexicalBlock(scope: !5809, file: !5375, line: 2475, column: 5)
!5822 = !DILocation(line: 2476, column: 7, scope: !5821)
!5823 = !DILocation(line: 2477, column: 4, scope: !5820)
!5824 = !DILocation(line: 2478, column: 2, scope: !5821)
!5825 = !DILocation(line: 2478, column: 35, scope: !5809)
!5826 = !DILocation(line: 2478, column: 42, scope: !5809)
!5827 = !DILocation(line: 2478, column: 44, scope: !5809)
!5828 = !DILocation(line: 2478, column: 12, scope: !5809)
!5829 = !DILocation(line: 2478, column: 11, scope: !5809)
!5830 = distinct !{!5830, !5818, !5831, !4660, !4605}
!5831 = !DILocation(line: 2478, column: 48, scope: !5809)
!5832 = !DILocation(line: 2480, column: 2, scope: !5809)
!5833 = !DILocation(line: 2482, column: 1, scope: !5809)
!5834 = distinct !DISubprogram(name: "unuse_pde", scope: !2, file: !2, line: 209, type: !4927, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5835)
!5835 = !{!5836}
!5836 = !DILocalVariable(name: "pde", arg: 1, scope: !5834, file: !2, line: 209, type: !4280)
!5837 = !DILocation(line: 209, column: 46, scope: !5834)
!5838 = !DILocation(line: 211, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5834, file: !2, line: 211, column: 6)
!5840 = !DILocation(line: 211, column: 6, scope: !5834)
!5841 = !DILocation(line: 212, column: 12, scope: !5839)
!5842 = !DILocation(line: 212, column: 17, scope: !5839)
!5843 = !DILocation(line: 212, column: 3, scope: !5839)
!5844 = !DILocation(line: 213, column: 1, scope: !5834)
!5845 = distinct !DISubprogram(name: "atomic_dec_return", scope: !4723, file: !4723, line: 607, type: !5846, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5848)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!103, !4726}
!5848 = !{!5849}
!5849 = !DILocalVariable(name: "v", arg: 1, scope: !5845, file: !4723, line: 607, type: !4726)
!5850 = !DILocation(line: 607, column: 29, scope: !5845)
!5851 = !DILocation(line: 609, column: 2, scope: !5845)
!5852 = !DILocation(line: 609, column: 2, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5845, file: !4723, line: 609, column: 2)
!5854 = !DILocation(line: 610, column: 31, scope: !5845)
!5855 = !DILocation(line: 610, column: 2, scope: !5845)
!5856 = !DILocation(line: 611, column: 31, scope: !5845)
!5857 = !DILocation(line: 611, column: 9, scope: !5845)
!5858 = !DILocation(line: 611, column: 2, scope: !5845)
!5859 = distinct !DISubprogram(name: "raw_atomic_dec_return", scope: !5375, file: !5375, line: 1214, type: !5846, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5860)
!5860 = !{!5861}
!5861 = !DILocalVariable(name: "v", arg: 1, scope: !5859, file: !5375, line: 1214, type: !4726)
!5862 = !DILocation(line: 1214, column: 33, scope: !5859)
!5863 = !DILocation(line: 1225, column: 34, scope: !5859)
!5864 = !DILocation(line: 1225, column: 9, scope: !5859)
!5865 = !DILocation(line: 1225, column: 2, scope: !5859)
!5866 = distinct !DISubprogram(name: "raw_atomic_sub_return", scope: !5375, file: !5375, line: 771, type: !4974, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5867)
!5867 = !{!5868, !5869}
!5868 = !DILocalVariable(name: "i", arg: 1, scope: !5866, file: !5375, line: 771, type: !103)
!5869 = !DILocalVariable(name: "v", arg: 2, scope: !5866, file: !5375, line: 771, type: !4726)
!5870 = !DILocation(line: 771, column: 27, scope: !5866)
!5871 = !DILocation(line: 771, column: 40, scope: !5866)
!5872 = !DILocation(line: 774, column: 32, scope: !5866)
!5873 = !DILocation(line: 774, column: 35, scope: !5866)
!5874 = !DILocation(line: 774, column: 9, scope: !5866)
!5875 = !DILocation(line: 774, column: 2, scope: !5866)
!5876 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !5481, file: !5481, line: 89, type: !4974, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5877)
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "i", arg: 1, scope: !5876, file: !5481, line: 89, type: !103)
!5879 = !DILocalVariable(name: "v", arg: 2, scope: !5876, file: !5481, line: 89, type: !4726)
!5880 = !DILocation(line: 89, column: 55, scope: !5876)
!5881 = !DILocation(line: 89, column: 68, scope: !5876)
!5882 = !DILocation(line: 91, column: 33, scope: !5876)
!5883 = !DILocation(line: 91, column: 32, scope: !5876)
!5884 = !DILocation(line: 91, column: 36, scope: !5876)
!5885 = !DILocation(line: 91, column: 9, scope: !5876)
!5886 = !DILocation(line: 91, column: 2, scope: !5876)
!5887 = distinct !DISubprogram(name: "proc_reg_llseek", scope: !2, file: !2, line: 281, type: !2931, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5888)
!5888 = !{!5889, !5890, !5891, !5892, !5893}
!5889 = !DILocalVariable(name: "file", arg: 1, scope: !5887, file: !2, line: 281, type: !620)
!5890 = !DILocalVariable(name: "offset", arg: 2, scope: !5887, file: !2, line: 281, type: !122)
!5891 = !DILocalVariable(name: "whence", arg: 3, scope: !5887, file: !2, line: 281, type: !103)
!5892 = !DILocalVariable(name: "pde", scope: !5887, file: !2, line: 283, type: !4280)
!5893 = !DILocalVariable(name: "rv", scope: !5887, file: !2, line: 284, type: !122)
!5894 = !DILocation(line: 281, column: 44, scope: !5887)
!5895 = !DILocation(line: 281, column: 57, scope: !5887)
!5896 = !DILocation(line: 281, column: 69, scope: !5887)
!5897 = !DILocation(line: 283, column: 2, scope: !5887)
!5898 = !DILocation(line: 283, column: 25, scope: !5887)
!5899 = !DILocation(line: 283, column: 46, scope: !5887)
!5900 = !DILocation(line: 283, column: 35, scope: !5887)
!5901 = !DILocation(line: 283, column: 31, scope: !5887)
!5902 = !DILocation(line: 284, column: 2, scope: !5887)
!5903 = !DILocation(line: 284, column: 9, scope: !5887)
!5904 = !DILocation(line: 286, column: 23, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5887, file: !2, line: 286, column: 6)
!5906 = !DILocation(line: 286, column: 6, scope: !5905)
!5907 = !DILocation(line: 286, column: 6, scope: !5887)
!5908 = !DILocation(line: 287, column: 10, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5905, file: !2, line: 286, column: 29)
!5910 = !DILocation(line: 287, column: 15, scope: !5909)
!5911 = !DILocation(line: 287, column: 25, scope: !5909)
!5912 = !DILocation(line: 287, column: 36, scope: !5909)
!5913 = !DILocation(line: 287, column: 42, scope: !5909)
!5914 = !DILocation(line: 287, column: 50, scope: !5909)
!5915 = !DILocation(line: 287, column: 3, scope: !5909)
!5916 = !DILocation(line: 288, column: 21, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5905, file: !2, line: 288, column: 13)
!5918 = !DILocation(line: 288, column: 13, scope: !5917)
!5919 = !DILocation(line: 288, column: 13, scope: !5905)
!5920 = !DILocation(line: 289, column: 8, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5917, file: !2, line: 288, column: 27)
!5922 = !DILocation(line: 289, column: 13, scope: !5921)
!5923 = !DILocation(line: 289, column: 23, scope: !5921)
!5924 = !DILocation(line: 289, column: 34, scope: !5921)
!5925 = !DILocation(line: 289, column: 40, scope: !5921)
!5926 = !DILocation(line: 289, column: 48, scope: !5921)
!5927 = !DILocation(line: 289, column: 6, scope: !5921)
!5928 = !DILocation(line: 290, column: 13, scope: !5921)
!5929 = !DILocation(line: 290, column: 3, scope: !5921)
!5930 = !DILocation(line: 291, column: 2, scope: !5921)
!5931 = !DILocation(line: 292, column: 9, scope: !5887)
!5932 = !DILocation(line: 292, column: 2, scope: !5887)
!5933 = !DILocation(line: 293, column: 1, scope: !5887)
!5934 = distinct !DISubprogram(name: "proc_reg_write", scope: !2, file: !2, line: 344, type: !2939, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5935)
!5935 = !{!5936, !5937, !5938, !5939, !5940, !5941}
!5936 = !DILocalVariable(name: "file", arg: 1, scope: !5934, file: !2, line: 344, type: !620)
!5937 = !DILocalVariable(name: "buf", arg: 2, scope: !5934, file: !2, line: 344, type: !98)
!5938 = !DILocalVariable(name: "count", arg: 3, scope: !5934, file: !2, line: 344, type: !116)
!5939 = !DILocalVariable(name: "ppos", arg: 4, scope: !5934, file: !2, line: 344, type: !121)
!5940 = !DILocalVariable(name: "pde", scope: !5934, file: !2, line: 346, type: !4280)
!5941 = !DILocalVariable(name: "rv", scope: !5934, file: !2, line: 347, type: !1112)
!5942 = !DILocation(line: 344, column: 44, scope: !5934)
!5943 = !DILocation(line: 344, column: 69, scope: !5934)
!5944 = !DILocation(line: 344, column: 81, scope: !5934)
!5945 = !DILocation(line: 344, column: 96, scope: !5934)
!5946 = !DILocation(line: 346, column: 2, scope: !5934)
!5947 = !DILocation(line: 346, column: 25, scope: !5934)
!5948 = !DILocation(line: 346, column: 46, scope: !5934)
!5949 = !DILocation(line: 346, column: 35, scope: !5934)
!5950 = !DILocation(line: 346, column: 31, scope: !5934)
!5951 = !DILocation(line: 347, column: 2, scope: !5934)
!5952 = !DILocation(line: 347, column: 10, scope: !5934)
!5953 = !DILocation(line: 349, column: 23, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5934, file: !2, line: 349, column: 6)
!5955 = !DILocation(line: 349, column: 6, scope: !5954)
!5956 = !DILocation(line: 349, column: 6, scope: !5934)
!5957 = !DILocation(line: 350, column: 20, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 349, column: 29)
!5959 = !DILocation(line: 350, column: 25, scope: !5958)
!5960 = !DILocation(line: 350, column: 31, scope: !5958)
!5961 = !DILocation(line: 350, column: 36, scope: !5958)
!5962 = !DILocation(line: 350, column: 43, scope: !5958)
!5963 = !DILocation(line: 350, column: 10, scope: !5958)
!5964 = !DILocation(line: 350, column: 3, scope: !5958)
!5965 = !DILocation(line: 351, column: 21, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 351, column: 13)
!5967 = !DILocation(line: 351, column: 13, scope: !5966)
!5968 = !DILocation(line: 351, column: 13, scope: !5954)
!5969 = !DILocation(line: 352, column: 18, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 351, column: 27)
!5971 = !DILocation(line: 352, column: 23, scope: !5970)
!5972 = !DILocation(line: 352, column: 29, scope: !5970)
!5973 = !DILocation(line: 352, column: 34, scope: !5970)
!5974 = !DILocation(line: 352, column: 41, scope: !5970)
!5975 = !DILocation(line: 352, column: 8, scope: !5970)
!5976 = !DILocation(line: 352, column: 6, scope: !5970)
!5977 = !DILocation(line: 353, column: 13, scope: !5970)
!5978 = !DILocation(line: 353, column: 3, scope: !5970)
!5979 = !DILocation(line: 354, column: 2, scope: !5970)
!5980 = !DILocation(line: 355, column: 9, scope: !5934)
!5981 = !DILocation(line: 355, column: 2, scope: !5934)
!5982 = !DILocation(line: 356, column: 1, scope: !5934)
!5983 = distinct !DISubprogram(name: "proc_reg_read_iter", scope: !2, file: !2, line: 295, type: !1743, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5984)
!5984 = !{!5985, !5986, !5987, !5988}
!5985 = !DILocalVariable(name: "iocb", arg: 1, scope: !5983, file: !2, line: 295, type: !1745)
!5986 = !DILocalVariable(name: "iter", arg: 2, scope: !5983, file: !2, line: 295, type: !1767)
!5987 = !DILocalVariable(name: "pde", scope: !5983, file: !2, line: 297, type: !4280)
!5988 = !DILocalVariable(name: "ret", scope: !5983, file: !2, line: 298, type: !1112)
!5989 = !DILocation(line: 295, column: 49, scope: !5983)
!5990 = !DILocation(line: 295, column: 72, scope: !5983)
!5991 = !DILocation(line: 297, column: 2, scope: !5983)
!5992 = !DILocation(line: 297, column: 25, scope: !5983)
!5993 = !DILocation(line: 297, column: 46, scope: !5983)
!5994 = !DILocation(line: 297, column: 52, scope: !5983)
!5995 = !DILocation(line: 297, column: 35, scope: !5983)
!5996 = !DILocation(line: 297, column: 31, scope: !5983)
!5997 = !DILocation(line: 298, column: 2, scope: !5983)
!5998 = !DILocation(line: 298, column: 10, scope: !5983)
!5999 = !DILocation(line: 300, column: 23, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5983, file: !2, line: 300, column: 6)
!6001 = !DILocation(line: 300, column: 6, scope: !6000)
!6002 = !DILocation(line: 300, column: 6, scope: !5983)
!6003 = !DILocation(line: 301, column: 10, scope: !6000)
!6004 = !DILocation(line: 301, column: 15, scope: !6000)
!6005 = !DILocation(line: 301, column: 25, scope: !6000)
!6006 = !DILocation(line: 301, column: 40, scope: !6000)
!6007 = !DILocation(line: 301, column: 46, scope: !6000)
!6008 = !DILocation(line: 301, column: 3, scope: !6000)
!6009 = !DILocation(line: 303, column: 15, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5983, file: !2, line: 303, column: 6)
!6011 = !DILocation(line: 303, column: 7, scope: !6010)
!6012 = !DILocation(line: 303, column: 6, scope: !5983)
!6013 = !DILocation(line: 304, column: 3, scope: !6010)
!6014 = !DILocation(line: 305, column: 8, scope: !5983)
!6015 = !DILocation(line: 305, column: 13, scope: !5983)
!6016 = !DILocation(line: 305, column: 23, scope: !5983)
!6017 = !DILocation(line: 305, column: 38, scope: !5983)
!6018 = !DILocation(line: 305, column: 44, scope: !5983)
!6019 = !DILocation(line: 305, column: 6, scope: !5983)
!6020 = !DILocation(line: 306, column: 12, scope: !5983)
!6021 = !DILocation(line: 306, column: 2, scope: !5983)
!6022 = !DILocation(line: 307, column: 9, scope: !5983)
!6023 = !DILocation(line: 307, column: 2, scope: !5983)
!6024 = !DILocation(line: 308, column: 1, scope: !5983)
!6025 = distinct !DISubprogram(name: "proc_reg_poll", scope: !2, file: !2, line: 368, type: !2964, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6026)
!6026 = !{!6027, !6028, !6029, !6030}
!6027 = !DILocalVariable(name: "file", arg: 1, scope: !6025, file: !2, line: 368, type: !620)
!6028 = !DILocalVariable(name: "pts", arg: 2, scope: !6025, file: !2, line: 368, type: !1981)
!6029 = !DILocalVariable(name: "pde", scope: !6025, file: !2, line: 370, type: !4280)
!6030 = !DILocalVariable(name: "rv", scope: !6025, file: !2, line: 371, type: !1979)
!6031 = !DILocation(line: 368, column: 44, scope: !6025)
!6032 = !DILocation(line: 368, column: 76, scope: !6025)
!6033 = !DILocation(line: 370, column: 2, scope: !6025)
!6034 = !DILocation(line: 370, column: 25, scope: !6025)
!6035 = !DILocation(line: 370, column: 46, scope: !6025)
!6036 = !DILocation(line: 370, column: 35, scope: !6025)
!6037 = !DILocation(line: 370, column: 31, scope: !6025)
!6038 = !DILocation(line: 371, column: 2, scope: !6025)
!6039 = !DILocation(line: 371, column: 11, scope: !6025)
!6040 = !DILocation(line: 373, column: 23, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6025, file: !2, line: 373, column: 6)
!6042 = !DILocation(line: 373, column: 6, scope: !6041)
!6043 = !DILocation(line: 373, column: 6, scope: !6025)
!6044 = !DILocation(line: 374, column: 19, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 373, column: 29)
!6046 = !DILocation(line: 374, column: 24, scope: !6045)
!6047 = !DILocation(line: 374, column: 30, scope: !6045)
!6048 = !DILocation(line: 374, column: 10, scope: !6045)
!6049 = !DILocation(line: 374, column: 3, scope: !6045)
!6050 = !DILocation(line: 375, column: 21, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 375, column: 13)
!6052 = !DILocation(line: 375, column: 13, scope: !6051)
!6053 = !DILocation(line: 375, column: 13, scope: !6041)
!6054 = !DILocation(line: 376, column: 17, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 375, column: 27)
!6056 = !DILocation(line: 376, column: 22, scope: !6055)
!6057 = !DILocation(line: 376, column: 28, scope: !6055)
!6058 = !DILocation(line: 376, column: 8, scope: !6055)
!6059 = !DILocation(line: 376, column: 6, scope: !6055)
!6060 = !DILocation(line: 377, column: 13, scope: !6055)
!6061 = !DILocation(line: 377, column: 3, scope: !6055)
!6062 = !DILocation(line: 378, column: 2, scope: !6055)
!6063 = !DILocation(line: 379, column: 9, scope: !6025)
!6064 = !DILocation(line: 379, column: 2, scope: !6025)
!6065 = !DILocation(line: 380, column: 1, scope: !6025)
!6066 = distinct !DISubprogram(name: "proc_reg_unlocked_ioctl", scope: !2, file: !2, line: 392, type: !2968, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6067)
!6067 = !{!6068, !6069, !6070, !6071, !6072}
!6068 = !DILocalVariable(name: "file", arg: 1, scope: !6066, file: !2, line: 392, type: !620)
!6069 = !DILocalVariable(name: "cmd", arg: 2, scope: !6066, file: !2, line: 392, type: !13)
!6070 = !DILocalVariable(name: "arg", arg: 3, scope: !6066, file: !2, line: 392, type: !120)
!6071 = !DILocalVariable(name: "pde", scope: !6066, file: !2, line: 394, type: !4280)
!6072 = !DILocalVariable(name: "rv", scope: !6066, file: !2, line: 395, type: !1073)
!6073 = !DILocation(line: 392, column: 50, scope: !6066)
!6074 = !DILocation(line: 392, column: 69, scope: !6066)
!6075 = !DILocation(line: 392, column: 88, scope: !6066)
!6076 = !DILocation(line: 394, column: 2, scope: !6066)
!6077 = !DILocation(line: 394, column: 25, scope: !6066)
!6078 = !DILocation(line: 394, column: 46, scope: !6066)
!6079 = !DILocation(line: 394, column: 35, scope: !6066)
!6080 = !DILocation(line: 394, column: 31, scope: !6066)
!6081 = !DILocation(line: 395, column: 2, scope: !6066)
!6082 = !DILocation(line: 395, column: 7, scope: !6066)
!6083 = !DILocation(line: 397, column: 23, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6066, file: !2, line: 397, column: 6)
!6085 = !DILocation(line: 397, column: 6, scope: !6084)
!6086 = !DILocation(line: 397, column: 6, scope: !6066)
!6087 = !DILocation(line: 398, column: 20, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6084, file: !2, line: 397, column: 29)
!6089 = !DILocation(line: 398, column: 25, scope: !6088)
!6090 = !DILocation(line: 398, column: 31, scope: !6088)
!6091 = !DILocation(line: 398, column: 36, scope: !6088)
!6092 = !DILocation(line: 398, column: 10, scope: !6088)
!6093 = !DILocation(line: 398, column: 3, scope: !6088)
!6094 = !DILocation(line: 399, column: 21, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6084, file: !2, line: 399, column: 13)
!6096 = !DILocation(line: 399, column: 13, scope: !6095)
!6097 = !DILocation(line: 399, column: 13, scope: !6084)
!6098 = !DILocation(line: 400, column: 18, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6095, file: !2, line: 399, column: 27)
!6100 = !DILocation(line: 400, column: 23, scope: !6099)
!6101 = !DILocation(line: 400, column: 29, scope: !6099)
!6102 = !DILocation(line: 400, column: 34, scope: !6099)
!6103 = !DILocation(line: 400, column: 8, scope: !6099)
!6104 = !DILocation(line: 400, column: 6, scope: !6099)
!6105 = !DILocation(line: 401, column: 13, scope: !6099)
!6106 = !DILocation(line: 401, column: 3, scope: !6099)
!6107 = !DILocation(line: 402, column: 2, scope: !6099)
!6108 = !DILocation(line: 403, column: 9, scope: !6066)
!6109 = !DILocation(line: 403, column: 2, scope: !6066)
!6110 = !DILocation(line: 404, column: 1, scope: !6066)
!6111 = distinct !DISubprogram(name: "proc_reg_mmap", scope: !2, file: !2, line: 441, type: !2973, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6112)
!6112 = !{!6113, !6114, !6115, !6116}
!6113 = !DILocalVariable(name: "file", arg: 1, scope: !6111, file: !2, line: 441, type: !620)
!6114 = !DILocalVariable(name: "vma", arg: 2, scope: !6111, file: !2, line: 441, type: !1451)
!6115 = !DILocalVariable(name: "pde", scope: !6111, file: !2, line: 443, type: !4280)
!6116 = !DILocalVariable(name: "rv", scope: !6111, file: !2, line: 444, type: !103)
!6117 = !DILocation(line: 441, column: 39, scope: !6111)
!6118 = !DILocation(line: 441, column: 68, scope: !6111)
!6119 = !DILocation(line: 443, column: 2, scope: !6111)
!6120 = !DILocation(line: 443, column: 25, scope: !6111)
!6121 = !DILocation(line: 443, column: 46, scope: !6111)
!6122 = !DILocation(line: 443, column: 35, scope: !6111)
!6123 = !DILocation(line: 443, column: 31, scope: !6111)
!6124 = !DILocation(line: 444, column: 2, scope: !6111)
!6125 = !DILocation(line: 444, column: 6, scope: !6111)
!6126 = !DILocation(line: 446, column: 23, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6111, file: !2, line: 446, column: 6)
!6128 = !DILocation(line: 446, column: 6, scope: !6127)
!6129 = !DILocation(line: 446, column: 6, scope: !6111)
!6130 = !DILocation(line: 447, column: 19, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6127, file: !2, line: 446, column: 29)
!6132 = !DILocation(line: 447, column: 24, scope: !6131)
!6133 = !DILocation(line: 447, column: 30, scope: !6131)
!6134 = !DILocation(line: 447, column: 10, scope: !6131)
!6135 = !DILocation(line: 447, column: 3, scope: !6131)
!6136 = !DILocation(line: 448, column: 21, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6127, file: !2, line: 448, column: 13)
!6138 = !DILocation(line: 448, column: 13, scope: !6137)
!6139 = !DILocation(line: 448, column: 13, scope: !6127)
!6140 = !DILocation(line: 449, column: 17, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6137, file: !2, line: 448, column: 27)
!6142 = !DILocation(line: 449, column: 22, scope: !6141)
!6143 = !DILocation(line: 449, column: 28, scope: !6141)
!6144 = !DILocation(line: 449, column: 8, scope: !6141)
!6145 = !DILocation(line: 449, column: 6, scope: !6141)
!6146 = !DILocation(line: 450, column: 13, scope: !6141)
!6147 = !DILocation(line: 450, column: 3, scope: !6141)
!6148 = !DILocation(line: 451, column: 2, scope: !6141)
!6149 = !DILocation(line: 452, column: 9, scope: !6111)
!6150 = !DILocation(line: 452, column: 2, scope: !6111)
!6151 = !DILocation(line: 453, column: 1, scope: !6111)
!6152 = distinct !DISubprogram(name: "proc_reg_open", scope: !2, file: !2, line: 489, type: !2978, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6153)
!6153 = !{!6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161}
!6154 = !DILocalVariable(name: "inode", arg: 1, scope: !6152, file: !2, line: 489, type: !959)
!6155 = !DILocalVariable(name: "file", arg: 2, scope: !6152, file: !2, line: 489, type: !620)
!6156 = !DILocalVariable(name: "pde", scope: !6152, file: !2, line: 491, type: !4280)
!6157 = !DILocalVariable(name: "rv", scope: !6152, file: !2, line: 492, type: !103)
!6158 = !DILocalVariable(name: "open", scope: !6152, file: !2, line: 493, type: !2977)
!6159 = !DILocalVariable(name: "release", scope: !6152, file: !2, line: 494, type: !2977)
!6160 = !DILocalVariable(name: "pdeo", scope: !6152, file: !2, line: 495, type: !4398)
!6161 = !DILabel(scope: !6152, name: "out_unuse", file: !2, line: 547)
!6162 = !DILocation(line: 489, column: 40, scope: !6152)
!6163 = !DILocation(line: 489, column: 60, scope: !6152)
!6164 = !DILocation(line: 491, column: 2, scope: !6152)
!6165 = !DILocation(line: 491, column: 25, scope: !6152)
!6166 = !DILocation(line: 491, column: 35, scope: !6152)
!6167 = !DILocation(line: 491, column: 31, scope: !6152)
!6168 = !DILocation(line: 492, column: 2, scope: !6152)
!6169 = !DILocation(line: 492, column: 6, scope: !6152)
!6170 = !DILocation(line: 493, column: 2, scope: !6152)
!6171 = !DILocation(line: 493, column: 44, scope: !6152)
!6172 = !DILocation(line: 494, column: 2, scope: !6152)
!6173 = !DILocation(line: 494, column: 47, scope: !6152)
!6174 = !DILocation(line: 495, column: 2, scope: !6152)
!6175 = !DILocation(line: 495, column: 21, scope: !6152)
!6176 = !DILocation(line: 497, column: 7, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 497, column: 6)
!6178 = !DILocation(line: 497, column: 12, scope: !6177)
!6179 = !DILocation(line: 497, column: 22, scope: !6177)
!6180 = !DILocation(line: 497, column: 6, scope: !6152)
!6181 = !DILocation(line: 498, column: 3, scope: !6177)
!6182 = !DILocation(line: 498, column: 9, scope: !6177)
!6183 = !DILocation(line: 498, column: 16, scope: !6177)
!6184 = !DILocation(line: 500, column: 23, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 500, column: 6)
!6186 = !DILocation(line: 500, column: 6, scope: !6185)
!6187 = !DILocation(line: 500, column: 6, scope: !6152)
!6188 = !DILocation(line: 501, column: 10, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6185, file: !2, line: 500, column: 29)
!6190 = !DILocation(line: 501, column: 15, scope: !6189)
!6191 = !DILocation(line: 501, column: 25, scope: !6189)
!6192 = !DILocation(line: 501, column: 8, scope: !6189)
!6193 = !DILocation(line: 502, column: 7, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6189, file: !2, line: 502, column: 7)
!6195 = !DILocation(line: 502, column: 7, scope: !6189)
!6196 = !DILocation(line: 503, column: 9, scope: !6194)
!6197 = !DILocation(line: 503, column: 14, scope: !6194)
!6198 = !DILocation(line: 503, column: 21, scope: !6194)
!6199 = !DILocation(line: 503, column: 7, scope: !6194)
!6200 = !DILocation(line: 503, column: 4, scope: !6194)
!6201 = !DILocation(line: 504, column: 10, scope: !6189)
!6202 = !DILocation(line: 504, column: 3, scope: !6189)
!6203 = !DILocation(line: 518, column: 15, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 518, column: 6)
!6205 = !DILocation(line: 518, column: 7, scope: !6204)
!6206 = !DILocation(line: 518, column: 6, scope: !6152)
!6207 = !DILocation(line: 519, column: 3, scope: !6204)
!6208 = !DILocation(line: 521, column: 12, scope: !6152)
!6209 = !DILocation(line: 521, column: 17, scope: !6152)
!6210 = !DILocation(line: 521, column: 27, scope: !6152)
!6211 = !DILocation(line: 521, column: 10, scope: !6152)
!6212 = !DILocation(line: 522, column: 6, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 522, column: 6)
!6214 = !DILocation(line: 522, column: 6, scope: !6152)
!6215 = !DILocation(line: 523, column: 27, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6213, file: !2, line: 522, column: 15)
!6217 = !DILocation(line: 523, column: 10, scope: !6216)
!6218 = !DILocation(line: 523, column: 8, scope: !6216)
!6219 = !DILocation(line: 524, column: 8, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6221, file: !2, line: 524, column: 7)
!6221 = !DILexicalBlockFile(scope: !6216, file: !2, discriminator: 0)
!6222 = !DILocation(line: 524, column: 7, scope: !6221)
!6223 = !DILocation(line: 525, column: 7, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6220, file: !2, line: 524, column: 14)
!6225 = !DILocation(line: 526, column: 4, scope: !6224)
!6226 = !DILocation(line: 528, column: 2, scope: !6221)
!6227 = !DILocation(line: 530, column: 9, scope: !6152)
!6228 = !DILocation(line: 530, column: 14, scope: !6152)
!6229 = !DILocation(line: 530, column: 24, scope: !6152)
!6230 = !DILocation(line: 530, column: 7, scope: !6152)
!6231 = !DILocation(line: 531, column: 6, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 531, column: 6)
!6233 = !DILocation(line: 531, column: 6, scope: !6152)
!6234 = !DILocation(line: 532, column: 8, scope: !6232)
!6235 = !DILocation(line: 532, column: 13, scope: !6232)
!6236 = !DILocation(line: 532, column: 20, scope: !6232)
!6237 = !DILocation(line: 532, column: 6, scope: !6232)
!6238 = !DILocation(line: 532, column: 3, scope: !6232)
!6239 = !DILocation(line: 534, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6152, file: !2, line: 534, column: 6)
!6241 = !DILocation(line: 534, column: 6, scope: !6152)
!6242 = !DILocation(line: 535, column: 7, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6244, file: !2, line: 535, column: 7)
!6244 = distinct !DILexicalBlock(scope: !6240, file: !2, line: 534, column: 15)
!6245 = !DILocation(line: 535, column: 10, scope: !6243)
!6246 = !DILocation(line: 535, column: 7, scope: !6244)
!6247 = !DILocation(line: 537, column: 17, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6243, file: !2, line: 535, column: 16)
!6249 = !DILocation(line: 537, column: 4, scope: !6248)
!6250 = !DILocation(line: 537, column: 10, scope: !6248)
!6251 = !DILocation(line: 537, column: 15, scope: !6248)
!6252 = !DILocation(line: 538, column: 4, scope: !6248)
!6253 = !DILocation(line: 538, column: 10, scope: !6248)
!6254 = !DILocation(line: 538, column: 18, scope: !6248)
!6255 = !DILocation(line: 539, column: 4, scope: !6248)
!6256 = !DILocation(line: 539, column: 10, scope: !6248)
!6257 = !DILocation(line: 539, column: 12, scope: !6248)
!6258 = !DILocation(line: 540, column: 15, scope: !6248)
!6259 = !DILocation(line: 540, column: 20, scope: !6248)
!6260 = !DILocation(line: 540, column: 4, scope: !6248)
!6261 = !DILocation(line: 541, column: 14, scope: !6248)
!6262 = !DILocation(line: 541, column: 20, scope: !6248)
!6263 = !DILocation(line: 541, column: 25, scope: !6248)
!6264 = !DILocation(line: 541, column: 30, scope: !6248)
!6265 = !DILocation(line: 541, column: 4, scope: !6248)
!6266 = !DILocation(line: 542, column: 17, scope: !6248)
!6267 = !DILocation(line: 542, column: 22, scope: !6248)
!6268 = !DILocation(line: 542, column: 4, scope: !6248)
!6269 = !DILocation(line: 543, column: 3, scope: !6248)
!6270 = !DILocation(line: 544, column: 20, scope: !6243)
!6271 = !DILocation(line: 544, column: 38, scope: !6243)
!6272 = !DILocation(line: 544, column: 4, scope: !6243)
!6273 = !DILocation(line: 545, column: 2, scope: !6244)
!6274 = !DILocation(line: 547, column: 1, scope: !6152)
!6275 = !DILocation(line: 548, column: 12, scope: !6152)
!6276 = !DILocation(line: 548, column: 2, scope: !6152)
!6277 = !DILocation(line: 549, column: 9, scope: !6152)
!6278 = !DILocation(line: 549, column: 2, scope: !6152)
!6279 = !DILocation(line: 550, column: 1, scope: !6152)
!6280 = distinct !DISubprogram(name: "proc_reg_release", scope: !2, file: !2, line: 552, type: !2978, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6281)
!6281 = !{!6282, !6283, !6284, !6285, !6286, !6289, !6292}
!6282 = !DILocalVariable(name: "inode", arg: 1, scope: !6280, file: !2, line: 552, type: !959)
!6283 = !DILocalVariable(name: "file", arg: 2, scope: !6280, file: !2, line: 552, type: !620)
!6284 = !DILocalVariable(name: "pde", scope: !6280, file: !2, line: 554, type: !4280)
!6285 = !DILocalVariable(name: "pdeo", scope: !6280, file: !2, line: 555, type: !4398)
!6286 = !DILocalVariable(name: "release", scope: !6287, file: !2, line: 558, type: !2977)
!6287 = distinct !DILexicalBlock(scope: !6288, file: !2, line: 557, column: 29)
!6288 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 557, column: 6)
!6289 = !DILocalVariable(name: "__mptr", scope: !6290, file: !2, line: 568, type: !101)
!6290 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 568, column: 2)
!6291 = distinct !DILexicalBlock(scope: !6280, file: !2, line: 568, column: 2)
!6292 = !DILocalVariable(name: "__mptr", scope: !6293, file: !2, line: 568, type: !101)
!6293 = distinct !DILexicalBlock(scope: !6294, file: !2, line: 568, column: 2)
!6294 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 568, column: 2)
!6295 = !DILocation(line: 552, column: 43, scope: !6280)
!6296 = !DILocation(line: 552, column: 63, scope: !6280)
!6297 = !DILocation(line: 554, column: 2, scope: !6280)
!6298 = !DILocation(line: 554, column: 25, scope: !6280)
!6299 = !DILocation(line: 554, column: 35, scope: !6280)
!6300 = !DILocation(line: 554, column: 31, scope: !6280)
!6301 = !DILocation(line: 555, column: 2, scope: !6280)
!6302 = !DILocation(line: 555, column: 21, scope: !6280)
!6303 = !DILocation(line: 557, column: 23, scope: !6288)
!6304 = !DILocation(line: 557, column: 6, scope: !6288)
!6305 = !DILocation(line: 557, column: 6, scope: !6280)
!6306 = !DILocation(line: 558, column: 3, scope: !6287)
!6307 = !DILocation(line: 558, column: 48, scope: !6287)
!6308 = !DILocation(line: 560, column: 13, scope: !6287)
!6309 = !DILocation(line: 560, column: 18, scope: !6287)
!6310 = !DILocation(line: 560, column: 28, scope: !6287)
!6311 = !DILocation(line: 560, column: 11, scope: !6287)
!6312 = !DILocation(line: 561, column: 7, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 561, column: 7)
!6314 = !DILocation(line: 561, column: 7, scope: !6287)
!6315 = !DILocation(line: 562, column: 11, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6313, file: !2, line: 561, column: 16)
!6317 = !DILocation(line: 562, column: 19, scope: !6316)
!6318 = !DILocation(line: 562, column: 26, scope: !6316)
!6319 = !DILocation(line: 562, column: 4, scope: !6316)
!6320 = !DILocation(line: 564, column: 3, scope: !6287)
!6321 = !DILocation(line: 565, column: 2, scope: !6288)
!6322 = !DILocation(line: 567, column: 13, scope: !6280)
!6323 = !DILocation(line: 567, column: 18, scope: !6280)
!6324 = !DILocation(line: 567, column: 2, scope: !6280)
!6325 = !DILocation(line: 568, column: 2, scope: !6290)
!6326 = !DILocation(line: 568, column: 2, scope: !6291)
!6327 = !DILocation(line: 568, column: 2, scope: !6294)
!6328 = !DILocation(line: 569, column: 7, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6330, file: !2, line: 569, column: 7)
!6330 = distinct !DILexicalBlock(scope: !6294, file: !2, line: 568, column: 51)
!6331 = !DILocation(line: 569, column: 13, scope: !6329)
!6332 = !DILocation(line: 569, column: 21, scope: !6329)
!6333 = !DILocation(line: 569, column: 18, scope: !6329)
!6334 = !DILocation(line: 569, column: 7, scope: !6330)
!6335 = !DILocation(line: 570, column: 15, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 569, column: 27)
!6337 = !DILocation(line: 570, column: 20, scope: !6336)
!6338 = !DILocation(line: 570, column: 4, scope: !6336)
!6339 = !DILocation(line: 571, column: 4, scope: !6336)
!6340 = !DILocation(line: 573, column: 2, scope: !6330)
!6341 = !DILocation(line: 568, column: 2, scope: !6293)
!6342 = distinct !{!6342, !6326, !6343, !4660, !4605}
!6343 = !DILocation(line: 573, column: 2, scope: !6291)
!6344 = !DILocation(line: 574, column: 15, scope: !6280)
!6345 = !DILocation(line: 574, column: 20, scope: !6280)
!6346 = !DILocation(line: 574, column: 2, scope: !6280)
!6347 = !DILocation(line: 575, column: 2, scope: !6280)
!6348 = !DILocation(line: 576, column: 1, scope: !6280)
!6349 = distinct !DISubprogram(name: "proc_reg_get_unmapped_area", scope: !2, file: !2, line: 473, type: !618, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6350)
!6350 = !{!6351, !6352, !6353, !6354, !6355, !6356, !6357}
!6351 = !DILocalVariable(name: "file", arg: 1, scope: !6349, file: !2, line: 473, type: !620)
!6352 = !DILocalVariable(name: "orig_addr", arg: 2, scope: !6349, file: !2, line: 473, type: !120)
!6353 = !DILocalVariable(name: "len", arg: 3, scope: !6349, file: !2, line: 474, type: !120)
!6354 = !DILocalVariable(name: "pgoff", arg: 4, scope: !6349, file: !2, line: 474, type: !120)
!6355 = !DILocalVariable(name: "flags", arg: 5, scope: !6349, file: !2, line: 475, type: !120)
!6356 = !DILocalVariable(name: "pde", scope: !6349, file: !2, line: 477, type: !4280)
!6357 = !DILocalVariable(name: "rv", scope: !6349, file: !2, line: 478, type: !120)
!6358 = !DILocation(line: 473, column: 41, scope: !6349)
!6359 = !DILocation(line: 473, column: 61, scope: !6349)
!6360 = !DILocation(line: 474, column: 21, scope: !6349)
!6361 = !DILocation(line: 474, column: 40, scope: !6349)
!6362 = !DILocation(line: 475, column: 21, scope: !6349)
!6363 = !DILocation(line: 477, column: 2, scope: !6349)
!6364 = !DILocation(line: 477, column: 25, scope: !6349)
!6365 = !DILocation(line: 477, column: 46, scope: !6349)
!6366 = !DILocation(line: 477, column: 35, scope: !6349)
!6367 = !DILocation(line: 477, column: 31, scope: !6349)
!6368 = !DILocation(line: 478, column: 2, scope: !6349)
!6369 = !DILocation(line: 478, column: 16, scope: !6349)
!6370 = !DILocation(line: 480, column: 23, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6349, file: !2, line: 480, column: 6)
!6372 = !DILocation(line: 480, column: 6, scope: !6371)
!6373 = !DILocation(line: 480, column: 6, scope: !6349)
!6374 = !DILocation(line: 481, column: 32, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 480, column: 29)
!6376 = !DILocation(line: 481, column: 37, scope: !6375)
!6377 = !DILocation(line: 481, column: 43, scope: !6375)
!6378 = !DILocation(line: 481, column: 54, scope: !6375)
!6379 = !DILocation(line: 481, column: 59, scope: !6375)
!6380 = !DILocation(line: 481, column: 66, scope: !6375)
!6381 = !DILocation(line: 481, column: 10, scope: !6375)
!6382 = !DILocation(line: 481, column: 3, scope: !6375)
!6383 = !DILocation(line: 482, column: 21, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 482, column: 13)
!6385 = !DILocation(line: 482, column: 13, scope: !6384)
!6386 = !DILocation(line: 482, column: 13, scope: !6371)
!6387 = !DILocation(line: 483, column: 30, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6384, file: !2, line: 482, column: 27)
!6389 = !DILocation(line: 483, column: 35, scope: !6388)
!6390 = !DILocation(line: 483, column: 41, scope: !6388)
!6391 = !DILocation(line: 483, column: 52, scope: !6388)
!6392 = !DILocation(line: 483, column: 57, scope: !6388)
!6393 = !DILocation(line: 483, column: 64, scope: !6388)
!6394 = !DILocation(line: 483, column: 8, scope: !6388)
!6395 = !DILocation(line: 483, column: 6, scope: !6388)
!6396 = !DILocation(line: 484, column: 13, scope: !6388)
!6397 = !DILocation(line: 484, column: 3, scope: !6388)
!6398 = !DILocation(line: 485, column: 2, scope: !6388)
!6399 = !DILocation(line: 486, column: 9, scope: !6349)
!6400 = !DILocation(line: 486, column: 2, scope: !6349)
!6401 = !DILocation(line: 487, column: 1, scope: !6349)
!6402 = distinct !DISubprogram(name: "pde_is_permanent", scope: !220, file: !220, line: 77, type: !5287, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6403)
!6403 = !{!6404}
!6404 = !DILocalVariable(name: "pde", arg: 1, scope: !6402, file: !220, line: 77, type: !5289)
!6405 = !DILocation(line: 77, column: 66, scope: !6402)
!6406 = !DILocation(line: 79, column: 9, scope: !6402)
!6407 = !DILocation(line: 79, column: 14, scope: !6402)
!6408 = !DILocation(line: 79, column: 20, scope: !6402)
!6409 = !DILocation(line: 79, column: 2, scope: !6402)
!6410 = distinct !DISubprogram(name: "pde_write", scope: !2, file: !2, line: 334, type: !6411, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6413)
!6411 = !DISubroutineType(types: !6412)
!6412 = !{!1112, !4280, !620, !98, !116, !121}
!6413 = !{!6414, !6415, !6416, !6417, !6418, !6419}
!6414 = !DILocalVariable(name: "pde", arg: 1, scope: !6410, file: !2, line: 334, type: !4280)
!6415 = !DILocalVariable(name: "file", arg: 2, scope: !6410, file: !2, line: 334, type: !620)
!6416 = !DILocalVariable(name: "buf", arg: 3, scope: !6410, file: !2, line: 334, type: !98)
!6417 = !DILocalVariable(name: "count", arg: 4, scope: !6410, file: !2, line: 334, type: !116)
!6418 = !DILocalVariable(name: "ppos", arg: 5, scope: !6410, file: !2, line: 334, type: !121)
!6419 = !DILocalVariable(name: "write", scope: !6410, file: !2, line: 336, type: !2938)
!6420 = !DILocation(line: 334, column: 49, scope: !6410)
!6421 = !DILocation(line: 334, column: 67, scope: !6410)
!6422 = !DILocation(line: 334, column: 92, scope: !6410)
!6423 = !DILocation(line: 334, column: 104, scope: !6410)
!6424 = !DILocation(line: 334, column: 119, scope: !6410)
!6425 = !DILocation(line: 336, column: 2, scope: !6410)
!6426 = !DILocation(line: 336, column: 45, scope: !6410)
!6427 = !DILocation(line: 338, column: 10, scope: !6410)
!6428 = !DILocation(line: 338, column: 15, scope: !6410)
!6429 = !DILocation(line: 338, column: 25, scope: !6410)
!6430 = !DILocation(line: 338, column: 8, scope: !6410)
!6431 = !DILocation(line: 339, column: 6, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6410, file: !2, line: 339, column: 6)
!6433 = !DILocation(line: 339, column: 6, scope: !6410)
!6434 = !DILocation(line: 340, column: 10, scope: !6432)
!6435 = !DILocation(line: 340, column: 16, scope: !6432)
!6436 = !DILocation(line: 340, column: 22, scope: !6432)
!6437 = !DILocation(line: 340, column: 27, scope: !6432)
!6438 = !DILocation(line: 340, column: 34, scope: !6432)
!6439 = !DILocation(line: 340, column: 3, scope: !6432)
!6440 = !DILocation(line: 341, column: 2, scope: !6410)
!6441 = !DILocation(line: 342, column: 1, scope: !6410)
!6442 = distinct !DISubprogram(name: "pde_poll", scope: !2, file: !2, line: 358, type: !6443, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6445)
!6443 = !DISubroutineType(types: !6444)
!6444 = !{!1979, !4280, !620, !1981}
!6445 = !{!6446, !6447, !6448, !6449}
!6446 = !DILocalVariable(name: "pde", arg: 1, scope: !6442, file: !2, line: 358, type: !4280)
!6447 = !DILocalVariable(name: "file", arg: 2, scope: !6442, file: !2, line: 358, type: !620)
!6448 = !DILocalVariable(name: "pts", arg: 3, scope: !6442, file: !2, line: 358, type: !1981)
!6449 = !DILocalVariable(name: "poll", scope: !6442, file: !2, line: 360, type: !2963)
!6450 = !DILocation(line: 358, column: 49, scope: !6442)
!6451 = !DILocation(line: 358, column: 67, scope: !6442)
!6452 = !DILocation(line: 358, column: 99, scope: !6442)
!6453 = !DILocation(line: 360, column: 2, scope: !6442)
!6454 = !DILocation(line: 360, column: 44, scope: !6442)
!6455 = !DILocation(line: 362, column: 9, scope: !6442)
!6456 = !DILocation(line: 362, column: 14, scope: !6442)
!6457 = !DILocation(line: 362, column: 24, scope: !6442)
!6458 = !DILocation(line: 362, column: 7, scope: !6442)
!6459 = !DILocation(line: 363, column: 6, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6442, file: !2, line: 363, column: 6)
!6461 = !DILocation(line: 363, column: 6, scope: !6442)
!6462 = !DILocation(line: 364, column: 10, scope: !6460)
!6463 = !DILocation(line: 364, column: 15, scope: !6460)
!6464 = !DILocation(line: 364, column: 21, scope: !6460)
!6465 = !DILocation(line: 364, column: 3, scope: !6460)
!6466 = !DILocation(line: 365, column: 2, scope: !6442)
!6467 = !DILocation(line: 366, column: 1, scope: !6442)
!6468 = distinct !DISubprogram(name: "pde_ioctl", scope: !2, file: !2, line: 382, type: !6469, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6471)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!1073, !4280, !620, !13, !120}
!6471 = !{!6472, !6473, !6474, !6475, !6476}
!6472 = !DILocalVariable(name: "pde", arg: 1, scope: !6468, file: !2, line: 382, type: !4280)
!6473 = !DILocalVariable(name: "file", arg: 2, scope: !6468, file: !2, line: 382, type: !620)
!6474 = !DILocalVariable(name: "cmd", arg: 3, scope: !6468, file: !2, line: 382, type: !13)
!6475 = !DILocalVariable(name: "arg", arg: 4, scope: !6468, file: !2, line: 382, type: !120)
!6476 = !DILocalVariable(name: "ioctl", scope: !6468, file: !2, line: 384, type: !2967)
!6477 = !DILocation(line: 382, column: 46, scope: !6468)
!6478 = !DILocation(line: 382, column: 64, scope: !6468)
!6479 = !DILocation(line: 382, column: 83, scope: !6468)
!6480 = !DILocation(line: 382, column: 102, scope: !6468)
!6481 = !DILocation(line: 384, column: 2, scope: !6468)
!6482 = !DILocation(line: 384, column: 45, scope: !6468)
!6483 = !DILocation(line: 386, column: 10, scope: !6468)
!6484 = !DILocation(line: 386, column: 15, scope: !6468)
!6485 = !DILocation(line: 386, column: 25, scope: !6468)
!6486 = !DILocation(line: 386, column: 8, scope: !6468)
!6487 = !DILocation(line: 387, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6468, file: !2, line: 387, column: 6)
!6489 = !DILocation(line: 387, column: 6, scope: !6468)
!6490 = !DILocation(line: 388, column: 10, scope: !6488)
!6491 = !DILocation(line: 388, column: 16, scope: !6488)
!6492 = !DILocation(line: 388, column: 22, scope: !6488)
!6493 = !DILocation(line: 388, column: 27, scope: !6488)
!6494 = !DILocation(line: 388, column: 3, scope: !6488)
!6495 = !DILocation(line: 389, column: 2, scope: !6468)
!6496 = !DILocation(line: 390, column: 1, scope: !6468)
!6497 = distinct !DISubprogram(name: "pde_mmap", scope: !2, file: !2, line: 431, type: !6498, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6500)
!6498 = !DISubroutineType(types: !6499)
!6499 = !{!103, !4280, !620, !1451}
!6500 = !{!6501, !6502, !6503, !6504}
!6501 = !DILocalVariable(name: "pde", arg: 1, scope: !6497, file: !2, line: 431, type: !4280)
!6502 = !DILocalVariable(name: "file", arg: 2, scope: !6497, file: !2, line: 431, type: !620)
!6503 = !DILocalVariable(name: "vma", arg: 3, scope: !6497, file: !2, line: 431, type: !1451)
!6504 = !DILocalVariable(name: "mmap", scope: !6497, file: !2, line: 433, type: !2972)
!6505 = !DILocation(line: 431, column: 44, scope: !6497)
!6506 = !DILocation(line: 431, column: 62, scope: !6497)
!6507 = !DILocation(line: 431, column: 91, scope: !6497)
!6508 = !DILocation(line: 433, column: 2, scope: !6497)
!6509 = !DILocation(line: 433, column: 44, scope: !6497)
!6510 = !DILocation(line: 435, column: 9, scope: !6497)
!6511 = !DILocation(line: 435, column: 14, scope: !6497)
!6512 = !DILocation(line: 435, column: 24, scope: !6497)
!6513 = !DILocation(line: 435, column: 7, scope: !6497)
!6514 = !DILocation(line: 436, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6497, file: !2, line: 436, column: 6)
!6516 = !DILocation(line: 436, column: 6, scope: !6497)
!6517 = !DILocation(line: 437, column: 10, scope: !6515)
!6518 = !DILocation(line: 437, column: 15, scope: !6515)
!6519 = !DILocation(line: 437, column: 21, scope: !6515)
!6520 = !DILocation(line: 437, column: 3, scope: !6515)
!6521 = !DILocation(line: 438, column: 2, scope: !6497)
!6522 = !DILocation(line: 439, column: 1, scope: !6497)
!6523 = !DISubprogram(name: "kmem_cache_alloc", scope: !4517, file: !4517, line: 500, type: !6524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!101, !4210, !272}
!6526 = distinct !DISubprogram(name: "list_add", scope: !4994, file: !4994, line: 167, type: !5724, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6527)
!6527 = !{!6528, !6529}
!6528 = !DILocalVariable(name: "new", arg: 1, scope: !6526, file: !4994, line: 167, type: !181)
!6529 = !DILocalVariable(name: "head", arg: 2, scope: !6526, file: !4994, line: 167, type: !181)
!6530 = !DILocation(line: 167, column: 47, scope: !6526)
!6531 = !DILocation(line: 167, column: 70, scope: !6526)
!6532 = !DILocation(line: 169, column: 13, scope: !6526)
!6533 = !DILocation(line: 169, column: 18, scope: !6526)
!6534 = !DILocation(line: 169, column: 24, scope: !6526)
!6535 = !DILocation(line: 169, column: 30, scope: !6526)
!6536 = !DILocation(line: 169, column: 2, scope: !6526)
!6537 = !DILocation(line: 170, column: 1, scope: !6526)
!6538 = distinct !DISubprogram(name: "__list_add", scope: !4994, file: !4994, line: 146, type: !6539, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6541)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{null, !181, !181, !181}
!6541 = !{!6542, !6543, !6544}
!6542 = !DILocalVariable(name: "new", arg: 1, scope: !6538, file: !4994, line: 146, type: !181)
!6543 = !DILocalVariable(name: "prev", arg: 2, scope: !6538, file: !4994, line: 147, type: !181)
!6544 = !DILocalVariable(name: "next", arg: 3, scope: !6538, file: !4994, line: 148, type: !181)
!6545 = !DILocation(line: 146, column: 49, scope: !6538)
!6546 = !DILocation(line: 147, column: 28, scope: !6538)
!6547 = !DILocation(line: 148, column: 28, scope: !6538)
!6548 = !DILocation(line: 150, column: 24, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6538, file: !4994, line: 150, column: 6)
!6550 = !DILocation(line: 150, column: 29, scope: !6549)
!6551 = !DILocation(line: 150, column: 35, scope: !6549)
!6552 = !DILocation(line: 150, column: 7, scope: !6549)
!6553 = !DILocation(line: 150, column: 6, scope: !6538)
!6554 = !DILocation(line: 151, column: 3, scope: !6549)
!6555 = !DILocation(line: 153, column: 15, scope: !6538)
!6556 = !DILocation(line: 153, column: 2, scope: !6538)
!6557 = !DILocation(line: 153, column: 8, scope: !6538)
!6558 = !DILocation(line: 153, column: 13, scope: !6538)
!6559 = !DILocation(line: 154, column: 14, scope: !6538)
!6560 = !DILocation(line: 154, column: 2, scope: !6538)
!6561 = !DILocation(line: 154, column: 7, scope: !6538)
!6562 = !DILocation(line: 154, column: 12, scope: !6538)
!6563 = !DILocation(line: 155, column: 14, scope: !6538)
!6564 = !DILocation(line: 155, column: 2, scope: !6538)
!6565 = !DILocation(line: 155, column: 7, scope: !6538)
!6566 = !DILocation(line: 155, column: 12, scope: !6538)
!6567 = !DILocation(line: 156, column: 2, scope: !6538)
!6568 = !DILocation(line: 156, column: 2, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6538, file: !4994, line: 156, column: 2)
!6570 = !DILocation(line: 156, column: 2, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6569, file: !4994, line: 156, column: 2)
!6572 = !DILocation(line: 156, column: 2, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6569, file: !4994, line: 156, column: 2)
!6574 = !DILocation(line: 157, column: 1, scope: !6538)
!6575 = distinct !DISubprogram(name: "__list_add_valid", scope: !4994, file: !4994, line: 128, type: !6576, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6578)
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!800, !181, !181, !181}
!6578 = !{!6579, !6580, !6581}
!6579 = !DILocalVariable(name: "new", arg: 1, scope: !6575, file: !4994, line: 128, type: !181)
!6580 = !DILocalVariable(name: "prev", arg: 2, scope: !6575, file: !4994, line: 129, type: !181)
!6581 = !DILocalVariable(name: "next", arg: 3, scope: !6575, file: !4994, line: 130, type: !181)
!6582 = !DILocation(line: 128, column: 55, scope: !6575)
!6583 = !DILocation(line: 129, column: 23, scope: !6575)
!6584 = !DILocation(line: 130, column: 23, scope: !6575)
!6585 = !DILocation(line: 132, column: 2, scope: !6575)
!6586 = distinct !DISubprogram(name: "pde_get_unmapped_area", scope: !2, file: !2, line: 456, type: !6587, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6589)
!6587 = !DISubroutineType(types: !6588)
!6588 = !{!120, !4280, !620, !120, !120, !120, !120}
!6589 = !{!6590, !6591, !6592, !6593, !6594, !6595, !6596}
!6590 = !DILocalVariable(name: "pde", arg: 1, scope: !6586, file: !2, line: 456, type: !4280)
!6591 = !DILocalVariable(name: "file", arg: 2, scope: !6586, file: !2, line: 456, type: !620)
!6592 = !DILocalVariable(name: "orig_addr", arg: 3, scope: !6586, file: !2, line: 456, type: !120)
!6593 = !DILocalVariable(name: "len", arg: 4, scope: !6586, file: !2, line: 457, type: !120)
!6594 = !DILocalVariable(name: "pgoff", arg: 5, scope: !6586, file: !2, line: 457, type: !120)
!6595 = !DILocalVariable(name: "flags", arg: 6, scope: !6586, file: !2, line: 458, type: !120)
!6596 = !DILocalVariable(name: "get_area", scope: !6586, file: !2, line: 460, type: !617)
!6597 = !DILocation(line: 456, column: 46, scope: !6586)
!6598 = !DILocation(line: 456, column: 64, scope: !6586)
!6599 = !DILocation(line: 456, column: 84, scope: !6586)
!6600 = !DILocation(line: 457, column: 21, scope: !6586)
!6601 = !DILocation(line: 457, column: 40, scope: !6586)
!6602 = !DILocation(line: 458, column: 21, scope: !6586)
!6603 = !DILocation(line: 460, column: 2, scope: !6586)
!6604 = !DILocation(line: 460, column: 57, scope: !6586)
!6605 = !DILocation(line: 462, column: 13, scope: !6586)
!6606 = !DILocation(line: 462, column: 18, scope: !6586)
!6607 = !DILocation(line: 462, column: 28, scope: !6586)
!6608 = !DILocation(line: 462, column: 11, scope: !6586)
!6609 = !DILocation(line: 464, column: 7, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6586, file: !2, line: 464, column: 6)
!6611 = !DILocation(line: 464, column: 6, scope: !6586)
!6612 = !DILocation(line: 465, column: 14, scope: !6610)
!6613 = !DILocation(line: 465, column: 23, scope: !6610)
!6614 = !DILocation(line: 465, column: 27, scope: !6610)
!6615 = !DILocation(line: 465, column: 12, scope: !6610)
!6616 = !DILocation(line: 465, column: 3, scope: !6610)
!6617 = !DILocation(line: 467, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6586, file: !2, line: 467, column: 6)
!6619 = !DILocation(line: 467, column: 6, scope: !6586)
!6620 = !DILocation(line: 468, column: 10, scope: !6618)
!6621 = !DILocation(line: 468, column: 19, scope: !6618)
!6622 = !DILocation(line: 468, column: 25, scope: !6618)
!6623 = !DILocation(line: 468, column: 36, scope: !6618)
!6624 = !DILocation(line: 468, column: 41, scope: !6618)
!6625 = !DILocation(line: 468, column: 48, scope: !6618)
!6626 = !DILocation(line: 468, column: 3, scope: !6618)
!6627 = !DILocation(line: 469, column: 9, scope: !6586)
!6628 = !DILocation(line: 469, column: 2, scope: !6586)
!6629 = !DILocation(line: 470, column: 1, scope: !6586)
!6630 = distinct !DISubprogram(name: "get_current", scope: !6631, file: !6631, line: 39, type: !6632, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6634)
!6631 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6632 = !DISubroutineType(types: !6633)
!6633 = !{!279}
!6634 = !{!6635, !6637, !6639}
!6635 = !DILocalVariable(name: "pscr_ret__", scope: !6636, file: !6631, line: 41, type: !279)
!6636 = distinct !DILexicalBlock(scope: !6630, file: !6631, line: 41, column: 9)
!6637 = !DILocalVariable(name: "__vpp_verify", scope: !6638, file: !6631, line: 41, type: !1847)
!6638 = distinct !DILexicalBlock(scope: !6636, file: !6631, line: 41, column: 9)
!6639 = !DILocalVariable(name: "pfo_val__", scope: !6640, file: !6631, line: 41, type: !343)
!6640 = distinct !DILexicalBlock(scope: !6636, file: !6631, line: 41, column: 9)
!6641 = !DILocation(line: 41, column: 9, scope: !6636)
!6642 = !DILocation(line: 41, column: 9, scope: !6638)
!6643 = !DILocation(line: 41, column: 9, scope: !6640)
!6644 = !{i64 2148403559}
!6645 = !DILocation(line: 41, column: 9, scope: !6630)
!6646 = !DILocation(line: 41, column: 2, scope: !6630)
!6647 = distinct !DISubprogram(name: "proc_reg_read", scope: !2, file: !2, line: 320, type: !2935, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6648)
!6648 = !{!6649, !6650, !6651, !6652, !6653, !6654}
!6649 = !DILocalVariable(name: "file", arg: 1, scope: !6647, file: !2, line: 320, type: !620)
!6650 = !DILocalVariable(name: "buf", arg: 2, scope: !6647, file: !2, line: 320, type: !811)
!6651 = !DILocalVariable(name: "count", arg: 3, scope: !6647, file: !2, line: 320, type: !116)
!6652 = !DILocalVariable(name: "ppos", arg: 4, scope: !6647, file: !2, line: 320, type: !121)
!6653 = !DILocalVariable(name: "pde", scope: !6647, file: !2, line: 322, type: !4280)
!6654 = !DILocalVariable(name: "rv", scope: !6647, file: !2, line: 323, type: !1112)
!6655 = !DILocation(line: 320, column: 43, scope: !6647)
!6656 = !DILocation(line: 320, column: 62, scope: !6647)
!6657 = !DILocation(line: 320, column: 74, scope: !6647)
!6658 = !DILocation(line: 320, column: 89, scope: !6647)
!6659 = !DILocation(line: 322, column: 2, scope: !6647)
!6660 = !DILocation(line: 322, column: 25, scope: !6647)
!6661 = !DILocation(line: 322, column: 46, scope: !6647)
!6662 = !DILocation(line: 322, column: 35, scope: !6647)
!6663 = !DILocation(line: 322, column: 31, scope: !6647)
!6664 = !DILocation(line: 323, column: 2, scope: !6647)
!6665 = !DILocation(line: 323, column: 10, scope: !6647)
!6666 = !DILocation(line: 325, column: 23, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6647, file: !2, line: 325, column: 6)
!6668 = !DILocation(line: 325, column: 6, scope: !6667)
!6669 = !DILocation(line: 325, column: 6, scope: !6647)
!6670 = !DILocation(line: 326, column: 19, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6667, file: !2, line: 325, column: 29)
!6672 = !DILocation(line: 326, column: 24, scope: !6671)
!6673 = !DILocation(line: 326, column: 30, scope: !6671)
!6674 = !DILocation(line: 326, column: 35, scope: !6671)
!6675 = !DILocation(line: 326, column: 42, scope: !6671)
!6676 = !DILocation(line: 326, column: 10, scope: !6671)
!6677 = !DILocation(line: 326, column: 3, scope: !6671)
!6678 = !DILocation(line: 327, column: 21, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6667, file: !2, line: 327, column: 13)
!6680 = !DILocation(line: 327, column: 13, scope: !6679)
!6681 = !DILocation(line: 327, column: 13, scope: !6667)
!6682 = !DILocation(line: 328, column: 17, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6679, file: !2, line: 327, column: 27)
!6684 = !DILocation(line: 328, column: 22, scope: !6683)
!6685 = !DILocation(line: 328, column: 28, scope: !6683)
!6686 = !DILocation(line: 328, column: 33, scope: !6683)
!6687 = !DILocation(line: 328, column: 40, scope: !6683)
!6688 = !DILocation(line: 328, column: 8, scope: !6683)
!6689 = !DILocation(line: 328, column: 6, scope: !6683)
!6690 = !DILocation(line: 329, column: 13, scope: !6683)
!6691 = !DILocation(line: 329, column: 3, scope: !6683)
!6692 = !DILocation(line: 330, column: 2, scope: !6683)
!6693 = !DILocation(line: 331, column: 9, scope: !6647)
!6694 = !DILocation(line: 331, column: 2, scope: !6647)
!6695 = !DILocation(line: 332, column: 1, scope: !6647)
!6696 = distinct !DISubprogram(name: "pde_read", scope: !2, file: !2, line: 310, type: !6697, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6699)
!6697 = !DISubroutineType(types: !6698)
!6698 = !{!1112, !4280, !620, !811, !116, !121}
!6699 = !{!6700, !6701, !6702, !6703, !6704, !6705}
!6700 = !DILocalVariable(name: "pde", arg: 1, scope: !6696, file: !2, line: 310, type: !4280)
!6701 = !DILocalVariable(name: "file", arg: 2, scope: !6696, file: !2, line: 310, type: !620)
!6702 = !DILocalVariable(name: "buf", arg: 3, scope: !6696, file: !2, line: 310, type: !811)
!6703 = !DILocalVariable(name: "count", arg: 4, scope: !6696, file: !2, line: 310, type: !116)
!6704 = !DILocalVariable(name: "ppos", arg: 5, scope: !6696, file: !2, line: 310, type: !121)
!6705 = !DILocalVariable(name: "read", scope: !6696, file: !2, line: 312, type: !2934)
!6706 = !DILocation(line: 310, column: 48, scope: !6696)
!6707 = !DILocation(line: 310, column: 66, scope: !6696)
!6708 = !DILocation(line: 310, column: 85, scope: !6696)
!6709 = !DILocation(line: 310, column: 97, scope: !6696)
!6710 = !DILocation(line: 310, column: 112, scope: !6696)
!6711 = !DILocation(line: 312, column: 2, scope: !6696)
!6712 = !DILocation(line: 312, column: 44, scope: !6696)
!6713 = !DILocation(line: 314, column: 9, scope: !6696)
!6714 = !DILocation(line: 314, column: 14, scope: !6696)
!6715 = !DILocation(line: 314, column: 24, scope: !6696)
!6716 = !DILocation(line: 314, column: 7, scope: !6696)
!6717 = !DILocation(line: 315, column: 6, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6696, file: !2, line: 315, column: 6)
!6719 = !DILocation(line: 315, column: 6, scope: !6696)
!6720 = !DILocation(line: 316, column: 10, scope: !6718)
!6721 = !DILocation(line: 316, column: 15, scope: !6718)
!6722 = !DILocation(line: 316, column: 21, scope: !6718)
!6723 = !DILocation(line: 316, column: 26, scope: !6718)
!6724 = !DILocation(line: 316, column: 33, scope: !6718)
!6725 = !DILocation(line: 316, column: 3, scope: !6718)
!6726 = !DILocation(line: 317, column: 2, scope: !6696)
!6727 = !DILocation(line: 318, column: 1, scope: !6696)
!6728 = distinct !DISubprogram(name: "proc_reg_compat_ioctl", scope: !2, file: !2, line: 417, type: !2968, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6729)
!6729 = !{!6730, !6731, !6732, !6733, !6734}
!6730 = !DILocalVariable(name: "file", arg: 1, scope: !6728, file: !2, line: 417, type: !620)
!6731 = !DILocalVariable(name: "cmd", arg: 2, scope: !6728, file: !2, line: 417, type: !13)
!6732 = !DILocalVariable(name: "arg", arg: 3, scope: !6728, file: !2, line: 417, type: !120)
!6733 = !DILocalVariable(name: "pde", scope: !6728, file: !2, line: 419, type: !4280)
!6734 = !DILocalVariable(name: "rv", scope: !6728, file: !2, line: 420, type: !1073)
!6735 = !DILocation(line: 417, column: 48, scope: !6728)
!6736 = !DILocation(line: 417, column: 67, scope: !6728)
!6737 = !DILocation(line: 417, column: 86, scope: !6728)
!6738 = !DILocation(line: 419, column: 2, scope: !6728)
!6739 = !DILocation(line: 419, column: 25, scope: !6728)
!6740 = !DILocation(line: 419, column: 46, scope: !6728)
!6741 = !DILocation(line: 419, column: 35, scope: !6728)
!6742 = !DILocation(line: 419, column: 31, scope: !6728)
!6743 = !DILocation(line: 420, column: 2, scope: !6728)
!6744 = !DILocation(line: 420, column: 7, scope: !6728)
!6745 = !DILocation(line: 421, column: 23, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 421, column: 6)
!6747 = !DILocation(line: 421, column: 6, scope: !6746)
!6748 = !DILocation(line: 421, column: 6, scope: !6728)
!6749 = !DILocation(line: 422, column: 27, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6746, file: !2, line: 421, column: 29)
!6751 = !DILocation(line: 422, column: 32, scope: !6750)
!6752 = !DILocation(line: 422, column: 38, scope: !6750)
!6753 = !DILocation(line: 422, column: 43, scope: !6750)
!6754 = !DILocation(line: 422, column: 10, scope: !6750)
!6755 = !DILocation(line: 422, column: 3, scope: !6750)
!6756 = !DILocation(line: 423, column: 21, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6746, file: !2, line: 423, column: 13)
!6758 = !DILocation(line: 423, column: 13, scope: !6757)
!6759 = !DILocation(line: 423, column: 13, scope: !6746)
!6760 = !DILocation(line: 424, column: 25, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6757, file: !2, line: 423, column: 27)
!6762 = !DILocation(line: 424, column: 30, scope: !6761)
!6763 = !DILocation(line: 424, column: 36, scope: !6761)
!6764 = !DILocation(line: 424, column: 41, scope: !6761)
!6765 = !DILocation(line: 424, column: 8, scope: !6761)
!6766 = !DILocation(line: 424, column: 6, scope: !6761)
!6767 = !DILocation(line: 425, column: 13, scope: !6761)
!6768 = !DILocation(line: 425, column: 3, scope: !6761)
!6769 = !DILocation(line: 426, column: 2, scope: !6761)
!6770 = !DILocation(line: 427, column: 9, scope: !6728)
!6771 = !DILocation(line: 427, column: 2, scope: !6728)
!6772 = !DILocation(line: 428, column: 1, scope: !6728)
!6773 = distinct !DISubprogram(name: "pde_compat_ioctl", scope: !2, file: !2, line: 407, type: !6469, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6774)
!6774 = !{!6775, !6776, !6777, !6778, !6779}
!6775 = !DILocalVariable(name: "pde", arg: 1, scope: !6773, file: !2, line: 407, type: !4280)
!6776 = !DILocalVariable(name: "file", arg: 2, scope: !6773, file: !2, line: 407, type: !620)
!6777 = !DILocalVariable(name: "cmd", arg: 3, scope: !6773, file: !2, line: 407, type: !13)
!6778 = !DILocalVariable(name: "arg", arg: 4, scope: !6773, file: !2, line: 407, type: !120)
!6779 = !DILocalVariable(name: "compat_ioctl", scope: !6773, file: !2, line: 409, type: !2967)
!6780 = !DILocation(line: 407, column: 53, scope: !6773)
!6781 = !DILocation(line: 407, column: 71, scope: !6773)
!6782 = !DILocation(line: 407, column: 90, scope: !6773)
!6783 = !DILocation(line: 407, column: 109, scope: !6773)
!6784 = !DILocation(line: 409, column: 2, scope: !6773)
!6785 = !DILocation(line: 409, column: 52, scope: !6773)
!6786 = !DILocation(line: 411, column: 17, scope: !6773)
!6787 = !DILocation(line: 411, column: 22, scope: !6773)
!6788 = !DILocation(line: 411, column: 32, scope: !6773)
!6789 = !DILocation(line: 411, column: 15, scope: !6773)
!6790 = !DILocation(line: 412, column: 6, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6773, file: !2, line: 412, column: 6)
!6792 = !DILocation(line: 412, column: 6, scope: !6773)
!6793 = !DILocation(line: 413, column: 10, scope: !6791)
!6794 = !DILocation(line: 413, column: 23, scope: !6791)
!6795 = !DILocation(line: 413, column: 29, scope: !6791)
!6796 = !DILocation(line: 413, column: 34, scope: !6791)
!6797 = !DILocation(line: 413, column: 3, scope: !6791)
!6798 = !DILocation(line: 414, column: 2, scope: !6773)
!6799 = !DILocation(line: 415, column: 1, scope: !6773)
