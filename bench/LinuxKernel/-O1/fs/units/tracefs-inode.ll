; ModuleID = 'fs/tracefs/inode.c'
source_filename = "fs/tracefs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init..kmod_tracefs__306_835_tracefs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_tracefs__306_835_tracefs_init1:\09\09\09"
module asm ".long\09__initstub__kmod_tracefs__306_835_tracefs_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracefs_dir_ops = type { ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [48 x i8] }
%struct.anon.24 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.pcpu_hot = type { %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [16 x i8] }
%struct.anon.31 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.16 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.tracefs_inode = type { %struct.inode, %struct.list_head, i64, ptr }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tracefs_fs_info = type { %struct.tracefs_mount_opts }
%struct.tracefs_mount_opts = type { %struct.kuid_t, %struct.kgid_t, i16, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.eventfs_inode = type { %union.anon.27, %struct.list_head, ptr, ptr, ptr, ptr, %struct.eventfs_attr, %struct.kref, i32, i32 }
%union.anon.27 = type { %struct.list_head }
%struct.eventfs_attr = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kref = type { %struct.refcount_struct }
%struct.iattr = type { i32, i16, %union.anon.28, %union.anon.29, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.28 = type { %struct.kuid_t }
%union.anon.29 = type { %struct.kgid_t }
%struct.path = type { ptr, ptr }
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
%struct.anon.18 = type { i32, i32 }

@__UNIQUE_ID_alias305 = internal constant [25 x i8] c"tracefs.alias=fs-tracefs\00", section ".modinfo", align 1, !dbg !0
@trace_fs_type = internal global %struct.file_system_type { ptr @.str.1, i32 0, ptr null, ptr null, ptr @trace_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4387
@tracefs_mount = internal global ptr null, align 8, !dbg !4370
@tracefs_mount_count = internal global i32 0, align 4, !dbg !4372
@.str = private unnamed_addr constant [19 x i8] c"fs/tracefs/inode.c\00", align 1, !dbg !4363
@tracefs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @tracefs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_setattr, ptr @tracefs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4464
@tracefs_file_operations = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @default_read_file, ptr @default_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4466
@tracefs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr @tracefs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_setattr, ptr @tracefs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4468
@tracefs_ops = internal global %struct.tracefs_dir_ops zeroinitializer, section ".data..ro_after_init", align 8, !dbg !4376
@tracefs_instance_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr @tracefs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_syscall_mkdir, ptr @tracefs_syscall_rmdir, ptr null, ptr null, ptr @tracefs_setattr, ptr @tracefs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4470
@tracefs_registered = internal global i8 0, align 1, !dbg !4374
@__UNIQUE_ID___addressable___initstub__kmod_tracefs__306_835_tracefs_init1307 = internal global ptr @__initstub__kmod_tracefs__306_835_tracefs_init1, section ".discard.addressable", align 8, !dbg !4368
@.str.1 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1, !dbg !4385
@trace_fill_super.trace_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.2, ptr null, i32 0 }], align 16, !dbg !4392
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4389
@tracefs_super_operations = internal constant %struct.super_operations { ptr @tracefs_alloc_inode, ptr @tracefs_destroy_inode, ptr @tracefs_free_inode, ptr null, ptr null, ptr @tracefs_drop_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @tracefs_remount, ptr null, ptr @tracefs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4445
@tracefs_dentry_operations = internal constant %struct.dentry_operations { ptr @tracefs_d_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_d_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !4462
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4421
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !4426
@tokens = internal constant [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.5 }, %struct.match_token { i32 1, ptr @.str.6 }, %struct.match_token { i32 2, ptr @.str.7 }, %struct.match_token { i32 3, ptr null }], align 16, !dbg !4436
@.str.5 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1, !dbg !4429
@.str.6 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1, !dbg !4432
@.str.7 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1, !dbg !4434
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@tracefs_inode_cachep = internal global ptr null, section ".data..ro_after_init", align 8, !dbg !4447
@tracefs_inode_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4449
@tracefs_inodes = internal global %struct.list_head { ptr @tracefs_inodes, ptr @tracefs_inodes }, align 8, !dbg !4451
@.str.8 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1, !dbg !4453
@.str.9 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1, !dbg !4455
@.str.10 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1, !dbg !4457
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"tracefs_inode_cache\00", align 1, !dbg !4472
@kernel_kobj = external dso_local global ptr, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"tracing\00", align 1, !dbg !4475
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID___addressable___initstub__kmod_tracefs__306_835_tracefs_init1307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_get_inode(ptr noundef %sb) #0 align 16 !dbg !4489 {
entry:
  %sb.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4491, metadata !DIExpression()), !dbg !4493
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4494
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4492, metadata !DIExpression()), !dbg !4495
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4496
  %call = call ptr @new_inode(ptr noundef %0) #17, !dbg !4497
  store ptr %call, ptr %inode, align 8, !dbg !4495
  %1 = load ptr, ptr %inode, align 8, !dbg !4498
  %tobool = icmp ne ptr %1, null, !dbg !4498
  br i1 %tobool, label %if.then, label %if.end, !dbg !4500

if.then:                                          ; preds = %entry
  %call1 = call i32 @get_next_ino() #17, !dbg !4501
  %conv = zext i32 %call1 to i64, !dbg !4501
  %2 = load ptr, ptr %inode, align 8, !dbg !4503
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12, !dbg !4504
  store i64 %conv, ptr %i_ino, align 8, !dbg !4505
  %3 = load ptr, ptr %inode, align 8, !dbg !4506
  %i_atime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, !dbg !4507
  %4 = load ptr, ptr %inode, align 8, !dbg !4508
  %i_mtime = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17, !dbg !4509
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #16, !dbg !4510
  %5 = load ptr, ptr %inode, align 8, !dbg !4511
  %call2 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %5) #17, !dbg !4510
  %6 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4510
  %7 = extractvalue { i64, i64 } %call2, 0, !dbg !4510
  store i64 %7, ptr %6, align 8, !dbg !4510
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4510
  %9 = extractvalue { i64, i64 } %call2, 1, !dbg !4510
  store i64 %9, ptr %8, align 8, !dbg !4510
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !4510
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #16, !dbg !4510
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !4512
  br label %if.end, !dbg !4513

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %inode, align 8, !dbg !4514
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4515
  ret ptr %10, !dbg !4516
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4517 dso_local ptr @new_inode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local i32 @get_next_ino() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4521 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_start_creating(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !4524 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4528, metadata !DIExpression()), !dbg !4532
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4529, metadata !DIExpression()), !dbg !4533
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4534
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4530, metadata !DIExpression()), !dbg !4535
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4531, metadata !DIExpression()), !dbg !4537
  store i32 0, ptr %tmp, align 4, !dbg !4538
  %0 = load i32, ptr %tmp, align 4, !dbg !4541
  %call = call i32 @simple_pin_fs(ptr noundef @trace_fs_type, ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !4542
  store i32 %call, ptr %error, align 4, !dbg !4543
  %1 = load i32, ptr %error, align 4, !dbg !4544
  %tobool = icmp ne i32 %1, 0, !dbg !4544
  br i1 %tobool, label %if.then, label %if.end, !dbg !4546

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !4547
  %conv = sext i32 %2 to i64, !dbg !4547
  %call1 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !4548
  store ptr %call1, ptr %retval, align 8, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4549

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !4550
  %tobool2 = icmp ne ptr %3, null, !dbg !4550
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4552

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @tracefs_mount, align 8, !dbg !4553
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 0, !dbg !4554
  %5 = load ptr, ptr %mnt_root, align 8, !dbg !4554
  store ptr %5, ptr %parent.addr, align 8, !dbg !4555
  br label %if.end4, !dbg !4556

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4557
  %call5 = call ptr @d_inode(ptr noundef %6) #17, !dbg !4558
  call void @inode_lock(ptr noundef %call5) #17, !dbg !4559
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !4560
  %call6 = call ptr @d_inode(ptr noundef %7) #17, !dbg !4560
  %i_flags = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 5, !dbg !4560
  %8 = load i32, ptr %i_flags, align 4, !dbg !4560
  %and = and i32 %8, 16, !dbg !4560
  %tobool7 = icmp ne i32 %and, 0, !dbg !4560
  %lnot = xor i1 %tobool7, true, !dbg !4560
  %lnot8 = xor i1 %lnot, true, !dbg !4560
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4560
  %conv9 = sext i32 %lnot.ext to i64, !dbg !4560
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4560
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4560
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !4562

if.then11:                                        ; preds = %if.end4
  %call12 = call ptr @ERR_PTR(i64 noundef -2) #17, !dbg !4563
  store ptr %call12, ptr %dentry, align 8, !dbg !4564
  br label %if.end16, !dbg !4565

if.else:                                          ; preds = %if.end4
  %9 = load ptr, ptr %name.addr, align 8, !dbg !4566
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !4567
  %11 = load ptr, ptr %name.addr, align 8, !dbg !4568
  %call13 = call i64 @strlen(ptr noundef %11) #17, !dbg !4569
  %conv14 = trunc i64 %call13 to i32, !dbg !4569
  %call15 = call ptr @lookup_one_len(ptr noundef %9, ptr noundef %10, i32 noundef %conv14) #17, !dbg !4570
  store ptr %call15, ptr %dentry, align 8, !dbg !4571
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %12 = load ptr, ptr %dentry, align 8, !dbg !4572
  %call17 = call zeroext i1 @IS_ERR(ptr noundef %12) #17, !dbg !4574
  br i1 %call17, label %if.end22, label %land.lhs.true, !dbg !4575

land.lhs.true:                                    ; preds = %if.end16
  %13 = load ptr, ptr %dentry, align 8, !dbg !4576
  %call18 = call ptr @d_inode(ptr noundef %13) #17, !dbg !4577
  %tobool19 = icmp ne ptr %call18, null, !dbg !4577
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4578

if.then20:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %dentry, align 8, !dbg !4579
  call void @dput(ptr noundef %14) #17, !dbg !4581
  %call21 = call ptr @ERR_PTR(i64 noundef -17) #17, !dbg !4582
  store ptr %call21, ptr %dentry, align 8, !dbg !4583
  br label %if.end22, !dbg !4584

if.end22:                                         ; preds = %if.then20, %land.lhs.true, %if.end16
  %15 = load ptr, ptr %dentry, align 8, !dbg !4585
  %call23 = call zeroext i1 @IS_ERR(ptr noundef %15) #17, !dbg !4587
  br i1 %call23, label %if.then24, label %if.end26, !dbg !4588

if.then24:                                        ; preds = %if.end22
  %16 = load ptr, ptr %parent.addr, align 8, !dbg !4589
  %call25 = call ptr @d_inode(ptr noundef %16) #17, !dbg !4591
  call void @inode_unlock(ptr noundef %call25) #17, !dbg !4592
  call void @simple_release_fs(ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !4593
  br label %if.end26, !dbg !4594

if.end26:                                         ; preds = %if.then24, %if.end22
  %17 = load ptr, ptr %dentry, align 8, !dbg !4595
  store ptr %17, ptr %retval, align 8, !dbg !4596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4596

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4597
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4597
  %18 = load ptr, ptr %retval, align 8, !dbg !4597
  ret ptr %18, !dbg !4597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4598 dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !4602 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load i64, ptr %error.addr, align 8, !dbg !4609
  %1 = inttoptr i64 %0 to ptr, !dbg !4610
  ret ptr %1, !dbg !4611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #5 align 16 !dbg !4612 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4616
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4617
  call void @down_write(ptr noundef %i_rwsem) #17, !dbg !4618
  ret void, !dbg !4619
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !4620 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4626
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4627
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4627
  ret ptr %1, !dbg !4628
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4629 dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4633 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !4637 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4643
  %1 = ptrtoint ptr %0 to i64, !dbg !4643
  %2 = inttoptr i64 %1 to ptr, !dbg !4643
  %3 = ptrtoint ptr %2 to i64, !dbg !4643
  %cmp = icmp uge i64 %3, -4095, !dbg !4643
  %lnot = xor i1 %cmp, true, !dbg !4643
  %lnot1 = xor i1 %lnot, true, !dbg !4643
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4643
  %conv = sext i32 %lnot.ext to i64, !dbg !4643
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4643
  %tobool = icmp ne i64 %expval, 0, !dbg !4643
  ret i1 %tobool, !dbg !4644
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4645 dso_local void @dput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #5 align 16 !dbg !4646 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4650
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4651
  call void @up_write(ptr noundef %i_rwsem) #17, !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4654 dso_local void @simple_release_fs(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_failed_creating(ptr noundef %dentry) #0 align 16 !dbg !4657 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4663
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !4664
  %1 = load ptr, ptr %d_parent, align 8, !dbg !4664
  %call = call ptr @d_inode(ptr noundef %1) #17, !dbg !4665
  call void @inode_unlock(ptr noundef %call) #17, !dbg !4666
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4667
  call void @dput(ptr noundef %2) #17, !dbg !4668
  call void @simple_release_fs(ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !4669
  ret ptr null, !dbg !4670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_end_creating(ptr noundef %dentry) #0 align 16 !dbg !4671 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4675
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !4676
  %1 = load ptr, ptr %d_parent, align 8, !dbg !4676
  %call = call ptr @d_inode(ptr noundef %1) #17, !dbg !4677
  call void @inode_unlock(ptr noundef %call) #17, !dbg !4678
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4679
  ret ptr %2, !dbg !4680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) #0 align 16 !dbg !4681 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4685, metadata !DIExpression()), !dbg !4693
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4686, metadata !DIExpression()), !dbg !4694
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4687, metadata !DIExpression()), !dbg !4695
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4688, metadata !DIExpression()), !dbg !4696
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !4689, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !4690, metadata !DIExpression()), !dbg !4699
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4700
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4691, metadata !DIExpression()), !dbg !4701
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4702
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4692, metadata !DIExpression()), !dbg !4703
  %call = call i32 @security_locked_down(i32 noundef 26) #17, !dbg !4704
  %tobool = icmp ne i32 %call, 0, !dbg !4704
  br i1 %tobool, label %if.then, label %if.end, !dbg !4706

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4707

if.end:                                           ; preds = %entry
  %0 = load i16, ptr %mode.addr, align 2, !dbg !4708
  %conv = zext i16 %0 to i32, !dbg !4708
  %and = and i32 %conv, 61440, !dbg !4710
  %tobool1 = icmp ne i32 %and, 0, !dbg !4710
  br i1 %tobool1, label %if.end5, label %if.then2, !dbg !4711

if.then2:                                         ; preds = %if.end
  %1 = load i16, ptr %mode.addr, align 2, !dbg !4712
  %conv3 = zext i16 %1 to i32, !dbg !4712
  %or = or i32 %conv3, 32768, !dbg !4712
  %conv4 = trunc i32 %or to i16, !dbg !4712
  store i16 %conv4, ptr %mode.addr, align 2, !dbg !4712
  br label %if.end5, !dbg !4713

if.end5:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !4714

do.body:                                          ; preds = %if.end5
  %2 = load i16, ptr %mode.addr, align 2, !dbg !4715
  %conv6 = zext i16 %2 to i32, !dbg !4715
  %and7 = and i32 %conv6, 61440, !dbg !4715
  %cmp = icmp eq i32 %and7, 32768, !dbg !4715
  %lnot = xor i1 %cmp, true, !dbg !4715
  %lnot9 = xor i1 %lnot, true, !dbg !4715
  %lnot10 = xor i1 %lnot9, true, !dbg !4715
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4715
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4715
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4715
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4715
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !4718

if.then13:                                        ; preds = %do.body
  br label %do.body14, !dbg !4715

do.body14:                                        ; preds = %if.then13
  br label %do.body15, !dbg !4719

do.body15:                                        ; preds = %do.body14
  br label %do.cond, !dbg !4721

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !4721

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !4719

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 651, i32 0, i64 12) #16, !dbg !4723, !srcloc !4725
  br label %do.cond17, !dbg !4723

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4723

do.end18:                                         ; preds = %do.cond17
  unreachable, !dbg !4719

do.cond19:                                        ; No predecessors!
  br label %do.end20, !dbg !4719

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !4719

if.end21:                                         ; preds = %do.end20, %do.body
  br label %do.cond22, !dbg !4718

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !4718

do.end23:                                         ; preds = %do.cond22
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4726
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !4727
  %call24 = call ptr @tracefs_start_creating(ptr noundef %3, ptr noundef %4) #17, !dbg !4728
  store ptr %call24, ptr %dentry, align 8, !dbg !4729
  %5 = load ptr, ptr %dentry, align 8, !dbg !4730
  %call25 = call zeroext i1 @IS_ERR(ptr noundef %5) #17, !dbg !4732
  br i1 %call25, label %if.then26, label %if.end27, !dbg !4733

if.then26:                                        ; preds = %do.end23
  store ptr null, ptr %retval, align 8, !dbg !4734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4734

if.end27:                                         ; preds = %do.end23
  %6 = load ptr, ptr %dentry, align 8, !dbg !4735
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !4736
  %7 = load ptr, ptr %d_sb, align 8, !dbg !4736
  %call28 = call ptr @tracefs_get_inode(ptr noundef %7) #17, !dbg !4737
  store ptr %call28, ptr %inode, align 8, !dbg !4738
  %8 = load ptr, ptr %inode, align 8, !dbg !4739
  %tobool29 = icmp ne ptr %8, null, !dbg !4739
  %lnot30 = xor i1 %tobool29, true, !dbg !4739
  %lnot32 = xor i1 %lnot30, true, !dbg !4739
  %lnot34 = xor i1 %lnot32, true, !dbg !4739
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !4739
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !4739
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !4739
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !4739
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !4741

if.then39:                                        ; preds = %if.end27
  %9 = load ptr, ptr %dentry, align 8, !dbg !4742
  %call40 = call ptr @tracefs_failed_creating(ptr noundef %9) #17, !dbg !4743
  store ptr %call40, ptr %retval, align 8, !dbg !4744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4744

if.end41:                                         ; preds = %if.end27
  %10 = load ptr, ptr %inode, align 8, !dbg !4745
  %call42 = call ptr @get_tracefs(ptr noundef %10) #17, !dbg !4746
  store ptr %call42, ptr %ti, align 8, !dbg !4747
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !4748
  %12 = load ptr, ptr %inode, align 8, !dbg !4749
  %call43 = call ptr @instance_inode(ptr noundef %11, ptr noundef %12) #17, !dbg !4750
  %13 = load ptr, ptr %ti, align 8, !dbg !4751
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %13, i32 0, i32 3, !dbg !4752
  store ptr %call43, ptr %private, align 8, !dbg !4753
  %14 = load i16, ptr %mode.addr, align 2, !dbg !4754
  %15 = load ptr, ptr %inode, align 8, !dbg !4755
  %i_mode = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 0, !dbg !4756
  store i16 %14, ptr %i_mode, align 8, !dbg !4757
  %16 = load ptr, ptr %inode, align 8, !dbg !4758
  %i_op = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8, !dbg !4759
  store ptr @tracefs_file_inode_operations, ptr %i_op, align 8, !dbg !4760
  %17 = load ptr, ptr %fops.addr, align 8, !dbg !4761
  %tobool44 = icmp ne ptr %17, null, !dbg !4761
  br i1 %tobool44, label %cond.true, label %cond.false, !dbg !4761

cond.true:                                        ; preds = %if.end41
  %18 = load ptr, ptr %fops.addr, align 8, !dbg !4762
  br label %cond.end, !dbg !4761

cond.false:                                       ; preds = %if.end41
  br label %cond.end, !dbg !4761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ @tracefs_file_operations, %cond.false ], !dbg !4761
  %19 = load ptr, ptr %inode, align 8, !dbg !4763
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 39, !dbg !4764
  store ptr %cond, ptr %20, align 8, !dbg !4765
  %21 = load ptr, ptr %data.addr, align 8, !dbg !4766
  %22 = load ptr, ptr %inode, align 8, !dbg !4767
  %i_private = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 47, !dbg !4768
  store ptr %21, ptr %i_private, align 8, !dbg !4769
  %23 = load ptr, ptr %inode, align 8, !dbg !4770
  %i_uid = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 2, !dbg !4771
  %24 = load ptr, ptr %dentry, align 8, !dbg !4772
  %d_parent = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 3, !dbg !4773
  %25 = load ptr, ptr %d_parent, align 8, !dbg !4773
  %call45 = call ptr @d_inode(ptr noundef %25) #17, !dbg !4774
  %i_uid46 = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 2, !dbg !4775
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %i_uid46, i64 4, i1 false), !dbg !4775
  %26 = load ptr, ptr %inode, align 8, !dbg !4776
  %i_gid = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 4, !dbg !4777
  %27 = load ptr, ptr %dentry, align 8, !dbg !4778
  %d_parent47 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3, !dbg !4779
  %28 = load ptr, ptr %d_parent47, align 8, !dbg !4779
  %call48 = call ptr @d_inode(ptr noundef %28) #17, !dbg !4780
  %i_gid49 = getelementptr inbounds %struct.inode, ptr %call48, i32 0, i32 4, !dbg !4781
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %i_gid49, i64 4, i1 false), !dbg !4781
  %29 = load ptr, ptr %dentry, align 8, !dbg !4782
  %30 = load ptr, ptr %inode, align 8, !dbg !4783
  call void @d_instantiate(ptr noundef %29, ptr noundef %30) #17, !dbg !4784
  %31 = load ptr, ptr %dentry, align 8, !dbg !4785
  %d_parent50 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 3, !dbg !4786
  %32 = load ptr, ptr %d_parent50, align 8, !dbg !4786
  %call51 = call ptr @d_inode(ptr noundef %32) #17, !dbg !4787
  %33 = load ptr, ptr %dentry, align 8, !dbg !4788
  call void @fsnotify_create(ptr noundef %call51, ptr noundef %33) #17, !dbg !4789
  %34 = load ptr, ptr %dentry, align 8, !dbg !4790
  %call52 = call ptr @tracefs_end_creating(ptr noundef %34) #17, !dbg !4791
  store ptr %call52, ptr %retval, align 8, !dbg !4792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4792

cleanup:                                          ; preds = %cond.end, %if.then39, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4793
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4793
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !4793
  %35 = load ptr, ptr %retval, align 8, !dbg !4793
  ret ptr %35, !dbg !4793
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4794 dso_local i32 @security_locked_down(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_tracefs(ptr noundef %inode) #5 align 16 !dbg !4797 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4801, metadata !DIExpression()), !dbg !4804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4805
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4802, metadata !DIExpression()), !dbg !4805
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4805
  store ptr %0, ptr %__mptr, align 8, !dbg !4805
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4805
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4805
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4806
  %2 = load ptr, ptr %tmp, align 8, !dbg !4805
  ret ptr %2, !dbg !4807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @instance_inode(ptr noundef %parent, ptr noundef %inode) #0 align 16 !dbg !4808 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4812, metadata !DIExpression()), !dbg !4815
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4813, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !4814, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4819
  %tobool = icmp ne ptr %0, null, !dbg !4819
  br i1 %tobool, label %if.end, label %if.then, !dbg !4821

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4822
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9, !dbg !4823
  %2 = load ptr, ptr %i_sb, align 8, !dbg !4823
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !4824
  %3 = load ptr, ptr %s_root, align 8, !dbg !4824
  %call = call ptr @d_inode(ptr noundef %3) #17, !dbg !4825
  store ptr %call, ptr %retval, align 8, !dbg !4826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4826

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !4827

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !4828
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !4828
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3, !dbg !4828
  %6 = load ptr, ptr %d_parent, align 8, !dbg !4828
  %cmp = icmp eq ptr %4, %6, !dbg !4828
  %lnot = xor i1 %cmp, true, !dbg !4829
  br i1 %lnot, label %while.body, label %while.end, !dbg !4827

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !4830
  %call1 = call ptr @d_inode(ptr noundef %7) #17, !dbg !4832
  %call2 = call ptr @get_tracefs(ptr noundef %call1) #17, !dbg !4833
  store ptr %call2, ptr %ti, align 8, !dbg !4834
  %8 = load ptr, ptr %ti, align 8, !dbg !4835
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %8, i32 0, i32 2, !dbg !4837
  %9 = load i64, ptr %flags, align 8, !dbg !4837
  %and = and i64 %9, 16, !dbg !4838
  %tobool3 = icmp ne i64 %and, 0, !dbg !4838
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4839

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !4840

if.end5:                                          ; preds = %while.body
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !4841
  %d_parent6 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3, !dbg !4842
  %11 = load ptr, ptr %d_parent6, align 8, !dbg !4842
  store ptr %11, ptr %parent.addr, align 8, !dbg !4843
  br label %while.cond, !dbg !4827, !llvm.loop !4844

while.end:                                        ; preds = %if.then4, %while.cond
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !4848
  %call7 = call ptr @d_inode(ptr noundef %12) #17, !dbg !4849
  store ptr %call7, ptr %retval, align 8, !dbg !4850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4850

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !4851
  %13 = load ptr, ptr %retval, align 8, !dbg !4851
  ret ptr %13, !dbg !4851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4852 dso_local void @d_instantiate(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_create(ptr noundef %dir, ptr noundef %dentry) #5 align 16 !dbg !4853 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4858, metadata !DIExpression()), !dbg !4860
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4859, metadata !DIExpression()), !dbg !4861
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4862
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4863
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #17, !dbg !4864
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !4865
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4866
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 256) #17, !dbg !4867
  ret void, !dbg !4868
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tracefs_create_dir(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !4869 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4871, metadata !DIExpression()), !dbg !4873
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4872, metadata !DIExpression()), !dbg !4874
  %call = call i32 @security_locked_down(i32 noundef 26) #17, !dbg !4875
  %tobool = icmp ne i32 %call, 0, !dbg !4875
  br i1 %tobool, label %if.then, label %if.end, !dbg !4877

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4878
  br label %return, !dbg !4878

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4879
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4880
  %call1 = call ptr @__create_dir(ptr noundef %0, ptr noundef %1, ptr noundef @tracefs_dir_inode_operations) #17, !dbg !4881
  store ptr %call1, ptr %retval, align 8, !dbg !4882
  br label %return, !dbg !4882

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !4883
  ret ptr %2, !dbg !4883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__create_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %ops) #0 align 16 !dbg !4884 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4888, metadata !DIExpression()), !dbg !4894
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4889, metadata !DIExpression()), !dbg !4895
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !4890, metadata !DIExpression()), !dbg !4896
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !4897
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !4891, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4892, metadata !DIExpression()), !dbg !4900
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4901
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4902
  %call = call ptr @tracefs_start_creating(ptr noundef %0, ptr noundef %1) #17, !dbg !4903
  store ptr %call, ptr %dentry, align 8, !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4893, metadata !DIExpression()), !dbg !4905
  %2 = load ptr, ptr %dentry, align 8, !dbg !4906
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !4908
  br i1 %call1, label %if.then, label %if.end, !dbg !4909

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4910

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !4911
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9, !dbg !4912
  %4 = load ptr, ptr %d_sb, align 8, !dbg !4912
  %call2 = call ptr @tracefs_get_inode(ptr noundef %4) #17, !dbg !4913
  store ptr %call2, ptr %inode, align 8, !dbg !4914
  %5 = load ptr, ptr %inode, align 8, !dbg !4915
  %tobool = icmp ne ptr %5, null, !dbg !4915
  %lnot = xor i1 %tobool, true, !dbg !4915
  %lnot3 = xor i1 %lnot, true, !dbg !4915
  %lnot4 = xor i1 %lnot3, true, !dbg !4915
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4915
  %conv = sext i32 %lnot.ext to i64, !dbg !4915
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4915
  %tobool5 = icmp ne i64 %expval, 0, !dbg !4915
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4917

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %dentry, align 8, !dbg !4918
  %call7 = call ptr @tracefs_failed_creating(ptr noundef %6) #17, !dbg !4919
  store ptr %call7, ptr %retval, align 8, !dbg !4920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4920

if.end8:                                          ; preds = %if.end
  %7 = load ptr, ptr %inode, align 8, !dbg !4921
  %i_mode = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 0, !dbg !4922
  store i16 16872, ptr %i_mode, align 8, !dbg !4923
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !4924
  %9 = load ptr, ptr %inode, align 8, !dbg !4925
  %i_op = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8, !dbg !4926
  store ptr %8, ptr %i_op, align 8, !dbg !4927
  %10 = load ptr, ptr %inode, align 8, !dbg !4928
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 39, !dbg !4929
  store ptr @simple_dir_operations, ptr %11, align 8, !dbg !4930
  %12 = load ptr, ptr %inode, align 8, !dbg !4931
  %i_uid = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 2, !dbg !4932
  %13 = load ptr, ptr %dentry, align 8, !dbg !4933
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !4934
  %14 = load ptr, ptr %d_parent, align 8, !dbg !4934
  %call9 = call ptr @d_inode(ptr noundef %14) #17, !dbg !4935
  %i_uid10 = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 2, !dbg !4936
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %i_uid10, i64 4, i1 false), !dbg !4936
  %15 = load ptr, ptr %inode, align 8, !dbg !4937
  %i_gid = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4, !dbg !4938
  %16 = load ptr, ptr %dentry, align 8, !dbg !4939
  %d_parent11 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3, !dbg !4940
  %17 = load ptr, ptr %d_parent11, align 8, !dbg !4940
  %call12 = call ptr @d_inode(ptr noundef %17) #17, !dbg !4941
  %i_gid13 = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 4, !dbg !4942
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 8 %i_gid13, i64 4, i1 false), !dbg !4942
  %18 = load ptr, ptr %inode, align 8, !dbg !4943
  %call14 = call ptr @get_tracefs(ptr noundef %18) #17, !dbg !4944
  store ptr %call14, ptr %ti, align 8, !dbg !4945
  %19 = load ptr, ptr %parent.addr, align 8, !dbg !4946
  %20 = load ptr, ptr %inode, align 8, !dbg !4947
  %call15 = call ptr @instance_inode(ptr noundef %19, ptr noundef %20) #17, !dbg !4948
  %21 = load ptr, ptr %ti, align 8, !dbg !4949
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %21, i32 0, i32 3, !dbg !4950
  store ptr %call15, ptr %private, align 8, !dbg !4951
  %22 = load ptr, ptr %inode, align 8, !dbg !4952
  call void @inc_nlink(ptr noundef %22) #17, !dbg !4953
  %23 = load ptr, ptr %dentry, align 8, !dbg !4954
  %24 = load ptr, ptr %inode, align 8, !dbg !4955
  call void @d_instantiate(ptr noundef %23, ptr noundef %24) #17, !dbg !4956
  %25 = load ptr, ptr %dentry, align 8, !dbg !4957
  %d_parent16 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3, !dbg !4958
  %26 = load ptr, ptr %d_parent16, align 8, !dbg !4958
  %call17 = call ptr @d_inode(ptr noundef %26) #17, !dbg !4959
  call void @inc_nlink(ptr noundef %call17) #17, !dbg !4960
  %27 = load ptr, ptr %dentry, align 8, !dbg !4961
  %d_parent18 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3, !dbg !4962
  %28 = load ptr, ptr %d_parent18, align 8, !dbg !4962
  %call19 = call ptr @d_inode(ptr noundef %28) #17, !dbg !4963
  %29 = load ptr, ptr %dentry, align 8, !dbg !4964
  call void @fsnotify_mkdir(ptr noundef %call19, ptr noundef %29) #17, !dbg !4965
  %30 = load ptr, ptr %dentry, align 8, !dbg !4966
  %call20 = call ptr @tracefs_end_creating(ptr noundef %30) #17, !dbg !4967
  store ptr %call20, ptr %retval, align 8, !dbg !4968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4968

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4969
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !4969
  %31 = load ptr, ptr %retval, align 8, !dbg !4969
  ret ptr %31, !dbg !4969
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @tracefs_create_instance_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %mkdir, ptr noundef %rmdir) #7 section ".init.text" align 16 !dbg !4970 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %mkdir.addr = alloca ptr, align 8
  %rmdir.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4974, metadata !DIExpression()), !dbg !4985
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4975, metadata !DIExpression()), !dbg !4986
  store ptr %mkdir, ptr %mkdir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mkdir.addr, metadata !4976, metadata !DIExpression()), !dbg !4987
  store ptr %rmdir, ptr %rmdir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmdir.addr, metadata !4977, metadata !DIExpression()), !dbg !4988
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4978, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4979, metadata !DIExpression()), !dbg !4991
  %0 = load ptr, ptr @tracefs_ops, align 8, !dbg !4991
  %tobool = icmp ne ptr %0, null, !dbg !4991
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4991

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.tracefs_dir_ops, ptr @tracefs_ops, i32 0, i32 1), align 8, !dbg !4991
  %tobool1 = icmp ne ptr %1, null, !dbg !4991
  br label %lor.end, !dbg !4991

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !4991
  %lnot2 = xor i1 %lnot, true, !dbg !4991
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4991
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4991
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4992
  %tobool3 = icmp ne i32 %3, 0, !dbg !4992
  %lnot4 = xor i1 %tobool3, true, !dbg !4992
  %lnot6 = xor i1 %lnot4, true, !dbg !4992
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4992
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4992
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4992
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4992
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4991

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4992

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4982, metadata !DIExpression()), !dbg !4993
  store i32 2305, ptr %__flags, align 4, !dbg !4993
  br label %do.body9, !dbg !4993

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4994

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4994

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4993

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !4996
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 757, i32 %4, i64 12) #16, !dbg !4996, !srcloc !4998
  br label %do.cond11, !dbg !4996

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4996

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4993

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4999

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4999

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4992
  br label %do.cond16, !dbg !4993

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4993

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4993

if.end:                                           ; preds = %do.end17, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4991
  %tobool18 = icmp ne i32 %5, 0, !dbg !4991
  %lnot19 = xor i1 %tobool18, true, !dbg !4991
  %lnot21 = xor i1 %lnot19, true, !dbg !4991
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4991
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4991
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4991
  store i64 %expval24, ptr %tmp, align 8, !dbg !4992
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5001
  %6 = load i64, ptr %tmp, align 8, !dbg !4991
  %tobool25 = icmp ne i64 %6, 0, !dbg !5001
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5002

if.then26:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5003

if.end27:                                         ; preds = %if.end
  %7 = load ptr, ptr %name.addr, align 8, !dbg !5004
  %8 = load ptr, ptr %parent.addr, align 8, !dbg !5005
  %call = call ptr @__create_dir(ptr noundef %7, ptr noundef %8, ptr noundef @tracefs_instance_dir_inode_operations) #17, !dbg !5006
  store ptr %call, ptr %dentry, align 8, !dbg !5007
  %9 = load ptr, ptr %dentry, align 8, !dbg !5008
  %tobool28 = icmp ne ptr %9, null, !dbg !5008
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5010

if.then29:                                        ; preds = %if.end27
  store ptr null, ptr %retval, align 8, !dbg !5011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5011

if.end30:                                         ; preds = %if.end27
  %10 = load ptr, ptr %mkdir.addr, align 8, !dbg !5012
  store ptr %10, ptr @tracefs_ops, align 8, !dbg !5013
  %11 = load ptr, ptr %rmdir.addr, align 8, !dbg !5014
  store ptr %11, ptr getelementptr inbounds (%struct.tracefs_dir_ops, ptr @tracefs_ops, i32 0, i32 1), align 8, !dbg !5015
  %12 = load ptr, ptr %dentry, align 8, !dbg !5016
  store ptr %12, ptr %retval, align 8, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5017

cleanup:                                          ; preds = %if.end30, %if.then29, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5018
  %13 = load ptr, ptr %retval, align 8, !dbg !5018
  ret ptr %13, !dbg !5018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tracefs_remove(ptr noundef %dentry) #0 align 16 !dbg !5019 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5023
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !5025
  br i1 %call, label %if.then, label %if.end, !dbg !5026

if.then:                                          ; preds = %entry
  br label %return, !dbg !5027

if.end:                                           ; preds = %entry
  %call1 = call i32 @simple_pin_fs(ptr noundef @trace_fs_type, ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !5028
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5029
  call void @simple_recursive_removal(ptr noundef %1, ptr noundef @remove_one) #17, !dbg !5030
  call void @simple_release_fs(ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !5031
  br label %return, !dbg !5032

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #5 align 16 !dbg !5033 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5037
  %tobool = icmp ne ptr %0, null, !dbg !5037
  %lnot = xor i1 %tobool, true, !dbg !5037
  %lnot1 = xor i1 %lnot, true, !dbg !5037
  %lnot2 = xor i1 %lnot1, true, !dbg !5037
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5037
  %conv = sext i32 %lnot.ext to i64, !dbg !5037
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5037
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5037
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5038

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !5039
  %2 = ptrtoint ptr %1 to i64, !dbg !5039
  %3 = inttoptr i64 %2 to ptr, !dbg !5039
  %4 = ptrtoint ptr %3 to i64, !dbg !5039
  %cmp = icmp uge i64 %4, -4095, !dbg !5039
  %lnot5 = xor i1 %cmp, true, !dbg !5039
  %lnot7 = xor i1 %lnot5, true, !dbg !5039
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5039
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5039
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5039
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !5038
  br label %lor.end, !dbg !5038

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !5040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5041 dso_local void @simple_recursive_removal(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_one(ptr noundef %victim) #0 align 16 !dbg !5044 {
entry:
  %victim.addr = alloca ptr, align 8
  store ptr %victim, ptr %victim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %victim.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  call void @simple_release_fs(ptr noundef @tracefs_mount, ptr noundef @tracefs_mount_count) #17, !dbg !5048
  ret void, !dbg !5049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tracefs_initialized() #0 align 16 !dbg !5050 {
entry:
  %0 = load i8, ptr @tracefs_registered, align 1, !dbg !5051, !range !5052, !noundef !590
  %tobool = trunc i8 %0 to i1, !dbg !5051
  ret i1 %tobool, !dbg !5053
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tracefs__306_835_tracefs_init1() #7 section ".init.text" align 16 !dbg !5054 {
entry:
  %call = call i32 @tracefs_init() #18, !dbg !5055
  ret i32 %call, !dbg !5055
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tracefs_init() #7 section ".init.text" align 16 !dbg !5056 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5059
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5058, metadata !DIExpression()), !dbg !5060
  %call = call ptr @kmem_cache_create(ptr noundef @.str.11, i32 noundef 632, i32 noundef 0, i32 noundef 1179648, ptr noundef @init_once) #17, !dbg !5061
  store ptr %call, ptr @tracefs_inode_cachep, align 8, !dbg !5062
  %0 = load ptr, ptr @tracefs_inode_cachep, align 8, !dbg !5063
  %tobool = icmp ne ptr %0, null, !dbg !5063
  br i1 %tobool, label %if.end, label %if.then, !dbg !5065

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5066

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @kernel_kobj, align 8, !dbg !5067
  %call2 = call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef @.str.12) #17, !dbg !5068
  store i32 %call2, ptr %retval1, align 4, !dbg !5069
  %2 = load i32, ptr %retval1, align 4, !dbg !5070
  %tobool3 = icmp ne i32 %2, 0, !dbg !5070
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5072

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5073

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @register_filesystem(ptr noundef @trace_fs_type) #17, !dbg !5074
  store i32 %call6, ptr %retval1, align 4, !dbg !5075
  %3 = load i32, ptr %retval1, align 4, !dbg !5076
  %tobool7 = icmp ne i32 %3, 0, !dbg !5076
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5078

if.then8:                                         ; preds = %if.end5
  store i8 1, ptr @tracefs_registered, align 1, !dbg !5079
  br label %if.end9, !dbg !5080

if.end9:                                          ; preds = %if.then8, %if.end5
  %4 = load i32, ptr %retval1, align 4, !dbg !5081
  store i32 %4, ptr %retval, align 4, !dbg !5082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5082

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5083
  %5 = load i32, ptr %retval, align 4, !dbg !5083
  ret i32 %5, !dbg !5083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @trace_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 16 !dbg !5084 {
entry:
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !5086, metadata !DIExpression()), !dbg !5090
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5087, metadata !DIExpression()), !dbg !5091
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !5088, metadata !DIExpression()), !dbg !5092
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5089, metadata !DIExpression()), !dbg !5093
  %0 = load ptr, ptr %fs_type.addr, align 8, !dbg !5094
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5095
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5096
  %call = call ptr @mount_single(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef @trace_fill_super) #17, !dbg !5097
  ret ptr %call, !dbg !5098
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5099 dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 16 !dbg !4394 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %silent.addr = alloca i32, align 4
  %fsi = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4398, metadata !DIExpression()), !dbg !5103
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4399, metadata !DIExpression()), !dbg !5104
  store i32 %silent, ptr %silent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !4400, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !5106
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !4401, metadata !DIExpression()), !dbg !5107
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5108
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4412, metadata !DIExpression()), !dbg !5109
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #19, !dbg !5110
  store ptr %call, ptr %fsi, align 8, !dbg !5111
  %0 = load ptr, ptr %fsi, align 8, !dbg !5112
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !5113
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5114
  store ptr %0, ptr %s_fs_info, align 32, !dbg !5115
  %2 = load ptr, ptr %fsi, align 8, !dbg !5116
  %tobool = icmp ne ptr %2, null, !dbg !5116
  br i1 %tobool, label %if.end, label %if.then, !dbg !5118

if.then:                                          ; preds = %entry
  store i32 -12, ptr %err, align 4, !dbg !5119
  br label %fail, !dbg !5121

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5122
  %4 = load ptr, ptr %fsi, align 8, !dbg !5123
  %mount_opts = getelementptr inbounds %struct.tracefs_fs_info, ptr %4, i32 0, i32 0, !dbg !5124
  %call1 = call i32 @tracefs_parse_options(ptr noundef %3, ptr noundef %mount_opts) #17, !dbg !5125
  store i32 %call1, ptr %err, align 4, !dbg !5126
  %5 = load i32, ptr %err, align 4, !dbg !5127
  %tobool2 = icmp ne i32 %5, 0, !dbg !5127
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5129

if.then3:                                         ; preds = %if.end
  br label %fail, !dbg !5130

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5131
  %call5 = call i32 @simple_fill_super(ptr noundef %6, i64 noundef 1953653091, ptr noundef @trace_fill_super.trace_files) #17, !dbg !5132
  store i32 %call5, ptr %err, align 4, !dbg !5133
  %7 = load i32, ptr %err, align 4, !dbg !5134
  %tobool6 = icmp ne i32 %7, 0, !dbg !5134
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5136

if.then7:                                         ; preds = %if.end4
  br label %fail, !dbg !5137

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !5138
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6, !dbg !5139
  store ptr @tracefs_super_operations, ptr %s_op, align 16, !dbg !5140
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !5141
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 40, !dbg !5142
  store ptr @tracefs_dentry_operations, ptr %s_d_op, align 16, !dbg !5143
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !5144
  %call9 = call i32 @tracefs_apply_options(ptr noundef %10, i1 noundef zeroext false) #17, !dbg !5145
  store i32 0, ptr %retval, align 4, !dbg !5146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5146

fail:                                             ; preds = %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4413), !dbg !5147
  %11 = load ptr, ptr %fsi, align 8, !dbg !5148
  call void @kfree(ptr noundef %11) #17, !dbg !5149
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !5150
  %s_fs_info10 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 29, !dbg !5151
  store ptr null, ptr %s_fs_info10, align 32, !dbg !5152
  %13 = load i32, ptr %err, align 4, !dbg !5153
  store i32 %13, ptr %retval, align 4, !dbg !5154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5154

cleanup:                                          ; preds = %fail, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5155
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !5155
  %14 = load i32, ptr %retval, align 4, !dbg !5155
  ret i32 %14, !dbg !5155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5156 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5160, metadata !DIExpression()), !dbg !5162
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5161, metadata !DIExpression()), !dbg !5163
  %0 = load i64, ptr %size.addr, align 8, !dbg !5164
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5165
  %or = or i32 %1, 256, !dbg !5166
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5167
  ret ptr %call, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_parse_options(ptr noundef %data, ptr noundef %opts) #0 align 16 !dbg !5169 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %args = alloca [3 x %struct.substring_t], align 16
  %option = alloca i32, align 4
  %token = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %tmp20 = alloca %struct.kgid_t, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5174, metadata !DIExpression()), !dbg !5188
  store ptr %opts, ptr %opts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !5175, metadata !DIExpression()), !dbg !5189
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #16, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5176, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 4, ptr %option) #16, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %option, metadata !5183, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #16, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %token, metadata !5184, metadata !DIExpression()), !dbg !5195
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5185, metadata !DIExpression()), !dbg !5197
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !5198
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5186, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5187, metadata !DIExpression()), !dbg !5201
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !5202
  %opts1 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %0, i32 0, i32 3, !dbg !5203
  store i32 0, ptr %opts1, align 4, !dbg !5204
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !5205
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %1, i32 0, i32 2, !dbg !5206
  store i16 448, ptr %mode, align 4, !dbg !5207
  br label %while.cond, !dbg !5208

while.cond:                                       ; preds = %sw.epilog, %if.then, %entry
  %call = call ptr @strsep(ptr noundef %data.addr, ptr noundef @.str.4) #17, !dbg !5209
  store ptr %call, ptr %p, align 8, !dbg !5210
  %cmp = icmp ne ptr %call, null, !dbg !5211
  br i1 %cmp, label %while.body, label %while.end, !dbg !5208

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8, !dbg !5212
  %3 = load i8, ptr %2, align 1, !dbg !5215
  %tobool = icmp ne i8 %3, 0, !dbg !5215
  br i1 %tobool, label %if.end, label %if.then, !dbg !5216

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !5217, !llvm.loop !5218

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %p, align 8, !dbg !5220
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5221
  %call2 = call i32 @match_token(ptr noundef %4, ptr noundef @tokens, ptr noundef %arraydecay) #17, !dbg !5222
  store i32 %call2, ptr %token, align 4, !dbg !5223
  %5 = load i32, ptr %token, align 4, !dbg !5224
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb29
  ], !dbg !5225

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5226
  %call3 = call i32 @match_int(ptr noundef %arrayidx, ptr noundef %option) #17, !dbg !5229
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5229
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5230

if.then5:                                         ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !5231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5231

if.end6:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !5232
  %call7 = call ptr @current_user_ns() #17, !dbg !5233
  %6 = load i32, ptr %option, align 4, !dbg !5234
  %call8 = call i32 @make_kuid(ptr noundef %call7, i32 noundef %6) #17, !dbg !5232
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !5232
  store i32 %call8, ptr %coerce.dive, align 4, !dbg !5232
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !5232
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !5232
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5235
  %7 = load i32, ptr %coerce.dive9, align 4, !dbg !5235
  %call10 = call zeroext i1 @uid_valid(i32 %7) #17, !dbg !5235
  br i1 %call10, label %if.end12, label %if.then11, !dbg !5237

if.then11:                                        ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !5238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5238

if.end12:                                         ; preds = %if.end6
  %8 = load ptr, ptr %opts.addr, align 8, !dbg !5239
  %uid13 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %8, i32 0, i32 0, !dbg !5240
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid13, ptr align 4 %uid, i64 4, i1 false), !dbg !5241
  br label %sw.epilog, !dbg !5242

sw.bb14:                                          ; preds = %if.end
  %arrayidx15 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5243
  %call16 = call i32 @match_int(ptr noundef %arrayidx15, ptr noundef %option) #17, !dbg !5245
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5245
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5246

if.then18:                                        ; preds = %sw.bb14
  store i32 -22, ptr %retval, align 4, !dbg !5247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5247

if.end19:                                         ; preds = %sw.bb14
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp20) #16, !dbg !5248
  %call21 = call ptr @current_user_ns() #17, !dbg !5249
  %9 = load i32, ptr %option, align 4, !dbg !5250
  %call22 = call i32 @make_kgid(ptr noundef %call21, i32 noundef %9) #17, !dbg !5248
  %coerce.dive23 = getelementptr inbounds %struct.kgid_t, ptr %tmp20, i32 0, i32 0, !dbg !5248
  store i32 %call22, ptr %coerce.dive23, align 4, !dbg !5248
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %tmp20, i64 4, i1 false), !dbg !5248
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp20) #16, !dbg !5248
  %coerce.dive24 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5251
  %10 = load i32, ptr %coerce.dive24, align 4, !dbg !5251
  %call25 = call zeroext i1 @gid_valid(i32 %10) #17, !dbg !5251
  br i1 %call25, label %if.end27, label %if.then26, !dbg !5253

if.then26:                                        ; preds = %if.end19
  store i32 -22, ptr %retval, align 4, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

if.end27:                                         ; preds = %if.end19
  %11 = load ptr, ptr %opts.addr, align 8, !dbg !5255
  %gid28 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %11, i32 0, i32 1, !dbg !5256
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid28, ptr align 4 %gid, i64 4, i1 false), !dbg !5257
  br label %sw.epilog, !dbg !5258

sw.bb29:                                          ; preds = %if.end
  %arrayidx30 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !5259
  %call31 = call i32 @match_octal(ptr noundef %arrayidx30, ptr noundef %option) #17, !dbg !5261
  %tobool32 = icmp ne i32 %call31, 0, !dbg !5261
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5262

if.then33:                                        ; preds = %sw.bb29
  store i32 -22, ptr %retval, align 4, !dbg !5263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5263

if.end34:                                         ; preds = %sw.bb29
  %12 = load i32, ptr %option, align 4, !dbg !5264
  %and = and i32 %12, 4095, !dbg !5265
  %conv = trunc i32 %and to i16, !dbg !5264
  %13 = load ptr, ptr %opts.addr, align 8, !dbg !5266
  %mode35 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %13, i32 0, i32 2, !dbg !5267
  store i16 %conv, ptr %mode35, align 4, !dbg !5268
  br label %sw.epilog, !dbg !5269

sw.epilog:                                        ; preds = %if.end, %if.end34, %if.end27, %if.end12
  %14 = load i32, ptr %token, align 4, !dbg !5270
  %sh_prom = zext i32 %14 to i64, !dbg !5270
  %shl = shl i64 1, %sh_prom, !dbg !5270
  %15 = load ptr, ptr %opts.addr, align 8, !dbg !5271
  %opts36 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %15, i32 0, i32 3, !dbg !5272
  %16 = load i32, ptr %opts36, align 4, !dbg !5273
  %conv37 = zext i32 %16 to i64, !dbg !5273
  %or = or i64 %conv37, %shl, !dbg !5273
  %conv38 = trunc i64 %or to i32, !dbg !5273
  store i32 %conv38, ptr %opts36, align 4, !dbg !5273
  br label %while.cond, !dbg !5208, !llvm.loop !5218

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5274

cleanup:                                          ; preds = %while.end, %if.then33, %if.then26, %if.then18, %if.then11, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 4, ptr %option) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #16, !dbg !5275
  %17 = load i32, ptr %retval, align 4, !dbg !5275
  ret i32 %17, !dbg !5275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5276 dso_local i32 @simple_fill_super(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_apply_options(ptr noundef %sb, i1 noundef zeroext %remount) #0 align 16 !dbg !5280 {
entry:
  %sb.addr = alloca ptr, align 8
  %remount.addr = alloca i8, align 1
  %fsi = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %update_uid = alloca i8, align 1
  %update_gid = alloca i8, align 1
  %tmp_mode = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__mptr = alloca ptr, align 8
  %tmp60 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__mptr79 = alloca ptr, align 8
  %tmp83 = alloca ptr, align 8
  %tmp85 = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5284, metadata !DIExpression()), !dbg !5301
  %frombool = zext i1 %remount to i8
  store i8 %frombool, ptr %remount.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %remount.addr, metadata !5285, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5286, metadata !DIExpression()), !dbg !5304
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5305
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5306
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5306
  store ptr %1, ptr %fsi, align 8, !dbg !5304
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5307
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5287, metadata !DIExpression()), !dbg !5308
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !5309
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !5310
  %3 = load ptr, ptr %s_root, align 8, !dbg !5310
  %call = call ptr @d_inode(ptr noundef %3) #17, !dbg !5311
  store ptr %call, ptr %inode, align 8, !dbg !5308
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !5288, metadata !DIExpression()), !dbg !5313
  %4 = load ptr, ptr %fsi, align 8, !dbg !5314
  %mount_opts = getelementptr inbounds %struct.tracefs_fs_info, ptr %4, i32 0, i32 0, !dbg !5315
  store ptr %mount_opts, ptr %opts, align 8, !dbg !5313
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5316
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5289, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 1, ptr %update_uid) #16, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %update_uid, metadata !5290, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 1, ptr %update_gid) #16, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %update_gid, metadata !5291, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 2, ptr %tmp_mode) #16, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %tmp_mode, metadata !5292, metadata !DIExpression()), !dbg !5322
  %5 = load i8, ptr %remount.addr, align 1, !dbg !5323, !range !5052, !noundef !590
  %tobool = trunc i8 %5 to i1, !dbg !5323
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5325

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %opts, align 8, !dbg !5326
  %opts1 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %6, i32 0, i32 3, !dbg !5327
  %7 = load i32, ptr %opts1, align 4, !dbg !5327
  %conv = zext i32 %7 to i64, !dbg !5326
  %and = and i64 %conv, 4, !dbg !5328
  %tobool2 = icmp ne i64 %and, 0, !dbg !5328
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5329

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5333

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5333

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %inode, align 8, !dbg !5330
  %i_mode = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 0, !dbg !5330
  %9 = load volatile i16, ptr %i_mode, align 8, !dbg !5330
  store i16 %9, ptr %tmp, align 2, !dbg !5333
  %10 = load i16, ptr %tmp, align 2, !dbg !5330
  %conv3 = zext i16 %10 to i32, !dbg !5335
  %and4 = and i32 %conv3, -4096, !dbg !5336
  %conv5 = trunc i32 %and4 to i16, !dbg !5335
  store i16 %conv5, ptr %tmp_mode, align 2, !dbg !5337
  %11 = load ptr, ptr %opts, align 8, !dbg !5338
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %11, i32 0, i32 2, !dbg !5339
  %12 = load i16, ptr %mode, align 4, !dbg !5339
  %conv6 = zext i16 %12 to i32, !dbg !5338
  %13 = load i16, ptr %tmp_mode, align 2, !dbg !5340
  %conv7 = zext i16 %13 to i32, !dbg !5340
  %or = or i32 %conv7, %conv6, !dbg !5340
  %conv8 = trunc i32 %or to i16, !dbg !5340
  store i16 %conv8, ptr %tmp_mode, align 2, !dbg !5340
  br label %do.body9, !dbg !5341

do.body9:                                         ; preds = %do.end
  br label %do.body10, !dbg !5342

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !5344

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5344

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5342

do.body13:                                        ; preds = %do.end12
  %14 = load i16, ptr %tmp_mode, align 2, !dbg !5346
  %15 = load ptr, ptr %inode, align 8, !dbg !5346
  %i_mode14 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 0, !dbg !5346
  store volatile i16 %14, ptr %i_mode14, align 8, !dbg !5346
  br label %do.cond15, !dbg !5346

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !5346

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !5342

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5342

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5348

if.end:                                           ; preds = %do.end18, %lor.lhs.false
  %16 = load i8, ptr %remount.addr, align 1, !dbg !5349, !range !5052, !noundef !590
  %tobool19 = trunc i8 %16 to i1, !dbg !5349
  br i1 %tobool19, label %lor.lhs.false20, label %if.then25, !dbg !5351

lor.lhs.false20:                                  ; preds = %if.end
  %17 = load ptr, ptr %opts, align 8, !dbg !5352
  %opts21 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %17, i32 0, i32 3, !dbg !5353
  %18 = load i32, ptr %opts21, align 4, !dbg !5353
  %conv22 = zext i32 %18 to i64, !dbg !5352
  %and23 = and i64 %conv22, 1, !dbg !5354
  %tobool24 = icmp ne i64 %and23, 0, !dbg !5354
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5355

if.then25:                                        ; preds = %lor.lhs.false20, %if.end
  %19 = load ptr, ptr %inode, align 8, !dbg !5356
  %i_uid = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 2, !dbg !5357
  %20 = load ptr, ptr %opts, align 8, !dbg !5358
  %uid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %20, i32 0, i32 0, !dbg !5359
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !5359
  br label %if.end26, !dbg !5356

if.end26:                                         ; preds = %if.then25, %lor.lhs.false20
  %21 = load i8, ptr %remount.addr, align 1, !dbg !5360, !range !5052, !noundef !590
  %tobool27 = trunc i8 %21 to i1, !dbg !5360
  br i1 %tobool27, label %lor.lhs.false28, label %if.then33, !dbg !5362

lor.lhs.false28:                                  ; preds = %if.end26
  %22 = load ptr, ptr %opts, align 8, !dbg !5363
  %opts29 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %22, i32 0, i32 3, !dbg !5364
  %23 = load i32, ptr %opts29, align 4, !dbg !5364
  %conv30 = zext i32 %23 to i64, !dbg !5363
  %and31 = and i64 %conv30, 2, !dbg !5365
  %tobool32 = icmp ne i64 %and31, 0, !dbg !5365
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5366

if.then33:                                        ; preds = %lor.lhs.false28, %if.end26
  %24 = load ptr, ptr %inode, align 8, !dbg !5367
  %i_gid = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 4, !dbg !5368
  %25 = load ptr, ptr %opts, align 8, !dbg !5369
  %gid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %25, i32 0, i32 1, !dbg !5370
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %gid, i64 4, i1 false), !dbg !5370
  br label %if.end34, !dbg !5367

if.end34:                                         ; preds = %if.then33, %lor.lhs.false28
  %26 = load i8, ptr %remount.addr, align 1, !dbg !5371, !range !5052, !noundef !590
  %tobool35 = trunc i8 %26 to i1, !dbg !5371
  br i1 %tobool35, label %land.lhs.true, label %if.end87, !dbg !5372

land.lhs.true:                                    ; preds = %if.end34
  %27 = load ptr, ptr %opts, align 8, !dbg !5373
  %opts37 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %27, i32 0, i32 3, !dbg !5374
  %28 = load i32, ptr %opts37, align 4, !dbg !5374
  %conv38 = zext i32 %28 to i64, !dbg !5373
  %and39 = and i64 %conv38, 1, !dbg !5375
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5375
  br i1 %tobool40, label %if.then46, label %lor.lhs.false41, !dbg !5376

lor.lhs.false41:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %opts, align 8, !dbg !5377
  %opts42 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %29, i32 0, i32 3, !dbg !5378
  %30 = load i32, ptr %opts42, align 4, !dbg !5378
  %conv43 = zext i32 %30 to i64, !dbg !5377
  %and44 = and i64 %conv43, 2, !dbg !5379
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5379
  br i1 %tobool45, label %if.then46, label %if.end87, !dbg !5380

if.then46:                                        ; preds = %lor.lhs.false41, %land.lhs.true
  %31 = load ptr, ptr %opts, align 8, !dbg !5381
  %opts47 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %31, i32 0, i32 3, !dbg !5382
  %32 = load i32, ptr %opts47, align 4, !dbg !5382
  %conv48 = zext i32 %32 to i64, !dbg !5381
  %and49 = and i64 %conv48, 1, !dbg !5383
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5381
  %frombool51 = zext i1 %tobool50 to i8, !dbg !5384
  store i8 %frombool51, ptr %update_uid, align 1, !dbg !5384
  %33 = load ptr, ptr %opts, align 8, !dbg !5385
  %opts52 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %33, i32 0, i32 3, !dbg !5386
  %34 = load i32, ptr %opts52, align 4, !dbg !5386
  %conv53 = zext i32 %34 to i64, !dbg !5385
  %and54 = and i64 %conv53, 2, !dbg !5387
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5385
  %frombool56 = zext i1 %tobool55 to i8, !dbg !5388
  store i8 %frombool56, ptr %update_gid, align 1, !dbg !5388
  call void @rcu_read_lock() #17, !dbg !5389
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5390
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5293, metadata !DIExpression()), !dbg !5390
  br label %do.body57, !dbg !5391

do.body57:                                        ; preds = %if.then46
  br label %do.cond58, !dbg !5393

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5393

do.end59:                                         ; preds = %do.cond58
  %35 = load volatile ptr, ptr @tracefs_inodes, align 8, !dbg !5391
  store ptr %35, ptr %tmp60, align 8, !dbg !5393
  %36 = load ptr, ptr %tmp60, align 8, !dbg !5391
  store ptr %36, ptr %__mptr, align 8, !dbg !5390
  %37 = load ptr, ptr %__mptr, align 8, !dbg !5390
  %add.ptr = getelementptr i8, ptr %37, i64 -600, !dbg !5390
  store ptr %add.ptr, ptr %tmp61, align 8, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5395
  %38 = load ptr, ptr %tmp61, align 8, !dbg !5390
  store ptr %38, ptr %ti, align 8, !dbg !5395
  br label %for.cond, !dbg !5395

for.cond:                                         ; preds = %do.end82, %do.end59
  %39 = load ptr, ptr %ti, align 8, !dbg !5396
  %list = getelementptr inbounds %struct.tracefs_inode, ptr %39, i32 0, i32 1, !dbg !5396
  %cmp = icmp ne ptr %list, @tracefs_inodes, !dbg !5396
  br i1 %cmp, label %for.body, label %for.end, !dbg !5395

for.body:                                         ; preds = %for.cond
  %40 = load i8, ptr %update_uid, align 1, !dbg !5397, !range !5052, !noundef !590
  %tobool63 = trunc i8 %40 to i1, !dbg !5397
  br i1 %tobool63, label %if.then64, label %if.end66, !dbg !5400

if.then64:                                        ; preds = %for.body
  %41 = load ptr, ptr %ti, align 8, !dbg !5401
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %41, i32 0, i32 2, !dbg !5402
  %42 = load i64, ptr %flags, align 8, !dbg !5403
  %and65 = and i64 %42, -9, !dbg !5403
  store i64 %and65, ptr %flags, align 8, !dbg !5403
  br label %if.end66, !dbg !5401

if.end66:                                         ; preds = %if.then64, %for.body
  %43 = load i8, ptr %update_gid, align 1, !dbg !5404, !range !5052, !noundef !590
  %tobool67 = trunc i8 %43 to i1, !dbg !5404
  br i1 %tobool67, label %if.then68, label %if.end71, !dbg !5406

if.then68:                                        ; preds = %if.end66
  %44 = load ptr, ptr %ti, align 8, !dbg !5407
  %flags69 = getelementptr inbounds %struct.tracefs_inode, ptr %44, i32 0, i32 2, !dbg !5408
  %45 = load i64, ptr %flags69, align 8, !dbg !5409
  %and70 = and i64 %45, -5, !dbg !5409
  store i64 %and70, ptr %flags69, align 8, !dbg !5409
  br label %if.end71, !dbg !5407

if.end71:                                         ; preds = %if.then68, %if.end66
  %46 = load ptr, ptr %ti, align 8, !dbg !5410
  %flags72 = getelementptr inbounds %struct.tracefs_inode, ptr %46, i32 0, i32 2, !dbg !5412
  %47 = load i64, ptr %flags72, align 8, !dbg !5412
  %and73 = and i64 %47, 2, !dbg !5413
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5413
  br i1 %tobool74, label %if.then75, label %if.end78, !dbg !5414

if.then75:                                        ; preds = %if.end71
  %48 = load ptr, ptr %ti, align 8, !dbg !5415
  %49 = load i8, ptr %update_uid, align 1, !dbg !5416, !range !5052, !noundef !590
  %tobool76 = trunc i8 %49 to i1, !dbg !5416
  %50 = load i8, ptr %update_gid, align 1, !dbg !5417, !range !5052, !noundef !590
  %tobool77 = trunc i8 %50 to i1, !dbg !5417
  call void @eventfs_remount(ptr noundef %48, i1 noundef zeroext %tobool76, i1 noundef zeroext %tobool77) #17, !dbg !5418
  br label %if.end78, !dbg !5418

if.end78:                                         ; preds = %if.then75, %if.end71
  br label %for.inc, !dbg !5419

for.inc:                                          ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr79) #16, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__mptr79, metadata !5298, metadata !DIExpression()), !dbg !5420
  br label %do.body80, !dbg !5421

do.body80:                                        ; preds = %for.inc
  br label %do.cond81, !dbg !5423

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !5423

do.end82:                                         ; preds = %do.cond81
  %51 = load ptr, ptr %ti, align 8, !dbg !5421
  %list84 = getelementptr inbounds %struct.tracefs_inode, ptr %51, i32 0, i32 1, !dbg !5421
  %next = getelementptr inbounds %struct.list_head, ptr %list84, i32 0, i32 0, !dbg !5421
  %52 = load volatile ptr, ptr %next, align 8, !dbg !5421
  store ptr %52, ptr %tmp83, align 8, !dbg !5423
  %53 = load ptr, ptr %tmp83, align 8, !dbg !5421
  store ptr %53, ptr %__mptr79, align 8, !dbg !5420
  %54 = load ptr, ptr %__mptr79, align 8, !dbg !5420
  %add.ptr86 = getelementptr i8, ptr %54, i64 -600, !dbg !5420
  store ptr %add.ptr86, ptr %tmp85, align 8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr79) #16, !dbg !5396
  %55 = load ptr, ptr %tmp85, align 8, !dbg !5420
  store ptr %55, ptr %ti, align 8, !dbg !5396
  br label %for.cond, !dbg !5396, !llvm.loop !5425

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #17, !dbg !5427
  br label %if.end87, !dbg !5428

if.end87:                                         ; preds = %for.end, %lor.lhs.false41, %if.end34
  call void @llvm.lifetime.end.p0(i64 2, ptr %tmp_mode) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 1, ptr %update_gid) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 1, ptr %update_uid) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5429
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !5429
  ret i32 0, !dbg !5430
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5431 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5434 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5436, metadata !DIExpression()), !dbg !5441
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5437, metadata !DIExpression()), !dbg !5442
  %0 = load i64, ptr %size.addr, align 8, !dbg !5443
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5444
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5445

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5446
  %tobool = icmp ne i64 %2, 0, !dbg !5446
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5447

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5448
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5438, metadata !DIExpression()), !dbg !5449
  %3 = load i64, ptr %size.addr, align 8, !dbg !5450
  %cmp = icmp ugt i64 %3, 8192, !dbg !5452
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5453

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5454
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5455
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5456
  store ptr %call, ptr %retval, align 8, !dbg !5457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5457

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5458
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5458
  store i32 %call2, ptr %index, align 4, !dbg !5459
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5460
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5461
  %9 = ptrtoint ptr %8 to i64, !dbg !5461
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5462
  %idxprom = zext i32 %call3 to i64, !dbg !5463
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5463
  %10 = load i32, ptr %index, align 4, !dbg !5464
  %idxprom4 = zext i32 %10 to i64, !dbg !5463
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5463
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5463
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5465
  %13 = load i64, ptr %size.addr, align 8, !dbg !5466
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5467
  store ptr %call6, ptr %retval, align 8, !dbg !5468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5468

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5469
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5470
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5471
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5472
  store ptr %call8, ptr %retval, align 8, !dbg !5473
  br label %return, !dbg !5473

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5474
  ret ptr %16, !dbg !5474
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5475 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !5476 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5480, metadata !DIExpression()), !dbg !5482
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5481, metadata !DIExpression()), !dbg !5483
  %0 = load i64, ptr %size.addr, align 8, !dbg !5484
  %tobool = icmp ne i64 %0, 0, !dbg !5484
  br i1 %tobool, label %if.end, label %if.then, !dbg !5486

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5487
  br label %return, !dbg !5487

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5488
  %cmp = icmp ule i64 %1, 8, !dbg !5490
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5491

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5493
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5495
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5496

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5497
  %cmp4 = icmp ule i64 %3, 96, !dbg !5498
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5499

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5501
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5503
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5504

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5505
  %cmp9 = icmp ule i64 %5, 192, !dbg !5506
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5507

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5508
  br label %return, !dbg !5508

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5509
  %cmp12 = icmp ule i64 %6, 8, !dbg !5511
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5512

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5513
  br label %return, !dbg !5513

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5514
  %cmp15 = icmp ule i64 %7, 16, !dbg !5516
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5517

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5519
  %cmp18 = icmp ule i64 %8, 32, !dbg !5521
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5522

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5523
  br label %return, !dbg !5523

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5524
  %cmp21 = icmp ule i64 %9, 64, !dbg !5526
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5527

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5528
  br label %return, !dbg !5528

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5529
  %cmp24 = icmp ule i64 %10, 128, !dbg !5531
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5532

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5533
  br label %return, !dbg !5533

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5534
  %cmp27 = icmp ule i64 %11, 256, !dbg !5536
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5537

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5539
  %cmp30 = icmp ule i64 %12, 512, !dbg !5541
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5542

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5544
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5546
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5547

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5548
  br label %return, !dbg !5548

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5549
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5551
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5552

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5554
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5556
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5557

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5558
  br label %return, !dbg !5558

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5559
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5561
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5562

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5563
  br label %return, !dbg !5563

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5564
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5566
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5567

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5568
  br label %return, !dbg !5568

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5569
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5571
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5572

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5573
  br label %return, !dbg !5573

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5574
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5576
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5577

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5579
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5581
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5582

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5583
  br label %return, !dbg !5583

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5584
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5586
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5587

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5588
  br label %return, !dbg !5588

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5589
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5591
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5592

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5593
  br label %return, !dbg !5593

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5594
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5596
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5597

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5598
  br label %return, !dbg !5598

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5599
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5601
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5602

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5603
  br label %return, !dbg !5603

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5604, !range !5052, !noundef !590
  %tobool69 = trunc i8 %25 to i1, !dbg !5604
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5606

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5607

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #21, !dbg !5608, !srcloc !5611
  unreachable, !dbg !5608

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5612

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5613

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5614

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5616

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5614

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !5618, !srcloc !5620
  br label %do.end75, !dbg !5618

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5614

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5621
  br label %return, !dbg !5621

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5622
  ret i32 %26, !dbg !5622
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5623 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !5626 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5630, metadata !DIExpression()), !dbg !5632
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5631, metadata !DIExpression()), !dbg !5633
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5634
  %and = and i32 %0, 17, !dbg !5634
  %cmp = icmp eq i32 %and, 0, !dbg !5634
  %lnot = xor i1 %cmp, true, !dbg !5634
  %lnot1 = xor i1 %lnot, true, !dbg !5634
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5634
  %conv = sext i32 %lnot.ext to i64, !dbg !5634
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5634
  %tobool = icmp ne i64 %expval, 0, !dbg !5634
  br i1 %tobool, label %if.then, label %if.end, !dbg !5636

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5637
  br label %return, !dbg !5637

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5638
  %and2 = and i32 %1, 1, !dbg !5640
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5640
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5641

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5642
  br label %return, !dbg !5642

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5643
  br label %return, !dbg !5643

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5645
  ret i32 %2, !dbg !5645
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5646 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5647 dso_local void @__compiletime_assert_255() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5648 dso_local ptr @strsep(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5652 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5657 dso_local i32 @match_int(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #5 align 16 !dbg !5660 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5664, metadata !DIExpression()), !dbg !5666
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5665, metadata !DIExpression()), !dbg !5667
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5668
  %0 = load i32, ptr %uid.addr, align 4, !dbg !5668
  store i32 %0, ptr %val, align 4, !dbg !5668
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5669
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5669
  ret i32 %1, !dbg !5669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #5 align 16 !dbg !5670 {
entry:
  ret ptr @init_user_ns, !dbg !5673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #5 align 16 !dbg !5674 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5678, metadata !DIExpression()), !dbg !5679
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5680
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5680
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !5680
  %cmp = icmp ne i32 %call, -1, !dbg !5681
  ret i1 %cmp, !dbg !5682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #5 align 16 !dbg !5683 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5687, metadata !DIExpression()), !dbg !5689
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5688, metadata !DIExpression()), !dbg !5690
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5691
  %0 = load i32, ptr %gid.addr, align 4, !dbg !5691
  store i32 %0, ptr %val, align 4, !dbg !5691
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5692
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5692
  ret i32 %1, !dbg !5692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #5 align 16 !dbg !5693 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5697, metadata !DIExpression()), !dbg !5698
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5699
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5699
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !5699
  %cmp = icmp ne i32 %call, -1, !dbg !5700
  ret i1 %cmp, !dbg !5701
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5702 dso_local i32 @match_octal(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !5703 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5707, metadata !DIExpression()), !dbg !5708
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5709
  %0 = load i32, ptr %val, align 4, !dbg !5709
  ret i32 %0, !dbg !5710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #5 align 16 !dbg !5711 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5715, metadata !DIExpression()), !dbg !5716
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5717
  %0 = load i32, ptr %val, align 4, !dbg !5717
  ret i32 %0, !dbg !5718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @tracefs_alloc_inode(ptr noundef %sb) #0 align 16 !dbg !5719 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5721, metadata !DIExpression()), !dbg !5729
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5722, metadata !DIExpression()), !dbg !5731
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5732
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5723, metadata !DIExpression()), !dbg !5733
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5734
  %1 = load ptr, ptr @tracefs_inode_cachep, align 8, !dbg !5735
  %call = call ptr @alloc_inode_sb(ptr noundef %0, ptr noundef %1, i32 noundef 3264) #17, !dbg !5736
  store ptr %call, ptr %ti, align 8, !dbg !5737
  %2 = load ptr, ptr %ti, align 8, !dbg !5738
  %tobool = icmp ne ptr %2, null, !dbg !5738
  br i1 %tobool, label %if.end, label %if.then, !dbg !5740

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5741

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5742

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5743

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5724, metadata !DIExpression()), !dbg !5744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5728, metadata !DIExpression()), !dbg !5744
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5744
  %conv = zext i1 %cmp to i32, !dbg !5744
  store i32 1, ptr %tmp, align 4, !dbg !5744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5745
  %3 = load i32, ptr %tmp, align 4, !dbg !5744
  %call2 = call ptr @spinlock_check(ptr noundef @tracefs_inode_lock) #17, !dbg !5745
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #17, !dbg !5745
  store i64 %call3, ptr %flags, align 8, !dbg !5745
  br label %do.cond, !dbg !5745

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5745

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5743

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5743

do.end5:                                          ; preds = %do.cond4
  %4 = load ptr, ptr %ti, align 8, !dbg !5746
  %list = getelementptr inbounds %struct.tracefs_inode, ptr %4, i32 0, i32 1, !dbg !5747
  call void @list_add_rcu(ptr noundef %list, ptr noundef @tracefs_inodes) #17, !dbg !5748
  %5 = load i64, ptr %flags, align 8, !dbg !5749
  call void @spin_unlock_irqrestore(ptr noundef @tracefs_inode_lock, i64 noundef %5) #17, !dbg !5750
  %6 = load ptr, ptr %ti, align 8, !dbg !5751
  %vfs_inode = getelementptr inbounds %struct.tracefs_inode, ptr %6, i32 0, i32 0, !dbg !5752
  store ptr %vfs_inode, ptr %retval, align 8, !dbg !5753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5753

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5754
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !5754
  %7 = load ptr, ptr %retval, align 8, !dbg !5754
  ret ptr %7, !dbg !5754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracefs_destroy_inode(ptr noundef %inode) #0 align 16 !dbg !5755 {
entry:
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5757, metadata !DIExpression()), !dbg !5765
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5766
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5758, metadata !DIExpression()), !dbg !5767
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5768
  %call = call ptr @get_tracefs(ptr noundef %0) #17, !dbg !5769
  store ptr %call, ptr %ti, align 8, !dbg !5767
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5770
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5759, metadata !DIExpression()), !dbg !5771
  br label %do.body, !dbg !5772

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5773

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5760, metadata !DIExpression()), !dbg !5774
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5764, metadata !DIExpression()), !dbg !5774
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5774
  %conv = zext i1 %cmp to i32, !dbg !5774
  store i32 1, ptr %tmp, align 4, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5775
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5775
  %1 = load i32, ptr %tmp, align 4, !dbg !5774
  %call2 = call ptr @spinlock_check(ptr noundef @tracefs_inode_lock) #17, !dbg !5775
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #17, !dbg !5775
  store i64 %call3, ptr %flags, align 8, !dbg !5775
  br label %do.cond, !dbg !5775

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5775

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5773

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5773

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %ti, align 8, !dbg !5776
  %list = getelementptr inbounds %struct.tracefs_inode, ptr %2, i32 0, i32 1, !dbg !5777
  call void @list_del_rcu(ptr noundef %list) #17, !dbg !5778
  %3 = load i64, ptr %flags, align 8, !dbg !5779
  call void @spin_unlock_irqrestore(ptr noundef @tracefs_inode_lock, i64 noundef %3) #17, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5781
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !5781
  ret void, !dbg !5781
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracefs_free_inode(ptr noundef %inode) #0 align 16 !dbg !5782 {
entry:
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5784, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5785, metadata !DIExpression()), !dbg !5788
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5789
  %call = call ptr @get_tracefs(ptr noundef %0) #17, !dbg !5790
  store ptr %call, ptr %ti, align 8, !dbg !5788
  %1 = load ptr, ptr @tracefs_inode_cachep, align 8, !dbg !5791
  %2 = load ptr, ptr %ti, align 8, !dbg !5792
  call void @kmem_cache_free(ptr noundef %1, ptr noundef %2) #17, !dbg !5793
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !5794
  ret void, !dbg !5794
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_drop_inode(ptr noundef %inode) #0 align 16 !dbg !5795 {
entry:
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5798, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5802
  %call = call ptr @get_tracefs(ptr noundef %0) #17, !dbg !5803
  store ptr %call, ptr %ti, align 8, !dbg !5801
  %1 = load ptr, ptr %ti, align 8, !dbg !5804
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %1, i32 0, i32 2, !dbg !5805
  %2 = load i64, ptr %flags, align 8, !dbg !5806
  %and = and i64 %2, -3, !dbg !5806
  store i64 %and, ptr %flags, align 8, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !5807
  ret i32 1, !dbg !5808
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_remount(ptr noundef %sb, ptr noundef %flags, ptr noundef %data) #0 align 16 !dbg !5809 {
entry:
  %sb.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %fsi = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5811, metadata !DIExpression()), !dbg !5817
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5812, metadata !DIExpression()), !dbg !5818
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5813, metadata !DIExpression()), !dbg !5819
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5820
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5814, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5815, metadata !DIExpression()), !dbg !5823
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5824
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5825
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5825
  store ptr %1, ptr %fsi, align 8, !dbg !5823
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !5826
  %call = call i32 @sync_filesystem(ptr noundef %2) #17, !dbg !5827
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5828
  %4 = load ptr, ptr %fsi, align 8, !dbg !5829
  %mount_opts = getelementptr inbounds %struct.tracefs_fs_info, ptr %4, i32 0, i32 0, !dbg !5830
  %call1 = call i32 @tracefs_parse_options(ptr noundef %3, ptr noundef %mount_opts) #17, !dbg !5831
  store i32 %call1, ptr %err, align 4, !dbg !5832
  %5 = load i32, ptr %err, align 4, !dbg !5833
  %tobool = icmp ne i32 %5, 0, !dbg !5833
  br i1 %tobool, label %if.then, label %if.end, !dbg !5835

if.then:                                          ; preds = %entry
  br label %fail, !dbg !5836

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !5837
  %call2 = call i32 @tracefs_apply_options(ptr noundef %6, i1 noundef zeroext true) #17, !dbg !5838
  br label %fail, !dbg !5838

fail:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5816), !dbg !5839
  %7 = load i32, ptr %err, align 4, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !5841
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5841
  ret i32 %7, !dbg !5842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_show_options(ptr noundef %m, ptr noundef %root) #0 align 16 !dbg !5843 {
entry:
  %m.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral5 = alloca %struct.kgid_t, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5845, metadata !DIExpression()), !dbg !5849
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5846, metadata !DIExpression()), !dbg !5850
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !5847, metadata !DIExpression()), !dbg !5852
  %0 = load ptr, ptr %root.addr, align 8, !dbg !5853
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5854
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5854
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5855
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !5855
  store ptr %2, ptr %fsi, align 8, !dbg !5852
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !5856
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !5848, metadata !DIExpression()), !dbg !5857
  %3 = load ptr, ptr %fsi, align 8, !dbg !5858
  %mount_opts = getelementptr inbounds %struct.tracefs_fs_info, ptr %3, i32 0, i32 0, !dbg !5859
  store ptr %mount_opts, ptr %opts, align 8, !dbg !5857
  %4 = load ptr, ptr %opts, align 8, !dbg !5860
  %uid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %4, i32 0, i32 0, !dbg !5862
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5863
  store i32 0, ptr %val, align 4, !dbg !5863
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5864
  %5 = load i32, ptr %coerce.dive, align 4, !dbg !5864
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5864
  %6 = load i32, ptr %coerce.dive1, align 4, !dbg !5864
  %call = call zeroext i1 @uid_eq(i32 %5, i32 %6) #17, !dbg !5864
  br i1 %call, label %if.end, label %if.then, !dbg !5865

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %m.addr, align 8, !dbg !5866
  %8 = load ptr, ptr %opts, align 8, !dbg !5867
  %uid2 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %8, i32 0, i32 0, !dbg !5868
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid2, i32 0, i32 0, !dbg !5869
  %9 = load i32, ptr %coerce.dive3, align 4, !dbg !5869
  %call4 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %9) #17, !dbg !5869
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef @.str.8, i32 noundef %call4) #17, !dbg !5870
  br label %if.end, !dbg !5870

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %opts, align 8, !dbg !5871
  %gid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %10, i32 0, i32 1, !dbg !5873
  %val6 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral5, i32 0, i32 0, !dbg !5874
  store i32 0, ptr %val6, align 4, !dbg !5874
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5875
  %11 = load i32, ptr %coerce.dive7, align 4, !dbg !5875
  %coerce.dive8 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral5, i32 0, i32 0, !dbg !5875
  %12 = load i32, ptr %coerce.dive8, align 4, !dbg !5875
  %call9 = call zeroext i1 @gid_eq(i32 %11, i32 %12) #17, !dbg !5875
  br i1 %call9, label %if.end14, label %if.then10, !dbg !5876

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %m.addr, align 8, !dbg !5877
  %14 = load ptr, ptr %opts, align 8, !dbg !5878
  %gid11 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %14, i32 0, i32 1, !dbg !5879
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %gid11, i32 0, i32 0, !dbg !5880
  %15 = load i32, ptr %coerce.dive12, align 4, !dbg !5880
  %call13 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %15) #17, !dbg !5880
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef @.str.9, i32 noundef %call13) #17, !dbg !5881
  br label %if.end14, !dbg !5881

if.end14:                                         ; preds = %if.then10, %if.end
  %16 = load ptr, ptr %opts, align 8, !dbg !5882
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %16, i32 0, i32 2, !dbg !5884
  %17 = load i16, ptr %mode, align 4, !dbg !5884
  %conv = zext i16 %17 to i32, !dbg !5882
  %cmp = icmp ne i32 %conv, 448, !dbg !5885
  br i1 %cmp, label %if.then16, label %if.end19, !dbg !5886

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %m.addr, align 8, !dbg !5887
  %19 = load ptr, ptr %opts, align 8, !dbg !5888
  %mode17 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %19, i32 0, i32 2, !dbg !5889
  %20 = load i16, ptr %mode17, align 4, !dbg !5889
  %conv18 = zext i16 %20 to i32, !dbg !5888
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef @.str.10, i32 noundef %conv18) #17, !dbg !5890
  br label %if.end19, !dbg !5890

if.end19:                                         ; preds = %if.then16, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !5891
  ret i32 0, !dbg !5892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_inode_sb(ptr noundef %sb, ptr noundef %cache, i32 noundef %gfp) #5 align 16 !dbg !5893 {
entry:
  %sb.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5897, metadata !DIExpression()), !dbg !5900
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !5898, metadata !DIExpression()), !dbg !5901
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5899, metadata !DIExpression()), !dbg !5902
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !5903
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !5904
  %s_inode_lru = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 50, !dbg !5905
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5906
  %call = call noalias align 8 ptr @kmem_cache_alloc_lru(ptr noundef %0, ptr noundef %s_inode_lru, i32 noundef %2) #17, !dbg !5907
  ret ptr %call, !dbg !5908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5909 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #12 align 16 !dbg !5914 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5921
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5922
  ret ptr %1, !dbg !5923
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_rcu(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5924 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5929, metadata !DIExpression()), !dbg !5931
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5930, metadata !DIExpression()), !dbg !5932
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5933
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5934
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5935
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5936
  %3 = load ptr, ptr %next, align 8, !dbg !5936
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !5937
  ret void, !dbg !5938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #12 align 16 !dbg !5939 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5943, metadata !DIExpression()), !dbg !5949
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5944, metadata !DIExpression()), !dbg !5950
  br label %do.body, !dbg !5951

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5945, metadata !DIExpression()), !dbg !5952
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5948, metadata !DIExpression()), !dbg !5952
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5952
  %conv = zext i1 %cmp to i32, !dbg !5952
  store i32 1, ptr %tmp, align 4, !dbg !5952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5953
  %0 = load i32, ptr %tmp, align 4, !dbg !5952
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5953
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5953
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5953
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5953
  br label %do.end, !dbg !5953

do.end:                                           ; preds = %do.body
  ret void, !dbg !5954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local noalias ptr @kmem_cache_alloc_lru(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5959 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5963, metadata !DIExpression()), !dbg !5968
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5964, metadata !DIExpression()), !dbg !5969
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5965, metadata !DIExpression()), !dbg !5970
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5971
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5973
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5974
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !5975
  br i1 %call, label %if.end, label %if.then, !dbg !5976

if.then:                                          ; preds = %entry
  br label %return, !dbg !5977

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !5978
  %4 = load ptr, ptr %new.addr, align 8, !dbg !5979
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !5980
  store ptr %3, ptr %next1, align 8, !dbg !5981
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !5982
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5983
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !5984
  store ptr %5, ptr %prev2, align 8, !dbg !5985
  br label %do.body, !dbg !5986

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !5966, metadata !DIExpression()), !dbg !5987
  %7 = load ptr, ptr %new.addr, align 8, !dbg !5987
  %8 = ptrtoint ptr %7 to i64, !dbg !5987
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !5987
  br i1 false, label %land.lhs.true, label %if.else, !dbg !5988

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !5988
  %cmp = icmp eq i64 %9, 0, !dbg !5988
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5987

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !5988

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !5990

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5992

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5992

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5990

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !5994
  %11 = inttoptr i64 %10 to ptr, !dbg !5994
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !5994
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !5994
  store volatile ptr %11, ptr %next7, align 8, !dbg !5994
  br label %do.cond8, !dbg !5994

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !5994

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !5990

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5990

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !5990

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !5988

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !5996

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !5998

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5998

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5996

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !6000

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !6002

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6002

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6000, !srcloc !6004
  br label %do.body20, !dbg !6000

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !6005

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6007

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6007

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6005

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !6009
  %14 = inttoptr i64 %13 to ptr, !dbg !6009
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !6009
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !6009
  store volatile ptr %14, ptr %next25, align 8, !dbg !6009
  br label %do.cond26, !dbg !6009

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !6009

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !6005

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6005

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !6000

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !6000

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5996

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5996

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5986
  br label %do.end36, !dbg !5987

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !6011
  %17 = load ptr, ptr %next.addr, align 8, !dbg !6012
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !6013
  store ptr %16, ptr %prev37, align 8, !dbg !6014
  br label %return, !dbg !6015

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !6015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6016 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6021, metadata !DIExpression()), !dbg !6024
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6022, metadata !DIExpression()), !dbg !6025
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6023, metadata !DIExpression()), !dbg !6026
  ret i1 true, !dbg !6027
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6028 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #5 align 16 !dbg !6031 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6037
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6038
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6039
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6040
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6043 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6045, metadata !DIExpression()), !dbg !6046
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6047
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6049
  br i1 %call, label %if.end, label %if.then, !dbg !6050

if.then:                                          ; preds = %entry
  br label %return, !dbg !6051

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6052
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6053
  %2 = load ptr, ptr %prev, align 8, !dbg !6053
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6054
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6055
  %4 = load ptr, ptr %next, align 8, !dbg !6055
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6056
  br label %return, !dbg !6057

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6058 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  ret i1 true, !dbg !6064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6065 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6067, metadata !DIExpression()), !dbg !6069
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6068, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6071
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6072
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6073
  store ptr %0, ptr %prev1, align 8, !dbg !6074
  br label %do.body, !dbg !6075

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6076

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6078

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6076

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6080
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6080
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6080
  store volatile ptr %2, ptr %next4, align 8, !dbg !6080
  br label %do.end5, !dbg !6080

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6076

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6083 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local i32 @sync_filesystem(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !6087 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6091, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6092, metadata !DIExpression()), !dbg !6094
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !6095
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6095
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6095
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !6096
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6096
  %call4 = call i32 @__kuid_val(i32 %1) #17, !dbg !6096
  %cmp = icmp eq i32 %call, %call4, !dbg !6097
  ret i1 %cmp, !dbg !6098
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6099 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !6102 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6106, metadata !DIExpression()), !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6107, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6108, metadata !DIExpression()), !dbg !6112
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6113
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6114
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6114
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #17, !dbg !6114
  store i32 %call, ptr %uid, align 4, !dbg !6112
  %2 = load i32, ptr %uid, align 4, !dbg !6115
  %cmp = icmp eq i32 %2, -1, !dbg !6117
  br i1 %cmp, label %if.then, label %if.end, !dbg !6118

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6119
  store i32 %3, ptr %uid, align 4, !dbg !6120
  br label %if.end, !dbg !6121

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !6122
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6123
  ret i32 %4, !dbg !6124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !6125 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6129, metadata !DIExpression()), !dbg !6131
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6130, metadata !DIExpression()), !dbg !6132
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !6133
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6133
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6133
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !6134
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6134
  %call4 = call i32 @__kgid_val(i32 %1) #17, !dbg !6134
  %cmp = icmp eq i32 %call, %call4, !dbg !6135
  ret i1 %cmp, !dbg !6136
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #5 align 16 !dbg !6137 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6141, metadata !DIExpression()), !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6142, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6143, metadata !DIExpression()), !dbg !6147
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6148
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6149
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6149
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #17, !dbg !6149
  store i32 %call, ptr %gid, align 4, !dbg !6147
  %2 = load i32, ptr %gid, align 4, !dbg !6150
  %cmp = icmp eq i32 %2, -1, !dbg !6152
  br i1 %cmp, label %if.then, label %if.end, !dbg !6153

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6154
  store i32 %3, ptr %gid, align 4, !dbg !6155
  br label %if.end, !dbg !6156

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6157
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6158
  ret i32 %4, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !6160 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6162, metadata !DIExpression()), !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6163, metadata !DIExpression()), !dbg !6165
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6166
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6166
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6166
  ret i32 %call, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #5 align 16 !dbg !6168 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6170, metadata !DIExpression()), !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6171, metadata !DIExpression()), !dbg !6173
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6174
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6174
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6174
  ret i32 %call, !dbg !6175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_d_revalidate(ptr noundef %dentry, i32 noundef %flags) #0 align 16 !dbg !6176 {
entry:
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ei = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6178, metadata !DIExpression()), !dbg !6224
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6179, metadata !DIExpression()), !dbg !6225
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #16, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !6180, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6228
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !6229
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !6229
  store ptr %1, ptr %ei, align 8, !dbg !6227
  %2 = load ptr, ptr %ei, align 8, !dbg !6230
  %tobool = icmp ne ptr %2, null, !dbg !6230
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6231

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ei, align 8, !dbg !6232
  %is_freed = getelementptr inbounds %struct.eventfs_inode, ptr %3, i32 0, i32 8, !dbg !6233
  %bf.load = load i32, ptr %is_freed, align 8, !dbg !6233
  %bf.clear = and i32 %bf.load, 1, !dbg !6233
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !6231
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6234
  %lnot = xor i1 %4, true, !dbg !6235
  %lnot.ext = zext i1 %lnot to i32, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #16, !dbg !6236
  ret i32 %lnot.ext, !dbg !6237
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tracefs_d_release(ptr noundef %dentry) #0 align 16 !dbg !6238 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6242
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !6244
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !6244
  %tobool = icmp ne ptr %1, null, !dbg !6242
  br i1 %tobool, label %if.then, label %if.end, !dbg !6245

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6246
  call void @eventfs_d_release(ptr noundef %2) #17, !dbg !6247
  br label %if.end, !dbg !6247

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6248
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6249 dso_local void @eventfs_d_release(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #12 align 16 !dbg !6250 {
entry:
  call void @__rcu_read_lock() #17, !dbg !6252
  br label %do.body, !dbg !6253

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6254

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6256

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6257

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6259
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6260 dso_local void @eventfs_remount(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !6263 {
entry:
  br label %do.body, !dbg !6264

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6265

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !6267
  br label %do.body1, !dbg !6268

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6269

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6271
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6272 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6273 dso_local void @__rcu_read_unlock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6274 dso_local void @down_write(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6278 dso_local void @up_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #0 align 16 !dbg !6279 {
entry:
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6281, metadata !DIExpression()), !dbg !6284
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6282, metadata !DIExpression()), !dbg !6285
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6287
  call void @set_tracefs_inode_owner(ptr noundef %0) #17, !dbg !6288
  %1 = load ptr, ptr %idmap.addr, align 8, !dbg !6289
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6290
  %3 = load i32, ptr %mask.addr, align 4, !dbg !6291
  %call = call i32 @generic_permission(ptr noundef %1, ptr noundef %2, i32 noundef %3) #17, !dbg !6292
  ret i32 %call, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_setattr(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %attr) #0 align 16 !dbg !6294 {
entry:
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ia_valid = alloca i32, align 4
  %inode = alloca ptr, align 8
  %ti = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6296, metadata !DIExpression()), !dbg !6302
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6297, metadata !DIExpression()), !dbg !6303
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6298, metadata !DIExpression()), !dbg !6304
  call void @llvm.lifetime.start.p0(i64 4, ptr %ia_valid) #16, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %ia_valid, metadata !6299, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6307
  %ia_valid1 = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !6308
  %1 = load i32, ptr %ia_valid1, align 8, !dbg !6308
  store i32 %1, ptr %ia_valid, align 4, !dbg !6306
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6300, metadata !DIExpression()), !dbg !6310
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6311
  %call = call ptr @d_inode(ptr noundef %2) #17, !dbg !6312
  store ptr %call, ptr %inode, align 8, !dbg !6310
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6301, metadata !DIExpression()), !dbg !6314
  %3 = load ptr, ptr %inode, align 8, !dbg !6315
  %call2 = call ptr @get_tracefs(ptr noundef %3) #17, !dbg !6316
  store ptr %call2, ptr %ti, align 8, !dbg !6314
  %4 = load i32, ptr %ia_valid, align 4, !dbg !6317
  %and = and i32 %4, 2, !dbg !6319
  %tobool = icmp ne i32 %and, 0, !dbg !6319
  br i1 %tobool, label %if.then, label %if.end, !dbg !6320

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ti, align 8, !dbg !6321
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %5, i32 0, i32 2, !dbg !6322
  %6 = load i64, ptr %flags, align 8, !dbg !6323
  %or = or i64 %6, 8, !dbg !6323
  store i64 %or, ptr %flags, align 8, !dbg !6323
  br label %if.end, !dbg !6321

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ia_valid, align 4, !dbg !6324
  %and3 = and i32 %7, 4, !dbg !6326
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6326
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !6327

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %ti, align 8, !dbg !6328
  %flags6 = getelementptr inbounds %struct.tracefs_inode, ptr %8, i32 0, i32 2, !dbg !6329
  %9 = load i64, ptr %flags6, align 8, !dbg !6330
  %or7 = or i64 %9, 4, !dbg !6330
  store i64 %or7, ptr %flags6, align 8, !dbg !6330
  br label %if.end8, !dbg !6328

if.end8:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %idmap.addr, align 8, !dbg !6331
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !6332
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !6333
  %call9 = call i32 @simple_setattr(ptr noundef %10, ptr noundef %11, ptr noundef %12) #17, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 4, ptr %ia_valid) #16, !dbg !6335
  ret i32 %call9, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_getattr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 16 !dbg !6337 {
entry:
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6339, metadata !DIExpression()), !dbg !6345
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6340, metadata !DIExpression()), !dbg !6346
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !6341, metadata !DIExpression()), !dbg !6347
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !6342, metadata !DIExpression()), !dbg !6348
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6343, metadata !DIExpression()), !dbg !6349
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6350
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6344, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6352
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6353
  %1 = load ptr, ptr %dentry, align 8, !dbg !6353
  %call = call ptr @d_backing_inode(ptr noundef %1) #17, !dbg !6354
  store ptr %call, ptr %inode, align 8, !dbg !6351
  %2 = load ptr, ptr %inode, align 8, !dbg !6355
  call void @set_tracefs_inode_owner(ptr noundef %2) #17, !dbg !6356
  %3 = load ptr, ptr %idmap.addr, align 8, !dbg !6357
  %4 = load i32, ptr %request_mask.addr, align 4, !dbg !6358
  %5 = load ptr, ptr %inode, align 8, !dbg !6359
  %6 = load ptr, ptr %stat.addr, align 8, !dbg !6360
  call void @generic_fillattr(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #17, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6362
  ret i32 0, !dbg !6363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_tracefs_inode_owner(ptr noundef %inode) #0 align 16 !dbg !6364 {
entry:
  %inode.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %root_inode = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %rti = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6366, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6367, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6377
  %call = call ptr @get_tracefs(ptr noundef %0) #17, !dbg !6378
  store ptr %call, ptr %ti, align 8, !dbg !6376
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_inode) #16, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %root_inode, metadata !6368, metadata !DIExpression()), !dbg !6380
  %1 = load ptr, ptr %ti, align 8, !dbg !6381
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %1, i32 0, i32 3, !dbg !6382
  %2 = load ptr, ptr %private, align 8, !dbg !6382
  store ptr %2, ptr %root_inode, align 8, !dbg !6380
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6369, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6370, metadata !DIExpression()), !dbg !6386
  %3 = load ptr, ptr %root_inode, align 8, !dbg !6387
  %i_uid = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2, !dbg !6388
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %i_uid, i64 4, i1 false), !dbg !6388
  %4 = load ptr, ptr %root_inode, align 8, !dbg !6389
  %i_gid = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4, !dbg !6390
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 8 %i_gid, i64 4, i1 false), !dbg !6390
  %5 = load ptr, ptr %root_inode, align 8, !dbg !6391
  %6 = load ptr, ptr %root_inode, align 8, !dbg !6392
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9, !dbg !6393
  %7 = load ptr, ptr %i_sb, align 8, !dbg !6393
  %s_root = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 13, !dbg !6394
  %8 = load ptr, ptr %s_root, align 8, !dbg !6394
  %call1 = call ptr @d_inode(ptr noundef %8) #17, !dbg !6395
  %cmp = icmp ne ptr %5, %call1, !dbg !6396
  br i1 %cmp, label %if.then, label %if.end14, !dbg !6397

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %rti) #16, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %rti, metadata !6371, metadata !DIExpression()), !dbg !6399
  %9 = load ptr, ptr %root_inode, align 8, !dbg !6400
  %call2 = call ptr @get_tracefs(ptr noundef %9) #17, !dbg !6401
  store ptr %call2, ptr %rti, align 8, !dbg !6402
  %10 = load ptr, ptr %root_inode, align 8, !dbg !6403
  %i_sb3 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9, !dbg !6404
  %11 = load ptr, ptr %i_sb3, align 8, !dbg !6404
  %s_root4 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 13, !dbg !6405
  %12 = load ptr, ptr %s_root4, align 8, !dbg !6405
  %call5 = call ptr @d_inode(ptr noundef %12) #17, !dbg !6406
  store ptr %call5, ptr %root_inode, align 8, !dbg !6407
  %13 = load ptr, ptr %rti, align 8, !dbg !6408
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %13, i32 0, i32 2, !dbg !6410
  %14 = load i64, ptr %flags, align 8, !dbg !6410
  %and = and i64 %14, 8, !dbg !6411
  %tobool = icmp ne i64 %and, 0, !dbg !6411
  br i1 %tobool, label %if.end, label %if.then6, !dbg !6412

if.then6:                                         ; preds = %if.then
  %15 = load ptr, ptr %root_inode, align 8, !dbg !6413
  %i_uid7 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 2, !dbg !6414
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %i_uid7, i64 4, i1 false), !dbg !6414
  br label %if.end, !dbg !6415

if.end:                                           ; preds = %if.then6, %if.then
  %16 = load ptr, ptr %rti, align 8, !dbg !6416
  %flags8 = getelementptr inbounds %struct.tracefs_inode, ptr %16, i32 0, i32 2, !dbg !6418
  %17 = load i64, ptr %flags8, align 8, !dbg !6418
  %and9 = and i64 %17, 4, !dbg !6419
  %tobool10 = icmp ne i64 %and9, 0, !dbg !6419
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !6420

if.then11:                                        ; preds = %if.end
  %18 = load ptr, ptr %root_inode, align 8, !dbg !6421
  %i_gid12 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 4, !dbg !6422
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 8 %i_gid12, i64 4, i1 false), !dbg !6422
  br label %if.end13, !dbg !6423

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rti) #16, !dbg !6424
  br label %if.end14, !dbg !6425

if.end14:                                         ; preds = %if.end13, %entry
  %19 = load ptr, ptr %ti, align 8, !dbg !6426
  %flags15 = getelementptr inbounds %struct.tracefs_inode, ptr %19, i32 0, i32 2, !dbg !6428
  %20 = load i64, ptr %flags15, align 8, !dbg !6428
  %and16 = and i64 %20, 8, !dbg !6429
  %tobool17 = icmp ne i64 %and16, 0, !dbg !6429
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !6430

if.then18:                                        ; preds = %if.end14
  %21 = load ptr, ptr %inode.addr, align 8, !dbg !6431
  %i_uid19 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 2, !dbg !6432
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid19, ptr align 4 %uid, i64 4, i1 false), !dbg !6433
  br label %if.end20, !dbg !6431

if.end20:                                         ; preds = %if.then18, %if.end14
  %22 = load ptr, ptr %ti, align 8, !dbg !6434
  %flags21 = getelementptr inbounds %struct.tracefs_inode, ptr %22, i32 0, i32 2, !dbg !6436
  %23 = load i64, ptr %flags21, align 8, !dbg !6436
  %and22 = and i64 %23, 4, !dbg !6437
  %tobool23 = icmp ne i64 %and22, 0, !dbg !6437
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !6438

if.then24:                                        ; preds = %if.end20
  %24 = load ptr, ptr %inode.addr, align 8, !dbg !6439
  %i_gid25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 4, !dbg !6440
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid25, ptr align 4 %gid, i64 4, i1 false), !dbg !6441
  br label %if.end26, !dbg !6439

if.end26:                                         ; preds = %if.then24, %if.end20
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_inode) #16, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !6442
  ret void, !dbg !6442
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6443 dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6444 dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_backing_inode(ptr noundef %upper) #5 align 16 !dbg !6445 {
entry:
  %upper.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %upper, ptr %upper.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %upper.addr, metadata !6447, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6450
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6448, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %upper.addr, align 8, !dbg !6452
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6453
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6453
  store ptr %1, ptr %inode, align 8, !dbg !6451
  %2 = load ptr, ptr %inode, align 8, !dbg !6454
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6455
  ret ptr %2, !dbg !6456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6457 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @default_read_file(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6460 {
entry:
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6462, metadata !DIExpression()), !dbg !6466
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6463, metadata !DIExpression()), !dbg !6467
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6464, metadata !DIExpression()), !dbg !6468
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6465, metadata !DIExpression()), !dbg !6469
  ret i64 0, !dbg !6470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @default_write_file(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6471 {
entry:
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6473, metadata !DIExpression()), !dbg !6477
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6474, metadata !DIExpression()), !dbg !6478
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6475, metadata !DIExpression()), !dbg !6479
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6476, metadata !DIExpression()), !dbg !6480
  %0 = load i64, ptr %count.addr, align 8, !dbg !6481
  ret i64 %0, !dbg !6482
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_inode_child(ptr noundef %parent, ptr noundef %dentry, i8 noundef zeroext %type) #5 align 16 !dbg !6483 {
entry:
  %parent.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6488, metadata !DIExpression()), !dbg !6491
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6489, metadata !DIExpression()), !dbg !6492
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6490, metadata !DIExpression()), !dbg !6493
  %call = call zeroext i1 @audit_dummy_context() #17, !dbg !6494
  %lnot = xor i1 %call, true, !dbg !6494
  %lnot1 = xor i1 %lnot, true, !dbg !6494
  %lnot2 = xor i1 %lnot1, true, !dbg !6494
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6494
  %conv = sext i32 %lnot.ext to i64, !dbg !6494
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6494
  %tobool = icmp ne i64 %expval, 0, !dbg !6494
  br i1 %tobool, label %if.then, label %if.end, !dbg !6496

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !6497
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6498
  %2 = load i8, ptr %type.addr, align 1, !dbg !6499
  call void @__audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17, !dbg !6500
  br label %if.end, !dbg !6500

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_dirent(ptr noundef %dir, ptr noundef %dentry, i32 noundef %mask) #5 align 16 !dbg !6502 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6506, metadata !DIExpression()), !dbg !6509
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6507, metadata !DIExpression()), !dbg !6510
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6508, metadata !DIExpression()), !dbg !6511
  %0 = load i32, ptr %mask.addr, align 4, !dbg !6512
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6513
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !6514
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6515
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !6516
  %call = call i32 @fsnotify_name(i32 noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef %2, ptr noundef %d_name, i32 noundef 0) #17, !dbg !6517
  ret void, !dbg !6518
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @audit_dummy_context() #5 align 16 !dbg !6519 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6522
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6521, metadata !DIExpression()), !dbg !6523
  %call = call ptr @audit_context() #17, !dbg !6524
  store ptr %call, ptr %p, align 8, !dbg !6523
  %0 = load ptr, ptr %p, align 8, !dbg !6525
  %tobool = icmp ne ptr %0, null, !dbg !6525
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6526

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6527
  %2 = load i32, ptr %1, align 4, !dbg !6528
  %tobool1 = icmp ne i32 %2, 0, !dbg !6526
  br label %lor.end, !dbg !6526

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6529
  ret i1 %3, !dbg !6530
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6531 dso_local void @__audit_inode_child(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #5 align 16 !dbg !6532 {
entry:
  %call = call ptr @get_current() #17, !dbg !6535
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !6536
  %0 = load ptr, ptr %audit_context, align 32, !dbg !6536
  ret ptr %0, !dbg !6537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #12 align 16 !dbg !6538 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6543, metadata !DIExpression()), !dbg !6549
  br label %do.body, !dbg !6549

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6545, metadata !DIExpression()), !dbg !6550
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6550
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6549
  br label %do.cond, !dbg !6550

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6550

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6547, metadata !DIExpression()), !dbg !6551
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #22, !dbg !6551, !srcloc !6552
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6551
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6551
  %3 = inttoptr i64 %2 to ptr, !dbg !6551
  store ptr %3, ptr %tmp, align 8, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !6549
  %4 = load ptr, ptr %tmp, align 8, !dbg !6551
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6549
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6549
  store ptr %5, ptr %tmp1, align 8, !dbg !6549
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6553
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6549
  ret ptr %6, !dbg !6554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_name(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #5 align 16 !dbg !6555 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6559, metadata !DIExpression()), !dbg !6565
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6560, metadata !DIExpression()), !dbg !6566
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !6561, metadata !DIExpression()), !dbg !6567
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6562, metadata !DIExpression()), !dbg !6568
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6563, metadata !DIExpression()), !dbg !6569
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6564, metadata !DIExpression()), !dbg !6570
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6571
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6573
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6573
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !6574
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !6575
  %cmp = icmp eq i64 %call, 0, !dbg !6576
  br i1 %cmp, label %if.then, label %if.end, !dbg !6577

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6579
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6580
  %4 = load i32, ptr %data_type.addr, align 4, !dbg !6581
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !6582
  %6 = load ptr, ptr %name.addr, align 8, !dbg !6583
  %7 = load i32, ptr %cookie.addr, align 4, !dbg !6584
  %call1 = call i32 @fsnotify(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef %7) #17, !dbg !6585
  store i32 %call1, ptr %retval, align 4, !dbg !6586
  br label %return, !dbg !6586

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6587
  ret i32 %8, !dbg !6587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #12 align 16 !dbg !6588 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6597
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !6598
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6599
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !6600
  ret i64 %call, !dbg !6601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6602 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !6605 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6613, metadata !DIExpression()), !dbg !6615
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6614, metadata !DIExpression()), !dbg !6616
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6617
  %1 = load i64, ptr %size.addr, align 8, !dbg !6618
  %conv = trunc i64 %1 to i32, !dbg !6618
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6619
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6620
  %3 = load i64, ptr %size.addr, align 8, !dbg !6620
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6620
  ret void, !dbg !6621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #12 align 16 !dbg !6622 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6624, metadata !DIExpression()), !dbg !6625
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6626
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !6627
  ret i64 %call, !dbg !6628
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6629 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6635, metadata !DIExpression()), !dbg !6637
  ret i1 true, !dbg !6638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6639 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6644, metadata !DIExpression()), !dbg !6647
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6645, metadata !DIExpression()), !dbg !6648
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6646, metadata !DIExpression()), !dbg !6649
  ret void, !dbg !6650
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #12 align 16 !dbg !6651 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6658, metadata !DIExpression()), !dbg !6659
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6660
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !6661
  ret i64 %call, !dbg !6662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #12 align 16 !dbg !6663 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6666, metadata !DIExpression()), !dbg !6667
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6668
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6668
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6668
  ret i64 %1, !dbg !6669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6670 dso_local void @inc_nlink(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_mkdir(ptr noundef %dir, ptr noundef %dentry) #5 align 16 !dbg !6671 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6674, metadata !DIExpression()), !dbg !6676
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6677
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6678
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #17, !dbg !6679
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !6680
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6681
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 1073742080) #17, !dbg !6682
  ret void, !dbg !6683
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_syscall_mkdir(ptr noundef %idmap, ptr noundef %inode, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 16 !dbg !6684 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %ti = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !6686, metadata !DIExpression()), !dbg !6693
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6687, metadata !DIExpression()), !dbg !6694
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6688, metadata !DIExpression()), !dbg !6695
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6689, metadata !DIExpression()), !dbg !6696
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !6697
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6690, metadata !DIExpression()), !dbg !6698
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !6699
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6691, metadata !DIExpression()), !dbg !6700
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6701
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6692, metadata !DIExpression()), !dbg !6702
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6703
  %call = call ptr @get_dname(ptr noundef %0) #17, !dbg !6704
  store ptr %call, ptr %name, align 8, !dbg !6705
  %1 = load ptr, ptr %name, align 8, !dbg !6706
  %tobool = icmp ne ptr %1, null, !dbg !6706
  br i1 %tobool, label %if.end, label %if.then, !dbg !6708

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6709

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6710
  %call1 = call ptr @get_tracefs(ptr noundef %2) #17, !dbg !6711
  store ptr %call1, ptr %ti, align 8, !dbg !6712
  %3 = load ptr, ptr %ti, align 8, !dbg !6713
  %flags = getelementptr inbounds %struct.tracefs_inode, ptr %3, i32 0, i32 2, !dbg !6714
  %4 = load i64, ptr %flags, align 8, !dbg !6715
  %or = or i64 %4, 16, !dbg !6715
  store i64 %or, ptr %flags, align 8, !dbg !6715
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !6716
  %6 = load ptr, ptr %ti, align 8, !dbg !6717
  %private = getelementptr inbounds %struct.tracefs_inode, ptr %6, i32 0, i32 3, !dbg !6718
  store ptr %5, ptr %private, align 8, !dbg !6719
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !6720
  call void @inode_unlock(ptr noundef %7) #17, !dbg !6721
  %8 = load ptr, ptr @tracefs_ops, align 8, !dbg !6722
  %9 = load ptr, ptr %name, align 8, !dbg !6723
  %call2 = call i32 %8(ptr noundef %9) #17, !dbg !6724
  store i32 %call2, ptr %ret, align 4, !dbg !6725
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !6726
  call void @inode_lock(ptr noundef %10) #17, !dbg !6727
  %11 = load ptr, ptr %name, align 8, !dbg !6728
  call void @kfree(ptr noundef %11) #17, !dbg !6729
  %12 = load i32, ptr %ret, align 4, !dbg !6730
  store i32 %12, ptr %retval, align 4, !dbg !6731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6731

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !6732
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !6732
  %13 = load i32, ptr %retval, align 4, !dbg !6732
  ret i32 %13, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tracefs_syscall_rmdir(ptr noundef %inode, ptr noundef %dentry) #0 align 16 !dbg !6733 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6735, metadata !DIExpression()), !dbg !6739
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6736, metadata !DIExpression()), !dbg !6740
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !6741
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6737, metadata !DIExpression()), !dbg !6742
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6738, metadata !DIExpression()), !dbg !6744
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6745
  %call = call ptr @get_dname(ptr noundef %0) #17, !dbg !6746
  store ptr %call, ptr %name, align 8, !dbg !6747
  %1 = load ptr, ptr %name, align 8, !dbg !6748
  %tobool = icmp ne ptr %1, null, !dbg !6748
  br i1 %tobool, label %if.end, label %if.then, !dbg !6750

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6751

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6752
  call void @inode_unlock(ptr noundef %2) #17, !dbg !6753
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6754
  %call1 = call ptr @d_inode(ptr noundef %3) #17, !dbg !6755
  call void @inode_unlock(ptr noundef %call1) #17, !dbg !6756
  %4 = load ptr, ptr getelementptr inbounds (%struct.tracefs_dir_ops, ptr @tracefs_ops, i32 0, i32 1), align 8, !dbg !6757
  %5 = load ptr, ptr %name, align 8, !dbg !6758
  %call2 = call i32 %4(ptr noundef %5) #17, !dbg !6759
  store i32 %call2, ptr %ret, align 4, !dbg !6760
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6761
  call void @inode_lock_nested(ptr noundef %6, i32 noundef 1) #17, !dbg !6762
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !6763
  %call3 = call ptr @d_inode(ptr noundef %7) #17, !dbg !6764
  call void @inode_lock(ptr noundef %call3) #17, !dbg !6765
  %8 = load ptr, ptr %name, align 8, !dbg !6766
  call void @kfree(ptr noundef %8) #17, !dbg !6767
  %9 = load i32, ptr %ret, align 4, !dbg !6768
  store i32 %9, ptr %retval, align 4, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !6770
  %10 = load i32, ptr %retval, align 4, !dbg !6770
  ret i32 %10, !dbg !6770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_dname(ptr noundef %dentry) #0 align 16 !dbg !6771 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %dname = alloca ptr, align 8
  %name = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6775, metadata !DIExpression()), !dbg !6779
  call void @llvm.lifetime.start.p0(i64 8, ptr %dname) #16, !dbg !6780
  call void @llvm.dbg.declare(metadata ptr %dname, metadata !6776, metadata !DIExpression()), !dbg !6781
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6777, metadata !DIExpression()), !dbg !6783
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6778, metadata !DIExpression()), !dbg !6785
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6786
  %d_name = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, !dbg !6787
  %1 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 0, !dbg !6788
  %len1 = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 1, !dbg !6788
  %2 = load i32, ptr %len1, align 4, !dbg !6788
  store i32 %2, ptr %len, align 4, !dbg !6785
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6789
  %d_name2 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !6790
  %name3 = getelementptr inbounds %struct.qstr, ptr %d_name2, i32 0, i32 1, !dbg !6791
  %4 = load ptr, ptr %name3, align 8, !dbg !6791
  store ptr %4, ptr %dname, align 8, !dbg !6792
  %5 = load i32, ptr %len, align 4, !dbg !6793
  %add = add i32 %5, 1, !dbg !6794
  %conv = sext i32 %add to i64, !dbg !6793
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #19, !dbg !6795
  store ptr %call, ptr %name, align 8, !dbg !6796
  %6 = load ptr, ptr %name, align 8, !dbg !6797
  %tobool = icmp ne ptr %6, null, !dbg !6797
  br i1 %tobool, label %if.end, label %if.then, !dbg !6799

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6800

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %name, align 8, !dbg !6801
  %8 = load ptr, ptr %dname, align 8, !dbg !6802
  %9 = load i32, ptr %len, align 4, !dbg !6803
  %conv4 = sext i32 %9 to i64, !dbg !6803
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %conv4, i1 false), !dbg !6804
  %10 = load ptr, ptr %name, align 8, !dbg !6805
  %11 = load i32, ptr %len, align 4, !dbg !6806
  %idxprom = sext i32 %11 to i64, !dbg !6805
  %arrayidx = getelementptr i8, ptr %10, i64 %idxprom, !dbg !6805
  store i8 0, ptr %arrayidx, align 1, !dbg !6807
  %12 = load ptr, ptr %name, align 8, !dbg !6808
  store ptr %12, ptr %retval, align 8, !dbg !6809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6809

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !6810
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !6810
  call void @llvm.lifetime.end.p0(i64 8, ptr %dname) #16, !dbg !6810
  %13 = load ptr, ptr %retval, align 8, !dbg !6810
  ret ptr %13, !dbg !6810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock_nested(ptr noundef %inode, i32 noundef %subclass) #5 align 16 !dbg !6811 {
entry:
  %inode.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6815, metadata !DIExpression()), !dbg !6817
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !6816, metadata !DIExpression()), !dbg !6818
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6819
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !6819
  call void @down_write(ptr noundef %i_rwsem) #17, !dbg !6819
  ret void, !dbg !6820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6821 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_once(ptr noundef %foo) #0 align 16 !dbg !6824 {
entry:
  %foo.addr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %__val = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %foo.addr, metadata !6826, metadata !DIExpression()), !dbg !6831
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !6827, metadata !DIExpression()), !dbg !6833
  %0 = load ptr, ptr %foo.addr, align 8, !dbg !6834
  store ptr %0, ptr %ti, align 8, !dbg !6833
  %1 = load ptr, ptr %ti, align 8, !dbg !6835
  %vfs_inode = getelementptr inbounds %struct.tracefs_inode, ptr %1, i32 0, i32 0, !dbg !6836
  call void @inode_init_once(ptr noundef %vfs_inode) #17, !dbg !6837
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !6838
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6828, metadata !DIExpression()), !dbg !6838
  %2 = load ptr, ptr %ti, align 8, !dbg !6838
  store ptr %2, ptr %__ptr, align 8, !dbg !6838
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val) #16, !dbg !6838
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !6830, metadata !DIExpression()), !dbg !6838
  store i32 0, ptr %__val, align 4, !dbg !6838
  %3 = load ptr, ptr %__ptr, align 8, !dbg !6838
  %add.ptr = getelementptr i8, ptr %3, i64 600, !dbg !6838
  %4 = load i32, ptr %__val, align 4, !dbg !6838
  %5 = trunc i32 %4 to i8, !dbg !6838
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 %5, i64 32, i1 false), !dbg !6838
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6838
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val) #16, !dbg !6839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !6839
  %6 = load ptr, ptr %tmp, align 8, !dbg !6838
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !6840
  ret void, !dbg !6840
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6841 dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6844 dso_local i32 @register_filesystem(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6847 dso_local void @inode_init_once(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }
attributes #22 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!llvm.ident = !{!4488}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias305", scope: !2, file: !3, line: 538, type: !4477, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/tracefs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/tracefs/tracefs\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22tracefs\22 -D __KBUILD_MODNAME=kmod_tracefs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/tracefs/inode.ll fs/tracefs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !260, globals: !4362, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/tracefs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88b9f3255136fcef29aaa7813dfb6ccd")
!4 = !{!5, !13, !21, !26, !32, !128, !135, !143, !159, !166, !172, !177, !183, !216, !221, !231, !237, !244, !252}
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
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !184, line: 107, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!186 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!187 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!188 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!189 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!190 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!191 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!192 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!193 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!194 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!195 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!196 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!197 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!198 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!199 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!200 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!201 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!202 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!203 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!204 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!205 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!206 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!207 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!208 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!209 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!210 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!211 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!212 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!213 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!214 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!215 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 10, baseType: !7, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!218 = !{!219, !220}
!219 = !DIEnumerator(name: "false", value: 0)
!220 = !DIEnumerator(name: "true", value: 1)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !222, line: 364, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!223 = !{!224, !225, !226, !227, !228, !229, !230}
!224 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!225 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!226 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!227 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!228 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!229 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!230 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 289, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "Opt_uid", value: 0)
!234 = !DIEnumerator(name: "Opt_gid", value: 1)
!235 = !DIEnumerator(name: "Opt_mode", value: 2)
!236 = !DIEnumerator(name: "Opt_err", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 5, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "fs/tracefs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce2344b9feb8ac736f3a0742c5db1288")
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "TRACEFS_EVENT_INODE", value: 2)
!241 = !DIEnumerator(name: "TRACEFS_GID_PERM_SET", value: 4)
!242 = !DIEnumerator(name: "TRACEFS_UID_PERM_SET", value: 8)
!243 = !DIEnumerator(name: "TRACEFS_INSTANCE_INODE", value: 16)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !245, line: 286, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!248 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!249 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!250 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!251 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "inode_i_mutex_lock_class", file: !173, line: 792, baseType: !7, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259}
!254 = !DIEnumerator(name: "I_MUTEX_NORMAL", value: 0)
!255 = !DIEnumerator(name: "I_MUTEX_PARENT", value: 1)
!256 = !DIEnumerator(name: "I_MUTEX_CHILD", value: 2)
!257 = !DIEnumerator(name: "I_MUTEX_XATTR", value: 3)
!258 = !DIEnumerator(name: "I_MUTEX_NONDIR2", value: 4)
!259 = !DIEnumerator(name: "I_MUTEX_PARENT2", value: 5)
!260 = !{!41, !261, !807, !60, !400, !408, !4338, !121, !4339, !4341, !4342, !4345, !4347, !4349, !653, !4356, !814, !4357, !4360, !4361}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !263)
!263 = !{!264, !265, !266, !270, !4015, !4041, !4042, !4043, !4044, !4048, !4051, !4052, !4053, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4120, !4124, !4142, !4159, !4160, !4161, !4162, !4171, !4194, !4195, !4198, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4212, !4213, !4298, !4306, !4307, !4308, !4310, !4314, !4315, !4319, !4320, !4321, !4322, !4324, !4325, !4326, !4333, !4334, !4335, !4337}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !6, line: 403, baseType: !5, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !262, file: !6, line: 406, baseType: !118, size: 128, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !6, line: 409, baseType: !267, size: 448, offset: 192)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 56)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !262, file: !6, line: 417, baseType: !271, size: 768, offset: 640)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !272)
!272 = !{!273, !4009, !4010, !4011, !4014}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !271, file: !6, line: 46, baseType: !274, size: 512)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !275, line: 64, size: 512, elements: !276)
!275 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!276 = !{!277, !278, !279, !281, !328, !3908, !3999, !4004, !4005, !4006, !4007, !4008}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !275, line: 65, baseType: !37, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !274, file: !275, line: 66, baseType: !118, size: 128, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !275, line: 67, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !274, file: !275, line: 68, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !275, line: 168, size: 768, elements: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !283, file: !275, line: 169, baseType: !118, size: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !283, file: !275, line: 170, baseType: !80, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !275, line: 171, baseType: !274, size: 512, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !283, file: !275, line: 172, baseType: !289, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !275, line: 133, size: 192, elements: !292)
!292 = !{!293, !300, !305}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !291, file: !275, line: 134, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!43, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !275, line: 135, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!37, !298}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !291, file: !275, line: 136, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!43, !298, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !275, line: 125, size: 20736, elements: !312)
!312 = !{!313, !318, !322, !323, !327}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !311, file: !275, line: 126, baseType: !314, size: 192)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!316 = !{!317}
!317 = !DISubrange(count: 3)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !311, file: !275, line: 127, baseType: !319, size: 4096, offset: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 4096, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !311, file: !275, line: 128, baseType: !43, size: 32, offset: 4288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !311, file: !275, line: 129, baseType: !324, size: 16384, offset: 4320)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !311, file: !275, line: 130, baseType: !43, size: 32, offset: 20704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !274, file: !275, line: 69, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !275, line: 116, size: 384, elements: !332)
!332 = !{!333, !337, !360, !3872, !3900, !3904}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !331, file: !275, line: 117, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !280}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !331, file: !275, line: 118, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !341, line: 254, size: 128, elements: !342)
!341 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!342 = !{!343, !356}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !340, file: !341, line: 255, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !280, !351, !315}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !58, line: 73, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !58, line: 15, baseType: !350)
!350 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !341, line: 30, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !341, line: 31, baseType: !37, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !352, file: !341, line: 32, baseType: !45, size: 16, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !340, file: !341, line: 256, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!347, !280, !351, !37, !56}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !331, file: !275, line: 119, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !341, line: 84, size: 320, elements: !365)
!365 = !{!366, !367, !371, !3868, !3870}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !341, line: 85, baseType: !37, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !364, file: !341, line: 86, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!45, !280, !351, !43}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !364, file: !341, line: 88, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!45, !280, !375, !43}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !341, line: 175, size: 512, elements: !377)
!377 = !{!378, !379, !380, !381, !3859, !3863, !3864}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !376, file: !341, line: 176, baseType: !352, size: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !376, file: !341, line: 177, baseType: !56, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !376, file: !341, line: 178, baseType: !41, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !376, file: !341, line: 179, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !387)
!387 = !{!388, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3853, !3854, !3855, !3856, !3857, !3858}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !386, file: !173, line: 473, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !391)
!391 = !{!392, !393, !394, !402, !403, !410, !411, !414, !415, !3631, !3632, !3633, !3634, !3635, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3675, !3678, !3679, !3680, !3689, !3690, !3691, !3692}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !390, file: !173, line: 642, baseType: !45, size: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !390, file: !173, line: 643, baseType: !47, size: 16, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !390, file: !173, line: 644, baseType: !395, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !396, line: 23, baseType: !397)
!396 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 21, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !397, file: !396, line: 22, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !58, line: 49, baseType: !7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !390, file: !173, line: 645, baseType: !118, size: 128, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !390, file: !173, line: 646, baseType: !404, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !396, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !396, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !58, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !390, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !390, file: !173, line: 650, baseType: !412, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !390, file: !173, line: 651, baseType: !412, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !390, file: !173, line: 654, baseType: !416, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !419)
!419 = !{!420, !3462, !3475, !3479, !3483, !3487, !3491, !3495, !3499, !3503, !3507, !3508, !3512, !3516, !3553, !3582, !3586, !3592, !3596, !3600, !3604, !3608, !3612, !3618, !3622}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !418, file: !173, line: 1967, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!424, !389, !424, !7}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !426, line: 82, size: 1536, elements: !427)
!426 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!427 = !{!428, !429, !439, !447, !448, !468, !469, !473, !486, !3445, !3446, !3447, !3448, !3454, !3455, !3456}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !425, file: !426, line: 84, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !425, file: !426, line: 85, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !431, line: 275, baseType: !432)
!431 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !431, line: 275, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !432, file: !431, line: 275, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !431, line: 69, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !431, line: 64, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !436, file: !431, line: 65, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !425, file: !426, line: 86, baseType: !440, size: 128, offset: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !441, line: 38, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !441, line: 39, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !440, file: !441, line: 39, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !425, file: !426, line: 87, baseType: !424, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !425, file: !426, line: 88, baseType: !449, size: 128, offset: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !426, line: 49, size: 128, elements: !450)
!450 = !{!451, !465}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !426, line: 50, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !426, line: 50, size: 64, elements: !453)
!453 = !{!454, !461}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !426, line: 51, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !426, line: 51, size: 64, elements: !456)
!456 = !{!457, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !455, file: !426, line: 52, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !426, line: 52, baseType: !458, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !452, file: !426, line: 54, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !464)
!464 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !426, line: 56, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !425, file: !426, line: 89, baseType: !389, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !425, file: !426, line: 91, baseType: !470, size: 256, offset: 448)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !425, file: !426, line: 94, baseType: !474, size: 64, offset: 704)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !475, line: 25, size: 64, elements: !476)
!475 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !475, line: 26, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !475, line: 26, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !478, file: !475, line: 28, baseType: !463, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !475, line: 30, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !475, line: 30, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !475, line: 31, baseType: !80, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !475, line: 32, baseType: !43, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !425, file: !426, line: 95, baseType: !487, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !426, line: 128, size: 1024, align: 512, elements: !490)
!490 = !{!491, !495, !496, !503, !509, !513, !517, !521, !522, !526, !530, !3435, !3439}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !489, file: !426, line: 129, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!43, !424, !7}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !489, file: !426, line: 130, baseType: !492, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !489, file: !426, line: 131, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!43, !500, !502}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !489, file: !426, line: 132, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!43, !500, !7, !37, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !489, file: !426, line: 134, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!43, !500}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !489, file: !426, line: 135, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!43, !424}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !489, file: !426, line: 136, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !424}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !489, file: !426, line: 137, baseType: !518, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !489, file: !426, line: 138, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !424, !389}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !489, file: !426, line: 139, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!315, !424, !315, !43}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !489, file: !426, line: 140, baseType: !531, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !3434}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !536, line: 70, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!537 = !{!538, !539, !3430, !3431}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !535, file: !536, line: 71, baseType: !424, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !535, file: !536, line: 72, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !542)
!542 = !{!543, !544, !547, !548, !549, !550, !599, !3114, !3154, !3239, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3256, !3260, !3261, !3264, !3267, !3270, !3273, !3274, !3275, !3316, !3343, !3344, !3345, !3346, !3347, !3348, !3369, !3371, !3378, !3379, !3380, !3381, !3382, !3397, !3398, !3399, !3400, !3401, !3404, !3405, !3406, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !541, file: !173, line: 1191, baseType: !118, size: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !541, file: !173, line: 1192, baseType: !545, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !458)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !541, file: !173, line: 1193, baseType: !108, size: 8, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !541, file: !173, line: 1194, baseType: !60, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !541, file: !173, line: 1195, baseType: !62, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !541, file: !173, line: 1196, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !553)
!553 = !{!554, !555, !556, !563, !567, !571, !575, !576, !577, !587, !591, !592, !593, !595, !596, !597, !598}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !173, line: 2367, baseType: !37, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !552, file: !173, line: 2368, baseType: !43, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !552, file: !173, line: 2376, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!43, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !562, line: 32, flags: DIFlagFwdDecl)
!562 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !552, file: !173, line: 2377, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !552, file: !173, line: 2378, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!424, !551, !43, !37, !41}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !552, file: !173, line: 2380, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !540}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !552, file: !173, line: 2381, baseType: !261, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !173, line: 2382, baseType: !551, size: 64, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !552, file: !173, line: 2383, baseType: !578, size: 64, offset: 512)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !578, file: !46, line: 195, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !582, file: !46, line: 199, baseType: !581, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !582, file: !46, line: 199, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !552, file: !173, line: 2385, baseType: !588, offset: 576)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !589, line: 206, elements: !590)
!589 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!590 = !{}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !552, file: !173, line: 2386, baseType: !588, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !552, file: !173, line: 2387, baseType: !588, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !552, file: !173, line: 2388, baseType: !594, offset: 576)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, elements: !316)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !552, file: !173, line: 2390, baseType: !588, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !552, file: !173, line: 2391, baseType: !588, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !552, file: !173, line: 2392, baseType: !588, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !552, file: !173, line: 2393, baseType: !588, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !541, file: !173, line: 1197, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !603)
!603 = !{!604, !608, !612, !613, !617, !623, !627, !628, !629, !633, !637, !641, !642, !643, !649, !654, !655, !3039, !3040, !3041, !3042, !3046, !3050, !3097, !3112, !3113}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !602, file: !173, line: 2058, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!389, !540}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !602, file: !173, line: 2059, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !389}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !602, file: !173, line: 2060, baseType: !609, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !602, file: !173, line: 2062, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !389, !43}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !602, file: !173, line: 2063, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!43, !389, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !173, line: 309, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !602, file: !173, line: 2064, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!43, !389}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !602, file: !173, line: 2065, baseType: !609, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !602, file: !173, line: 2066, baseType: !572, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !602, file: !173, line: 2067, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!43, !540, !43}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !602, file: !173, line: 2068, baseType: !634, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!43, !540, !172}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !602, file: !173, line: 2069, baseType: !638, size: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!43, !540}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !602, file: !173, line: 2070, baseType: !634, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !602, file: !173, line: 2071, baseType: !638, size: 64, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !602, file: !173, line: 2072, baseType: !644, size: 64, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!43, !424, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !602, file: !173, line: 2073, baseType: !650, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!43, !540, !653, !315}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !602, file: !173, line: 2074, baseType: !572, size: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !602, file: !173, line: 2076, baseType: !656, size: 64, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!43, !659, !424}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !661, line: 17, size: 960, elements: !662)
!661 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !691, !712, !713, !3038}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !660, file: !661, line: 18, baseType: !315, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !660, file: !661, line: 19, baseType: !56, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !660, file: !661, line: 20, baseType: !56, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !661, line: 21, baseType: !56, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !660, file: !661, line: 22, baseType: !56, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !660, file: !661, line: 23, baseType: !62, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !660, file: !661, line: 24, baseType: !62, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !661, line: 25, baseType: !671, size: 256, offset: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !672, line: 66, size: 256, elements: !673)
!672 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!673 = !{!674, !683, !685, !690}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !671, file: !672, line: 67, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !676, line: 13, baseType: !677)
!676 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !678, file: !46, line: 180, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !671, file: !672, line: 68, baseType: !684, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !671, file: !672, line: 70, baseType: !686, size: 32, offset: 96)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !687, line: 15, size: 32, elements: !688)
!687 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !686, file: !687, line: 20, baseType: !70, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !671, file: !672, line: 72, baseType: !118, size: 128, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !660, file: !661, line: 26, baseType: !692, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !661, line: 32, size: 256, elements: !695)
!695 = !{!696, !700, !704, !708}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !694, file: !661, line: 33, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!41, !659, !61}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !694, file: !661, line: 34, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !659, !41}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !661, line: 35, baseType: !705, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!41, !659, !41, !61}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !694, file: !661, line: 36, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!43, !659, !41}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !660, file: !661, line: 27, baseType: !43, size: 32, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !660, file: !661, line: 28, baseType: !714, size: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !717)
!717 = !{!718, !737, !738, !740, !741, !742, !743, !744, !2852, !2853, !2862, !2868, !2869, !3028, !3029, !3030, !3031, !3033, !3034, !3037}
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !173, line: 995, baseType: !719, size: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !173, line: 995, size: 128, elements: !720)
!720 = !{!721, !727, !736}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !719, file: !173, line: 996, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !723, line: 60, size: 64, elements: !724)
!723 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !723, line: 61, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !719, file: !173, line: 997, baseType: !728, size: 128, align: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !729)
!729 = !{!730, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !728, file: !46, line: 233, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !728, file: !46, line: 234, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !731}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !719, file: !173, line: 998, baseType: !7, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !716, file: !173, line: 1005, baseType: !80, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !716, file: !173, line: 1006, baseType: !739, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !7)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !716, file: !173, line: 1007, baseType: !675, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !716, file: !173, line: 1008, baseType: !671, size: 256, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !716, file: !173, line: 1009, baseType: !62, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !716, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !716, file: !173, line: 1011, baseType: !745, size: 256, offset: 640)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !746)
!746 = !{!747, !768, !2848, !2849, !2850, !2851}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !173, line: 949, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !749, line: 34, baseType: !750)
!749 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 25, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !750, file: !749, line: 26, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !754, line: 27, baseType: !755)
!754 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !754, line: 13, size: 64, elements: !756)
!756 = !{!757, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !754, line: 14, baseType: !758, size: 32)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !754, line: 14, size: 32, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !758, file: !754, line: 15, baseType: !70, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !754, line: 16, baseType: !762, size: 32)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !754, line: 16, size: 32, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !762, file: !754, line: 18, baseType: !104, size: 8)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !762, file: !754, line: 19, baseType: !766, size: 24, offset: 8)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 24, elements: !316)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !755, file: !754, line: 26, baseType: !92, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !745, file: !173, line: 950, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !136, line: 59, size: 768, elements: !771)
!771 = !{!772, !778, !779, !780, !784, !785, !786, !787}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !136, line: 61, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !774, line: 113, baseType: !775)
!774 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !774, line: 111, size: 32, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !775, file: !774, line: 112, baseType: !70, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !770, file: !136, line: 62, baseType: !7, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !136, line: 63, baseType: !80, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !770, file: !136, line: 65, baseType: !781, size: 256, offset: 128)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 256, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 4)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !770, file: !136, line: 66, baseType: !578, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !770, file: !136, line: 68, baseType: !75, size: 192, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !770, file: !136, line: 69, baseType: !728, size: 128, align: 64, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !770, file: !136, line: 70, baseType: !788, offset: 768)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, elements: !1545)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !136, line: 54, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !789, file: !136, line: 55, baseType: !43, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !789, file: !136, line: 56, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !795, line: 26, size: 1152, elements: !796)
!795 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!796 = !{!797, !811, !812, !813, !2834, !2838, !2839, !2840, !2843, !2844, !2845, !2846, !2847}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !794, file: !795, line: 27, baseType: !798, size: 192)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !799, line: 19, size: 192, elements: !800)
!799 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!800 = !{!801, !809, !810}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !798, file: !799, line: 20, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !803, line: 296, size: 128, elements: !804)
!803 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!804 = !{!805, !806, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !802, file: !803, line: 297, baseType: !80, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !802, file: !803, line: 299, baseType: !807, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !802, file: !803, line: 300, baseType: !41, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !798, file: !799, line: 21, baseType: !7, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !798, file: !799, line: 22, baseType: !7, size: 32, offset: 160)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !794, file: !795, line: 28, baseType: !728, size: 128, align: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !794, file: !795, line: 29, baseType: !7, size: 32, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !794, file: !795, line: 30, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !816, line: 746, size: 58368, elements: !817)
!816 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!817 = !{!818, !826, !827, !828, !829, !830, !831, !832, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !905, !916, !1011, !1015, !1018, !1049, !1050, !1051, !1052, !1063, !1065, !1066, !1067, !1068, !1069, !1070, !1081, !1082, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1099, !1100, !1107, !1108, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1626, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1674, !1680, !1750, !1751, !1752, !1753, !1757, !1760, !1767, !1772, !1775, !1778, !1781, !1807, !1948, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1988, !1989, !1990, !1999, !2007, !2008, !2009, !2010, !2011, !2016, !2017, !2018, !2021, !2022, !2025, !2028, !2031, !2039, !2042, !2043, !2129, !2130, !2131, !2132, !2133, !2139, !2140, !2141, !2142, !2145, !2146, !2149, !2152, !2153, !2156, !2157, !2158, !2161, !2162, !2163, !2166, !2167, !2168, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2200, !2203, !2492, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2504, !2576, !2578, !2579, !2580, !2581, !2582, !2594, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2611, !2612, !2613}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !815, file: !816, line: 752, baseType: !819, size: 192)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !820, line: 56, size: 192, elements: !821)
!820 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!821 = !{!822, !823, !824, !825}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !820, line: 57, baseType: !60, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !819, file: !820, line: 58, baseType: !60, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !819, file: !820, line: 59, baseType: !458, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !819, file: !820, line: 61, baseType: !458, size: 32, offset: 160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !815, file: !816, line: 754, baseType: !7, size: 32, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !815, file: !816, line: 767, baseType: !41, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !815, file: !816, line: 768, baseType: !773, size: 32, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !816, line: 770, baseType: !7, size: 32, offset: 352)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !815, file: !816, line: 771, baseType: !7, size: 32, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !815, file: !816, line: 774, baseType: !43, size: 32, offset: 416)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !815, file: !816, line: 775, baseType: !833, size: 128, offset: 448)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !834, line: 58, size: 128, elements: !835)
!834 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!835 = !{!836, !837, !842, !843}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !833, file: !834, line: 59, baseType: !722, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !833, file: !834, line: 60, baseType: !838, size: 32, offset: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !834, line: 60, size: 32, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !838, file: !834, line: 61, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !838, file: !834, line: 62, baseType: !70, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !833, file: !834, line: 65, baseType: !114, size: 16, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !833, file: !834, line: 65, baseType: !114, size: 16, offset: 112)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !815, file: !816, line: 776, baseType: !7, size: 32, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !815, file: !816, line: 777, baseType: !60, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !815, file: !816, line: 778, baseType: !814, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !815, file: !816, line: 787, baseType: !43, size: 32, offset: 768)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !815, file: !816, line: 788, baseType: !43, size: 32, offset: 800)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !815, file: !816, line: 790, baseType: !43, size: 32, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !815, file: !816, line: 792, baseType: !43, size: 32, offset: 864)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !815, file: !816, line: 793, baseType: !43, size: 32, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !815, file: !816, line: 794, baseType: !43, size: 32, offset: 928)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !815, file: !816, line: 795, baseType: !7, size: 32, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !815, file: !816, line: 797, baseType: !855, size: 2048, offset: 1024)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !816, line: 551, size: 2048, elements: !856)
!856 = !{!857, !862, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !884, !887, !888, !889}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !855, file: !816, line: 553, baseType: !858, size: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !816, line: 411, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !858, file: !816, line: 412, baseType: !60, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !858, file: !816, line: 413, baseType: !458, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !855, file: !816, line: 554, baseType: !863, size: 192, align: 64, offset: 128)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !864, line: 5, size: 192, align: 64, elements: !865)
!864 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!865 = !{!866, !867, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !863, file: !864, line: 6, baseType: !60, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !863, file: !864, line: 7, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !863, file: !864, line: 8, baseType: !868, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !855, file: !816, line: 555, baseType: !462, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !855, file: !816, line: 556, baseType: !462, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !855, file: !816, line: 558, baseType: !118, size: 128, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !855, file: !816, line: 559, baseType: !7, size: 32, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !855, file: !816, line: 561, baseType: !462, size: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !855, file: !816, line: 562, baseType: !462, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !855, file: !816, line: 563, baseType: !462, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !855, file: !816, line: 564, baseType: !462, size: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !855, file: !816, line: 565, baseType: !681, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !855, file: !816, line: 566, baseType: !462, size: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !855, file: !816, line: 568, baseType: !462, size: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !855, file: !816, line: 571, baseType: !43, size: 32, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !855, file: !816, line: 572, baseType: !883, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !855, file: !816, line: 574, baseType: !885, size: 64, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !816, line: 49, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !855, file: !816, line: 576, baseType: !885, size: 64, offset: 1280)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !855, file: !816, line: 578, baseType: !60, size: 64, offset: 1344)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !855, file: !816, line: 588, baseType: !890, size: 512, align: 512, offset: 1536)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !816, line: 497, size: 512, align: 512, elements: !891)
!891 = !{!892, !893, !894, !895, !896, !897, !898, !899, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !890, file: !816, line: 498, baseType: !462, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !890, file: !816, line: 499, baseType: !462, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !890, file: !816, line: 500, baseType: !462, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !890, file: !816, line: 501, baseType: !458, size: 32, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !890, file: !816, line: 502, baseType: !458, size: 32, offset: 224)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !890, file: !816, line: 503, baseType: !60, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !890, file: !816, line: 504, baseType: !60, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !890, file: !816, line: 505, baseType: !60, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !890, file: !816, line: 506, baseType: !901, size: 64, align: 64, offset: 448)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !816, line: 445, size: 64, align: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !901, file: !816, line: 446, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !901, file: !816, line: 447, baseType: !7, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !815, file: !816, line: 798, baseType: !906, size: 384, offset: 3072)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !816, line: 592, size: 384, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !906, file: !816, line: 593, baseType: !118, size: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !906, file: !816, line: 594, baseType: !60, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !906, file: !816, line: 595, baseType: !60, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !906, file: !816, line: 596, baseType: !7, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !906, file: !816, line: 597, baseType: !47, size: 16, offset: 288)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !906, file: !816, line: 598, baseType: !47, size: 16, offset: 304)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !906, file: !816, line: 600, baseType: !915, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !815, file: !816, line: 799, baseType: !917, size: 1792, offset: 3456)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !816, line: 610, size: 1792, elements: !918)
!918 = !{!919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !1008, !1009}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !917, file: !816, line: 611, baseType: !863, size: 192, align: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !917, file: !816, line: 618, baseType: !462, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !917, file: !816, line: 619, baseType: !462, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !917, file: !816, line: 620, baseType: !462, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !917, file: !816, line: 621, baseType: !462, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !917, file: !816, line: 622, baseType: !462, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !917, file: !816, line: 629, baseType: !681, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !917, file: !816, line: 630, baseType: !462, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !917, file: !816, line: 631, baseType: !7, size: 32, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !917, file: !816, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !917, file: !816, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !917, file: !816, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !917, file: !816, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !917, file: !816, line: 662, baseType: !933, size: 512, offset: 704)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !934)
!934 = !{!935, !943, !944, !949, !1004, !1005, !1006, !1007}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !933, file: !22, line: 119, baseType: !936, size: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !937, line: 9, size: 256, elements: !938)
!937 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !936, file: !937, line: 10, baseType: !863, size: 192, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !936, file: !937, line: 11, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !942, line: 29, baseType: !681)
!942 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !933, file: !22, line: 120, baseType: !941, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !933, file: !22, line: 121, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!21, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !933, file: !22, line: 122, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !952)
!952 = !{!953, !978, !979, !982, !987, !988, !999, !1003}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !951, file: !22, line: 160, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !22, line: 216, baseType: !684, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !955, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !955, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !955, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !955, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !955, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !955, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !955, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !955, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !955, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !955, file: !22, line: 227, baseType: !47, size: 16, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !955, file: !22, line: 228, baseType: !47, size: 16, offset: 208)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !955, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !955, file: !22, line: 235, baseType: !941, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !955, file: !22, line: 236, baseType: !948, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !955, file: !22, line: 237, baseType: !941, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !955, file: !22, line: 238, baseType: !948, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !955, file: !22, line: 239, baseType: !975, size: 4096, align: 512, offset: 512)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 4096, align: 512, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 8)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !951, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !951, file: !22, line: 162, baseType: !980, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !58, line: 96, baseType: !43)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !951, file: !22, line: 163, baseType: !983, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 274, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 274, size: 32, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !984, file: !431, line: 274, baseType: !435, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !951, file: !22, line: 164, baseType: !948, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !951, file: !22, line: 165, baseType: !989, size: 128, offset: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !937, line: 14, size: 128, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !989, file: !937, line: 15, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !864, line: 26, size: 128, elements: !993)
!993 = !{!994, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !992, file: !864, line: 27, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !864, line: 12, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !995, file: !864, line: 13, baseType: !868, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !992, file: !864, line: 28, baseType: !868, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !951, file: !22, line: 166, baseType: !1000, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!941}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !951, file: !22, line: 167, baseType: !941, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !933, file: !22, line: 123, baseType: !104, size: 8, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !933, file: !22, line: 124, baseType: !104, size: 8, offset: 456)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !933, file: !22, line: 125, baseType: !104, size: 8, offset: 464)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !933, file: !22, line: 126, baseType: !104, size: 8, offset: 472)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !917, file: !816, line: 671, baseType: !933, size: 512, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !917, file: !816, line: 679, baseType: !1010, size: 64, offset: 1728)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !815, file: !816, line: 800, baseType: !1012, size: 64, offset: 5248)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !816, line: 800, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !815, file: !816, line: 809, baseType: !1016, size: 64, offset: 5312)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !816, line: 70, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !815, file: !816, line: 825, baseType: !1019, size: 2048, align: 512, offset: 5632)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !816, line: 509, size: 2048, align: 512, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1019, file: !816, line: 511, baseType: !462, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1019, file: !816, line: 512, baseType: !462, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1019, file: !816, line: 513, baseType: !462, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1019, file: !816, line: 514, baseType: !462, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1019, file: !816, line: 515, baseType: !462, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1019, file: !816, line: 516, baseType: !462, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1019, file: !816, line: 518, baseType: !462, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1019, file: !816, line: 519, baseType: !462, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1019, file: !816, line: 520, baseType: !681, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1019, file: !816, line: 522, baseType: !462, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1019, file: !816, line: 523, baseType: !462, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1019, file: !816, line: 524, baseType: !681, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1019, file: !816, line: 526, baseType: !681, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1019, file: !816, line: 527, baseType: !462, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1019, file: !816, line: 529, baseType: !462, size: 64, offset: 896)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1019, file: !816, line: 530, baseType: !462, size: 64, offset: 960)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1019, file: !816, line: 531, baseType: !462, size: 64, offset: 1024)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1019, file: !816, line: 532, baseType: !462, size: 64, offset: 1088)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1019, file: !816, line: 533, baseType: !462, size: 64, offset: 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1019, file: !816, line: 535, baseType: !462, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1019, file: !816, line: 536, baseType: !462, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1019, file: !816, line: 537, baseType: !462, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1019, file: !816, line: 538, baseType: !462, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1019, file: !816, line: 539, baseType: !462, size: 64, offset: 1472)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1019, file: !816, line: 540, baseType: !462, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1019, file: !816, line: 541, baseType: !462, size: 64, offset: 1600)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1019, file: !816, line: 542, baseType: !462, size: 64, offset: 1664)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1019, file: !816, line: 543, baseType: !462, size: 64, offset: 1728)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !815, file: !816, line: 833, baseType: !7, size: 32, offset: 7680)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !815, file: !816, line: 836, baseType: !7, size: 32, offset: 7712)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !815, file: !816, line: 837, baseType: !43, size: 32, offset: 7744)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !815, file: !816, line: 838, baseType: !1053, size: 64, offset: 7808)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1056, line: 19, baseType: !1057)
!1056 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1056, line: 19, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1057, file: !1056, line: 19, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 1)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !815, file: !816, line: 839, baseType: !1064, size: 64, offset: 7872)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !815, file: !816, line: 840, baseType: !1055, size: 64, offset: 7936)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !815, file: !816, line: 841, baseType: !41, size: 64, offset: 8000)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !815, file: !816, line: 843, baseType: !47, size: 16, offset: 8064)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !815, file: !816, line: 845, baseType: !47, size: 16, offset: 8080)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !815, file: !816, line: 848, baseType: !43, size: 32, offset: 8096)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !815, file: !816, line: 849, baseType: !1071, size: 32, offset: 8128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !816, line: 718, size: 32, elements: !1072)
!1072 = !{!1073, !1080}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1071, file: !816, line: 724, baseType: !1074, size: 32)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !816, line: 719, size: 32, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1074, file: !816, line: 720, baseType: !104, size: 8)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1074, file: !816, line: 721, baseType: !104, size: 8, offset: 8)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1074, file: !816, line: 722, baseType: !104, size: 8, offset: 16)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1074, file: !816, line: 723, baseType: !104, size: 8, offset: 24)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1071, file: !816, line: 725, baseType: !458, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !815, file: !816, line: 850, baseType: !118, size: 128, offset: 8192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !815, file: !816, line: 851, baseType: !1083, size: 64, offset: 8320)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !816, line: 60, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !815, file: !816, line: 855, baseType: !60, size: 64, offset: 8384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !815, file: !816, line: 856, baseType: !104, size: 8, offset: 8448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !815, file: !816, line: 857, baseType: !104, size: 8, offset: 8456)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !815, file: !816, line: 858, baseType: !43, size: 32, offset: 8480)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !815, file: !816, line: 859, baseType: !118, size: 128, offset: 8512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !815, file: !816, line: 860, baseType: !43, size: 32, offset: 8640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !815, file: !816, line: 861, baseType: !118, size: 128, offset: 8704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !815, file: !816, line: 873, baseType: !1093, size: 256, offset: 8832)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !816, line: 376, size: 256, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1093, file: !816, line: 381, baseType: !60, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1093, file: !816, line: 384, baseType: !464, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1093, file: !816, line: 389, baseType: !464, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1093, file: !816, line: 392, baseType: !464, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !815, file: !816, line: 875, baseType: !118, size: 128, offset: 9088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !815, file: !816, line: 877, baseType: !1101, size: 320, offset: 9216)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1102, line: 86, size: 320, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1101, file: !1102, line: 87, baseType: !43, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1101, file: !1102, line: 88, baseType: !118, size: 128, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1101, file: !1102, line: 89, baseType: !118, size: 128, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !815, file: !816, line: 878, baseType: !863, size: 192, align: 64, offset: 9536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !815, file: !816, line: 881, baseType: !1109, size: 64, offset: 9728)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !144, line: 733, size: 10240, elements: !1111)
!1111 = !{!1112, !1543}
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !144, line: 734, baseType: !1113, size: 10240)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !144, line: 734, size: 10240, elements: !1114)
!1114 = !{!1115, !1119, !1132, !1137, !1138, !1139, !1140, !1141, !1142, !1151, !1152, !1153, !1159, !1160, !1161, !1162, !1163, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1212, !1215, !1263, !1264, !1265, !1268, !1529, !1530, !1533, !1534, !1535, !1541, !1542}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !144, line: 739, baseType: !1116, size: 512, align: 512)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !144, line: 739, size: 512, align: 512, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1116, file: !144, line: 747, baseType: !70, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1113, file: !144, line: 750, baseType: !1120, size: 128, offset: 512)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1121, line: 218, size: 128, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1122 = !{!1123, !1130, !1131}
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !1121, line: 219, baseType: !1124, size: 32)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !1121, line: 219, size: 32, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1124, file: !1121, line: 220, baseType: !80, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1124, file: !1121, line: 221, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1121, line: 197, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1121, line: 197, elements: !590)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1120, file: !1121, line: 223, baseType: !7, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1120, file: !1121, line: 224, baseType: !41, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1113, file: !144, line: 752, baseType: !1133, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!60, !1136, !60, !60, !60, !60}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1113, file: !144, line: 756, baseType: !60, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1113, file: !144, line: 757, baseType: !60, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1113, file: !144, line: 760, baseType: !60, size: 64, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1113, file: !144, line: 761, baseType: !60, size: 64, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1113, file: !144, line: 763, baseType: !60, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1113, file: !144, line: 764, baseType: !1143, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1145, line: 299, baseType: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 299, size: 64, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1146, file: !1145, line: 299, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1150, line: 18, baseType: !60)
!1150 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1113, file: !144, line: 773, baseType: !70, size: 32, offset: 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1113, file: !144, line: 785, baseType: !70, size: 32, offset: 1120)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1113, file: !144, line: 795, baseType: !1154, size: 64, offset: 1152)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !144, line: 726, size: 128, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1155, file: !144, line: 727, baseType: !462, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1155, file: !144, line: 728, baseType: !43, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1113, file: !144, line: 801, baseType: !60, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1113, file: !144, line: 804, baseType: !675, size: 64, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1113, file: !144, line: 806, baseType: !43, size: 32, offset: 1344)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1113, file: !144, line: 808, baseType: !80, size: 32, offset: 1376)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1113, file: !144, line: 823, baseType: !1164, size: 320, offset: 1408)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1165, line: 48, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1166 = !{!1167, !1168, !1169, !1170, !1171}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1164, file: !1165, line: 49, baseType: !675, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1164, file: !1165, line: 55, baseType: !675, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1164, file: !1165, line: 57, baseType: !686, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1164, file: !1165, line: 59, baseType: !684, size: 32, offset: 160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1164, file: !1165, line: 60, baseType: !118, size: 128, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1113, file: !144, line: 825, baseType: !118, size: 128, offset: 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1113, file: !144, line: 845, baseType: !43, size: 32, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1113, file: !144, line: 849, baseType: !60, size: 64, offset: 1920)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1113, file: !144, line: 850, baseType: !60, size: 64, offset: 1984)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1113, file: !144, line: 852, baseType: !60, size: 64, offset: 2048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1113, file: !144, line: 853, baseType: !60, size: 64, offset: 2112)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1113, file: !144, line: 854, baseType: !677, size: 64, offset: 2176)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1113, file: !144, line: 855, baseType: !60, size: 64, offset: 2240)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1113, file: !144, line: 856, baseType: !60, size: 64, offset: 2304)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1113, file: !144, line: 857, baseType: !60, size: 64, offset: 2368)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1113, file: !144, line: 858, baseType: !60, size: 64, offset: 2432)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1113, file: !144, line: 865, baseType: !435, size: 32, offset: 2496)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1113, file: !144, line: 867, baseType: !80, size: 32, offset: 2528)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1113, file: !144, line: 869, baseType: !60, size: 64, offset: 2560)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1113, file: !144, line: 869, baseType: !60, size: 64, offset: 2624)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1113, file: !144, line: 869, baseType: !60, size: 64, offset: 2688)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1113, file: !144, line: 869, baseType: !60, size: 64, offset: 2752)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1113, file: !144, line: 870, baseType: !60, size: 64, offset: 2816)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1113, file: !144, line: 870, baseType: !60, size: 64, offset: 2880)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1113, file: !144, line: 870, baseType: !60, size: 64, offset: 2944)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1113, file: !144, line: 871, baseType: !60, size: 64, offset: 3008)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1113, file: !144, line: 871, baseType: !60, size: 64, offset: 3072)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1113, file: !144, line: 871, baseType: !60, size: 64, offset: 3136)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1113, file: !144, line: 871, baseType: !60, size: 64, offset: 3200)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1113, file: !144, line: 873, baseType: !1197, size: 3328, offset: 3264)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 3328, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 52)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1113, file: !144, line: 875, baseType: !1201, size: 1280, offset: 6592)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1202, size: 1280, elements: !782)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1203, line: 22, size: 320, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1204 = !{!1205, !1206, !1207, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1203, line: 23, baseType: !684, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1202, file: !1203, line: 24, baseType: !681, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1202, file: !1203, line: 26, baseType: !118, size: 128, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1202, file: !1203, line: 28, baseType: !1209, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !43)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1113, file: !144, line: 877, baseType: !1213, size: 64, offset: 7872)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !144, line: 877, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1113, file: !144, line: 880, baseType: !1216, size: 1088, offset: 7936)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1217, line: 72, baseType: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1217, line: 23, size: 1088, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1227, !1228, !1229, !1230, !1257, !1258, !1259}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1218, file: !1217, line: 28, baseType: !462, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1218, file: !1217, line: 38, baseType: !677, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1218, file: !1217, line: 40, baseType: !60, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1218, file: !1217, line: 43, baseType: !1164, size: 320, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1218, file: !1217, line: 44, baseType: !1225, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1217, line: 44, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1217, line: 48, baseType: !60, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1218, file: !1217, line: 59, baseType: !671, size: 256, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1218, file: !1217, line: 60, baseType: !41, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1218, file: !1217, line: 61, baseType: !1231, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1234, line: 13, size: 1216, elements: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1233, file: !1234, line: 14, baseType: !41, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1233, file: !1234, line: 15, baseType: !60, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1233, file: !1234, line: 17, baseType: !60, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1233, file: !1234, line: 17, baseType: !60, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1233, file: !1234, line: 18, baseType: !60, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1233, file: !1234, line: 18, baseType: !60, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1233, file: !1234, line: 19, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1233, file: !1234, line: 21, baseType: !350, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1233, file: !1234, line: 23, baseType: !350, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1233, file: !1234, line: 24, baseType: !350, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1233, file: !1234, line: 25, baseType: !350, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1233, file: !1234, line: 26, baseType: !350, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1233, file: !1234, line: 27, baseType: !350, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1233, file: !1234, line: 28, baseType: !350, size: 64, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1233, file: !1234, line: 29, baseType: !350, size: 64, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1233, file: !1234, line: 30, baseType: !350, size: 64, offset: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1233, file: !1234, line: 31, baseType: !350, size: 64, offset: 1024)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1233, file: !1234, line: 32, baseType: !350, size: 64, offset: 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1233, file: !1234, line: 33, baseType: !350, size: 64, offset: 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1218, file: !1217, line: 63, baseType: !70, size: 32, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1218, file: !1217, line: 69, baseType: !114, size: 16, offset: 1056)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1218, file: !1217, line: 70, baseType: !1260, size: 16, offset: 1072)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !1262)
!1262 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1113, file: !144, line: 882, baseType: !60, size: 64, offset: 9024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1113, file: !144, line: 885, baseType: !80, size: 32, offset: 9088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1113, file: !144, line: 886, baseType: !1266, size: 64, offset: 9152)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !144, line: 732, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1113, file: !144, line: 901, baseType: !1269, size: 64, offset: 9216)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1271, line: 68, size: 4800, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1272 = !{!1273, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1312, !1313, !1316, !1317, !1427, !1428, !1440, !1510, !1511, !1525, !1527}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1270, file: !1271, line: 69, baseType: !1274, size: 576)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1271, line: 23, size: 576, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1274, file: !1271, line: 24, baseType: !458, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !1271, line: 25, baseType: !1278, size: 512, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !1271, line: 25, size: 512, elements: !1279)
!1279 = !{!1280, !1289}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1278, file: !1271, line: 26, baseType: !1281, size: 480)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 480, elements: !1287)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1271, line: 17, size: 96, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1282, file: !1271, line: 18, baseType: !458, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1282, file: !1271, line: 19, baseType: !458, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1282, file: !1271, line: 20, baseType: !458, size: 32, offset: 64)
!1287 = !{!1288}
!1288 = !DISubrange(count: 5)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !1271, line: 27, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !1271, line: 27, size: 128, elements: !1291)
!1291 = !{!1292, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1290, file: !1271, line: 28, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1290, file: !1271, line: 29, baseType: !1293, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1270, file: !1271, line: 70, baseType: !1274, size: 576, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1270, file: !1271, line: 71, baseType: !1274, size: 576, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1270, file: !1271, line: 72, baseType: !1269, size: 64, offset: 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1270, file: !1271, line: 73, baseType: !43, size: 32, offset: 1792)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1270, file: !1271, line: 74, baseType: !395, size: 32, offset: 1824)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1270, file: !1271, line: 75, baseType: !404, size: 32, offset: 1856)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1270, file: !1271, line: 76, baseType: !1302, size: 192, offset: 1920)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1303, line: 9, size: 192, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1304 = !{!1305, !1306, !1310, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1302, file: !1303, line: 10, baseType: !675, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1302, file: !1303, line: 11, baseType: !1307, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1303, line: 7, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1302, file: !1303, line: 12, baseType: !7, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1302, file: !1303, line: 13, baseType: !773, size: 32, offset: 160)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !1271, line: 77, baseType: !60, size: 64, offset: 2112)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1270, file: !1271, line: 80, baseType: !1314, size: 8, offset: 2176)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !1315)
!1315 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1270, file: !1271, line: 88, baseType: !118, size: 128, offset: 2240)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1270, file: !1271, line: 89, baseType: !1318, size: 64, offset: 2368)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1320, line: 195, size: 1728, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1321 = !{!1322, !1323, !1326, !1331, !1332, !1335, !1336, !1343, !1344, !1345, !1346, !1349, !1350, !1351, !1352, !1353, !1391, !1412}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1319, file: !1320, line: 196, baseType: !773, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1319, file: !1320, line: 197, baseType: !1324, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1320, line: 28, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !1210)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1320, line: 198, baseType: !1327, size: 192, offset: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !1320, line: 198, size: 192, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1327, file: !1320, line: 199, baseType: !118, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1327, file: !1320, line: 200, baseType: !863, size: 192, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1319, file: !1320, line: 205, baseType: !1164, size: 320, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1319, file: !1320, line: 206, baseType: !1333, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1320, line: 206, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1319, file: !1320, line: 207, baseType: !41, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1320, line: 208, baseType: !1337, size: 64, offset: 704)
!1337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !1320, line: 208, size: 64, elements: !1338)
!1338 = !{!1339, !1342}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1337, file: !1320, line: 209, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1341, line: 8, baseType: !682)
!1341 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1337, file: !1320, line: 210, baseType: !1340, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1319, file: !1320, line: 212, baseType: !1340, size: 64, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1319, file: !1320, line: 213, baseType: !395, size: 32, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1319, file: !1320, line: 214, baseType: !404, size: 32, offset: 864)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1319, file: !1320, line: 215, baseType: !1347, size: 32, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1320, line: 31, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !458)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1319, file: !1320, line: 216, baseType: !47, size: 16, offset: 928)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1319, file: !1320, line: 217, baseType: !47, size: 16, offset: 944)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1319, file: !1320, line: 221, baseType: !1262, size: 16, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1320, line: 228, baseType: !60, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1320, line: 245, baseType: !1354, size: 320, offset: 1088)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !1320, line: 245, size: 320, elements: !1355)
!1355 = !{!1356, !1383}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1354, file: !1320, line: 246, baseType: !1357, size: 320)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1320, line: 114, size: 320, elements: !1358)
!1358 = !{!1359, !1360, !1372, !1375, !1382}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1357, file: !1320, line: 116, baseType: !60, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1320, line: 117, baseType: !1361, size: 64, offset: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1320, line: 117, size: 64, elements: !1362)
!1362 = !{!1363, !1371}
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1320, line: 118, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1361, file: !1320, line: 118, size: 64, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1364, file: !1320, line: 120, baseType: !114, size: 16)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1364, file: !1320, line: 121, baseType: !1368, size: 48, offset: 16)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 6)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1361, file: !1320, line: 127, baseType: !60, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1357, file: !1320, line: 129, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1320, line: 102, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1357, file: !1320, line: 130, baseType: !1376, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1320, line: 108, size: 192, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1377, file: !1320, line: 109, baseType: !728, size: 128, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1377, file: !1320, line: 110, baseType: !773, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1377, file: !1320, line: 111, baseType: !1314, size: 8, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1357, file: !1320, line: 131, baseType: !37, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1320, line: 247, baseType: !1384, size: 320)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1354, file: !1320, line: 247, size: 320, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1384, file: !1320, line: 248, baseType: !60, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1384, file: !1320, line: 249, baseType: !60, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1384, file: !1320, line: 250, baseType: !1373, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1384, file: !1320, line: 251, baseType: !1376, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1384, file: !1320, line: 252, baseType: !315, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !1320, line: 260, baseType: !1392, size: 256, offset: 1408)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !1320, line: 260, size: 256, elements: !1393)
!1393 = !{!1394, !1400}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1392, file: !1320, line: 261, baseType: !1395, size: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1320, line: 134, size: 256, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1395, file: !1320, line: 135, baseType: !41, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1395, file: !1320, line: 136, baseType: !1399, size: 256)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !782)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1320, line: 262, baseType: !1401, size: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1320, line: 262, size: 256, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1401, file: !1320, line: 264, baseType: !118, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1401, file: !1320, line: 265, baseType: !1405, size: 128, offset: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1406, line: 22, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1407 = !{!1408, !1411}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1405, file: !1406, line: 23, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1406, line: 23, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1405, file: !1406, line: 24, baseType: !60, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1319, file: !1320, line: 280, baseType: !1413, size: 64, offset: 1664)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1320, line: 176, size: 192, elements: !1415)
!1415 = !{!1416, !1425, !1426}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1414, file: !1320, line: 177, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1320, line: 171, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!43, !1318, !1421, !1423, !1318}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1414, file: !1320, line: 178, baseType: !1318, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1414, file: !1320, line: 179, baseType: !1373, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1270, file: !1271, line: 90, baseType: !1164, size: 320, offset: 2432)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1270, file: !1271, line: 97, baseType: !1429, size: 256, offset: 2752)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1430, line: 98, size: 256, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1429, file: !1430, line: 99, baseType: !675, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1429, file: !1430, line: 100, baseType: !118, size: 128, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1429, file: !1430, line: 101, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1430, line: 21, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1270, file: !1271, line: 99, baseType: !1441, size: 768, offset: 3008)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !33, line: 199, size: 768, elements: !1442)
!1442 = !{!1443, !1448}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1441, file: !33, line: 200, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!43, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1441, file: !33, line: 201, baseType: !1449, size: 704, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !33, line: 193, size: 704, elements: !1450)
!1450 = !{!1451, !1509}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1449, file: !33, line: 195, baseType: !1452, size: 640)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !33, line: 173, size: 640, elements: !1453)
!1453 = !{!1454, !1466, !1478, !1479, !1499, !1500, !1502, !1508}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !33, line: 174, baseType: !1455, size: 192)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !33, line: 174, size: 192, elements: !1456)
!1456 = !{!1457, !1465}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !33, line: 175, baseType: !1458, size: 192)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !33, line: 175, size: 192, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1458, file: !33, line: 176, baseType: !54, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1458, file: !33, line: 177, baseType: !43, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1458, file: !33, line: 178, baseType: !43, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1458, file: !33, line: 179, baseType: !43, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1458, file: !33, line: 180, baseType: !43, size: 32, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1455, file: !33, line: 182, baseType: !728, size: 128, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1452, file: !33, line: 184, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1469, line: 26, size: 256, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1468, file: !1469, line: 27, baseType: !7, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1468, file: !1469, line: 28, baseType: !1473, size: 192, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1474, line: 43, size: 192, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !1474, line: 44, baseType: !684, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1473, file: !1474, line: 45, baseType: !118, size: 128, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1452, file: !33, line: 185, baseType: !54, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1452, file: !33, line: 186, baseType: !1480, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !33, line: 204, size: 960, elements: !1482)
!1482 = !{!1483, !1484, !1488, !1495}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1481, file: !33, line: 205, baseType: !1441, size: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1481, file: !33, line: 206, baseType: !1485, size: 64, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1447, !1480}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1481, file: !33, line: 207, baseType: !1489, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1481, file: !33, line: 209, baseType: !1496, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!43, !1492, !54}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1452, file: !33, line: 187, baseType: !1447, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1452, file: !33, line: 188, baseType: !1501, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1452, file: !33, line: 189, baseType: !1503, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !33, line: 157, size: 256, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1504, file: !33, line: 158, baseType: !863, size: 192, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1504, file: !33, line: 159, baseType: !1492, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1452, file: !33, line: 190, baseType: !578, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1449, file: !33, line: 196, baseType: !995, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1270, file: !1271, line: 100, baseType: !1492, size: 64, offset: 3776)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1270, file: !1271, line: 102, baseType: !1512, size: 64, offset: 3840)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1271, line: 107, size: 1152, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1523}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1513, file: !1271, line: 108, baseType: !582, size: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1513, file: !1271, line: 109, baseType: !1269, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1513, file: !1271, line: 110, baseType: !395, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1513, file: !1271, line: 111, baseType: !70, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1513, file: !1271, line: 112, baseType: !1520, size: 640, offset: 256)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 640, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 10)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1513, file: !1271, line: 113, baseType: !1524, size: 256, offset: 896)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !782)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1270, file: !1271, line: 103, baseType: !1526, size: 640, offset: 3904)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 640, elements: !1521)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1270, file: !1271, line: 104, baseType: !1528, size: 256, offset: 4544)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !782)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1113, file: !144, line: 904, baseType: !1136, size: 64, offset: 9280)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1113, file: !144, line: 906, baseType: !1531, size: 64, offset: 9344)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !144, line: 906, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1113, file: !144, line: 930, baseType: !70, size: 32, offset: 9408)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1113, file: !144, line: 933, baseType: !70, size: 32, offset: 9440)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1113, file: !144, line: 935, baseType: !1536, size: 64, offset: 9472)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1536, file: !129, line: 104, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1113, file: !144, line: 940, baseType: !675, size: 64, offset: 9536)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1113, file: !144, line: 942, baseType: !1429, size: 256, offset: 9600)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1110, file: !144, line: 986, baseType: !1544, offset: 10240)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: -1)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !815, file: !816, line: 882, baseType: !1109, size: 64, offset: 9792)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !815, file: !816, line: 884, baseType: !43, size: 32, offset: 9856)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !815, file: !816, line: 885, baseType: !43, size: 32, offset: 9888)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !815, file: !816, line: 886, baseType: !43, size: 32, offset: 9920)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !815, file: !816, line: 888, baseType: !43, size: 32, offset: 9952)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !815, file: !816, line: 890, baseType: !60, size: 64, offset: 9984)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !815, file: !816, line: 893, baseType: !7, size: 32, offset: 10048)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !815, file: !816, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !815, file: !816, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !815, file: !816, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !815, file: !816, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !815, file: !816, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !815, file: !816, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !815, file: !816, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !815, file: !816, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !815, file: !816, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !815, file: !816, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !815, file: !816, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !815, file: !816, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !815, file: !816, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !815, file: !816, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !815, file: !816, line: 969, baseType: !60, size: 64, offset: 10176)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !815, file: !816, line: 971, baseType: !1570, size: 448, offset: 10240)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !1571)
!1571 = !{!1572, !1573, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1570, file: !27, line: 26, baseType: !60, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1570, file: !27, line: 27, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!350, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !27, line: 28, baseType: !1579, size: 320, offset: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !27, line: 28, size: 320, elements: !1580)
!1580 = !{!1581, !1591, !1616}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1579, file: !27, line: 37, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !27, line: 30, size: 320, elements: !1583)
!1583 = !{!1584, !1586, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1582, file: !27, line: 31, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1582, file: !27, line: 32, baseType: !458, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1582, file: !27, line: 33, baseType: !458, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1582, file: !27, line: 34, baseType: !458, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1582, file: !27, line: 35, baseType: !462, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1582, file: !27, line: 36, baseType: !1585, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1579, file: !27, line: 47, baseType: !1592, size: 192)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !27, line: 39, size: 192, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1615}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1592, file: !27, line: 40, baseType: !980, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1592, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !27, line: 42, baseType: !1597, size: 64, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !27, line: 42, size: 64, elements: !1598)
!1598 = !{!1599, !1607}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1597, file: !27, line: 43, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1602, line: 7, size: 128, elements: !1603)
!1602 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1603 = !{!1604, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1601, file: !1602, line: 8, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !58, line: 93, baseType: !64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1601, file: !1602, line: 9, baseType: !64, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1597, file: !27, line: 44, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1610, line: 7, size: 64, elements: !1611)
!1610 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1611 = !{!1612, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1609, file: !1610, line: 8, baseType: !1613, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1610, line: 5, baseType: !1210)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1609, file: !1610, line: 9, baseType: !1210, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1592, file: !27, line: 46, baseType: !462, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1579, file: !27, line: 55, baseType: !1617, size: 256)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !27, line: 49, size: 256, elements: !1618)
!1618 = !{!1619, !1622, !1623, !1624, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1617, file: !27, line: 50, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !27, line: 14, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1617, file: !27, line: 51, baseType: !43, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1617, file: !27, line: 52, baseType: !43, size: 32, offset: 96)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1617, file: !27, line: 53, baseType: !60, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1617, file: !27, line: 54, baseType: !60, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !815, file: !816, line: 973, baseType: !1627, size: 32, offset: 10688)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !58, line: 28, baseType: !43)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !815, file: !816, line: 974, baseType: !1627, size: 32, offset: 10720)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !815, file: !816, line: 978, baseType: !60, size: 64, offset: 10752)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !815, file: !816, line: 987, baseType: !814, size: 64, offset: 10816)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !815, file: !816, line: 990, baseType: !814, size: 64, offset: 10880)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !815, file: !816, line: 995, baseType: !118, size: 128, offset: 10944)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !815, file: !816, line: 996, baseType: !118, size: 128, offset: 11072)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !815, file: !816, line: 997, baseType: !814, size: 64, offset: 11200)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !815, file: !816, line: 1005, baseType: !118, size: 128, offset: 11264)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !815, file: !816, line: 1006, baseType: !118, size: 128, offset: 11392)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !815, file: !816, line: 1009, baseType: !769, size: 64, offset: 11520)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !815, file: !816, line: 1010, baseType: !1640, size: 512, offset: 11584)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 512, elements: !782)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !815, file: !816, line: 1011, baseType: !118, size: 128, offset: 12096)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !815, file: !816, line: 1012, baseType: !118, size: 128, offset: 12224)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !815, file: !816, line: 1014, baseType: !1467, size: 64, offset: 12352)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !815, file: !816, line: 1017, baseType: !653, size: 64, offset: 12416)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !815, file: !816, line: 1020, baseType: !653, size: 64, offset: 12480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !815, file: !816, line: 1023, baseType: !41, size: 64, offset: 12544)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !815, file: !816, line: 1025, baseType: !462, size: 64, offset: 12608)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !815, file: !816, line: 1026, baseType: !462, size: 64, offset: 12672)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !815, file: !816, line: 1031, baseType: !462, size: 64, offset: 12736)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !815, file: !816, line: 1032, baseType: !1651, size: 192, offset: 12800)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !816, line: 324, size: 192, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1651, file: !816, line: 326, baseType: !462, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1651, file: !816, line: 327, baseType: !462, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1651, file: !816, line: 328, baseType: !684, size: 32, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !815, file: !816, line: 1041, baseType: !60, size: 64, offset: 12992)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !815, file: !816, line: 1042, baseType: !60, size: 64, offset: 13056)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !815, file: !816, line: 1045, baseType: !462, size: 64, offset: 13120)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !815, file: !816, line: 1048, baseType: !462, size: 64, offset: 13184)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !815, file: !816, line: 1051, baseType: !60, size: 64, offset: 13248)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !815, file: !816, line: 1052, baseType: !60, size: 64, offset: 13312)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !815, file: !816, line: 1055, baseType: !1663, size: 640, offset: 13376)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1664, line: 132, size: 640, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1665 = !{!1666, !1672, !1673}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1663, file: !1664, line: 133, baseType: !1667, size: 576)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1668, size: 576, elements: !316)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1664, line: 117, size: 192, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1668, file: !1664, line: 118, baseType: !462, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1668, file: !1664, line: 119, baseType: !989, size: 128, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1663, file: !1664, line: 134, baseType: !7, size: 32, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1663, file: !1664, line: 135, baseType: !7, size: 32, offset: 608)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !815, file: !816, line: 1058, baseType: !1675, size: 448, offset: 14016)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1664, line: 144, size: 448, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1675, file: !1664, line: 145, baseType: !728, size: 128, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1675, file: !1664, line: 146, baseType: !671, size: 256, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1675, file: !1664, line: 147, baseType: !7, size: 32, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !815, file: !816, line: 1064, baseType: !1681, size: 64, offset: 14464)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1684, line: 110, size: 1472, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1735, !1736, !1737, !1745}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1683, file: !1684, line: 111, baseType: !675, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !1684, line: 112, baseType: !395, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1683, file: !1684, line: 113, baseType: !404, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1683, file: !1684, line: 114, baseType: !395, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1683, file: !1684, line: 115, baseType: !404, size: 32, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1683, file: !1684, line: 116, baseType: !395, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1683, file: !1684, line: 117, baseType: !404, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1683, file: !1684, line: 118, baseType: !395, size: 32, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1683, file: !1684, line: 119, baseType: !404, size: 32, offset: 288)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1683, file: !1684, line: 120, baseType: !7, size: 32, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1683, file: !1684, line: 121, baseType: !1697, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1698, line: 24, baseType: !1699)
!1698 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1698, line: 24, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1699, file: !1698, line: 24, baseType: !462, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1683, file: !1684, line: 122, baseType: !1697, size: 64, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1683, file: !1684, line: 123, baseType: !1697, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1683, file: !1684, line: 124, baseType: !1697, size: 64, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1683, file: !1684, line: 125, baseType: !1697, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1683, file: !1684, line: 127, baseType: !108, size: 8, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1683, file: !1684, line: 129, baseType: !1318, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1683, file: !1684, line: 130, baseType: !1318, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1683, file: !1684, line: 131, baseType: !1318, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1683, file: !1684, line: 132, baseType: !1318, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1683, file: !1684, line: 135, baseType: !41, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1683, file: !1684, line: 137, baseType: !1713, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1715, line: 14, size: 1088, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1714, file: !1715, line: 15, baseType: !773, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1714, file: !1715, line: 17, baseType: !1202, size: 320, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1714, file: !1715, line: 19, baseType: !60, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1714, file: !1715, line: 20, baseType: !675, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1714, file: !1715, line: 23, baseType: !582, size: 128, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1714, file: !1715, line: 24, baseType: !395, size: 32, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1714, file: !1715, line: 29, baseType: !675, size: 64, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1714, file: !1715, line: 36, baseType: !1725, size: 320, offset: 768)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1726, line: 15, size: 320, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1725, file: !1726, line: 16, baseType: !684, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1725, file: !1726, line: 18, baseType: !43, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1725, file: !1726, line: 19, baseType: !43, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1725, file: !1726, line: 20, baseType: !43, size: 32, offset: 96)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1725, file: !1726, line: 21, baseType: !43, size: 32, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1725, file: !1726, line: 22, baseType: !60, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1726, line: 23, baseType: !60, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1683, file: !1684, line: 138, baseType: !1269, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1683, file: !1684, line: 139, baseType: !1512, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1683, file: !1684, line: 140, baseType: !1738, size: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1684, line: 25, size: 64, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1739, file: !1684, line: 26, baseType: !70, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1739, file: !1684, line: 27, baseType: !43, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1739, file: !1684, line: 28, baseType: !1744, offset: 64)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !1545)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1684, line: 142, baseType: !1746, size: 128, offset: 1344)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1684, line: 142, size: 128, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1746, file: !1684, line: 143, baseType: !43, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1746, file: !1684, line: 144, baseType: !728, size: 128, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !815, file: !816, line: 1067, baseType: !1681, size: 64, offset: 14528)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !815, file: !816, line: 1070, baseType: !1681, size: 64, offset: 14592)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !815, file: !816, line: 1074, baseType: !1318, size: 64, offset: 14656)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !815, file: !816, line: 1084, baseType: !1754, size: 128, offset: 14720)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 16)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !815, file: !816, line: 1086, baseType: !1758, size: 64, offset: 14848)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !816, line: 55, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !815, file: !816, line: 1089, baseType: !1761, size: 64, offset: 14912)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1762, line: 12, size: 64, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1761, file: !1762, line: 13, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1762, line: 8, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !815, file: !816, line: 1090, baseType: !1768, size: 128, offset: 14976)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1769, line: 13, size: 128, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1768, file: !1769, line: 14, baseType: !118, size: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !815, file: !816, line: 1097, baseType: !1773, size: 64, offset: 15104)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !816, line: 50, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !815, file: !816, line: 1100, baseType: !1776, size: 64, offset: 15168)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !816, line: 1100, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !815, file: !816, line: 1103, baseType: !1779, size: 64, offset: 15232)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !816, line: 53, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !815, file: !816, line: 1107, baseType: !1782, size: 64, offset: 15296)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1784, line: 31, size: 576, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1785 = !{!1786, !1787, !1790, !1793, !1796, !1797, !1800, !1803, !1804}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1783, file: !1784, line: 32, baseType: !773, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1783, file: !1784, line: 33, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1784, line: 9, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1783, file: !1784, line: 34, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1784, line: 10, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1783, file: !1784, line: 35, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1784, line: 8, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1783, file: !1784, line: 36, baseType: !793, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1783, file: !1784, line: 37, baseType: !1798, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1320, line: 34, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1783, file: !1784, line: 38, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1784, line: 38, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1783, file: !1784, line: 39, baseType: !1801, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1783, file: !1784, line: 40, baseType: !1805, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1784, line: 12, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !815, file: !816, line: 1110, baseType: !1808, size: 64, offset: 15360)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1810, line: 93, size: 8768, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1862, !1871, !1872, !1874, !1875, !1876, !1879, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1917, !1918, !1925, !1935, !1938, !1939, !1942, !1943, !1944, !1945, !1946, !1947}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1809, file: !1810, line: 94, baseType: !773, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1809, file: !1810, line: 95, baseType: !70, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1809, file: !1810, line: 96, baseType: !43, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1809, file: !1810, line: 97, baseType: !43, size: 32, offset: 96)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1809, file: !1810, line: 98, baseType: !118, size: 128, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1809, file: !1810, line: 100, baseType: !75, size: 192, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1809, file: !1810, line: 103, baseType: !814, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1809, file: !1810, line: 106, baseType: !1820, size: 192, offset: 512)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1821, line: 32, size: 192, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1820, file: !1821, line: 33, baseType: !118, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1820, file: !1821, line: 34, baseType: !1825, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1826, line: 25, baseType: !1827)
!1826 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1826, line: 23, size: 64, elements: !1828)
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1827, file: !1826, line: 24, baseType: !1060, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1809, file: !1810, line: 109, baseType: !578, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1809, file: !1810, line: 112, baseType: !43, size: 32, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1809, file: !1810, line: 114, baseType: !43, size: 32, offset: 800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1809, file: !1810, line: 115, baseType: !814, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1809, file: !1810, line: 118, baseType: !43, size: 32, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 119, baseType: !7, size: 32, offset: 928)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1809, file: !1810, line: 121, baseType: !1837, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1810, line: 80, size: 448, elements: !1839)
!1839 = !{!1840, !1841, !1847}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1838, file: !1810, line: 81, baseType: !70, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1838, file: !1810, line: 82, baseType: !1842, size: 128, offset: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1810, line: 75, size: 128, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1842, file: !1810, line: 76, baseType: !814, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1842, file: !1810, line: 77, baseType: !1846, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1838, file: !1810, line: 83, baseType: !1468, size: 256, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1809, file: !1810, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1809, file: !1810, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1809, file: !1810, line: 138, baseType: !7, size: 32, offset: 1056)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1809, file: !1810, line: 139, baseType: !118, size: 128, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1809, file: !1810, line: 142, baseType: !933, size: 512, offset: 1216)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1809, file: !1810, line: 143, baseType: !941, size: 64, offset: 1728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1809, file: !1810, line: 150, baseType: !1855, size: 256, offset: 1792)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 256, elements: !1860)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1810, line: 38, size: 128, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1856, file: !1810, line: 39, baseType: !462, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1856, file: !1810, line: 40, baseType: !462, size: 64, offset: 64)
!1860 = !{!1861}
!1861 = !DISubrange(count: 2)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1809, file: !1810, line: 156, baseType: !1863, size: 192, offset: 2048)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1810, line: 66, size: 192, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1863, file: !1810, line: 67, baseType: !1866, size: 192)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1810, line: 47, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1866, file: !1810, line: 48, baseType: !677, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1866, file: !1810, line: 49, baseType: !677, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1866, file: !1810, line: 50, baseType: !677, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1809, file: !1810, line: 160, baseType: !1663, size: 640, offset: 2240)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1809, file: !1810, line: 163, baseType: !1873, size: 256, offset: 2880)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 256, elements: !782)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1809, file: !1810, line: 169, baseType: !769, size: 64, offset: 3136)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1809, file: !1810, line: 172, baseType: !43, size: 32, offset: 3200)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1809, file: !1810, line: 174, baseType: !1877, size: 64, offset: 3264)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1810, line: 174, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1809, file: !1810, line: 185, baseType: !1880, size: 64, offset: 3328)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !431, line: 860, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 853, size: 64, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1881, file: !431, line: 858, baseType: !430, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1881, file: !431, line: 859, baseType: !80, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1809, file: !1810, line: 186, baseType: !462, size: 64, offset: 3392)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1809, file: !1810, line: 186, baseType: !462, size: 64, offset: 3456)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1809, file: !1810, line: 186, baseType: !462, size: 64, offset: 3520)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1809, file: !1810, line: 186, baseType: !462, size: 64, offset: 3584)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1809, file: !1810, line: 187, baseType: !462, size: 64, offset: 3648)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1809, file: !1810, line: 188, baseType: !462, size: 64, offset: 3712)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1809, file: !1810, line: 189, baseType: !1651, size: 192, offset: 3776)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1809, file: !1810, line: 190, baseType: !60, size: 64, offset: 3968)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1809, file: !1810, line: 190, baseType: !60, size: 64, offset: 4032)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1809, file: !1810, line: 190, baseType: !60, size: 64, offset: 4096)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1809, file: !1810, line: 190, baseType: !60, size: 64, offset: 4160)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1809, file: !1810, line: 191, baseType: !60, size: 64, offset: 4224)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1809, file: !1810, line: 191, baseType: !60, size: 64, offset: 4288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1809, file: !1810, line: 191, baseType: !60, size: 64, offset: 4352)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1809, file: !1810, line: 191, baseType: !60, size: 64, offset: 4416)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1809, file: !1810, line: 192, baseType: !60, size: 64, offset: 4480)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1809, file: !1810, line: 192, baseType: !60, size: 64, offset: 4544)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1809, file: !1810, line: 192, baseType: !60, size: 64, offset: 4608)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1809, file: !1810, line: 192, baseType: !60, size: 64, offset: 4672)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1809, file: !1810, line: 193, baseType: !60, size: 64, offset: 4736)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1809, file: !1810, line: 193, baseType: !60, size: 64, offset: 4800)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1809, file: !1810, line: 194, baseType: !1907, size: 448, offset: 4864)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1908, line: 12, size: 448, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1907, file: !1908, line: 15, baseType: !462, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1907, file: !1908, line: 17, baseType: !462, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1907, file: !1908, line: 19, baseType: !462, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1907, file: !1908, line: 21, baseType: !462, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1907, file: !1908, line: 29, baseType: !462, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1907, file: !1908, line: 35, baseType: !462, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1907, file: !1908, line: 44, baseType: !462, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1809, file: !1810, line: 202, baseType: !464, size: 64, offset: 5312)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1809, file: !1810, line: 213, baseType: !1919, size: 2048, offset: 5376)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1920, size: 2048, elements: !1755)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1921, line: 43, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1920, file: !1921, line: 44, baseType: !59, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1920, file: !1921, line: 45, baseType: !59, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1809, file: !1810, line: 216, baseType: !1926, size: 448, offset: 7424)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1810, line: 30, size: 448, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1926, file: !1810, line: 31, baseType: !43, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1926, file: !1810, line: 32, baseType: !350, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1926, file: !1810, line: 33, baseType: !60, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1926, file: !1810, line: 34, baseType: !462, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1926, file: !1810, line: 34, baseType: !462, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1926, file: !1810, line: 35, baseType: !60, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1926, file: !1810, line: 35, baseType: !60, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1809, file: !1810, line: 219, baseType: !1936, size: 64, offset: 7872)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1810, line: 219, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1809, file: !1810, line: 222, baseType: !7, size: 32, offset: 7936)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1809, file: !1810, line: 223, baseType: !1940, size: 64, offset: 8000)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1810, line: 223, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1809, file: !1810, line: 230, baseType: !1314, size: 8, offset: 8064)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1809, file: !1810, line: 231, baseType: !1262, size: 16, offset: 8080)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1809, file: !1810, line: 232, baseType: !1262, size: 16, offset: 8096)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1809, file: !1810, line: 234, baseType: !1109, size: 64, offset: 8128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1809, file: !1810, line: 237, baseType: !671, size: 256, offset: 8192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1809, file: !1810, line: 243, baseType: !1164, size: 320, offset: 8448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !815, file: !816, line: 1111, baseType: !1949, size: 64, offset: 15424)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1810, line: 20, size: 16640, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1950, file: !1810, line: 21, baseType: !80, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1950, file: !1810, line: 22, baseType: !773, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1950, file: !1810, line: 23, baseType: !75, size: 192, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1950, file: !1810, line: 24, baseType: !1956, size: 16384, offset: 256)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1957, size: 16384, elements: !320)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1821, line: 51, size: 256, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1957, file: !1821, line: 52, baseType: !1960, size: 256)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1821, line: 37, size: 256, elements: !1961)
!1961 = !{!1962, !1969, !1970, !1976}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1960, file: !1821, line: 39, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1964, line: 83, baseType: !1965)
!1964 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1964, line: 82, baseType: !1967)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !43}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1960, file: !1821, line: 40, baseType: !60, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1960, file: !1821, line: 46, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1964, line: 86, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1964, line: 85, baseType: !1974)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1960, file: !1821, line: 48, baseType: !1825, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !815, file: !816, line: 1112, baseType: !1825, size: 64, offset: 15488)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !815, file: !816, line: 1113, baseType: !1825, size: 64, offset: 15552)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !815, file: !816, line: 1115, baseType: !1825, size: 64, offset: 15616)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !815, file: !816, line: 1116, baseType: !1820, size: 192, offset: 15680)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !815, file: !816, line: 1117, baseType: !60, size: 64, offset: 15872)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !815, file: !816, line: 1118, baseType: !56, size: 64, offset: 15936)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !815, file: !816, line: 1119, baseType: !7, size: 32, offset: 16000)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !815, file: !816, line: 1121, baseType: !731, size: 64, offset: 16064)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !815, file: !816, line: 1125, baseType: !1986, size: 64, offset: 16128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !816, line: 43, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !815, file: !816, line: 1127, baseType: !395, size: 32, offset: 16192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !815, file: !816, line: 1128, baseType: !7, size: 32, offset: 16224)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !815, file: !816, line: 1130, baseType: !1991, size: 128, offset: 16256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1992, line: 37, size: 128, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1991, file: !1992, line: 38, baseType: !43, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1991, file: !1992, line: 39, baseType: !70, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1991, file: !1992, line: 40, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1992, line: 24, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !815, file: !816, line: 1131, baseType: !2000, size: 256, offset: 16384)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2001, line: 12, size: 256, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2000, file: !2001, line: 13, baseType: !315, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2000, file: !2001, line: 14, baseType: !60, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2000, file: !2001, line: 15, baseType: !60, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2000, file: !2001, line: 16, baseType: !1314, size: 8, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !815, file: !816, line: 1134, baseType: !462, size: 64, offset: 16640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !815, file: !816, line: 1135, baseType: !462, size: 64, offset: 16704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !815, file: !816, line: 1138, baseType: !80, size: 32, offset: 16768)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !815, file: !816, line: 1141, baseType: !684, size: 32, offset: 16800)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !815, file: !816, line: 1143, baseType: !2012, size: 64, offset: 16832)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !816, line: 735, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2012, file: !816, line: 736, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !815, file: !816, line: 1147, baseType: !992, size: 128, offset: 16896)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !815, file: !816, line: 1149, baseType: !814, size: 64, offset: 17024)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !815, file: !816, line: 1151, baseType: !2019, size: 64, offset: 17088)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !816, line: 1151, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !815, file: !816, line: 1188, baseType: !41, size: 64, offset: 17152)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !815, file: !816, line: 1191, baseType: !2023, size: 64, offset: 17216)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !816, line: 44, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !815, file: !816, line: 1194, baseType: !2026, size: 64, offset: 17280)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !816, line: 45, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !815, file: !816, line: 1197, baseType: !2029, size: 64, offset: 17344)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !816, line: 61, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !815, file: !816, line: 1199, baseType: !2032, size: 64, offset: 17408)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2034, line: 99, size: 128, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2035 = !{!2036, !2037, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2033, file: !2034, line: 100, baseType: !675, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2033, file: !2034, line: 101, baseType: !70, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2033, file: !2034, line: 103, baseType: !47, size: 16, offset: 96)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !815, file: !816, line: 1202, baseType: !2040, size: 64, offset: 17472)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !816, line: 48, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !815, file: !816, line: 1205, baseType: !60, size: 64, offset: 17536)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !815, file: !816, line: 1206, baseType: !2044, size: 64, offset: 17600)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1821, line: 14, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1821, line: 12, size: 384, elements: !2047)
!2047 = !{!2048}
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !1821, line: 13, baseType: !2049, size: 384)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !1821, line: 13, size: 384, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2049, file: !1821, line: 13, baseType: !43, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2049, file: !1821, line: 13, baseType: !43, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2049, file: !1821, line: 13, baseType: !43, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2049, file: !1821, line: 13, baseType: !2055, size: 256, offset: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2056, line: 37, size: 256, elements: !2057)
!2056 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2057 = !{!2058, !2063, !2076, !2082, !2091, !2118, !2123}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2055, file: !2056, line: 42, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 39, size: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2059, file: !2056, line: 40, baseType: !1628, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2059, file: !2056, line: 41, baseType: !401, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2055, file: !2056, line: 50, baseType: !2064, size: 192)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 45, size: 192, elements: !2065)
!2065 = !{!2066, !2068, !2069, !2075}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2064, file: !2056, line: 46, baseType: !2067, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !58, line: 95, baseType: !43)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2064, file: !2056, line: 47, baseType: !43, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2064, file: !2056, line: 48, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2056, line: 11, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2056, line: 8, size: 64, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2071, file: !2056, line: 9, baseType: !43, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2071, file: !2056, line: 10, baseType: !41, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2064, file: !2056, line: 49, baseType: !43, size: 32, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2055, file: !2056, line: 57, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 53, size: 128, elements: !2078)
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2077, file: !2056, line: 54, baseType: !1628, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2077, file: !2056, line: 55, baseType: !401, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2077, file: !2056, line: 56, baseType: !2070, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2055, file: !2056, line: 66, baseType: !2083, size: 256)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 60, size: 256, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088, !2090}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2083, file: !2056, line: 61, baseType: !1628, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2083, file: !2056, line: 62, baseType: !401, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2083, file: !2056, line: 63, baseType: !43, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2083, file: !2056, line: 64, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !58, line: 94, baseType: !349)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2083, file: !2056, line: 65, baseType: !2089, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2055, file: !2056, line: 105, baseType: !2092, size: 256)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 69, size: 256, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2092, file: !2056, line: 70, baseType: !41, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !2056, line: 79, baseType: !2096, size: 192, offset: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2056, line: 79, size: 192, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2107, !2112}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2096, file: !2056, line: 81, baseType: !43, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2096, file: !2056, line: 86, baseType: !1262, size: 16)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2096, file: !2056, line: 92, baseType: !2101, size: 192)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !2056, line: 88, size: 192, elements: !2102)
!2102 = !{!2103, !2105, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2101, file: !2056, line: 89, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !976)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2101, file: !2056, line: 90, baseType: !41, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2101, file: !2056, line: 91, baseType: !41, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2096, file: !2056, line: 97, baseType: !2108, size: 96)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !2056, line: 94, size: 96, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2108, file: !2056, line: 95, baseType: !2104, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2108, file: !2056, line: 96, baseType: !459, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2096, file: !2056, line: 103, baseType: !2113, size: 128)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !2056, line: 99, size: 128, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2113, file: !2056, line: 100, baseType: !60, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2113, file: !2056, line: 101, baseType: !459, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2113, file: !2056, line: 102, baseType: !459, size: 32, offset: 96)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2055, file: !2056, line: 111, baseType: !2119, size: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 108, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2119, file: !2056, line: 109, baseType: !350, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2119, file: !2056, line: 110, baseType: !43, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2055, file: !2056, line: 118, baseType: !2124, size: 128)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2056, line: 114, size: 128, elements: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2124, file: !2056, line: 115, baseType: !41, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2124, file: !2056, line: 116, baseType: !43, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2124, file: !2056, line: 117, baseType: !7, size: 32, offset: 96)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !815, file: !816, line: 1208, baseType: !1907, size: 448, offset: 17664)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !815, file: !816, line: 1215, baseType: !462, size: 64, offset: 18112)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !815, file: !816, line: 1217, baseType: !462, size: 64, offset: 18176)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !815, file: !816, line: 1219, baseType: !462, size: 64, offset: 18240)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !815, file: !816, line: 1223, baseType: !2134, size: 64, offset: 18304)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2135, line: 99, baseType: !2136)
!2135 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2135, line: 99, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2136, file: !2135, line: 99, baseType: !1060, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !815, file: !816, line: 1225, baseType: !430, size: 32, offset: 18368)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !815, file: !816, line: 1226, baseType: !43, size: 32, offset: 18400)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !815, file: !816, line: 1227, baseType: !43, size: 32, offset: 18432)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !815, file: !816, line: 1231, baseType: !2143, size: 64, offset: 18496)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !816, line: 1231, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !815, file: !816, line: 1233, baseType: !118, size: 128, offset: 18560)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !815, file: !816, line: 1240, baseType: !2147, size: 64, offset: 18688)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !816, line: 62, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !815, file: !816, line: 1242, baseType: !2150, size: 64, offset: 18752)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !816, line: 1242, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !815, file: !816, line: 1244, baseType: !118, size: 128, offset: 18816)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !815, file: !816, line: 1245, baseType: !2154, size: 64, offset: 18944)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !816, line: 51, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !815, file: !816, line: 1246, baseType: !671, size: 256, offset: 19008)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !815, file: !816, line: 1247, baseType: !7, size: 32, offset: 19264)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !815, file: !816, line: 1250, baseType: !2159, size: 64, offset: 19328)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !816, line: 57, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !815, file: !816, line: 1251, baseType: !671, size: 256, offset: 19392)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !815, file: !816, line: 1252, baseType: !118, size: 128, offset: 19648)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !815, file: !816, line: 1259, baseType: !2164, size: 64, offset: 19776)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !144, line: 717, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !815, file: !816, line: 1260, baseType: !1262, size: 16, offset: 19840)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !815, file: !816, line: 1261, baseType: !1262, size: 16, offset: 19856)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !815, file: !816, line: 1314, baseType: !2169, size: 64, offset: 19904)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2171, line: 62, size: 256, align: 256, elements: !2172)
!2171 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2170, file: !2171, line: 75, baseType: !459, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2170, file: !2171, line: 90, baseType: !459, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2170, file: !2171, line: 112, baseType: !463, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2170, file: !2171, line: 132, baseType: !459, size: 32, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2170, file: !2171, line: 140, baseType: !459, size: 32, offset: 160)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2170, file: !2171, line: 149, baseType: !459, size: 32, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2170, file: !2171, line: 154, baseType: !2180, offset: 224)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1545)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !815, file: !816, line: 1315, baseType: !458, size: 32, offset: 19968)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !815, file: !816, line: 1316, baseType: !458, size: 32, offset: 20000)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !815, file: !816, line: 1321, baseType: !60, size: 64, offset: 20032)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !815, file: !816, line: 1325, baseType: !43, size: 32, offset: 20096)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !815, file: !816, line: 1326, baseType: !43, size: 32, offset: 20128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !815, file: !816, line: 1327, baseType: !43, size: 32, offset: 20160)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !815, file: !816, line: 1328, baseType: !43, size: 32, offset: 20192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !815, file: !816, line: 1329, baseType: !728, size: 128, align: 64, offset: 20224)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !815, file: !816, line: 1332, baseType: !2190, size: 128, offset: 20352)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2191, line: 51, size: 128, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2192 = !{!2193, !2198, !2199}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2190, file: !2191, line: 60, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2195, line: 7, size: 64, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2194, file: !2195, line: 12, baseType: !1057, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2190, file: !2191, line: 63, baseType: !1314, size: 8, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2190, file: !2191, line: 70, baseType: !1314, size: 8, offset: 72)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !815, file: !816, line: 1335, baseType: !2201, size: 64, offset: 20480)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !816, line: 59, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !815, file: !816, line: 1337, baseType: !2204, size: 128, offset: 20544)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2191, line: 39, size: 128, elements: !2205)
!2205 = !{!2206, !2490, !2491}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2204, file: !2191, line: 40, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !144, line: 74, size: 512, align: 128, elements: !2209)
!2209 = !{!2210, !2211, !2484, !2489}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2208, file: !144, line: 75, baseType: !60, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !144, line: 83, baseType: !2212, size: 320, offset: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2208, file: !144, line: 83, size: 320, elements: !2213)
!2213 = !{!2214, !2235, !2249, !2253, !2483}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !144, line: 84, baseType: !2215, size: 320)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !144, line: 84, size: 320, elements: !2216)
!2216 = !{!2217, !2228, !2229, !2234}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !144, line: 90, baseType: !2218, size: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !144, line: 90, size: 128, elements: !2219)
!2219 = !{!2220, !2221, !2226, !2227}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2218, file: !144, line: 91, baseType: !118, size: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !144, line: 94, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !144, line: 94, size: 128, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2222, file: !144, line: 96, baseType: !41, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2222, file: !144, line: 98, baseType: !7, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2218, file: !144, line: 102, baseType: !118, size: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2218, file: !144, line: 103, baseType: !118, size: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2215, file: !144, line: 106, baseType: !385, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !144, line: 107, baseType: !2230, size: 64, offset: 192)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !144, line: 107, size: 64, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2230, file: !144, line: 108, baseType: !60, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2230, file: !144, line: 109, baseType: !60, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2215, file: !144, line: 117, baseType: !60, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !144, line: 119, baseType: !2236, size: 320)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !144, line: 119, size: 320, elements: !2237)
!2237 = !{!2238, !2239, !2242, !2243, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2236, file: !144, line: 124, baseType: !60, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2236, file: !144, line: 125, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !144, line: 125, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2236, file: !144, line: 126, baseType: !60, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2236, file: !144, line: 127, baseType: !60, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !144, line: 128, baseType: !2245, size: 64, offset: 256)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !144, line: 128, size: 64, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2245, file: !144, line: 133, baseType: !60, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2245, file: !144, line: 138, baseType: !675, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !144, line: 141, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !144, line: 141, size: 64, elements: !2251)
!2251 = !{!2252}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2250, file: !144, line: 142, baseType: !60, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !144, line: 144, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !144, line: 144, size: 128, elements: !2255)
!2255 = !{!2256, !2482}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2254, file: !144, line: 146, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !2259)
!2259 = !{!2260, !2270, !2291, !2292, !2293, !2294, !2295, !2464, !2465, !2466}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2258, file: !14, line: 127, baseType: !2261, size: 384)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !2262)
!2262 = !{!2263, !2264, !2266, !2267, !2268, !2269}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2261, file: !14, line: 22, baseType: !60, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2261, file: !14, line: 23, baseType: !2265, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2261, file: !14, line: 24, baseType: !2265, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2261, file: !14, line: 25, baseType: !60, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2261, file: !14, line: 26, baseType: !60, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2261, file: !14, line: 27, baseType: !60, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2258, file: !14, line: 128, baseType: !2271, size: 128, offset: 384)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2272, line: 105, size: 128, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2271, file: !2272, line: 110, baseType: !60, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2271, file: !2272, line: 118, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2272, line: 95, size: 448, elements: !2278)
!2278 = !{!2279, !2280, !2286, !2287, !2288, !2289, !2290}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2277, file: !2272, line: 96, baseType: !675, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2277, file: !2272, line: 97, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2272, line: 60, baseType: !2283)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2277, file: !2272, line: 98, baseType: !2281, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2277, file: !2272, line: 99, baseType: !1314, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2277, file: !2272, line: 100, baseType: !1314, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2277, file: !2272, line: 101, baseType: !728, size: 128, align: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2277, file: !2272, line: 102, baseType: !2285, size: 64, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2258, file: !14, line: 129, baseType: !1468, size: 256, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2258, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2258, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2258, file: !14, line: 132, baseType: !60, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2258, file: !14, line: 133, baseType: !2296, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2298)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !2299)
!2299 = !{!2300, !2304, !2460}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2298, file: !14, line: 83, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2207}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2298, file: !14, line: 89, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !144, line: 1184, baseType: !7)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2311, line: 512, size: 896, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2312 = !{!2313, !2427, !2428, !2435, !2442, !2452, !2453, !2454, !2456, !2458}
!2313 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !2311, line: 513, baseType: !2314, size: 320)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2310, file: !2311, line: 513, size: 320, elements: !2315)
!2315 = !{!2316, !2423, !2424, !2425, !2426}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2314, file: !2311, line: 514, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !144, line: 625, size: 1344, elements: !2319)
!2319 = !{!2320, !2329, !2330, !2336, !2343, !2344, !2349, !2350, !2355, !2356, !2359, !2416, !2417, !2418, !2419, !2420, !2421}
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !144, line: 628, baseType: !2321, size: 128)
!2321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !144, line: 628, size: 128, elements: !2322)
!2322 = !{!2323, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !144, line: 629, baseType: !2324, size: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2321, file: !144, line: 629, size: 128, elements: !2325)
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2324, file: !144, line: 631, baseType: !60, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2324, file: !144, line: 632, baseType: !60, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2321, file: !144, line: 635, baseType: !728, size: 128, align: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2318, file: !144, line: 639, baseType: !1109, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2318, file: !144, line: 640, baseType: !2331, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1145, line: 297, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1145, line: 297, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2332, file: !1145, line: 297, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1150, line: 19, baseType: !60)
!2336 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !144, line: 646, baseType: !2337, size: 64, offset: 256)
!2337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !144, line: 646, size: 64, elements: !2338)
!2338 = !{!2339, !2342}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2337, file: !144, line: 647, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !144, line: 542, baseType: !60)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2337, file: !144, line: 648, baseType: !2341, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2318, file: !144, line: 666, baseType: !43, size: 32, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2318, file: !144, line: 667, baseType: !2345, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !144, line: 579, size: 320, elements: !2347)
!2347 = !{!2348}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2346, file: !144, line: 580, baseType: !1164, size: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2318, file: !144, line: 670, baseType: !1314, size: 8, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2318, file: !144, line: 681, baseType: !2351, size: 256, offset: 512)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2318, file: !144, line: 678, size: 256, elements: !2352)
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2351, file: !144, line: 679, baseType: !863, size: 192, align: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2351, file: !144, line: 680, baseType: !60, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2318, file: !144, line: 689, baseType: !118, size: 128, offset: 768)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2318, file: !144, line: 691, baseType: !2357, size: 64, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !144, line: 691, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2318, file: !144, line: 694, baseType: !2360, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2311, line: 563, size: 1024, elements: !2363)
!2363 = !{!2364, !2368, !2369, !2373, !2377, !2381, !2382, !2386, !2390, !2394, !2395, !2396, !2400, !2404, !2408, !2412}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2362, file: !2311, line: 564, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2317}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2362, file: !2311, line: 569, baseType: !2365, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2362, file: !2311, line: 571, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!43, !2317, !60}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2362, file: !2311, line: 572, baseType: !2374, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!43, !2317}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2362, file: !2311, line: 578, baseType: !2378, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!43, !2317, !60, !60, !60}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2362, file: !2311, line: 580, baseType: !2305, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2362, file: !2311, line: 581, baseType: !2383, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!2308, !2309, !7}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2362, file: !2311, line: 582, baseType: !2387, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2308, !2309, !60, !60}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2362, file: !2311, line: 584, baseType: !2391, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!60, !2317}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2362, file: !2311, line: 588, baseType: !2305, size: 64, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2362, file: !2311, line: 591, baseType: !2305, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2362, file: !2311, line: 597, baseType: !2397, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!43, !2317, !60, !41, !43, !43}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2362, file: !2311, line: 603, baseType: !2401, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!37, !2317}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2362, file: !2311, line: 613, baseType: !2405, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!43, !2317, !2164}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2362, file: !2311, line: 625, baseType: !2409, size: 64, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2164, !2317, !60}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2362, file: !2311, line: 633, baseType: !2413, size: 64, offset: 960)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2207, !2317, !60}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2318, file: !144, line: 697, baseType: !60, size: 64, offset: 1024)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2318, file: !144, line: 699, baseType: !1136, size: 64, offset: 1088)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2318, file: !144, line: 700, baseType: !41, size: 64, offset: 1152)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2318, file: !144, line: 711, baseType: !675, size: 64, offset: 1216)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2318, file: !144, line: 717, baseType: !2164, size: 64, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2318, file: !144, line: 722, baseType: !2422, offset: 1344)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !144, line: 570, elements: !590)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2314, file: !2311, line: 515, baseType: !807, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2314, file: !2311, line: 516, baseType: !60, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2314, file: !2311, line: 517, baseType: !60, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2314, file: !2311, line: 518, baseType: !60, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 520, baseType: !143, size: 32, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2310, file: !2311, line: 522, baseType: !2429, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1150, line: 22, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 22, size: 64, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2431, file: !1150, line: 22, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1150, line: 15, baseType: !60)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2310, file: !2311, line: 524, baseType: !2436, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1145, line: 372, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 372, size: 64, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2438, file: !1145, line: 372, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1150, line: 16, baseType: !60)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !2311, line: 527, baseType: !2443, size: 64, offset: 512)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2310, file: !2311, line: 527, size: 64, elements: !2444)
!2444 = !{!2445, !2451}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2443, file: !2311, line: 528, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1150, line: 21, baseType: !2447)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 21, size: 64, elements: !2448)
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2447, file: !1150, line: 21, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1150, line: 14, baseType: !60)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2443, file: !2311, line: 529, baseType: !2430, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2310, file: !2311, line: 534, baseType: !2207, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2310, file: !2311, line: 535, baseType: !2207, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2310, file: !2311, line: 541, baseType: !2455, size: 64, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2310, file: !2311, line: 545, baseType: !2457, size: 64, offset: 768)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2310, file: !2311, line: 549, baseType: !2459, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1145, line: 520, baseType: !2207)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2298, file: !14, line: 100, baseType: !2461, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!43, !2257, !60, !60, !43}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2258, file: !14, line: 134, baseType: !41, size: 64, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2258, file: !14, line: 135, baseType: !43, size: 32, offset: 1024)
!2466 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !14, line: 136, baseType: !2467, size: 128, offset: 1088)
!2467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !14, line: 136, size: 128, elements: !2468)
!2468 = !{!2469, !2475}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2467, file: !14, line: 137, baseType: !2470, size: 128)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2471, line: 6, size: 128, elements: !2472)
!2471 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2472 = !{!2473, !2474}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2470, file: !2471, line: 7, baseType: !462, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2470, file: !2471, line: 8, baseType: !462, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2467, file: !14, line: 138, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2467, file: !14, line: 138, elements: !2477)
!2477 = !{!2478, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2476, file: !14, line: 138, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !14, line: 138, elements: !590)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2476, file: !14, line: 138, baseType: !2481)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, elements: !1545)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2254, file: !144, line: 147, baseType: !41, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2212, file: !144, line: 161, baseType: !728, size: 128, align: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !144, line: 164, baseType: !2485, size: 32, offset: 384)
!2485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2208, file: !144, line: 164, size: 32, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2485, file: !144, line: 169, baseType: !70, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2485, file: !144, line: 177, baseType: !7, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2208, file: !144, line: 181, baseType: !70, size: 32, offset: 416)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2204, file: !2191, line: 42, baseType: !459, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2204, file: !2191, line: 43, baseType: !459, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !815, file: !816, line: 1340, baseType: !2493, size: 64, offset: 20672)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !816, line: 69, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !815, file: !816, line: 1351, baseType: !43, size: 32, offset: 20736)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !815, file: !816, line: 1352, baseType: !43, size: 32, offset: 20768)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !815, file: !816, line: 1354, baseType: !60, size: 64, offset: 20800)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !815, file: !816, line: 1364, baseType: !462, size: 64, offset: 20864)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !815, file: !816, line: 1365, baseType: !462, size: 64, offset: 20928)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !815, file: !816, line: 1412, baseType: !60, size: 64, offset: 20992)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !815, file: !816, line: 1453, baseType: !2502, size: 64, offset: 21056)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !816, line: 1453, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !815, file: !816, line: 1457, baseType: !2505, size: 64, offset: 21120)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !2507)
!2507 = !{!2508, !2509, !2528, !2531, !2532, !2565, !2575}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2506, file: !129, line: 62, baseType: !128, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !129, line: 64, baseType: !2510, size: 192, offset: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2506, file: !129, line: 64, size: 192, elements: !2511)
!2511 = !{!2512, !2523}
!2512 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !129, line: 65, baseType: !2513, size: 192)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !129, line: 65, size: 192, elements: !2514)
!2514 = !{!2515, !2522}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2513, file: !129, line: 66, baseType: !2516, size: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2517, line: 50, size: 128, elements: !2518)
!2517 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2518 = !{!2519, !2520, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2516, file: !2517, line: 52, baseType: !60, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2516, file: !2517, line: 54, baseType: !7, size: 32, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2516, file: !2517, line: 55, baseType: !7, size: 32, offset: 96)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2513, file: !129, line: 67, baseType: !60, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !129, line: 70, baseType: !2524, size: 192)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !129, line: 70, size: 192, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2524, file: !129, line: 71, baseType: !728, size: 128, align: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2524, file: !129, line: 72, baseType: !60, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2506, file: !129, line: 76, baseType: !2529, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2506, file: !129, line: 77, baseType: !60, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2506, file: !129, line: 79, baseType: !2533, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2517, line: 25, size: 256, elements: !2535)
!2535 = !{!2536, !2542, !2546}
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2534, file: !2517, line: 26, baseType: !2537, size: 128)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2534, file: !2517, line: 26, size: 128, elements: !2538)
!2538 = !{!2539, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2537, file: !2517, line: 27, baseType: !2540, size: 128)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1755)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2537, file: !2517, line: 28, baseType: !2540, size: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2534, file: !2517, line: 31, baseType: !2543, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2517, line: 23, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2534, file: !2517, line: 33, baseType: !2547, size: 64, offset: 192)
!2547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2534, file: !2517, line: 33, size: 64, elements: !2548)
!2548 = !{!2549, !2555, !2560}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2547, file: !2517, line: 38, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !2517, line: 34, size: 64, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2550, file: !2517, line: 35, baseType: !1210, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2550, file: !2517, line: 36, baseType: !104, size: 8, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2550, file: !2517, line: 37, baseType: !104, size: 8, offset: 40)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2547, file: !2517, line: 42, baseType: !2556, size: 16)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !2517, line: 39, size: 16, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2556, file: !2517, line: 40, baseType: !104, size: 8)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2556, file: !2517, line: 41, baseType: !104, size: 8, offset: 8)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2547, file: !2517, line: 46, baseType: !2561, size: 16)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2547, file: !2517, line: 43, size: 16, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2561, file: !2517, line: 44, baseType: !104, size: 8)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2561, file: !2517, line: 45, baseType: !104, size: 8, offset: 8)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2506, file: !129, line: 81, baseType: !2566, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2567, file: !129, line: 86, baseType: !2529, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2567, file: !129, line: 87, baseType: !60, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2567, file: !129, line: 88, baseType: !60, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2567, file: !129, line: 89, baseType: !60, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2567, file: !129, line: 90, baseType: !1314, size: 8, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2567, file: !129, line: 92, baseType: !2566, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2506, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !815, file: !816, line: 1463, baseType: !2577, offset: 21184)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !816, line: 739, elements: !590)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !815, file: !816, line: 1470, baseType: !728, size: 128, align: 64, offset: 21184)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !815, file: !816, line: 1471, baseType: !773, size: 32, offset: 21312)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !815, file: !816, line: 1472, baseType: !43, size: 32, offset: 21344)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !815, file: !816, line: 1474, baseType: !814, size: 64, offset: 21376)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !815, file: !816, line: 1475, baseType: !2583, size: 320, offset: 21440)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2584, line: 11, size: 320, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2585 = !{!2586, !2587, !2588, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2583, file: !2584, line: 16, baseType: !582, size: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2583, file: !2584, line: 17, baseType: !60, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2583, file: !2584, line: 18, baseType: !2589, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !2584, line: 19, baseType: !458, size: 32, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !815, file: !816, line: 1478, baseType: !2595, size: 64, offset: 21760)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !816, line: 1478, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !815, file: !816, line: 1482, baseType: !773, size: 32, offset: 21824)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !815, file: !816, line: 1489, baseType: !41, size: 64, offset: 21888)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !815, file: !816, line: 1504, baseType: !41, size: 64, offset: 21952)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !815, file: !816, line: 1505, baseType: !463, size: 64, offset: 22016)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !815, file: !816, line: 1506, baseType: !462, size: 64, offset: 22080)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !815, file: !816, line: 1507, baseType: !463, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !815, file: !816, line: 1508, baseType: !463, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !815, file: !816, line: 1509, baseType: !463, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !815, file: !816, line: 1510, baseType: !728, size: 128, align: 64, offset: 22208)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !815, file: !816, line: 1511, baseType: !43, size: 32, offset: 22336)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !815, file: !816, line: 1515, baseType: !2608, size: 64, offset: 22400)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !723, line: 56, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2608, file: !723, line: 57, baseType: !726, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !815, file: !816, line: 1518, baseType: !2608, size: 64, offset: 22464)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !815, file: !816, line: 1528, baseType: !728, size: 128, align: 64, offset: 22528)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !815, file: !816, line: 1552, baseType: !2614, size: 35328, offset: 23040)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2615, line: 430, size: 35328, elements: !2616)
!2615 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2616 = !{!2617, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2646, !2647, !2648, !2649, !2650, !2651, !2654, !2655, !2656, !2657}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2614, file: !2615, line: 432, baseType: !2618, size: 192)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2619, size: 192, elements: !316)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2620, line: 16, size: 64, elements: !2621)
!2620 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2619, file: !2620, line: 17, baseType: !114, size: 16)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2619, file: !2620, line: 18, baseType: !114, size: 16, offset: 16)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2619, file: !2620, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2619, file: !2620, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2619, file: !2620, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2619, file: !2620, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2619, file: !2620, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2619, file: !2620, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2619, file: !2620, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2619, file: !2620, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2619, file: !2620, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2619, file: !2620, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2619, file: !2620, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2614, file: !2615, line: 436, baseType: !60, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2614, file: !2615, line: 440, baseType: !47, size: 16, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2614, file: !2615, line: 441, baseType: !47, size: 16, offset: 272)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2614, file: !2615, line: 442, baseType: !47, size: 16, offset: 288)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2614, file: !2615, line: 443, baseType: !47, size: 16, offset: 304)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2614, file: !2615, line: 447, baseType: !60, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2614, file: !2615, line: 448, baseType: !60, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2614, file: !2615, line: 459, baseType: !2643, size: 256, offset: 448)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 256, elements: !782)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2615, line: 428, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2614, file: !2615, line: 461, baseType: !60, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2614, file: !2615, line: 463, baseType: !60, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2614, file: !2615, line: 465, baseType: !60, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2614, file: !2615, line: 466, baseType: !60, size: 64, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2614, file: !2615, line: 467, baseType: !60, size: 64, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2614, file: !2615, line: 473, baseType: !2652, size: 64, offset: 1024)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2615, line: 10, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2614, file: !2615, line: 480, baseType: !60, size: 64, offset: 1088)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2614, file: !2615, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2614, file: !2615, line: 491, baseType: !458, size: 32, offset: 1184)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2614, file: !2615, line: 501, baseType: !2658, size: 33792, offset: 1536)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2659, line: 448, size: 33792, elements: !2660)
!2659 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2660 = !{!2661, !2662, !2663, !2825, !2826, !2832, !2833}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2658, file: !2659, line: 461, baseType: !7, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2658, file: !2659, line: 468, baseType: !60, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2658, file: !2659, line: 476, baseType: !2664, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2659, line: 356, size: 33280, align: 512, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2665, file: !2659, line: 358, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2665, file: !2659, line: 361, baseType: !7, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2665, file: !2659, line: 364, baseType: !462, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2665, file: !2659, line: 367, baseType: !462, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2665, file: !2659, line: 370, baseType: !462, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2665, file: !2659, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2665, file: !2659, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2665, file: !2659, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2665, file: !2659, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2665, file: !2659, line: 397, baseType: !2677, size: 32768, offset: 512)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2659, line: 348, size: 32768, elements: !2678)
!2678 = !{!2679, !2694, !2731, !2808, !2821}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2677, file: !2659, line: 349, baseType: !2680, size: 896)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2659, line: 12, size: 896, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2693}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2680, file: !2659, line: 13, baseType: !458, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2680, file: !2659, line: 14, baseType: !458, size: 32, offset: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2680, file: !2659, line: 15, baseType: !458, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2680, file: !2659, line: 16, baseType: !458, size: 32, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2680, file: !2659, line: 17, baseType: !458, size: 32, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2680, file: !2659, line: 18, baseType: !458, size: 32, offset: 160)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2680, file: !2659, line: 19, baseType: !458, size: 32, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2680, file: !2659, line: 22, baseType: !2690, size: 640, offset: 224)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 640, elements: !2691)
!2691 = !{!2692}
!2692 = !DISubrange(count: 20)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2680, file: !2659, line: 25, baseType: !458, size: 32, offset: 864)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2677, file: !2659, line: 350, baseType: !2695, size: 4096, align: 128)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2659, line: 34, size: 4096, align: 128, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2716, !2717, !2718, !2720, !2722, !2726}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2695, file: !2659, line: 35, baseType: !114, size: 16)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2695, file: !2659, line: 36, baseType: !114, size: 16, offset: 16)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2695, file: !2659, line: 37, baseType: !114, size: 16, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2695, file: !2659, line: 38, baseType: !114, size: 16, offset: 48)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !2659, line: 39, baseType: !2702, size: 128, offset: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2695, file: !2659, line: 39, size: 128, elements: !2703)
!2703 = !{!2704, !2709}
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !2659, line: 40, baseType: !2705, size: 128)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2659, line: 40, size: 128, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2705, file: !2659, line: 41, baseType: !462, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2705, file: !2659, line: 42, baseType: !462, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !2659, line: 44, baseType: !2710, size: 128)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2659, line: 44, size: 128, elements: !2711)
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2710, file: !2659, line: 45, baseType: !458, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2710, file: !2659, line: 46, baseType: !458, size: 32, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2710, file: !2659, line: 47, baseType: !458, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2710, file: !2659, line: 48, baseType: !458, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2695, file: !2659, line: 51, baseType: !458, size: 32, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2695, file: !2659, line: 52, baseType: !458, size: 32, offset: 224)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2695, file: !2659, line: 55, baseType: !2719, size: 1024, offset: 256)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1024, elements: !471)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2695, file: !2659, line: 58, baseType: !2721, size: 2048, offset: 1280)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 2048, elements: !320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2695, file: !2659, line: 60, baseType: !2723, size: 384, offset: 3328)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !2724)
!2724 = !{!2725}
!2725 = !DISubrange(count: 12)
!2726 = !DIDerivedType(tag: DW_TAG_member, scope: !2695, file: !2659, line: 62, baseType: !2727, size: 384, offset: 3712)
!2727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2695, file: !2659, line: 62, size: 384, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2727, file: !2659, line: 63, baseType: !2723, size: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2727, file: !2659, line: 64, baseType: !2723, size: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2677, file: !2659, line: 351, baseType: !2732, size: 1088)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2659, line: 79, size: 1088, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2807}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2732, file: !2659, line: 80, baseType: !458, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2732, file: !2659, line: 81, baseType: !458, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2732, file: !2659, line: 82, baseType: !458, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2732, file: !2659, line: 83, baseType: !458, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2732, file: !2659, line: 84, baseType: !458, size: 32, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2732, file: !2659, line: 85, baseType: !458, size: 32, offset: 160)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2732, file: !2659, line: 86, baseType: !458, size: 32, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2732, file: !2659, line: 88, baseType: !2690, size: 640, offset: 224)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2732, file: !2659, line: 89, baseType: !104, size: 8, offset: 864)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2732, file: !2659, line: 90, baseType: !104, size: 8, offset: 872)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2732, file: !2659, line: 91, baseType: !104, size: 8, offset: 880)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2732, file: !2659, line: 92, baseType: !104, size: 8, offset: 888)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2732, file: !2659, line: 93, baseType: !104, size: 8, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2732, file: !2659, line: 94, baseType: !104, size: 8, offset: 904)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2732, file: !2659, line: 95, baseType: !2749, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2751, line: 11, size: 128, elements: !2752)
!2751 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2750, file: !2751, line: 12, baseType: !350, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2750, file: !2751, line: 13, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2757, line: 103, size: 1344, elements: !2758)
!2757 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2787, !2788, !2789}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2756, file: !2757, line: 109, baseType: !60, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2756, file: !2757, line: 110, baseType: !60, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2756, file: !2757, line: 111, baseType: !60, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2756, file: !2757, line: 112, baseType: !60, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2756, file: !2757, line: 113, baseType: !60, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2756, file: !2757, line: 114, baseType: !60, size: 64, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2756, file: !2757, line: 117, baseType: !60, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2756, file: !2757, line: 118, baseType: !60, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2756, file: !2757, line: 119, baseType: !60, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2756, file: !2757, line: 120, baseType: !60, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2756, file: !2757, line: 121, baseType: !60, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2756, file: !2757, line: 122, baseType: !60, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2756, file: !2757, line: 123, baseType: !60, size: 64, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2756, file: !2757, line: 124, baseType: !60, size: 64, offset: 832)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2756, file: !2757, line: 125, baseType: !60, size: 64, offset: 896)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2756, file: !2757, line: 139, baseType: !60, size: 64, offset: 960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2756, file: !2757, line: 142, baseType: !60, size: 64, offset: 1024)
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2756, file: !2757, line: 144, baseType: !2777, size: 64, offset: 1088)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2756, file: !2757, line: 144, size: 64, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2777, file: !2757, line: 146, baseType: !114, size: 16)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2777, file: !2757, line: 148, baseType: !462, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2777, file: !2757, line: 150, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2757, line: 59, size: 64, elements: !2783)
!2783 = !{!2784, !2785, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2782, file: !2757, line: 61, baseType: !462, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2782, file: !2757, line: 63, baseType: !462, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2782, file: !2757, line: 65, baseType: !462, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2756, file: !2757, line: 153, baseType: !60, size: 64, offset: 1152)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2756, file: !2757, line: 154, baseType: !60, size: 64, offset: 1216)
!2789 = !DIDerivedType(tag: DW_TAG_member, scope: !2756, file: !2757, line: 156, baseType: !2790, size: 64, offset: 1280)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2756, file: !2757, line: 156, size: 64, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2790, file: !2757, line: 158, baseType: !114, size: 16)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2790, file: !2757, line: 160, baseType: !462, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2790, file: !2757, line: 162, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2757, line: 69, size: 64, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2795, file: !2757, line: 71, baseType: !462, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2795, file: !2757, line: 73, baseType: !462, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2795, file: !2757, line: 75, baseType: !462, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2795, file: !2757, line: 77, baseType: !462, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2795, file: !2757, line: 80, baseType: !462, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2795, file: !2757, line: 83, baseType: !462, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2795, file: !2757, line: 86, baseType: !462, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2795, file: !2757, line: 88, baseType: !462, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2795, file: !2757, line: 93, baseType: !462, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2795, file: !2757, line: 100, baseType: !462, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2732, file: !2659, line: 96, baseType: !458, size: 32, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2677, file: !2659, line: 352, baseType: !2809, size: 4608, align: 512)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2659, line: 333, size: 4608, align: 512, elements: !2810)
!2810 = !{!2811, !2812, !2819}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2809, file: !2659, line: 334, baseType: !2695, size: 4096, align: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2809, file: !2659, line: 335, baseType: !2813, size: 512, offset: 4096)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2659, line: 312, size: 512, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2813, file: !2659, line: 313, baseType: !462, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2813, file: !2659, line: 314, baseType: !462, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2813, file: !2659, line: 315, baseType: !2818, size: 384, offset: 128)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 384, elements: !1369)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2809, file: !2659, line: 336, baseType: !2820, offset: 4608)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !1545)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2677, file: !2659, line: 353, baseType: !2822, size: 32768)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32768, elements: !2823)
!2823 = !{!2824}
!2824 = !DISubrange(count: 4096)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2658, file: !2659, line: 484, baseType: !2664, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2658, file: !2659, line: 491, baseType: !2827, size: 128, offset: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2659, line: 404, size: 128, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2827, file: !2659, line: 424, baseType: !462, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2827, file: !2659, line: 432, baseType: !7, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2827, file: !2659, line: 440, baseType: !7, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2658, file: !2659, line: 498, baseType: !2827, size: 128, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2658, file: !2659, line: 508, baseType: !2665, size: 33280, align: 512, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !794, file: !795, line: 31, baseType: !2835, size: 64, offset: 448)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2837, line: 325, flags: DIFlagFwdDecl)
!2837 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !794, file: !795, line: 32, baseType: !7, size: 32, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !794, file: !795, line: 33, baseType: !793, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !794, file: !795, line: 35, baseType: !2841, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !795, line: 17, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !794, file: !795, line: 37, baseType: !1269, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !794, file: !795, line: 38, baseType: !1512, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !794, file: !795, line: 39, baseType: !43, size: 32, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !794, file: !795, line: 40, baseType: !1302, size: 192, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !794, file: !795, line: 42, baseType: !43, size: 32, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !745, file: !173, line: 951, baseType: !135, size: 32, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !745, file: !173, line: 952, baseType: !395, size: 32, offset: 160)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !745, file: !173, line: 952, baseType: !395, size: 32, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !745, file: !173, line: 953, baseType: !43, size: 32, offset: 224)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !716, file: !173, line: 1012, baseType: !1681, size: 64, offset: 896)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !716, file: !173, line: 1013, baseType: !2854, size: 256, offset: 960)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2854, file: !173, line: 971, baseType: !60, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2854, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2854, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2854, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2854, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2854, file: !173, line: 976, baseType: !62, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !716, file: !173, line: 1014, baseType: !2863, size: 128, offset: 1216)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2864, line: 8, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2863, file: !2864, line: 9, baseType: !534, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2863, file: !2864, line: 10, baseType: !424, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !716, file: !173, line: 1015, baseType: !389, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !716, file: !173, line: 1016, baseType: !2870, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !2873)
!2873 = !{!2874, !2875, !2879, !2883, !2887, !2915, !2916, !2922, !2935, !2943, !2947, !2948, !2952, !2953, !2957, !2962, !2963, !2967, !2971, !2977, !2978, !2982, !2983, !2987, !2991, !2995, !3001, !3005, !3009, !3013, !3017, !3018, !3024}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !173, line: 1915, baseType: !261, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2872, file: !173, line: 1916, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!62, !1136, !62, !43}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2872, file: !173, line: 1917, baseType: !2880, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!347, !1136, !315, !56, !61}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2872, file: !173, line: 1918, baseType: !2884, size: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!347, !1136, !37, !56, !61}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2872, file: !173, line: 1919, baseType: !2888, size: 64, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!347, !2891, !2913}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2900, !2901, !2902, !2903}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2892, file: !173, line: 374, baseType: !1136, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2892, file: !173, line: 375, baseType: !62, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2892, file: !173, line: 376, baseType: !2897, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2891, !350}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2892, file: !173, line: 377, baseType: !41, size: 64, offset: 192)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2892, file: !173, line: 378, baseType: !43, size: 32, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2892, file: !173, line: 379, baseType: !114, size: 16, offset: 288)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2892, file: !173, line: 380, baseType: !2904, size: 64, offset: 320)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2892, file: !173, line: 380, size: 64, elements: !2905)
!2905 = !{!2906, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2904, file: !173, line: 386, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !173, line: 386, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2904, file: !173, line: 395, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!347, !41}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !173, line: 69, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2872, file: !173, line: 1920, baseType: !2888, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2872, file: !173, line: 1921, baseType: !2917, size: 64, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!43, !2891, !2920, !7}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2872, file: !173, line: 1923, baseType: !2923, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!43, !1136, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !2928)
!2928 = !{!2929, !2934}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2927, file: !173, line: 1859, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !2931)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!1314, !2926, !37, !43, !62, !462, !7}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2927, file: !173, line: 1860, baseType: !62, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2872, file: !173, line: 1924, baseType: !2936, size: 64, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2939, !1136, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2940, line: 59, baseType: !7)
!2940 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !562, line: 31, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2872, file: !173, line: 1925, baseType: !2944, size: 64, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!350, !1136, !7, !60}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2872, file: !173, line: 1926, baseType: !2944, size: 64, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2872, file: !173, line: 1927, baseType: !2949, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!43, !1136, !2317}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2872, file: !173, line: 1928, baseType: !60, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2872, file: !173, line: 1929, baseType: !2954, size: 64, offset: 832)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!43, !389, !1136}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2872, file: !173, line: 1930, baseType: !2958, size: 64, offset: 896)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!43, !1136, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !41)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !173, line: 1931, baseType: !2954, size: 64, offset: 960)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2872, file: !173, line: 1932, baseType: !2964, size: 64, offset: 1024)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!43, !1136, !62, !62, !43}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2872, file: !173, line: 1933, baseType: !2968, size: 64, offset: 1088)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!43, !43, !1136, !43}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2872, file: !173, line: 1934, baseType: !2972, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!43, !1136, !43, !2975}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !173, line: 1063, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2872, file: !173, line: 1935, baseType: !1133, size: 64, offset: 1216)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2872, file: !173, line: 1936, baseType: !2979, size: 64, offset: 1280)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!43, !43}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2872, file: !173, line: 1937, baseType: !2972, size: 64, offset: 1344)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2872, file: !173, line: 1938, baseType: !2984, size: 64, offset: 1408)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!347, !2201, !1136, !61, !56, !7}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2872, file: !173, line: 1939, baseType: !2988, size: 64, offset: 1472)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!347, !1136, !61, !2201, !56, !7}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2872, file: !173, line: 1940, baseType: !2992, size: 64, offset: 1536)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !1136}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2872, file: !173, line: 1941, baseType: !2996, size: 64, offset: 1600)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!43, !1136, !43, !2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2872, file: !173, line: 1942, baseType: !3002, size: 64, offset: 1664)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!350, !1136, !43, !62, !62}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2872, file: !173, line: 1944, baseType: !3006, size: 64, offset: 1728)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !659, !1136}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2872, file: !173, line: 1948, baseType: !3010, size: 64, offset: 1792)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!347, !1136, !62, !1136, !62, !56, !7}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2872, file: !173, line: 1950, baseType: !3014, size: 64, offset: 1856)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!62, !1136, !62, !1136, !62, !62, !7}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2872, file: !173, line: 1953, baseType: !2964, size: 64, offset: 1920)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2872, file: !173, line: 1954, baseType: !3019, size: 64, offset: 1984)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!43, !3022, !7}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2872, file: !173, line: 1955, baseType: !3025, size: 64, offset: 2048)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!43, !3022, !2920, !7}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !716, file: !173, line: 1018, baseType: !462, size: 64, offset: 1472)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !716, file: !173, line: 1020, baseType: !41, size: 64, offset: 1536)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !716, file: !173, line: 1023, baseType: !41, size: 64, offset: 1600)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !716, file: !173, line: 1027, baseType: !3032, size: 64, offset: 1664)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !716, file: !173, line: 1029, baseType: !385, size: 64, offset: 1728)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !716, file: !173, line: 1030, baseType: !3035, size: 32, offset: 1792)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3036, line: 8, baseType: !458)
!3036 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !716, file: !173, line: 1031, baseType: !3035, size: 32, offset: 1824)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !660, file: !661, line: 29, baseType: !41, size: 64, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !602, file: !173, line: 2077, baseType: !656, size: 64, offset: 1088)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !602, file: !173, line: 2078, baseType: !656, size: 64, offset: 1152)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !602, file: !173, line: 2079, baseType: !656, size: 64, offset: 1216)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !602, file: !173, line: 2081, baseType: !3043, size: 64, offset: 1280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!347, !540, !43, !315, !56, !62}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !602, file: !173, line: 2082, baseType: !3047, size: 64, offset: 1344)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!347, !540, !43, !37, !56, !62}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !602, file: !173, line: 2083, baseType: !3051, size: 64, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!3054, !389}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3082, !3083, !3084}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3056, file: !178, line: 297, baseType: !582, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3056, file: !178, line: 298, baseType: !118, size: 128, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3056, file: !178, line: 299, baseType: !118, size: 128, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3056, file: !178, line: 300, baseType: !118, size: 128, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3056, file: !178, line: 301, baseType: !671, size: 256, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3056, file: !178, line: 302, baseType: !80, size: 32, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3056, file: !178, line: 303, baseType: !70, size: 32, offset: 800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3056, file: !178, line: 304, baseType: !540, size: 64, offset: 832)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3056, file: !178, line: 305, baseType: !3067, size: 64, offset: 896)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !3068)
!3068 = !{!3069, !3081}
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !178, line: 69, baseType: !3070, size: 32)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !178, line: 69, size: 32, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3070, file: !178, line: 70, baseType: !395, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3070, file: !178, line: 71, baseType: !404, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3070, file: !178, line: 72, baseType: !3075, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3076, line: 24, baseType: !3077)
!3076 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3076, line: 22, size: 32, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3077, file: !3076, line: 23, baseType: !3080, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3076, line: 20, baseType: !401)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3067, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3056, file: !178, line: 306, baseType: !62, size: 64, offset: 960)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3056, file: !178, line: 307, baseType: !60, size: 64, offset: 1024)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3056, file: !178, line: 308, baseType: !3085, size: 576, offset: 1088)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !3086)
!3086 = !{!3087, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3085, file: !178, line: 206, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3085, file: !178, line: 207, baseType: !3088, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3085, file: !178, line: 208, baseType: !3088, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3085, file: !178, line: 209, baseType: !3088, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3085, file: !178, line: 210, baseType: !3088, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3085, file: !178, line: 211, baseType: !3088, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3085, file: !178, line: 212, baseType: !3088, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3085, file: !178, line: 213, baseType: !1340, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3085, file: !178, line: 214, baseType: !1340, size: 64, offset: 512)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !602, file: !173, line: 2085, baseType: !3098, size: 64, offset: 1472)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!350, !540, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3103, line: 15, size: 256, elements: !3104)
!3103 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3104 = !{!3105, !3106, !3107, !3108, !3109}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3102, file: !3103, line: 16, baseType: !807, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3102, file: !3103, line: 19, baseType: !43, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3102, file: !3103, line: 26, baseType: !60, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3102, file: !3103, line: 33, baseType: !60, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3102, file: !3103, line: 36, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !144, line: 33, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !602, file: !173, line: 2087, baseType: !3098, size: 64, offset: 1536)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !602, file: !173, line: 2089, baseType: !572, size: 64, offset: 1600)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !541, file: !173, line: 1198, baseType: !3115, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !3118)
!3118 = !{!3119, !3123, !3127, !3131, !3132, !3133, !3134, !3135, !3140, !3145, !3149}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3117, file: !178, line: 325, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!43, !3055}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3117, file: !178, line: 326, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!3055, !540, !43}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3117, file: !178, line: 327, baseType: !3128, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !3055}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3117, file: !178, line: 328, baseType: !3120, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3117, file: !178, line: 329, baseType: !3120, size: 64, offset: 256)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3117, file: !178, line: 330, baseType: !3120, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3117, file: !178, line: 331, baseType: !630, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3117, file: !178, line: 334, baseType: !3136, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!3139, !389}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3117, file: !178, line: 335, baseType: !3141, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!43, !389, !3144}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3117, file: !178, line: 337, baseType: !3146, size: 64, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!43, !389, !3139}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3117, file: !178, line: 339, baseType: !3150, size: 64, offset: 640)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!43, !540, !3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !541, file: !173, line: 1199, baseType: !3155, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !3158)
!3158 = !{!3159, !3165, !3166, !3170, !3171, !3172, !3187, !3210, !3214, !3215, !3238}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3157, file: !178, line: 431, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!43, !540, !43, !43, !3163}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3157, file: !178, line: 432, baseType: !630, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3157, file: !178, line: 433, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!43, !540, !7}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3157, file: !178, line: 434, baseType: !3167, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3157, file: !178, line: 435, baseType: !630, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3157, file: !178, line: 436, baseType: !3173, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!43, !540, !43, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3177, file: !178, line: 418, baseType: !43, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3177, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3177, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3177, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3177, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3177, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3177, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3177, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3157, file: !178, line: 437, baseType: !3188, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!43, !540, !3067, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !3193)
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3192, file: !178, line: 346, baseType: !43, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3192, file: !178, line: 347, baseType: !462, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3192, file: !178, line: 348, baseType: !462, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3192, file: !178, line: 349, baseType: !462, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3192, file: !178, line: 350, baseType: !462, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3192, file: !178, line: 351, baseType: !462, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3192, file: !178, line: 352, baseType: !462, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3192, file: !178, line: 353, baseType: !681, size: 64, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3192, file: !178, line: 355, baseType: !681, size: 64, offset: 512)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3192, file: !178, line: 356, baseType: !43, size: 32, offset: 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3192, file: !178, line: 357, baseType: !43, size: 32, offset: 608)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3192, file: !178, line: 358, baseType: !462, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3192, file: !178, line: 359, baseType: !462, size: 64, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3192, file: !178, line: 360, baseType: !462, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3192, file: !178, line: 361, baseType: !681, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3192, file: !178, line: 362, baseType: !43, size: 32, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3157, file: !178, line: 438, baseType: !3211, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!43, !540, !3153, !3191}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3157, file: !178, line: 440, baseType: !3188, size: 64, offset: 512)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3157, file: !178, line: 441, baseType: !3216, size: 64, offset: 576)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!43, !540, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3220, file: !178, line: 412, baseType: !7, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3220, file: !178, line: 413, baseType: !3224, size: 1344, offset: 64)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3225, size: 1344, elements: !316)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3237}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !178, line: 398, baseType: !7, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3225, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3225, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3225, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3225, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3225, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3225, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3225, file: !178, line: 406, baseType: !464, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3225, file: !178, line: 407, baseType: !3236, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !462)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3225, file: !178, line: 408, baseType: !3236, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3157, file: !178, line: 442, baseType: !3167, size: 64, offset: 640)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !541, file: !173, line: 1200, baseType: !3240, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3242)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !541, file: !173, line: 1201, baseType: !60, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !541, file: !173, line: 1202, baseType: !60, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !541, file: !173, line: 1203, baseType: !60, size: 64, offset: 768)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !541, file: !173, line: 1204, baseType: !424, size: 64, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !541, file: !173, line: 1205, baseType: !1164, size: 320, offset: 896)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !541, file: !173, line: 1206, baseType: !43, size: 32, offset: 1216)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !541, file: !173, line: 1207, baseType: !70, size: 32, offset: 1248)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !541, file: !173, line: 1209, baseType: !41, size: 64, offset: 1280)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !541, file: !173, line: 1211, baseType: !3252, size: 64, offset: 1344)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !173, line: 1211, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !541, file: !173, line: 1223, baseType: !3257, size: 64, offset: 1408)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !441, line: 34, size: 64, elements: !3258)
!3258 = !{!3259}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3257, file: !441, line: 35, baseType: !444, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !541, file: !173, line: 1224, baseType: !118, size: 128, offset: 1472)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !541, file: !173, line: 1225, baseType: !3262, size: 64, offset: 1600)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !173, line: 1225, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !541, file: !173, line: 1226, baseType: !3265, size: 64, offset: 1664)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !541, file: !173, line: 1227, baseType: !3268, size: 64, offset: 1728)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !173, line: 50, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !541, file: !173, line: 1228, baseType: !3271, size: 64, offset: 1792)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !541, file: !173, line: 1229, baseType: !582, size: 128, offset: 1856)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !541, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !541, file: !173, line: 1231, baseType: !3276, size: 2496, offset: 2048)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3282, !3314}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3276, file: !178, line: 522, baseType: !7, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3276, file: !178, line: 523, baseType: !1164, size: 320, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3276, file: !178, line: 524, baseType: !3281, size: 192, offset: 384)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 192, elements: !316)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3276, file: !178, line: 525, baseType: !3283, size: 1728, offset: 576)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3284, size: 1728, elements: !316)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !3285)
!3285 = !{!3286, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3284, file: !178, line: 223, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !3289)
!3289 = !{!3290, !3291, !3304, !3305}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3288, file: !178, line: 446, baseType: !43, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3288, file: !178, line: 447, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3294, file: !178, line: 313, baseType: !630, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3294, file: !178, line: 314, baseType: !630, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3294, file: !178, line: 315, baseType: !630, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3294, file: !178, line: 316, baseType: !630, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3294, file: !178, line: 317, baseType: !3120, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3294, file: !178, line: 318, baseType: !3120, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3294, file: !178, line: 319, baseType: !3120, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3294, file: !178, line: 320, baseType: !3150, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3288, file: !178, line: 448, baseType: !261, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3288, file: !178, line: 449, baseType: !3287, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3284, file: !178, line: 224, baseType: !43, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3284, file: !178, line: 226, baseType: !118, size: 128, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3284, file: !178, line: 227, baseType: !60, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3284, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3284, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3284, file: !178, line: 230, baseType: !3088, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3284, file: !178, line: 231, baseType: !3088, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3284, file: !178, line: 232, baseType: !41, size: 64, offset: 512)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3276, file: !178, line: 526, baseType: !3315, size: 192, offset: 2304)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3292, size: 192, elements: !316)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !541, file: !173, line: 1233, baseType: !3317, size: 2368, offset: 4544)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3317, file: !173, line: 1185, baseType: !47, size: 16)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3317, file: !173, line: 1186, baseType: !47, size: 16, offset: 16)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3317, file: !173, line: 1187, baseType: !3322, size: 2304, offset: 64)
!3322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3323, size: 2304, elements: !316)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3324, line: 12, size: 768, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3325 = !{!3326, !3334, !3336, !3341, !3342}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3323, file: !3324, line: 13, baseType: !3327, size: 384)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3328, line: 17, size: 384, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3329 = !{!3330, !3331, !3332, !3333}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3327, file: !3328, line: 18, baseType: !43, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3327, file: !3328, line: 19, baseType: !43, size: 32, offset: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3327, file: !3328, line: 20, baseType: !75, size: 192, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3327, file: !3328, line: 22, baseType: !728, size: 128, align: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3323, file: !3324, line: 14, baseType: !3335, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3323, file: !3324, line: 15, baseType: !3337, size: 64, offset: 448)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3338, line: 16, size: 64, elements: !3339)
!3338 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3339 = !{!3340}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3337, file: !3338, line: 17, baseType: !814, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3323, file: !3324, line: 16, baseType: !75, size: 192, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3323, file: !3324, line: 17, baseType: !70, size: 32, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !541, file: !173, line: 1240, baseType: !41, size: 64, offset: 6912)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !541, file: !173, line: 1243, baseType: !458, size: 32, offset: 6976)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !541, file: !173, line: 1245, baseType: !1340, size: 64, offset: 7040)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !541, file: !173, line: 1246, baseType: !1340, size: 64, offset: 7104)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !541, file: !173, line: 1248, baseType: !459, size: 32, offset: 7168)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !541, file: !173, line: 1249, baseType: !3349, size: 64, offset: 7232)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !245, line: 472, size: 256, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3361, !3368}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3350, file: !245, line: 473, baseType: !80, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3350, file: !245, line: 474, baseType: !47, size: 16, offset: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3350, file: !245, line: 477, baseType: !47, size: 16, offset: 48)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !3350, file: !245, line: 478, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !58, line: 81, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 79, size: 64, elements: !3358)
!3358 = !{!3359}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3357, file: !58, line: 80, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !1860)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3350, file: !245, line: 479, baseType: !3362, size: 64, offset: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3350, file: !245, line: 479, size: 64, elements: !3363)
!3363 = !{!3364, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !3362, file: !245, line: 481, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !245, line: 464, baseType: !3349)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !3362, file: !245, line: 483, baseType: !3349, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3350, file: !245, line: 485, baseType: !578, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !541, file: !173, line: 1252, baseType: !3370, size: 256, offset: 7296)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !471)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !541, file: !173, line: 1253, baseType: !3372, size: 128, offset: 7552)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3373, line: 21, baseType: !3374)
!3373 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3373, line: 19, size: 128, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3374, file: !3373, line: 20, baseType: !3377, size: 128)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !1755)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !541, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !541, file: !173, line: 1261, baseType: !671, size: 256, offset: 7744)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !541, file: !173, line: 1267, baseType: !37, size: 64, offset: 8000)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !541, file: !173, line: 1269, baseType: !487, size: 64, offset: 8064)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !541, file: !173, line: 1271, baseType: !3383, size: 448, offset: 8128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3103, line: 63, size: 448, elements: !3384)
!3384 = !{!3385, !3390, !3391, !3392, !3393, !3394, !3395}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3383, file: !3103, line: 64, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!60, !3389, !3101}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3383, file: !3103, line: 66, baseType: !3386, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3383, file: !3103, line: 69, baseType: !350, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3383, file: !3103, line: 70, baseType: !43, size: 32, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3383, file: !3103, line: 71, baseType: !7, size: 32, offset: 224)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3383, file: !3103, line: 74, baseType: !118, size: 128, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3383, file: !3103, line: 85, baseType: !3396, size: 64, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !541, file: !173, line: 1274, baseType: !675, size: 64, offset: 8576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !541, file: !173, line: 1280, baseType: !675, size: 64, offset: 8640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !541, file: !173, line: 1283, baseType: !43, size: 32, offset: 8704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !541, file: !173, line: 1286, baseType: !3035, size: 32, offset: 8736)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !541, file: !173, line: 1289, baseType: !3402, size: 64, offset: 8768)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1430, line: 18, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !541, file: !173, line: 1290, baseType: !578, size: 64, offset: 8832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !541, file: !173, line: 1297, baseType: !1269, size: 64, offset: 8896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !541, file: !173, line: 1304, baseType: !3407, size: 64, offset: 8960)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3408, line: 49, size: 64, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3407, file: !3408, line: 50, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3408, line: 41, size: 512, align: 512, elements: !3413)
!3413 = !{!3414, !3415, !3420}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3412, file: !3408, line: 43, baseType: !80, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3412, file: !3408, line: 45, baseType: !3416, size: 192, offset: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3408, line: 29, size: 192, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3416, file: !3408, line: 30, baseType: !118, size: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3416, file: !3408, line: 32, baseType: !350, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3412, file: !3408, line: 46, baseType: !350, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !541, file: !173, line: 1305, baseType: !3407, size: 64, offset: 9024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !541, file: !173, line: 1306, baseType: !728, size: 128, align: 64, offset: 9088)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !541, file: !173, line: 1307, baseType: !1429, size: 256, offset: 9216)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !541, file: !173, line: 1309, baseType: !671, size: 256, offset: 9472)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !541, file: !173, line: 1314, baseType: !43, size: 32, offset: 9728)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !541, file: !173, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !541, file: !173, line: 1318, baseType: !118, size: 128, offset: 10304)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !541, file: !173, line: 1320, baseType: !80, size: 32, offset: 10432)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !541, file: !173, line: 1321, baseType: !118, size: 128, offset: 10496)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !535, file: !536, line: 73, baseType: !43, size: 32, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !535, file: !536, line: 74, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1698, line: 42, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !489, file: !426, line: 141, baseType: !3436, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!43, !3163, !1314}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !489, file: !426, line: 142, baseType: !3440, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!424, !424, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !425, file: !426, line: 96, baseType: !540, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !425, file: !426, line: 97, baseType: !60, size: 64, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !425, file: !426, line: 98, baseType: !41, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 100, baseType: !3449, size: 128, offset: 1024)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 100, size: 128, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3449, file: !426, line: 101, baseType: !118, size: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3449, file: !426, line: 102, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !425, file: !426, line: 104, baseType: !118, size: 128, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !425, file: !426, line: 105, baseType: !118, size: 128, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !425, file: !426, line: 113, baseType: !3457, size: 128, offset: 1408)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 109, size: 128, elements: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3457, file: !426, line: 110, baseType: !582, size: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3457, file: !426, line: 111, baseType: !440, size: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3457, file: !426, line: 112, baseType: !728, size: 128, align: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !418, file: !173, line: 1968, baseType: !3463, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!37, !424, !389, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3468, line: 10, size: 128, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3469 = !{!3470, !3474}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3467, file: !3468, line: 11, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !41}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3467, file: !3468, line: 12, baseType: !41, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !418, file: !173, line: 1969, baseType: !3476, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!43, !3432, !389, !43}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !418, file: !173, line: 1970, baseType: !3480, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!412, !389, !43, !1314}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !418, file: !173, line: 1972, baseType: !3484, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!43, !424, !315, !43}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !418, file: !173, line: 1974, baseType: !3488, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!43, !3432, !389, !424, !45, !1314}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !418, file: !173, line: 1976, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!43, !424, !389, !424}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !418, file: !173, line: 1977, baseType: !3496, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!43, !389, !424}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !418, file: !173, line: 1978, baseType: !3500, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!43, !3432, !389, !424, !37}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !418, file: !173, line: 1980, baseType: !3504, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!43, !3432, !389, !424, !45}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !418, file: !173, line: 1982, baseType: !3496, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !418, file: !173, line: 1983, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!43, !3432, !389, !424, !45, !545}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !418, file: !173, line: 1985, baseType: !3513, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!43, !3432, !389, !424, !389, !424, !7}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !418, file: !173, line: 1987, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!43, !3432, !424, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3535, !3544, !3545, !3550, !3551, !3552}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3521, file: !173, line: 227, baseType: !7, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3521, file: !173, line: 228, baseType: !45, size: 16, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !173, line: 241, baseType: !3526, size: 32, offset: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !173, line: 241, size: 32, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3526, file: !173, line: 242, baseType: !395, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3526, file: !173, line: 243, baseType: !3530, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3531, line: 16, baseType: !3532)
!3531 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3531, line: 14, size: 32, elements: !3533)
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3532, file: !3531, line: 15, baseType: !400, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !173, line: 245, baseType: !3536, size: 32, offset: 96)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !173, line: 245, size: 32, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3536, file: !173, line: 246, baseType: !404, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3536, file: !173, line: 247, baseType: !3540, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3531, line: 20, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3531, line: 18, size: 32, elements: !3542)
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3541, file: !3531, line: 19, baseType: !408, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3521, file: !173, line: 249, baseType: !62, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3521, file: !173, line: 250, baseType: !3546, size: 128, offset: 192)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1341, line: 13, size: 128, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3546, file: !1341, line: 14, baseType: !1340, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3546, file: !1341, line: 15, baseType: !350, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3521, file: !173, line: 251, baseType: !3546, size: 128, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3521, file: !173, line: 252, baseType: !3546, size: 128, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3521, file: !173, line: 259, baseType: !1136, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !418, file: !173, line: 1988, baseType: !3554, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!43, !3432, !3163, !3557, !458, !7}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3559, line: 22, size: 1280, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3558, file: !3559, line: 23, baseType: !458, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3558, file: !3559, line: 24, baseType: !45, size: 16, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3558, file: !3559, line: 25, baseType: !7, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3558, file: !3559, line: 26, baseType: !1348, size: 32, offset: 96)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3558, file: !3559, line: 27, baseType: !462, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3558, file: !3559, line: 28, baseType: !462, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3558, file: !3559, line: 41, baseType: !462, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3558, file: !3559, line: 42, baseType: !545, size: 32, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3558, file: !3559, line: 43, baseType: !545, size: 32, offset: 352)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3558, file: !3559, line: 44, baseType: !395, size: 32, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3558, file: !3559, line: 45, baseType: !404, size: 32, offset: 416)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3558, file: !3559, line: 46, baseType: !62, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3558, file: !3559, line: 47, baseType: !3546, size: 128, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3558, file: !3559, line: 48, baseType: !3546, size: 128, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3558, file: !3559, line: 49, baseType: !3546, size: 128, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3558, file: !3559, line: 50, baseType: !3546, size: 128, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3558, file: !3559, line: 51, baseType: !462, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3558, file: !3559, line: 52, baseType: !462, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3558, file: !3559, line: 53, baseType: !458, size: 32, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3558, file: !3559, line: 54, baseType: !458, size: 32, offset: 1184)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3558, file: !3559, line: 55, baseType: !462, size: 64, offset: 1216)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !418, file: !173, line: 1990, baseType: !3583, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!347, !424, !315, !56}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !418, file: !173, line: 1991, baseType: !3587, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!43, !389, !3590, !462, !462}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !418, file: !173, line: 1993, baseType: !3593, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!43, !389, !43}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !418, file: !173, line: 1994, baseType: !3597, size: 64, offset: 1152)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!43, !389, !424, !1136, !7, !45}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !418, file: !173, line: 1997, baseType: !3601, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!43, !3432, !389, !1136, !45}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !418, file: !173, line: 1999, baseType: !3605, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!412, !3432, !424, !43}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !418, file: !173, line: 2001, baseType: !3609, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!43, !3432, !424, !412, !43}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !418, file: !173, line: 2003, baseType: !3613, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!43, !3432, !424, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !418, file: !173, line: 2005, baseType: !3619, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!43, !424, !3616}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !418, file: !173, line: 2006, baseType: !3623, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!3626, !389}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !3628)
!3628 = !{!3629, !3630}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3627, file: !173, line: 3193, baseType: !802, size: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3627, file: !173, line: 3194, baseType: !458, size: 32, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !390, file: !173, line: 655, baseType: !540, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !390, file: !173, line: 656, baseType: !385, size: 64, offset: 512)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !390, file: !173, line: 659, baseType: !41, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !390, file: !173, line: 663, baseType: !60, size: 64, offset: 640)
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !173, line: 671, baseType: !3636, size: 32, offset: 704)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !173, line: 671, size: 32, elements: !3637)
!3637 = !{!3638, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3636, file: !173, line: 672, baseType: !3639, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3636, file: !173, line: 673, baseType: !7, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !390, file: !173, line: 675, baseType: !545, size: 32, offset: 736)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !390, file: !173, line: 676, baseType: !62, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !390, file: !173, line: 677, baseType: !3546, size: 128, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !390, file: !173, line: 678, baseType: !3546, size: 128, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !390, file: !173, line: 679, baseType: !3546, size: 128, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !390, file: !173, line: 680, baseType: !80, size: 32, offset: 1216)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !390, file: !173, line: 681, baseType: !47, size: 16, offset: 1248)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !390, file: !173, line: 682, baseType: !104, size: 8, offset: 1264)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !390, file: !173, line: 683, baseType: !104, size: 8, offset: 1272)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !390, file: !173, line: 684, baseType: !3236, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !390, file: !173, line: 691, baseType: !60, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !390, file: !173, line: 692, baseType: !1164, size: 320, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !390, file: !173, line: 694, baseType: !60, size: 64, offset: 1728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !390, file: !173, line: 695, baseType: !60, size: 64, offset: 1792)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !390, file: !173, line: 697, baseType: !582, size: 128, offset: 1856)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !390, file: !173, line: 698, baseType: !118, size: 128, offset: 1984)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !390, file: !173, line: 707, baseType: !118, size: 128, offset: 2112)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !390, file: !173, line: 708, baseType: !118, size: 128, offset: 2240)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !173, line: 709, baseType: !3660, size: 128, offset: 2368)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !173, line: 709, size: 128, elements: !3661)
!3661 = !{!3662, !3663}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3660, file: !173, line: 710, baseType: !578, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3660, file: !173, line: 711, baseType: !728, size: 128, align: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !390, file: !173, line: 713, baseType: !677, size: 64, offset: 2496)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !390, file: !173, line: 714, baseType: !677, size: 64, offset: 2560)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !390, file: !173, line: 715, baseType: !70, size: 32, offset: 2624)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !390, file: !173, line: 716, baseType: !70, size: 32, offset: 2656)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !390, file: !173, line: 717, baseType: !70, size: 32, offset: 2688)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !390, file: !173, line: 719, baseType: !70, size: 32, offset: 2720)
!3670 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !173, line: 721, baseType: !3671, size: 64, offset: 2752)
!3671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !173, line: 721, size: 64, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3671, file: !173, line: 722, baseType: !2870, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3671, file: !173, line: 723, baseType: !609, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !390, file: !173, line: 725, baseType: !3676, size: 64, offset: 2816)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !173, line: 725, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !390, file: !173, line: 726, baseType: !386, size: 1536, align: 64, offset: 2880)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !390, file: !173, line: 727, baseType: !118, size: 128, offset: 4416)
!3680 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !173, line: 728, baseType: !3681, size: 64, offset: 4544)
!3681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !173, line: 728, size: 64, elements: !3682)
!3682 = !{!3683, !3684, !3687, !3688}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3681, file: !173, line: 729, baseType: !2201, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3681, file: !173, line: 730, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3681, file: !173, line: 731, baseType: !315, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3681, file: !173, line: 732, baseType: !7, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !390, file: !173, line: 735, baseType: !459, size: 32, offset: 4608)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !390, file: !173, line: 738, baseType: !459, size: 32, offset: 4640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !390, file: !173, line: 739, baseType: !3349, size: 64, offset: 4672)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !390, file: !173, line: 750, baseType: !41, size: 64, offset: 4736)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !386, file: !173, line: 474, baseType: !802, size: 128, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !386, file: !173, line: 475, baseType: !1164, size: 320, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !386, file: !173, line: 476, baseType: !807, size: 32, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !386, file: !173, line: 477, baseType: !70, size: 32, offset: 544)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !386, file: !173, line: 482, baseType: !992, size: 128, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !386, file: !173, line: 483, baseType: !60, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !386, file: !173, line: 484, baseType: !60, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !386, file: !173, line: 485, baseType: !3701, size: 64, offset: 832)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !3704)
!3704 = !{!3705, !3709, !3779, !3783, !3787, !3793, !3798, !3802, !3807, !3811, !3815, !3819, !3820, !3824, !3828, !3832, !3837, !3841, !3848, !3849}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3703, file: !173, line: 405, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!43, !2207, !621}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3703, file: !173, line: 406, baseType: !3710, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!43, !1136, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !144, line: 293, size: 1536, elements: !3715)
!3715 = !{!3716, !3746, !3760}
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !144, line: 295, baseType: !3717, size: 512)
!3717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !144, line: 295, size: 512, elements: !3718)
!3718 = !{!3719, !3745}
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3717, file: !144, line: 296, baseType: !3720, size: 448)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3717, file: !144, line: 296, size: 448, elements: !3721)
!3721 = !{!3722, !3723, !3732, !3733, !3734, !3743, !3744}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3720, file: !144, line: 298, baseType: !60, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3720, file: !144, line: 299, baseType: !3724, size: 128, offset: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3720, file: !144, line: 299, size: 128, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3724, file: !144, line: 300, baseType: !118, size: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3724, file: !144, line: 302, baseType: !3728, size: 128)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3724, file: !144, line: 302, size: 128, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3728, file: !144, line: 303, baseType: !41, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3728, file: !144, line: 305, baseType: !7, size: 32, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3720, file: !144, line: 310, baseType: !385, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3720, file: !144, line: 311, baseType: !60, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, scope: !3720, file: !144, line: 312, baseType: !3735, size: 64, offset: 320)
!3735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3720, file: !144, line: 312, size: 64, elements: !3736)
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3735, file: !144, line: 313, baseType: !41, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3735, file: !144, line: 314, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !144, line: 257, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 255, size: 64, elements: !3741)
!3741 = !{!3742}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3740, file: !144, line: 256, baseType: !60, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3720, file: !144, line: 316, baseType: !70, size: 32, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3720, file: !144, line: 317, baseType: !70, size: 32, offset: 416)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3717, file: !144, line: 323, baseType: !2208, size: 512, align: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !144, line: 325, baseType: !3747, size: 512, offset: 512)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !144, line: 325, size: 512, elements: !3748)
!3748 = !{!3749, !3759}
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !3747, file: !144, line: 326, baseType: !3750, size: 320)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3747, file: !144, line: 326, size: 320, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3750, file: !144, line: 327, baseType: !60, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3750, file: !144, line: 328, baseType: !60, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3750, file: !144, line: 329, baseType: !60, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3750, file: !144, line: 331, baseType: !70, size: 32, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3750, file: !144, line: 332, baseType: !70, size: 32, offset: 224)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3750, file: !144, line: 333, baseType: !70, size: 32, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3750, file: !144, line: 335, baseType: !7, size: 32, offset: 288)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3747, file: !144, line: 339, baseType: !2208, size: 512, align: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !144, line: 341, baseType: !3761, size: 512, offset: 1024)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !144, line: 341, size: 512, elements: !3762)
!3762 = !{!3763, !3772, !3778}
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !3761, file: !144, line: 342, baseType: !3764, size: 384)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3761, file: !144, line: 342, size: 384, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3764, file: !144, line: 343, baseType: !60, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3764, file: !144, line: 344, baseType: !60, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3764, file: !144, line: 346, baseType: !41, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3764, file: !144, line: 347, baseType: !41, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3764, file: !144, line: 348, baseType: !41, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3764, file: !144, line: 349, baseType: !41, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3761, file: !144, line: 352, baseType: !3773, size: 256)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3761, file: !144, line: 352, size: 256, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3773, file: !144, line: 353, baseType: !60, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3773, file: !144, line: 354, baseType: !60, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3773, file: !144, line: 356, baseType: !118, size: 128, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3761, file: !144, line: 359, baseType: !2208, size: 512, align: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3703, file: !173, line: 409, baseType: !3780, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!43, !385, !621}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3703, file: !173, line: 412, baseType: !3784, size: 64, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!1314, !385, !3713}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3703, file: !173, line: 414, baseType: !3788, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3791}
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !173, line: 310, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3703, file: !173, line: 416, baseType: !3794, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!43, !1136, !385, !62, !7, !3797, !3000}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3703, file: !173, line: 419, baseType: !3799, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!43, !1136, !385, !62, !7, !7, !2207, !41}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3703, file: !173, line: 424, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3806, !385, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !462)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3703, file: !173, line: 425, baseType: !3808, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3713, !56, !56}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3703, file: !173, line: 426, baseType: !3812, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!1314, !3713, !807}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3703, file: !173, line: 427, baseType: !3816, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3713}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3703, file: !173, line: 428, baseType: !2888, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3703, file: !173, line: 433, baseType: !3821, size: 64, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!43, !385, !3713, !3713, !159}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3703, file: !173, line: 435, baseType: !3825, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!43, !3713}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3703, file: !173, line: 436, baseType: !3829, size: 64, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!1314, !3713, !56, !56}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3703, file: !173, line: 438, baseType: !3833, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3713, !3836, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3703, file: !173, line: 439, baseType: !3838, size: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!43, !385, !2207}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3703, file: !173, line: 442, baseType: !3842, size: 64, offset: 1088)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!43, !3845, !1136, !3847}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3703, file: !173, line: 444, baseType: !2992, size: 64, offset: 1152)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3703, file: !173, line: 445, baseType: !3850, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!43, !2891, !2913}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !173, line: 486, baseType: !60, size: 64, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !386, file: !173, line: 487, baseType: !1164, size: 320, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !386, file: !173, line: 488, baseType: !3035, size: 32, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !386, file: !173, line: 489, baseType: !80, size: 32, offset: 1312)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !386, file: !173, line: 490, baseType: !118, size: 128, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !386, file: !173, line: 491, baseType: !41, size: 64, offset: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !376, file: !341, line: 180, baseType: !3860, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!347, !1136, !280, !375, !315, !62, !56}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !376, file: !341, line: 182, baseType: !3860, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !376, file: !341, line: 184, baseType: !3865, size: 64, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!43, !1136, !280, !375, !2317}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !364, file: !341, line: 90, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !364, file: !341, line: 91, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !331, file: !275, line: 120, baseType: !3873, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3876, !298}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !3879)
!3879 = !{!3880, !3881, !3885, !3889, !3895, !3899}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3878, file: !167, line: 40, baseType: !166, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3878, file: !167, line: 41, baseType: !3882, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!1314}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3878, file: !167, line: 42, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!41}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3878, file: !167, line: 43, baseType: !3890, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!1243, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3878, file: !167, line: 44, baseType: !3896, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!1243}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3878, file: !167, line: 45, baseType: !3471, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !331, file: !275, line: 121, baseType: !3901, size: 64, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!1243, !298}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !331, file: !275, line: 122, baseType: !3905, size: 64, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !298, !1493, !1494}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !274, file: !275, line: 70, baseType: !3909, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !562, line: 190, size: 1152, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3991, !3992, !3993, !3994, !3995, !3998}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3910, file: !562, line: 191, baseType: !70, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3910, file: !562, line: 192, baseType: !70, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3910, file: !562, line: 202, baseType: !3909, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3910, file: !562, line: 203, baseType: !37, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3910, file: !562, line: 205, baseType: !863, size: 192, align: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3910, file: !562, line: 207, baseType: !1243, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3910, file: !562, line: 208, baseType: !7, size: 32, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !3910, file: !562, line: 209, baseType: !3920, size: 256, offset: 512)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3910, file: !562, line: 209, size: 256, elements: !3921)
!3921 = !{!3922, !3931, !3935}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3920, file: !562, line: 210, baseType: !3923, size: 256)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !562, line: 153, size: 256, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3930}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3923, file: !562, line: 154, baseType: !60, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3923, file: !562, line: 156, baseType: !995, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3923, file: !562, line: 162, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !562, line: 162, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3923, file: !562, line: 167, baseType: !60, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3920, file: !562, line: 211, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !562, line: 170, size: 64, elements: !3933)
!3933 = !{!3934}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3932, file: !562, line: 171, baseType: !3909, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3920, file: !562, line: 212, baseType: !3936, size: 256)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !562, line: 174, size: 256, elements: !3937)
!3937 = !{!3938, !3986, !3989, !3990}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3936, file: !562, line: 175, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !562, line: 271, size: 768, elements: !3942)
!3942 = !{!3943, !3963, !3967, !3968, !3969, !3970, !3971, !3975, !3976, !3977, !3978, !3982}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3941, file: !562, line: 276, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!43, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !562, line: 251, size: 1216, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3948, file: !562, line: 253, baseType: !3909, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3948, file: !562, line: 254, baseType: !1136, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3948, file: !562, line: 255, baseType: !659, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3948, file: !562, line: 256, baseType: !41, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3948, file: !562, line: 259, baseType: !671, size: 256, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3948, file: !562, line: 260, baseType: !671, size: 256, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3948, file: !562, line: 261, baseType: !43, size: 32, offset: 768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3948, file: !562, line: 262, baseType: !118, size: 128, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3948, file: !562, line: 263, baseType: !315, size: 64, offset: 960)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3948, file: !562, line: 265, baseType: !56, size: 64, offset: 1024)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3948, file: !562, line: 266, baseType: !1314, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3948, file: !562, line: 267, baseType: !1314, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3948, file: !562, line: 268, baseType: !2360, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3941, file: !562, line: 277, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3947}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3941, file: !562, line: 290, baseType: !709, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3941, file: !562, line: 292, baseType: !697, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3941, file: !562, line: 293, baseType: !705, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3941, file: !562, line: 294, baseType: !701, size: 64, offset: 320)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3941, file: !562, line: 296, baseType: !3972, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!347, !3947, !315, !56, !62}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3941, file: !562, line: 306, baseType: !56, size: 64, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3941, file: !562, line: 313, baseType: !1314, size: 8, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3941, file: !562, line: 314, baseType: !3972, size: 64, offset: 576)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3941, file: !562, line: 317, baseType: !3979, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!2939, !3947, !2941}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3941, file: !562, line: 320, baseType: !3983, size: 64, offset: 704)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!43, !3947, !2317}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3936, file: !562, line: 176, baseType: !3987, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !562, line: 35, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3936, file: !562, line: 177, baseType: !62, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3936, file: !562, line: 178, baseType: !3909, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3910, file: !562, line: 215, baseType: !41, size: 64, offset: 768)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3910, file: !562, line: 221, baseType: !462, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3910, file: !562, line: 223, baseType: !47, size: 16, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3910, file: !562, line: 224, baseType: !45, size: 16, offset: 912)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3910, file: !562, line: 225, baseType: !3996, size: 64, offset: 960)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !562, line: 36, flags: DIFlagFwdDecl)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3910, file: !562, line: 227, baseType: !728, size: 128, align: 64, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !274, file: !275, line: 71, baseType: !4000, size: 32, offset: 448)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4001, line: 19, size: 32, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4002 = !{!4003}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4000, file: !4001, line: 20, baseType: !773, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !274, file: !275, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !274, file: !275, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !274, file: !275, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !274, file: !275, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !274, file: !275, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !271, file: !6, line: 47, baseType: !261, size: 64, offset: 512)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !271, file: !6, line: 48, baseType: !280, size: 64, offset: 576)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !271, file: !6, line: 49, baseType: !4012, size: 64, offset: 640)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !271, file: !6, line: 50, baseType: !1467, size: 64, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !262, file: !6, line: 418, baseType: !4016, size: 64, offset: 1408)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4018)
!4018 = !{!4019, !4020, !4025, !4029, !4033, !4037}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4017, file: !6, line: 54, baseType: !352, size: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4017, file: !6, line: 55, baseType: !4021, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!347, !4016, !4024, !315}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4017, file: !6, line: 57, baseType: !4026, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!347, !4016, !4024, !37, !56}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4017, file: !6, line: 59, baseType: !4030, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !261, !37}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4017, file: !6, line: 60, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!43, !261}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4017, file: !6, line: 61, baseType: !4038, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !261}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !262, file: !6, line: 419, baseType: !37, size: 64, offset: 1472)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !262, file: !6, line: 420, baseType: !37, size: 64, offset: 1536)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !262, file: !6, line: 421, baseType: !280, size: 64, offset: 1600)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !262, file: !6, line: 424, baseType: !4045, size: 64, offset: 1664)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !262, file: !6, line: 425, baseType: !4049, size: 64, offset: 1728)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !262, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !262, file: !6, line: 435, baseType: !671, size: 256, offset: 1856)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !262, file: !6, line: 437, baseType: !4054, size: 64, offset: 2112)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4056, line: 69, size: 320, elements: !4057)
!4056 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4057 = !{!4058, !4059, !4060, !4077, !4079, !4083, !4084}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !4056, line: 70, baseType: !37, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4055, file: !4056, line: 71, baseType: !261, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4055, file: !4056, line: 72, baseType: !4061, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4056, line: 47, size: 256, elements: !4064)
!4064 = !{!4065, !4066, !4072, !4076}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4063, file: !4056, line: 49, baseType: !7, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4063, file: !4056, line: 51, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!43, !37, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4055)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4063, file: !4056, line: 53, baseType: !4073, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!43, !315, !4070}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4063, file: !4056, line: 55, baseType: !3471, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4055, file: !4056, line: 73, baseType: !4078, size: 16, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4055, file: !4056, line: 74, baseType: !4080, size: 8, offset: 208)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !4081)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !4082)
!4082 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4055, file: !4056, line: 75, baseType: !104, size: 8, offset: 216)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4055, file: !4056, line: 76, baseType: !4085, size: 64, offset: 256)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4055, file: !4056, line: 76, size: 64, elements: !4086)
!4086 = !{!4087, !4088, !4095}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4085, file: !4056, line: 77, baseType: !41, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4085, file: !4056, line: 78, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4056, line: 86, size: 128, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4091, file: !4056, line: 87, baseType: !7, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4091, file: !4056, line: 88, baseType: !315, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4085, file: !4056, line: 79, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4056, line: 92, size: 256, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103, !4104}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4098, file: !4056, line: 94, baseType: !7, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4098, file: !4056, line: 95, baseType: !7, size: 32, offset: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4098, file: !4056, line: 96, baseType: !3335, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4098, file: !4056, line: 97, baseType: !4061, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4098, file: !4056, line: 98, baseType: !41, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !262, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !262, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !262, file: !6, line: 442, baseType: !4045, size: 64, offset: 2240)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !262, file: !6, line: 443, baseType: !4049, size: 64, offset: 2304)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !262, file: !6, line: 444, baseType: !1314, size: 8, offset: 2368)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !262, file: !6, line: 451, baseType: !1314, size: 8, offset: 2376)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !262, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !262, file: !6, line: 455, baseType: !4113, size: 64, offset: 2432)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4115, line: 23, size: 96, elements: !4116)
!4115 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4116 = !{!4117, !4118, !4119}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4114, file: !4115, line: 24, baseType: !43, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4114, file: !4115, line: 24, baseType: !43, size: 32, offset: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4114, file: !4115, line: 24, baseType: !43, size: 32, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !262, file: !6, line: 458, baseType: !4121, size: 64, offset: 2496)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!43}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !262, file: !6, line: 460, baseType: !4125, size: 4032, align: 512, offset: 2560)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4126, size: 4032, elements: !4140)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4127)
!4127 = !{!4128, !4129, !4130}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4126, file: !6, line: 363, baseType: !41, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4126, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4126, file: !6, line: 367, baseType: !4131, size: 448, offset: 128)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4132)
!4132 = !{!4133, !4134}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4131, file: !6, line: 320, baseType: !261, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4131, file: !6, line: 321, baseType: !4135, size: 384, offset: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4136, line: 40, size: 384, elements: !4137)
!4136 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4137 = !{!4138}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4135, file: !4136, line: 41, baseType: !4139, size: 384, align: 64)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 384, align: 64, elements: !1860)
!4140 = !{!4141}
!4141 = !DISubrange(count: 7)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !262, file: !6, line: 463, baseType: !4143, size: 192, offset: 6592)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4144, line: 8, size: 192, elements: !4145)
!4144 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4145 = !{!4146, !4147, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4143, file: !4144, line: 10, baseType: !7, size: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4143, file: !4144, line: 11, baseType: !653, size: 64, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4143, file: !4144, line: 12, baseType: !4149, size: 64, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4151, line: 59, size: 48, elements: !4152)
!4151 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4150, file: !4151, line: 60, baseType: !1260, size: 16)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4150, file: !4151, line: 61, baseType: !1260, size: 16, offset: 16)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4150, file: !4151, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4150, file: !4151, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4150, file: !4151, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4150, file: !4151, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !262, file: !6, line: 465, baseType: !60, size: 64, offset: 6784)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !262, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !262, file: !6, line: 470, baseType: !118, size: 128, offset: 6912)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !262, file: !6, line: 471, baseType: !4163, size: 64, offset: 7040)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4165, line: 33, size: 96, elements: !4166)
!4165 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4166 = !{!4167, !4168, !4169, !4170}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4164, file: !4165, line: 37, baseType: !43, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4164, file: !4165, line: 43, baseType: !43, size: 32, offset: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4164, file: !4165, line: 45, baseType: !47, size: 16, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4164, file: !4165, line: 47, baseType: !47, size: 16, offset: 80)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !262, file: !6, line: 476, baseType: !4172, size: 64, offset: 7104)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4174)
!4174 = !{!4175, !4191, !4192, !4193}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4173, file: !6, line: 379, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4178, line: 204, baseType: !4179)
!4178 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4178, line: 197, size: 192, elements: !4180)
!4180 = !{!4181, !4183, !4184, !4185, !4187, !4189}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4179, file: !4178, line: 198, baseType: !4182, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4178, line: 21, baseType: !459)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4179, file: !4178, line: 199, baseType: !108, size: 8, offset: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4179, file: !4178, line: 200, baseType: !108, size: 8, offset: 40)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4179, file: !4178, line: 201, baseType: !4186, size: 16, offset: 48)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4178, line: 17, baseType: !115)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4179, file: !4178, line: 202, baseType: !4188, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4178, line: 16, baseType: !463)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4179, file: !4178, line: 203, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4178, line: 22, baseType: !463)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4173, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4173, file: !6, line: 381, baseType: !315, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4173, file: !6, line: 382, baseType: !315, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !262, file: !6, line: 477, baseType: !4173, size: 256, offset: 7168)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !262, file: !6, line: 480, baseType: !4196, size: 64, offset: 7424)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !262, file: !6, line: 483, baseType: !4199, size: 64, offset: 7488)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !262, file: !6, line: 488, baseType: !315, size: 64, offset: 7552)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !262, file: !6, line: 492, baseType: !41, size: 64, offset: 7616)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !262, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !262, file: !6, line: 495, baseType: !41, size: 64, offset: 7744)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !262, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !262, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !262, file: !6, line: 500, baseType: !4208, size: 64, offset: 7872)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4210, line: 45, baseType: !4211)
!4210 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !262, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !262, file: !6, line: 504, baseType: !4214, size: 64, offset: 8000)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4217, line: 96, size: 192, elements: !4218)
!4217 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4218 = !{!4219, !4220, !4262, !4264}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4216, file: !4217, line: 97, baseType: !7, size: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4216, file: !4217, line: 98, baseType: !4221, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4217, line: 24, size: 3072, elements: !4223)
!4223 = !{!4224, !4226, !4227, !4228, !4229, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4259, !4260, !4261}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4222, file: !4217, line: 26, baseType: !4225, size: 128)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 128, elements: !1860)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4222, file: !4217, line: 27, baseType: !4225, size: 128, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4222, file: !4217, line: 28, baseType: !43, size: 32, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4222, file: !4217, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4222, file: !4217, line: 32, baseType: !4230, size: 960, offset: 576)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4231, line: 206, size: 960, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4232 = !{!4233, !4234, !4237, !4239, !4240, !4241}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4230, file: !4231, line: 207, baseType: !731, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4230, file: !4231, line: 208, baseType: !4235, size: 256, offset: 64)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4236, size: 256, elements: !782)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4230, file: !4231, line: 209, baseType: !4238, size: 256, offset: 320)
!4238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !782)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4230, file: !4231, line: 213, baseType: !350, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4230, file: !4231, line: 215, baseType: !1528, size: 256, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4230, file: !4231, line: 216, baseType: !104, size: 8, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4222, file: !4217, line: 33, baseType: !60, size: 64, offset: 1536)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4222, file: !4217, line: 34, baseType: !60, size: 64, offset: 1600)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4222, file: !4217, line: 35, baseType: !1314, size: 8, offset: 1664)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4222, file: !4217, line: 36, baseType: !2583, size: 320, offset: 1728)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4222, file: !4217, line: 37, baseType: !1429, size: 256, offset: 2048)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4222, file: !4217, line: 38, baseType: !728, size: 128, align: 64, offset: 2304)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4222, file: !4217, line: 39, baseType: !4249, size: 64, offset: 2432)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4217, line: 49, size: 768, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4250, file: !4217, line: 50, baseType: !80, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4250, file: !4217, line: 51, baseType: !4238, size: 256, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4250, file: !4217, line: 53, baseType: !4238, size: 256, offset: 320)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4250, file: !4217, line: 54, baseType: !60, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4250, file: !4217, line: 55, baseType: !4249, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4250, file: !4217, line: 56, baseType: !43, size: 32, offset: 704)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4250, file: !4217, line: 57, baseType: !43, size: 32, offset: 736)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4222, file: !4217, line: 40, baseType: !60, size: 64, offset: 2496)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4222, file: !4217, line: 42, baseType: !43, size: 32, offset: 2560)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4222, file: !4217, line: 43, baseType: !4215, size: 64, offset: 2624)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4216, file: !4217, line: 99, baseType: !4263, offset: 128)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !589, line: 211, elements: !590)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4216, file: !4217, line: 100, baseType: !4265, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4217, line: 63, size: 3008, elements: !4267)
!4267 = !{!4268, !4269, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4297}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4266, file: !4217, line: 64, baseType: !4249, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4266, file: !4217, line: 65, baseType: !4270, size: 192, offset: 64)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4249, size: 192, elements: !316)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4266, file: !4217, line: 67, baseType: !43, size: 32, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4266, file: !4217, line: 68, baseType: !671, size: 256, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4266, file: !4217, line: 69, baseType: !80, size: 32, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4266, file: !4217, line: 70, baseType: !671, size: 256, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4266, file: !4217, line: 71, baseType: !60, size: 64, offset: 896)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4266, file: !4217, line: 72, baseType: !60, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4266, file: !4217, line: 73, baseType: !60, size: 64, offset: 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4266, file: !4217, line: 74, baseType: !60, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4266, file: !4217, line: 75, baseType: !60, size: 64, offset: 1152)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4266, file: !4217, line: 76, baseType: !60, size: 64, offset: 1216)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4266, file: !4217, line: 77, baseType: !60, size: 64, offset: 1280)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4266, file: !4217, line: 78, baseType: !60, size: 64, offset: 1344)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4266, file: !4217, line: 79, baseType: !1314, size: 8, offset: 1408)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4266, file: !4217, line: 80, baseType: !60, size: 64, offset: 1472)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4266, file: !4217, line: 81, baseType: !671, size: 256, offset: 1536)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4266, file: !4217, line: 82, baseType: !1468, size: 256, offset: 1792)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4266, file: !4217, line: 84, baseType: !70, size: 32, offset: 2048)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4266, file: !4217, line: 87, baseType: !60, size: 64, offset: 2112)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4266, file: !4217, line: 88, baseType: !60, size: 64, offset: 2176)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4266, file: !4217, line: 89, baseType: !4291, size: 704, offset: 2240)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1430, line: 111, size: 704, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4296}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4291, file: !1430, line: 112, baseType: !1429, size: 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4291, file: !1430, line: 113, baseType: !2583, size: 320, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4291, file: !1430, line: 116, baseType: !3402, size: 64, offset: 576)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4291, file: !1430, line: 117, baseType: !43, size: 32, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4266, file: !4217, line: 90, baseType: !4215, size: 64, offset: 2944)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !262, file: !6, line: 515, baseType: !4299, size: 64, offset: 8064)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4301, line: 117, size: 128, elements: !4302)
!4301 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4302 = !{!4303, !4304, !4305}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4300, file: !4301, line: 118, baseType: !1210, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4300, file: !4301, line: 119, baseType: !1210, size: 32, offset: 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4300, file: !4301, line: 120, baseType: !350, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !262, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !262, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !262, file: !6, line: 520, baseType: !4309, size: 64, offset: 8192)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !262, file: !6, line: 523, baseType: !4311, size: 64, offset: 8256)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !262, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !262, file: !6, line: 525, baseType: !4316, size: 64, offset: 8384)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !262, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !262, file: !6, line: 533, baseType: !41, size: 64, offset: 8512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !262, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !262, file: !6, line: 535, baseType: !4323, size: 64, offset: 8640)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !262, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !262, file: !6, line: 539, baseType: !43, size: 32, offset: 8736)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !262, file: !6, line: 540, baseType: !4327, size: 64, offset: 8768)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4329, line: 32, size: 64, elements: !4330)
!4329 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4328, file: !4329, line: 33, baseType: !1210, size: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4328, file: !4329, line: 34, baseType: !1210, size: 32, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !262, file: !6, line: 563, baseType: !118, size: 128, offset: 8832)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !262, file: !6, line: 565, baseType: !118, size: 128, offset: 8960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !262, file: !6, line: 568, baseType: !4336, size: 64, offset: 9088)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !262, file: !6, line: 570, baseType: !70, size: 32, offset: 9152)
!4338 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !46, line: 42, baseType: !60)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4340)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracefs_inode", file: !238, line: 12, size: 5056, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !4350, file: !238, line: 13, baseType: !390, size: 4800)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4350, file: !238, line: 15, baseType: !118, size: 128, offset: 4800)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4350, file: !238, line: 16, baseType: !60, size: 64, offset: 4928)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4350, file: !238, line: 17, baseType: !41, size: 64, offset: 4992)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4359)
!4359 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !46, line: 155, baseType: !7)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!4362 = !{!0, !4363, !4368, !4370, !4372, !4374, !4376, !4385, !4387, !4389, !4392, !4421, !4426, !4429, !4432, !4434, !4436, !4445, !4447, !4449, !4451, !4453, !4455, !4457, !4462, !4464, !4466, !4468, !4470, !4472, !4475}
!4363 = !DIGlobalVariableExpression(var: !4364, expr: !DIExpression())
!4364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !4365, isLocal: true, isDefinition: true)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 152, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 19)
!4368 = !DIGlobalVariableExpression(var: !4369, expr: !DIExpression())
!4369 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tracefs__306_835_tracefs_init1307", scope: !2, file: !3, line: 835, type: !41, isLocal: true, isDefinition: true)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "tracefs_mount", scope: !2, file: !3, line: 29, type: !534, isLocal: true, isDefinition: true)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "tracefs_mount_count", scope: !2, file: !3, line: 30, type: !43, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "tracefs_registered", scope: !2, file: !3, line: 31, type: !1314, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "tracefs_ops", scope: !2, file: !3, line: 95, type: !4378, isLocal: true, isDefinition: true)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracefs_dir_ops", file: !3, line: 92, size: 128, elements: !4379)
!4379 = !{!4380, !4384}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !4378, file: !3, line: 93, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!43, !37}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !4378, file: !3, line: 94, baseType: !4381, size: 64, offset: 64)
!4385 = !DIGlobalVariableExpression(var: !4386, expr: !DIExpression())
!4386 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !2104, isLocal: true, isDefinition: true)
!4387 = !DIGlobalVariableExpression(var: !4388, expr: !DIExpression())
!4388 = distinct !DIGlobalVariable(name: "trace_fs_type", scope: !2, file: !3, line: 532, type: !552, isLocal: true, isDefinition: true)
!4389 = !DIGlobalVariableExpression(var: !4390, expr: !DIExpression())
!4390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !4391, isLocal: true, isDefinition: true)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !1061)
!4392 = !DIGlobalVariableExpression(var: !4393, expr: !DIExpression())
!4393 = distinct !DIGlobalVariable(name: "trace_files", scope: !4394, file: !3, line: 493, type: !4414, isLocal: true, isDefinition: true)
!4394 = distinct !DISubprogram(name: "trace_fill_super", scope: !3, file: !3, line: 491, type: !4395, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!43, !540, !41, !43}
!4397 = !{!4398, !4399, !4400, !4401, !4412, !4413}
!4398 = !DILocalVariable(name: "sb", arg: 1, scope: !4394, file: !3, line: 491, type: !540)
!4399 = !DILocalVariable(name: "data", arg: 2, scope: !4394, file: !3, line: 491, type: !41)
!4400 = !DILocalVariable(name: "silent", arg: 3, scope: !4394, file: !3, line: 491, type: !43)
!4401 = !DILocalVariable(name: "fsi", scope: !4394, file: !3, line: 494, type: !4402)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracefs_fs_info", file: !3, line: 303, size: 128, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mount_opts", scope: !4403, file: !3, line: 304, baseType: !4406, size: 128)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracefs_mount_opts", file: !3, line: 281, size: 128, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4406, file: !3, line: 282, baseType: !395, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4406, file: !3, line: 283, baseType: !404, size: 32, offset: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4406, file: !3, line: 284, baseType: !45, size: 16, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !4406, file: !3, line: 286, baseType: !7, size: 32, offset: 96)
!4412 = !DILocalVariable(name: "err", scope: !4394, file: !3, line: 495, type: !43)
!4413 = !DILabel(scope: !4394, name: "fail", file: !3, line: 519)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4415, size: 192, elements: !1061)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4416)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_descr", file: !173, line: 3180, size: 192, elements: !4417)
!4417 = !{!4418, !4419, !4420}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4416, file: !173, line: 3180, baseType: !37, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4416, file: !173, line: 3180, baseType: !2870, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4416, file: !173, line: 3180, baseType: !43, size: 32, offset: 128)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(scope: null, file: !222, line: 480, type: !4423, isLocal: true, isDefinition: true)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 21)
!4426 = !DIGlobalVariableExpression(var: !4427, expr: !DIExpression())
!4427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !4428, isLocal: true, isDefinition: true)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !1860)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !4431, isLocal: true, isDefinition: true)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 56, elements: !4140)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !4431, isLocal: true, isDefinition: true)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !2104, isLocal: true, isDefinition: true)
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(name: "tokens", scope: !2, file: !3, line: 296, type: !4438, isLocal: true, isDefinition: true)
!4438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4439, size: 512, elements: !782)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !4441, line: 14, size: 128, elements: !4442)
!4441 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !4440, file: !4441, line: 15, baseType: !43, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !4440, file: !4441, line: 16, baseType: !37, size: 64, offset: 64)
!4445 = !DIGlobalVariableExpression(var: !4446, expr: !DIExpression())
!4446 = distinct !DIGlobalVariable(name: "tracefs_super_operations", scope: !2, file: !3, line: 455, type: !601, isLocal: true, isDefinition: true)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(name: "tracefs_inode_cachep", scope: !2, file: !3, line: 27, type: !2835, isLocal: true, isDefinition: true)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(name: "tracefs_inode_lock", scope: !2, file: !3, line: 37, type: !80, isLocal: true, isDefinition: true)
!4451 = !DIGlobalVariableExpression(var: !4452, expr: !DIExpression())
!4452 = distinct !DIGlobalVariable(name: "tracefs_inodes", scope: !2, file: !3, line: 38, type: !118, isLocal: true, isDefinition: true)
!4453 = !DIGlobalVariableExpression(var: !4454, expr: !DIExpression())
!4454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !2104, isLocal: true, isDefinition: true)
!4455 = !DIGlobalVariableExpression(var: !4456, expr: !DIExpression())
!4456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !2104, isLocal: true, isDefinition: true)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 434, type: !4459, isLocal: true, isDefinition: true)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 72, elements: !4460)
!4460 = !{!4461}
!4461 = !DISubrange(count: 9)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(name: "tracefs_dentry_operations", scope: !2, file: !3, line: 486, type: !488, isLocal: true, isDefinition: true)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(name: "tracefs_file_inode_operations", scope: !2, file: !3, line: 265, type: !417, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(name: "tracefs_file_operations", scope: !2, file: !3, line: 85, type: !2871, isLocal: true, isDefinition: true)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "tracefs_dir_inode_operations", scope: !2, file: !3, line: 258, type: !417, isLocal: true, isDefinition: true)
!4470 = !DIGlobalVariableExpression(var: !4471, expr: !DIExpression())
!4471 = distinct !DIGlobalVariable(name: "tracefs_instance_dir_inode_operations", scope: !2, file: !3, line: 249, type: !417, isLocal: true, isDefinition: true)
!4472 = !DIGlobalVariableExpression(var: !4473, expr: !DIExpression())
!4473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 816, type: !4474, isLocal: true, isDefinition: true)
!4474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !2691)
!4475 = !DIGlobalVariableExpression(var: !4476, expr: !DIExpression())
!4476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 825, type: !2104, isLocal: true, isDefinition: true)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 200, elements: !4478)
!4478 = !{!4479}
!4479 = !DISubrange(count: 25)
!4480 = !{i32 7, !"Dwarf Version", i32 5}
!4481 = !{i32 2, !"Debug Info Version", i32 3}
!4482 = !{i32 1, !"wchar_size", i32 2}
!4483 = !{i32 8, !"cf-protection-branch", i32 1}
!4484 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4485 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4486 = !{i32 1, !"Code Model", i32 2}
!4487 = !{i32 1, !"override-stack-alignment", i32 8}
!4488 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4489 = distinct !DISubprogram(name: "tracefs_get_inode", scope: !3, file: !3, line: 271, type: !606, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4490)
!4490 = !{!4491, !4492}
!4491 = !DILocalVariable(name: "sb", arg: 1, scope: !4489, file: !3, line: 271, type: !540)
!4492 = !DILocalVariable(name: "inode", scope: !4489, file: !3, line: 273, type: !389)
!4493 = !DILocation(line: 271, column: 53, scope: !4489)
!4494 = !DILocation(line: 273, column: 2, scope: !4489)
!4495 = !DILocation(line: 273, column: 16, scope: !4489)
!4496 = !DILocation(line: 273, column: 34, scope: !4489)
!4497 = !DILocation(line: 273, column: 24, scope: !4489)
!4498 = !DILocation(line: 274, column: 6, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 274, column: 6)
!4500 = !DILocation(line: 274, column: 6, scope: !4489)
!4501 = !DILocation(line: 275, column: 18, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 274, column: 13)
!4503 = !DILocation(line: 275, column: 3, scope: !4502)
!4504 = !DILocation(line: 275, column: 10, scope: !4502)
!4505 = !DILocation(line: 275, column: 16, scope: !4502)
!4506 = !DILocation(line: 276, column: 3, scope: !4502)
!4507 = !DILocation(line: 276, column: 10, scope: !4502)
!4508 = !DILocation(line: 276, column: 20, scope: !4502)
!4509 = !DILocation(line: 276, column: 27, scope: !4502)
!4510 = !DILocation(line: 276, column: 37, scope: !4502)
!4511 = !DILocation(line: 276, column: 61, scope: !4502)
!4512 = !DILocation(line: 276, column: 35, scope: !4502)
!4513 = !DILocation(line: 277, column: 2, scope: !4502)
!4514 = !DILocation(line: 278, column: 9, scope: !4489)
!4515 = !DILocation(line: 279, column: 1, scope: !4489)
!4516 = !DILocation(line: 278, column: 2, scope: !4489)
!4517 = !DISubprogram(name: "new_inode", scope: !173, file: !173, line: 2932, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4518 = !DISubprogram(name: "get_next_ino", scope: !173, file: !173, line: 2908, type: !4519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!7}
!4521 = !DISubprogram(name: "inode_set_ctime_current", scope: !173, file: !173, line: 1515, type: !4522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!3546, !389}
!4524 = distinct !DISubprogram(name: "tracefs_start_creating", scope: !3, file: !3, line: 540, type: !4525, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4527)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!424, !37, !424}
!4527 = !{!4528, !4529, !4530, !4531}
!4528 = !DILocalVariable(name: "name", arg: 1, scope: !4524, file: !3, line: 540, type: !37)
!4529 = !DILocalVariable(name: "parent", arg: 2, scope: !4524, file: !3, line: 540, type: !424)
!4530 = !DILocalVariable(name: "dentry", scope: !4524, file: !3, line: 542, type: !424)
!4531 = !DILocalVariable(name: "error", scope: !4524, file: !3, line: 543, type: !43)
!4532 = !DILocation(line: 540, column: 51, scope: !4524)
!4533 = !DILocation(line: 540, column: 72, scope: !4524)
!4534 = !DILocation(line: 542, column: 2, scope: !4524)
!4535 = !DILocation(line: 542, column: 17, scope: !4524)
!4536 = !DILocation(line: 543, column: 2, scope: !4524)
!4537 = !DILocation(line: 543, column: 6, scope: !4524)
!4538 = !DILocation(line: 545, column: 2, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 545, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 545, column: 2)
!4541 = !DILocation(line: 545, column: 2, scope: !4540)
!4542 = !DILocation(line: 547, column: 10, scope: !4524)
!4543 = !DILocation(line: 547, column: 8, scope: !4524)
!4544 = !DILocation(line: 549, column: 6, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 549, column: 6)
!4546 = !DILocation(line: 549, column: 6, scope: !4524)
!4547 = !DILocation(line: 550, column: 18, scope: !4545)
!4548 = !DILocation(line: 550, column: 10, scope: !4545)
!4549 = !DILocation(line: 550, column: 3, scope: !4545)
!4550 = !DILocation(line: 557, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 557, column: 6)
!4552 = !DILocation(line: 557, column: 6, scope: !4524)
!4553 = !DILocation(line: 558, column: 12, scope: !4551)
!4554 = !DILocation(line: 558, column: 27, scope: !4551)
!4555 = !DILocation(line: 558, column: 10, scope: !4551)
!4556 = !DILocation(line: 558, column: 3, scope: !4551)
!4557 = !DILocation(line: 560, column: 21, scope: !4524)
!4558 = !DILocation(line: 560, column: 13, scope: !4524)
!4559 = !DILocation(line: 560, column: 2, scope: !4524)
!4560 = !DILocation(line: 561, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 561, column: 6)
!4562 = !DILocation(line: 561, column: 6, scope: !4524)
!4563 = !DILocation(line: 562, column: 12, scope: !4561)
!4564 = !DILocation(line: 562, column: 10, scope: !4561)
!4565 = !DILocation(line: 562, column: 3, scope: !4561)
!4566 = !DILocation(line: 564, column: 27, scope: !4561)
!4567 = !DILocation(line: 564, column: 33, scope: !4561)
!4568 = !DILocation(line: 564, column: 48, scope: !4561)
!4569 = !DILocation(line: 564, column: 41, scope: !4561)
!4570 = !DILocation(line: 564, column: 12, scope: !4561)
!4571 = !DILocation(line: 564, column: 10, scope: !4561)
!4572 = !DILocation(line: 565, column: 14, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 565, column: 6)
!4574 = !DILocation(line: 565, column: 7, scope: !4573)
!4575 = !DILocation(line: 565, column: 22, scope: !4573)
!4576 = !DILocation(line: 565, column: 33, scope: !4573)
!4577 = !DILocation(line: 565, column: 25, scope: !4573)
!4578 = !DILocation(line: 565, column: 6, scope: !4524)
!4579 = !DILocation(line: 566, column: 8, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 565, column: 42)
!4581 = !DILocation(line: 566, column: 3, scope: !4580)
!4582 = !DILocation(line: 567, column: 12, scope: !4580)
!4583 = !DILocation(line: 567, column: 10, scope: !4580)
!4584 = !DILocation(line: 568, column: 2, scope: !4580)
!4585 = !DILocation(line: 570, column: 13, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 570, column: 6)
!4587 = !DILocation(line: 570, column: 6, scope: !4586)
!4588 = !DILocation(line: 570, column: 6, scope: !4524)
!4589 = !DILocation(line: 571, column: 24, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 570, column: 22)
!4591 = !DILocation(line: 571, column: 16, scope: !4590)
!4592 = !DILocation(line: 571, column: 3, scope: !4590)
!4593 = !DILocation(line: 572, column: 3, scope: !4590)
!4594 = !DILocation(line: 573, column: 2, scope: !4590)
!4595 = !DILocation(line: 575, column: 9, scope: !4524)
!4596 = !DILocation(line: 575, column: 2, scope: !4524)
!4597 = !DILocation(line: 576, column: 1, scope: !4524)
!4598 = !DISubprogram(name: "simple_pin_fs", scope: !173, file: !173, line: 3184, type: !4599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!43, !551, !4601, !653}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!4602 = distinct !DISubprogram(name: "ERR_PTR", scope: !4603, file: !4603, line: 39, type: !4604, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4606)
!4603 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!41, !350}
!4606 = !{!4607}
!4607 = !DILocalVariable(name: "error", arg: 1, scope: !4602, file: !4603, line: 39, type: !350)
!4608 = !DILocation(line: 39, column: 48, scope: !4602)
!4609 = !DILocation(line: 41, column: 18, scope: !4602)
!4610 = !DILocation(line: 41, column: 9, scope: !4602)
!4611 = !DILocation(line: 41, column: 2, scope: !4602)
!4612 = distinct !DISubprogram(name: "inode_lock", scope: !173, file: !173, line: 802, type: !610, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "inode", arg: 1, scope: !4612, file: !173, line: 802, type: !389)
!4615 = !DILocation(line: 802, column: 45, scope: !4612)
!4616 = !DILocation(line: 804, column: 14, scope: !4612)
!4617 = !DILocation(line: 804, column: 21, scope: !4612)
!4618 = !DILocation(line: 804, column: 2, scope: !4612)
!4619 = !DILocation(line: 805, column: 1, scope: !4612)
!4620 = distinct !DISubprogram(name: "d_inode", scope: !426, file: !426, line: 514, type: !4621, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!389, !500}
!4623 = !{!4624}
!4624 = !DILocalVariable(name: "dentry", arg: 1, scope: !4620, file: !426, line: 514, type: !500)
!4625 = !DILocation(line: 514, column: 58, scope: !4620)
!4626 = !DILocation(line: 516, column: 9, scope: !4620)
!4627 = !DILocation(line: 516, column: 17, scope: !4620)
!4628 = !DILocation(line: 516, column: 2, scope: !4620)
!4629 = !DISubprogram(name: "lookup_one_len", scope: !4630, file: !4630, line: 76, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4630 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!424, !37, !424, !43}
!4633 = !DISubprogram(name: "strlen", scope: !4634, file: !4634, line: 128, type: !4635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4634 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!60, !37}
!4637 = distinct !DISubprogram(name: "IS_ERR", scope: !4603, file: !4603, line: 59, type: !4638, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!1314, !1243}
!4640 = !{!4641}
!4641 = !DILocalVariable(name: "ptr", arg: 1, scope: !4637, file: !4603, line: 59, type: !1243)
!4642 = !DILocation(line: 59, column: 60, scope: !4637)
!4643 = !DILocation(line: 61, column: 9, scope: !4637)
!4644 = !DILocation(line: 61, column: 2, scope: !4637)
!4645 = !DISubprogram(name: "dput", scope: !426, file: !426, line: 368, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4646 = distinct !DISubprogram(name: "inode_unlock", scope: !173, file: !173, line: 807, type: !610, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "inode", arg: 1, scope: !4646, file: !173, line: 807, type: !389)
!4649 = !DILocation(line: 807, column: 47, scope: !4646)
!4650 = !DILocation(line: 809, column: 12, scope: !4646)
!4651 = !DILocation(line: 809, column: 19, scope: !4646)
!4652 = !DILocation(line: 809, column: 2, scope: !4646)
!4653 = !DILocation(line: 810, column: 1, scope: !4646)
!4654 = !DISubprogram(name: "simple_release_fs", scope: !173, file: !173, line: 3185, type: !4655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !4601, !653}
!4657 = distinct !DISubprogram(name: "tracefs_failed_creating", scope: !3, file: !3, line: 578, type: !4658, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4660)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!424, !424}
!4660 = !{!4661}
!4661 = !DILocalVariable(name: "dentry", arg: 1, scope: !4657, file: !3, line: 578, type: !424)
!4662 = !DILocation(line: 578, column: 55, scope: !4657)
!4663 = !DILocation(line: 580, column: 23, scope: !4657)
!4664 = !DILocation(line: 580, column: 31, scope: !4657)
!4665 = !DILocation(line: 580, column: 15, scope: !4657)
!4666 = !DILocation(line: 580, column: 2, scope: !4657)
!4667 = !DILocation(line: 581, column: 7, scope: !4657)
!4668 = !DILocation(line: 581, column: 2, scope: !4657)
!4669 = !DILocation(line: 582, column: 2, scope: !4657)
!4670 = !DILocation(line: 583, column: 2, scope: !4657)
!4671 = distinct !DISubprogram(name: "tracefs_end_creating", scope: !3, file: !3, line: 586, type: !4658, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4672)
!4672 = !{!4673}
!4673 = !DILocalVariable(name: "dentry", arg: 1, scope: !4671, file: !3, line: 586, type: !424)
!4674 = !DILocation(line: 586, column: 52, scope: !4671)
!4675 = !DILocation(line: 588, column: 23, scope: !4671)
!4676 = !DILocation(line: 588, column: 31, scope: !4671)
!4677 = !DILocation(line: 588, column: 15, scope: !4671)
!4678 = !DILocation(line: 588, column: 2, scope: !4671)
!4679 = !DILocation(line: 589, column: 9, scope: !4671)
!4680 = !DILocation(line: 589, column: 2, scope: !4671)
!4681 = distinct !DISubprogram(name: "tracefs_create_file", scope: !3, file: !3, line: 638, type: !4682, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4684)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!424, !37, !45, !424, !41, !2870}
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692}
!4685 = !DILocalVariable(name: "name", arg: 1, scope: !4681, file: !3, line: 638, type: !37)
!4686 = !DILocalVariable(name: "mode", arg: 2, scope: !4681, file: !3, line: 638, type: !45)
!4687 = !DILocalVariable(name: "parent", arg: 3, scope: !4681, file: !3, line: 639, type: !424)
!4688 = !DILocalVariable(name: "data", arg: 4, scope: !4681, file: !3, line: 639, type: !41)
!4689 = !DILocalVariable(name: "fops", arg: 5, scope: !4681, file: !3, line: 640, type: !2870)
!4690 = !DILocalVariable(name: "ti", scope: !4681, file: !3, line: 642, type: !4349)
!4691 = !DILocalVariable(name: "dentry", scope: !4681, file: !3, line: 643, type: !424)
!4692 = !DILocalVariable(name: "inode", scope: !4681, file: !3, line: 644, type: !389)
!4693 = !DILocation(line: 638, column: 48, scope: !4681)
!4694 = !DILocation(line: 638, column: 62, scope: !4681)
!4695 = !DILocation(line: 639, column: 23, scope: !4681)
!4696 = !DILocation(line: 639, column: 37, scope: !4681)
!4697 = !DILocation(line: 640, column: 38, scope: !4681)
!4698 = !DILocation(line: 642, column: 2, scope: !4681)
!4699 = !DILocation(line: 642, column: 24, scope: !4681)
!4700 = !DILocation(line: 643, column: 2, scope: !4681)
!4701 = !DILocation(line: 643, column: 17, scope: !4681)
!4702 = !DILocation(line: 644, column: 2, scope: !4681)
!4703 = !DILocation(line: 644, column: 16, scope: !4681)
!4704 = !DILocation(line: 646, column: 6, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 646, column: 6)
!4706 = !DILocation(line: 646, column: 6, scope: !4681)
!4707 = !DILocation(line: 647, column: 3, scope: !4705)
!4708 = !DILocation(line: 649, column: 8, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 649, column: 6)
!4710 = !DILocation(line: 649, column: 13, scope: !4709)
!4711 = !DILocation(line: 649, column: 6, scope: !4681)
!4712 = !DILocation(line: 650, column: 8, scope: !4709)
!4713 = !DILocation(line: 650, column: 3, scope: !4709)
!4714 = !DILocation(line: 651, column: 2, scope: !4681)
!4715 = !DILocation(line: 651, column: 2, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 651, column: 2)
!4717 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 651, column: 2)
!4718 = !DILocation(line: 651, column: 2, scope: !4717)
!4719 = !DILocation(line: 651, column: 2, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 651, column: 2)
!4721 = !DILocation(line: 651, column: 2, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 651, column: 2)
!4723 = !DILocation(line: 651, column: 2, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 651, column: 2)
!4725 = !{i64 2154666864, i64 2154666893, i64 2154666939, i64 2154666997, i64 2154667051, i64 2154667105, i64 2154667160, i64 2154667191}
!4726 = !DILocation(line: 652, column: 34, scope: !4681)
!4727 = !DILocation(line: 652, column: 40, scope: !4681)
!4728 = !DILocation(line: 652, column: 11, scope: !4681)
!4729 = !DILocation(line: 652, column: 9, scope: !4681)
!4730 = !DILocation(line: 654, column: 13, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 654, column: 6)
!4732 = !DILocation(line: 654, column: 6, scope: !4731)
!4733 = !DILocation(line: 654, column: 6, scope: !4681)
!4734 = !DILocation(line: 655, column: 3, scope: !4731)
!4735 = !DILocation(line: 657, column: 28, scope: !4681)
!4736 = !DILocation(line: 657, column: 36, scope: !4681)
!4737 = !DILocation(line: 657, column: 10, scope: !4681)
!4738 = !DILocation(line: 657, column: 8, scope: !4681)
!4739 = !DILocation(line: 658, column: 6, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 658, column: 6)
!4741 = !DILocation(line: 658, column: 6, scope: !4681)
!4742 = !DILocation(line: 659, column: 34, scope: !4740)
!4743 = !DILocation(line: 659, column: 10, scope: !4740)
!4744 = !DILocation(line: 659, column: 3, scope: !4740)
!4745 = !DILocation(line: 661, column: 19, scope: !4681)
!4746 = !DILocation(line: 661, column: 7, scope: !4681)
!4747 = !DILocation(line: 661, column: 5, scope: !4681)
!4748 = !DILocation(line: 662, column: 31, scope: !4681)
!4749 = !DILocation(line: 662, column: 39, scope: !4681)
!4750 = !DILocation(line: 662, column: 16, scope: !4681)
!4751 = !DILocation(line: 662, column: 2, scope: !4681)
!4752 = !DILocation(line: 662, column: 6, scope: !4681)
!4753 = !DILocation(line: 662, column: 14, scope: !4681)
!4754 = !DILocation(line: 664, column: 18, scope: !4681)
!4755 = !DILocation(line: 664, column: 2, scope: !4681)
!4756 = !DILocation(line: 664, column: 9, scope: !4681)
!4757 = !DILocation(line: 664, column: 16, scope: !4681)
!4758 = !DILocation(line: 665, column: 2, scope: !4681)
!4759 = !DILocation(line: 665, column: 9, scope: !4681)
!4760 = !DILocation(line: 665, column: 14, scope: !4681)
!4761 = !DILocation(line: 666, column: 17, scope: !4681)
!4762 = !DILocation(line: 666, column: 24, scope: !4681)
!4763 = !DILocation(line: 666, column: 2, scope: !4681)
!4764 = !DILocation(line: 666, column: 9, scope: !4681)
!4765 = !DILocation(line: 666, column: 15, scope: !4681)
!4766 = !DILocation(line: 667, column: 21, scope: !4681)
!4767 = !DILocation(line: 667, column: 2, scope: !4681)
!4768 = !DILocation(line: 667, column: 9, scope: !4681)
!4769 = !DILocation(line: 667, column: 19, scope: !4681)
!4770 = !DILocation(line: 668, column: 2, scope: !4681)
!4771 = !DILocation(line: 668, column: 9, scope: !4681)
!4772 = !DILocation(line: 668, column: 25, scope: !4681)
!4773 = !DILocation(line: 668, column: 33, scope: !4681)
!4774 = !DILocation(line: 668, column: 17, scope: !4681)
!4775 = !DILocation(line: 668, column: 44, scope: !4681)
!4776 = !DILocation(line: 669, column: 2, scope: !4681)
!4777 = !DILocation(line: 669, column: 9, scope: !4681)
!4778 = !DILocation(line: 669, column: 25, scope: !4681)
!4779 = !DILocation(line: 669, column: 33, scope: !4681)
!4780 = !DILocation(line: 669, column: 17, scope: !4681)
!4781 = !DILocation(line: 669, column: 44, scope: !4681)
!4782 = !DILocation(line: 670, column: 16, scope: !4681)
!4783 = !DILocation(line: 670, column: 24, scope: !4681)
!4784 = !DILocation(line: 670, column: 2, scope: !4681)
!4785 = !DILocation(line: 671, column: 26, scope: !4681)
!4786 = !DILocation(line: 671, column: 34, scope: !4681)
!4787 = !DILocation(line: 671, column: 18, scope: !4681)
!4788 = !DILocation(line: 671, column: 45, scope: !4681)
!4789 = !DILocation(line: 671, column: 2, scope: !4681)
!4790 = !DILocation(line: 672, column: 30, scope: !4681)
!4791 = !DILocation(line: 672, column: 9, scope: !4681)
!4792 = !DILocation(line: 672, column: 2, scope: !4681)
!4793 = !DILocation(line: 673, column: 1, scope: !4681)
!4794 = !DISubprogram(name: "security_locked_down", scope: !184, file: !184, line: 488, type: !4795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!43, !183}
!4797 = distinct !DISubprogram(name: "get_tracefs", scope: !238, file: !238, line: 66, type: !4798, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4800)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!4349, !3443}
!4800 = !{!4801, !4802}
!4801 = !DILocalVariable(name: "inode", arg: 1, scope: !4797, file: !238, line: 66, type: !3443)
!4802 = !DILocalVariable(name: "__mptr", scope: !4803, file: !238, line: 68, type: !41)
!4803 = distinct !DILexicalBlock(scope: !4797, file: !238, line: 68, column: 9)
!4804 = !DILocation(line: 66, column: 69, scope: !4797)
!4805 = !DILocation(line: 68, column: 9, scope: !4803)
!4806 = !DILocation(line: 68, column: 9, scope: !4797)
!4807 = !DILocation(line: 68, column: 2, scope: !4797)
!4808 = distinct !DISubprogram(name: "instance_inode", scope: !3, file: !3, line: 593, type: !4809, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4811)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!389, !424, !389}
!4811 = !{!4812, !4813, !4814}
!4812 = !DILocalVariable(name: "parent", arg: 1, scope: !4808, file: !3, line: 593, type: !424)
!4813 = !DILocalVariable(name: "inode", arg: 2, scope: !4808, file: !3, line: 593, type: !389)
!4814 = !DILocalVariable(name: "ti", scope: !4808, file: !3, line: 595, type: !4349)
!4815 = !DILocation(line: 593, column: 52, scope: !4808)
!4816 = !DILocation(line: 593, column: 74, scope: !4808)
!4817 = !DILocation(line: 595, column: 2, scope: !4808)
!4818 = !DILocation(line: 595, column: 24, scope: !4808)
!4819 = !DILocation(line: 598, column: 7, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 598, column: 6)
!4821 = !DILocation(line: 598, column: 6, scope: !4808)
!4822 = !DILocation(line: 599, column: 18, scope: !4820)
!4823 = !DILocation(line: 599, column: 25, scope: !4820)
!4824 = !DILocation(line: 599, column: 31, scope: !4820)
!4825 = !DILocation(line: 599, column: 10, scope: !4820)
!4826 = !DILocation(line: 599, column: 3, scope: !4820)
!4827 = !DILocation(line: 602, column: 2, scope: !4808)
!4828 = !DILocation(line: 602, column: 10, scope: !4808)
!4829 = !DILocation(line: 602, column: 9, scope: !4808)
!4830 = !DILocation(line: 603, column: 28, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 602, column: 27)
!4832 = !DILocation(line: 603, column: 20, scope: !4831)
!4833 = !DILocation(line: 603, column: 8, scope: !4831)
!4834 = !DILocation(line: 603, column: 6, scope: !4831)
!4835 = !DILocation(line: 604, column: 7, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 604, column: 7)
!4837 = !DILocation(line: 604, column: 11, scope: !4836)
!4838 = !DILocation(line: 604, column: 17, scope: !4836)
!4839 = !DILocation(line: 604, column: 7, scope: !4831)
!4840 = !DILocation(line: 605, column: 4, scope: !4836)
!4841 = !DILocation(line: 606, column: 12, scope: !4831)
!4842 = !DILocation(line: 606, column: 20, scope: !4831)
!4843 = !DILocation(line: 606, column: 10, scope: !4831)
!4844 = distinct !{!4844, !4827, !4845, !4846, !4847}
!4845 = !DILocation(line: 607, column: 2, scope: !4808)
!4846 = !{!"llvm.loop.mustprogress"}
!4847 = !{!"llvm.loop.unroll.disable"}
!4848 = !DILocation(line: 609, column: 17, scope: !4808)
!4849 = !DILocation(line: 609, column: 9, scope: !4808)
!4850 = !DILocation(line: 609, column: 2, scope: !4808)
!4851 = !DILocation(line: 610, column: 1, scope: !4808)
!4852 = !DISubprogram(name: "d_instantiate", scope: !426, file: !426, line: 221, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4853 = distinct !DISubprogram(name: "fsnotify_create", scope: !4854, file: !4854, line: 211, type: !4855, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4857)
!4854 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!4855 = !DISubroutineType(types: !4856)
!4856 = !{null, !389, !424}
!4857 = !{!4858, !4859}
!4858 = !DILocalVariable(name: "dir", arg: 1, scope: !4853, file: !4854, line: 211, type: !389)
!4859 = !DILocalVariable(name: "dentry", arg: 2, scope: !4853, file: !4854, line: 211, type: !424)
!4860 = !DILocation(line: 211, column: 50, scope: !4853)
!4861 = !DILocation(line: 211, column: 70, scope: !4853)
!4862 = !DILocation(line: 213, column: 20, scope: !4853)
!4863 = !DILocation(line: 213, column: 25, scope: !4853)
!4864 = !DILocation(line: 213, column: 2, scope: !4853)
!4865 = !DILocation(line: 215, column: 18, scope: !4853)
!4866 = !DILocation(line: 215, column: 23, scope: !4853)
!4867 = !DILocation(line: 215, column: 2, scope: !4853)
!4868 = !DILocation(line: 216, column: 1, scope: !4853)
!4869 = distinct !DISubprogram(name: "tracefs_create_dir", scope: !3, file: !3, line: 724, type: !4525, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4870)
!4870 = !{!4871, !4872}
!4871 = !DILocalVariable(name: "name", arg: 1, scope: !4869, file: !3, line: 724, type: !37)
!4872 = !DILocalVariable(name: "parent", arg: 2, scope: !4869, file: !3, line: 724, type: !424)
!4873 = !DILocation(line: 724, column: 47, scope: !4869)
!4874 = !DILocation(line: 724, column: 68, scope: !4869)
!4875 = !DILocation(line: 726, column: 6, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 726, column: 6)
!4877 = !DILocation(line: 726, column: 6, scope: !4869)
!4878 = !DILocation(line: 727, column: 3, scope: !4876)
!4879 = !DILocation(line: 729, column: 22, scope: !4869)
!4880 = !DILocation(line: 729, column: 28, scope: !4869)
!4881 = !DILocation(line: 729, column: 9, scope: !4869)
!4882 = !DILocation(line: 729, column: 2, scope: !4869)
!4883 = !DILocation(line: 730, column: 1, scope: !4869)
!4884 = distinct !DISubprogram(name: "__create_dir", scope: !3, file: !3, line: 675, type: !4885, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!424, !37, !424, !416}
!4887 = !{!4888, !4889, !4890, !4891, !4892, !4893}
!4888 = !DILocalVariable(name: "name", arg: 1, scope: !4884, file: !3, line: 675, type: !37)
!4889 = !DILocalVariable(name: "parent", arg: 2, scope: !4884, file: !3, line: 675, type: !424)
!4890 = !DILocalVariable(name: "ops", arg: 3, scope: !4884, file: !3, line: 676, type: !416)
!4891 = !DILocalVariable(name: "ti", scope: !4884, file: !3, line: 678, type: !4349)
!4892 = !DILocalVariable(name: "dentry", scope: !4884, file: !3, line: 679, type: !424)
!4893 = !DILocalVariable(name: "inode", scope: !4884, file: !3, line: 680, type: !389)
!4894 = !DILocation(line: 675, column: 48, scope: !4884)
!4895 = !DILocation(line: 675, column: 69, scope: !4884)
!4896 = !DILocation(line: 676, column: 39, scope: !4884)
!4897 = !DILocation(line: 678, column: 2, scope: !4884)
!4898 = !DILocation(line: 678, column: 24, scope: !4884)
!4899 = !DILocation(line: 679, column: 2, scope: !4884)
!4900 = !DILocation(line: 679, column: 17, scope: !4884)
!4901 = !DILocation(line: 679, column: 49, scope: !4884)
!4902 = !DILocation(line: 679, column: 55, scope: !4884)
!4903 = !DILocation(line: 679, column: 26, scope: !4884)
!4904 = !DILocation(line: 680, column: 2, scope: !4884)
!4905 = !DILocation(line: 680, column: 16, scope: !4884)
!4906 = !DILocation(line: 682, column: 13, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 682, column: 6)
!4908 = !DILocation(line: 682, column: 6, scope: !4907)
!4909 = !DILocation(line: 682, column: 6, scope: !4884)
!4910 = !DILocation(line: 683, column: 3, scope: !4907)
!4911 = !DILocation(line: 685, column: 28, scope: !4884)
!4912 = !DILocation(line: 685, column: 36, scope: !4884)
!4913 = !DILocation(line: 685, column: 10, scope: !4884)
!4914 = !DILocation(line: 685, column: 8, scope: !4884)
!4915 = !DILocation(line: 686, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 686, column: 6)
!4917 = !DILocation(line: 686, column: 6, scope: !4884)
!4918 = !DILocation(line: 687, column: 34, scope: !4916)
!4919 = !DILocation(line: 687, column: 10, scope: !4916)
!4920 = !DILocation(line: 687, column: 3, scope: !4916)
!4921 = !DILocation(line: 690, column: 2, scope: !4884)
!4922 = !DILocation(line: 690, column: 9, scope: !4884)
!4923 = !DILocation(line: 690, column: 16, scope: !4884)
!4924 = !DILocation(line: 691, column: 16, scope: !4884)
!4925 = !DILocation(line: 691, column: 2, scope: !4884)
!4926 = !DILocation(line: 691, column: 9, scope: !4884)
!4927 = !DILocation(line: 691, column: 14, scope: !4884)
!4928 = !DILocation(line: 692, column: 2, scope: !4884)
!4929 = !DILocation(line: 692, column: 9, scope: !4884)
!4930 = !DILocation(line: 692, column: 15, scope: !4884)
!4931 = !DILocation(line: 693, column: 2, scope: !4884)
!4932 = !DILocation(line: 693, column: 9, scope: !4884)
!4933 = !DILocation(line: 693, column: 25, scope: !4884)
!4934 = !DILocation(line: 693, column: 33, scope: !4884)
!4935 = !DILocation(line: 693, column: 17, scope: !4884)
!4936 = !DILocation(line: 693, column: 44, scope: !4884)
!4937 = !DILocation(line: 694, column: 2, scope: !4884)
!4938 = !DILocation(line: 694, column: 9, scope: !4884)
!4939 = !DILocation(line: 694, column: 25, scope: !4884)
!4940 = !DILocation(line: 694, column: 33, scope: !4884)
!4941 = !DILocation(line: 694, column: 17, scope: !4884)
!4942 = !DILocation(line: 694, column: 44, scope: !4884)
!4943 = !DILocation(line: 696, column: 19, scope: !4884)
!4944 = !DILocation(line: 696, column: 7, scope: !4884)
!4945 = !DILocation(line: 696, column: 5, scope: !4884)
!4946 = !DILocation(line: 697, column: 31, scope: !4884)
!4947 = !DILocation(line: 697, column: 39, scope: !4884)
!4948 = !DILocation(line: 697, column: 16, scope: !4884)
!4949 = !DILocation(line: 697, column: 2, scope: !4884)
!4950 = !DILocation(line: 697, column: 6, scope: !4884)
!4951 = !DILocation(line: 697, column: 14, scope: !4884)
!4952 = !DILocation(line: 700, column: 12, scope: !4884)
!4953 = !DILocation(line: 700, column: 2, scope: !4884)
!4954 = !DILocation(line: 701, column: 16, scope: !4884)
!4955 = !DILocation(line: 701, column: 24, scope: !4884)
!4956 = !DILocation(line: 701, column: 2, scope: !4884)
!4957 = !DILocation(line: 702, column: 20, scope: !4884)
!4958 = !DILocation(line: 702, column: 28, scope: !4884)
!4959 = !DILocation(line: 702, column: 12, scope: !4884)
!4960 = !DILocation(line: 702, column: 2, scope: !4884)
!4961 = !DILocation(line: 703, column: 25, scope: !4884)
!4962 = !DILocation(line: 703, column: 33, scope: !4884)
!4963 = !DILocation(line: 703, column: 17, scope: !4884)
!4964 = !DILocation(line: 703, column: 44, scope: !4884)
!4965 = !DILocation(line: 703, column: 2, scope: !4884)
!4966 = !DILocation(line: 704, column: 30, scope: !4884)
!4967 = !DILocation(line: 704, column: 9, scope: !4884)
!4968 = !DILocation(line: 704, column: 2, scope: !4884)
!4969 = !DILocation(line: 705, column: 1, scope: !4884)
!4970 = distinct !DISubprogram(name: "tracefs_create_instance_dir", scope: !3, file: !3, line: 749, type: !4971, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4973)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!424, !37, !424, !4381, !4381}
!4973 = !{!4974, !4975, !4976, !4977, !4978, !4979, !4982}
!4974 = !DILocalVariable(name: "name", arg: 1, scope: !4970, file: !3, line: 749, type: !37)
!4975 = !DILocalVariable(name: "parent", arg: 2, scope: !4970, file: !3, line: 750, type: !424)
!4976 = !DILocalVariable(name: "mkdir", arg: 3, scope: !4970, file: !3, line: 751, type: !4381)
!4977 = !DILocalVariable(name: "rmdir", arg: 4, scope: !4970, file: !3, line: 752, type: !4381)
!4978 = !DILocalVariable(name: "dentry", scope: !4970, file: !3, line: 754, type: !424)
!4979 = !DILocalVariable(name: "__ret_warn_on", scope: !4980, file: !3, line: 757, type: !43)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 757, column: 6)
!4981 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 757, column: 6)
!4982 = !DILocalVariable(name: "__flags", scope: !4983, file: !3, line: 757, type: !43)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 757, column: 6)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 757, column: 6)
!4985 = !DILocation(line: 749, column: 63, scope: !4970)
!4986 = !DILocation(line: 750, column: 23, scope: !4970)
!4987 = !DILocation(line: 751, column: 14, scope: !4970)
!4988 = !DILocation(line: 752, column: 14, scope: !4970)
!4989 = !DILocation(line: 754, column: 2, scope: !4970)
!4990 = !DILocation(line: 754, column: 17, scope: !4970)
!4991 = !DILocation(line: 757, column: 6, scope: !4980)
!4992 = !DILocation(line: 757, column: 6, scope: !4984)
!4993 = !DILocation(line: 757, column: 6, scope: !4983)
!4994 = !DILocation(line: 757, column: 6, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 757, column: 6)
!4996 = !DILocation(line: 757, column: 6, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 757, column: 6)
!4998 = !{i64 2154668396, i64 2154668425, i64 2154668471, i64 2154668529, i64 2154668583, i64 2154668637, i64 2154668692, i64 2154668723, i64 2154669031, i64 2154669037, i64 2154669084, i64 2154669107, i64 2154669133}
!4999 = !DILocation(line: 757, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 757, column: 6)
!5001 = !DILocation(line: 757, column: 6, scope: !4981)
!5002 = !DILocation(line: 757, column: 6, scope: !4970)
!5003 = !DILocation(line: 758, column: 3, scope: !4981)
!5004 = !DILocation(line: 760, column: 24, scope: !4970)
!5005 = !DILocation(line: 760, column: 30, scope: !4970)
!5006 = !DILocation(line: 760, column: 11, scope: !4970)
!5007 = !DILocation(line: 760, column: 9, scope: !4970)
!5008 = !DILocation(line: 761, column: 7, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 761, column: 6)
!5010 = !DILocation(line: 761, column: 6, scope: !4970)
!5011 = !DILocation(line: 762, column: 3, scope: !5009)
!5012 = !DILocation(line: 764, column: 22, scope: !4970)
!5013 = !DILocation(line: 764, column: 20, scope: !4970)
!5014 = !DILocation(line: 765, column: 22, scope: !4970)
!5015 = !DILocation(line: 765, column: 20, scope: !4970)
!5016 = !DILocation(line: 767, column: 9, scope: !4970)
!5017 = !DILocation(line: 767, column: 2, scope: !4970)
!5018 = !DILocation(line: 768, column: 1, scope: !4970)
!5019 = distinct !DISubprogram(name: "tracefs_remove", scope: !3, file: !3, line: 783, type: !519, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5020)
!5020 = !{!5021}
!5021 = !DILocalVariable(name: "dentry", arg: 1, scope: !5019, file: !3, line: 783, type: !424)
!5022 = !DILocation(line: 783, column: 36, scope: !5019)
!5023 = !DILocation(line: 785, column: 21, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 785, column: 6)
!5025 = !DILocation(line: 785, column: 6, scope: !5024)
!5026 = !DILocation(line: 785, column: 6, scope: !5019)
!5027 = !DILocation(line: 786, column: 3, scope: !5024)
!5028 = !DILocation(line: 788, column: 2, scope: !5019)
!5029 = !DILocation(line: 789, column: 27, scope: !5019)
!5030 = !DILocation(line: 789, column: 2, scope: !5019)
!5031 = !DILocation(line: 790, column: 2, scope: !5019)
!5032 = !DILocation(line: 791, column: 1, scope: !5019)
!5033 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4603, file: !4603, line: 70, type: !4638, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5034)
!5034 = !{!5035}
!5035 = !DILocalVariable(name: "ptr", arg: 1, scope: !5033, file: !4603, line: 70, type: !1243)
!5036 = !DILocation(line: 70, column: 68, scope: !5033)
!5037 = !DILocation(line: 72, column: 9, scope: !5033)
!5038 = !DILocation(line: 72, column: 24, scope: !5033)
!5039 = !DILocation(line: 72, column: 27, scope: !5033)
!5040 = !DILocation(line: 72, column: 2, scope: !5033)
!5041 = !DISubprogram(name: "simple_recursive_removal", scope: !173, file: !173, line: 3160, type: !5042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{null, !424, !518}
!5044 = distinct !DISubprogram(name: "remove_one", scope: !3, file: !3, line: 770, type: !519, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5045)
!5045 = !{!5046}
!5046 = !DILocalVariable(name: "victim", arg: 1, scope: !5044, file: !3, line: 770, type: !424)
!5047 = !DILocation(line: 770, column: 39, scope: !5044)
!5048 = !DILocation(line: 772, column: 2, scope: !5044)
!5049 = !DILocation(line: 773, column: 1, scope: !5044)
!5050 = distinct !DISubprogram(name: "tracefs_initialized", scope: !3, file: !3, line: 796, type: !3883, scopeLine: 797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5051 = !DILocation(line: 798, column: 9, scope: !5050)
!5052 = !{i8 0, i8 2}
!5053 = !DILocation(line: 798, column: 2, scope: !5050)
!5054 = distinct !DISubprogram(name: "__initstub__kmod_tracefs__306_835_tracefs_init1", scope: !3, file: !3, line: 835, type: !4122, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5055 = !DILocation(line: 835, column: 1, scope: !5054)
!5056 = distinct !DISubprogram(name: "tracefs_init", scope: !3, file: !3, line: 812, type: !4122, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5057)
!5057 = !{!5058}
!5058 = !DILocalVariable(name: "retval", scope: !5056, file: !3, line: 814, type: !43)
!5059 = !DILocation(line: 814, column: 2, scope: !5056)
!5060 = !DILocation(line: 814, column: 6, scope: !5056)
!5061 = !DILocation(line: 816, column: 25, scope: !5056)
!5062 = !DILocation(line: 816, column: 23, scope: !5056)
!5063 = !DILocation(line: 822, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 822, column: 6)
!5065 = !DILocation(line: 822, column: 6, scope: !5056)
!5066 = !DILocation(line: 823, column: 3, scope: !5064)
!5067 = !DILocation(line: 825, column: 36, scope: !5056)
!5068 = !DILocation(line: 825, column: 11, scope: !5056)
!5069 = !DILocation(line: 825, column: 9, scope: !5056)
!5070 = !DILocation(line: 826, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 826, column: 6)
!5072 = !DILocation(line: 826, column: 6, scope: !5056)
!5073 = !DILocation(line: 827, column: 3, scope: !5071)
!5074 = !DILocation(line: 829, column: 11, scope: !5056)
!5075 = !DILocation(line: 829, column: 9, scope: !5056)
!5076 = !DILocation(line: 830, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 830, column: 6)
!5078 = !DILocation(line: 830, column: 6, scope: !5056)
!5079 = !DILocation(line: 831, column: 22, scope: !5077)
!5080 = !DILocation(line: 831, column: 3, scope: !5077)
!5081 = !DILocation(line: 833, column: 9, scope: !5056)
!5082 = !DILocation(line: 833, column: 2, scope: !5056)
!5083 = !DILocation(line: 834, column: 1, scope: !5056)
!5084 = distinct !DISubprogram(name: "trace_mount", scope: !3, file: !3, line: 525, type: !569, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5085 = !{!5086, !5087, !5088, !5089}
!5086 = !DILocalVariable(name: "fs_type", arg: 1, scope: !5084, file: !3, line: 525, type: !551)
!5087 = !DILocalVariable(name: "flags", arg: 2, scope: !5084, file: !3, line: 526, type: !43)
!5088 = !DILocalVariable(name: "dev_name", arg: 3, scope: !5084, file: !3, line: 526, type: !37)
!5089 = !DILocalVariable(name: "data", arg: 4, scope: !5084, file: !3, line: 527, type: !41)
!5090 = !DILocation(line: 525, column: 60, scope: !5084)
!5091 = !DILocation(line: 526, column: 8, scope: !5084)
!5092 = !DILocation(line: 526, column: 27, scope: !5084)
!5093 = !DILocation(line: 527, column: 10, scope: !5084)
!5094 = !DILocation(line: 529, column: 22, scope: !5084)
!5095 = !DILocation(line: 529, column: 31, scope: !5084)
!5096 = !DILocation(line: 529, column: 38, scope: !5084)
!5097 = !DILocation(line: 529, column: 9, scope: !5084)
!5098 = !DILocation(line: 529, column: 2, scope: !5084)
!5099 = !DISubprogram(name: "mount_single", scope: !173, file: !173, line: 2401, type: !5100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!424, !551, !43, !41, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!5103 = !DILocation(line: 491, column: 49, scope: !4394)
!5104 = !DILocation(line: 491, column: 59, scope: !4394)
!5105 = !DILocation(line: 491, column: 69, scope: !4394)
!5106 = !DILocation(line: 494, column: 2, scope: !4394)
!5107 = !DILocation(line: 494, column: 26, scope: !4394)
!5108 = !DILocation(line: 495, column: 2, scope: !4394)
!5109 = !DILocation(line: 495, column: 6, scope: !4394)
!5110 = !DILocation(line: 497, column: 8, scope: !4394)
!5111 = !DILocation(line: 497, column: 6, scope: !4394)
!5112 = !DILocation(line: 498, column: 18, scope: !4394)
!5113 = !DILocation(line: 498, column: 2, scope: !4394)
!5114 = !DILocation(line: 498, column: 6, scope: !4394)
!5115 = !DILocation(line: 498, column: 16, scope: !4394)
!5116 = !DILocation(line: 499, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 499, column: 6)
!5118 = !DILocation(line: 499, column: 6, scope: !4394)
!5119 = !DILocation(line: 500, column: 7, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 499, column: 12)
!5121 = !DILocation(line: 501, column: 3, scope: !5120)
!5122 = !DILocation(line: 504, column: 30, scope: !4394)
!5123 = !DILocation(line: 504, column: 37, scope: !4394)
!5124 = !DILocation(line: 504, column: 42, scope: !4394)
!5125 = !DILocation(line: 504, column: 8, scope: !4394)
!5126 = !DILocation(line: 504, column: 6, scope: !4394)
!5127 = !DILocation(line: 505, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 505, column: 6)
!5129 = !DILocation(line: 505, column: 6, scope: !4394)
!5130 = !DILocation(line: 506, column: 3, scope: !5128)
!5131 = !DILocation(line: 508, column: 28, scope: !4394)
!5132 = !DILocation(line: 508, column: 10, scope: !4394)
!5133 = !DILocation(line: 508, column: 7, scope: !4394)
!5134 = !DILocation(line: 509, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 509, column: 6)
!5136 = !DILocation(line: 509, column: 6, scope: !4394)
!5137 = !DILocation(line: 510, column: 3, scope: !5135)
!5138 = !DILocation(line: 512, column: 2, scope: !4394)
!5139 = !DILocation(line: 512, column: 6, scope: !4394)
!5140 = !DILocation(line: 512, column: 11, scope: !4394)
!5141 = !DILocation(line: 513, column: 2, scope: !4394)
!5142 = !DILocation(line: 513, column: 6, scope: !4394)
!5143 = !DILocation(line: 513, column: 13, scope: !4394)
!5144 = !DILocation(line: 515, column: 24, scope: !4394)
!5145 = !DILocation(line: 515, column: 2, scope: !4394)
!5146 = !DILocation(line: 517, column: 2, scope: !4394)
!5147 = !DILocation(line: 519, column: 1, scope: !4394)
!5148 = !DILocation(line: 520, column: 8, scope: !4394)
!5149 = !DILocation(line: 520, column: 2, scope: !4394)
!5150 = !DILocation(line: 521, column: 2, scope: !4394)
!5151 = !DILocation(line: 521, column: 6, scope: !4394)
!5152 = !DILocation(line: 521, column: 16, scope: !4394)
!5153 = !DILocation(line: 522, column: 9, scope: !4394)
!5154 = !DILocation(line: 522, column: 2, scope: !4394)
!5155 = !DILocation(line: 523, column: 1, scope: !4394)
!5156 = distinct !DISubprogram(name: "kzalloc", scope: !222, file: !222, line: 719, type: !5157, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5159)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!41, !56, !807}
!5159 = !{!5160, !5161}
!5160 = !DILocalVariable(name: "size", arg: 1, scope: !5156, file: !222, line: 719, type: !56)
!5161 = !DILocalVariable(name: "flags", arg: 2, scope: !5156, file: !222, line: 719, type: !807)
!5162 = !DILocation(line: 719, column: 52, scope: !5156)
!5163 = !DILocation(line: 719, column: 64, scope: !5156)
!5164 = !DILocation(line: 721, column: 17, scope: !5156)
!5165 = !DILocation(line: 721, column: 23, scope: !5156)
!5166 = !DILocation(line: 721, column: 29, scope: !5156)
!5167 = !DILocation(line: 721, column: 9, scope: !5156)
!5168 = !DILocation(line: 721, column: 2, scope: !5156)
!5169 = distinct !DISubprogram(name: "tracefs_parse_options", scope: !3, file: !3, line: 307, type: !5170, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!43, !315, !5172}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!5173 = !{!5174, !5175, !5176, !5183, !5184, !5185, !5186, !5187}
!5174 = !DILocalVariable(name: "data", arg: 1, scope: !5169, file: !3, line: 307, type: !315)
!5175 = !DILocalVariable(name: "opts", arg: 2, scope: !5169, file: !3, line: 307, type: !5172)
!5176 = !DILocalVariable(name: "args", scope: !5169, file: !3, line: 309, type: !5177)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5178, size: 384, elements: !316)
!5178 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !4441, line: 28, baseType: !5179)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4441, line: 25, size: 128, elements: !5180)
!5180 = !{!5181, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5179, file: !4441, line: 26, baseType: !315, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5179, file: !4441, line: 27, baseType: !315, size: 64, offset: 64)
!5183 = !DILocalVariable(name: "option", scope: !5169, file: !3, line: 310, type: !43)
!5184 = !DILocalVariable(name: "token", scope: !5169, file: !3, line: 311, type: !43)
!5185 = !DILocalVariable(name: "uid", scope: !5169, file: !3, line: 312, type: !395)
!5186 = !DILocalVariable(name: "gid", scope: !5169, file: !3, line: 313, type: !404)
!5187 = !DILocalVariable(name: "p", scope: !5169, file: !3, line: 314, type: !315)
!5188 = !DILocation(line: 307, column: 40, scope: !5169)
!5189 = !DILocation(line: 307, column: 73, scope: !5169)
!5190 = !DILocation(line: 309, column: 2, scope: !5169)
!5191 = !DILocation(line: 309, column: 14, scope: !5169)
!5192 = !DILocation(line: 310, column: 2, scope: !5169)
!5193 = !DILocation(line: 310, column: 6, scope: !5169)
!5194 = !DILocation(line: 311, column: 2, scope: !5169)
!5195 = !DILocation(line: 311, column: 6, scope: !5169)
!5196 = !DILocation(line: 312, column: 2, scope: !5169)
!5197 = !DILocation(line: 312, column: 9, scope: !5169)
!5198 = !DILocation(line: 313, column: 2, scope: !5169)
!5199 = !DILocation(line: 313, column: 9, scope: !5169)
!5200 = !DILocation(line: 314, column: 2, scope: !5169)
!5201 = !DILocation(line: 314, column: 8, scope: !5169)
!5202 = !DILocation(line: 316, column: 2, scope: !5169)
!5203 = !DILocation(line: 316, column: 8, scope: !5169)
!5204 = !DILocation(line: 316, column: 13, scope: !5169)
!5205 = !DILocation(line: 317, column: 2, scope: !5169)
!5206 = !DILocation(line: 317, column: 8, scope: !5169)
!5207 = !DILocation(line: 317, column: 13, scope: !5169)
!5208 = !DILocation(line: 319, column: 2, scope: !5169)
!5209 = !DILocation(line: 319, column: 14, scope: !5169)
!5210 = !DILocation(line: 319, column: 12, scope: !5169)
!5211 = !DILocation(line: 319, column: 34, scope: !5169)
!5212 = !DILocation(line: 320, column: 9, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 320, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 319, column: 43)
!5215 = !DILocation(line: 320, column: 8, scope: !5213)
!5216 = !DILocation(line: 320, column: 7, scope: !5214)
!5217 = !DILocation(line: 321, column: 4, scope: !5213)
!5218 = distinct !{!5218, !5208, !5219, !4846, !4847}
!5219 = !DILocation(line: 353, column: 2, scope: !5169)
!5220 = !DILocation(line: 323, column: 23, scope: !5214)
!5221 = !DILocation(line: 323, column: 34, scope: !5214)
!5222 = !DILocation(line: 323, column: 11, scope: !5214)
!5223 = !DILocation(line: 323, column: 9, scope: !5214)
!5224 = !DILocation(line: 324, column: 11, scope: !5214)
!5225 = !DILocation(line: 324, column: 3, scope: !5214)
!5226 = !DILocation(line: 326, column: 19, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 326, column: 8)
!5228 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 324, column: 18)
!5229 = !DILocation(line: 326, column: 8, scope: !5227)
!5230 = !DILocation(line: 326, column: 8, scope: !5228)
!5231 = !DILocation(line: 327, column: 5, scope: !5227)
!5232 = !DILocation(line: 328, column: 10, scope: !5228)
!5233 = !DILocation(line: 328, column: 20, scope: !5228)
!5234 = !DILocation(line: 328, column: 39, scope: !5228)
!5235 = !DILocation(line: 329, column: 9, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 329, column: 8)
!5237 = !DILocation(line: 329, column: 8, scope: !5228)
!5238 = !DILocation(line: 330, column: 5, scope: !5236)
!5239 = !DILocation(line: 331, column: 4, scope: !5228)
!5240 = !DILocation(line: 331, column: 10, scope: !5228)
!5241 = !DILocation(line: 331, column: 16, scope: !5228)
!5242 = !DILocation(line: 332, column: 4, scope: !5228)
!5243 = !DILocation(line: 334, column: 19, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 334, column: 8)
!5245 = !DILocation(line: 334, column: 8, scope: !5244)
!5246 = !DILocation(line: 334, column: 8, scope: !5228)
!5247 = !DILocation(line: 335, column: 5, scope: !5244)
!5248 = !DILocation(line: 336, column: 10, scope: !5228)
!5249 = !DILocation(line: 336, column: 20, scope: !5228)
!5250 = !DILocation(line: 336, column: 39, scope: !5228)
!5251 = !DILocation(line: 337, column: 9, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 337, column: 8)
!5253 = !DILocation(line: 337, column: 8, scope: !5228)
!5254 = !DILocation(line: 338, column: 5, scope: !5252)
!5255 = !DILocation(line: 339, column: 4, scope: !5228)
!5256 = !DILocation(line: 339, column: 10, scope: !5228)
!5257 = !DILocation(line: 339, column: 16, scope: !5228)
!5258 = !DILocation(line: 340, column: 4, scope: !5228)
!5259 = !DILocation(line: 342, column: 21, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 342, column: 8)
!5261 = !DILocation(line: 342, column: 8, scope: !5260)
!5262 = !DILocation(line: 342, column: 8, scope: !5228)
!5263 = !DILocation(line: 343, column: 5, scope: !5260)
!5264 = !DILocation(line: 344, column: 17, scope: !5228)
!5265 = !DILocation(line: 344, column: 24, scope: !5228)
!5266 = !DILocation(line: 344, column: 4, scope: !5228)
!5267 = !DILocation(line: 344, column: 10, scope: !5228)
!5268 = !DILocation(line: 344, column: 15, scope: !5228)
!5269 = !DILocation(line: 345, column: 4, scope: !5228)
!5270 = !DILocation(line: 352, column: 17, scope: !5214)
!5271 = !DILocation(line: 352, column: 3, scope: !5214)
!5272 = !DILocation(line: 352, column: 9, scope: !5214)
!5273 = !DILocation(line: 352, column: 14, scope: !5214)
!5274 = !DILocation(line: 355, column: 2, scope: !5169)
!5275 = !DILocation(line: 356, column: 1, scope: !5169)
!5276 = !DISubprogram(name: "simple_fill_super", scope: !173, file: !173, line: 3182, type: !5277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!43, !540, !60, !5279}
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!5280 = distinct !DISubprogram(name: "tracefs_apply_options", scope: !3, file: !3, line: 358, type: !5281, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5283)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!43, !540, !1314}
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5298}
!5284 = !DILocalVariable(name: "sb", arg: 1, scope: !5280, file: !3, line: 358, type: !540)
!5285 = !DILocalVariable(name: "remount", arg: 2, scope: !5280, file: !3, line: 358, type: !1314)
!5286 = !DILocalVariable(name: "fsi", scope: !5280, file: !3, line: 360, type: !4402)
!5287 = !DILocalVariable(name: "inode", scope: !5280, file: !3, line: 361, type: !389)
!5288 = !DILocalVariable(name: "opts", scope: !5280, file: !3, line: 362, type: !5172)
!5289 = !DILocalVariable(name: "ti", scope: !5280, file: !3, line: 363, type: !4349)
!5290 = !DILocalVariable(name: "update_uid", scope: !5280, file: !3, line: 364, type: !1314)
!5291 = !DILocalVariable(name: "update_gid", scope: !5280, file: !3, line: 364, type: !1314)
!5292 = !DILocalVariable(name: "tmp_mode", scope: !5280, file: !3, line: 365, type: !45)
!5293 = !DILocalVariable(name: "__mptr", scope: !5294, file: !3, line: 390, type: !41)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 390, column: 3)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 390, column: 3)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 384, column: 75)
!5297 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 384, column: 6)
!5298 = !DILocalVariable(name: "__mptr", scope: !5299, file: !3, line: 390, type: !41)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 390, column: 3)
!5300 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 390, column: 3)
!5301 = !DILocation(line: 358, column: 54, scope: !5280)
!5302 = !DILocation(line: 358, column: 63, scope: !5280)
!5303 = !DILocation(line: 360, column: 2, scope: !5280)
!5304 = !DILocation(line: 360, column: 26, scope: !5280)
!5305 = !DILocation(line: 360, column: 32, scope: !5280)
!5306 = !DILocation(line: 360, column: 36, scope: !5280)
!5307 = !DILocation(line: 361, column: 2, scope: !5280)
!5308 = !DILocation(line: 361, column: 16, scope: !5280)
!5309 = !DILocation(line: 361, column: 32, scope: !5280)
!5310 = !DILocation(line: 361, column: 36, scope: !5280)
!5311 = !DILocation(line: 361, column: 24, scope: !5280)
!5312 = !DILocation(line: 362, column: 2, scope: !5280)
!5313 = !DILocation(line: 362, column: 29, scope: !5280)
!5314 = !DILocation(line: 362, column: 37, scope: !5280)
!5315 = !DILocation(line: 362, column: 42, scope: !5280)
!5316 = !DILocation(line: 363, column: 2, scope: !5280)
!5317 = !DILocation(line: 363, column: 24, scope: !5280)
!5318 = !DILocation(line: 364, column: 2, scope: !5280)
!5319 = !DILocation(line: 364, column: 7, scope: !5280)
!5320 = !DILocation(line: 364, column: 19, scope: !5280)
!5321 = !DILocation(line: 365, column: 2, scope: !5280)
!5322 = !DILocation(line: 365, column: 10, scope: !5280)
!5323 = !DILocation(line: 372, column: 7, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 372, column: 6)
!5325 = !DILocation(line: 372, column: 15, scope: !5324)
!5326 = !DILocation(line: 372, column: 18, scope: !5324)
!5327 = !DILocation(line: 372, column: 24, scope: !5324)
!5328 = !DILocation(line: 372, column: 29, scope: !5324)
!5329 = !DILocation(line: 372, column: 6, scope: !5280)
!5330 = !DILocation(line: 373, column: 14, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 373, column: 14)
!5332 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 372, column: 46)
!5333 = !DILocation(line: 373, column: 14, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 373, column: 14)
!5335 = !DILocation(line: 373, column: 14, scope: !5332)
!5336 = !DILocation(line: 373, column: 39, scope: !5332)
!5337 = !DILocation(line: 373, column: 12, scope: !5332)
!5338 = !DILocation(line: 374, column: 15, scope: !5332)
!5339 = !DILocation(line: 374, column: 21, scope: !5332)
!5340 = !DILocation(line: 374, column: 12, scope: !5332)
!5341 = !DILocation(line: 375, column: 3, scope: !5332)
!5342 = !DILocation(line: 375, column: 3, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 375, column: 3)
!5344 = !DILocation(line: 375, column: 3, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 375, column: 3)
!5346 = !DILocation(line: 375, column: 3, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 375, column: 3)
!5348 = !DILocation(line: 376, column: 2, scope: !5332)
!5349 = !DILocation(line: 378, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 378, column: 6)
!5351 = !DILocation(line: 378, column: 15, scope: !5350)
!5352 = !DILocation(line: 378, column: 18, scope: !5350)
!5353 = !DILocation(line: 378, column: 24, scope: !5350)
!5354 = !DILocation(line: 378, column: 29, scope: !5350)
!5355 = !DILocation(line: 378, column: 6, scope: !5280)
!5356 = !DILocation(line: 379, column: 3, scope: !5350)
!5357 = !DILocation(line: 379, column: 10, scope: !5350)
!5358 = !DILocation(line: 379, column: 18, scope: !5350)
!5359 = !DILocation(line: 379, column: 24, scope: !5350)
!5360 = !DILocation(line: 381, column: 7, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 381, column: 6)
!5362 = !DILocation(line: 381, column: 15, scope: !5361)
!5363 = !DILocation(line: 381, column: 18, scope: !5361)
!5364 = !DILocation(line: 381, column: 24, scope: !5361)
!5365 = !DILocation(line: 381, column: 29, scope: !5361)
!5366 = !DILocation(line: 381, column: 6, scope: !5280)
!5367 = !DILocation(line: 382, column: 3, scope: !5361)
!5368 = !DILocation(line: 382, column: 10, scope: !5361)
!5369 = !DILocation(line: 382, column: 18, scope: !5361)
!5370 = !DILocation(line: 382, column: 24, scope: !5361)
!5371 = !DILocation(line: 384, column: 6, scope: !5297)
!5372 = !DILocation(line: 384, column: 14, scope: !5297)
!5373 = !DILocation(line: 384, column: 18, scope: !5297)
!5374 = !DILocation(line: 384, column: 24, scope: !5297)
!5375 = !DILocation(line: 384, column: 29, scope: !5297)
!5376 = !DILocation(line: 384, column: 44, scope: !5297)
!5377 = !DILocation(line: 384, column: 47, scope: !5297)
!5378 = !DILocation(line: 384, column: 53, scope: !5297)
!5379 = !DILocation(line: 384, column: 58, scope: !5297)
!5380 = !DILocation(line: 384, column: 6, scope: !5280)
!5381 = !DILocation(line: 386, column: 16, scope: !5296)
!5382 = !DILocation(line: 386, column: 22, scope: !5296)
!5383 = !DILocation(line: 386, column: 27, scope: !5296)
!5384 = !DILocation(line: 386, column: 14, scope: !5296)
!5385 = !DILocation(line: 387, column: 16, scope: !5296)
!5386 = !DILocation(line: 387, column: 22, scope: !5296)
!5387 = !DILocation(line: 387, column: 27, scope: !5296)
!5388 = !DILocation(line: 387, column: 14, scope: !5296)
!5389 = !DILocation(line: 389, column: 3, scope: !5296)
!5390 = !DILocation(line: 390, column: 3, scope: !5294)
!5391 = !DILocation(line: 390, column: 3, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 390, column: 3)
!5393 = !DILocation(line: 390, column: 3, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 390, column: 3)
!5395 = !DILocation(line: 390, column: 3, scope: !5295)
!5396 = !DILocation(line: 390, column: 3, scope: !5300)
!5397 = !DILocation(line: 391, column: 8, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 391, column: 8)
!5399 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 390, column: 54)
!5400 = !DILocation(line: 391, column: 8, scope: !5399)
!5401 = !DILocation(line: 392, column: 5, scope: !5398)
!5402 = !DILocation(line: 392, column: 9, scope: !5398)
!5403 = !DILocation(line: 392, column: 15, scope: !5398)
!5404 = !DILocation(line: 394, column: 8, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 394, column: 8)
!5406 = !DILocation(line: 394, column: 8, scope: !5399)
!5407 = !DILocation(line: 395, column: 5, scope: !5405)
!5408 = !DILocation(line: 395, column: 9, scope: !5405)
!5409 = !DILocation(line: 395, column: 15, scope: !5405)
!5410 = !DILocation(line: 397, column: 8, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 397, column: 8)
!5412 = !DILocation(line: 397, column: 12, scope: !5411)
!5413 = !DILocation(line: 397, column: 18, scope: !5411)
!5414 = !DILocation(line: 397, column: 8, scope: !5399)
!5415 = !DILocation(line: 398, column: 21, scope: !5411)
!5416 = !DILocation(line: 398, column: 25, scope: !5411)
!5417 = !DILocation(line: 398, column: 37, scope: !5411)
!5418 = !DILocation(line: 398, column: 5, scope: !5411)
!5419 = !DILocation(line: 399, column: 3, scope: !5399)
!5420 = !DILocation(line: 390, column: 3, scope: !5299)
!5421 = !DILocation(line: 390, column: 3, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 390, column: 3)
!5423 = !DILocation(line: 390, column: 3, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 390, column: 3)
!5425 = distinct !{!5425, !5395, !5426, !4846, !4847}
!5426 = !DILocation(line: 399, column: 3, scope: !5295)
!5427 = !DILocation(line: 400, column: 3, scope: !5296)
!5428 = !DILocation(line: 401, column: 2, scope: !5296)
!5429 = !DILocation(line: 404, column: 1, scope: !5280)
!5430 = !DILocation(line: 403, column: 2, scope: !5280)
!5431 = !DISubprogram(name: "kfree", scope: !222, file: !222, line: 227, type: !5432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{null, !1243}
!5434 = distinct !DISubprogram(name: "kmalloc", scope: !222, file: !222, line: 591, type: !5157, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5435 = !{!5436, !5437, !5438}
!5436 = !DILocalVariable(name: "size", arg: 1, scope: !5434, file: !222, line: 591, type: !56)
!5437 = !DILocalVariable(name: "flags", arg: 2, scope: !5434, file: !222, line: 591, type: !807)
!5438 = !DILocalVariable(name: "index", scope: !5439, file: !222, line: 594, type: !7)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !222, line: 593, column: 42)
!5440 = distinct !DILexicalBlock(scope: !5434, file: !222, line: 593, column: 6)
!5441 = !DILocation(line: 591, column: 61, scope: !5434)
!5442 = !DILocation(line: 591, column: 73, scope: !5434)
!5443 = !DILocation(line: 593, column: 27, scope: !5440)
!5444 = !DILocation(line: 593, column: 6, scope: !5440)
!5445 = !DILocation(line: 593, column: 33, scope: !5440)
!5446 = !DILocation(line: 593, column: 36, scope: !5440)
!5447 = !DILocation(line: 593, column: 6, scope: !5434)
!5448 = !DILocation(line: 594, column: 3, scope: !5439)
!5449 = !DILocation(line: 594, column: 16, scope: !5439)
!5450 = !DILocation(line: 596, column: 7, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5439, file: !222, line: 596, column: 7)
!5452 = !DILocation(line: 596, column: 12, scope: !5451)
!5453 = !DILocation(line: 596, column: 7, scope: !5439)
!5454 = !DILocation(line: 597, column: 25, scope: !5451)
!5455 = !DILocation(line: 597, column: 31, scope: !5451)
!5456 = !DILocation(line: 597, column: 11, scope: !5451)
!5457 = !DILocation(line: 597, column: 4, scope: !5451)
!5458 = !DILocation(line: 599, column: 11, scope: !5439)
!5459 = !DILocation(line: 599, column: 9, scope: !5439)
!5460 = !DILocation(line: 601, column: 33, scope: !5439)
!5461 = !DILocation(line: 601, column: 40, scope: !5439)
!5462 = !DILocation(line: 601, column: 20, scope: !5439)
!5463 = !DILocation(line: 601, column: 5, scope: !5439)
!5464 = !DILocation(line: 601, column: 51, scope: !5439)
!5465 = !DILocation(line: 602, column: 5, scope: !5439)
!5466 = !DILocation(line: 602, column: 12, scope: !5439)
!5467 = !DILocation(line: 600, column: 10, scope: !5439)
!5468 = !DILocation(line: 600, column: 3, scope: !5439)
!5469 = !DILocation(line: 603, column: 2, scope: !5440)
!5470 = !DILocation(line: 604, column: 19, scope: !5434)
!5471 = !DILocation(line: 604, column: 25, scope: !5434)
!5472 = !DILocation(line: 604, column: 9, scope: !5434)
!5473 = !DILocation(line: 604, column: 2, scope: !5434)
!5474 = !DILocation(line: 605, column: 1, scope: !5434)
!5475 = !DISubprogram(name: "kmalloc_large", scope: !222, file: !222, line: 531, type: !5157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5476 = distinct !DISubprogram(name: "__kmalloc_index", scope: !222, file: !222, line: 444, type: !5477, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!7, !56, !1314}
!5479 = !{!5480, !5481}
!5480 = !DILocalVariable(name: "size", arg: 1, scope: !5476, file: !222, line: 444, type: !56)
!5481 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5476, file: !222, line: 445, type: !1314)
!5482 = !DILocation(line: 444, column: 60, scope: !5476)
!5483 = !DILocation(line: 445, column: 16, scope: !5476)
!5484 = !DILocation(line: 447, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 447, column: 6)
!5486 = !DILocation(line: 447, column: 6, scope: !5476)
!5487 = !DILocation(line: 448, column: 3, scope: !5485)
!5488 = !DILocation(line: 450, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 450, column: 6)
!5490 = !DILocation(line: 450, column: 11, scope: !5489)
!5491 = !DILocation(line: 450, column: 6, scope: !5476)
!5492 = !DILocation(line: 451, column: 3, scope: !5489)
!5493 = !DILocation(line: 453, column: 32, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 453, column: 6)
!5495 = !DILocation(line: 453, column: 37, scope: !5494)
!5496 = !DILocation(line: 453, column: 42, scope: !5494)
!5497 = !DILocation(line: 453, column: 45, scope: !5494)
!5498 = !DILocation(line: 453, column: 50, scope: !5494)
!5499 = !DILocation(line: 453, column: 6, scope: !5476)
!5500 = !DILocation(line: 454, column: 3, scope: !5494)
!5501 = !DILocation(line: 455, column: 32, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 455, column: 6)
!5503 = !DILocation(line: 455, column: 37, scope: !5502)
!5504 = !DILocation(line: 455, column: 43, scope: !5502)
!5505 = !DILocation(line: 455, column: 46, scope: !5502)
!5506 = !DILocation(line: 455, column: 51, scope: !5502)
!5507 = !DILocation(line: 455, column: 6, scope: !5476)
!5508 = !DILocation(line: 456, column: 3, scope: !5502)
!5509 = !DILocation(line: 457, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 457, column: 6)
!5511 = !DILocation(line: 457, column: 11, scope: !5510)
!5512 = !DILocation(line: 457, column: 6, scope: !5476)
!5513 = !DILocation(line: 457, column: 26, scope: !5510)
!5514 = !DILocation(line: 458, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 458, column: 6)
!5516 = !DILocation(line: 458, column: 11, scope: !5515)
!5517 = !DILocation(line: 458, column: 6, scope: !5476)
!5518 = !DILocation(line: 458, column: 26, scope: !5515)
!5519 = !DILocation(line: 459, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 459, column: 6)
!5521 = !DILocation(line: 459, column: 11, scope: !5520)
!5522 = !DILocation(line: 459, column: 6, scope: !5476)
!5523 = !DILocation(line: 459, column: 26, scope: !5520)
!5524 = !DILocation(line: 460, column: 6, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 460, column: 6)
!5526 = !DILocation(line: 460, column: 11, scope: !5525)
!5527 = !DILocation(line: 460, column: 6, scope: !5476)
!5528 = !DILocation(line: 460, column: 26, scope: !5525)
!5529 = !DILocation(line: 461, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 461, column: 6)
!5531 = !DILocation(line: 461, column: 11, scope: !5530)
!5532 = !DILocation(line: 461, column: 6, scope: !5476)
!5533 = !DILocation(line: 461, column: 26, scope: !5530)
!5534 = !DILocation(line: 462, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 462, column: 6)
!5536 = !DILocation(line: 462, column: 11, scope: !5535)
!5537 = !DILocation(line: 462, column: 6, scope: !5476)
!5538 = !DILocation(line: 462, column: 26, scope: !5535)
!5539 = !DILocation(line: 463, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 463, column: 6)
!5541 = !DILocation(line: 463, column: 11, scope: !5540)
!5542 = !DILocation(line: 463, column: 6, scope: !5476)
!5543 = !DILocation(line: 463, column: 26, scope: !5540)
!5544 = !DILocation(line: 464, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 464, column: 6)
!5546 = !DILocation(line: 464, column: 11, scope: !5545)
!5547 = !DILocation(line: 464, column: 6, scope: !5476)
!5548 = !DILocation(line: 464, column: 26, scope: !5545)
!5549 = !DILocation(line: 465, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 465, column: 6)
!5551 = !DILocation(line: 465, column: 11, scope: !5550)
!5552 = !DILocation(line: 465, column: 6, scope: !5476)
!5553 = !DILocation(line: 465, column: 26, scope: !5550)
!5554 = !DILocation(line: 466, column: 6, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 466, column: 6)
!5556 = !DILocation(line: 466, column: 11, scope: !5555)
!5557 = !DILocation(line: 466, column: 6, scope: !5476)
!5558 = !DILocation(line: 466, column: 26, scope: !5555)
!5559 = !DILocation(line: 467, column: 6, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 467, column: 6)
!5561 = !DILocation(line: 467, column: 11, scope: !5560)
!5562 = !DILocation(line: 467, column: 6, scope: !5476)
!5563 = !DILocation(line: 467, column: 26, scope: !5560)
!5564 = !DILocation(line: 468, column: 6, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 468, column: 6)
!5566 = !DILocation(line: 468, column: 11, scope: !5565)
!5567 = !DILocation(line: 468, column: 6, scope: !5476)
!5568 = !DILocation(line: 468, column: 26, scope: !5565)
!5569 = !DILocation(line: 469, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 469, column: 6)
!5571 = !DILocation(line: 469, column: 11, scope: !5570)
!5572 = !DILocation(line: 469, column: 6, scope: !5476)
!5573 = !DILocation(line: 469, column: 26, scope: !5570)
!5574 = !DILocation(line: 470, column: 6, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 470, column: 6)
!5576 = !DILocation(line: 470, column: 11, scope: !5575)
!5577 = !DILocation(line: 470, column: 6, scope: !5476)
!5578 = !DILocation(line: 470, column: 26, scope: !5575)
!5579 = !DILocation(line: 471, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 471, column: 6)
!5581 = !DILocation(line: 471, column: 11, scope: !5580)
!5582 = !DILocation(line: 471, column: 6, scope: !5476)
!5583 = !DILocation(line: 471, column: 26, scope: !5580)
!5584 = !DILocation(line: 472, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 472, column: 6)
!5586 = !DILocation(line: 472, column: 11, scope: !5585)
!5587 = !DILocation(line: 472, column: 6, scope: !5476)
!5588 = !DILocation(line: 472, column: 26, scope: !5585)
!5589 = !DILocation(line: 473, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 473, column: 6)
!5591 = !DILocation(line: 473, column: 11, scope: !5590)
!5592 = !DILocation(line: 473, column: 6, scope: !5476)
!5593 = !DILocation(line: 473, column: 26, scope: !5590)
!5594 = !DILocation(line: 474, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 474, column: 6)
!5596 = !DILocation(line: 474, column: 11, scope: !5595)
!5597 = !DILocation(line: 474, column: 6, scope: !5476)
!5598 = !DILocation(line: 474, column: 27, scope: !5595)
!5599 = !DILocation(line: 475, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 475, column: 6)
!5601 = !DILocation(line: 475, column: 11, scope: !5600)
!5602 = !DILocation(line: 475, column: 6, scope: !5476)
!5603 = !DILocation(line: 475, column: 32, scope: !5600)
!5604 = !DILocation(line: 477, column: 50, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5476, file: !222, line: 477, column: 6)
!5606 = !DILocation(line: 477, column: 6, scope: !5476)
!5607 = !DILocation(line: 478, column: 3, scope: !5605)
!5608 = !DILocation(line: 478, column: 3, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !222, line: 478, column: 3)
!5610 = distinct !DILexicalBlock(scope: !5605, file: !222, line: 478, column: 3)
!5611 = !{i32 -2141461164}
!5612 = !DILocation(line: 478, column: 3, scope: !5610)
!5613 = !DILocation(line: 480, column: 3, scope: !5605)
!5614 = !DILocation(line: 480, column: 3, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5605, file: !222, line: 480, column: 3)
!5616 = !DILocation(line: 480, column: 3, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5615, file: !222, line: 480, column: 3)
!5618 = !DILocation(line: 480, column: 3, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5615, file: !222, line: 480, column: 3)
!5620 = !{i64 2153506335, i64 2153506364, i64 2153506410, i64 2153506468, i64 2153506522, i64 2153506576, i64 2153506631, i64 2153506662}
!5621 = !DILocation(line: 483, column: 2, scope: !5476)
!5622 = !DILocation(line: 484, column: 1, scope: !5476)
!5623 = !DISubprogram(name: "kmalloc_trace", scope: !222, file: !222, line: 525, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!41, !2835, !807, !56}
!5626 = distinct !DISubprogram(name: "kmalloc_type", scope: !222, file: !222, line: 401, type: !5627, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5629)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!221, !807, !60}
!5629 = !{!5630, !5631}
!5630 = !DILocalVariable(name: "flags", arg: 1, scope: !5626, file: !222, line: 401, type: !807)
!5631 = !DILocalVariable(name: "caller", arg: 2, scope: !5626, file: !222, line: 401, type: !60)
!5632 = !DILocation(line: 401, column: 67, scope: !5626)
!5633 = !DILocation(line: 401, column: 88, scope: !5626)
!5634 = !DILocation(line: 407, column: 6, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5626, file: !222, line: 407, column: 6)
!5636 = !DILocation(line: 407, column: 6, scope: !5626)
!5637 = !DILocation(line: 413, column: 3, scope: !5635)
!5638 = !DILocation(line: 423, column: 38, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5626, file: !222, line: 423, column: 6)
!5640 = !DILocation(line: 423, column: 44, scope: !5639)
!5641 = !DILocation(line: 423, column: 6, scope: !5626)
!5642 = !DILocation(line: 424, column: 3, scope: !5639)
!5643 = !DILocation(line: 426, column: 3, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5626, file: !222, line: 425, column: 6)
!5645 = !DILocation(line: 429, column: 1, scope: !5626)
!5646 = !DISubprogram(name: "__kmalloc", scope: !222, file: !222, line: 488, type: !5157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = !DISubprogram(name: "__compiletime_assert_255", scope: !222, file: !222, line: 478, type: !1974, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5648 = !DISubprogram(name: "strsep", scope: !4634, file: !4634, line: 137, type: !5649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!315, !5651, !37}
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!5652 = !DISubprogram(name: "match_token", scope: !4441, file: !4441, line: 30, type: !5653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!43, !315, !5655, !5656}
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5657 = !DISubprogram(name: "match_int", scope: !4441, file: !4441, line: 31, type: !5658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!43, !5656, !653}
!5660 = distinct !DISubprogram(name: "make_kuid", scope: !396, file: !396, line: 143, type: !5661, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!395, !1269, !400}
!5663 = !{!5664, !5665}
!5664 = !DILocalVariable(name: "from", arg: 1, scope: !5660, file: !396, line: 143, type: !1269)
!5665 = !DILocalVariable(name: "uid", arg: 2, scope: !5660, file: !396, line: 143, type: !400)
!5666 = !DILocation(line: 143, column: 55, scope: !5660)
!5667 = !DILocation(line: 143, column: 67, scope: !5660)
!5668 = !DILocation(line: 145, column: 9, scope: !5660)
!5669 = !DILocation(line: 145, column: 2, scope: !5660)
!5670 = distinct !DISubprogram(name: "current_user_ns", scope: !1684, file: !1684, line: 346, type: !5671, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!1269}
!5673 = !DILocation(line: 348, column: 2, scope: !5670)
!5674 = distinct !DISubprogram(name: "uid_valid", scope: !396, file: !396, line: 111, type: !5675, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5677)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!1314, !395}
!5677 = !{!5678}
!5678 = !DILocalVariable(name: "uid", arg: 1, scope: !5674, file: !396, line: 111, type: !395)
!5679 = !DILocation(line: 111, column: 37, scope: !5674)
!5680 = !DILocation(line: 113, column: 9, scope: !5674)
!5681 = !DILocation(line: 113, column: 25, scope: !5674)
!5682 = !DILocation(line: 113, column: 2, scope: !5674)
!5683 = distinct !DISubprogram(name: "make_kgid", scope: !396, file: !396, line: 148, type: !5684, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5686)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!404, !1269, !408}
!5686 = !{!5687, !5688}
!5687 = !DILocalVariable(name: "from", arg: 1, scope: !5683, file: !396, line: 148, type: !1269)
!5688 = !DILocalVariable(name: "gid", arg: 2, scope: !5683, file: !396, line: 148, type: !408)
!5689 = !DILocation(line: 148, column: 55, scope: !5683)
!5690 = !DILocation(line: 148, column: 67, scope: !5683)
!5691 = !DILocation(line: 150, column: 9, scope: !5683)
!5692 = !DILocation(line: 150, column: 2, scope: !5683)
!5693 = distinct !DISubprogram(name: "gid_valid", scope: !396, file: !396, line: 116, type: !5694, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5696)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!1314, !404}
!5696 = !{!5697}
!5697 = !DILocalVariable(name: "gid", arg: 1, scope: !5693, file: !396, line: 116, type: !404)
!5698 = !DILocation(line: 116, column: 37, scope: !5693)
!5699 = !DILocation(line: 118, column: 9, scope: !5693)
!5700 = !DILocation(line: 118, column: 25, scope: !5693)
!5701 = !DILocation(line: 118, column: 2, scope: !5693)
!5702 = !DISubprogram(name: "match_octal", scope: !4441, file: !4441, line: 34, type: !5658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5703 = distinct !DISubprogram(name: "__kuid_val", scope: !396, file: !396, line: 34, type: !5704, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5706)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{!400, !395}
!5706 = !{!5707}
!5707 = !DILocalVariable(name: "uid", arg: 1, scope: !5703, file: !396, line: 34, type: !395)
!5708 = !DILocation(line: 34, column: 39, scope: !5703)
!5709 = !DILocation(line: 36, column: 13, scope: !5703)
!5710 = !DILocation(line: 36, column: 2, scope: !5703)
!5711 = distinct !DISubprogram(name: "__kgid_val", scope: !396, file: !396, line: 39, type: !5712, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!408, !404}
!5714 = !{!5715}
!5715 = !DILocalVariable(name: "gid", arg: 1, scope: !5711, file: !396, line: 39, type: !404)
!5716 = !DILocation(line: 39, column: 39, scope: !5711)
!5717 = !DILocation(line: 41, column: 13, scope: !5711)
!5718 = !DILocation(line: 41, column: 2, scope: !5711)
!5719 = distinct !DISubprogram(name: "tracefs_alloc_inode", scope: !3, file: !3, line: 40, type: !606, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5720)
!5720 = !{!5721, !5722, !5723, !5724, !5728}
!5721 = !DILocalVariable(name: "sb", arg: 1, scope: !5719, file: !3, line: 40, type: !540)
!5722 = !DILocalVariable(name: "ti", scope: !5719, file: !3, line: 42, type: !4349)
!5723 = !DILocalVariable(name: "flags", scope: !5719, file: !3, line: 43, type: !60)
!5724 = !DILocalVariable(name: "__dummy", scope: !5725, file: !3, line: 49, type: !60)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 49, column: 2)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 49, column: 2)
!5727 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 49, column: 2)
!5728 = !DILocalVariable(name: "__dummy2", scope: !5725, file: !3, line: 49, type: !60)
!5729 = !DILocation(line: 40, column: 62, scope: !5719)
!5730 = !DILocation(line: 42, column: 2, scope: !5719)
!5731 = !DILocation(line: 42, column: 24, scope: !5719)
!5732 = !DILocation(line: 43, column: 2, scope: !5719)
!5733 = !DILocation(line: 43, column: 16, scope: !5719)
!5734 = !DILocation(line: 45, column: 22, scope: !5719)
!5735 = !DILocation(line: 45, column: 26, scope: !5719)
!5736 = !DILocation(line: 45, column: 7, scope: !5719)
!5737 = !DILocation(line: 45, column: 5, scope: !5719)
!5738 = !DILocation(line: 46, column: 7, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 46, column: 6)
!5740 = !DILocation(line: 46, column: 6, scope: !5719)
!5741 = !DILocation(line: 47, column: 3, scope: !5739)
!5742 = !DILocation(line: 49, column: 2, scope: !5719)
!5743 = !DILocation(line: 49, column: 2, scope: !5727)
!5744 = !DILocation(line: 49, column: 2, scope: !5725)
!5745 = !DILocation(line: 49, column: 2, scope: !5726)
!5746 = !DILocation(line: 50, column: 16, scope: !5719)
!5747 = !DILocation(line: 50, column: 20, scope: !5719)
!5748 = !DILocation(line: 50, column: 2, scope: !5719)
!5749 = !DILocation(line: 51, column: 46, scope: !5719)
!5750 = !DILocation(line: 51, column: 2, scope: !5719)
!5751 = !DILocation(line: 53, column: 10, scope: !5719)
!5752 = !DILocation(line: 53, column: 14, scope: !5719)
!5753 = !DILocation(line: 53, column: 2, scope: !5719)
!5754 = !DILocation(line: 54, column: 1, scope: !5719)
!5755 = distinct !DISubprogram(name: "tracefs_destroy_inode", scope: !3, file: !3, line: 63, type: !610, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5756 = !{!5757, !5758, !5759, !5760, !5764}
!5757 = !DILocalVariable(name: "inode", arg: 1, scope: !5755, file: !3, line: 63, type: !389)
!5758 = !DILocalVariable(name: "ti", scope: !5755, file: !3, line: 65, type: !4349)
!5759 = !DILocalVariable(name: "flags", scope: !5755, file: !3, line: 66, type: !60)
!5760 = !DILocalVariable(name: "__dummy", scope: !5761, file: !3, line: 68, type: !60)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 68, column: 2)
!5762 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 68, column: 2)
!5763 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 68, column: 2)
!5764 = !DILocalVariable(name: "__dummy2", scope: !5761, file: !3, line: 68, type: !60)
!5765 = !DILocation(line: 63, column: 49, scope: !5755)
!5766 = !DILocation(line: 65, column: 2, scope: !5755)
!5767 = !DILocation(line: 65, column: 24, scope: !5755)
!5768 = !DILocation(line: 65, column: 41, scope: !5755)
!5769 = !DILocation(line: 65, column: 29, scope: !5755)
!5770 = !DILocation(line: 66, column: 2, scope: !5755)
!5771 = !DILocation(line: 66, column: 16, scope: !5755)
!5772 = !DILocation(line: 68, column: 2, scope: !5755)
!5773 = !DILocation(line: 68, column: 2, scope: !5763)
!5774 = !DILocation(line: 68, column: 2, scope: !5761)
!5775 = !DILocation(line: 68, column: 2, scope: !5762)
!5776 = !DILocation(line: 69, column: 16, scope: !5755)
!5777 = !DILocation(line: 69, column: 20, scope: !5755)
!5778 = !DILocation(line: 69, column: 2, scope: !5755)
!5779 = !DILocation(line: 70, column: 46, scope: !5755)
!5780 = !DILocation(line: 70, column: 2, scope: !5755)
!5781 = !DILocation(line: 71, column: 1, scope: !5755)
!5782 = distinct !DISubprogram(name: "tracefs_free_inode", scope: !3, file: !3, line: 56, type: !610, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "inode", arg: 1, scope: !5782, file: !3, line: 56, type: !389)
!5785 = !DILocalVariable(name: "ti", scope: !5782, file: !3, line: 58, type: !4349)
!5786 = !DILocation(line: 56, column: 46, scope: !5782)
!5787 = !DILocation(line: 58, column: 2, scope: !5782)
!5788 = !DILocation(line: 58, column: 24, scope: !5782)
!5789 = !DILocation(line: 58, column: 41, scope: !5782)
!5790 = !DILocation(line: 58, column: 29, scope: !5782)
!5791 = !DILocation(line: 60, column: 18, scope: !5782)
!5792 = !DILocation(line: 60, column: 40, scope: !5782)
!5793 = !DILocation(line: 60, column: 2, scope: !5782)
!5794 = !DILocation(line: 61, column: 1, scope: !5782)
!5795 = distinct !DISubprogram(name: "tracefs_drop_inode", scope: !3, file: !3, line: 439, type: !625, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5796)
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "inode", arg: 1, scope: !5795, file: !3, line: 439, type: !389)
!5798 = !DILocalVariable(name: "ti", scope: !5795, file: !3, line: 441, type: !4349)
!5799 = !DILocation(line: 439, column: 45, scope: !5795)
!5800 = !DILocation(line: 441, column: 2, scope: !5795)
!5801 = !DILocation(line: 441, column: 24, scope: !5795)
!5802 = !DILocation(line: 441, column: 41, scope: !5795)
!5803 = !DILocation(line: 441, column: 29, scope: !5795)
!5804 = !DILocation(line: 450, column: 2, scope: !5795)
!5805 = !DILocation(line: 450, column: 6, scope: !5795)
!5806 = !DILocation(line: 450, column: 12, scope: !5795)
!5807 = !DILocation(line: 453, column: 1, scope: !5795)
!5808 = !DILocation(line: 452, column: 2, scope: !5795)
!5809 = distinct !DISubprogram(name: "tracefs_remount", scope: !3, file: !3, line: 406, type: !651, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816}
!5811 = !DILocalVariable(name: "sb", arg: 1, scope: !5809, file: !3, line: 406, type: !540)
!5812 = !DILocalVariable(name: "flags", arg: 2, scope: !5809, file: !3, line: 406, type: !653)
!5813 = !DILocalVariable(name: "data", arg: 3, scope: !5809, file: !3, line: 406, type: !315)
!5814 = !DILocalVariable(name: "err", scope: !5809, file: !3, line: 408, type: !43)
!5815 = !DILocalVariable(name: "fsi", scope: !5809, file: !3, line: 409, type: !4402)
!5816 = !DILabel(scope: !5809, name: "fail", file: !3, line: 418)
!5817 = !DILocation(line: 406, column: 48, scope: !5809)
!5818 = !DILocation(line: 406, column: 57, scope: !5809)
!5819 = !DILocation(line: 406, column: 70, scope: !5809)
!5820 = !DILocation(line: 408, column: 2, scope: !5809)
!5821 = !DILocation(line: 408, column: 6, scope: !5809)
!5822 = !DILocation(line: 409, column: 2, scope: !5809)
!5823 = !DILocation(line: 409, column: 26, scope: !5809)
!5824 = !DILocation(line: 409, column: 32, scope: !5809)
!5825 = !DILocation(line: 409, column: 36, scope: !5809)
!5826 = !DILocation(line: 411, column: 18, scope: !5809)
!5827 = !DILocation(line: 411, column: 2, scope: !5809)
!5828 = !DILocation(line: 412, column: 30, scope: !5809)
!5829 = !DILocation(line: 412, column: 37, scope: !5809)
!5830 = !DILocation(line: 412, column: 42, scope: !5809)
!5831 = !DILocation(line: 412, column: 8, scope: !5809)
!5832 = !DILocation(line: 412, column: 6, scope: !5809)
!5833 = !DILocation(line: 413, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 413, column: 6)
!5835 = !DILocation(line: 413, column: 6, scope: !5809)
!5836 = !DILocation(line: 414, column: 3, scope: !5834)
!5837 = !DILocation(line: 416, column: 24, scope: !5809)
!5838 = !DILocation(line: 416, column: 2, scope: !5809)
!5839 = !DILocation(line: 418, column: 1, scope: !5809)
!5840 = !DILocation(line: 419, column: 9, scope: !5809)
!5841 = !DILocation(line: 420, column: 1, scope: !5809)
!5842 = !DILocation(line: 419, column: 2, scope: !5809)
!5843 = distinct !DISubprogram(name: "tracefs_show_options", scope: !3, file: !3, line: 422, type: !657, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5844)
!5844 = !{!5845, !5846, !5847, !5848}
!5845 = !DILocalVariable(name: "m", arg: 1, scope: !5843, file: !3, line: 422, type: !659)
!5846 = !DILocalVariable(name: "root", arg: 2, scope: !5843, file: !3, line: 422, type: !424)
!5847 = !DILocalVariable(name: "fsi", scope: !5843, file: !3, line: 424, type: !4402)
!5848 = !DILocalVariable(name: "opts", scope: !5843, file: !3, line: 425, type: !5172)
!5849 = !DILocation(line: 422, column: 50, scope: !5843)
!5850 = !DILocation(line: 422, column: 68, scope: !5843)
!5851 = !DILocation(line: 424, column: 2, scope: !5843)
!5852 = !DILocation(line: 424, column: 26, scope: !5843)
!5853 = !DILocation(line: 424, column: 32, scope: !5843)
!5854 = !DILocation(line: 424, column: 38, scope: !5843)
!5855 = !DILocation(line: 424, column: 44, scope: !5843)
!5856 = !DILocation(line: 425, column: 2, scope: !5843)
!5857 = !DILocation(line: 425, column: 29, scope: !5843)
!5858 = !DILocation(line: 425, column: 37, scope: !5843)
!5859 = !DILocation(line: 425, column: 42, scope: !5843)
!5860 = !DILocation(line: 427, column: 14, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 427, column: 6)
!5862 = !DILocation(line: 427, column: 20, scope: !5861)
!5863 = !DILocation(line: 427, column: 25, scope: !5861)
!5864 = !DILocation(line: 427, column: 7, scope: !5861)
!5865 = !DILocation(line: 427, column: 6, scope: !5843)
!5866 = !DILocation(line: 428, column: 14, scope: !5861)
!5867 = !DILocation(line: 429, column: 39, scope: !5861)
!5868 = !DILocation(line: 429, column: 45, scope: !5861)
!5869 = !DILocation(line: 429, column: 7, scope: !5861)
!5870 = !DILocation(line: 428, column: 3, scope: !5861)
!5871 = !DILocation(line: 430, column: 14, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 430, column: 6)
!5873 = !DILocation(line: 430, column: 20, scope: !5872)
!5874 = !DILocation(line: 430, column: 25, scope: !5872)
!5875 = !DILocation(line: 430, column: 7, scope: !5872)
!5876 = !DILocation(line: 430, column: 6, scope: !5843)
!5877 = !DILocation(line: 431, column: 14, scope: !5872)
!5878 = !DILocation(line: 432, column: 39, scope: !5872)
!5879 = !DILocation(line: 432, column: 45, scope: !5872)
!5880 = !DILocation(line: 432, column: 7, scope: !5872)
!5881 = !DILocation(line: 431, column: 3, scope: !5872)
!5882 = !DILocation(line: 433, column: 6, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 433, column: 6)
!5884 = !DILocation(line: 433, column: 12, scope: !5883)
!5885 = !DILocation(line: 433, column: 17, scope: !5883)
!5886 = !DILocation(line: 433, column: 6, scope: !5843)
!5887 = !DILocation(line: 434, column: 14, scope: !5883)
!5888 = !DILocation(line: 434, column: 29, scope: !5883)
!5889 = !DILocation(line: 434, column: 35, scope: !5883)
!5890 = !DILocation(line: 434, column: 3, scope: !5883)
!5891 = !DILocation(line: 437, column: 1, scope: !5843)
!5892 = !DILocation(line: 436, column: 2, scope: !5843)
!5893 = distinct !DISubprogram(name: "alloc_inode_sb", scope: !173, file: !173, line: 2944, type: !5894, scopeLine: 2945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5896)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!41, !540, !2835, !807}
!5896 = !{!5897, !5898, !5899}
!5897 = !DILocalVariable(name: "sb", arg: 1, scope: !5893, file: !173, line: 2944, type: !540)
!5898 = !DILocalVariable(name: "cache", arg: 2, scope: !5893, file: !173, line: 2944, type: !2835)
!5899 = !DILocalVariable(name: "gfp", arg: 3, scope: !5893, file: !173, line: 2944, type: !807)
!5900 = !DILocation(line: 2944, column: 36, scope: !5893)
!5901 = !DILocation(line: 2944, column: 59, scope: !5893)
!5902 = !DILocation(line: 2944, column: 72, scope: !5893)
!5903 = !DILocation(line: 2946, column: 30, scope: !5893)
!5904 = !DILocation(line: 2946, column: 38, scope: !5893)
!5905 = !DILocation(line: 2946, column: 42, scope: !5893)
!5906 = !DILocation(line: 2946, column: 55, scope: !5893)
!5907 = !DILocation(line: 2946, column: 9, scope: !5893)
!5908 = !DILocation(line: 2946, column: 2, scope: !5893)
!5909 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5910, file: !5910, line: 32, type: !5911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5910 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!60, !5913}
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!5914 = distinct !DISubprogram(name: "spinlock_check", scope: !5915, file: !5915, line: 324, type: !5916, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5915 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!5913, !2457}
!5918 = !{!5919}
!5919 = !DILocalVariable(name: "lock", arg: 1, scope: !5914, file: !5915, line: 324, type: !2457)
!5920 = !DILocation(line: 324, column: 67, scope: !5914)
!5921 = !DILocation(line: 326, column: 10, scope: !5914)
!5922 = !DILocation(line: 326, column: 16, scope: !5914)
!5923 = !DILocation(line: 326, column: 2, scope: !5914)
!5924 = distinct !DISubprogram(name: "list_add_rcu", scope: !5925, file: !5925, line: 104, type: !5926, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5928)
!5925 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!5926 = !DISubroutineType(types: !5927)
!5927 = !{null, !121, !121}
!5928 = !{!5929, !5930}
!5929 = !DILocalVariable(name: "new", arg: 1, scope: !5924, file: !5925, line: 104, type: !121)
!5930 = !DILocalVariable(name: "head", arg: 2, scope: !5924, file: !5925, line: 104, type: !121)
!5931 = !DILocation(line: 104, column: 51, scope: !5924)
!5932 = !DILocation(line: 104, column: 74, scope: !5924)
!5933 = !DILocation(line: 106, column: 17, scope: !5924)
!5934 = !DILocation(line: 106, column: 22, scope: !5924)
!5935 = !DILocation(line: 106, column: 28, scope: !5924)
!5936 = !DILocation(line: 106, column: 34, scope: !5924)
!5937 = !DILocation(line: 106, column: 2, scope: !5924)
!5938 = !DILocation(line: 107, column: 1, scope: !5924)
!5939 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5915, file: !5915, line: 404, type: !5940, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{null, !2457, !60}
!5942 = !{!5943, !5944, !5945, !5948}
!5943 = !DILocalVariable(name: "lock", arg: 1, scope: !5939, file: !5915, line: 404, type: !2457)
!5944 = !DILocalVariable(name: "flags", arg: 2, scope: !5939, file: !5915, line: 404, type: !60)
!5945 = !DILocalVariable(name: "__dummy", scope: !5946, file: !5915, line: 406, type: !60)
!5946 = distinct !DILexicalBlock(scope: !5947, file: !5915, line: 406, column: 2)
!5947 = distinct !DILexicalBlock(scope: !5939, file: !5915, line: 406, column: 2)
!5948 = !DILocalVariable(name: "__dummy2", scope: !5946, file: !5915, line: 406, type: !60)
!5949 = !DILocation(line: 404, column: 64, scope: !5939)
!5950 = !DILocation(line: 404, column: 84, scope: !5939)
!5951 = !DILocation(line: 406, column: 2, scope: !5939)
!5952 = !DILocation(line: 406, column: 2, scope: !5946)
!5953 = !DILocation(line: 406, column: 2, scope: !5947)
!5954 = !DILocation(line: 407, column: 1, scope: !5939)
!5955 = !DISubprogram(name: "kmem_cache_alloc_lru", scope: !222, file: !222, line: 501, type: !5956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!41, !2835, !5958, !807}
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!5959 = distinct !DISubprogram(name: "__list_add_rcu", scope: !5925, file: !5925, line: 76, type: !5960, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5962)
!5960 = !DISubroutineType(types: !5961)
!5961 = !{null, !121, !121, !121}
!5962 = !{!5963, !5964, !5965, !5966}
!5963 = !DILocalVariable(name: "new", arg: 1, scope: !5959, file: !5925, line: 76, type: !121)
!5964 = !DILocalVariable(name: "prev", arg: 2, scope: !5959, file: !5925, line: 77, type: !121)
!5965 = !DILocalVariable(name: "next", arg: 3, scope: !5959, file: !5925, line: 77, type: !121)
!5966 = !DILocalVariable(name: "_r_a_p__v", scope: !5967, file: !5925, line: 84, type: !4338)
!5967 = distinct !DILexicalBlock(scope: !5959, file: !5925, line: 84, column: 2)
!5968 = !DILocation(line: 76, column: 53, scope: !5959)
!5969 = !DILocation(line: 77, column: 21, scope: !5959)
!5970 = !DILocation(line: 77, column: 45, scope: !5959)
!5971 = !DILocation(line: 79, column: 24, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5959, file: !5925, line: 79, column: 6)
!5973 = !DILocation(line: 79, column: 29, scope: !5972)
!5974 = !DILocation(line: 79, column: 35, scope: !5972)
!5975 = !DILocation(line: 79, column: 7, scope: !5972)
!5976 = !DILocation(line: 79, column: 6, scope: !5959)
!5977 = !DILocation(line: 80, column: 3, scope: !5972)
!5978 = !DILocation(line: 82, column: 14, scope: !5959)
!5979 = !DILocation(line: 82, column: 2, scope: !5959)
!5980 = !DILocation(line: 82, column: 7, scope: !5959)
!5981 = !DILocation(line: 82, column: 12, scope: !5959)
!5982 = !DILocation(line: 83, column: 14, scope: !5959)
!5983 = !DILocation(line: 83, column: 2, scope: !5959)
!5984 = !DILocation(line: 83, column: 7, scope: !5959)
!5985 = !DILocation(line: 83, column: 12, scope: !5959)
!5986 = !DILocation(line: 84, column: 2, scope: !5959)
!5987 = !DILocation(line: 84, column: 2, scope: !5967)
!5988 = !DILocation(line: 84, column: 2, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5967, file: !5925, line: 84, column: 2)
!5990 = !DILocation(line: 84, column: 2, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5989, file: !5925, line: 84, column: 2)
!5992 = !DILocation(line: 84, column: 2, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5991, file: !5925, line: 84, column: 2)
!5994 = !DILocation(line: 84, column: 2, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5991, file: !5925, line: 84, column: 2)
!5996 = !DILocation(line: 84, column: 2, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5989, file: !5925, line: 84, column: 2)
!5998 = !DILocation(line: 84, column: 2, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5997, file: !5925, line: 84, column: 2)
!6000 = !DILocation(line: 84, column: 2, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5997, file: !5925, line: 84, column: 2)
!6002 = !DILocation(line: 84, column: 2, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6001, file: !5925, line: 84, column: 2)
!6004 = !{i64 2151734237}
!6005 = !DILocation(line: 84, column: 2, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6001, file: !5925, line: 84, column: 2)
!6007 = !DILocation(line: 84, column: 2, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6006, file: !5925, line: 84, column: 2)
!6009 = !DILocation(line: 84, column: 2, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6006, file: !5925, line: 84, column: 2)
!6011 = !DILocation(line: 85, column: 15, scope: !5959)
!6012 = !DILocation(line: 85, column: 2, scope: !5959)
!6013 = !DILocation(line: 85, column: 8, scope: !5959)
!6014 = !DILocation(line: 85, column: 13, scope: !5959)
!6015 = !DILocation(line: 86, column: 1, scope: !5959)
!6016 = distinct !DISubprogram(name: "__list_add_valid", scope: !6017, file: !6017, line: 128, type: !6018, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6020)
!6017 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!1314, !121, !121, !121}
!6020 = !{!6021, !6022, !6023}
!6021 = !DILocalVariable(name: "new", arg: 1, scope: !6016, file: !6017, line: 128, type: !121)
!6022 = !DILocalVariable(name: "prev", arg: 2, scope: !6016, file: !6017, line: 129, type: !121)
!6023 = !DILocalVariable(name: "next", arg: 3, scope: !6016, file: !6017, line: 130, type: !121)
!6024 = !DILocation(line: 128, column: 55, scope: !6016)
!6025 = !DILocation(line: 129, column: 23, scope: !6016)
!6026 = !DILocation(line: 130, column: 23, scope: !6016)
!6027 = !DILocation(line: 132, column: 2, scope: !6016)
!6028 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5910, file: !5910, line: 43, type: !6029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{null, !5913, !60}
!6031 = distinct !DISubprogram(name: "list_del_rcu", scope: !5925, file: !5925, line: 155, type: !6032, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{null, !121}
!6034 = !{!6035}
!6035 = !DILocalVariable(name: "entry", arg: 1, scope: !6031, file: !5925, line: 155, type: !121)
!6036 = !DILocation(line: 155, column: 51, scope: !6031)
!6037 = !DILocation(line: 157, column: 19, scope: !6031)
!6038 = !DILocation(line: 157, column: 2, scope: !6031)
!6039 = !DILocation(line: 158, column: 2, scope: !6031)
!6040 = !DILocation(line: 158, column: 9, scope: !6031)
!6041 = !DILocation(line: 158, column: 14, scope: !6031)
!6042 = !DILocation(line: 159, column: 1, scope: !6031)
!6043 = distinct !DISubprogram(name: "__list_del_entry", scope: !6017, file: !6017, line: 213, type: !6032, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6044)
!6044 = !{!6045}
!6045 = !DILocalVariable(name: "entry", arg: 1, scope: !6043, file: !6017, line: 213, type: !121)
!6046 = !DILocation(line: 213, column: 55, scope: !6043)
!6047 = !DILocation(line: 215, column: 30, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6043, file: !6017, line: 215, column: 6)
!6049 = !DILocation(line: 215, column: 7, scope: !6048)
!6050 = !DILocation(line: 215, column: 6, scope: !6043)
!6051 = !DILocation(line: 216, column: 3, scope: !6048)
!6052 = !DILocation(line: 218, column: 13, scope: !6043)
!6053 = !DILocation(line: 218, column: 20, scope: !6043)
!6054 = !DILocation(line: 218, column: 26, scope: !6043)
!6055 = !DILocation(line: 218, column: 33, scope: !6043)
!6056 = !DILocation(line: 218, column: 2, scope: !6043)
!6057 = !DILocation(line: 219, column: 1, scope: !6043)
!6058 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6017, file: !6017, line: 134, type: !6059, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6061)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!1314, !121}
!6061 = !{!6062}
!6062 = !DILocalVariable(name: "entry", arg: 1, scope: !6058, file: !6017, line: 134, type: !121)
!6063 = !DILocation(line: 134, column: 61, scope: !6058)
!6064 = !DILocation(line: 136, column: 2, scope: !6058)
!6065 = distinct !DISubprogram(name: "__list_del", scope: !6017, file: !6017, line: 193, type: !5926, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6066)
!6066 = !{!6067, !6068}
!6067 = !DILocalVariable(name: "prev", arg: 1, scope: !6065, file: !6017, line: 193, type: !121)
!6068 = !DILocalVariable(name: "next", arg: 2, scope: !6065, file: !6017, line: 193, type: !121)
!6069 = !DILocation(line: 193, column: 50, scope: !6065)
!6070 = !DILocation(line: 193, column: 75, scope: !6065)
!6071 = !DILocation(line: 195, column: 15, scope: !6065)
!6072 = !DILocation(line: 195, column: 2, scope: !6065)
!6073 = !DILocation(line: 195, column: 8, scope: !6065)
!6074 = !DILocation(line: 195, column: 13, scope: !6065)
!6075 = !DILocation(line: 196, column: 2, scope: !6065)
!6076 = !DILocation(line: 196, column: 2, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6065, file: !6017, line: 196, column: 2)
!6078 = !DILocation(line: 196, column: 2, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6077, file: !6017, line: 196, column: 2)
!6080 = !DILocation(line: 196, column: 2, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !6017, line: 196, column: 2)
!6082 = !DILocation(line: 197, column: 1, scope: !6065)
!6083 = !DISubprogram(name: "kmem_cache_free", scope: !222, file: !222, line: 503, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{null, !2835, !41}
!6086 = !DISubprogram(name: "sync_filesystem", scope: !173, file: !173, line: 2580, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = distinct !DISubprogram(name: "uid_eq", scope: !396, file: !396, line: 61, type: !6088, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!1314, !395, !395}
!6090 = !{!6091, !6092}
!6091 = !DILocalVariable(name: "left", arg: 1, scope: !6087, file: !396, line: 61, type: !395)
!6092 = !DILocalVariable(name: "right", arg: 2, scope: !6087, file: !396, line: 61, type: !395)
!6093 = !DILocation(line: 61, column: 34, scope: !6087)
!6094 = !DILocation(line: 61, column: 47, scope: !6087)
!6095 = !DILocation(line: 63, column: 9, scope: !6087)
!6096 = !DILocation(line: 63, column: 29, scope: !6087)
!6097 = !DILocation(line: 63, column: 26, scope: !6087)
!6098 = !DILocation(line: 63, column: 2, scope: !6087)
!6099 = !DISubprogram(name: "seq_printf", scope: !661, file: !661, line: 119, type: !6100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{null, !659, !37, null}
!6102 = distinct !DISubprogram(name: "from_kuid_munged", scope: !396, file: !396, line: 163, type: !6103, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!400, !1269, !395}
!6105 = !{!6106, !6107, !6108}
!6106 = !DILocalVariable(name: "to", arg: 1, scope: !6102, file: !396, line: 163, type: !1269)
!6107 = !DILocalVariable(name: "kuid", arg: 2, scope: !6102, file: !396, line: 163, type: !395)
!6108 = !DILocalVariable(name: "uid", scope: !6102, file: !396, line: 165, type: !400)
!6109 = !DILocation(line: 163, column: 61, scope: !6102)
!6110 = !DILocation(line: 163, column: 72, scope: !6102)
!6111 = !DILocation(line: 165, column: 2, scope: !6102)
!6112 = !DILocation(line: 165, column: 8, scope: !6102)
!6113 = !DILocation(line: 165, column: 24, scope: !6102)
!6114 = !DILocation(line: 165, column: 14, scope: !6102)
!6115 = !DILocation(line: 166, column: 6, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6102, file: !396, line: 166, column: 6)
!6117 = !DILocation(line: 166, column: 10, scope: !6116)
!6118 = !DILocation(line: 166, column: 6, scope: !6102)
!6119 = !DILocation(line: 167, column: 9, scope: !6116)
!6120 = !DILocation(line: 167, column: 7, scope: !6116)
!6121 = !DILocation(line: 167, column: 3, scope: !6116)
!6122 = !DILocation(line: 168, column: 9, scope: !6102)
!6123 = !DILocation(line: 169, column: 1, scope: !6102)
!6124 = !DILocation(line: 168, column: 2, scope: !6102)
!6125 = distinct !DISubprogram(name: "gid_eq", scope: !396, file: !396, line: 66, type: !6126, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!1314, !404, !404}
!6128 = !{!6129, !6130}
!6129 = !DILocalVariable(name: "left", arg: 1, scope: !6125, file: !396, line: 66, type: !404)
!6130 = !DILocalVariable(name: "right", arg: 2, scope: !6125, file: !396, line: 66, type: !404)
!6131 = !DILocation(line: 66, column: 34, scope: !6125)
!6132 = !DILocation(line: 66, column: 47, scope: !6125)
!6133 = !DILocation(line: 68, column: 9, scope: !6125)
!6134 = !DILocation(line: 68, column: 29, scope: !6125)
!6135 = !DILocation(line: 68, column: 26, scope: !6125)
!6136 = !DILocation(line: 68, column: 2, scope: !6125)
!6137 = distinct !DISubprogram(name: "from_kgid_munged", scope: !396, file: !396, line: 171, type: !6138, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!408, !1269, !404}
!6140 = !{!6141, !6142, !6143}
!6141 = !DILocalVariable(name: "to", arg: 1, scope: !6137, file: !396, line: 171, type: !1269)
!6142 = !DILocalVariable(name: "kgid", arg: 2, scope: !6137, file: !396, line: 171, type: !404)
!6143 = !DILocalVariable(name: "gid", scope: !6137, file: !396, line: 173, type: !408)
!6144 = !DILocation(line: 171, column: 61, scope: !6137)
!6145 = !DILocation(line: 171, column: 72, scope: !6137)
!6146 = !DILocation(line: 173, column: 2, scope: !6137)
!6147 = !DILocation(line: 173, column: 8, scope: !6137)
!6148 = !DILocation(line: 173, column: 24, scope: !6137)
!6149 = !DILocation(line: 173, column: 14, scope: !6137)
!6150 = !DILocation(line: 174, column: 6, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6137, file: !396, line: 174, column: 6)
!6152 = !DILocation(line: 174, column: 10, scope: !6151)
!6153 = !DILocation(line: 174, column: 6, scope: !6137)
!6154 = !DILocation(line: 175, column: 9, scope: !6151)
!6155 = !DILocation(line: 175, column: 7, scope: !6151)
!6156 = !DILocation(line: 175, column: 3, scope: !6151)
!6157 = !DILocation(line: 176, column: 9, scope: !6137)
!6158 = !DILocation(line: 177, column: 1, scope: !6137)
!6159 = !DILocation(line: 176, column: 2, scope: !6137)
!6160 = distinct !DISubprogram(name: "from_kuid", scope: !396, file: !396, line: 153, type: !6103, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6161 = !{!6162, !6163}
!6162 = !DILocalVariable(name: "to", arg: 1, scope: !6160, file: !396, line: 153, type: !1269)
!6163 = !DILocalVariable(name: "kuid", arg: 2, scope: !6160, file: !396, line: 153, type: !395)
!6164 = !DILocation(line: 153, column: 54, scope: !6160)
!6165 = !DILocation(line: 153, column: 65, scope: !6160)
!6166 = !DILocation(line: 155, column: 9, scope: !6160)
!6167 = !DILocation(line: 155, column: 2, scope: !6160)
!6168 = distinct !DISubprogram(name: "from_kgid", scope: !396, file: !396, line: 158, type: !6138, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6169 = !{!6170, !6171}
!6170 = !DILocalVariable(name: "to", arg: 1, scope: !6168, file: !396, line: 158, type: !1269)
!6171 = !DILocalVariable(name: "kgid", arg: 2, scope: !6168, file: !396, line: 158, type: !404)
!6172 = !DILocation(line: 158, column: 54, scope: !6168)
!6173 = !DILocation(line: 158, column: 65, scope: !6168)
!6174 = !DILocation(line: 160, column: 9, scope: !6168)
!6175 = !DILocation(line: 160, column: 2, scope: !6168)
!6176 = distinct !DISubprogram(name: "tracefs_d_revalidate", scope: !3, file: !3, line: 479, type: !493, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6177)
!6177 = !{!6178, !6179, !6180}
!6178 = !DILocalVariable(name: "dentry", arg: 1, scope: !6176, file: !3, line: 479, type: !424)
!6179 = !DILocalVariable(name: "flags", arg: 2, scope: !6176, file: !3, line: 479, type: !7)
!6180 = !DILocalVariable(name: "ei", scope: !6176, file: !3, line: 481, type: !6181)
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6182, size: 64)
!6182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !238, line: 48, size: 704, elements: !6183)
!6183 = !{!6184, !6189, !6190, !6209, !6210, !6217, !6218, !6219, !6220, !6221, !6222, !6223}
!6184 = !DIDerivedType(tag: DW_TAG_member, scope: !6182, file: !238, line: 49, baseType: !6185, size: 128)
!6185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6182, file: !238, line: 49, size: 128, elements: !6186)
!6186 = !{!6187, !6188}
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6185, file: !238, line: 50, baseType: !118, size: 128)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !6185, file: !238, line: 51, baseType: !728, size: 128, align: 64)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6182, file: !238, line: 53, baseType: !118, size: 128, offset: 128)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6182, file: !238, line: 54, baseType: !6191, size: 64, offset: 256)
!6191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6192, size: 64)
!6192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6193)
!6193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_entry", file: !6194, line: 74, size: 192, elements: !6195)
!6194 = !DIFile(filename: "./include/linux/tracefs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4889574467ac457255616de05cb15d8")
!6195 = !{!6196, !6197, !6204}
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6193, file: !6194, line: 75, baseType: !37, size: 64)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !6193, file: !6194, line: 76, baseType: !6198, size: 64, offset: 64)
!6198 = !DIDerivedType(tag: DW_TAG_typedef, name: "eventfs_callback", file: !6194, line: 62, baseType: !6199)
!6199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6200, size: 64)
!6200 = !DISubroutineType(types: !6201)
!6201 = !{!43, !37, !6202, !3000, !6203}
!6202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!6203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !6193, file: !6194, line: 77, baseType: !6205, size: 64, offset: 128)
!6205 = !DIDerivedType(tag: DW_TAG_typedef, name: "eventfs_release", file: !6194, line: 65, baseType: !6206)
!6206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6207, size: 64)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{null, !37, !41}
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6182, file: !238, line: 55, baseType: !37, size: 64, offset: 320)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "entry_attrs", scope: !6182, file: !238, line: 56, baseType: !6211, size: 64, offset: 384)
!6211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6212, size: 64)
!6212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_attr", file: !238, line: 26, size: 96, elements: !6213)
!6213 = !{!6214, !6215, !6216}
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6212, file: !238, line: 27, baseType: !43, size: 32)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6212, file: !238, line: 28, baseType: !395, size: 32, offset: 32)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !6212, file: !238, line: 29, baseType: !404, size: 32, offset: 64)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6182, file: !238, line: 57, baseType: !41, size: 64, offset: 448)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !6182, file: !238, line: 58, baseType: !6212, size: 96, offset: 512)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !6182, file: !238, line: 59, baseType: !4000, size: 32, offset: 608)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "is_freed", scope: !6182, file: !238, line: 60, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "is_events", scope: !6182, file: !238, line: 61, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !6182, file: !238, line: 62, baseType: !7, size: 30, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !6182, file: !238, line: 63, baseType: !7, size: 32, offset: 672)
!6224 = !DILocation(line: 479, column: 48, scope: !6176)
!6225 = !DILocation(line: 479, column: 69, scope: !6176)
!6226 = !DILocation(line: 481, column: 2, scope: !6176)
!6227 = !DILocation(line: 481, column: 24, scope: !6176)
!6228 = !DILocation(line: 481, column: 29, scope: !6176)
!6229 = !DILocation(line: 481, column: 37, scope: !6176)
!6230 = !DILocation(line: 483, column: 11, scope: !6176)
!6231 = !DILocation(line: 483, column: 14, scope: !6176)
!6232 = !DILocation(line: 483, column: 17, scope: !6176)
!6233 = !DILocation(line: 483, column: 21, scope: !6176)
!6234 = !DILocation(line: 0, scope: !6176)
!6235 = !DILocation(line: 483, column: 9, scope: !6176)
!6236 = !DILocation(line: 484, column: 1, scope: !6176)
!6237 = !DILocation(line: 483, column: 2, scope: !6176)
!6238 = distinct !DISubprogram(name: "tracefs_d_release", scope: !3, file: !3, line: 473, type: !519, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6239 = !{!6240}
!6240 = !DILocalVariable(name: "dentry", arg: 1, scope: !6238, file: !3, line: 473, type: !424)
!6241 = !DILocation(line: 473, column: 46, scope: !6238)
!6242 = !DILocation(line: 475, column: 6, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 475, column: 6)
!6244 = !DILocation(line: 475, column: 14, scope: !6243)
!6245 = !DILocation(line: 475, column: 6, scope: !6238)
!6246 = !DILocation(line: 476, column: 21, scope: !6243)
!6247 = !DILocation(line: 476, column: 3, scope: !6243)
!6248 = !DILocation(line: 477, column: 1, scope: !6238)
!6249 = !DISubprogram(name: "eventfs_d_release", scope: !238, file: !238, line: 77, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6250 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6251, file: !6251, line: 782, type: !1974, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6251 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6252 = !DILocation(line: 784, column: 2, scope: !6250)
!6253 = !DILocation(line: 786, column: 2, scope: !6250)
!6254 = !DILocation(line: 786, column: 2, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6250, file: !6251, line: 786, column: 2)
!6256 = !DILocation(line: 787, column: 2, scope: !6250)
!6257 = !DILocation(line: 787, column: 2, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6250, file: !6251, line: 787, column: 2)
!6259 = !DILocation(line: 789, column: 1, scope: !6250)
!6260 = !DISubprogram(name: "eventfs_remount", scope: !238, file: !238, line: 76, type: !6261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{null, !4349, !1314, !1314}
!6263 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6251, file: !6251, line: 813, type: !1974, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6264 = !DILocation(line: 815, column: 2, scope: !6263)
!6265 = !DILocation(line: 815, column: 2, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6263, file: !6251, line: 815, column: 2)
!6267 = !DILocation(line: 818, column: 2, scope: !6263)
!6268 = !DILocation(line: 819, column: 2, scope: !6263)
!6269 = !DILocation(line: 819, column: 2, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6263, file: !6251, line: 819, column: 2)
!6271 = !DILocation(line: 820, column: 1, scope: !6263)
!6272 = !DISubprogram(name: "__rcu_read_lock", scope: !6251, file: !6251, line: 74, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6273 = !DISubprogram(name: "__rcu_read_unlock", scope: !6251, file: !6251, line: 75, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6274 = !DISubprogram(name: "down_write", scope: !1165, file: !1165, line: 187, type: !6275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{null, !6277}
!6277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!6278 = !DISubprogram(name: "up_write", scope: !1165, file: !1165, line: 203, type: !6275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6279 = distinct !DISubprogram(name: "tracefs_permission", scope: !3, file: !3, line: 215, type: !3477, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6280 = !{!6281, !6282, !6283}
!6281 = !DILocalVariable(name: "idmap", arg: 1, scope: !6279, file: !3, line: 215, type: !3432)
!6282 = !DILocalVariable(name: "inode", arg: 2, scope: !6279, file: !3, line: 216, type: !389)
!6283 = !DILocalVariable(name: "mask", arg: 3, scope: !6279, file: !3, line: 216, type: !43)
!6284 = !DILocation(line: 215, column: 49, scope: !6279)
!6285 = !DILocation(line: 216, column: 24, scope: !6279)
!6286 = !DILocation(line: 216, column: 35, scope: !6279)
!6287 = !DILocation(line: 218, column: 26, scope: !6279)
!6288 = !DILocation(line: 218, column: 2, scope: !6279)
!6289 = !DILocation(line: 219, column: 28, scope: !6279)
!6290 = !DILocation(line: 219, column: 35, scope: !6279)
!6291 = !DILocation(line: 219, column: 42, scope: !6279)
!6292 = !DILocation(line: 219, column: 9, scope: !6279)
!6293 = !DILocation(line: 219, column: 2, scope: !6279)
!6294 = distinct !DISubprogram(name: "tracefs_setattr", scope: !3, file: !3, line: 233, type: !3518, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6295 = !{!6296, !6297, !6298, !6299, !6300, !6301}
!6296 = !DILocalVariable(name: "idmap", arg: 1, scope: !6294, file: !3, line: 233, type: !3432)
!6297 = !DILocalVariable(name: "dentry", arg: 2, scope: !6294, file: !3, line: 233, type: !424)
!6298 = !DILocalVariable(name: "attr", arg: 3, scope: !6294, file: !3, line: 234, type: !3520)
!6299 = !DILocalVariable(name: "ia_valid", scope: !6294, file: !3, line: 236, type: !7)
!6300 = !DILocalVariable(name: "inode", scope: !6294, file: !3, line: 237, type: !389)
!6301 = !DILocalVariable(name: "ti", scope: !6294, file: !3, line: 238, type: !4349)
!6302 = !DILocation(line: 233, column: 46, scope: !6294)
!6303 = !DILocation(line: 233, column: 68, scope: !6294)
!6304 = !DILocation(line: 234, column: 21, scope: !6294)
!6305 = !DILocation(line: 236, column: 2, scope: !6294)
!6306 = !DILocation(line: 236, column: 15, scope: !6294)
!6307 = !DILocation(line: 236, column: 26, scope: !6294)
!6308 = !DILocation(line: 236, column: 32, scope: !6294)
!6309 = !DILocation(line: 237, column: 2, scope: !6294)
!6310 = !DILocation(line: 237, column: 16, scope: !6294)
!6311 = !DILocation(line: 237, column: 32, scope: !6294)
!6312 = !DILocation(line: 237, column: 24, scope: !6294)
!6313 = !DILocation(line: 238, column: 2, scope: !6294)
!6314 = !DILocation(line: 238, column: 24, scope: !6294)
!6315 = !DILocation(line: 238, column: 41, scope: !6294)
!6316 = !DILocation(line: 238, column: 29, scope: !6294)
!6317 = !DILocation(line: 240, column: 6, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 240, column: 6)
!6319 = !DILocation(line: 240, column: 15, scope: !6318)
!6320 = !DILocation(line: 240, column: 6, scope: !6294)
!6321 = !DILocation(line: 241, column: 3, scope: !6318)
!6322 = !DILocation(line: 241, column: 7, scope: !6318)
!6323 = !DILocation(line: 241, column: 13, scope: !6318)
!6324 = !DILocation(line: 243, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 243, column: 6)
!6326 = !DILocation(line: 243, column: 15, scope: !6325)
!6327 = !DILocation(line: 243, column: 6, scope: !6294)
!6328 = !DILocation(line: 244, column: 3, scope: !6325)
!6329 = !DILocation(line: 244, column: 7, scope: !6325)
!6330 = !DILocation(line: 244, column: 13, scope: !6325)
!6331 = !DILocation(line: 246, column: 24, scope: !6294)
!6332 = !DILocation(line: 246, column: 31, scope: !6294)
!6333 = !DILocation(line: 246, column: 39, scope: !6294)
!6334 = !DILocation(line: 246, column: 9, scope: !6294)
!6335 = !DILocation(line: 247, column: 1, scope: !6294)
!6336 = !DILocation(line: 246, column: 2, scope: !6294)
!6337 = distinct !DISubprogram(name: "tracefs_getattr", scope: !3, file: !3, line: 222, type: !3555, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6338 = !{!6339, !6340, !6341, !6342, !6343, !6344}
!6339 = !DILocalVariable(name: "idmap", arg: 1, scope: !6337, file: !3, line: 222, type: !3432)
!6340 = !DILocalVariable(name: "path", arg: 2, scope: !6337, file: !3, line: 223, type: !3163)
!6341 = !DILocalVariable(name: "stat", arg: 3, scope: !6337, file: !3, line: 223, type: !3557)
!6342 = !DILocalVariable(name: "request_mask", arg: 4, scope: !6337, file: !3, line: 224, type: !458)
!6343 = !DILocalVariable(name: "flags", arg: 5, scope: !6337, file: !3, line: 224, type: !7)
!6344 = !DILocalVariable(name: "inode", scope: !6337, file: !3, line: 226, type: !389)
!6345 = !DILocation(line: 222, column: 46, scope: !6337)
!6346 = !DILocation(line: 223, column: 26, scope: !6337)
!6347 = !DILocation(line: 223, column: 46, scope: !6337)
!6348 = !DILocation(line: 224, column: 11, scope: !6337)
!6349 = !DILocation(line: 224, column: 38, scope: !6337)
!6350 = !DILocation(line: 226, column: 2, scope: !6337)
!6351 = !DILocation(line: 226, column: 16, scope: !6337)
!6352 = !DILocation(line: 226, column: 40, scope: !6337)
!6353 = !DILocation(line: 226, column: 46, scope: !6337)
!6354 = !DILocation(line: 226, column: 24, scope: !6337)
!6355 = !DILocation(line: 228, column: 26, scope: !6337)
!6356 = !DILocation(line: 228, column: 2, scope: !6337)
!6357 = !DILocation(line: 229, column: 19, scope: !6337)
!6358 = !DILocation(line: 229, column: 26, scope: !6337)
!6359 = !DILocation(line: 229, column: 40, scope: !6337)
!6360 = !DILocation(line: 229, column: 47, scope: !6337)
!6361 = !DILocation(line: 229, column: 2, scope: !6337)
!6362 = !DILocation(line: 231, column: 1, scope: !6337)
!6363 = !DILocation(line: 230, column: 2, scope: !6337)
!6364 = distinct !DISubprogram(name: "set_tracefs_inode_owner", scope: !3, file: !3, line: 176, type: !610, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6365)
!6365 = !{!6366, !6367, !6368, !6369, !6370, !6371}
!6366 = !DILocalVariable(name: "inode", arg: 1, scope: !6364, file: !3, line: 176, type: !389)
!6367 = !DILocalVariable(name: "ti", scope: !6364, file: !3, line: 178, type: !4349)
!6368 = !DILocalVariable(name: "root_inode", scope: !6364, file: !3, line: 179, type: !389)
!6369 = !DILocalVariable(name: "uid", scope: !6364, file: !3, line: 180, type: !395)
!6370 = !DILocalVariable(name: "gid", scope: !6364, file: !3, line: 181, type: !404)
!6371 = !DILocalVariable(name: "rti", scope: !6372, file: !3, line: 192, type: !4349)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 191, column: 55)
!6373 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 191, column: 6)
!6374 = !DILocation(line: 176, column: 51, scope: !6364)
!6375 = !DILocation(line: 178, column: 2, scope: !6364)
!6376 = !DILocation(line: 178, column: 24, scope: !6364)
!6377 = !DILocation(line: 178, column: 41, scope: !6364)
!6378 = !DILocation(line: 178, column: 29, scope: !6364)
!6379 = !DILocation(line: 179, column: 2, scope: !6364)
!6380 = !DILocation(line: 179, column: 16, scope: !6364)
!6381 = !DILocation(line: 179, column: 29, scope: !6364)
!6382 = !DILocation(line: 179, column: 33, scope: !6364)
!6383 = !DILocation(line: 180, column: 2, scope: !6364)
!6384 = !DILocation(line: 180, column: 9, scope: !6364)
!6385 = !DILocation(line: 181, column: 2, scope: !6364)
!6386 = !DILocation(line: 181, column: 9, scope: !6364)
!6387 = !DILocation(line: 183, column: 8, scope: !6364)
!6388 = !DILocation(line: 183, column: 20, scope: !6364)
!6389 = !DILocation(line: 184, column: 8, scope: !6364)
!6390 = !DILocation(line: 184, column: 20, scope: !6364)
!6391 = !DILocation(line: 191, column: 6, scope: !6373)
!6392 = !DILocation(line: 191, column: 28, scope: !6373)
!6393 = !DILocation(line: 191, column: 40, scope: !6373)
!6394 = !DILocation(line: 191, column: 46, scope: !6373)
!6395 = !DILocation(line: 191, column: 20, scope: !6373)
!6396 = !DILocation(line: 191, column: 17, scope: !6373)
!6397 = !DILocation(line: 191, column: 6, scope: !6364)
!6398 = !DILocation(line: 192, column: 3, scope: !6372)
!6399 = !DILocation(line: 192, column: 25, scope: !6372)
!6400 = !DILocation(line: 194, column: 21, scope: !6372)
!6401 = !DILocation(line: 194, column: 9, scope: !6372)
!6402 = !DILocation(line: 194, column: 7, scope: !6372)
!6403 = !DILocation(line: 195, column: 24, scope: !6372)
!6404 = !DILocation(line: 195, column: 36, scope: !6372)
!6405 = !DILocation(line: 195, column: 42, scope: !6372)
!6406 = !DILocation(line: 195, column: 16, scope: !6372)
!6407 = !DILocation(line: 195, column: 14, scope: !6372)
!6408 = !DILocation(line: 197, column: 9, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 197, column: 7)
!6410 = !DILocation(line: 197, column: 14, scope: !6409)
!6411 = !DILocation(line: 197, column: 20, scope: !6409)
!6412 = !DILocation(line: 197, column: 7, scope: !6372)
!6413 = !DILocation(line: 198, column: 10, scope: !6409)
!6414 = !DILocation(line: 198, column: 22, scope: !6409)
!6415 = !DILocation(line: 198, column: 4, scope: !6409)
!6416 = !DILocation(line: 200, column: 9, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 200, column: 7)
!6418 = !DILocation(line: 200, column: 14, scope: !6417)
!6419 = !DILocation(line: 200, column: 20, scope: !6417)
!6420 = !DILocation(line: 200, column: 7, scope: !6372)
!6421 = !DILocation(line: 201, column: 10, scope: !6417)
!6422 = !DILocation(line: 201, column: 22, scope: !6417)
!6423 = !DILocation(line: 201, column: 4, scope: !6417)
!6424 = !DILocation(line: 202, column: 2, scope: !6373)
!6425 = !DILocation(line: 202, column: 2, scope: !6372)
!6426 = !DILocation(line: 208, column: 8, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 208, column: 6)
!6428 = !DILocation(line: 208, column: 12, scope: !6427)
!6429 = !DILocation(line: 208, column: 18, scope: !6427)
!6430 = !DILocation(line: 208, column: 6, scope: !6364)
!6431 = !DILocation(line: 209, column: 3, scope: !6427)
!6432 = !DILocation(line: 209, column: 10, scope: !6427)
!6433 = !DILocation(line: 209, column: 18, scope: !6427)
!6434 = !DILocation(line: 211, column: 8, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 211, column: 6)
!6436 = !DILocation(line: 211, column: 12, scope: !6435)
!6437 = !DILocation(line: 211, column: 18, scope: !6435)
!6438 = !DILocation(line: 211, column: 6, scope: !6364)
!6439 = !DILocation(line: 212, column: 3, scope: !6435)
!6440 = !DILocation(line: 212, column: 10, scope: !6435)
!6441 = !DILocation(line: 212, column: 18, scope: !6435)
!6442 = !DILocation(line: 213, column: 1, scope: !6364)
!6443 = !DISubprogram(name: "generic_permission", scope: !173, file: !173, line: 2676, type: !3477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6444 = !DISubprogram(name: "simple_setattr", scope: !173, file: !173, line: 3144, type: !3518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6445 = distinct !DISubprogram(name: "d_backing_inode", scope: !426, file: !426, line: 541, type: !4621, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6446)
!6446 = !{!6447, !6448}
!6447 = !DILocalVariable(name: "upper", arg: 1, scope: !6445, file: !426, line: 541, type: !500)
!6448 = !DILocalVariable(name: "inode", scope: !6445, file: !426, line: 543, type: !389)
!6449 = !DILocation(line: 541, column: 66, scope: !6445)
!6450 = !DILocation(line: 543, column: 2, scope: !6445)
!6451 = !DILocation(line: 543, column: 16, scope: !6445)
!6452 = !DILocation(line: 543, column: 24, scope: !6445)
!6453 = !DILocation(line: 543, column: 31, scope: !6445)
!6454 = !DILocation(line: 545, column: 9, scope: !6445)
!6455 = !DILocation(line: 546, column: 1, scope: !6445)
!6456 = !DILocation(line: 545, column: 2, scope: !6445)
!6457 = !DISubprogram(name: "generic_fillattr", scope: !173, file: !173, line: 3094, type: !6458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6458 = !DISubroutineType(types: !6459)
!6459 = !{null, !3432, !458, !389, !3557}
!6460 = distinct !DISubprogram(name: "default_read_file", scope: !3, file: !3, line: 73, type: !2881, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6461)
!6461 = !{!6462, !6463, !6464, !6465}
!6462 = !DILocalVariable(name: "file", arg: 1, scope: !6460, file: !3, line: 73, type: !1136)
!6463 = !DILocalVariable(name: "buf", arg: 2, scope: !6460, file: !3, line: 73, type: !315)
!6464 = !DILocalVariable(name: "count", arg: 3, scope: !6460, file: !3, line: 74, type: !56)
!6465 = !DILocalVariable(name: "ppos", arg: 4, scope: !6460, file: !3, line: 74, type: !61)
!6466 = !DILocation(line: 73, column: 47, scope: !6460)
!6467 = !DILocation(line: 73, column: 66, scope: !6460)
!6468 = !DILocation(line: 74, column: 13, scope: !6460)
!6469 = !DILocation(line: 74, column: 28, scope: !6460)
!6470 = !DILocation(line: 76, column: 2, scope: !6460)
!6471 = distinct !DISubprogram(name: "default_write_file", scope: !3, file: !3, line: 79, type: !2885, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6472)
!6472 = !{!6473, !6474, !6475, !6476}
!6473 = !DILocalVariable(name: "file", arg: 1, scope: !6471, file: !3, line: 79, type: !1136)
!6474 = !DILocalVariable(name: "buf", arg: 2, scope: !6471, file: !3, line: 79, type: !37)
!6475 = !DILocalVariable(name: "count", arg: 3, scope: !6471, file: !3, line: 80, type: !56)
!6476 = !DILocalVariable(name: "ppos", arg: 4, scope: !6471, file: !3, line: 80, type: !61)
!6477 = !DILocation(line: 79, column: 48, scope: !6471)
!6478 = !DILocation(line: 79, column: 73, scope: !6471)
!6479 = !DILocation(line: 80, column: 15, scope: !6471)
!6480 = !DILocation(line: 80, column: 30, scope: !6471)
!6481 = !DILocation(line: 82, column: 9, scope: !6471)
!6482 = !DILocation(line: 82, column: 2, scope: !6471)
!6483 = distinct !DISubprogram(name: "audit_inode_child", scope: !6484, file: !6484, line: 388, type: !6485, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6487)
!6484 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !389, !500, !467}
!6487 = !{!6488, !6489, !6490}
!6488 = !DILocalVariable(name: "parent", arg: 1, scope: !6483, file: !6484, line: 388, type: !389)
!6489 = !DILocalVariable(name: "dentry", arg: 2, scope: !6483, file: !6484, line: 389, type: !500)
!6490 = !DILocalVariable(name: "type", arg: 3, scope: !6483, file: !6484, line: 390, type: !467)
!6491 = !DILocation(line: 388, column: 52, scope: !6483)
!6492 = !DILocation(line: 389, column: 31, scope: !6483)
!6493 = !DILocation(line: 390, column: 30, scope: !6483)
!6494 = !DILocation(line: 391, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6483, file: !6484, line: 391, column: 6)
!6496 = !DILocation(line: 391, column: 6, scope: !6483)
!6497 = !DILocation(line: 392, column: 23, scope: !6495)
!6498 = !DILocation(line: 392, column: 31, scope: !6495)
!6499 = !DILocation(line: 392, column: 39, scope: !6495)
!6500 = !DILocation(line: 392, column: 3, scope: !6495)
!6501 = !DILocation(line: 393, column: 1, scope: !6483)
!6502 = distinct !DISubprogram(name: "fsnotify_dirent", scope: !4854, file: !4854, line: 39, type: !6503, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6505)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{null, !389, !424, !459}
!6505 = !{!6506, !6507, !6508}
!6506 = !DILocalVariable(name: "dir", arg: 1, scope: !6502, file: !4854, line: 39, type: !389)
!6507 = !DILocalVariable(name: "dentry", arg: 2, scope: !6502, file: !4854, line: 39, type: !424)
!6508 = !DILocalVariable(name: "mask", arg: 3, scope: !6502, file: !4854, line: 40, type: !459)
!6509 = !DILocation(line: 39, column: 50, scope: !6502)
!6510 = !DILocation(line: 39, column: 70, scope: !6502)
!6511 = !DILocation(line: 40, column: 14, scope: !6502)
!6512 = !DILocation(line: 42, column: 16, scope: !6502)
!6513 = !DILocation(line: 42, column: 22, scope: !6502)
!6514 = !DILocation(line: 42, column: 53, scope: !6502)
!6515 = !DILocation(line: 42, column: 59, scope: !6502)
!6516 = !DILocation(line: 42, column: 67, scope: !6502)
!6517 = !DILocation(line: 42, column: 2, scope: !6502)
!6518 = !DILocation(line: 43, column: 1, scope: !6502)
!6519 = distinct !DISubprogram(name: "audit_dummy_context", scope: !6484, file: !6484, line: 318, type: !3883, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6520)
!6520 = !{!6521}
!6521 = !DILocalVariable(name: "p", scope: !6519, file: !6484, line: 320, type: !41)
!6522 = !DILocation(line: 320, column: 2, scope: !6519)
!6523 = !DILocation(line: 320, column: 8, scope: !6519)
!6524 = !DILocation(line: 320, column: 12, scope: !6519)
!6525 = !DILocation(line: 321, column: 10, scope: !6519)
!6526 = !DILocation(line: 321, column: 12, scope: !6519)
!6527 = !DILocation(line: 321, column: 23, scope: !6519)
!6528 = !DILocation(line: 321, column: 15, scope: !6519)
!6529 = !DILocation(line: 322, column: 1, scope: !6519)
!6530 = !DILocation(line: 321, column: 2, scope: !6519)
!6531 = !DISubprogram(name: "__audit_inode_child", scope: !6484, file: !6484, line: 300, type: !6485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6532 = distinct !DISubprogram(name: "audit_context", scope: !6484, file: !6484, line: 313, type: !6533, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6533 = !DISubroutineType(types: !6534)
!6534 = !{!1986}
!6535 = !DILocation(line: 315, column: 9, scope: !6532)
!6536 = !DILocation(line: 315, column: 18, scope: !6532)
!6537 = !DILocation(line: 315, column: 2, scope: !6532)
!6538 = distinct !DISubprogram(name: "get_current", scope: !6539, file: !6539, line: 39, type: !6540, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6542)
!6539 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6540 = !DISubroutineType(types: !6541)
!6541 = !{!814}
!6542 = !{!6543, !6545, !6547}
!6543 = !DILocalVariable(name: "pscr_ret__", scope: !6544, file: !6539, line: 41, type: !814)
!6544 = distinct !DILexicalBlock(scope: !6538, file: !6539, line: 41, column: 9)
!6545 = !DILocalVariable(name: "__vpp_verify", scope: !6546, file: !6539, line: 41, type: !1243)
!6546 = distinct !DILexicalBlock(scope: !6544, file: !6539, line: 41, column: 9)
!6547 = !DILocalVariable(name: "pfo_val__", scope: !6548, file: !6539, line: 41, type: !462)
!6548 = distinct !DILexicalBlock(scope: !6544, file: !6539, line: 41, column: 9)
!6549 = !DILocation(line: 41, column: 9, scope: !6544)
!6550 = !DILocation(line: 41, column: 9, scope: !6546)
!6551 = !DILocation(line: 41, column: 9, scope: !6548)
!6552 = !{i64 2148552520}
!6553 = !DILocation(line: 41, column: 9, scope: !6538)
!6554 = !DILocation(line: 41, column: 2, scope: !6538)
!6555 = distinct !DISubprogram(name: "fsnotify_name", scope: !4854, file: !4854, line: 29, type: !6556, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6558)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!43, !459, !1243, !43, !389, !507, !458}
!6558 = !{!6559, !6560, !6561, !6562, !6563, !6564}
!6559 = !DILocalVariable(name: "mask", arg: 1, scope: !6555, file: !4854, line: 29, type: !459)
!6560 = !DILocalVariable(name: "data", arg: 2, scope: !6555, file: !4854, line: 29, type: !1243)
!6561 = !DILocalVariable(name: "data_type", arg: 3, scope: !6555, file: !4854, line: 29, type: !43)
!6562 = !DILocalVariable(name: "dir", arg: 4, scope: !6555, file: !4854, line: 30, type: !389)
!6563 = !DILocalVariable(name: "name", arg: 5, scope: !6555, file: !4854, line: 30, type: !507)
!6564 = !DILocalVariable(name: "cookie", arg: 6, scope: !6555, file: !4854, line: 31, type: !458)
!6565 = !DILocation(line: 29, column: 39, scope: !6555)
!6566 = !DILocation(line: 29, column: 57, scope: !6555)
!6567 = !DILocation(line: 29, column: 67, scope: !6555)
!6568 = !DILocation(line: 30, column: 19, scope: !6555)
!6569 = !DILocation(line: 30, column: 43, scope: !6555)
!6570 = !DILocation(line: 31, column: 9, scope: !6555)
!6571 = !DILocation(line: 33, column: 24, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6555, file: !4854, line: 33, column: 6)
!6573 = !DILocation(line: 33, column: 29, scope: !6572)
!6574 = !DILocation(line: 33, column: 35, scope: !6572)
!6575 = !DILocation(line: 33, column: 6, scope: !6572)
!6576 = !DILocation(line: 33, column: 58, scope: !6572)
!6577 = !DILocation(line: 33, column: 6, scope: !6555)
!6578 = !DILocation(line: 34, column: 3, scope: !6572)
!6579 = !DILocation(line: 36, column: 18, scope: !6555)
!6580 = !DILocation(line: 36, column: 24, scope: !6555)
!6581 = !DILocation(line: 36, column: 30, scope: !6555)
!6582 = !DILocation(line: 36, column: 41, scope: !6555)
!6583 = !DILocation(line: 36, column: 46, scope: !6555)
!6584 = !DILocation(line: 36, column: 58, scope: !6555)
!6585 = !DILocation(line: 36, column: 9, scope: !6555)
!6586 = !DILocation(line: 36, column: 2, scope: !6555)
!6587 = !DILocation(line: 37, column: 1, scope: !6555)
!6588 = distinct !DISubprogram(name: "atomic_long_read", scope: !6589, file: !6589, line: 3158, type: !6590, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6589 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6590 = !DISubroutineType(types: !6591)
!6591 = !{!350, !6592}
!6592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6593, size: 64)
!6593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!6594 = !{!6595}
!6595 = !DILocalVariable(name: "v", arg: 1, scope: !6588, file: !6589, line: 3158, type: !6592)
!6596 = !DILocation(line: 3158, column: 39, scope: !6588)
!6597 = !DILocation(line: 3160, column: 25, scope: !6588)
!6598 = !DILocation(line: 3160, column: 2, scope: !6588)
!6599 = !DILocation(line: 3161, column: 30, scope: !6588)
!6600 = !DILocation(line: 3161, column: 9, scope: !6588)
!6601 = !DILocation(line: 3161, column: 2, scope: !6588)
!6602 = !DISubprogram(name: "fsnotify", scope: !245, file: !245, line: 541, type: !6603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{!43, !459, !1243, !43, !389, !507, !389, !458}
!6605 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6606, file: !6606, line: 66, type: !6607, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6612)
!6606 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6607 = !DISubroutineType(types: !6608)
!6608 = !{null, !6609, !56}
!6609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6610, size: 64)
!6610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6611)
!6611 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6612 = !{!6613, !6614}
!6613 = !DILocalVariable(name: "v", arg: 1, scope: !6605, file: !6606, line: 66, type: !6609)
!6614 = !DILocalVariable(name: "size", arg: 2, scope: !6605, file: !6606, line: 66, type: !56)
!6615 = !DILocation(line: 66, column: 73, scope: !6605)
!6616 = !DILocation(line: 66, column: 83, scope: !6605)
!6617 = !DILocation(line: 68, column: 19, scope: !6605)
!6618 = !DILocation(line: 68, column: 22, scope: !6605)
!6619 = !DILocation(line: 68, column: 2, scope: !6605)
!6620 = !DILocation(line: 69, column: 2, scope: !6605)
!6621 = !DILocation(line: 70, column: 1, scope: !6605)
!6622 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !676, file: !676, line: 35, type: !6590, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6623 = !{!6624}
!6624 = !DILocalVariable(name: "v", arg: 1, scope: !6622, file: !676, line: 35, type: !6592)
!6625 = !DILocation(line: 35, column: 43, scope: !6622)
!6626 = !DILocation(line: 38, column: 27, scope: !6622)
!6627 = !DILocation(line: 38, column: 9, scope: !6622)
!6628 = !DILocation(line: 38, column: 2, scope: !6622)
!6629 = distinct !DISubprogram(name: "kasan_check_read", scope: !6630, file: !6630, line: 40, type: !6631, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6630 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6631 = !DISubroutineType(types: !6632)
!6632 = !{!1314, !6609, !7}
!6633 = !{!6634, !6635}
!6634 = !DILocalVariable(name: "p", arg: 1, scope: !6629, file: !6630, line: 40, type: !6609)
!6635 = !DILocalVariable(name: "size", arg: 2, scope: !6629, file: !6630, line: 40, type: !7)
!6636 = !DILocation(line: 40, column: 58, scope: !6629)
!6637 = !DILocation(line: 40, column: 74, scope: !6629)
!6638 = !DILocation(line: 42, column: 2, scope: !6629)
!6639 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6640, file: !6640, line: 229, type: !6641, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6643)
!6640 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6641 = !DISubroutineType(types: !6642)
!6642 = !{null, !6609, !56, !43}
!6643 = !{!6644, !6645, !6646}
!6644 = !DILocalVariable(name: "ptr", arg: 1, scope: !6639, file: !6640, line: 229, type: !6609)
!6645 = !DILocalVariable(name: "size", arg: 2, scope: !6639, file: !6640, line: 229, type: !56)
!6646 = !DILocalVariable(name: "type", arg: 3, scope: !6639, file: !6640, line: 230, type: !43)
!6647 = !DILocation(line: 229, column: 60, scope: !6639)
!6648 = !DILocation(line: 229, column: 72, scope: !6639)
!6649 = !DILocation(line: 230, column: 15, scope: !6639)
!6650 = !DILocation(line: 230, column: 23, scope: !6639)
!6651 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6652, file: !6652, line: 2554, type: !6653, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6652 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!681, !6655}
!6655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6656, size: 64)
!6656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!6657 = !{!6658}
!6658 = !DILocalVariable(name: "v", arg: 1, scope: !6651, file: !6652, line: 2554, type: !6655)
!6659 = !DILocation(line: 2554, column: 37, scope: !6651)
!6660 = !DILocation(line: 2556, column: 28, scope: !6651)
!6661 = !DILocation(line: 2556, column: 9, scope: !6651)
!6662 = !DILocation(line: 2556, column: 2, scope: !6651)
!6663 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6664, file: !6664, line: 13, type: !6653, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6665)
!6664 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6665 = !{!6666}
!6666 = !DILocalVariable(name: "v", arg: 1, scope: !6663, file: !6664, line: 13, type: !6655)
!6667 = !DILocation(line: 13, column: 65, scope: !6663)
!6668 = !DILocation(line: 15, column: 9, scope: !6663)
!6669 = !DILocation(line: 15, column: 2, scope: !6663)
!6670 = !DISubprogram(name: "inc_nlink", scope: !173, file: !173, line: 2327, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6671 = distinct !DISubprogram(name: "fsnotify_mkdir", scope: !4854, file: !4854, line: 292, type: !4855, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6672 = !{!6673, !6674}
!6673 = !DILocalVariable(name: "dir", arg: 1, scope: !6671, file: !4854, line: 292, type: !389)
!6674 = !DILocalVariable(name: "dentry", arg: 2, scope: !6671, file: !4854, line: 292, type: !424)
!6675 = !DILocation(line: 292, column: 49, scope: !6671)
!6676 = !DILocation(line: 292, column: 69, scope: !6671)
!6677 = !DILocation(line: 294, column: 20, scope: !6671)
!6678 = !DILocation(line: 294, column: 25, scope: !6671)
!6679 = !DILocation(line: 294, column: 2, scope: !6671)
!6680 = !DILocation(line: 296, column: 18, scope: !6671)
!6681 = !DILocation(line: 296, column: 23, scope: !6671)
!6682 = !DILocation(line: 296, column: 2, scope: !6671)
!6683 = !DILocation(line: 297, column: 1, scope: !6671)
!6684 = distinct !DISubprogram(name: "tracefs_syscall_mkdir", scope: !3, file: !3, line: 112, type: !3505, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6685 = !{!6686, !6687, !6688, !6689, !6690, !6691, !6692}
!6686 = !DILocalVariable(name: "idmap", arg: 1, scope: !6684, file: !3, line: 112, type: !3432)
!6687 = !DILocalVariable(name: "inode", arg: 2, scope: !6684, file: !3, line: 113, type: !389)
!6688 = !DILocalVariable(name: "dentry", arg: 3, scope: !6684, file: !3, line: 113, type: !424)
!6689 = !DILocalVariable(name: "mode", arg: 4, scope: !6684, file: !3, line: 114, type: !45)
!6690 = !DILocalVariable(name: "ti", scope: !6684, file: !3, line: 116, type: !4349)
!6691 = !DILocalVariable(name: "name", scope: !6684, file: !3, line: 117, type: !315)
!6692 = !DILocalVariable(name: "ret", scope: !6684, file: !3, line: 118, type: !43)
!6693 = !DILocation(line: 112, column: 52, scope: !6684)
!6694 = !DILocation(line: 113, column: 20, scope: !6684)
!6695 = !DILocation(line: 113, column: 42, scope: !6684)
!6696 = !DILocation(line: 114, column: 14, scope: !6684)
!6697 = !DILocation(line: 116, column: 2, scope: !6684)
!6698 = !DILocation(line: 116, column: 24, scope: !6684)
!6699 = !DILocation(line: 117, column: 2, scope: !6684)
!6700 = !DILocation(line: 117, column: 8, scope: !6684)
!6701 = !DILocation(line: 118, column: 2, scope: !6684)
!6702 = !DILocation(line: 118, column: 6, scope: !6684)
!6703 = !DILocation(line: 120, column: 19, scope: !6684)
!6704 = !DILocation(line: 120, column: 9, scope: !6684)
!6705 = !DILocation(line: 120, column: 7, scope: !6684)
!6706 = !DILocation(line: 121, column: 7, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 121, column: 6)
!6708 = !DILocation(line: 121, column: 6, scope: !6684)
!6709 = !DILocation(line: 122, column: 3, scope: !6707)
!6710 = !DILocation(line: 129, column: 19, scope: !6684)
!6711 = !DILocation(line: 129, column: 7, scope: !6684)
!6712 = !DILocation(line: 129, column: 5, scope: !6684)
!6713 = !DILocation(line: 130, column: 2, scope: !6684)
!6714 = !DILocation(line: 130, column: 6, scope: !6684)
!6715 = !DILocation(line: 130, column: 12, scope: !6684)
!6716 = !DILocation(line: 131, column: 16, scope: !6684)
!6717 = !DILocation(line: 131, column: 2, scope: !6684)
!6718 = !DILocation(line: 131, column: 6, scope: !6684)
!6719 = !DILocation(line: 131, column: 14, scope: !6684)
!6720 = !DILocation(line: 138, column: 15, scope: !6684)
!6721 = !DILocation(line: 138, column: 2, scope: !6684)
!6722 = !DILocation(line: 139, column: 20, scope: !6684)
!6723 = !DILocation(line: 139, column: 26, scope: !6684)
!6724 = !DILocation(line: 139, column: 8, scope: !6684)
!6725 = !DILocation(line: 139, column: 6, scope: !6684)
!6726 = !DILocation(line: 140, column: 13, scope: !6684)
!6727 = !DILocation(line: 140, column: 2, scope: !6684)
!6728 = !DILocation(line: 142, column: 8, scope: !6684)
!6729 = !DILocation(line: 142, column: 2, scope: !6684)
!6730 = !DILocation(line: 144, column: 9, scope: !6684)
!6731 = !DILocation(line: 144, column: 2, scope: !6684)
!6732 = !DILocation(line: 145, column: 1, scope: !6684)
!6733 = distinct !DISubprogram(name: "tracefs_syscall_rmdir", scope: !3, file: !3, line: 147, type: !3497, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6734)
!6734 = !{!6735, !6736, !6737, !6738}
!6735 = !DILocalVariable(name: "inode", arg: 1, scope: !6733, file: !3, line: 147, type: !389)
!6736 = !DILocalVariable(name: "dentry", arg: 2, scope: !6733, file: !3, line: 147, type: !424)
!6737 = !DILocalVariable(name: "name", scope: !6733, file: !3, line: 149, type: !315)
!6738 = !DILocalVariable(name: "ret", scope: !6733, file: !3, line: 150, type: !43)
!6739 = !DILocation(line: 147, column: 48, scope: !6733)
!6740 = !DILocation(line: 147, column: 70, scope: !6733)
!6741 = !DILocation(line: 149, column: 2, scope: !6733)
!6742 = !DILocation(line: 149, column: 8, scope: !6733)
!6743 = !DILocation(line: 150, column: 2, scope: !6733)
!6744 = !DILocation(line: 150, column: 6, scope: !6733)
!6745 = !DILocation(line: 152, column: 19, scope: !6733)
!6746 = !DILocation(line: 152, column: 9, scope: !6733)
!6747 = !DILocation(line: 152, column: 7, scope: !6733)
!6748 = !DILocation(line: 153, column: 7, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 153, column: 6)
!6750 = !DILocation(line: 153, column: 6, scope: !6733)
!6751 = !DILocation(line: 154, column: 3, scope: !6749)
!6752 = !DILocation(line: 163, column: 15, scope: !6733)
!6753 = !DILocation(line: 163, column: 2, scope: !6733)
!6754 = !DILocation(line: 164, column: 23, scope: !6733)
!6755 = !DILocation(line: 164, column: 15, scope: !6733)
!6756 = !DILocation(line: 164, column: 2, scope: !6733)
!6757 = !DILocation(line: 166, column: 20, scope: !6733)
!6758 = !DILocation(line: 166, column: 26, scope: !6733)
!6759 = !DILocation(line: 166, column: 8, scope: !6733)
!6760 = !DILocation(line: 166, column: 6, scope: !6733)
!6761 = !DILocation(line: 168, column: 20, scope: !6733)
!6762 = !DILocation(line: 168, column: 2, scope: !6733)
!6763 = !DILocation(line: 169, column: 21, scope: !6733)
!6764 = !DILocation(line: 169, column: 13, scope: !6733)
!6765 = !DILocation(line: 169, column: 2, scope: !6733)
!6766 = !DILocation(line: 171, column: 8, scope: !6733)
!6767 = !DILocation(line: 171, column: 2, scope: !6733)
!6768 = !DILocation(line: 173, column: 9, scope: !6733)
!6769 = !DILocation(line: 173, column: 2, scope: !6733)
!6770 = !DILocation(line: 174, column: 1, scope: !6733)
!6771 = distinct !DISubprogram(name: "get_dname", scope: !3, file: !3, line: 97, type: !6772, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{!315, !424}
!6774 = !{!6775, !6776, !6777, !6778}
!6775 = !DILocalVariable(name: "dentry", arg: 1, scope: !6771, file: !3, line: 97, type: !424)
!6776 = !DILocalVariable(name: "dname", scope: !6771, file: !3, line: 99, type: !37)
!6777 = !DILocalVariable(name: "name", scope: !6771, file: !3, line: 100, type: !315)
!6778 = !DILocalVariable(name: "len", scope: !6771, file: !3, line: 101, type: !43)
!6779 = !DILocation(line: 97, column: 39, scope: !6771)
!6780 = !DILocation(line: 99, column: 2, scope: !6771)
!6781 = !DILocation(line: 99, column: 14, scope: !6771)
!6782 = !DILocation(line: 100, column: 2, scope: !6771)
!6783 = !DILocation(line: 100, column: 8, scope: !6771)
!6784 = !DILocation(line: 101, column: 2, scope: !6771)
!6785 = !DILocation(line: 101, column: 6, scope: !6771)
!6786 = !DILocation(line: 101, column: 12, scope: !6771)
!6787 = !DILocation(line: 101, column: 20, scope: !6771)
!6788 = !DILocation(line: 101, column: 27, scope: !6771)
!6789 = !DILocation(line: 103, column: 10, scope: !6771)
!6790 = !DILocation(line: 103, column: 18, scope: !6771)
!6791 = !DILocation(line: 103, column: 25, scope: !6771)
!6792 = !DILocation(line: 103, column: 8, scope: !6771)
!6793 = !DILocation(line: 104, column: 17, scope: !6771)
!6794 = !DILocation(line: 104, column: 21, scope: !6771)
!6795 = !DILocation(line: 104, column: 9, scope: !6771)
!6796 = !DILocation(line: 104, column: 7, scope: !6771)
!6797 = !DILocation(line: 105, column: 7, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 105, column: 6)
!6799 = !DILocation(line: 105, column: 6, scope: !6771)
!6800 = !DILocation(line: 106, column: 3, scope: !6798)
!6801 = !DILocation(line: 107, column: 9, scope: !6771)
!6802 = !DILocation(line: 107, column: 15, scope: !6771)
!6803 = !DILocation(line: 107, column: 22, scope: !6771)
!6804 = !DILocation(line: 107, column: 2, scope: !6771)
!6805 = !DILocation(line: 108, column: 2, scope: !6771)
!6806 = !DILocation(line: 108, column: 7, scope: !6771)
!6807 = !DILocation(line: 108, column: 12, scope: !6771)
!6808 = !DILocation(line: 109, column: 9, scope: !6771)
!6809 = !DILocation(line: 109, column: 2, scope: !6771)
!6810 = !DILocation(line: 110, column: 1, scope: !6771)
!6811 = distinct !DISubprogram(name: "inode_lock_nested", scope: !173, file: !173, line: 837, type: !6812, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6814)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{null, !389, !7}
!6814 = !{!6815, !6816}
!6815 = !DILocalVariable(name: "inode", arg: 1, scope: !6811, file: !173, line: 837, type: !389)
!6816 = !DILocalVariable(name: "subclass", arg: 2, scope: !6811, file: !173, line: 837, type: !7)
!6817 = !DILocation(line: 837, column: 52, scope: !6811)
!6818 = !DILocation(line: 837, column: 68, scope: !6811)
!6819 = !DILocation(line: 839, column: 2, scope: !6811)
!6820 = !DILocation(line: 840, column: 1, scope: !6811)
!6821 = !DISubprogram(name: "kmem_cache_create", scope: !222, file: !222, line: 189, type: !6822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6822 = !DISubroutineType(types: !6823)
!6823 = !{!2835, !37, !7, !7, !4360, !3471}
!6824 = distinct !DISubprogram(name: "init_once", scope: !3, file: !3, line: 801, type: !3472, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6825)
!6825 = !{!6826, !6827, !6828, !6830}
!6826 = !DILocalVariable(name: "foo", arg: 1, scope: !6824, file: !3, line: 801, type: !41)
!6827 = !DILocalVariable(name: "ti", scope: !6824, file: !3, line: 803, type: !4349)
!6828 = !DILocalVariable(name: "__ptr", scope: !6829, file: !3, line: 809, type: !4361)
!6829 = distinct !DILexicalBlock(scope: !6824, file: !3, line: 809, column: 2)
!6830 = !DILocalVariable(name: "__val", scope: !6829, file: !3, line: 809, type: !43)
!6831 = !DILocation(line: 801, column: 29, scope: !6824)
!6832 = !DILocation(line: 803, column: 2, scope: !6824)
!6833 = !DILocation(line: 803, column: 24, scope: !6824)
!6834 = !DILocation(line: 803, column: 54, scope: !6824)
!6835 = !DILocation(line: 806, column: 19, scope: !6824)
!6836 = !DILocation(line: 806, column: 23, scope: !6824)
!6837 = !DILocation(line: 806, column: 2, scope: !6824)
!6838 = !DILocation(line: 809, column: 2, scope: !6829)
!6839 = !DILocation(line: 809, column: 2, scope: !6824)
!6840 = !DILocation(line: 810, column: 1, scope: !6824)
!6841 = !DISubprogram(name: "sysfs_create_mount_point", scope: !341, file: !341, line: 268, type: !6842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6842 = !DISubroutineType(types: !6843)
!6843 = !{!43, !280, !37}
!6844 = !DISubprogram(name: "register_filesystem", scope: !173, file: !173, line: 2445, type: !6845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6845 = !DISubroutineType(types: !6846)
!6846 = !{!43, !551}
!6847 = !DISubprogram(name: "inode_init_once", scope: !173, file: !173, line: 2866, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
