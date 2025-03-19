; ModuleID = 'fs/devpts/inode.c'
source_filename = "fs/devpts/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_devpts__299_619_init_devpts_fs\22, \22a\22\09\09"
module asm "__initcall__kmod_devpts__299_619_init_devpts_fs6:\09\09\09"
module asm ".long\09__initstub__kmod_devpts__299_619_init_devpts_fs6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [16 x i8] }
%struct.anon.31 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [48 x i8] }
%struct.anon.33 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
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
%struct.match_token = type { i32, ptr }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.pts_fs_info = type { %struct.ida, %struct.pts_mount_opts, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pts_mount_opts = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%union.anon.19 = type { i32 }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.22 = type { ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kernel_cap_t = type { i64 }
%union.anon.23 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.28, %struct.list_head, %struct.list_head, %union.anon.29 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { i64 }
%union.anon.28 = type { %struct.list_head }
%union.anon.29 = type { %struct.hlist_node }
%struct.substring_t = type { ptr, ptr }
%struct.nsproxy = type { %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pty_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !0
@pty_limit = internal global i32 4096, align 4, !dbg !5233
@pty_reserve = internal global i32 1024, align 4, !dbg !5235
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !5223
@.str.1 = private unnamed_addr constant [18 x i8] c"fs/devpts/inode.c\00", align 1, !dbg !5226
@__UNIQUE_ID___addressable___initstub__kmod_devpts__299_619_init_devpts_fs6300 = internal global ptr @__initstub__kmod_devpts__299_619_init_devpts_fs6, section ".discard.addressable", align 8, !dbg !5231
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [25 x i8] c"include/linux/fsnotify.h\00", align 1, !dbg !5237
@devpts_fs_type = internal global %struct.file_system_type { ptr @.str.4, i32 8, ptr null, ptr null, ptr @devpts_mount, ptr @devpts_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !5251
@.str.3 = private unnamed_addr constant [11 x i8] c"kernel/pty\00", align 1, !dbg !5243
@pty_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.23, ptr @pty_limit, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.24, ptr @pty_reserve, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.25, ptr @pty_count, i32 4, i16 292, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !5328
@.str.4 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1, !dbg !5248
@devpts_sops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @devpts_remount, ptr null, ptr @devpts_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5258
@simple_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"\013devpts: get root dentry failed\0A\00", align 1, !dbg !5253
@.str.6 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1, !dbg !5260
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1, !dbg !5262
@.str.8 = private unnamed_addr constant [11 x i8] c",mode=%03o\00", align 1, !dbg !5264
@.str.9 = private unnamed_addr constant [15 x i8] c",ptmxmode=%03o\00", align 1, !dbg !5266
@.str.10 = private unnamed_addr constant [8 x i8] c",max=%d\00", align 1, !dbg !5271
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5273
@init_task = external dso_local global %struct.task_struct, align 64
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !5278
@tokens = internal constant [7 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.14 }, %struct.match_token { i32 1, ptr @.str.15 }, %struct.match_token { i32 2, ptr @.str.16 }, %struct.match_token { i32 3, ptr @.str.17 }, %struct.match_token { i32 4, ptr @.str.18 }, %struct.match_token { i32 5, ptr @.str.19 }, %struct.match_token { i32 6, ptr null }], align 16, !dbg !5299
@.str.13 = private unnamed_addr constant [37 x i8] c"\013devpts: called with bogus options\0A\00", align 1, !dbg !5281
@.str.14 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1, !dbg !5286
@.str.15 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1, !dbg !5288
@.str.16 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1, !dbg !5290
@.str.17 = private unnamed_addr constant [12 x i8] c"ptmxmode=%o\00", align 1, !dbg !5292
@.str.18 = private unnamed_addr constant [12 x i8] c"newinstance\00", align 1, !dbg !5295
@.str.19 = private unnamed_addr constant [7 x i8] c"max=%d\00", align 1, !dbg !5297
@.str.20 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1, !dbg !5308
@.str.21 = private unnamed_addr constant [48 x i8] c"\013devpts: Unable to alloc dentry for ptmx node\0A\00", align 1, !dbg !5311
@.str.22 = private unnamed_addr constant [47 x i8] c"\013devpts: Unable to alloc inode for ptmx node\0A\00", align 1, !dbg !5316
@.str.23 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !5321
@pty_limit_min = internal global i32 0, align 4, !dbg !5331
@pty_limit_max = internal global i32 2147483647, align 4, !dbg !5333
@.str.24 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1, !dbg !5324
@.str.25 = private unnamed_addr constant [3 x i8] c"nr\00", align 1, !dbg !5326
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_devpts__299_619_init_devpts_fs6300], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devpts_mntget(ptr noundef %filp, ptr noundef %fsi) #0 align 16 !dbg !5344 {
entry:
  %retval = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %fsi.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5368, metadata !DIExpression()), !dbg !5372
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !5369, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #16, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5370, metadata !DIExpression()), !dbg !5375
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5371, metadata !DIExpression()), !dbg !5377
  store i32 0, ptr %err, align 4, !dbg !5377
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5378
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !5379
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %path, ptr align 8 %f_path, i64 16, i1 false), !dbg !5379
  call void @path_get(ptr noundef %path) #17, !dbg !5380
  br label %while.cond, !dbg !5381

while.cond:                                       ; preds = %if.end, %entry
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5382
  %1 = load ptr, ptr %mnt, align 8, !dbg !5382
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 0, !dbg !5383
  %2 = load ptr, ptr %mnt_root, align 8, !dbg !5383
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5384
  %3 = load ptr, ptr %dentry, align 8, !dbg !5384
  %cmp = icmp eq ptr %2, %3, !dbg !5385
  br i1 %cmp, label %while.body, label %while.end, !dbg !5381

while.body:                                       ; preds = %while.cond
  %call = call i32 @follow_up(ptr noundef %path) #17, !dbg !5386
  %cmp1 = icmp eq i32 %call, 0, !dbg !5388
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !5390

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5381, !llvm.loop !5391

while.end:                                        ; preds = %if.then, %while.cond
  %mnt2 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5395
  %4 = load ptr, ptr %mnt2, align 8, !dbg !5395
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1, !dbg !5397
  %5 = load ptr, ptr %mnt_sb, align 8, !dbg !5397
  %s_magic = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 12, !dbg !5398
  %6 = load i64, ptr %s_magic, align 32, !dbg !5398
  %cmp3 = icmp ne i64 %6, 7377, !dbg !5399
  br i1 %cmp3, label %if.then8, label %lor.lhs.false, !dbg !5400

lor.lhs.false:                                    ; preds = %while.end
  %mnt4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5401
  %7 = load ptr, ptr %mnt4, align 8, !dbg !5401
  %mnt_sb5 = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1, !dbg !5402
  %8 = load ptr, ptr %mnt_sb5, align 8, !dbg !5402
  %call6 = call ptr @DEVPTS_SB(ptr noundef %8) #17, !dbg !5403
  %9 = load ptr, ptr %fsi.addr, align 8, !dbg !5404
  %cmp7 = icmp ne ptr %call6, %9, !dbg !5405
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !5406

if.then8:                                         ; preds = %lor.lhs.false, %while.end
  %call9 = call i32 @devpts_ptmx_path(ptr noundef %path) #17, !dbg !5407
  store i32 %call9, ptr %err, align 4, !dbg !5408
  br label %if.end10, !dbg !5409

if.end10:                                         ; preds = %if.then8, %lor.lhs.false
  %dentry11 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5410
  %10 = load ptr, ptr %dentry11, align 8, !dbg !5410
  call void @dput(ptr noundef %10) #17, !dbg !5411
  %11 = load i32, ptr %err, align 4, !dbg !5412
  %tobool = icmp ne i32 %11, 0, !dbg !5412
  br i1 %tobool, label %if.end20, label %if.then12, !dbg !5414

if.then12:                                        ; preds = %if.end10
  %mnt13 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5415
  %12 = load ptr, ptr %mnt13, align 8, !dbg !5415
  %mnt_sb14 = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 1, !dbg !5418
  %13 = load ptr, ptr %mnt_sb14, align 8, !dbg !5418
  %call15 = call ptr @DEVPTS_SB(ptr noundef %13) #17, !dbg !5419
  %14 = load ptr, ptr %fsi.addr, align 8, !dbg !5420
  %cmp16 = icmp eq ptr %call15, %14, !dbg !5421
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !5422

if.then17:                                        ; preds = %if.then12
  %mnt18 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5423
  %15 = load ptr, ptr %mnt18, align 8, !dbg !5423
  store ptr %15, ptr %retval, align 8, !dbg !5424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

if.end19:                                         ; preds = %if.then12
  store i32 -19, ptr %err, align 4, !dbg !5425
  br label %if.end20, !dbg !5426

if.end20:                                         ; preds = %if.end19, %if.end10
  %mnt21 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5427
  %16 = load ptr, ptr %mnt21, align 8, !dbg !5427
  call void @mntput(ptr noundef %16) #17, !dbg !5428
  %17 = load i32, ptr %err, align 4, !dbg !5429
  %conv = sext i32 %17 to i64, !dbg !5429
  %call22 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !5430
  store ptr %call22, ptr %retval, align 8, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

cleanup:                                          ; preds = %if.end20, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5432
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #16, !dbg !5432
  %18 = load ptr, ptr %retval, align 8, !dbg !5432
  ret ptr %18, !dbg !5432
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5433 dso_local void @path_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5436 dso_local i32 @follow_up(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @DEVPTS_SB(ptr noundef %sb) #5 align 16 !dbg !5440 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5446
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5447
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5447
  ret ptr %1, !dbg !5448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devpts_ptmx_path(ptr noundef %path) #0 align 16 !dbg !5449 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5451, metadata !DIExpression()), !dbg !5454
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #16, !dbg !5455
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5452, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5453, metadata !DIExpression()), !dbg !5458
  %0 = load ptr, ptr %path.addr, align 8, !dbg !5459
  %call = call i32 @path_pts(ptr noundef %0) #17, !dbg !5460
  store i32 %call, ptr %err, align 4, !dbg !5461
  %1 = load i32, ptr %err, align 4, !dbg !5462
  %tobool = icmp ne i32 %1, 0, !dbg !5462
  br i1 %tobool, label %if.then, label %if.end, !dbg !5464

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !5465
  store i32 %2, ptr %retval, align 4, !dbg !5466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5466

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %path.addr, align 8, !dbg !5467
  %mnt = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 0, !dbg !5468
  %4 = load ptr, ptr %mnt, align 8, !dbg !5468
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1, !dbg !5469
  %5 = load ptr, ptr %mnt_sb, align 8, !dbg !5469
  store ptr %5, ptr %sb, align 8, !dbg !5470
  %6 = load ptr, ptr %sb, align 8, !dbg !5471
  %s_magic = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 12, !dbg !5473
  %7 = load i64, ptr %s_magic, align 32, !dbg !5473
  %cmp = icmp ne i64 %7, 7377, !dbg !5474
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !5475

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %path.addr, align 8, !dbg !5476
  %mnt1 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 0, !dbg !5477
  %9 = load ptr, ptr %mnt1, align 8, !dbg !5477
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 0, !dbg !5478
  %10 = load ptr, ptr %mnt_root, align 8, !dbg !5478
  %11 = load ptr, ptr %sb, align 8, !dbg !5479
  %s_root = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 13, !dbg !5480
  %12 = load ptr, ptr %s_root, align 8, !dbg !5480
  %cmp2 = icmp ne ptr %10, %12, !dbg !5481
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5482

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5483

if.end4:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5484

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5485
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #16, !dbg !5485
  %13 = load i32, ptr %retval, align 4, !dbg !5485
  ret i32 %13, !dbg !5485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5486 dso_local void @dput(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5487 dso_local void @mntput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5490 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  %0 = load i64, ptr %error.addr, align 8, !dbg !5497
  %1 = inttoptr i64 %0 to ptr, !dbg !5498
  ret ptr %1, !dbg !5499
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devpts_acquire(ptr noundef %filp) #0 align 16 !dbg !5500 {
entry:
  %retval = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %sb = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5504, metadata !DIExpression()), !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #16, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5505, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #16, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5506, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #16, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5507, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5519
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10, !dbg !5520
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %path, ptr align 8 %f_path, i64 16, i1 false), !dbg !5520
  call void @path_get(ptr noundef %path) #17, !dbg !5521
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5522
  %1 = load ptr, ptr %mnt, align 8, !dbg !5522
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1, !dbg !5523
  %2 = load ptr, ptr %mnt_sb, align 8, !dbg !5523
  %s_magic = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 12, !dbg !5524
  %3 = load i64, ptr %s_magic, align 32, !dbg !5524
  %cmp = icmp ne i64 %3, 7377, !dbg !5525
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5526

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5508, metadata !DIExpression()), !dbg !5528
  %call = call i32 @devpts_ptmx_path(ptr noundef %path) #17, !dbg !5529
  store i32 %call, ptr %err, align 4, !dbg !5530
  %4 = load i32, ptr %err, align 4, !dbg !5531
  %tobool = icmp ne i32 %4, 0, !dbg !5531
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5533

if.then1:                                         ; preds = %if.then
  %5 = load i32, ptr %err, align 4, !dbg !5534
  %conv = sext i32 %5 to i64, !dbg !5534
  %call2 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !5536
  store ptr %call2, ptr %result, align 8, !dbg !5537
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5538

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5539
  br label %cleanup, !dbg !5539

cleanup:                                          ; preds = %if.then1, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5539
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3, !dbg !5540

if.end3:                                          ; preds = %cleanup.cont, %entry
  %mnt4 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5541
  %6 = load ptr, ptr %mnt4, align 8, !dbg !5541
  %mnt_sb5 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1, !dbg !5542
  %7 = load ptr, ptr %mnt_sb5, align 8, !dbg !5542
  store ptr %7, ptr %sb, align 8, !dbg !5543
  %8 = load ptr, ptr %sb, align 8, !dbg !5544
  %s_active = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 16, !dbg !5545
  call void @atomic_inc(ptr noundef %s_active) #17, !dbg !5546
  %9 = load ptr, ptr %sb, align 8, !dbg !5547
  %call6 = call ptr @DEVPTS_SB(ptr noundef %9) #17, !dbg !5548
  store ptr %call6, ptr %result, align 8, !dbg !5549
  br label %out, !dbg !5550

out:                                              ; preds = %if.end3, %cleanup
  call void @llvm.dbg.label(metadata !5511), !dbg !5551
  call void @path_put(ptr noundef %path) #17, !dbg !5552
  %10 = load ptr, ptr %result, align 8, !dbg !5553
  store ptr %10, ptr %retval, align 8, !dbg !5554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup7, !dbg !5554

cleanup7:                                         ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #16, !dbg !5555
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #16, !dbg !5555
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #16, !dbg !5555
  %11 = load ptr, ptr %retval, align 8, !dbg !5555
  ret ptr %11, !dbg !5555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #6 align 16 !dbg !5556 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5564
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5565
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5566
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !5567
  ret void, !dbg !5568
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local void @path_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devpts_release(ptr noundef %fsi) #0 align 16 !dbg !5570 {
entry:
  %fsi.addr = alloca ptr, align 8
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  %0 = load ptr, ptr %fsi.addr, align 8, !dbg !5576
  %sb = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 2, !dbg !5577
  %1 = load ptr, ptr %sb, align 8, !dbg !5577
  call void @deactivate_super(ptr noundef %1) #17, !dbg !5578
  ret void, !dbg !5579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5580 dso_local void @deactivate_super(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devpts_new_index(ptr noundef %fsi) #0 align 16 !dbg !5581 {
entry:
  %fsi.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !5585, metadata !DIExpression()), !dbg !5588
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5586, metadata !DIExpression()), !dbg !5590
  store i32 -28, ptr %index, align 4, !dbg !5590
  %call = call i32 @atomic_inc_return(ptr noundef @pty_count) #17, !dbg !5591
  %0 = load i32, ptr @pty_limit, align 4, !dbg !5593
  %1 = load ptr, ptr %fsi.addr, align 8, !dbg !5594
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 1, !dbg !5595
  %reserve = getelementptr inbounds %struct.pts_mount_opts, ptr %mount_opts, i32 0, i32 6, !dbg !5596
  %2 = load i32, ptr %reserve, align 4, !dbg !5596
  %tobool = icmp ne i32 %2, 0, !dbg !5594
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5594

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5594

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @pty_reserve, align 4, !dbg !5597
  br label %cond.end, !dbg !5594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %3, %cond.false ], !dbg !5594
  %sub = sub i32 %0, %cond, !dbg !5598
  %cmp = icmp sge i32 %call, %sub, !dbg !5599
  br i1 %cmp, label %if.then, label %if.end, !dbg !5600

if.then:                                          ; preds = %cond.end
  br label %out, !dbg !5601

if.end:                                           ; preds = %cond.end
  %4 = load ptr, ptr %fsi.addr, align 8, !dbg !5602
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, ptr %4, i32 0, i32 0, !dbg !5603
  %5 = load ptr, ptr %fsi.addr, align 8, !dbg !5604
  %mount_opts1 = getelementptr inbounds %struct.pts_fs_info, ptr %5, i32 0, i32 1, !dbg !5605
  %max = getelementptr inbounds %struct.pts_mount_opts, ptr %mount_opts1, i32 0, i32 7, !dbg !5606
  %6 = load i32, ptr %max, align 8, !dbg !5606
  %sub2 = sub i32 %6, 1, !dbg !5607
  %call3 = call i32 @ida_alloc_max(ptr noundef %allocated_ptys, i32 noundef %sub2, i32 noundef 3264) #17, !dbg !5608
  store i32 %call3, ptr %index, align 4, !dbg !5609
  br label %out, !dbg !5610

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5587), !dbg !5611
  %7 = load i32, ptr %index, align 4, !dbg !5612
  %cmp4 = icmp slt i32 %7, 0, !dbg !5614
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5615

if.then5:                                         ; preds = %out
  call void @atomic_dec(ptr noundef @pty_count) #17, !dbg !5616
  br label %if.end6, !dbg !5616

if.end6:                                          ; preds = %if.then5, %out
  %8 = load i32, ptr %index, align 4, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5618
  ret i32 %8, !dbg !5619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !5620 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5624, metadata !DIExpression()), !dbg !5625
  br label %do.body, !dbg !5626

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5627

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5629
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5630
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5631
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #17, !dbg !5632
  ret i32 %call, !dbg !5633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc_max(ptr noundef %ida, i32 noundef %max, i32 noundef %gfp) #5 align 16 !dbg !5634 {
entry:
  %ida.addr = alloca ptr, align 8
  %max.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5639, metadata !DIExpression()), !dbg !5642
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5640, metadata !DIExpression()), !dbg !5643
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5641, metadata !DIExpression()), !dbg !5644
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5645
  %1 = load i32, ptr %max.addr, align 4, !dbg !5646
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5647
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #17, !dbg !5648
  ret i32 %call, !dbg !5649
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #6 align 16 !dbg !5650 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5652, metadata !DIExpression()), !dbg !5653
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5654
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5655
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5656
  call void @raw_atomic_dec(ptr noundef %1) #17, !dbg !5657
  ret void, !dbg !5658
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devpts_kill_index(ptr noundef %fsi, i32 noundef %idx) #0 align 16 !dbg !5659 {
entry:
  %fsi.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !5663, metadata !DIExpression()), !dbg !5665
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5664, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %fsi.addr, align 8, !dbg !5667
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 0, !dbg !5668
  %1 = load i32, ptr %idx.addr, align 4, !dbg !5669
  call void @ida_free(ptr noundef %allocated_ptys, i32 noundef %1) #17, !dbg !5670
  call void @atomic_dec(ptr noundef @pty_count) #17, !dbg !5671
  ret void, !dbg !5672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local void @ida_free(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devpts_pty_new(ptr noundef %fsi, i32 noundef %index, ptr noundef %priv) #0 align 16 !dbg !5676 {
entry:
  %retval = alloca ptr, align 8
  %fsi.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %priv.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %root = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %s = alloca [12 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp15 = alloca %struct.timespec64, align 8
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !5680, metadata !DIExpression()), !dbg !5690
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5681, metadata !DIExpression()), !dbg !5691
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !5682, metadata !DIExpression()), !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5683, metadata !DIExpression()), !dbg !5694
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #16, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5684, metadata !DIExpression()), !dbg !5696
  %0 = load ptr, ptr %fsi.addr, align 8, !dbg !5697
  %sb1 = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 2, !dbg !5698
  %1 = load ptr, ptr %sb1, align 8, !dbg !5698
  store ptr %1, ptr %sb, align 8, !dbg !5696
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5685, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5686, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !5687, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 12, ptr %s) #16, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5689, metadata !DIExpression()), !dbg !5706
  %2 = load ptr, ptr %sb, align 8, !dbg !5707
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !5708
  %3 = load ptr, ptr %s_root, align 8, !dbg !5708
  store ptr %3, ptr %root, align 8, !dbg !5709
  %4 = load ptr, ptr %fsi.addr, align 8, !dbg !5710
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %4, i32 0, i32 1, !dbg !5711
  store ptr %mount_opts, ptr %opts, align 8, !dbg !5712
  %5 = load ptr, ptr %sb, align 8, !dbg !5713
  %call = call ptr @new_inode(ptr noundef %5) #17, !dbg !5714
  store ptr %call, ptr %inode, align 8, !dbg !5715
  %6 = load ptr, ptr %inode, align 8, !dbg !5716
  %tobool = icmp ne ptr %6, null, !dbg !5716
  br i1 %tobool, label %if.end, label %if.then, !dbg !5718

if.then:                                          ; preds = %entry
  %call2 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5719
  store ptr %call2, ptr %retval, align 8, !dbg !5720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5720

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %index.addr, align 4, !dbg !5721
  %add = add i32 %7, 3, !dbg !5722
  %conv = sext i32 %add to i64, !dbg !5721
  %8 = load ptr, ptr %inode, align 8, !dbg !5723
  %i_ino = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12, !dbg !5724
  store i64 %conv, ptr %i_ino, align 8, !dbg !5725
  %9 = load ptr, ptr %inode, align 8, !dbg !5726
  %i_uid = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2, !dbg !5727
  %10 = load ptr, ptr %opts, align 8, !dbg !5728
  %setuid = getelementptr inbounds %struct.pts_mount_opts, ptr %10, i32 0, i32 0, !dbg !5729
  %11 = load i32, ptr %setuid, align 4, !dbg !5729
  %tobool3 = icmp ne i32 %11, 0, !dbg !5728
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5728

cond.true:                                        ; preds = %if.end
  %12 = load ptr, ptr %opts, align 8, !dbg !5730
  %uid = getelementptr inbounds %struct.pts_mount_opts, ptr %12, i32 0, i32 2, !dbg !5731
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !5731
  br label %cond.end, !dbg !5728

cond.false:                                       ; preds = %if.end
  br label %do.body, !dbg !5732

do.body:                                          ; preds = %cond.false
  br label %do.cond, !dbg !5735

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5735

do.end:                                           ; preds = %do.cond
  %call4 = call ptr @get_current() #17, !dbg !5732
  %cred = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 94, !dbg !5732
  %13 = load ptr, ptr %cred, align 32, !dbg !5732
  store ptr %13, ptr %tmp, align 8, !dbg !5735
  %14 = load ptr, ptr %tmp, align 8, !dbg !5732
  %fsuid = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 7, !dbg !5737
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 8 %fsuid, i64 4, i1 false), !dbg !5737
  br label %cond.end, !dbg !5728

cond.end:                                         ; preds = %do.end, %cond.true
  %15 = load ptr, ptr %inode, align 8, !dbg !5738
  %i_gid = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4, !dbg !5739
  %16 = load ptr, ptr %opts, align 8, !dbg !5740
  %setgid = getelementptr inbounds %struct.pts_mount_opts, ptr %16, i32 0, i32 1, !dbg !5741
  %17 = load i32, ptr %setgid, align 4, !dbg !5741
  %tobool5 = icmp ne i32 %17, 0, !dbg !5740
  br i1 %tobool5, label %cond.true6, label %cond.false7, !dbg !5740

cond.true6:                                       ; preds = %cond.end
  %18 = load ptr, ptr %opts, align 8, !dbg !5742
  %gid = getelementptr inbounds %struct.pts_mount_opts, ptr %18, i32 0, i32 3, !dbg !5743
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %gid, i64 4, i1 false), !dbg !5743
  br label %cond.end14, !dbg !5740

cond.false7:                                      ; preds = %cond.end
  br label %do.body8, !dbg !5744

do.body8:                                         ; preds = %cond.false7
  br label %do.cond9, !dbg !5747

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5747

do.end10:                                         ; preds = %do.cond9
  %call12 = call ptr @get_current() #17, !dbg !5744
  %cred13 = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 94, !dbg !5744
  %19 = load ptr, ptr %cred13, align 32, !dbg !5744
  store ptr %19, ptr %tmp11, align 8, !dbg !5747
  %20 = load ptr, ptr %tmp11, align 8, !dbg !5744
  %fsgid = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 8, !dbg !5749
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %fsgid, i64 4, i1 false), !dbg !5749
  br label %cond.end14, !dbg !5740

cond.end14:                                       ; preds = %do.end10, %cond.true6
  %21 = load ptr, ptr %inode, align 8, !dbg !5750
  %i_mtime = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 17, !dbg !5751
  %22 = load ptr, ptr %inode, align 8, !dbg !5752
  %i_atime = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 16, !dbg !5753
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp15) #16, !dbg !5754
  %23 = load ptr, ptr %inode, align 8, !dbg !5755
  %call16 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %23) #17, !dbg !5754
  %24 = getelementptr inbounds { i64, i64 }, ptr %tmp15, i32 0, i32 0, !dbg !5754
  %25 = extractvalue { i64, i64 } %call16, 0, !dbg !5754
  store i64 %25, ptr %24, align 8, !dbg !5754
  %26 = getelementptr inbounds { i64, i64 }, ptr %tmp15, i32 0, i32 1, !dbg !5754
  %27 = extractvalue { i64, i64 } %call16, 1, !dbg !5754
  store i64 %27, ptr %26, align 8, !dbg !5754
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp15, i64 16, i1 false), !dbg !5754
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp15) #16, !dbg !5754
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !5756
  %28 = load ptr, ptr %inode, align 8, !dbg !5757
  %29 = load ptr, ptr %opts, align 8, !dbg !5758
  %mode = getelementptr inbounds %struct.pts_mount_opts, ptr %29, i32 0, i32 4, !dbg !5759
  %30 = load i16, ptr %mode, align 4, !dbg !5759
  %conv17 = zext i16 %30 to i32, !dbg !5758
  %or = or i32 8192, %conv17, !dbg !5760
  %conv18 = trunc i32 %or to i16, !dbg !5761
  %31 = load i32, ptr %index.addr, align 4, !dbg !5762
  %or19 = or i32 142606336, %31, !dbg !5762
  call void @init_special_inode(ptr noundef %28, i16 noundef zeroext %conv18, i32 noundef %or19) #17, !dbg !5763
  %arraydecay = getelementptr inbounds [12 x i8], ptr %s, i64 0, i64 0, !dbg !5764
  %32 = load i32, ptr %index.addr, align 4, !dbg !5765
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %32) #17, !dbg !5766
  %33 = load ptr, ptr %root, align 8, !dbg !5767
  %arraydecay21 = getelementptr inbounds [12 x i8], ptr %s, i64 0, i64 0, !dbg !5768
  %call22 = call ptr @d_alloc_name(ptr noundef %33, ptr noundef %arraydecay21) #17, !dbg !5769
  store ptr %call22, ptr %dentry, align 8, !dbg !5770
  %34 = load ptr, ptr %dentry, align 8, !dbg !5771
  %tobool23 = icmp ne ptr %34, null, !dbg !5771
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !5773

if.then24:                                        ; preds = %cond.end14
  %35 = load ptr, ptr %priv.addr, align 8, !dbg !5774
  %36 = load ptr, ptr %dentry, align 8, !dbg !5776
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 11, !dbg !5777
  store ptr %35, ptr %d_fsdata, align 8, !dbg !5778
  %37 = load ptr, ptr %dentry, align 8, !dbg !5779
  %38 = load ptr, ptr %inode, align 8, !dbg !5780
  call void @d_add(ptr noundef %37, ptr noundef %38) #17, !dbg !5781
  %39 = load ptr, ptr %root, align 8, !dbg !5782
  %call25 = call ptr @d_inode(ptr noundef %39) #17, !dbg !5783
  %40 = load ptr, ptr %dentry, align 8, !dbg !5784
  call void @fsnotify_create(ptr noundef %call25, ptr noundef %40) #17, !dbg !5785
  br label %if.end27, !dbg !5786

if.else:                                          ; preds = %cond.end14
  %41 = load ptr, ptr %inode, align 8, !dbg !5787
  call void @iput(ptr noundef %41) #17, !dbg !5789
  %call26 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5790
  store ptr %call26, ptr %dentry, align 8, !dbg !5791
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  %42 = load ptr, ptr %dentry, align 8, !dbg !5792
  store ptr %42, ptr %retval, align 8, !dbg !5793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5793

cleanup:                                          ; preds = %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %s) #16, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #16, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5794
  %43 = load ptr, ptr %retval, align 8, !dbg !5794
  ret ptr %43, !dbg !5794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5795 dso_local ptr @new_inode(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5796 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5801, metadata !DIExpression()), !dbg !5807
  br label %do.body, !dbg !5807

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5808
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5803, metadata !DIExpression()), !dbg !5808
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5808
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5807
  br label %do.cond, !dbg !5808

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5808

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5805, metadata !DIExpression()), !dbg !5809
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !5809, !srcloc !5810
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5809
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5809
  %3 = inttoptr i64 %2 to ptr, !dbg !5809
  store ptr %3, ptr %tmp, align 8, !dbg !5809
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5807
  %4 = load ptr, ptr %tmp, align 8, !dbg !5809
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5807
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5807
  store ptr %5, ptr %tmp1, align 8, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5811
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5807
  ret ptr %6, !dbg !5812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5816 dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5819 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5823 dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5826 dso_local void @d_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_create(ptr noundef %dir, ptr noundef %dentry) #5 align 16 !dbg !5827 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5835
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5836
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #17, !dbg !5837
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5838
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5839
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 256) #17, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !5842 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5848
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5849
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5849
  ret ptr %1, !dbg !5850
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5851 dso_local void @iput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devpts_get_priv(ptr noundef %dentry) #0 align 16 !dbg !5852 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5858
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5860
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5860
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12, !dbg !5861
  %2 = load i64, ptr %s_magic, align 32, !dbg !5861
  %cmp = icmp ne i64 %2, 7377, !dbg !5862
  br i1 %cmp, label %if.then, label %if.end, !dbg !5863

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5864
  br label %return, !dbg !5864

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5865
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11, !dbg !5866
  %4 = load ptr, ptr %d_fsdata, align 8, !dbg !5866
  store ptr %4, ptr %retval, align 8, !dbg !5867
  br label %return, !dbg !5867

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5868
  ret ptr %5, !dbg !5868
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devpts_pty_kill(ptr noundef %dentry) #0 align 16 !dbg !5869 {
entry:
  %dentry.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5871, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5872, metadata !DIExpression()), !dbg !5878
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5878
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5878
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5878
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12, !dbg !5878
  %2 = load i64, ptr %s_magic, align 32, !dbg !5878
  %cmp = icmp ne i64 %2, 7377, !dbg !5878
  %lnot = xor i1 %cmp, true, !dbg !5878
  %lnot1 = xor i1 %lnot, true, !dbg !5878
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5878
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5878
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5879
  %tobool = icmp ne i32 %3, 0, !dbg !5879
  %lnot2 = xor i1 %tobool, true, !dbg !5879
  %lnot4 = xor i1 %lnot2, true, !dbg !5879
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5879
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5879
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5879
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5879
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5878

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5879

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5874, metadata !DIExpression()), !dbg !5880
  store i32 2307, ptr %__flags, align 4, !dbg !5880
  br label %do.body7, !dbg !5880

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5881

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5881

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5880

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5883
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 602, i32 %4, i64 12) #16, !dbg !5883, !srcloc !5885
  br label %do.cond9, !dbg !5883

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5883

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5880

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5886

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5886

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5879
  br label %do.cond14, !dbg !5880

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5880

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5880

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5878
  %tobool16 = icmp ne i32 %5, 0, !dbg !5878
  %lnot17 = xor i1 %tobool16, true, !dbg !5878
  %lnot19 = xor i1 %lnot17, true, !dbg !5878
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5878
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5878
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5878
  store i64 %expval22, ptr %tmp, align 8, !dbg !5879
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5888
  %6 = load i64, ptr %tmp, align 8, !dbg !5878
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5889
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11, !dbg !5890
  store ptr null, ptr %d_fsdata, align 8, !dbg !5891
  %8 = load ptr, ptr %dentry.addr, align 8, !dbg !5892
  %d_inode = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5, !dbg !5893
  %9 = load ptr, ptr %d_inode, align 8, !dbg !5893
  call void @drop_nlink(ptr noundef %9) #17, !dbg !5894
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !5895
  call void @d_drop(ptr noundef %10) #17, !dbg !5896
  %11 = load ptr, ptr %dentry.addr, align 8, !dbg !5897
  %d_parent = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3, !dbg !5898
  %12 = load ptr, ptr %d_parent, align 8, !dbg !5898
  %call = call ptr @d_inode(ptr noundef %12) #17, !dbg !5899
  %13 = load ptr, ptr %dentry.addr, align 8, !dbg !5900
  call void @fsnotify_unlink(ptr noundef %call, ptr noundef %13) #17, !dbg !5901
  %14 = load ptr, ptr %dentry.addr, align 8, !dbg !5902
  call void @dput(ptr noundef %14) #17, !dbg !5903
  ret void, !dbg !5904
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5905 dso_local void @drop_nlink(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5906 dso_local void @d_drop(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_unlink(ptr noundef %dir, ptr noundef %dentry) #5 align 16 !dbg !5907 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5909, metadata !DIExpression()), !dbg !5917
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5910, metadata !DIExpression()), !dbg !5918
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5919
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5911, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5919
  %call = call zeroext i1 @d_is_negative(ptr noundef %0) #17, !dbg !5919
  %lnot = xor i1 %call, true, !dbg !5919
  %lnot1 = xor i1 %lnot, true, !dbg !5919
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5919
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5919
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5920
  %tobool = icmp ne i32 %1, 0, !dbg !5920
  %lnot2 = xor i1 %tobool, true, !dbg !5920
  %lnot4 = xor i1 %lnot2, true, !dbg !5920
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5920
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5920
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5920
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5920
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5919

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5920

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5914, metadata !DIExpression()), !dbg !5921
  store i32 2307, ptr %__flags, align 4, !dbg !5921
  br label %do.body7, !dbg !5921

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5922

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5922

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5921

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5924
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 279, i32 %2, i64 12) #16, !dbg !5924, !srcloc !5926
  br label %do.cond9, !dbg !5924

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5924

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5921

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5927

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5927

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5920
  br label %do.cond14, !dbg !5921

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5921

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5921

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5919
  %tobool16 = icmp ne i32 %3, 0, !dbg !5919
  %lnot17 = xor i1 %tobool16, true, !dbg !5919
  %lnot19 = xor i1 %lnot17, true, !dbg !5919
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5919
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5919
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5919
  store i64 %expval22, ptr %tmp, align 8, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5929
  %4 = load i64, ptr %tmp, align 8, !dbg !5919
  %tobool23 = icmp ne i64 %4, 0, !dbg !5929
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5930

if.then24:                                        ; preds = %if.end
  br label %return, !dbg !5931

if.end25:                                         ; preds = %if.end
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !5932
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !5933
  %call26 = call ptr @d_inode(ptr noundef %6) #17, !dbg !5934
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5935
  call void @fsnotify_delete(ptr noundef %5, ptr noundef %call26, ptr noundef %7) #17, !dbg !5936
  br label %return, !dbg !5937

return:                                           ; preds = %if.end25, %if.then24
  ret void, !dbg !5937
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_devpts__299_619_init_devpts_fs6() #8 section ".init.text" align 16 !dbg !5938 {
entry:
  %call = call i32 @init_devpts_fs() #19, !dbg !5939
  ret i32 %call, !dbg !5939
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_devpts_fs() #8 section ".init.text" align 16 !dbg !5940 {
entry:
  %err = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5942, metadata !DIExpression()), !dbg !5944
  %call = call i32 @register_filesystem(ptr noundef @devpts_fs_type) #17, !dbg !5945
  store i32 %call, ptr %err, align 4, !dbg !5944
  %0 = load i32, ptr %err, align 4, !dbg !5946
  %tobool = icmp ne i32 %0, 0, !dbg !5946
  br i1 %tobool, label %if.end, label %if.then, !dbg !5948

if.then:                                          ; preds = %entry
  %call1 = call ptr @register_sysctl_sz(ptr noundef @.str.3, ptr noundef @pty_table, i64 noundef 4) #17, !dbg !5949
  br label %if.end, !dbg !5951

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %err, align 4, !dbg !5952
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5953
  ret i32 %1, !dbg !5954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local i32 @path_pts(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5956 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5964, metadata !DIExpression()), !dbg !5966
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5965, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5968
  %1 = load i64, ptr %size.addr, align 8, !dbg !5969
  %conv = trunc i64 %1 to i32, !dbg !5969
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5970
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5971
  %3 = load i64, ptr %size.addr, align 8, !dbg !5971
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5971
  ret void, !dbg !5972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #6 align 16 !dbg !5973 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5978
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !5979
  ret void, !dbg !5980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5981 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5986, metadata !DIExpression()), !dbg !5988
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5987, metadata !DIExpression()), !dbg !5989
  ret i1 true, !dbg !5990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5991 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5996, metadata !DIExpression()), !dbg !5999
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5998, metadata !DIExpression()), !dbg !6001
  ret void, !dbg !6002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #6 align 16 !dbg !6003 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6008
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6009
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6010, !srcloc !6011
  ret void, !dbg !6012
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !6013 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6017
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #17, !dbg !6018
  ret i32 %call, !dbg !6019
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6020 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6025, metadata !DIExpression()), !dbg !6027
  %0 = load i32, ptr %i.addr, align 4, !dbg !6028
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6029
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #17, !dbg !6030
  ret i32 %call, !dbg !6031
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6032 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6034, metadata !DIExpression()), !dbg !6038
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6035, metadata !DIExpression()), !dbg !6039
  %0 = load i32, ptr %i.addr, align 4, !dbg !6040
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6036, metadata !DIExpression()), !dbg !6041
  %1 = load i32, ptr %i.addr, align 4, !dbg !6041
  store i32 %1, ptr %__ret, align 4, !dbg !6041
  %2 = load i32, ptr %__ret, align 4, !dbg !6041
  %3 = load ptr, ptr %v.addr, align 8, !dbg !6041
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6041
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #16, !dbg !6041, !srcloc !6042
  store i32 %4, ptr %__ret, align 4, !dbg !6041
  %5 = load i32, ptr %__ret, align 4, !dbg !6041
  store i32 %5, ptr %tmp, align 4, !dbg !6041
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6043
  %6 = load i32, ptr %tmp, align 4, !dbg !6041
  %add = add i32 %0, %6, !dbg !6044
  ret i32 %add, !dbg !6045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6046 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #6 align 16 !dbg !6049 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6053
  call void @arch_atomic_dec(ptr noundef %0) #17, !dbg !6054
  ret void, !dbg !6055
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #6 align 16 !dbg !6056 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6060
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6061
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6062, !srcloc !6063
  ret void, !dbg !6064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_inode_child(ptr noundef %parent, ptr noundef %dentry, i8 noundef zeroext %type) #5 align 16 !dbg !6065 {
entry:
  %parent.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6070, metadata !DIExpression()), !dbg !6073
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6071, metadata !DIExpression()), !dbg !6074
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6072, metadata !DIExpression()), !dbg !6075
  %call = call zeroext i1 @audit_dummy_context() #17, !dbg !6076
  %lnot = xor i1 %call, true, !dbg !6076
  %lnot1 = xor i1 %lnot, true, !dbg !6076
  %lnot2 = xor i1 %lnot1, true, !dbg !6076
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6076
  %conv = sext i32 %lnot.ext to i64, !dbg !6076
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6076
  %tobool = icmp ne i64 %expval, 0, !dbg !6076
  br i1 %tobool, label %if.then, label %if.end, !dbg !6078

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !6079
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6080
  %2 = load i8, ptr %type.addr, align 1, !dbg !6081
  call void @__audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17, !dbg !6082
  br label %if.end, !dbg !6082

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_dirent(ptr noundef %dir, ptr noundef %dentry, i32 noundef %mask) #5 align 16 !dbg !6084 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6088, metadata !DIExpression()), !dbg !6091
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6089, metadata !DIExpression()), !dbg !6092
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6090, metadata !DIExpression()), !dbg !6093
  %0 = load i32, ptr %mask.addr, align 4, !dbg !6094
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6095
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !6096
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6097
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !6098
  %call = call i32 @fsnotify_name(i32 noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef %2, ptr noundef %d_name, i32 noundef 0) #17, !dbg !6099
  ret void, !dbg !6100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @audit_dummy_context() #5 align 16 !dbg !6101 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6103, metadata !DIExpression()), !dbg !6105
  %call = call ptr @audit_context() #17, !dbg !6106
  store ptr %call, ptr %p, align 8, !dbg !6105
  %0 = load ptr, ptr %p, align 8, !dbg !6107
  %tobool = icmp ne ptr %0, null, !dbg !6107
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6108

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6109
  %2 = load i32, ptr %1, align 4, !dbg !6110
  %tobool1 = icmp ne i32 %2, 0, !dbg !6108
  br label %lor.end, !dbg !6108

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6111
  ret i1 %3, !dbg !6112
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6113 dso_local void @__audit_inode_child(ptr noundef, ptr noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #5 align 16 !dbg !6114 {
entry:
  %call = call ptr @get_current() #17, !dbg !6117
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !6118
  %0 = load ptr, ptr %audit_context, align 32, !dbg !6118
  ret ptr %0, !dbg !6119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_name(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #5 align 16 !dbg !6120 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6124, metadata !DIExpression()), !dbg !6130
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6125, metadata !DIExpression()), !dbg !6131
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !6126, metadata !DIExpression()), !dbg !6132
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6127, metadata !DIExpression()), !dbg !6133
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6128, metadata !DIExpression()), !dbg !6134
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !6129, metadata !DIExpression()), !dbg !6135
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !6136
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6138
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6138
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !6139
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !6140
  %cmp = icmp eq i64 %call, 0, !dbg !6141
  br i1 %cmp, label %if.then, label %if.end, !dbg !6142

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6143
  br label %return, !dbg !6143

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !6144
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6145
  %4 = load i32, ptr %data_type.addr, align 4, !dbg !6146
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !6147
  %6 = load ptr, ptr %name.addr, align 8, !dbg !6148
  %7 = load i32, ptr %cookie.addr, align 4, !dbg !6149
  %call1 = call i32 @fsnotify(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef %7) #17, !dbg !6150
  store i32 %call1, ptr %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6152
  ret i32 %8, !dbg !6152
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6153 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6159, metadata !DIExpression()), !dbg !6160
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6161
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !6162
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6163
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !6164
  ret i64 %call, !dbg !6165
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6166 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6169 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6171, metadata !DIExpression()), !dbg !6173
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6175
  %1 = load i64, ptr %size.addr, align 8, !dbg !6176
  %conv = trunc i64 %1 to i32, !dbg !6176
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6177
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6178
  %3 = load i64, ptr %size.addr, align 8, !dbg !6178
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6178
  ret void, !dbg !6179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6180 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6184
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !6185
  ret i64 %call, !dbg !6186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6187 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6189, metadata !DIExpression()), !dbg !6191
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6190, metadata !DIExpression()), !dbg !6192
  ret i1 true, !dbg !6193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6194 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6200, metadata !DIExpression()), !dbg !6201
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6202
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !6203
  ret i64 %call, !dbg !6204
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6205 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6210
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6210
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6210
  ret i64 %1, !dbg !6211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_negative(ptr noundef %dentry) #5 align 16 !dbg !6212 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6218
  %call = call zeroext i1 @d_is_miss(ptr noundef %0) #17, !dbg !6219
  ret i1 %call, !dbg !6220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_delete(ptr noundef %dir, ptr noundef %inode, ptr noundef %dentry) #5 align 16 !dbg !6221 {
entry:
  %dir.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mask = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !6225, metadata !DIExpression()), !dbg !6229
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6226, metadata !DIExpression()), !dbg !6230
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6227, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #16, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6228, metadata !DIExpression()), !dbg !6233
  store i32 512, ptr %mask, align 4, !dbg !6233
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6234
  %i_mode = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 0, !dbg !6234
  %1 = load i16, ptr %i_mode, align 8, !dbg !6234
  %conv = zext i16 %1 to i32, !dbg !6234
  %and = and i32 %conv, 61440, !dbg !6234
  %cmp = icmp eq i32 %and, 16384, !dbg !6234
  br i1 %cmp, label %if.then, label %if.end, !dbg !6236

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %mask, align 4, !dbg !6237
  %or = or i32 %2, 1073741824, !dbg !6237
  store i32 %or, ptr %mask, align 4, !dbg !6237
  br label %if.end, !dbg !6238

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %mask, align 4, !dbg !6239
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !6240
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !6241
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !6242
  %d_name = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4, !dbg !6243
  %call = call i32 @fsnotify_name(i32 noundef %3, ptr noundef %4, i32 noundef 2, ptr noundef %5, ptr noundef %d_name, i32 noundef 0) #17, !dbg !6244
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #16, !dbg !6245
  ret void, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_miss(ptr noundef %dentry) #5 align 16 !dbg !6246 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6250
  %call = call i32 @__d_entry_type(ptr noundef %0) #17, !dbg !6251
  %cmp = icmp eq i32 %call, 0, !dbg !6252
  ret i1 %cmp, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__d_entry_type(ptr noundef %dentry) #5 align 16 !dbg !6254 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6258, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6260
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !6261
  %1 = load i32, ptr %d_flags, align 8, !dbg !6261
  %and = and i32 %1, 7340032, !dbg !6262
  ret i32 %and, !dbg !6263
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6264 dso_local i32 @register_filesystem(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6267 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devpts_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 16 !dbg !6270 {
entry:
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !6272, metadata !DIExpression()), !dbg !6276
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6273, metadata !DIExpression()), !dbg !6277
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !6274, metadata !DIExpression()), !dbg !6278
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6275, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %fs_type.addr, align 8, !dbg !6280
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6281
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6282
  %call = call ptr @mount_nodev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef @devpts_fill_super) #17, !dbg !6283
  ret ptr %call, !dbg !6284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devpts_kill_sb(ptr noundef %sb) #0 align 16 !dbg !6285 {
entry:
  %sb.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6287, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6288, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6292
  %call = call ptr @DEVPTS_SB(ptr noundef %0) #17, !dbg !6293
  store ptr %call, ptr %fsi, align 8, !dbg !6291
  %1 = load ptr, ptr %fsi, align 8, !dbg !6294
  %tobool = icmp ne ptr %1, null, !dbg !6294
  br i1 %tobool, label %if.then, label %if.end, !dbg !6296

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fsi, align 8, !dbg !6297
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, ptr %2, i32 0, i32 0, !dbg !6298
  call void @ida_destroy(ptr noundef %allocated_ptys) #17, !dbg !6299
  br label %if.end, !dbg !6299

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %fsi, align 8, !dbg !6300
  call void @kfree(ptr noundef %3) #17, !dbg !6301
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !6302
  call void @kill_litter_super(ptr noundef %4) #17, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6304
  ret void, !dbg !6304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devpts_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #0 align 16 !dbg !6311 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %silent.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp16 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6313, metadata !DIExpression()), !dbg !6320
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6314, metadata !DIExpression()), !dbg !6321
  store i32 %silent, ptr %silent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !6315, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6323
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6316, metadata !DIExpression()), !dbg !6324
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6317, metadata !DIExpression()), !dbg !6326
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6327
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11, !dbg !6328
  %1 = load i64, ptr %s_iflags, align 8, !dbg !6329
  %and = and i64 %1, -5, !dbg !6329
  store i64 %and, ptr %s_iflags, align 8, !dbg !6329
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6330
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3, !dbg !6331
  store i64 1024, ptr %s_blocksize, align 8, !dbg !6332
  %3 = load ptr, ptr %s.addr, align 8, !dbg !6333
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2, !dbg !6334
  store i8 10, ptr %s_blocksize_bits, align 4, !dbg !6335
  %4 = load ptr, ptr %s.addr, align 8, !dbg !6336
  %s_magic = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 12, !dbg !6337
  store i64 7377, ptr %s_magic, align 32, !dbg !6338
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6339
  %s_op = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 6, !dbg !6340
  store ptr @devpts_sops, ptr %s_op, align 16, !dbg !6341
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6342
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 40, !dbg !6343
  store ptr @simple_dentry_operations, ptr %s_d_op, align 16, !dbg !6344
  %7 = load ptr, ptr %s.addr, align 8, !dbg !6345
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 30, !dbg !6346
  store i32 1, ptr %s_time_gran, align 8, !dbg !6347
  store i32 -12, ptr %error, align 4, !dbg !6348
  %8 = load ptr, ptr %s.addr, align 8, !dbg !6349
  %call = call ptr @new_pts_fs_info(ptr noundef %8) #17, !dbg !6350
  %9 = load ptr, ptr %s.addr, align 8, !dbg !6351
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 29, !dbg !6352
  store ptr %call, ptr %s_fs_info, align 32, !dbg !6353
  %10 = load ptr, ptr %s.addr, align 8, !dbg !6354
  %s_fs_info1 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 29, !dbg !6356
  %11 = load ptr, ptr %s_fs_info1, align 32, !dbg !6356
  %tobool = icmp ne ptr %11, null, !dbg !6354
  br i1 %tobool, label %if.end, label %if.then, !dbg !6357

if.then:                                          ; preds = %entry
  br label %fail, !dbg !6358

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %data.addr, align 8, !dbg !6359
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6360
  %call2 = call ptr @DEVPTS_SB(ptr noundef %13) #17, !dbg !6361
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %call2, i32 0, i32 1, !dbg !6362
  %call3 = call i32 @parse_mount_options(ptr noundef %12, i32 noundef 0, ptr noundef %mount_opts) #17, !dbg !6363
  store i32 %call3, ptr %error, align 4, !dbg !6364
  %14 = load i32, ptr %error, align 4, !dbg !6365
  %tobool4 = icmp ne i32 %14, 0, !dbg !6365
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6367

if.then5:                                         ; preds = %if.end
  br label %fail, !dbg !6368

if.end6:                                          ; preds = %if.end
  store i32 -12, ptr %error, align 4, !dbg !6369
  %15 = load ptr, ptr %s.addr, align 8, !dbg !6370
  %call7 = call ptr @new_inode(ptr noundef %15) #17, !dbg !6371
  store ptr %call7, ptr %inode, align 8, !dbg !6372
  %16 = load ptr, ptr %inode, align 8, !dbg !6373
  %tobool8 = icmp ne ptr %16, null, !dbg !6373
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6375

if.then9:                                         ; preds = %if.end6
  br label %fail, !dbg !6376

if.end10:                                         ; preds = %if.end6
  %17 = load ptr, ptr %inode, align 8, !dbg !6377
  %i_ino = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 12, !dbg !6378
  store i64 1, ptr %i_ino, align 8, !dbg !6379
  %18 = load ptr, ptr %inode, align 8, !dbg !6380
  %i_mtime = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 17, !dbg !6381
  %19 = load ptr, ptr %inode, align 8, !dbg !6382
  %i_atime = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 16, !dbg !6383
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #16, !dbg !6384
  %20 = load ptr, ptr %inode, align 8, !dbg !6385
  %call11 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %20) #17, !dbg !6384
  %21 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !6384
  %22 = extractvalue { i64, i64 } %call11, 0, !dbg !6384
  store i64 %22, ptr %21, align 8, !dbg !6384
  %23 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !6384
  %24 = extractvalue { i64, i64 } %call11, 1, !dbg !6384
  store i64 %24, ptr %23, align 8, !dbg !6384
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp, i64 16, i1 false), !dbg !6384
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #16, !dbg !6384
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !6386
  %25 = load ptr, ptr %inode, align 8, !dbg !6387
  %i_mode = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 0, !dbg !6388
  store i16 16877, ptr %i_mode, align 8, !dbg !6389
  %26 = load ptr, ptr %inode, align 8, !dbg !6390
  %i_op = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8, !dbg !6391
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8, !dbg !6392
  %27 = load ptr, ptr %inode, align 8, !dbg !6393
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 39, !dbg !6394
  store ptr @simple_dir_operations, ptr %28, align 8, !dbg !6395
  %29 = load ptr, ptr %inode, align 8, !dbg !6396
  call void @set_nlink(ptr noundef %29, i32 noundef 2) #17, !dbg !6397
  %30 = load ptr, ptr %inode, align 8, !dbg !6398
  %call12 = call ptr @d_make_root(ptr noundef %30) #17, !dbg !6399
  %31 = load ptr, ptr %s.addr, align 8, !dbg !6400
  %s_root = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 13, !dbg !6401
  store ptr %call12, ptr %s_root, align 8, !dbg !6402
  %32 = load ptr, ptr %s.addr, align 8, !dbg !6403
  %s_root13 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 13, !dbg !6405
  %33 = load ptr, ptr %s_root13, align 8, !dbg !6405
  %tobool14 = icmp ne ptr %33, null, !dbg !6403
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !6406

if.then15:                                        ; preds = %if.end10
  br label %do.body, !dbg !6407

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !6410

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6410

do.end:                                           ; preds = %do.cond
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #19, !dbg !6407
  store i32 %call17, ptr %tmp16, align 4, !dbg !6410
  %34 = load i32, ptr %tmp16, align 4, !dbg !6407
  br label %fail, !dbg !6412

if.end18:                                         ; preds = %if.end10
  %35 = load ptr, ptr %s.addr, align 8, !dbg !6413
  %call19 = call i32 @mknod_ptmx(ptr noundef %35) #17, !dbg !6414
  store i32 %call19, ptr %error, align 4, !dbg !6415
  %36 = load i32, ptr %error, align 4, !dbg !6416
  %tobool20 = icmp ne i32 %36, 0, !dbg !6416
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6418

if.then21:                                        ; preds = %if.end18
  br label %fail_dput, !dbg !6419

if.end22:                                         ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !6420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6420

fail_dput:                                        ; preds = %if.then21
  call void @llvm.dbg.label(metadata !6318), !dbg !6421
  %37 = load ptr, ptr %s.addr, align 8, !dbg !6422
  %s_root23 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 13, !dbg !6423
  %38 = load ptr, ptr %s_root23, align 8, !dbg !6423
  call void @dput(ptr noundef %38) #17, !dbg !6424
  %39 = load ptr, ptr %s.addr, align 8, !dbg !6425
  %s_root24 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 13, !dbg !6426
  store ptr null, ptr %s_root24, align 8, !dbg !6427
  br label %fail, !dbg !6425

fail:                                             ; preds = %fail_dput, %do.end, %if.then9, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6319), !dbg !6428
  %40 = load i32, ptr %error, align 4, !dbg !6429
  store i32 %40, ptr %retval, align 4, !dbg !6430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6430

cleanup:                                          ; preds = %fail, %if.end22
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !6431
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6431
  %41 = load i32, ptr %retval, align 4, !dbg !6431
  ret i32 %41, !dbg !6431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @new_pts_fs_info(ptr noundef %sb) #0 align 16 !dbg !6432 {
entry:
  %retval = alloca ptr, align 8
  %sb.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6436, metadata !DIExpression()), !dbg !6438
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6437, metadata !DIExpression()), !dbg !6440
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 3264) #20, !dbg !6441
  store ptr %call, ptr %fsi, align 8, !dbg !6442
  %0 = load ptr, ptr %fsi, align 8, !dbg !6443
  %tobool = icmp ne ptr %0, null, !dbg !6443
  br i1 %tobool, label %if.end, label %if.then, !dbg !6445

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6446

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fsi, align 8, !dbg !6447
  %allocated_ptys = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 0, !dbg !6448
  call void @ida_init(ptr noundef %allocated_ptys) #17, !dbg !6449
  %2 = load ptr, ptr %fsi, align 8, !dbg !6450
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %2, i32 0, i32 1, !dbg !6451
  %mode = getelementptr inbounds %struct.pts_mount_opts, ptr %mount_opts, i32 0, i32 4, !dbg !6452
  store i16 384, ptr %mode, align 8, !dbg !6453
  %3 = load ptr, ptr %fsi, align 8, !dbg !6454
  %mount_opts1 = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, !dbg !6455
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %mount_opts1, i32 0, i32 5, !dbg !6456
  store i16 0, ptr %ptmxmode, align 2, !dbg !6457
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !6458
  %5 = load ptr, ptr %fsi, align 8, !dbg !6459
  %sb2 = getelementptr inbounds %struct.pts_fs_info, ptr %5, i32 0, i32 2, !dbg !6460
  store ptr %4, ptr %sb2, align 8, !dbg !6461
  %6 = load ptr, ptr %fsi, align 8, !dbg !6462
  store ptr %6, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6464
  %7 = load ptr, ptr %retval, align 8, !dbg !6464
  ret ptr %7, !dbg !6464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_mount_options(ptr noundef %data, i32 noundef %op, ptr noundef %opts) #0 align 16 !dbg !6465 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %opts.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral3 = alloca %struct.kgid_t, align 4
  %args = alloca [3 x %struct.substring_t], align 16
  %token = alloca i32, align 4
  %option = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %tmp31 = alloca %struct.kgid_t, align 4
  %tmp70 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6469, metadata !DIExpression()), !dbg !6485
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6470, metadata !DIExpression()), !dbg !6486
  store ptr %opts, ptr %opts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !6471, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6472, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6473, metadata !DIExpression()), !dbg !6491
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6492
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6474, metadata !DIExpression()), !dbg !6493
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !6494
  %setuid = getelementptr inbounds %struct.pts_mount_opts, ptr %0, i32 0, i32 0, !dbg !6495
  store i32 0, ptr %setuid, align 4, !dbg !6496
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !6497
  %setgid = getelementptr inbounds %struct.pts_mount_opts, ptr %1, i32 0, i32 1, !dbg !6498
  store i32 0, ptr %setgid, align 4, !dbg !6499
  %2 = load ptr, ptr %opts.addr, align 8, !dbg !6500
  %uid1 = getelementptr inbounds %struct.pts_mount_opts, ptr %2, i32 0, i32 2, !dbg !6501
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6502
  store i32 0, ptr %val, align 4, !dbg !6502
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6502
  %3 = load ptr, ptr %opts.addr, align 8, !dbg !6503
  %gid2 = getelementptr inbounds %struct.pts_mount_opts, ptr %3, i32 0, i32 3, !dbg !6504
  %val4 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral3, i32 0, i32 0, !dbg !6505
  store i32 0, ptr %val4, align 4, !dbg !6505
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid2, ptr align 4 %.compoundliteral3, i64 4, i1 false), !dbg !6505
  %4 = load ptr, ptr %opts.addr, align 8, !dbg !6506
  %mode = getelementptr inbounds %struct.pts_mount_opts, ptr %4, i32 0, i32 4, !dbg !6507
  store i16 384, ptr %mode, align 4, !dbg !6508
  %5 = load ptr, ptr %opts.addr, align 8, !dbg !6509
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %5, i32 0, i32 5, !dbg !6510
  store i16 0, ptr %ptmxmode, align 2, !dbg !6511
  %6 = load ptr, ptr %opts.addr, align 8, !dbg !6512
  %max = getelementptr inbounds %struct.pts_mount_opts, ptr %6, i32 0, i32 7, !dbg !6513
  store i32 1048576, ptr %max, align 4, !dbg !6514
  %7 = load i32, ptr %op.addr, align 4, !dbg !6515
  %cmp = icmp eq i32 %7, 0, !dbg !6517
  br i1 %cmp, label %if.then, label %if.end, !dbg !6518

if.then:                                          ; preds = %entry
  %call = call ptr @get_current() #17, !dbg !6519
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 103, !dbg !6520
  %8 = load ptr, ptr %nsproxy, align 8, !dbg !6520
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 3, !dbg !6521
  %9 = load ptr, ptr %mnt_ns, align 8, !dbg !6521
  %10 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 103), align 8, !dbg !6522
  %mnt_ns5 = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 3, !dbg !6523
  %11 = load ptr, ptr %mnt_ns5, align 8, !dbg !6523
  %cmp6 = icmp eq ptr %9, %11, !dbg !6524
  %conv = zext i1 %cmp6 to i32, !dbg !6524
  %12 = load ptr, ptr %opts.addr, align 8, !dbg !6525
  %reserve = getelementptr inbounds %struct.pts_mount_opts, ptr %12, i32 0, i32 6, !dbg !6526
  store i32 %conv, ptr %reserve, align 4, !dbg !6527
  br label %if.end, !dbg !6525

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !6528

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %call7 = call ptr @strsep(ptr noundef %data.addr, ptr noundef @.str.12) #17, !dbg !6529
  store ptr %call7, ptr %p, align 8, !dbg !6530
  %cmp8 = icmp ne ptr %call7, null, !dbg !6531
  br i1 %cmp8, label %while.body, label %while.end, !dbg !6528

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #16, !dbg !6532
  call void @llvm.dbg.declare(metadata ptr %args, metadata !6475, metadata !DIExpression()), !dbg !6533
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #16, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %token, metadata !6483, metadata !DIExpression()), !dbg !6535
  call void @llvm.lifetime.start.p0(i64 4, ptr %option) #16, !dbg !6536
  call void @llvm.dbg.declare(metadata ptr %option, metadata !6484, metadata !DIExpression()), !dbg !6537
  %13 = load ptr, ptr %p, align 8, !dbg !6538
  %14 = load i8, ptr %13, align 1, !dbg !6540
  %tobool = icmp ne i8 %14, 0, !dbg !6540
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !6541

if.then10:                                        ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6542, !llvm.loop !6543

if.end11:                                         ; preds = %while.body
  %15 = load ptr, ptr %p, align 8, !dbg !6545
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6546
  %call12 = call i32 @match_token(ptr noundef %15, ptr noundef @tokens, ptr noundef %arraydecay) #17, !dbg !6547
  store i32 %call12, ptr %token, align 4, !dbg !6548
  %16 = load i32, ptr %token, align 4, !dbg !6549
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb41
    i32 3, label %sw.bb49
    i32 4, label %sw.epilog
    i32 5, label %sw.bb58
  ], !dbg !6550

sw.bb:                                            ; preds = %if.end11
  %arrayidx = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6551
  %call13 = call i32 @match_int(ptr noundef %arrayidx, ptr noundef %option) #17, !dbg !6554
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6554
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6555

if.then15:                                        ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !6556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6556

if.end16:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !6557
  %call17 = call ptr @current_user_ns() #17, !dbg !6558
  %17 = load i32, ptr %option, align 4, !dbg !6559
  %call18 = call i32 @make_kuid(ptr noundef %call17, i32 noundef %17) #17, !dbg !6557
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !6557
  store i32 %call18, ptr %coerce.dive, align 4, !dbg !6557
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !6557
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !6557
  %coerce.dive19 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6560
  %18 = load i32, ptr %coerce.dive19, align 4, !dbg !6560
  %call20 = call zeroext i1 @uid_valid(i32 %18) #17, !dbg !6560
  br i1 %call20, label %if.end22, label %if.then21, !dbg !6562

if.then21:                                        ; preds = %if.end16
  store i32 -22, ptr %retval, align 4, !dbg !6563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6563

if.end22:                                         ; preds = %if.end16
  %19 = load ptr, ptr %opts.addr, align 8, !dbg !6564
  %uid23 = getelementptr inbounds %struct.pts_mount_opts, ptr %19, i32 0, i32 2, !dbg !6565
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid23, ptr align 4 %uid, i64 4, i1 false), !dbg !6566
  %20 = load ptr, ptr %opts.addr, align 8, !dbg !6567
  %setuid24 = getelementptr inbounds %struct.pts_mount_opts, ptr %20, i32 0, i32 0, !dbg !6568
  store i32 1, ptr %setuid24, align 4, !dbg !6569
  br label %sw.epilog, !dbg !6570

sw.bb25:                                          ; preds = %if.end11
  %arrayidx26 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6571
  %call27 = call i32 @match_int(ptr noundef %arrayidx26, ptr noundef %option) #17, !dbg !6573
  %tobool28 = icmp ne i32 %call27, 0, !dbg !6573
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6574

if.then29:                                        ; preds = %sw.bb25
  store i32 -22, ptr %retval, align 4, !dbg !6575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6575

if.end30:                                         ; preds = %sw.bb25
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp31) #16, !dbg !6576
  %call32 = call ptr @current_user_ns() #17, !dbg !6577
  %21 = load i32, ptr %option, align 4, !dbg !6578
  %call33 = call i32 @make_kgid(ptr noundef %call32, i32 noundef %21) #17, !dbg !6576
  %coerce.dive34 = getelementptr inbounds %struct.kgid_t, ptr %tmp31, i32 0, i32 0, !dbg !6576
  store i32 %call33, ptr %coerce.dive34, align 4, !dbg !6576
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %tmp31, i64 4, i1 false), !dbg !6576
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp31) #16, !dbg !6576
  %coerce.dive35 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6579
  %22 = load i32, ptr %coerce.dive35, align 4, !dbg !6579
  %call36 = call zeroext i1 @gid_valid(i32 %22) #17, !dbg !6579
  br i1 %call36, label %if.end38, label %if.then37, !dbg !6581

if.then37:                                        ; preds = %if.end30
  store i32 -22, ptr %retval, align 4, !dbg !6582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6582

if.end38:                                         ; preds = %if.end30
  %23 = load ptr, ptr %opts.addr, align 8, !dbg !6583
  %gid39 = getelementptr inbounds %struct.pts_mount_opts, ptr %23, i32 0, i32 3, !dbg !6584
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid39, ptr align 4 %gid, i64 4, i1 false), !dbg !6585
  %24 = load ptr, ptr %opts.addr, align 8, !dbg !6586
  %setgid40 = getelementptr inbounds %struct.pts_mount_opts, ptr %24, i32 0, i32 1, !dbg !6587
  store i32 1, ptr %setgid40, align 4, !dbg !6588
  br label %sw.epilog, !dbg !6589

sw.bb41:                                          ; preds = %if.end11
  %arrayidx42 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6590
  %call43 = call i32 @match_octal(ptr noundef %arrayidx42, ptr noundef %option) #17, !dbg !6592
  %tobool44 = icmp ne i32 %call43, 0, !dbg !6592
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !6593

if.then45:                                        ; preds = %sw.bb41
  store i32 -22, ptr %retval, align 4, !dbg !6594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6594

if.end46:                                         ; preds = %sw.bb41
  %25 = load i32, ptr %option, align 4, !dbg !6595
  %and = and i32 %25, 4095, !dbg !6596
  %conv47 = trunc i32 %and to i16, !dbg !6595
  %26 = load ptr, ptr %opts.addr, align 8, !dbg !6597
  %mode48 = getelementptr inbounds %struct.pts_mount_opts, ptr %26, i32 0, i32 4, !dbg !6598
  store i16 %conv47, ptr %mode48, align 4, !dbg !6599
  br label %sw.epilog, !dbg !6600

sw.bb49:                                          ; preds = %if.end11
  %arrayidx50 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6601
  %call51 = call i32 @match_octal(ptr noundef %arrayidx50, ptr noundef %option) #17, !dbg !6603
  %tobool52 = icmp ne i32 %call51, 0, !dbg !6603
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !6604

if.then53:                                        ; preds = %sw.bb49
  store i32 -22, ptr %retval, align 4, !dbg !6605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6605

if.end54:                                         ; preds = %sw.bb49
  %27 = load i32, ptr %option, align 4, !dbg !6606
  %and55 = and i32 %27, 4095, !dbg !6607
  %conv56 = trunc i32 %and55 to i16, !dbg !6606
  %28 = load ptr, ptr %opts.addr, align 8, !dbg !6608
  %ptmxmode57 = getelementptr inbounds %struct.pts_mount_opts, ptr %28, i32 0, i32 5, !dbg !6609
  store i16 %conv56, ptr %ptmxmode57, align 2, !dbg !6610
  br label %sw.epilog, !dbg !6611

sw.bb58:                                          ; preds = %if.end11
  %arrayidx59 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6612
  %call60 = call i32 @match_int(ptr noundef %arrayidx59, ptr noundef %option) #17, !dbg !6614
  %tobool61 = icmp ne i32 %call60, 0, !dbg !6614
  br i1 %tobool61, label %if.then67, label %lor.lhs.false, !dbg !6615

lor.lhs.false:                                    ; preds = %sw.bb58
  %29 = load i32, ptr %option, align 4, !dbg !6616
  %cmp62 = icmp slt i32 %29, 0, !dbg !6617
  br i1 %cmp62, label %if.then67, label %lor.lhs.false64, !dbg !6618

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %30 = load i32, ptr %option, align 4, !dbg !6619
  %cmp65 = icmp sgt i32 %30, 1048576, !dbg !6620
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !6621

if.then67:                                        ; preds = %lor.lhs.false64, %lor.lhs.false, %sw.bb58
  store i32 -22, ptr %retval, align 4, !dbg !6622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6622

if.end68:                                         ; preds = %lor.lhs.false64
  %31 = load i32, ptr %option, align 4, !dbg !6623
  %32 = load ptr, ptr %opts.addr, align 8, !dbg !6624
  %max69 = getelementptr inbounds %struct.pts_mount_opts, ptr %32, i32 0, i32 7, !dbg !6625
  store i32 %31, ptr %max69, align 4, !dbg !6626
  br label %sw.epilog, !dbg !6627

sw.default:                                       ; preds = %if.end11
  br label %do.body, !dbg !6628

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6630

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6630

do.end:                                           ; preds = %do.cond
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19, !dbg !6628
  store i32 %call71, ptr %tmp70, align 4, !dbg !6630
  %33 = load i32, ptr %tmp70, align 4, !dbg !6628
  store i32 -22, ptr %retval, align 4, !dbg !6632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

sw.epilog:                                        ; preds = %if.end68, %if.end11, %if.end54, %if.end46, %if.end38, %if.end22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6544
  br label %cleanup, !dbg !6544

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.then67, %if.then53, %if.then45, %if.then37, %if.then29, %if.then21, %if.then15, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %option) #16, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #16, !dbg !6544
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #16, !dbg !6544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup74 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6528, !llvm.loop !6543

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !6633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !6633

cleanup74:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6634
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6634
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6634
  %34 = load i32, ptr %retval, align 4, !dbg !6634
  ret i32 %34, !dbg !6634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6635 dso_local void @set_nlink(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6638 dso_local ptr @d_make_root(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6641 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mknod_ptmx(ptr noundef %sb) #0 align 16 !dbg !6645 {
entry:
  %sb.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  %rc = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %root = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %ptmx_uid = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  %ptmx_gid = alloca %struct.kgid_t, align 4
  %tmp5 = alloca ptr, align 8
  %tmp15 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp27 = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6647, metadata !DIExpression()), !dbg !6658
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #16, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !6648, metadata !DIExpression()), !dbg !6660
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6649, metadata !DIExpression()), !dbg !6662
  store i32 -12, ptr %rc, align 4, !dbg !6662
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !6663
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !6650, metadata !DIExpression()), !dbg !6664
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6665
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6651, metadata !DIExpression()), !dbg !6666
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6652, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6669
  %s_root = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13, !dbg !6670
  %1 = load ptr, ptr %s_root, align 8, !dbg !6670
  store ptr %1, ptr %root, align 8, !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6671
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6653, metadata !DIExpression()), !dbg !6672
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !6673
  %call = call ptr @DEVPTS_SB(ptr noundef %2) #17, !dbg !6674
  store ptr %call, ptr %fsi, align 8, !dbg !6672
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6654, metadata !DIExpression()), !dbg !6676
  %3 = load ptr, ptr %fsi, align 8, !dbg !6677
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, !dbg !6678
  store ptr %mount_opts, ptr %opts, align 8, !dbg !6676
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptmx_uid) #16, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %ptmx_uid, metadata !6655, metadata !DIExpression()), !dbg !6680
  br label %do.body, !dbg !6681

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6684

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6684

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @get_current() #17, !dbg !6681
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6681
  %4 = load ptr, ptr %cred, align 32, !dbg !6681
  store ptr %4, ptr %tmp, align 8, !dbg !6684
  %5 = load ptr, ptr %tmp, align 8, !dbg !6681
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7, !dbg !6686
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ptmx_uid, ptr align 8 %fsuid, i64 4, i1 false), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptmx_gid) #16, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %ptmx_gid, metadata !6656, metadata !DIExpression()), !dbg !6688
  br label %do.body2, !dbg !6689

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !6692

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6692

do.end4:                                          ; preds = %do.cond3
  %call6 = call ptr @get_current() #17, !dbg !6689
  %cred7 = getelementptr inbounds %struct.task_struct, ptr %call6, i32 0, i32 94, !dbg !6689
  %6 = load ptr, ptr %cred7, align 32, !dbg !6689
  store ptr %6, ptr %tmp5, align 8, !dbg !6692
  %7 = load ptr, ptr %tmp5, align 8, !dbg !6689
  %fsgid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8, !dbg !6694
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ptmx_gid, ptr align 4 %fsgid, i64 4, i1 false), !dbg !6694
  %8 = load ptr, ptr %root, align 8, !dbg !6695
  %call8 = call ptr @d_inode(ptr noundef %8) #17, !dbg !6696
  call void @inode_lock(ptr noundef %call8) #17, !dbg !6697
  %9 = load ptr, ptr %fsi, align 8, !dbg !6698
  %ptmx_dentry = getelementptr inbounds %struct.pts_fs_info, ptr %9, i32 0, i32 3, !dbg !6700
  %10 = load ptr, ptr %ptmx_dentry, align 8, !dbg !6700
  %tobool = icmp ne ptr %10, null, !dbg !6698
  br i1 %tobool, label %if.then, label %if.end, !dbg !6701

if.then:                                          ; preds = %do.end4
  store i32 0, ptr %rc, align 4, !dbg !6702
  br label %out, !dbg !6704

if.end:                                           ; preds = %do.end4
  %11 = load ptr, ptr %root, align 8, !dbg !6705
  %call9 = call ptr @d_alloc_name(ptr noundef %11, ptr noundef @.str.20) #17, !dbg !6706
  store ptr %call9, ptr %dentry, align 8, !dbg !6707
  %12 = load ptr, ptr %dentry, align 8, !dbg !6708
  %tobool10 = icmp ne ptr %12, null, !dbg !6708
  br i1 %tobool10, label %if.end17, label %if.then11, !dbg !6710

if.then11:                                        ; preds = %if.end
  br label %do.body12, !dbg !6711

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !6714

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6714

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #19, !dbg !6711
  store i32 %call16, ptr %tmp15, align 4, !dbg !6714
  %13 = load i32, ptr %tmp15, align 4, !dbg !6711
  br label %out, !dbg !6716

if.end17:                                         ; preds = %if.end
  %14 = load ptr, ptr %sb.addr, align 8, !dbg !6717
  %call18 = call ptr @new_inode(ptr noundef %14) #17, !dbg !6718
  store ptr %call18, ptr %inode, align 8, !dbg !6719
  %15 = load ptr, ptr %inode, align 8, !dbg !6720
  %tobool19 = icmp ne ptr %15, null, !dbg !6720
  br i1 %tobool19, label %if.end26, label %if.then20, !dbg !6722

if.then20:                                        ; preds = %if.end17
  br label %do.body21, !dbg !6723

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !6726

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6726

do.end23:                                         ; preds = %do.cond22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22) #19, !dbg !6723
  store i32 %call25, ptr %tmp24, align 4, !dbg !6726
  %16 = load i32, ptr %tmp24, align 4, !dbg !6723
  %17 = load ptr, ptr %dentry, align 8, !dbg !6728
  call void @dput(ptr noundef %17) #17, !dbg !6729
  br label %out, !dbg !6730

if.end26:                                         ; preds = %if.end17
  %18 = load ptr, ptr %inode, align 8, !dbg !6731
  %i_ino = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 12, !dbg !6732
  store i64 2, ptr %i_ino, align 8, !dbg !6733
  %19 = load ptr, ptr %inode, align 8, !dbg !6734
  %i_mtime = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 17, !dbg !6735
  %20 = load ptr, ptr %inode, align 8, !dbg !6736
  %i_atime = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 16, !dbg !6737
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp27) #16, !dbg !6738
  %21 = load ptr, ptr %inode, align 8, !dbg !6739
  %call28 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %21) #17, !dbg !6738
  %22 = getelementptr inbounds { i64, i64 }, ptr %tmp27, i32 0, i32 0, !dbg !6738
  %23 = extractvalue { i64, i64 } %call28, 0, !dbg !6738
  store i64 %23, ptr %22, align 8, !dbg !6738
  %24 = getelementptr inbounds { i64, i64 }, ptr %tmp27, i32 0, i32 1, !dbg !6738
  %25 = extractvalue { i64, i64 } %call28, 1, !dbg !6738
  store i64 %25, ptr %24, align 8, !dbg !6738
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp27, i64 16, i1 false), !dbg !6738
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp27) #16, !dbg !6738
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %i_atime, i64 16, i1 false), !dbg !6740
  %26 = load ptr, ptr %opts, align 8, !dbg !6741
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %26, i32 0, i32 5, !dbg !6742
  %27 = load i16, ptr %ptmxmode, align 2, !dbg !6742
  %conv = zext i16 %27 to i32, !dbg !6741
  %or = or i32 8192, %conv, !dbg !6743
  store i32 %or, ptr %mode, align 4, !dbg !6744
  %28 = load ptr, ptr %inode, align 8, !dbg !6745
  %29 = load i32, ptr %mode, align 4, !dbg !6746
  %conv29 = trunc i32 %29 to i16, !dbg !6746
  call void @init_special_inode(ptr noundef %28, i16 noundef zeroext %conv29, i32 noundef 5242882) #17, !dbg !6747
  %30 = load ptr, ptr %inode, align 8, !dbg !6748
  %i_uid = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 2, !dbg !6749
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %ptmx_uid, i64 4, i1 false), !dbg !6750
  %31 = load ptr, ptr %inode, align 8, !dbg !6751
  %i_gid = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 4, !dbg !6752
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %ptmx_gid, i64 4, i1 false), !dbg !6753
  %32 = load ptr, ptr %dentry, align 8, !dbg !6754
  %33 = load ptr, ptr %inode, align 8, !dbg !6755
  call void @d_add(ptr noundef %32, ptr noundef %33) #17, !dbg !6756
  %34 = load ptr, ptr %dentry, align 8, !dbg !6757
  %35 = load ptr, ptr %fsi, align 8, !dbg !6758
  %ptmx_dentry30 = getelementptr inbounds %struct.pts_fs_info, ptr %35, i32 0, i32 3, !dbg !6759
  store ptr %34, ptr %ptmx_dentry30, align 8, !dbg !6760
  store i32 0, ptr %rc, align 4, !dbg !6761
  br label %out, !dbg !6762

out:                                              ; preds = %if.end26, %do.end23, %do.end14, %if.then
  call void @llvm.dbg.label(metadata !6657), !dbg !6763
  %36 = load ptr, ptr %root, align 8, !dbg !6764
  %call31 = call ptr @d_inode(ptr noundef %36) #17, !dbg !6765
  call void @inode_unlock(ptr noundef %call31) #17, !dbg !6766
  %37 = load i32, ptr %rc, align 4, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptmx_gid) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptmx_uid) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #16, !dbg !6768
  ret i32 %37, !dbg !6769
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devpts_remount(ptr noundef %sb, ptr noundef %flags, ptr noundef %data) #0 align 16 !dbg !6770 {
entry:
  %sb.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %fsi = alloca ptr, align 8
  %opts = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6772, metadata !DIExpression()), !dbg !6778
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6773, metadata !DIExpression()), !dbg !6779
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6774, metadata !DIExpression()), !dbg !6780
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6781
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6775, metadata !DIExpression()), !dbg !6782
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6783
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6776, metadata !DIExpression()), !dbg !6784
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6785
  %call = call ptr @DEVPTS_SB(ptr noundef %0) #17, !dbg !6786
  store ptr %call, ptr %fsi, align 8, !dbg !6784
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6777, metadata !DIExpression()), !dbg !6788
  %1 = load ptr, ptr %fsi, align 8, !dbg !6789
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 1, !dbg !6790
  store ptr %mount_opts, ptr %opts, align 8, !dbg !6788
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6791
  %3 = load ptr, ptr %opts, align 8, !dbg !6792
  %call1 = call i32 @parse_mount_options(ptr noundef %2, i32 noundef 1, ptr noundef %3) #17, !dbg !6793
  store i32 %call1, ptr %err, align 4, !dbg !6794
  %4 = load ptr, ptr %fsi, align 8, !dbg !6795
  call void @update_ptmx_mode(ptr noundef %4) #17, !dbg !6796
  %5 = load i32, ptr %err, align 4, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6798
  ret i32 %5, !dbg !6799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devpts_show_options(ptr noundef %seq, ptr noundef %root) #0 align 16 !dbg !6800 {
entry:
  %seq.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %opts = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6802, metadata !DIExpression()), !dbg !6806
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6803, metadata !DIExpression()), !dbg !6807
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6808
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6804, metadata !DIExpression()), !dbg !6809
  %0 = load ptr, ptr %root.addr, align 8, !dbg !6810
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6811
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6811
  %call = call ptr @DEVPTS_SB(ptr noundef %1) #17, !dbg !6812
  store ptr %call, ptr %fsi, align 8, !dbg !6809
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6805, metadata !DIExpression()), !dbg !6814
  %2 = load ptr, ptr %fsi, align 8, !dbg !6815
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %2, i32 0, i32 1, !dbg !6816
  store ptr %mount_opts, ptr %opts, align 8, !dbg !6814
  %3 = load ptr, ptr %opts, align 8, !dbg !6817
  %setuid = getelementptr inbounds %struct.pts_mount_opts, ptr %3, i32 0, i32 0, !dbg !6819
  %4 = load i32, ptr %setuid, align 4, !dbg !6819
  %tobool = icmp ne i32 %4, 0, !dbg !6817
  br i1 %tobool, label %if.then, label %if.end, !dbg !6820

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %seq.addr, align 8, !dbg !6821
  %6 = load ptr, ptr %opts, align 8, !dbg !6822
  %uid = getelementptr inbounds %struct.pts_mount_opts, ptr %6, i32 0, i32 2, !dbg !6823
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6824
  %7 = load i32, ptr %coerce.dive, align 4, !dbg !6824
  %call1 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %7) #17, !dbg !6824
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.6, i32 noundef %call1) #17, !dbg !6825
  br label %if.end, !dbg !6825

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %opts, align 8, !dbg !6826
  %setgid = getelementptr inbounds %struct.pts_mount_opts, ptr %8, i32 0, i32 1, !dbg !6828
  %9 = load i32, ptr %setgid, align 4, !dbg !6828
  %tobool2 = icmp ne i32 %9, 0, !dbg !6826
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !6829

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %seq.addr, align 8, !dbg !6830
  %11 = load ptr, ptr %opts, align 8, !dbg !6831
  %gid = getelementptr inbounds %struct.pts_mount_opts, ptr %11, i32 0, i32 3, !dbg !6832
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6833
  %12 = load i32, ptr %coerce.dive4, align 4, !dbg !6833
  %call5 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %12) #17, !dbg !6833
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef @.str.7, i32 noundef %call5) #17, !dbg !6834
  br label %if.end6, !dbg !6834

if.end6:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %seq.addr, align 8, !dbg !6835
  %14 = load ptr, ptr %opts, align 8, !dbg !6836
  %mode = getelementptr inbounds %struct.pts_mount_opts, ptr %14, i32 0, i32 4, !dbg !6837
  %15 = load i16, ptr %mode, align 4, !dbg !6837
  %conv = zext i16 %15 to i32, !dbg !6836
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef @.str.8, i32 noundef %conv) #17, !dbg !6838
  %16 = load ptr, ptr %seq.addr, align 8, !dbg !6839
  %17 = load ptr, ptr %opts, align 8, !dbg !6840
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %17, i32 0, i32 5, !dbg !6841
  %18 = load i16, ptr %ptmxmode, align 2, !dbg !6841
  %conv7 = zext i16 %18 to i32, !dbg !6840
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef @.str.9, i32 noundef %conv7) #17, !dbg !6842
  %19 = load ptr, ptr %opts, align 8, !dbg !6843
  %max = getelementptr inbounds %struct.pts_mount_opts, ptr %19, i32 0, i32 7, !dbg !6845
  %20 = load i32, ptr %max, align 4, !dbg !6845
  %cmp = icmp slt i32 %20, 1048576, !dbg !6846
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !6847

if.then9:                                         ; preds = %if.end6
  %21 = load ptr, ptr %seq.addr, align 8, !dbg !6848
  %22 = load ptr, ptr %opts, align 8, !dbg !6849
  %max10 = getelementptr inbounds %struct.pts_mount_opts, ptr %22, i32 0, i32 7, !dbg !6850
  %23 = load i32, ptr %max10, align 4, !dbg !6850
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.10, i32 noundef %23) #17, !dbg !6851
  br label %if.end11, !dbg !6851

if.end11:                                         ; preds = %if.then9, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !6852
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6852
  ret i32 0, !dbg !6853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_ptmx_mode(ptr noundef %fsi) #0 align 16 !dbg !6854 {
entry:
  %fsi.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  store ptr %fsi, ptr %fsi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fsi.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6859
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6857, metadata !DIExpression()), !dbg !6860
  %0 = load ptr, ptr %fsi.addr, align 8, !dbg !6861
  %ptmx_dentry = getelementptr inbounds %struct.pts_fs_info, ptr %0, i32 0, i32 3, !dbg !6863
  %1 = load ptr, ptr %ptmx_dentry, align 8, !dbg !6863
  %tobool = icmp ne ptr %1, null, !dbg !6861
  br i1 %tobool, label %if.then, label %if.end, !dbg !6864

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fsi.addr, align 8, !dbg !6865
  %ptmx_dentry1 = getelementptr inbounds %struct.pts_fs_info, ptr %2, i32 0, i32 3, !dbg !6867
  %3 = load ptr, ptr %ptmx_dentry1, align 8, !dbg !6867
  %call = call ptr @d_inode(ptr noundef %3) #17, !dbg !6868
  store ptr %call, ptr %inode, align 8, !dbg !6869
  %4 = load ptr, ptr %fsi.addr, align 8, !dbg !6870
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %4, i32 0, i32 1, !dbg !6871
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %mount_opts, i32 0, i32 5, !dbg !6872
  %5 = load i16, ptr %ptmxmode, align 2, !dbg !6872
  %conv = zext i16 %5 to i32, !dbg !6870
  %or = or i32 8192, %conv, !dbg !6873
  %conv2 = trunc i32 %or to i16, !dbg !6874
  %6 = load ptr, ptr %inode, align 8, !dbg !6875
  %i_mode = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 0, !dbg !6876
  store i16 %conv2, ptr %i_mode, align 8, !dbg !6877
  br label %if.end, !dbg !6878

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6879
  ret void, !dbg !6879
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6880 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !6883 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6887, metadata !DIExpression()), !dbg !6890
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6888, metadata !DIExpression()), !dbg !6891
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6892
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6889, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6894
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6895
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6895
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #17, !dbg !6895
  store i32 %call, ptr %uid, align 4, !dbg !6893
  %2 = load i32, ptr %uid, align 4, !dbg !6896
  %cmp = icmp eq i32 %2, -1, !dbg !6898
  br i1 %cmp, label %if.then, label %if.end, !dbg !6899

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6900
  store i32 %3, ptr %uid, align 4, !dbg !6901
  br label %if.end, !dbg !6902

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6904
  ret i32 %4, !dbg !6905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #5 align 16 !dbg !6906 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6910, metadata !DIExpression()), !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6911, metadata !DIExpression()), !dbg !6914
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6912, metadata !DIExpression()), !dbg !6916
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6917
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6918
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6918
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #17, !dbg !6918
  store i32 %call, ptr %gid, align 4, !dbg !6916
  %2 = load i32, ptr %gid, align 4, !dbg !6919
  %cmp = icmp eq i32 %2, -1, !dbg !6921
  br i1 %cmp, label %if.then, label %if.end, !dbg !6922

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6923
  store i32 %3, ptr %gid, align 4, !dbg !6924
  br label %if.end, !dbg !6925

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6926
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6927
  ret i32 %4, !dbg !6928
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !6929 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6931, metadata !DIExpression()), !dbg !6933
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6932, metadata !DIExpression()), !dbg !6934
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6935
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6935
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6935
  ret i32 %call, !dbg !6936
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !6937 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6941, metadata !DIExpression()), !dbg !6942
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6943
  %0 = load i32, ptr %val, align 4, !dbg !6943
  ret i32 %0, !dbg !6944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #5 align 16 !dbg !6945 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6947, metadata !DIExpression()), !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6948, metadata !DIExpression()), !dbg !6950
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6951
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6951
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6951
  ret i32 %call, !dbg !6952
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #5 align 16 !dbg !6953 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6957, metadata !DIExpression()), !dbg !6958
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6959
  %0 = load i32, ptr %val, align 4, !dbg !6959
  ret i32 %0, !dbg !6960
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6961 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6965, metadata !DIExpression()), !dbg !6967
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6966, metadata !DIExpression()), !dbg !6968
  %0 = load i64, ptr %size.addr, align 8, !dbg !6969
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6970
  %or = or i32 %1, 256, !dbg !6971
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !6972
  ret ptr %call, !dbg !6973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ida_init(ptr noundef %ida) #5 align 16 !dbg !6974 {
entry:
  %ida.addr = alloca ptr, align 8
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !6978, metadata !DIExpression()), !dbg !6979
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !6980
  %xa = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !6981
  call void @xa_init_flags(ptr noundef %xa, i32 noundef 67108869) #17, !dbg !6982
  ret void, !dbg !6983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6984 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6986, metadata !DIExpression()), !dbg !6991
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6987, metadata !DIExpression()), !dbg !6992
  %0 = load i64, ptr %size.addr, align 8, !dbg !6993
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6994
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6995

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6996
  %tobool = icmp ne i64 %2, 0, !dbg !6996
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6997

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6998
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6988, metadata !DIExpression()), !dbg !6999
  %3 = load i64, ptr %size.addr, align 8, !dbg !7000
  %cmp = icmp ugt i64 %3, 8192, !dbg !7002
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7003

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7004
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7005
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !7006
  store ptr %call, ptr %retval, align 8, !dbg !7007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7007

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7008
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7008
  store i32 %call2, ptr %index, align 4, !dbg !7009
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7010
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7011
  %9 = ptrtoint ptr %8 to i64, !dbg !7011
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7012
  %idxprom = zext i32 %call3 to i64, !dbg !7013
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7013
  %10 = load i32, ptr %index, align 4, !dbg !7014
  %idxprom4 = zext i32 %10 to i64, !dbg !7013
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7013
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7013
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7015
  %13 = load i64, ptr %size.addr, align 8, !dbg !7016
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !7017
  store ptr %call6, ptr %retval, align 8, !dbg !7018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7018

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !7019
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7020
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7021
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !7022
  store ptr %call8, ptr %retval, align 8, !dbg !7023
  br label %return, !dbg !7023

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7024
  ret ptr %16, !dbg !7024
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7025 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !7026 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7030, metadata !DIExpression()), !dbg !7032
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7031, metadata !DIExpression()), !dbg !7033
  %0 = load i64, ptr %size.addr, align 8, !dbg !7034
  %tobool = icmp ne i64 %0, 0, !dbg !7034
  br i1 %tobool, label %if.end, label %if.then, !dbg !7036

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7037
  br label %return, !dbg !7037

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7038
  %cmp = icmp ule i64 %1, 8, !dbg !7040
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7041

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7042
  br label %return, !dbg !7042

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7043
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7045
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7046

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7047
  %cmp4 = icmp ule i64 %3, 96, !dbg !7048
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7049

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7050
  br label %return, !dbg !7050

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7051
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7053
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7054

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7055
  %cmp9 = icmp ule i64 %5, 192, !dbg !7056
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7057

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7058
  br label %return, !dbg !7058

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7059
  %cmp12 = icmp ule i64 %6, 8, !dbg !7061
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7062

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7063
  br label %return, !dbg !7063

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7064
  %cmp15 = icmp ule i64 %7, 16, !dbg !7066
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7067

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7068
  br label %return, !dbg !7068

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7069
  %cmp18 = icmp ule i64 %8, 32, !dbg !7071
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7072

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7073
  br label %return, !dbg !7073

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7074
  %cmp21 = icmp ule i64 %9, 64, !dbg !7076
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7077

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7078
  br label %return, !dbg !7078

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7079
  %cmp24 = icmp ule i64 %10, 128, !dbg !7081
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7082

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7083
  br label %return, !dbg !7083

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7084
  %cmp27 = icmp ule i64 %11, 256, !dbg !7086
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7087

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7088
  br label %return, !dbg !7088

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7089
  %cmp30 = icmp ule i64 %12, 512, !dbg !7091
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7092

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7093
  br label %return, !dbg !7093

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7094
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7096
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7097

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7098
  br label %return, !dbg !7098

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7099
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7101
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7102

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7103
  br label %return, !dbg !7103

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7104
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7106
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7107

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7108
  br label %return, !dbg !7108

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7109
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7111
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7112

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7113
  br label %return, !dbg !7113

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7114
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7116
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7117

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7118
  br label %return, !dbg !7118

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7119
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7121
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7122

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7123
  br label %return, !dbg !7123

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7124
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7126
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7127

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7128
  br label %return, !dbg !7128

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7129
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7131
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7132

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7133
  br label %return, !dbg !7133

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7134
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7136
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7137

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7138
  br label %return, !dbg !7138

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7139
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7141
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7142

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7143
  br label %return, !dbg !7143

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7144
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7146
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7147

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7148
  br label %return, !dbg !7148

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7149
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7151
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7152

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7153
  br label %return, !dbg !7153

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7154, !range !7156, !noundef !1009
  %tobool69 = trunc i8 %25 to i1, !dbg !7154
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7157

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7158

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #22, !dbg !7159, !srcloc !7162
  unreachable, !dbg !7159

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7163

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7164

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7165

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7167

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7165

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #16, !dbg !7169, !srcloc !7171
  br label %do.end75, !dbg !7169

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7165

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7172
  br label %return, !dbg !7172

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7173
  ret i32 %26, !dbg !7173
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7174 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7177 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7181, metadata !DIExpression()), !dbg !7183
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7182, metadata !DIExpression()), !dbg !7184
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7185
  %and = and i32 %0, 17, !dbg !7185
  %cmp = icmp eq i32 %and, 0, !dbg !7185
  %lnot = xor i1 %cmp, true, !dbg !7185
  %lnot1 = xor i1 %lnot, true, !dbg !7185
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7185
  %conv = sext i32 %lnot.ext to i64, !dbg !7185
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7185
  %tobool = icmp ne i64 %expval, 0, !dbg !7185
  br i1 %tobool, label %if.then, label %if.end, !dbg !7187

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7188
  br label %return, !dbg !7188

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7189
  %and2 = and i32 %1, 1, !dbg !7191
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7191
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7192

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7193
  br label %return, !dbg !7193

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7194
  br label %return, !dbg !7194

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7196
  ret i32 %2, !dbg !7196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7197 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7198 dso_local void @__compiletime_assert_255() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #5 align 16 !dbg !7199 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !7204, metadata !DIExpression()), !dbg !7206
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7205, metadata !DIExpression()), !dbg !7207
  br label %do.body, !dbg !7208

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !7209
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !7209
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #17, !dbg !7209
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !7209
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !7209
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !7209
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !7209
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !7209
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !7209
  store i32 0, ptr %counter, align 4, !dbg !7209
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !7209
  br label %do.end, !dbg !7209

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !7211
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !7212
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !7213
  store i32 %4, ptr %xa_flags, align 4, !dbg !7214
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !7215
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !7216
  store ptr null, ptr %xa_head, align 8, !dbg !7217
  ret void, !dbg !7218
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !7219 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7225, metadata !DIExpression()), !dbg !7226
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7227
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7228
  ret ptr %1, !dbg !7229
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7230 dso_local ptr @strsep(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7235 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7240 dso_local i32 @match_int(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #5 align 16 !dbg !7243 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7247, metadata !DIExpression()), !dbg !7249
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !7248, metadata !DIExpression()), !dbg !7250
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !7251
  %0 = load i32, ptr %uid.addr, align 4, !dbg !7251
  store i32 %0, ptr %val, align 4, !dbg !7251
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !7252
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !7252
  ret i32 %1, !dbg !7252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #5 align 16 !dbg !7253 {
entry:
  ret ptr @init_user_ns, !dbg !7256
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #5 align 16 !dbg !7257 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7261, metadata !DIExpression()), !dbg !7262
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7263
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !7263
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !7263
  %cmp = icmp ne i32 %call, -1, !dbg !7264
  ret i1 %cmp, !dbg !7265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #5 align 16 !dbg !7266 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7270, metadata !DIExpression()), !dbg !7272
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !7271, metadata !DIExpression()), !dbg !7273
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !7274
  %0 = load i32, ptr %gid.addr, align 4, !dbg !7274
  store i32 %0, ptr %val, align 4, !dbg !7274
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !7275
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !7275
  ret i32 %1, !dbg !7275
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #5 align 16 !dbg !7276 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7280, metadata !DIExpression()), !dbg !7281
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7282
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !7282
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !7282
  %cmp = icmp ne i32 %call, -1, !dbg !7283
  ret i1 %cmp, !dbg !7284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7285 dso_local i32 @match_octal(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #5 align 16 !dbg !7286 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7290
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !7291
  call void @down_write(ptr noundef %i_rwsem) #17, !dbg !7292
  ret void, !dbg !7293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #5 align 16 !dbg !7294 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7296, metadata !DIExpression()), !dbg !7297
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7298
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !7299
  call void @up_write(ptr noundef %i_rwsem) #17, !dbg !7300
  ret void, !dbg !7301
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7302 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7306 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7307 dso_local void @ida_destroy(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7308 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7311 dso_local void @kill_litter_super(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { nounwind memory(none) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!llvm.ident = !{!5343}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pty_count", scope: !2, file: !3, line: 46, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/devpts/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/devpts/devpts\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22devpts\22 -D __KBUILD_MODNAME=kmod_devpts -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/devpts/inode.ll fs/devpts/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !273, globals: !5222, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/devpts/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf80215702755538f15fc61d829d665c")
!4 = !{!5, !11, !107, !113, !121, !137, !144, !150, !157, !163, !170, !178, !185, !194, !199, !204, !210, !217, !225, !230, !236, !241, !249, !259, !264}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !114, line: 68, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!115 = !{!116, !117, !118, !119, !120}
!116 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!117 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!118 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!119 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!120 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !122, line: 1325, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!124 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!125 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!126 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!127 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!128 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!129 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!130 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!131 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!132 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!133 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!134 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!135 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!136 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !138, line: 15, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!139 = !{!140, !141, !142, !143}
!140 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!141 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!142 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!143 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !145, line: 26, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!148 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!149 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !151, line: 312, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!154 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!155 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!156 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !171, line: 620, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!174 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!175 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!176 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!177 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !171, line: 597, baseType: !22, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!181 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!182 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!183 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!184 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193}
!187 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!188 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!189 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!190 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!191 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!192 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!193 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!197 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!198 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!202 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!203 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!207 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!208 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!209 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !211, line: 51, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!214 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!215 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!216 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !218, line: 9, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!219 = !{!220, !221, !222, !223, !224}
!220 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!221 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!222 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!223 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!224 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !226, line: 2052, baseType: !7, size: 32, elements: !227)
!226 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!227 = !{!228, !229}
!228 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!229 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !231, line: 54, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!232 = !{!233, !234, !235}
!233 = !DIEnumerator(name: "USRQUOTA", value: 0)
!234 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!235 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 10, baseType: !7, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!238 = !{!239, !240}
!239 = !DIEnumerator(name: "false", value: 0)
!240 = !DIEnumerator(name: "true", value: 1)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !242, line: 286, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!245 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!246 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!247 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!248 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !250, line: 364, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!253 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!254 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!255 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!256 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!257 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!258 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xa_lock_type", file: !260, line: 258, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "XA_LOCK_IRQ", value: 1)
!263 = !DIEnumerator(name: "XA_LOCK_BH", value: 2)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 86, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272}
!266 = !DIEnumerator(name: "Opt_uid", value: 0)
!267 = !DIEnumerator(name: "Opt_gid", value: 1)
!268 = !DIEnumerator(name: "Opt_mode", value: 2)
!269 = !DIEnumerator(name: "Opt_ptmxmode", value: 3)
!270 = !DIEnumerator(name: "Opt_newinstance", value: 4)
!271 = !DIEnumerator(name: "Opt_max", value: 5)
!272 = !DIEnumerator(name: "Opt_err", value: 6)
!273 = !{!274, !275, !20, !692, !693, !39, !2355, !5218, !22, !295, !302, !7, !5221}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !278, line: 110, size: 1472, elements: !279)
!278 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!279 = !{!280, !289, !297, !304, !305, !306, !307, !308, !309, !310, !311, !320, !321, !322, !323, !324, !325, !478, !479, !480, !481, !482, !519, !676, !677, !687}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !277, file: !278, line: 111, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !282, line: 13, baseType: !283)
!282 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !284, file: !25, line: 180, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !277, file: !278, line: 112, baseType: !290, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !291, line: 23, baseType: !292)
!291 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 21, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !292, file: !291, line: 22, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !277, file: !278, line: 113, baseType: !298, size: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !291, line: 28, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 26, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !299, file: !291, line: 27, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !277, file: !278, line: 114, baseType: !290, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !277, file: !278, line: 115, baseType: !298, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !277, file: !278, line: 116, baseType: !290, size: 32, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !277, file: !278, line: 117, baseType: !298, size: 32, offset: 224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !277, file: !278, line: 118, baseType: !290, size: 32, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !277, file: !278, line: 119, baseType: !298, size: 32, offset: 288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !277, file: !278, line: 120, baseType: !7, size: 32, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !277, file: !278, line: 121, baseType: !312, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !313, line: 24, baseType: !314)
!313 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 24, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !314, file: !313, line: 24, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !319)
!319 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !277, file: !278, line: 122, baseType: !312, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !277, file: !278, line: 123, baseType: !312, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !277, file: !278, line: 124, baseType: !312, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !277, file: !278, line: 125, baseType: !312, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !277, file: !278, line: 127, baseType: !87, size: 8, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !277, file: !278, line: 129, baseType: !326, size: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !328, line: 195, size: 1728, elements: !329)
!328 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!329 = !{!330, !336, !341, !353, !367, !370, !371, !378, !379, !380, !381, !386, !387, !388, !390, !391, !440, !463}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !327, file: !328, line: 196, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !332, line: 113, baseType: !333)
!332 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !332, line: 111, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !333, file: !332, line: 112, baseType: !49, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !327, file: !328, line: 197, baseType: !337, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !328, line: 28, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 198, baseType: !342, size: 192, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 198, size: 192, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !342, file: !328, line: 199, baseType: !97, size: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !342, file: !328, line: 200, baseType: !346, size: 192, align: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !347, line: 5, size: 192, align: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!348 = !{!349, !350, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !346, file: !347, line: 6, baseType: !39, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !346, file: !347, line: 7, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !346, file: !347, line: 8, baseType: !351, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !327, file: !328, line: 205, baseType: !354, size: 320, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !355, line: 48, size: 320, elements: !356)
!355 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!356 = !{!357, !358, !359, !364, !366}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !355, line: 49, baseType: !281, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !354, file: !355, line: 55, baseType: !281, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !354, file: !355, line: 57, baseType: !360, size: 32, offset: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !361, line: 15, size: 32, elements: !362)
!361 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !360, file: !361, line: 20, baseType: !49, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !354, file: !355, line: 59, baseType: !365, size: 32, offset: 160)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !354, file: !355, line: 60, baseType: !97, size: 128, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !327, file: !328, line: 206, baseType: !368, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !328, line: 206, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !327, file: !328, line: 207, baseType: !20, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 208, baseType: !372, size: 64, offset: 704)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 208, size: 64, elements: !373)
!373 = !{!374, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !372, file: !328, line: 209, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !376, line: 8, baseType: !288)
!376 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !372, file: !328, line: 210, baseType: !375, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !327, file: !328, line: 212, baseType: !375, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !327, file: !328, line: 213, baseType: !290, size: 32, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !327, file: !328, line: 214, baseType: !298, size: 32, offset: 864)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !327, file: !328, line: 215, baseType: !382, size: 32, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !328, line: 31, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !327, file: !328, line: 216, baseType: !26, size: 16, offset: 928)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !327, file: !328, line: 217, baseType: !26, size: 16, offset: 944)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !328, line: 221, baseType: !389, size: 16, offset: 960)
!389 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !328, line: 228, baseType: !39, size: 64, offset: 1024)
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 245, baseType: !392, size: 320, offset: 1088)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 245, size: 320, elements: !393)
!393 = !{!394, !431}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !392, file: !328, line: 246, baseType: !395, size: 320)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !328, line: 114, size: 320, elements: !396)
!396 = !{!397, !398, !410, !413, !430}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !395, file: !328, line: 116, baseType: !39, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !328, line: 117, baseType: !399, size: 64, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !328, line: 117, size: 64, elements: !400)
!400 = !{!401, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !328, line: 118, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !328, line: 118, size: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !402, file: !328, line: 120, baseType: !93, size: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !402, file: !328, line: 121, baseType: !406, size: 48, offset: 16)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 6)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !399, file: !328, line: 127, baseType: !39, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !395, file: !328, line: 129, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !328, line: 102, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !395, file: !328, line: 130, baseType: !414, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !328, line: 108, size: 192, elements: !416)
!416 = !{!417, !426, !427}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !415, file: !328, line: 109, baseType: !418, size: 128, align: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !419)
!419 = !{!420, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !25, line: 233, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !418, file: !25, line: 234, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !421}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !415, file: !328, line: 110, baseType: !331, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !415, file: !328, line: 111, baseType: !428, size: 8, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !429)
!429 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !395, file: !328, line: 131, baseType: !16, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !328, line: 247, baseType: !432, size: 320)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !328, line: 247, size: 320, elements: !433)
!433 = !{!434, !435, !436, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !432, file: !328, line: 248, baseType: !39, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !432, file: !328, line: 249, baseType: !39, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !432, file: !328, line: 250, baseType: !411, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !432, file: !328, line: 251, baseType: !414, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !432, file: !328, line: 252, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 260, baseType: !441, size: 256, offset: 1408)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 260, size: 256, elements: !442)
!442 = !{!443, !451}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !441, file: !328, line: 261, baseType: !444, size: 256)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !328, line: 134, size: 256, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !444, file: !328, line: 135, baseType: !20, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !444, file: !328, line: 136, baseType: !448, size: 256)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 4)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !328, line: 262, baseType: !452, size: 256)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !328, line: 262, size: 256, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !452, file: !328, line: 264, baseType: !97, size: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !452, file: !328, line: 265, baseType: !456, size: 128, offset: 128)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !457, line: 22, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!458 = !{!459, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !456, file: !457, line: 23, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !457, line: 23, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !456, file: !457, line: 24, baseType: !39, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !327, file: !328, line: 280, baseType: !464, size: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !328, line: 176, size: 192, elements: !466)
!466 = !{!467, !476, !477}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !465, file: !328, line: 177, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !328, line: 171, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!22, !326, !472, !474, !326}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !465, file: !328, line: 178, baseType: !326, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !465, file: !328, line: 179, baseType: !411, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !277, file: !278, line: 130, baseType: !326, size: 64, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !277, file: !278, line: 131, baseType: !326, size: 64, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !277, file: !278, line: 132, baseType: !326, size: 64, offset: 960)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !277, file: !278, line: 135, baseType: !20, size: 64, offset: 1024)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !277, file: !278, line: 137, baseType: !483, size: 64, offset: 1088)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !485, line: 14, size: 1088, elements: !486)
!485 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!486 = !{!487, !488, !497, !498, !499, !506, !507, !508}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !484, file: !485, line: 15, baseType: !331, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !484, file: !485, line: 17, baseType: !489, size: 320, offset: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !490, line: 22, size: 320, elements: !491)
!490 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!491 = !{!492, !493, !494, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !490, line: 23, baseType: !365, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !489, file: !490, line: 24, baseType: !287, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !489, file: !490, line: 26, baseType: !97, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !489, file: !490, line: 28, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !484, file: !485, line: 19, baseType: !39, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !484, file: !485, line: 20, baseType: !281, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !484, file: !485, line: 23, baseType: !500, size: 128, offset: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !501)
!501 = !{!502, !504}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !25, line: 199, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !500, file: !25, line: 199, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !484, file: !485, line: 24, baseType: !290, size: 32, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !484, file: !485, line: 29, baseType: !281, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !484, file: !485, line: 36, baseType: !509, size: 320, offset: 768)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !510, line: 15, size: 320, elements: !511)
!510 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!511 = !{!512, !513, !514, !515, !516, !517, !518}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !509, file: !510, line: 16, baseType: !365, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !509, file: !510, line: 18, baseType: !22, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !509, file: !510, line: 19, baseType: !22, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !509, file: !510, line: 20, baseType: !22, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !509, file: !510, line: 21, baseType: !22, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !509, file: !510, line: 22, baseType: !39, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !510, line: 23, baseType: !39, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !277, file: !278, line: 138, baseType: !520, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !522, line: 68, size: 4800, elements: !523)
!522 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!523 = !{!524, !546, !547, !548, !549, !550, !551, !552, !563, !564, !565, !566, !567, !568, !580, !656, !657, !671, !674}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !521, file: !522, line: 69, baseType: !525, size: 576)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !522, line: 23, size: 576, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !525, file: !522, line: 24, baseType: !384, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !525, file: !522, line: 25, baseType: !529, size: 512, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !522, line: 25, size: 512, elements: !530)
!530 = !{!531, !540}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !529, file: !522, line: 26, baseType: !532, size: 480)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 480, elements: !538)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !522, line: 17, size: 96, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !533, file: !522, line: 18, baseType: !384, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !533, file: !522, line: 19, baseType: !384, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !533, file: !522, line: 20, baseType: !384, size: 32, offset: 64)
!538 = !{!539}
!539 = !DISubrange(count: 5)
!540 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !522, line: 27, baseType: !541, size: 128)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !522, line: 27, size: 128, elements: !542)
!542 = !{!543, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !541, file: !522, line: 28, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !541, file: !522, line: 29, baseType: !544, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !521, file: !522, line: 70, baseType: !525, size: 576, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !521, file: !522, line: 71, baseType: !525, size: 576, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !521, file: !522, line: 72, baseType: !520, size: 64, offset: 1728)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !521, file: !522, line: 73, baseType: !22, size: 32, offset: 1792)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !521, file: !522, line: 74, baseType: !290, size: 32, offset: 1824)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !521, file: !522, line: 75, baseType: !298, size: 32, offset: 1856)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !521, file: !522, line: 76, baseType: !553, size: 192, offset: 1920)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !554, line: 9, size: 192, elements: !555)
!554 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!555 = !{!556, !557, !561, !562}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !553, file: !554, line: 10, baseType: !281, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !553, file: !554, line: 11, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !554, line: 7, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !553, file: !554, line: 12, baseType: !7, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !553, file: !554, line: 13, baseType: !331, size: 32, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !522, line: 77, baseType: !39, size: 64, offset: 2112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !521, file: !522, line: 80, baseType: !428, size: 8, offset: 2176)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !521, file: !522, line: 88, baseType: !97, size: 128, offset: 2240)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !521, file: !522, line: 89, baseType: !326, size: 64, offset: 2368)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !521, file: !522, line: 90, baseType: !354, size: 320, offset: 2432)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !521, file: !522, line: 97, baseType: !569, size: 256, offset: 2752)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !570, line: 98, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !569, file: !570, line: 99, baseType: !281, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !569, file: !570, line: 100, baseType: !97, size: 128, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !570, line: 101, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !570, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !521, file: !522, line: 99, baseType: !581, size: 768, offset: 3008)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !582)
!582 = !{!583, !588}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !581, file: !12, line: 200, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!22, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !581, file: !12, line: 201, baseType: !589, size: 704, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !590)
!590 = !{!591, !652}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !589, file: !12, line: 195, baseType: !592, size: 640)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !593)
!593 = !{!594, !606, !618, !619, !639, !640, !642, !648}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !12, line: 174, baseType: !595, size: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !12, line: 174, size: 192, elements: !596)
!596 = !{!597, !605}
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !12, line: 175, baseType: !598, size: 192)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !12, line: 175, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603, !604}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !598, file: !12, line: 176, baseType: !33, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !598, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !598, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !598, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !598, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !595, file: !12, line: 182, baseType: !418, size: 128, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !592, file: !12, line: 184, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !609, line: 26, size: 256, elements: !610)
!609 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !608, file: !609, line: 27, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !608, file: !609, line: 28, baseType: !613, size: 192, offset: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !614, line: 43, size: 192, elements: !615)
!614 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !613, file: !614, line: 44, baseType: !365, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !613, file: !614, line: 45, baseType: !97, size: 128, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !592, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !592, file: !12, line: 186, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !622)
!622 = !{!623, !624, !628, !635}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !621, file: !12, line: 205, baseType: !581, size: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !621, file: !12, line: 206, baseType: !625, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!587, !620}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !621, file: !12, line: 207, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !621, file: !12, line: 209, baseType: !636, size: 64, offset: 896)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!22, !632, !33}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !592, file: !12, line: 187, baseType: !587, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !592, file: !12, line: 188, baseType: !641, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !12, line: 189, baseType: !643, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !12, line: 158, baseType: !346, size: 192, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !644, file: !12, line: 159, baseType: !632, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !592, file: !12, line: 190, baseType: !649, size: 64, offset: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !649, file: !25, line: 195, baseType: !503, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !589, file: !12, line: 196, baseType: !653, size: 64, offset: 640)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !347, line: 12, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !653, file: !347, line: 13, baseType: !351, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !521, file: !522, line: 100, baseType: !632, size: 64, offset: 3776)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !521, file: !522, line: 102, baseType: !658, size: 64, offset: 3840)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !522, line: 107, size: 1152, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !522, line: 108, baseType: !500, size: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !659, file: !522, line: 109, baseType: !520, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !659, file: !522, line: 110, baseType: !290, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !659, file: !522, line: 111, baseType: !49, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !659, file: !522, line: 112, baseType: !666, size: 640, offset: 256)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 640, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 10)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !659, file: !522, line: 113, baseType: !670, size: 256, offset: 896)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !449)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !521, file: !522, line: 103, baseType: !672, size: 640, offset: 3904)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 640, elements: !667)
!673 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !521, file: !522, line: 104, baseType: !675, size: 256, offset: 4544)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 256, elements: !449)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !277, file: !278, line: 139, baseType: !658, size: 64, offset: 1216)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !277, file: !278, line: 140, baseType: !678, size: 64, offset: 1280)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !278, line: 25, size: 64, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !679, file: !278, line: 26, baseType: !49, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !679, file: !278, line: 27, baseType: !22, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !679, file: !278, line: 28, baseType: !684, offset: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: -1)
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !278, line: 142, baseType: !688, size: 128, offset: 1344)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 142, size: 128, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !688, file: !278, line: 143, baseType: !22, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !278, line: 144, baseType: !418, size: 128, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !695, line: 746, size: 58368, elements: !696)
!695 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!696 = !{!697, !705, !706, !707, !708, !709, !710, !711, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !782, !793, !890, !894, !897, !928, !929, !930, !931, !942, !944, !945, !946, !947, !948, !949, !960, !961, !964, !965, !966, !967, !968, !969, !970, !971, !978, !979, !986, !987, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3524, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3572, !3578, !3579, !3580, !3581, !3582, !3584, !3587, !3594, !3599, !3602, !3605, !3608, !3634, !4624, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4662, !4663, !4664, !4673, !4681, !4682, !4683, !4684, !4685, !4690, !4691, !4692, !4695, !4696, !4699, !4702, !4705, !4713, !4716, !4717, !4803, !4804, !4805, !4806, !4807, !4813, !4814, !4815, !4816, !4819, !4820, !4823, !4826, !4827, !4830, !4831, !4832, !4835, !4836, !4837, !4838, !4839, !4840, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4872, !4873, !4879, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4891, !4963, !4965, !4966, !4967, !4968, !4969, !4970, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !694, file: !695, line: 752, baseType: !698, size: 192)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !699, line: 56, size: 192, elements: !700)
!699 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!700 = !{!701, !702, !703, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !699, line: 57, baseType: !39, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !698, file: !699, line: 58, baseType: !39, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !698, file: !699, line: 59, baseType: !384, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !698, file: !699, line: 61, baseType: !384, size: 32, offset: 160)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !694, file: !695, line: 754, baseType: !7, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !694, file: !695, line: 767, baseType: !20, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !694, file: !695, line: 768, baseType: !331, size: 32, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 770, baseType: !7, size: 32, offset: 352)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !694, file: !695, line: 771, baseType: !7, size: 32, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !694, file: !695, line: 774, baseType: !22, size: 32, offset: 416)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !694, file: !695, line: 775, baseType: !712, size: 128, offset: 448)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !713, line: 58, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!714 = !{!715, !721, !726, !727}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !712, file: !713, line: 59, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !717, line: 60, size: 64, elements: !718)
!717 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !717, line: 61, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !713, line: 60, baseType: !722, size: 32, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !712, file: !713, line: 60, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !722, file: !713, line: 61, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !722, file: !713, line: 62, baseType: !49, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !712, file: !713, line: 65, baseType: !93, size: 16, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !712, file: !713, line: 65, baseType: !93, size: 16, offset: 112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !694, file: !695, line: 776, baseType: !7, size: 32, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !694, file: !695, line: 777, baseType: !39, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !694, file: !695, line: 778, baseType: !693, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !694, file: !695, line: 787, baseType: !22, size: 32, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !694, file: !695, line: 788, baseType: !22, size: 32, offset: 800)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !694, file: !695, line: 790, baseType: !22, size: 32, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !694, file: !695, line: 792, baseType: !22, size: 32, offset: 864)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !694, file: !695, line: 793, baseType: !22, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !694, file: !695, line: 794, baseType: !22, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !694, file: !695, line: 795, baseType: !7, size: 32, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !694, file: !695, line: 797, baseType: !739, size: 2048, offset: 1024)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !695, line: 551, size: 2048, elements: !740)
!740 = !{!741, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !761, !764, !765, !766}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !739, file: !695, line: 553, baseType: !742, size: 128)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !695, line: 411, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !742, file: !695, line: 412, baseType: !39, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !742, file: !695, line: 413, baseType: !384, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !739, file: !695, line: 554, baseType: !346, size: 192, align: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !739, file: !695, line: 555, baseType: !317, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !739, file: !695, line: 556, baseType: !317, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !739, file: !695, line: 558, baseType: !97, size: 128, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !739, file: !695, line: 559, baseType: !7, size: 32, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !739, file: !695, line: 561, baseType: !317, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !739, file: !695, line: 562, baseType: !317, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !739, file: !695, line: 563, baseType: !317, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !739, file: !695, line: 564, baseType: !317, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !739, file: !695, line: 565, baseType: !287, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !739, file: !695, line: 566, baseType: !317, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !739, file: !695, line: 568, baseType: !317, size: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !739, file: !695, line: 571, baseType: !22, size: 32, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !739, file: !695, line: 572, baseType: !760, size: 64, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !739, file: !695, line: 574, baseType: !762, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !695, line: 49, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !739, file: !695, line: 576, baseType: !762, size: 64, offset: 1280)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !739, file: !695, line: 578, baseType: !39, size: 64, offset: 1344)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !739, file: !695, line: 588, baseType: !767, size: 512, align: 512, offset: 1536)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !695, line: 497, size: 512, align: 512, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !767, file: !695, line: 498, baseType: !317, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !767, file: !695, line: 499, baseType: !317, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !767, file: !695, line: 500, baseType: !317, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !767, file: !695, line: 501, baseType: !384, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !767, file: !695, line: 502, baseType: !384, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !767, file: !695, line: 503, baseType: !39, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !767, file: !695, line: 504, baseType: !39, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !767, file: !695, line: 505, baseType: !39, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !767, file: !695, line: 506, baseType: !778, size: 64, align: 64, offset: 448)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !695, line: 445, size: 64, align: 64, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !778, file: !695, line: 446, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !778, file: !695, line: 447, baseType: !7, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !694, file: !695, line: 798, baseType: !783, size: 384, offset: 3072)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !695, line: 592, size: 384, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !783, file: !695, line: 593, baseType: !97, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !783, file: !695, line: 594, baseType: !39, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !783, file: !695, line: 595, baseType: !39, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !783, file: !695, line: 596, baseType: !7, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !783, file: !695, line: 597, baseType: !26, size: 16, offset: 288)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !783, file: !695, line: 598, baseType: !26, size: 16, offset: 304)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !783, file: !695, line: 600, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !694, file: !695, line: 799, baseType: !794, size: 1792, offset: 3456)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !695, line: 610, size: 1792, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !887, !888}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !794, file: !695, line: 611, baseType: !346, size: 192, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !794, file: !695, line: 618, baseType: !317, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !794, file: !695, line: 619, baseType: !317, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !794, file: !695, line: 620, baseType: !317, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !794, file: !695, line: 621, baseType: !317, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !794, file: !695, line: 622, baseType: !317, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !794, file: !695, line: 629, baseType: !287, size: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !794, file: !695, line: 630, baseType: !317, size: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !695, line: 631, baseType: !7, size: 32, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !794, file: !695, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !794, file: !695, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !794, file: !695, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !794, file: !695, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !794, file: !695, line: 662, baseType: !810, size: 512, offset: 704)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !811)
!811 = !{!812, !820, !821, !826, !883, !884, !885, !886}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !810, file: !6, line: 119, baseType: !813, size: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !814, line: 9, size: 256, elements: !815)
!814 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !813, file: !814, line: 10, baseType: !346, size: 192, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !813, file: !814, line: 11, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !819, line: 29, baseType: !287)
!819 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !810, file: !6, line: 120, baseType: !818, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !810, file: !6, line: 121, baseType: !822, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!5, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !810, file: !6, line: 122, baseType: !827, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !829)
!829 = !{!830, !855, !856, !859, !869, !870, !878, !882}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !828, file: !6, line: 160, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !832, file: !6, line: 216, baseType: !365, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !832, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !832, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !832, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !832, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !832, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !832, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !832, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !832, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !832, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !832, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !832, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !832, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !832, file: !6, line: 235, baseType: !818, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !832, file: !6, line: 236, baseType: !825, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !832, file: !6, line: 237, baseType: !818, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !832, file: !6, line: 238, baseType: !825, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !832, file: !6, line: 239, baseType: !852, size: 4096, align: 512, offset: 512)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 4096, align: 512, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 8)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !828, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !828, file: !6, line: 162, baseType: !857, size: 32, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !828, file: !6, line: 163, baseType: !860, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !861, line: 274, baseType: !862)
!861 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !861, line: 274, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !862, file: !861, line: 274, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !861, line: 69, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !861, line: 64, size: 32, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !866, file: !861, line: 65, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !828, file: !6, line: 164, baseType: !825, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !828, file: !6, line: 165, baseType: !871, size: 128, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !814, line: 14, size: 128, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !871, file: !814, line: 15, baseType: !874, size: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !347, line: 26, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !874, file: !347, line: 27, baseType: !653, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !874, file: !347, line: 28, baseType: !351, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !828, file: !6, line: 166, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!818}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !828, file: !6, line: 167, baseType: !818, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !810, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !810, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !810, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !810, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !794, file: !695, line: 671, baseType: !810, size: 512, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !794, file: !695, line: 679, baseType: !889, size: 64, offset: 1728)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !694, file: !695, line: 800, baseType: !891, size: 64, offset: 5248)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !695, line: 800, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !694, file: !695, line: 809, baseType: !895, size: 64, offset: 5312)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !695, line: 70, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !694, file: !695, line: 825, baseType: !898, size: 2048, align: 512, offset: 5632)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !695, line: 509, size: 2048, align: 512, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !898, file: !695, line: 511, baseType: !317, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !898, file: !695, line: 512, baseType: !317, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !898, file: !695, line: 513, baseType: !317, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !898, file: !695, line: 514, baseType: !317, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !898, file: !695, line: 515, baseType: !317, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !898, file: !695, line: 516, baseType: !317, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !898, file: !695, line: 518, baseType: !317, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !898, file: !695, line: 519, baseType: !317, size: 64, offset: 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !898, file: !695, line: 520, baseType: !287, size: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !898, file: !695, line: 522, baseType: !317, size: 64, offset: 576)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !898, file: !695, line: 523, baseType: !317, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !898, file: !695, line: 524, baseType: !287, size: 64, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !898, file: !695, line: 526, baseType: !287, size: 64, offset: 768)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !898, file: !695, line: 527, baseType: !317, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !898, file: !695, line: 529, baseType: !317, size: 64, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !898, file: !695, line: 530, baseType: !317, size: 64, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !898, file: !695, line: 531, baseType: !317, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !898, file: !695, line: 532, baseType: !317, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !898, file: !695, line: 533, baseType: !317, size: 64, offset: 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !898, file: !695, line: 535, baseType: !317, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !898, file: !695, line: 536, baseType: !317, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !898, file: !695, line: 537, baseType: !317, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !898, file: !695, line: 538, baseType: !317, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !898, file: !695, line: 539, baseType: !317, size: 64, offset: 1472)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !898, file: !695, line: 540, baseType: !317, size: 64, offset: 1536)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !898, file: !695, line: 541, baseType: !317, size: 64, offset: 1600)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !898, file: !695, line: 542, baseType: !317, size: 64, offset: 1664)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !898, file: !695, line: 543, baseType: !317, size: 64, offset: 1728)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !694, file: !695, line: 833, baseType: !7, size: 32, offset: 7680)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !694, file: !695, line: 836, baseType: !7, size: 32, offset: 7712)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !694, file: !695, line: 837, baseType: !22, size: 32, offset: 7744)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !694, file: !695, line: 838, baseType: !932, size: 64, offset: 7808)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !935, line: 19, baseType: !936)
!935 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !935, line: 19, size: 64, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !936, file: !935, line: 19, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 1)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !694, file: !695, line: 839, baseType: !943, size: 64, offset: 7872)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !694, file: !695, line: 840, baseType: !934, size: 64, offset: 7936)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !694, file: !695, line: 841, baseType: !20, size: 64, offset: 8000)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !694, file: !695, line: 843, baseType: !26, size: 16, offset: 8064)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !694, file: !695, line: 845, baseType: !26, size: 16, offset: 8080)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !694, file: !695, line: 848, baseType: !22, size: 32, offset: 8096)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !694, file: !695, line: 849, baseType: !950, size: 32, offset: 8128)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !695, line: 718, size: 32, elements: !951)
!951 = !{!952, !959}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !950, file: !695, line: 724, baseType: !953, size: 32)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !695, line: 719, size: 32, elements: !954)
!954 = !{!955, !956, !957, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !953, file: !695, line: 720, baseType: !83, size: 8)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !953, file: !695, line: 721, baseType: !83, size: 8, offset: 8)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !953, file: !695, line: 722, baseType: !83, size: 8, offset: 16)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !953, file: !695, line: 723, baseType: !83, size: 8, offset: 24)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !950, file: !695, line: 725, baseType: !384, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !694, file: !695, line: 850, baseType: !97, size: 128, offset: 8192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !694, file: !695, line: 851, baseType: !962, size: 64, offset: 8320)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !695, line: 60, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !694, file: !695, line: 855, baseType: !39, size: 64, offset: 8384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !694, file: !695, line: 856, baseType: !83, size: 8, offset: 8448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !694, file: !695, line: 857, baseType: !83, size: 8, offset: 8456)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !694, file: !695, line: 858, baseType: !22, size: 32, offset: 8480)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !694, file: !695, line: 859, baseType: !97, size: 128, offset: 8512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !694, file: !695, line: 860, baseType: !22, size: 32, offset: 8640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !694, file: !695, line: 861, baseType: !97, size: 128, offset: 8704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !694, file: !695, line: 873, baseType: !972, size: 256, offset: 8832)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !695, line: 376, size: 256, elements: !973)
!973 = !{!974, !975, !976, !977}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !972, file: !695, line: 381, baseType: !39, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !972, file: !695, line: 384, baseType: !319, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !972, file: !695, line: 389, baseType: !319, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !972, file: !695, line: 392, baseType: !319, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !694, file: !695, line: 875, baseType: !97, size: 128, offset: 9088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !694, file: !695, line: 877, baseType: !980, size: 320, offset: 9216)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !981, line: 86, size: 320, elements: !982)
!981 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !980, file: !981, line: 87, baseType: !22, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !980, file: !981, line: 88, baseType: !97, size: 128, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !980, file: !981, line: 89, baseType: !97, size: 128, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !694, file: !695, line: 878, baseType: !346, size: 192, align: 64, offset: 9536)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !694, file: !695, line: 881, baseType: !988, size: 64, offset: 9728)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !122, line: 733, size: 10240, elements: !990)
!990 = !{!991, !3443}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !122, line: 734, baseType: !992, size: 10240)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !122, line: 734, size: 10240, elements: !993)
!993 = !{!994, !998, !1012, !3322, !3323, !3324, !3325, !3326, !3327, !3334, !3335, !3336, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3375, !3377, !3380, !3423, !3424, !3425, !3428, !3429, !3430, !3433, !3434, !3435, !3441, !3442}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !122, line: 739, baseType: !995, size: 512, align: 512)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !122, line: 739, size: 512, align: 512, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !995, file: !122, line: 747, baseType: !49, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !992, file: !122, line: 750, baseType: !999, size: 128, offset: 512)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1000, line: 218, size: 128, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1001 = !{!1002, !1010, !1011}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !1000, line: 219, baseType: !1003, size: 32)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !1000, line: 219, size: 32, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1003, file: !1000, line: 220, baseType: !59, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1003, file: !1000, line: 221, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1000, line: 197, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 197, elements: !1009)
!1009 = !{}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !999, file: !1000, line: 223, baseType: !7, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !999, file: !1000, line: 224, baseType: !20, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !992, file: !122, line: 752, baseType: !1013, size: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!39, !1016, !39, !39, !39, !39}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !226, line: 994, size: 1856, align: 64, elements: !1018)
!1018 = !{!1019, !1025, !1026, !1028, !1029, !1037, !1038, !1039, !1120, !1121, !1130, !3312, !3313, !3314, !3315, !3316, !3317, !3319, !3320, !3321}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !226, line: 995, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !226, line: 995, size: 128, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1020, file: !226, line: 996, baseType: !716, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1020, file: !226, line: 997, baseType: !418, size: 128, align: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1020, file: !226, line: 998, baseType: !7, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1017, file: !226, line: 1005, baseType: !59, size: 32, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1017, file: !226, line: 1006, baseType: !1027, size: 32, offset: 160)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1017, file: !226, line: 1007, baseType: !281, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1017, file: !226, line: 1008, baseType: !1030, size: 256, offset: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1031, line: 66, size: 256, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1030, file: !1031, line: 67, baseType: !281, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1030, file: !1031, line: 68, baseType: !365, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1030, file: !1031, line: 70, baseType: !360, size: 32, offset: 96)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1030, file: !1031, line: 72, baseType: !97, size: 128, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1017, file: !226, line: 1009, baseType: !41, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1017, file: !226, line: 1010, baseType: !7, size: 32, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1017, file: !226, line: 1011, baseType: !1040, size: 256, offset: 640)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !226, line: 948, size: 256, elements: !1041)
!1041 = !{!1042, !1065, !1116, !1117, !1118, !1119}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !226, line: 949, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1044, line: 34, baseType: !1045)
!1044 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 25, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1045, file: !1044, line: 26, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1049, line: 27, baseType: !1050)
!1049 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1049, line: 13, size: 64, elements: !1051)
!1051 = !{!1052, !1064}
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !1049, line: 14, baseType: !1053, size: 32)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1050, file: !1049, line: 14, size: 32, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1053, file: !1049, line: 15, baseType: !49, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !1049, line: 16, baseType: !1057, size: 32)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !1049, line: 16, size: 32, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1057, file: !1049, line: 18, baseType: !83, size: 8)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1057, file: !1049, line: 19, baseType: !1061, size: 24, offset: 8)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 3)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1050, file: !1049, line: 26, baseType: !71, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1040, file: !226, line: 950, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !218, line: 59, size: 768, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1074, !1075, !1076, !1077}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1067, file: !218, line: 61, baseType: !331, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1067, file: !218, line: 62, baseType: !7, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1067, file: !218, line: 63, baseType: !59, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1067, file: !218, line: 65, baseType: !1073, size: 256, offset: 128)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 256, elements: !449)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1067, file: !218, line: 66, baseType: !649, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1067, file: !218, line: 68, baseType: !54, size: 192, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1067, file: !218, line: 69, baseType: !418, size: 128, align: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1067, file: !218, line: 70, baseType: !1078, offset: 768)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, elements: !685)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !218, line: 54, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1079, file: !218, line: 55, baseType: !22, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1079, file: !218, line: 56, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1085, line: 26, size: 1152, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1086 = !{!1087, !1099, !1100, !1101, !1102, !1106, !1107, !1108, !1111, !1112, !1113, !1114, !1115}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1084, file: !1085, line: 27, baseType: !1088, size: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1089, line: 19, size: 192, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1090 = !{!1091, !1097, !1098}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1088, file: !1089, line: 20, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !260, line: 296, size: 128, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1092, file: !260, line: 297, baseType: !59, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1092, file: !260, line: 299, baseType: !274, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1092, file: !260, line: 300, baseType: !20, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1088, file: !1089, line: 21, baseType: !7, size: 32, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1088, file: !1089, line: 22, baseType: !7, size: 32, offset: 160)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1084, file: !1085, line: 28, baseType: !418, size: 128, align: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1084, file: !1085, line: 29, baseType: !7, size: 32, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1084, file: !1085, line: 30, baseType: !693, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1084, file: !1085, line: 31, baseType: !1103, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1105, line: 325, flags: DIFlagFwdDecl)
!1105 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1084, file: !1085, line: 32, baseType: !7, size: 32, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1084, file: !1085, line: 33, baseType: !1083, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1084, file: !1085, line: 35, baseType: !1109, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1085, line: 17, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1084, file: !1085, line: 37, baseType: !520, size: 64, offset: 704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1084, file: !1085, line: 38, baseType: !658, size: 64, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1084, file: !1085, line: 39, baseType: !22, size: 32, offset: 832)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1084, file: !1085, line: 40, baseType: !553, size: 192, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1084, file: !1085, line: 42, baseType: !22, size: 32, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1040, file: !226, line: 951, baseType: !217, size: 32, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1040, file: !226, line: 952, baseType: !290, size: 32, offset: 160)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1040, file: !226, line: 952, baseType: !290, size: 32, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1040, file: !226, line: 953, baseType: !22, size: 32, offset: 224)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1017, file: !226, line: 1012, baseType: !275, size: 64, offset: 896)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1017, file: !226, line: 1013, baseType: !1122, size: 256, offset: 960)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !226, line: 970, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1122, file: !226, line: 971, baseType: !39, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1122, file: !226, line: 972, baseType: !7, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1122, file: !226, line: 973, baseType: !7, size: 32, offset: 96)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1122, file: !226, line: 974, baseType: !7, size: 32, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1122, file: !226, line: 975, baseType: !7, size: 32, offset: 160)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1122, file: !226, line: 976, baseType: !41, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1017, file: !226, line: 1014, baseType: !1131, size: 128, offset: 1216)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1132, line: 8, size: 128, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1133 = !{!1134, !3311}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1131, file: !1132, line: 9, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1137, line: 70, size: 256, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1138 = !{!1139, !3308, !3309, !3310}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1136, file: !1137, line: 71, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1142, line: 82, size: 1536, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1143 = !{!1144, !1145, !1150, !1158, !1159, !1174, !3275, !3277, !3290, !3291, !3292, !3293, !3294, !3300, !3301, !3302}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1141, file: !1142, line: 84, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1141, file: !1142, line: 85, baseType: !1146, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !861, line: 275, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !861, line: 275, size: 32, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1147, file: !861, line: 275, baseType: !865, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1141, file: !1142, line: 86, baseType: !1151, size: 128, offset: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1152, line: 38, size: 128, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1153 = !{!1154, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !1152, line: 39, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1151, file: !1152, line: 39, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1141, file: !1142, line: 87, baseType: !1140, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1141, file: !1142, line: 88, baseType: !1160, size: 128, offset: 256)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1142, line: 49, size: 128, elements: !1161)
!1161 = !{!1162, !1171}
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1142, line: 50, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !1142, line: 50, size: 64, elements: !1164)
!1164 = !{!1165, !1170}
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !1142, line: 51, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1163, file: !1142, line: 51, size: 64, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1166, file: !1142, line: 52, baseType: !384, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1166, file: !1142, line: 52, baseType: !384, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1163, file: !1142, line: 54, baseType: !317, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1160, file: !1142, line: 56, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1141, file: !1142, line: 89, baseType: !1175, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !226, line: 641, size: 4800, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1187, !1188, !1375, !3081, !3082, !3083, !3084, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3249, !3252, !3253, !3254, !3271, !3272, !3273, !3274}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1176, file: !226, line: 642, baseType: !24, size: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1176, file: !226, line: 643, baseType: !26, size: 16, offset: 16)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1176, file: !226, line: 644, baseType: !290, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1176, file: !226, line: 645, baseType: !97, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1176, file: !226, line: 646, baseType: !298, size: 32, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1176, file: !226, line: 647, baseType: !7, size: 32, offset: 224)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1176, file: !226, line: 650, baseType: !1185, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !226, line: 607, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1176, file: !226, line: 651, baseType: !1185, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1176, file: !226, line: 654, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !226, line: 1966, size: 2048, align: 512, elements: !1192)
!1192 = !{!1193, !1197, !1210, !1216, !1220, !1224, !1228, !1232, !1236, !1240, !1244, !1245, !1251, !1255, !1292, !1323, !1330, !1336, !1340, !1344, !1348, !1352, !1356, !1362, !1366}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1191, file: !226, line: 1967, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1140, !1175, !1140, !7}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1191, file: !226, line: 1968, baseType: !1198, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!16, !1140, !1175, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1203, line: 10, size: 128, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1204 = !{!1205, !1209}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1202, file: !1203, line: 11, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !20}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1202, file: !1203, line: 12, baseType: !20, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1191, file: !226, line: 1969, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!22, !1214, !1175, !22}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !313, line: 42, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1191, file: !226, line: 1970, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1185, !1175, !22, !428}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1191, file: !226, line: 1972, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!22, !1140, !439, !22}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1191, file: !226, line: 1974, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!22, !1214, !1175, !1140, !24, !428}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1191, file: !226, line: 1976, baseType: !1229, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!22, !1140, !1175, !1140}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1191, file: !226, line: 1977, baseType: !1233, size: 64, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!22, !1175, !1140}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1191, file: !226, line: 1978, baseType: !1237, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!22, !1214, !1175, !1140, !16}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1191, file: !226, line: 1980, baseType: !1241, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!22, !1214, !1175, !1140, !24}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1191, file: !226, line: 1982, baseType: !1233, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1191, file: !226, line: 1983, baseType: !1246, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!22, !1214, !1175, !1140, !24, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1191, file: !226, line: 1985, baseType: !1252, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!22, !1214, !1175, !1140, !1175, !1140, !7}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1191, file: !226, line: 1987, baseType: !1256, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!22, !1214, !1140, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !226, line: 226, size: 640, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1274, !1283, !1284, !1289, !1290, !1291}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1260, file: !226, line: 227, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1260, file: !226, line: 228, baseType: !24, size: 16, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !226, line: 241, baseType: !1265, size: 32, offset: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !226, line: 241, size: 32, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1265, file: !226, line: 242, baseType: !290, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1265, file: !226, line: 243, baseType: !1269, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1270, line: 16, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 14, size: 32, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1271, file: !1270, line: 15, baseType: !295, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !226, line: 245, baseType: !1275, size: 32, offset: 96)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !226, line: 245, size: 32, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1275, file: !226, line: 246, baseType: !298, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1275, file: !226, line: 247, baseType: !1279, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1270, line: 20, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 18, size: 32, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1280, file: !1270, line: 19, baseType: !302, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1260, file: !226, line: 249, baseType: !41, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1260, file: !226, line: 250, baseType: !1285, size: 128, offset: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !376, line: 13, size: 128, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1285, file: !376, line: 14, baseType: !375, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1285, file: !376, line: 15, baseType: !673, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1260, file: !226, line: 251, baseType: !1285, size: 128, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1260, file: !226, line: 252, baseType: !1285, size: 128, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1260, file: !226, line: 259, baseType: !1016, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1191, file: !226, line: 1988, baseType: !1293, size: 64, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!22, !1214, !1296, !1298, !384, !7}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1300, line: 22, size: 1280, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1299, file: !1300, line: 23, baseType: !384, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1299, file: !1300, line: 24, baseType: !24, size: 16, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1299, file: !1300, line: 25, baseType: !7, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1299, file: !1300, line: 26, baseType: !383, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1299, file: !1300, line: 27, baseType: !317, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1299, file: !1300, line: 28, baseType: !317, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1299, file: !1300, line: 41, baseType: !317, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1299, file: !1300, line: 42, baseType: !1249, size: 32, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1299, file: !1300, line: 43, baseType: !1249, size: 32, offset: 352)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1299, file: !1300, line: 44, baseType: !290, size: 32, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1299, file: !1300, line: 45, baseType: !298, size: 32, offset: 416)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1299, file: !1300, line: 46, baseType: !41, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1299, file: !1300, line: 47, baseType: !1285, size: 128, offset: 512)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1299, file: !1300, line: 48, baseType: !1285, size: 128, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1299, file: !1300, line: 49, baseType: !1285, size: 128, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1299, file: !1300, line: 50, baseType: !1285, size: 128, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1299, file: !1300, line: 51, baseType: !317, size: 64, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1299, file: !1300, line: 52, baseType: !317, size: 64, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1299, file: !1300, line: 53, baseType: !384, size: 32, offset: 1152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1299, file: !1300, line: 54, baseType: !384, size: 32, offset: 1184)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1299, file: !1300, line: 55, baseType: !317, size: 64, offset: 1216)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1191, file: !226, line: 1990, baseType: !1324, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1327, !1140, !439, !35}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !673)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1191, file: !226, line: 1991, baseType: !1331, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!22, !1175, !1334, !317, !317}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !226, line: 55, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1191, file: !226, line: 1993, baseType: !1337, size: 64, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!22, !1175, !22}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1191, file: !226, line: 1994, baseType: !1341, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!22, !1175, !1140, !1016, !7, !24}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1191, file: !226, line: 1997, baseType: !1345, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!22, !1214, !1175, !1016, !24}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1191, file: !226, line: 1999, baseType: !1349, size: 64, offset: 1280)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1185, !1214, !1140, !22}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1191, file: !226, line: 2001, baseType: !1353, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!22, !1214, !1140, !1185, !22}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1191, file: !226, line: 2003, baseType: !1357, size: 64, offset: 1408)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!22, !1214, !1140, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !226, line: 76, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1191, file: !226, line: 2005, baseType: !1363, size: 64, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!22, !1140, !1360}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1191, file: !226, line: 2006, baseType: !1367, size: 64, offset: 1536)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1370, !1175}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !226, line: 3192, size: 192, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1371, file: !226, line: 3193, baseType: !1092, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1371, file: !226, line: 3194, baseType: !384, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1176, file: !226, line: 655, baseType: !1376, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !226, line: 1190, size: 10752, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !2576, !2708, !2748, !2831, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2848, !2852, !2853, !2856, !2859, !2862, !2865, !2866, !2867, !2908, !2934, !2935, !2936, !2937, !2938, !2939, !2960, !2964, !2973, !2974, !2975, !2976, !3035, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1377, file: !226, line: 1191, baseType: !97, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1377, file: !226, line: 1192, baseType: !1249, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1377, file: !226, line: 1193, baseType: !87, size: 8, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1377, file: !226, line: 1194, baseType: !39, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1377, file: !226, line: 1195, baseType: !41, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1377, file: !226, line: 1196, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !226, line: 2366, size: 576, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1397, !1401, !1405, !1409, !2564, !2565, !2566, !2568, !2569, !2570, !2572, !2573, !2574, !2575}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !226, line: 2367, baseType: !16, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1386, file: !226, line: 2368, baseType: !22, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1386, file: !226, line: 2376, baseType: !1391, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!22, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1396, line: 32, flags: DIFlagFwdDecl)
!1396 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1386, file: !226, line: 2377, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !226, line: 75, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1386, file: !226, line: 2378, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1140, !1385, !22, !16, !20}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1386, file: !226, line: 2380, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1376}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1386, file: !226, line: 2381, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !151, line: 402, size: 9216, align: 512, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1419, !2219, !2245, !2246, !2247, !2248, !2252, !2255, !2256, !2257, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2325, !2329, !2349, !2369, !2370, !2371, !2372, !2381, !2404, !2405, !2408, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2422, !2423, !2522, !2530, !2531, !2532, !2534, !2538, !2539, !2543, !2544, !2545, !2546, !2548, !2549, !2550, !2557, !2558, !2559, !2563}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1411, file: !151, line: 403, baseType: !150, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1411, file: !151, line: 406, baseType: !97, size: 128, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !151, line: 409, baseType: !1416, size: 448, offset: 192)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 56)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1411, file: !151, line: 417, baseType: !1420, size: 768, offset: 640)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !151, line: 45, size: 768, elements: !1421)
!1421 = !{!1422, !2213, !2214, !2215, !2218}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1420, file: !151, line: 46, baseType: !1423, size: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1424, line: 64, size: 512, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1425 = !{!1426, !1427, !1428, !1430, !1474, !2070, !2203, !2208, !2209, !2210, !2211, !2212}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1423, file: !1424, line: 65, baseType: !16, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1423, file: !1424, line: 66, baseType: !97, size: 128, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1423, file: !1424, line: 67, baseType: !1429, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1423, file: !1424, line: 68, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1424, line: 168, size: 768, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1432, file: !1424, line: 169, baseType: !97, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1432, file: !1424, line: 170, baseType: !59, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1432, file: !1424, line: 171, baseType: !1423, size: 512, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1432, file: !1424, line: 172, baseType: !1438, size: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1424, line: 133, size: 192, elements: !1441)
!1441 = !{!1442, !1449, !1454}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1440, file: !1424, line: 134, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!22, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1440, file: !1424, line: 135, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!16, !1447}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1440, file: !1424, line: 136, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!22, !1447, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1424, line: 125, size: 20736, elements: !1461)
!1461 = !{!1462, !1464, !1468, !1469, !1473}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1460, file: !1424, line: 126, baseType: !1463, size: 192)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 192, elements: !1062)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1460, file: !1424, line: 127, baseType: !1465, size: 4096, offset: 192)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 4096, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1460, file: !1424, line: 128, baseType: !22, size: 32, offset: 4288)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1460, file: !1424, line: 129, baseType: !1470, size: 16384, offset: 4320)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 2048)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1460, file: !1424, line: 130, baseType: !22, size: 32, offset: 20704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1423, file: !1424, line: 69, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1424, line: 116, size: 384, elements: !1478)
!1478 = !{!1479, !1483, !1502, !2032, !2062, !2066}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1477, file: !1424, line: 117, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1429}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1477, file: !1424, line: 118, baseType: !1484, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1487, line: 254, size: 128, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1488 = !{!1489, !1498}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1486, file: !1487, line: 255, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1327, !1429, !1493, !439}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1487, line: 30, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1494, file: !1487, line: 31, baseType: !16, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1494, file: !1487, line: 32, baseType: !24, size: 16, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1486, file: !1487, line: 256, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1327, !1429, !1493, !16, !35}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1477, file: !1424, line: 119, baseType: !1503, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1487, line: 84, size: 320, elements: !1507)
!1507 = !{!1508, !1509, !1513, !2028, !2030}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1506, file: !1487, line: 85, baseType: !16, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1506, file: !1487, line: 86, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!24, !1429, !1493, !22}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1506, file: !1487, line: 88, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!24, !1429, !1517, !22}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1487, line: 175, size: 512, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !2019, !2023, !2024}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1518, file: !1487, line: 176, baseType: !1494, size: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1518, file: !1487, line: 177, baseType: !35, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1518, file: !1487, line: 178, baseType: !20, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1518, file: !1487, line: 179, baseType: !1524, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !226, line: 472, size: 1536, align: 64, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !2011, !2012, !2013, !2016, !2017, !2018}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1528, file: !226, line: 473, baseType: !1175, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1528, file: !226, line: 474, baseType: !1092, size: 128, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1528, file: !226, line: 475, baseType: !354, size: 320, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1528, file: !226, line: 476, baseType: !274, size: 32, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1528, file: !226, line: 477, baseType: !49, size: 32, offset: 544)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1528, file: !226, line: 482, baseType: !874, size: 128, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1528, file: !226, line: 483, baseType: !39, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1528, file: !226, line: 484, baseType: !39, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1528, file: !226, line: 485, baseType: !1539, size: 64, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !226, line: 404, size: 1280, elements: !1542)
!1542 = !{!1543, !1836, !1906, !1910, !1914, !1920, !1926, !1930, !1935, !1939, !1943, !1947, !1975, !1979, !1983, !1987, !1992, !1996, !2003, !2007}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1541, file: !226, line: 405, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!22, !1547, !1834}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !122, line: 74, size: 512, align: 128, elements: !1549)
!1549 = !{!1550, !1551, !1828, !1833}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !122, line: 75, baseType: !39, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !122, line: 83, baseType: !1552, size: 320, offset: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !122, line: 83, size: 320, elements: !1553)
!1553 = !{!1554, !1575, !1589, !1593, !1827}
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !122, line: 84, baseType: !1555, size: 320)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !122, line: 84, size: 320, elements: !1556)
!1556 = !{!1557, !1568, !1569, !1574}
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !122, line: 90, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !122, line: 90, size: 128, elements: !1559)
!1559 = !{!1560, !1561, !1566, !1567}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1558, file: !122, line: 91, baseType: !97, size: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !122, line: 94, baseType: !1562, size: 128)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !122, line: 94, size: 128, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1562, file: !122, line: 96, baseType: !20, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1562, file: !122, line: 98, baseType: !7, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1558, file: !122, line: 102, baseType: !97, size: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1558, file: !122, line: 103, baseType: !97, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1555, file: !122, line: 106, baseType: !1527, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !122, line: 107, baseType: !1570, size: 64, offset: 192)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !122, line: 107, size: 64, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1570, file: !122, line: 108, baseType: !39, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1570, file: !122, line: 109, baseType: !39, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1555, file: !122, line: 117, baseType: !39, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !122, line: 119, baseType: !1576, size: 320)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !122, line: 119, size: 320, elements: !1577)
!1577 = !{!1578, !1579, !1582, !1583, !1584}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1576, file: !122, line: 124, baseType: !39, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1576, file: !122, line: 125, baseType: !1580, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !122, line: 125, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1576, file: !122, line: 126, baseType: !39, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1576, file: !122, line: 127, baseType: !39, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !122, line: 128, baseType: !1585, size: 64, offset: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !122, line: 128, size: 64, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1585, file: !122, line: 133, baseType: !39, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1585, file: !122, line: 138, baseType: !281, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !122, line: 141, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !122, line: 141, size: 64, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1590, file: !122, line: 142, baseType: !39, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !122, line: 144, baseType: !1594, size: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !122, line: 144, size: 128, elements: !1595)
!1595 = !{!1596, !1826}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1594, file: !122, line: 146, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !114, line: 126, size: 1216, elements: !1599)
!1599 = !{!1600, !1610, !1631, !1632, !1633, !1634, !1635, !1808, !1809, !1810}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1598, file: !114, line: 127, baseType: !1601, size: 384)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !114, line: 21, size: 384, elements: !1602)
!1602 = !{!1603, !1604, !1606, !1607, !1608, !1609}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1601, file: !114, line: 22, baseType: !39, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1601, file: !114, line: 23, baseType: !1605, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1601, file: !114, line: 24, baseType: !1605, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1601, file: !114, line: 25, baseType: !39, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1601, file: !114, line: 26, baseType: !39, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1601, file: !114, line: 27, baseType: !39, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1598, file: !114, line: 128, baseType: !1611, size: 128, offset: 384)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1612, line: 105, size: 128, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1611, file: !1612, line: 110, baseType: !39, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1611, file: !1612, line: 118, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1612, line: 95, size: 448, elements: !1618)
!1618 = !{!1619, !1620, !1626, !1627, !1628, !1629, !1630}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1617, file: !1612, line: 96, baseType: !281, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1617, file: !1612, line: 97, baseType: !1621, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1612, line: 60, baseType: !1623)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1617, file: !1612, line: 98, baseType: !1621, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1617, file: !1612, line: 99, baseType: !428, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1617, file: !1612, line: 100, baseType: !428, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1617, file: !1612, line: 101, baseType: !418, size: 128, align: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1617, file: !1612, line: 102, baseType: !1625, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1598, file: !114, line: 129, baseType: !608, size: 256, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1598, file: !114, line: 130, baseType: !113, size: 32, offset: 768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !114, line: 131, baseType: !7, size: 32, offset: 800)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1598, file: !114, line: 132, baseType: !39, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1598, file: !114, line: 133, baseType: !1636, size: 64, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !114, line: 77, size: 192, elements: !1639)
!1639 = !{!1640, !1644, !1804}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1638, file: !114, line: 83, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1547}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1638, file: !114, line: 89, baseType: !1645, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !122, line: 1184, baseType: !7)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1651, line: 512, size: 896, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1652 = !{!1653, !1771, !1772, !1779, !1786, !1796, !1797, !1798, !1800, !1802}
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1651, line: 513, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1651, line: 513, size: 320, elements: !1655)
!1655 = !{!1656, !1767, !1768, !1769, !1770}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1654, file: !1651, line: 514, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !122, line: 625, size: 1344, elements: !1659)
!1659 = !{!1660, !1669, !1670, !1678, !1685, !1686, !1691, !1692, !1697, !1698, !1701, !1760, !1761, !1762, !1763, !1764, !1765}
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !122, line: 628, baseType: !1661, size: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !122, line: 628, size: 128, elements: !1662)
!1662 = !{!1663, !1668}
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !122, line: 629, baseType: !1664, size: 128)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !122, line: 629, size: 128, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1664, file: !122, line: 631, baseType: !39, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1664, file: !122, line: 632, baseType: !39, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1661, file: !122, line: 635, baseType: !418, size: 128, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1658, file: !122, line: 639, baseType: !988, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1658, file: !122, line: 640, baseType: !1671, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1672, line: 297, baseType: !1673)
!1672 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1672, line: 297, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1673, file: !1672, line: 297, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1677, line: 19, baseType: !39)
!1677 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !122, line: 646, baseType: !1679, size: 64, offset: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !122, line: 646, size: 64, elements: !1680)
!1680 = !{!1681, !1684}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1679, file: !122, line: 647, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !122, line: 542, baseType: !39)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1679, file: !122, line: 648, baseType: !1683, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1658, file: !122, line: 666, baseType: !22, size: 32, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1658, file: !122, line: 667, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !122, line: 579, size: 320, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1688, file: !122, line: 580, baseType: !354, size: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1658, file: !122, line: 670, baseType: !428, size: 8, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1658, file: !122, line: 681, baseType: !1693, size: 256, offset: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !122, line: 678, size: 256, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1693, file: !122, line: 679, baseType: !346, size: 192, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1693, file: !122, line: 680, baseType: !39, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1658, file: !122, line: 689, baseType: !97, size: 128, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1658, file: !122, line: 691, baseType: !1699, size: 64, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !122, line: 691, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1658, file: !122, line: 694, baseType: !1702, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1651, line: 563, size: 1024, elements: !1705)
!1705 = !{!1706, !1710, !1711, !1715, !1719, !1723, !1724, !1728, !1732, !1736, !1737, !1738, !1742, !1746, !1752, !1756}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1704, file: !1651, line: 564, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !1657}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1704, file: !1651, line: 569, baseType: !1707, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1704, file: !1651, line: 571, baseType: !1712, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!22, !1657, !39}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1704, file: !1651, line: 572, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!22, !1657}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1704, file: !1651, line: 578, baseType: !1720, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!22, !1657, !39, !39, !39}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1704, file: !1651, line: 580, baseType: !1645, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1704, file: !1651, line: 581, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1648, !1649, !7}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1704, file: !1651, line: 582, baseType: !1729, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1648, !1649, !39, !39}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1704, file: !1651, line: 584, baseType: !1733, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!39, !1657}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1704, file: !1651, line: 588, baseType: !1645, size: 64, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1704, file: !1651, line: 591, baseType: !1645, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1704, file: !1651, line: 597, baseType: !1739, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!22, !1657, !39, !20, !22, !22}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1704, file: !1651, line: 603, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!16, !1657}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1704, file: !1651, line: 613, baseType: !1747, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!22, !1657, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !122, line: 717, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1704, file: !1651, line: 625, baseType: !1753, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1750, !1657, !39}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1704, file: !1651, line: 633, baseType: !1757, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1547, !1657, !39}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1658, file: !122, line: 697, baseType: !39, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1658, file: !122, line: 699, baseType: !1016, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1658, file: !122, line: 700, baseType: !20, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1658, file: !122, line: 711, baseType: !281, size: 64, offset: 1216)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1658, file: !122, line: 717, baseType: !1750, size: 64, offset: 1280)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1658, file: !122, line: 722, baseType: !1766, offset: 1344)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !122, line: 570, elements: !1009)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1654, file: !1651, line: 515, baseType: !274, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1654, file: !1651, line: 516, baseType: !39, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1654, file: !1651, line: 517, baseType: !39, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1654, file: !1651, line: 518, baseType: !39, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !1651, line: 520, baseType: !121, size: 32, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1650, file: !1651, line: 522, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1677, line: 22, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 22, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1775, file: !1677, line: 22, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1677, line: 15, baseType: !39)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1650, file: !1651, line: 524, baseType: !1780, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1672, line: 372, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1672, line: 372, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1782, file: !1672, line: 372, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1677, line: 16, baseType: !39)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1651, line: 527, baseType: !1787, size: 64, offset: 512)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1651, line: 527, size: 64, elements: !1788)
!1788 = !{!1789, !1795}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1787, file: !1651, line: 528, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1677, line: 21, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1677, line: 21, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1791, file: !1677, line: 21, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1677, line: 14, baseType: !39)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1787, file: !1651, line: 529, baseType: !1774, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1650, file: !1651, line: 534, baseType: !1547, size: 64, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1650, file: !1651, line: 535, baseType: !1547, size: 64, offset: 640)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1650, file: !1651, line: 541, baseType: !1799, size: 64, offset: 704)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1650, file: !1651, line: 545, baseType: !1801, size: 64, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1650, file: !1651, line: 549, baseType: !1803, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1672, line: 520, baseType: !1547)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1638, file: !114, line: 100, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!22, !1597, !39, !39, !22}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1598, file: !114, line: 134, baseType: !20, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1598, file: !114, line: 135, baseType: !22, size: 32, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !114, line: 136, baseType: !1811, size: 128, offset: 1088)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !114, line: 136, size: 128, elements: !1812)
!1812 = !{!1813, !1819}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1811, file: !114, line: 137, baseType: !1814, size: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1815, line: 6, size: 128, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1814, file: !1815, line: 7, baseType: !317, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1814, file: !1815, line: 8, baseType: !317, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !114, line: 138, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1811, file: !114, line: 138, elements: !1821)
!1821 = !{!1822, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1820, file: !114, line: 138, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1820, file: !114, line: 138, elements: !1009)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1820, file: !114, line: 138, baseType: !1825)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, elements: !685)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1594, file: !122, line: 147, baseType: !20, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1552, file: !122, line: 161, baseType: !418, size: 128, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !122, line: 164, baseType: !1829, size: 32, offset: 384)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !122, line: 164, size: 32, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1829, file: !122, line: 169, baseType: !49, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1829, file: !122, line: 177, baseType: !7, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1548, file: !122, line: 181, baseType: !49, size: 32, offset: 416)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !226, line: 309, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1541, file: !226, line: 406, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!22, !1016, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !122, line: 293, size: 1536, elements: !1842)
!1842 = !{!1843, !1873, !1887}
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !122, line: 295, baseType: !1844, size: 512)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !122, line: 295, size: 512, elements: !1845)
!1845 = !{!1846, !1872}
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !122, line: 296, baseType: !1847, size: 448)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !122, line: 296, size: 448, elements: !1848)
!1848 = !{!1849, !1850, !1859, !1860, !1861, !1870, !1871}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !122, line: 298, baseType: !39, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !122, line: 299, baseType: !1851, size: 128, offset: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !122, line: 299, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1851, file: !122, line: 300, baseType: !97, size: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1851, file: !122, line: 302, baseType: !1855, size: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !122, line: 302, size: 128, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1855, file: !122, line: 303, baseType: !20, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1855, file: !122, line: 305, baseType: !7, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1847, file: !122, line: 310, baseType: !1527, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1847, file: !122, line: 311, baseType: !39, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !122, line: 312, baseType: !1862, size: 64, offset: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !122, line: 312, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1862, file: !122, line: 313, baseType: !20, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1862, file: !122, line: 314, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !122, line: 257, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 255, size: 64, elements: !1868)
!1868 = !{!1869}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1867, file: !122, line: 256, baseType: !39, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1847, file: !122, line: 316, baseType: !49, size: 32, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1847, file: !122, line: 317, baseType: !49, size: 32, offset: 416)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1844, file: !122, line: 323, baseType: !1548, size: 512, align: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !122, line: 325, baseType: !1874, size: 512, offset: 512)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !122, line: 325, size: 512, elements: !1875)
!1875 = !{!1876, !1886}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !122, line: 326, baseType: !1877, size: 320)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !122, line: 326, size: 320, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1877, file: !122, line: 327, baseType: !39, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1877, file: !122, line: 328, baseType: !39, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1877, file: !122, line: 329, baseType: !39, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1877, file: !122, line: 331, baseType: !49, size: 32, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1877, file: !122, line: 332, baseType: !49, size: 32, offset: 224)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1877, file: !122, line: 333, baseType: !49, size: 32, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1877, file: !122, line: 335, baseType: !7, size: 32, offset: 288)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1874, file: !122, line: 339, baseType: !1548, size: 512, align: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !122, line: 341, baseType: !1888, size: 512, offset: 1024)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !122, line: 341, size: 512, elements: !1889)
!1889 = !{!1890, !1899, !1905}
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !122, line: 342, baseType: !1891, size: 384)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !122, line: 342, size: 384, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1891, file: !122, line: 343, baseType: !39, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1891, file: !122, line: 344, baseType: !39, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1891, file: !122, line: 346, baseType: !20, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1891, file: !122, line: 347, baseType: !20, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1891, file: !122, line: 348, baseType: !20, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1891, file: !122, line: 349, baseType: !20, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !122, line: 352, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1888, file: !122, line: 352, size: 256, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1900, file: !122, line: 353, baseType: !39, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1900, file: !122, line: 354, baseType: !39, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1900, file: !122, line: 356, baseType: !97, size: 128, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1888, file: !122, line: 359, baseType: !1548, size: 512, align: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1541, file: !226, line: 409, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!22, !1527, !1834}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1541, file: !226, line: 412, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!428, !1527, !1840}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1541, file: !226, line: 414, baseType: !1915, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !226, line: 310, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1541, file: !226, line: 416, baseType: !1921, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!22, !1016, !1527, !41, !7, !1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1541, file: !226, line: 419, baseType: !1927, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!22, !1016, !1527, !41, !7, !7, !1547, !20}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1541, file: !226, line: 424, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1934, !1527, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !317)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1541, file: !226, line: 425, baseType: !1936, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1840, !35, !35}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1541, file: !226, line: 426, baseType: !1940, size: 64, offset: 576)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!428, !1840, !274}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1541, file: !226, line: 427, baseType: !1944, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1840}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1541, file: !226, line: 428, baseType: !1948, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1327, !1951, !1973}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !226, line: 373, size: 384, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1960, !1961, !1962, !1963}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1952, file: !226, line: 374, baseType: !1016, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1952, file: !226, line: 375, baseType: !41, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1952, file: !226, line: 376, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1951, !673}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1952, file: !226, line: 377, baseType: !20, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1952, file: !226, line: 378, baseType: !22, size: 32, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1952, file: !226, line: 379, baseType: !93, size: 16, offset: 288)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !226, line: 380, baseType: !1964, size: 64, offset: 320)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !226, line: 380, size: 64, elements: !1965)
!1965 = !{!1966, !1969}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1964, file: !226, line: 386, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !226, line: 386, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1964, file: !226, line: 395, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1327, !20}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !226, line: 69, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1541, file: !226, line: 433, baseType: !1976, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!22, !1527, !1840, !1840, !137}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1541, file: !226, line: 435, baseType: !1980, size: 64, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!22, !1840}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1541, file: !226, line: 436, baseType: !1984, size: 64, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!428, !1840, !35, !35}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1541, file: !226, line: 438, baseType: !1988, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1840, !1991, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1541, file: !226, line: 439, baseType: !1993, size: 64, offset: 1024)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!22, !1527, !1547}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1541, file: !226, line: 442, baseType: !1997, size: 64, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!22, !2000, !1016, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !226, line: 66, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1541, file: !226, line: 444, baseType: !2004, size: 64, offset: 1152)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1016}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1541, file: !226, line: 445, baseType: !2008, size: 64, offset: 1216)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!22, !1951, !1973}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !226, line: 486, baseType: !39, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1528, file: !226, line: 487, baseType: !354, size: 320, offset: 960)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1528, file: !226, line: 488, baseType: !2014, size: 32, offset: 1280)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2015, line: 8, baseType: !384)
!2015 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1528, file: !226, line: 489, baseType: !59, size: 32, offset: 1312)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1528, file: !226, line: 490, baseType: !97, size: 128, offset: 1344)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1528, file: !226, line: 491, baseType: !20, size: 64, offset: 1472)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1518, file: !1487, line: 180, baseType: !2020, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!1327, !1016, !1429, !1517, !439, !41, !35}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1518, file: !1487, line: 182, baseType: !2020, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1518, file: !1487, line: 184, baseType: !2025, size: 64, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!22, !1016, !1429, !1517, !1657}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1506, file: !1487, line: 90, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1506, file: !1487, line: 91, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1477, file: !1424, line: 120, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2036, !1447}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !145, line: 39, size: 384, elements: !2039)
!2039 = !{!2040, !2041, !2045, !2049, !2057, !2061}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2038, file: !145, line: 40, baseType: !144, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2038, file: !145, line: 41, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!428}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2038, file: !145, line: 42, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!20}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2038, file: !145, line: 43, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!2053, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !145, line: 19, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2038, file: !145, line: 44, baseType: !2058, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2053}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2038, file: !145, line: 45, baseType: !1206, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1477, file: !1424, line: 121, baseType: !2063, size: 64, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!2053, !1447}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1477, file: !1424, line: 122, baseType: !2067, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !1447, !633, !634}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1423, file: !1424, line: 70, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1396, line: 190, size: 1152, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2195, !2196, !2197, !2198, !2199, !2202}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2072, file: !1396, line: 191, baseType: !49, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2072, file: !1396, line: 192, baseType: !49, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2072, file: !1396, line: 202, baseType: !2071, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2072, file: !1396, line: 203, baseType: !16, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2072, file: !1396, line: 205, baseType: !346, size: 192, align: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2072, file: !1396, line: 207, baseType: !2053, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2072, file: !1396, line: 208, baseType: !7, size: 32, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2072, file: !1396, line: 209, baseType: !2082, size: 256, offset: 512)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2072, file: !1396, line: 209, size: 256, elements: !2083)
!2083 = !{!2084, !2093, !2097}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2082, file: !1396, line: 210, baseType: !2085, size: 256)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1396, line: 153, size: 256, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2092}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2085, file: !1396, line: 154, baseType: !39, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2085, file: !1396, line: 156, baseType: !653, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2085, file: !1396, line: 162, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1396, line: 162, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2085, file: !1396, line: 167, baseType: !39, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2082, file: !1396, line: 211, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1396, line: 170, size: 64, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2094, file: !1396, line: 171, baseType: !2071, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2082, file: !1396, line: 212, baseType: !2098, size: 256)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1396, line: 174, size: 256, elements: !2099)
!2099 = !{!2100, !2190, !2193, !2194}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2098, file: !1396, line: 175, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1396, line: 271, size: 768, elements: !2104)
!2104 = !{!2105, !2163, !2167, !2168, !2169, !2170, !2171, !2175, !2176, !2177, !2178, !2186}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2103, file: !1396, line: 276, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!22, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1396, line: 251, size: 1216, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2110, file: !1396, line: 253, baseType: !2071, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2110, file: !1396, line: 254, baseType: !1016, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2110, file: !1396, line: 255, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2117, line: 17, size: 960, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2148, !2149, !2152}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2116, file: !2117, line: 18, baseType: !439, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2116, file: !2117, line: 19, baseType: !35, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2116, file: !2117, line: 20, baseType: !35, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2116, file: !2117, line: 21, baseType: !35, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2116, file: !2117, line: 22, baseType: !35, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2116, file: !2117, line: 23, baseType: !41, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2116, file: !2117, line: 24, baseType: !41, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2116, file: !2117, line: 25, baseType: !1030, size: 256, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2116, file: !2117, line: 26, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2117, line: 32, size: 256, elements: !2131)
!2131 = !{!2132, !2136, !2140, !2144}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2130, file: !2117, line: 33, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!20, !2115, !40}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2130, file: !2117, line: 34, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2115, !20}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2130, file: !2117, line: 35, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!20, !2115, !20, !40}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2130, file: !2117, line: 36, baseType: !2145, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!22, !2115, !20}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2116, file: !2117, line: 27, baseType: !22, size: 32, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2116, file: !2117, line: 28, baseType: !2150, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2116, file: !2117, line: 29, baseType: !20, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2110, file: !1396, line: 256, baseType: !20, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2110, file: !1396, line: 259, baseType: !1030, size: 256, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2110, file: !1396, line: 260, baseType: !1030, size: 256, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2110, file: !1396, line: 261, baseType: !22, size: 32, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2110, file: !1396, line: 262, baseType: !97, size: 128, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2110, file: !1396, line: 263, baseType: !439, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2110, file: !1396, line: 265, baseType: !35, size: 64, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2110, file: !1396, line: 266, baseType: !428, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2110, file: !1396, line: 267, baseType: !428, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2110, file: !1396, line: 268, baseType: !1702, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2103, file: !1396, line: 277, baseType: !2164, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2109}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2103, file: !1396, line: 290, baseType: !2145, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2103, file: !1396, line: 292, baseType: !2133, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2103, file: !1396, line: 293, baseType: !2141, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2103, file: !1396, line: 294, baseType: !2137, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2103, file: !1396, line: 296, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!1327, !2109, !439, !35, !41}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2103, file: !1396, line: 306, baseType: !35, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2103, file: !1396, line: 313, baseType: !428, size: 8, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2103, file: !1396, line: 314, baseType: !2172, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2103, file: !1396, line: 317, baseType: !2179, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !2109, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2183, line: 59, baseType: !7)
!2183 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1396, line: 31, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2103, file: !1396, line: 320, baseType: !2187, size: 64, offset: 704)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!22, !2109, !1657}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2098, file: !1396, line: 176, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1396, line: 35, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !1396, line: 177, baseType: !41, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2098, file: !1396, line: 178, baseType: !2071, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2072, file: !1396, line: 215, baseType: !20, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2072, file: !1396, line: 221, baseType: !317, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2072, file: !1396, line: 223, baseType: !26, size: 16, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2072, file: !1396, line: 224, baseType: !24, size: 16, offset: 912)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2072, file: !1396, line: 225, baseType: !2200, size: 64, offset: 960)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1396, line: 36, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2072, file: !1396, line: 227, baseType: !418, size: 128, align: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1423, file: !1424, line: 71, baseType: !2204, size: 32, offset: 448)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2205, line: 19, size: 32, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2206 = !{!2207}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2204, file: !2205, line: 20, baseType: !331, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1423, file: !1424, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1423, file: !1424, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1423, file: !1424, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1423, file: !1424, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1423, file: !1424, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1420, file: !151, line: 47, baseType: !1410, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1420, file: !151, line: 48, baseType: !1429, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1420, file: !151, line: 49, baseType: !2216, size: 64, offset: 640)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !151, line: 49, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1420, file: !151, line: 50, baseType: !607, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1411, file: !151, line: 418, baseType: !2220, size: 64, offset: 1408)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !151, line: 53, size: 448, elements: !2222)
!2222 = !{!2223, !2224, !2229, !2233, !2237, !2241}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2221, file: !151, line: 54, baseType: !1494, size: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2221, file: !151, line: 55, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!1327, !2220, !2228, !439}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2221, file: !151, line: 57, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!1327, !2220, !2228, !16, !35}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2221, file: !151, line: 59, baseType: !2234, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !1410, !16}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2221, file: !151, line: 60, baseType: !2238, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!22, !1410}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2221, file: !151, line: 61, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !1410}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1411, file: !151, line: 419, baseType: !16, size: 64, offset: 1472)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1411, file: !151, line: 420, baseType: !16, size: 64, offset: 1536)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1411, file: !151, line: 421, baseType: !1429, size: 64, offset: 1600)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1411, file: !151, line: 424, baseType: !2249, size: 64, offset: 1664)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2251)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !151, line: 424, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1411, file: !151, line: 425, baseType: !2253, size: 64, offset: 1728)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1411, file: !151, line: 426, baseType: !7, size: 32, offset: 1792)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1411, file: !151, line: 435, baseType: !1030, size: 256, offset: 1856)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1411, file: !151, line: 437, baseType: !2258, size: 64, offset: 2112)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2260, line: 69, size: 320, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2261 = !{!2262, !2263, !2264, !2281, !2283, !2287, !2288}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !2260, line: 70, baseType: !16, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2259, file: !2260, line: 71, baseType: !1410, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2259, file: !2260, line: 72, baseType: !2265, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2260, line: 47, size: 256, elements: !2268)
!2268 = !{!2269, !2270, !2276, !2280}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2260, line: 49, baseType: !7, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2267, file: !2260, line: 51, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!22, !16, !2274}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2267, file: !2260, line: 53, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!22, !439, !2274}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2267, file: !2260, line: 55, baseType: !1206, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2259, file: !2260, line: 73, baseType: !2282, size: 16, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2259, file: !2260, line: 74, baseType: !2284, size: 8, offset: 208)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2285)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2286)
!2286 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2259, file: !2260, line: 75, baseType: !83, size: 8, offset: 216)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !2260, line: 76, baseType: !2289, size: 64, offset: 256)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !2260, line: 76, size: 64, elements: !2290)
!2290 = !{!2291, !2292, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2289, file: !2260, line: 77, baseType: !20, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2289, file: !2260, line: 78, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2260, line: 86, size: 128, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2295, file: !2260, line: 87, baseType: !7, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2295, file: !2260, line: 88, baseType: !439, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2289, file: !2260, line: 79, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2260, line: 92, size: 256, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2308, !2309}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2302, file: !2260, line: 94, baseType: !7, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2302, file: !2260, line: 95, baseType: !7, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2302, file: !2260, line: 96, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2302, file: !2260, line: 97, baseType: !2265, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2302, file: !2260, line: 98, baseType: !20, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1411, file: !151, line: 438, baseType: !7, size: 32, offset: 2176)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1411, file: !151, line: 441, baseType: !7, size: 32, offset: 2208)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1411, file: !151, line: 442, baseType: !2249, size: 64, offset: 2240)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1411, file: !151, line: 443, baseType: !2253, size: 64, offset: 2304)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1411, file: !151, line: 444, baseType: !428, size: 8, offset: 2368)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1411, file: !151, line: 451, baseType: !428, size: 8, offset: 2376)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1411, file: !151, line: 454, baseType: !7, size: 32, offset: 2400)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1411, file: !151, line: 455, baseType: !2318, size: 64, offset: 2432)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2320, line: 23, size: 96, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2321 = !{!2322, !2323, !2324}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2319, file: !2320, line: 24, baseType: !22, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2319, file: !2320, line: 24, baseType: !22, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2319, file: !2320, line: 24, baseType: !22, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1411, file: !151, line: 458, baseType: !2326, size: 64, offset: 2496)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!22}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1411, file: !151, line: 460, baseType: !2330, size: 4032, align: 512, offset: 2560)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2331, size: 4032, elements: !2347)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !151, line: 362, size: 576, elements: !2332)
!2332 = !{!2333, !2334, !2335}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2331, file: !151, line: 363, baseType: !20, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2331, file: !151, line: 364, baseType: !7, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2331, file: !151, line: 367, baseType: !2336, size: 448, offset: 128)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !151, line: 319, size: 448, elements: !2337)
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2336, file: !151, line: 320, baseType: !1410, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2336, file: !151, line: 321, baseType: !2340, size: 384, offset: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2341, line: 40, size: 384, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2340, file: !2341, line: 41, baseType: !2344, size: 384, align: 64)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 384, align: 64, elements: !2345)
!2345 = !{!2346}
!2346 = !DISubrange(count: 2)
!2347 = !{!2348}
!2348 = !DISubrange(count: 7)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1411, file: !151, line: 463, baseType: !2350, size: 192, offset: 6592)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2351, line: 8, size: 192, elements: !2352)
!2351 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2352 = !{!2353, !2354, !2356}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2350, file: !2351, line: 10, baseType: !7, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2350, file: !2351, line: 11, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2350, file: !2351, line: 12, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2359, line: 59, size: 48, elements: !2360)
!2359 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2360 = !{!2361, !2364, !2365, !2366, !2367, !2368}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2358, file: !2359, line: 60, baseType: !2362, size: 16)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !389)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2358, file: !2359, line: 61, baseType: !2362, size: 16, offset: 16)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2358, file: !2359, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2358, file: !2359, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2358, file: !2359, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2358, file: !2359, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1411, file: !151, line: 465, baseType: !39, size: 64, offset: 6784)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1411, file: !151, line: 469, baseType: !7, size: 32, offset: 6848)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1411, file: !151, line: 470, baseType: !97, size: 128, offset: 6912)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1411, file: !151, line: 471, baseType: !2373, size: 64, offset: 7040)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2375, line: 33, size: 96, elements: !2376)
!2375 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2374, file: !2375, line: 37, baseType: !22, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2374, file: !2375, line: 43, baseType: !22, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2374, file: !2375, line: 45, baseType: !26, size: 16, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !2375, line: 47, baseType: !26, size: 16, offset: 80)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1411, file: !151, line: 476, baseType: !2382, size: 64, offset: 7104)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !151, line: 378, size: 256, elements: !2384)
!2384 = !{!2385, !2401, !2402, !2403}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2383, file: !151, line: 379, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2388, line: 204, baseType: !2389)
!2388 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2388, line: 197, size: 192, elements: !2390)
!2390 = !{!2391, !2393, !2394, !2395, !2397, !2399}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2389, file: !2388, line: 198, baseType: !2392, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2388, line: 21, baseType: !385)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2389, file: !2388, line: 199, baseType: !87, size: 8, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2389, file: !2388, line: 200, baseType: !87, size: 8, offset: 40)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2389, file: !2388, line: 201, baseType: !2396, size: 16, offset: 48)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2388, line: 17, baseType: !94)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2389, file: !2388, line: 202, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2388, line: 16, baseType: !318)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2389, file: !2388, line: 203, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2388, line: 22, baseType: !318)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2383, file: !151, line: 380, baseType: !7, size: 32, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2383, file: !151, line: 381, baseType: !439, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2383, file: !151, line: 382, baseType: !439, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1411, file: !151, line: 477, baseType: !2383, size: 256, offset: 7168)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1411, file: !151, line: 480, baseType: !2406, size: 64, offset: 7424)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !151, line: 480, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1411, file: !151, line: 483, baseType: !2409, size: 64, offset: 7488)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !151, line: 483, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1411, file: !151, line: 488, baseType: !439, size: 64, offset: 7552)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1411, file: !151, line: 492, baseType: !20, size: 64, offset: 7616)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1411, file: !151, line: 493, baseType: !7, size: 32, offset: 7680)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1411, file: !151, line: 495, baseType: !20, size: 64, offset: 7744)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1411, file: !151, line: 496, baseType: !7, size: 32, offset: 7808)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1411, file: !151, line: 499, baseType: !7, size: 32, offset: 7840)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1411, file: !151, line: 500, baseType: !2418, size: 64, offset: 7872)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2420, line: 45, baseType: !2421)
!2420 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1411, file: !151, line: 503, baseType: !7, size: 32, offset: 7936)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1411, file: !151, line: 504, baseType: !2424, size: 64, offset: 8000)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2427, line: 96, size: 192, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2428 = !{!2429, !2430, !2483, !2486}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2426, file: !2427, line: 97, baseType: !7, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2426, file: !2427, line: 98, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2427, line: 24, size: 3072, elements: !2433)
!2433 = !{!2434, !2436, !2437, !2438, !2439, !2452, !2453, !2454, !2455, !2467, !2468, !2469, !2480, !2481, !2482}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2432, file: !2427, line: 26, baseType: !2435, size: 128)
!2435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !2345)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2432, file: !2427, line: 27, baseType: !2435, size: 128, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2432, file: !2427, line: 28, baseType: !22, size: 32, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2432, file: !2427, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2432, file: !2427, line: 32, baseType: !2440, size: 960, offset: 576)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2441, line: 206, size: 960, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2442 = !{!2443, !2444, !2447, !2449, !2450, !2451}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2440, file: !2441, line: 207, baseType: !421, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2440, file: !2441, line: 208, baseType: !2445, size: 256, offset: 64)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2446, size: 256, elements: !449)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2440, file: !2441, line: 209, baseType: !2448, size: 256, offset: 320)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !449)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2440, file: !2441, line: 213, baseType: !673, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2440, file: !2441, line: 215, baseType: !675, size: 256, offset: 640)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !2441, line: 216, baseType: !83, size: 8, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2432, file: !2427, line: 33, baseType: !39, size: 64, offset: 1536)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2432, file: !2427, line: 34, baseType: !39, size: 64, offset: 1600)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2432, file: !2427, line: 35, baseType: !428, size: 8, offset: 1664)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2432, file: !2427, line: 36, baseType: !2456, size: 320, offset: 1728)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2457, line: 11, size: 320, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2458 = !{!2459, !2460, !2461, !2466}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2456, file: !2457, line: 16, baseType: !500, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2456, file: !2457, line: 17, baseType: !39, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2456, file: !2457, line: 18, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !2457, line: 19, baseType: !384, size: 32, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2432, file: !2427, line: 37, baseType: !569, size: 256, offset: 2048)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2432, file: !2427, line: 38, baseType: !418, size: 128, align: 64, offset: 2304)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2432, file: !2427, line: 39, baseType: !2470, size: 64, offset: 2432)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2427, line: 49, size: 768, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2471, file: !2427, line: 50, baseType: !59, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2471, file: !2427, line: 51, baseType: !2448, size: 256, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2471, file: !2427, line: 53, baseType: !2448, size: 256, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2471, file: !2427, line: 54, baseType: !39, size: 64, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2471, file: !2427, line: 55, baseType: !2470, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2471, file: !2427, line: 56, baseType: !22, size: 32, offset: 704)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2471, file: !2427, line: 57, baseType: !22, size: 32, offset: 736)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2432, file: !2427, line: 40, baseType: !39, size: 64, offset: 2496)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2432, file: !2427, line: 42, baseType: !22, size: 32, offset: 2560)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2432, file: !2427, line: 43, baseType: !2425, size: 64, offset: 2624)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2426, file: !2427, line: 99, baseType: !2484, offset: 128)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2485, line: 211, elements: !1009)
!2485 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2426, file: !2427, line: 100, baseType: !2487, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2427, line: 63, size: 3008, elements: !2489)
!2489 = !{!2490, !2491, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2521}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2488, file: !2427, line: 64, baseType: !2470, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2488, file: !2427, line: 65, baseType: !2492, size: 192, offset: 64)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2470, size: 192, elements: !1062)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2488, file: !2427, line: 67, baseType: !22, size: 32, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2488, file: !2427, line: 68, baseType: !1030, size: 256, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2488, file: !2427, line: 69, baseType: !59, size: 32, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2488, file: !2427, line: 70, baseType: !1030, size: 256, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2488, file: !2427, line: 71, baseType: !39, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2488, file: !2427, line: 72, baseType: !39, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2488, file: !2427, line: 73, baseType: !39, size: 64, offset: 1024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2488, file: !2427, line: 74, baseType: !39, size: 64, offset: 1088)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2488, file: !2427, line: 75, baseType: !39, size: 64, offset: 1152)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2488, file: !2427, line: 76, baseType: !39, size: 64, offset: 1216)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2488, file: !2427, line: 77, baseType: !39, size: 64, offset: 1280)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2488, file: !2427, line: 78, baseType: !39, size: 64, offset: 1344)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2488, file: !2427, line: 79, baseType: !428, size: 8, offset: 1408)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2488, file: !2427, line: 80, baseType: !39, size: 64, offset: 1472)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2488, file: !2427, line: 81, baseType: !1030, size: 256, offset: 1536)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2488, file: !2427, line: 82, baseType: !608, size: 256, offset: 1792)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2488, file: !2427, line: 84, baseType: !49, size: 32, offset: 2048)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2488, file: !2427, line: 87, baseType: !39, size: 64, offset: 2112)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2488, file: !2427, line: 88, baseType: !39, size: 64, offset: 2176)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2488, file: !2427, line: 89, baseType: !2513, size: 704, offset: 2240)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !570, line: 111, size: 704, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2520}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2513, file: !570, line: 112, baseType: !569, size: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2513, file: !570, line: 113, baseType: !2456, size: 320, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2513, file: !570, line: 116, baseType: !2518, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !570, line: 18, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2513, file: !570, line: 117, baseType: !22, size: 32, offset: 640)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2488, file: !2427, line: 90, baseType: !2425, size: 64, offset: 2944)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1411, file: !151, line: 515, baseType: !2523, size: 64, offset: 8064)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2525, line: 117, size: 128, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2524, file: !2525, line: 118, baseType: !339, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2524, file: !2525, line: 119, baseType: !339, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2524, file: !2525, line: 120, baseType: !673, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1411, file: !151, line: 516, baseType: !7, size: 32, offset: 8128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1411, file: !151, line: 519, baseType: !7, size: 32, offset: 8160)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1411, file: !151, line: 520, baseType: !2533, size: 64, offset: 8192)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1411, file: !151, line: 523, baseType: !2535, size: 64, offset: 8256)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !151, line: 523, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1411, file: !151, line: 524, baseType: !7, size: 32, offset: 8320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1411, file: !151, line: 525, baseType: !2540, size: 64, offset: 8384)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !151, line: 525, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1411, file: !151, line: 526, baseType: !7, size: 32, offset: 8448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1411, file: !151, line: 533, baseType: !20, size: 64, offset: 8512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1411, file: !151, line: 534, baseType: !7, size: 32, offset: 8576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1411, file: !151, line: 535, baseType: !2547, size: 64, offset: 8640)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1411, file: !151, line: 536, baseType: !7, size: 32, offset: 8704)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1411, file: !151, line: 539, baseType: !22, size: 32, offset: 8736)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1411, file: !151, line: 540, baseType: !2551, size: 64, offset: 8768)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2553, line: 32, size: 64, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2552, file: !2553, line: 33, baseType: !339, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2552, file: !2553, line: 34, baseType: !339, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1411, file: !151, line: 563, baseType: !97, size: 128, offset: 8832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1411, file: !151, line: 565, baseType: !97, size: 128, offset: 8960)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1411, file: !151, line: 568, baseType: !2560, size: 64, offset: 9088)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1411, file: !151, line: 570, baseType: !49, size: 32, offset: 9152)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1386, file: !226, line: 2382, baseType: !1385, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1386, file: !226, line: 2383, baseType: !649, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1386, file: !226, line: 2385, baseType: !2567, offset: 576)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2485, line: 206, elements: !1009)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1386, file: !226, line: 2386, baseType: !2567, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1386, file: !226, line: 2387, baseType: !2567, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1386, file: !226, line: 2388, baseType: !2571, offset: 576)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2567, elements: !1062)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1386, file: !226, line: 2390, baseType: !2567, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1386, file: !226, line: 2391, baseType: !2567, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1386, file: !226, line: 2392, baseType: !2567, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1386, file: !226, line: 2393, baseType: !2567, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1377, file: !226, line: 1197, baseType: !2577, size: 64, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !226, line: 2057, size: 1664, elements: !2580)
!2580 = !{!2581, !2585, !2589, !2590, !2594, !2598, !2602, !2603, !2604, !2608, !2612, !2616, !2617, !2618, !2624, !2628, !2629, !2633, !2634, !2635, !2636, !2640, !2644, !2691, !2706, !2707}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2579, file: !226, line: 2058, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!1175, !1376}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2579, file: !226, line: 2059, baseType: !2586, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !1175}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2579, file: !226, line: 2060, baseType: !2586, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2579, file: !226, line: 2062, baseType: !2591, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !1175, !22}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2579, file: !226, line: 2063, baseType: !2595, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!22, !1175, !1834}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2579, file: !226, line: 2064, baseType: !2599, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!22, !1175}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2579, file: !226, line: 2065, baseType: !2586, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2579, file: !226, line: 2066, baseType: !1406, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2579, file: !226, line: 2067, baseType: !2605, size: 64, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!22, !1376, !22}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2579, file: !226, line: 2068, baseType: !2609, size: 64, offset: 576)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!22, !1376, !225}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2579, file: !226, line: 2069, baseType: !2613, size: 64, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!22, !1376}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2579, file: !226, line: 2070, baseType: !2609, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2579, file: !226, line: 2071, baseType: !2613, size: 64, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2579, file: !226, line: 2072, baseType: !2619, size: 64, offset: 832)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!22, !1140, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !226, line: 62, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2579, file: !226, line: 2073, baseType: !2625, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!22, !1376, !2355, !439}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2579, file: !226, line: 2074, baseType: !1406, size: 64, offset: 960)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2579, file: !226, line: 2076, baseType: !2630, size: 64, offset: 1024)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!22, !2115, !1140}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2579, file: !226, line: 2077, baseType: !2630, size: 64, offset: 1088)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2579, file: !226, line: 2078, baseType: !2630, size: 64, offset: 1152)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2579, file: !226, line: 2079, baseType: !2630, size: 64, offset: 1216)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2579, file: !226, line: 2081, baseType: !2637, size: 64, offset: 1280)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!1327, !1376, !22, !439, !35, !41}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2579, file: !226, line: 2082, baseType: !2641, size: 64, offset: 1344)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!1327, !1376, !22, !16, !35, !41}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2579, file: !226, line: 2083, baseType: !2645, size: 64, offset: 1408)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!2648, !1175}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !231, line: 296, size: 1664, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2676, !2677, !2678}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2650, file: !231, line: 297, baseType: !500, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2650, file: !231, line: 298, baseType: !97, size: 128, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2650, file: !231, line: 299, baseType: !97, size: 128, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2650, file: !231, line: 300, baseType: !97, size: 128, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2650, file: !231, line: 301, baseType: !1030, size: 256, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2650, file: !231, line: 302, baseType: !59, size: 32, offset: 768)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2650, file: !231, line: 303, baseType: !49, size: 32, offset: 800)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2650, file: !231, line: 304, baseType: !1376, size: 64, offset: 832)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2650, file: !231, line: 305, baseType: !2661, size: 64, offset: 896)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !231, line: 68, size: 64, elements: !2662)
!2662 = !{!2663, !2675}
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !231, line: 69, baseType: !2664, size: 32)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !231, line: 69, size: 32, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2664, file: !231, line: 70, baseType: !290, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2664, file: !231, line: 71, baseType: !298, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2664, file: !231, line: 72, baseType: !2669, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2670, line: 24, baseType: !2671)
!2670 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2670, line: 22, size: 32, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2671, file: !2670, line: 23, baseType: !2674, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2670, line: 20, baseType: !296)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2661, file: !231, line: 74, baseType: !230, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2650, file: !231, line: 306, baseType: !41, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2650, file: !231, line: 307, baseType: !39, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2650, file: !231, line: 308, baseType: !2679, size: 576, offset: 1088)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !231, line: 205, size: 576, elements: !2680)
!2680 = !{!2681, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2679, file: !231, line: 206, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !231, line: 66, baseType: !43)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2679, file: !231, line: 207, baseType: !2682, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2679, file: !231, line: 208, baseType: !2682, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2679, file: !231, line: 209, baseType: !2682, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2679, file: !231, line: 210, baseType: !2682, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2679, file: !231, line: 211, baseType: !2682, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2679, file: !231, line: 212, baseType: !2682, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2679, file: !231, line: 213, baseType: !375, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2679, file: !231, line: 214, baseType: !375, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2579, file: !226, line: 2085, baseType: !2692, size: 64, offset: 1472)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!673, !1376, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2697, line: 15, size: 256, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2698 = !{!2699, !2700, !2701, !2702, !2703}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2696, file: !2697, line: 16, baseType: !274, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2696, file: !2697, line: 19, baseType: !22, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2696, file: !2697, line: 26, baseType: !39, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2696, file: !2697, line: 33, baseType: !39, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2696, file: !2697, line: 36, baseType: !2704, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !122, line: 33, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2579, file: !226, line: 2087, baseType: !2692, size: 64, offset: 1536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2579, file: !226, line: 2089, baseType: !1406, size: 64, offset: 1600)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1377, file: !226, line: 1198, baseType: !2709, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !231, line: 324, size: 704, elements: !2712)
!2712 = !{!2713, !2717, !2721, !2725, !2726, !2727, !2728, !2729, !2734, !2739, !2743}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2711, file: !231, line: 325, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!22, !2649}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2711, file: !231, line: 326, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!2649, !1376, !22}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2711, file: !231, line: 327, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2649}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2711, file: !231, line: 328, baseType: !2714, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2711, file: !231, line: 329, baseType: !2714, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2711, file: !231, line: 330, baseType: !2714, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2711, file: !231, line: 331, baseType: !2605, size: 64, offset: 384)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2711, file: !231, line: 334, baseType: !2730, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!2733, !1175}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2711, file: !231, line: 335, baseType: !2735, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!22, !1175, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2711, file: !231, line: 337, baseType: !2740, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!22, !1175, !2733}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2711, file: !231, line: 339, baseType: !2744, size: 64, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!22, !1376, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1377, file: !226, line: 1199, baseType: !2749, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !231, line: 430, size: 704, elements: !2752)
!2752 = !{!2753, !2757, !2758, !2762, !2763, !2764, !2779, !2802, !2806, !2807, !2830}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2751, file: !231, line: 431, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!22, !1376, !22, !22, !1296}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2751, file: !231, line: 432, baseType: !2605, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2751, file: !231, line: 433, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!22, !1376, !7}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2751, file: !231, line: 434, baseType: !2759, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2751, file: !231, line: 435, baseType: !2605, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2751, file: !231, line: 436, baseType: !2765, size: 64, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!22, !1376, !22, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !231, line: 417, size: 256, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2769, file: !231, line: 418, baseType: !22, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2769, file: !231, line: 419, baseType: !7, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2769, file: !231, line: 420, baseType: !7, size: 32, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2769, file: !231, line: 422, baseType: !7, size: 32, offset: 96)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2769, file: !231, line: 423, baseType: !7, size: 32, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2769, file: !231, line: 424, baseType: !7, size: 32, offset: 160)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2769, file: !231, line: 425, baseType: !7, size: 32, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2769, file: !231, line: 426, baseType: !7, size: 32, offset: 224)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2751, file: !231, line: 437, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!22, !1376, !2661, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !231, line: 345, size: 960, elements: !2785)
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2784, file: !231, line: 346, baseType: !22, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2784, file: !231, line: 347, baseType: !317, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2784, file: !231, line: 348, baseType: !317, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2784, file: !231, line: 349, baseType: !317, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2784, file: !231, line: 350, baseType: !317, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2784, file: !231, line: 351, baseType: !317, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2784, file: !231, line: 352, baseType: !317, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2784, file: !231, line: 353, baseType: !287, size: 64, offset: 448)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2784, file: !231, line: 355, baseType: !287, size: 64, offset: 512)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2784, file: !231, line: 356, baseType: !22, size: 32, offset: 576)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2784, file: !231, line: 357, baseType: !22, size: 32, offset: 608)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2784, file: !231, line: 358, baseType: !317, size: 64, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2784, file: !231, line: 359, baseType: !317, size: 64, offset: 704)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2784, file: !231, line: 360, baseType: !317, size: 64, offset: 768)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2784, file: !231, line: 361, baseType: !287, size: 64, offset: 832)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2784, file: !231, line: 362, baseType: !22, size: 32, offset: 896)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2751, file: !231, line: 438, baseType: !2803, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!22, !1376, !2747, !2783}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2751, file: !231, line: 440, baseType: !2780, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2751, file: !231, line: 441, baseType: !2808, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!22, !1376, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !231, line: 411, size: 1408, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2812, file: !231, line: 412, baseType: !7, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2812, file: !231, line: 413, baseType: !2816, size: 1344, offset: 64)
!2816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2817, size: 1344, elements: !1062)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !231, line: 397, size: 448, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2829}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2817, file: !231, line: 398, baseType: !7, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2817, file: !231, line: 399, baseType: !7, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2817, file: !231, line: 401, baseType: !7, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2817, file: !231, line: 402, baseType: !7, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2817, file: !231, line: 403, baseType: !7, size: 32, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2817, file: !231, line: 404, baseType: !7, size: 32, offset: 160)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2817, file: !231, line: 405, baseType: !7, size: 32, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2817, file: !231, line: 406, baseType: !319, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2817, file: !231, line: 407, baseType: !2828, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !317)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2817, file: !231, line: 408, baseType: !2828, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2751, file: !231, line: 442, baseType: !2759, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1377, file: !226, line: 1200, baseType: !2832, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !226, line: 54, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1377, file: !226, line: 1201, baseType: !39, size: 64, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1377, file: !226, line: 1202, baseType: !39, size: 64, offset: 704)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1377, file: !226, line: 1203, baseType: !39, size: 64, offset: 768)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1377, file: !226, line: 1204, baseType: !1140, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1377, file: !226, line: 1205, baseType: !354, size: 320, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1377, file: !226, line: 1206, baseType: !22, size: 32, offset: 1216)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1377, file: !226, line: 1207, baseType: !49, size: 32, offset: 1248)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1377, file: !226, line: 1209, baseType: !20, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1377, file: !226, line: 1211, baseType: !2844, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2847)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !226, line: 1211, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1377, file: !226, line: 1223, baseType: !2849, size: 64, offset: 1408)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1152, line: 34, size: 64, elements: !2850)
!2850 = !{!2851}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2849, file: !1152, line: 35, baseType: !1155, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1377, file: !226, line: 1224, baseType: !97, size: 128, offset: 1472)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1377, file: !226, line: 1225, baseType: !2854, size: 64, offset: 1600)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !226, line: 1225, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1377, file: !226, line: 1226, baseType: !2857, size: 64, offset: 1664)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !226, line: 1226, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1377, file: !226, line: 1227, baseType: !2860, size: 64, offset: 1728)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !226, line: 50, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1377, file: !226, line: 1228, baseType: !2863, size: 64, offset: 1792)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !226, line: 1228, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1377, file: !226, line: 1229, baseType: !500, size: 128, offset: 1856)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1377, file: !226, line: 1230, baseType: !7, size: 32, offset: 1984)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1377, file: !226, line: 1231, baseType: !2868, size: 2496, offset: 2048)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !231, line: 521, size: 2496, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2874, !2906}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2868, file: !231, line: 522, baseType: !7, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2868, file: !231, line: 523, baseType: !354, size: 320, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2868, file: !231, line: 524, baseType: !2873, size: 192, offset: 384)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 192, elements: !1062)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2868, file: !231, line: 525, baseType: !2875, size: 1728, offset: 576)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2876, size: 1728, elements: !1062)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !231, line: 222, size: 576, elements: !2877)
!2877 = !{!2878, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2876, file: !231, line: 223, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !231, line: 445, size: 256, elements: !2881)
!2881 = !{!2882, !2883, !2896, !2897}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2880, file: !231, line: 446, baseType: !22, size: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2880, file: !231, line: 447, baseType: !2884, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2886)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !231, line: 312, size: 512, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2886, file: !231, line: 313, baseType: !2605, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2886, file: !231, line: 314, baseType: !2605, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2886, file: !231, line: 315, baseType: !2605, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2886, file: !231, line: 316, baseType: !2605, size: 64, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2886, file: !231, line: 317, baseType: !2714, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2886, file: !231, line: 318, baseType: !2714, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2886, file: !231, line: 319, baseType: !2714, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2886, file: !231, line: 320, baseType: !2744, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2880, file: !231, line: 448, baseType: !1410, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2880, file: !231, line: 449, baseType: !2879, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2876, file: !231, line: 224, baseType: !22, size: 32, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2876, file: !231, line: 226, baseType: !97, size: 128, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2876, file: !231, line: 227, baseType: !39, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2876, file: !231, line: 228, baseType: !7, size: 32, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2876, file: !231, line: 229, baseType: !7, size: 32, offset: 352)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2876, file: !231, line: 230, baseType: !2682, size: 64, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2876, file: !231, line: 231, baseType: !2682, size: 64, offset: 448)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2876, file: !231, line: 232, baseType: !20, size: 64, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2868, file: !231, line: 526, baseType: !2907, size: 192, offset: 2304)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2884, size: 192, elements: !1062)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1377, file: !226, line: 1233, baseType: !2909, size: 2368, offset: 4544)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !226, line: 1184, size: 2368, elements: !2910)
!2910 = !{!2911, !2912, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2909, file: !226, line: 1185, baseType: !26, size: 16)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2909, file: !226, line: 1186, baseType: !26, size: 16, offset: 16)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2909, file: !226, line: 1187, baseType: !2914, size: 2304, offset: 64)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 2304, elements: !1062)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2916, line: 12, size: 768, elements: !2917)
!2916 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2917 = !{!2918, !2926, !2927, !2932, !2933}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2915, file: !2916, line: 13, baseType: !2919, size: 384)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2920, line: 17, size: 384, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2921 = !{!2922, !2923, !2924, !2925}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2919, file: !2920, line: 18, baseType: !22, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2919, file: !2920, line: 19, baseType: !22, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2919, file: !2920, line: 20, baseType: !54, size: 192, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2919, file: !2920, line: 22, baseType: !418, size: 128, align: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2915, file: !2916, line: 14, baseType: !2307, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2915, file: !2916, line: 15, baseType: !2928, size: 64, offset: 448)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2929, line: 16, size: 64, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2928, file: !2929, line: 17, baseType: !693, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2915, file: !2916, line: 16, baseType: !54, size: 192, offset: 512)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2915, file: !2916, line: 17, baseType: !49, size: 32, offset: 704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1377, file: !226, line: 1240, baseType: !20, size: 64, offset: 6912)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1377, file: !226, line: 1243, baseType: !384, size: 32, offset: 6976)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1377, file: !226, line: 1245, baseType: !375, size: 64, offset: 7040)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1377, file: !226, line: 1246, baseType: !375, size: 64, offset: 7104)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1377, file: !226, line: 1248, baseType: !385, size: 32, offset: 7168)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1377, file: !226, line: 1249, baseType: !2940, size: 64, offset: 7232)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !242, line: 472, size: 256, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946, !2952, !2959}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2941, file: !242, line: 473, baseType: !59, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2941, file: !242, line: 474, baseType: !26, size: 16, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2941, file: !242, line: 477, baseType: !26, size: 16, offset: 48)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !2941, file: !242, line: 478, baseType: !2947, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !37, line: 81, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 79, size: 64, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2948, file: !37, line: 80, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !2345)
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !2941, file: !242, line: 479, baseType: !2953, size: 64, offset: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !242, line: 479, size: 64, elements: !2954)
!2954 = !{!2955, !2958}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2953, file: !242, line: 481, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !242, line: 464, baseType: !2940)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !2953, file: !242, line: 483, baseType: !2940, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2941, file: !242, line: 485, baseType: !649, size: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1377, file: !226, line: 1252, baseType: !2961, size: 256, offset: 7296)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1377, file: !226, line: 1253, baseType: !2965, size: 128, offset: 7552)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2966, line: 21, baseType: !2967)
!2966 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2966, line: 19, size: 128, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2967, file: !2966, line: 20, baseType: !2970, size: 128)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !2971)
!2971 = !{!2972}
!2972 = !DISubrange(count: 16)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1377, file: !226, line: 1255, baseType: !7, size: 32, offset: 7680)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1377, file: !226, line: 1261, baseType: !1030, size: 256, offset: 7744)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1377, file: !226, line: 1267, baseType: !16, size: 64, offset: 8000)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1377, file: !226, line: 1269, baseType: !2977, size: 64, offset: 8064)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1142, line: 128, size: 1024, align: 512, elements: !2980)
!2980 = !{!2981, !2985, !2986, !2993, !2999, !3003, !3007, !3011, !3012, !3016, !3020, !3025, !3029}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2979, file: !1142, line: 129, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!22, !1140, !7}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2979, file: !1142, line: 130, baseType: !2982, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2979, file: !1142, line: 131, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!22, !2990, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2979, file: !1142, line: 132, baseType: !2994, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!22, !2990, !7, !16, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2979, file: !1142, line: 134, baseType: !3000, size: 64, offset: 256)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!22, !2990}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2979, file: !1142, line: 135, baseType: !3004, size: 64, offset: 320)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!22, !1140}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2979, file: !1142, line: 136, baseType: !3008, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !1140}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2979, file: !1142, line: 137, baseType: !3008, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2979, file: !1142, line: 138, baseType: !3013, size: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !1140, !1175}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2979, file: !1142, line: 139, baseType: !3017, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!439, !1140, !439, !22}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2979, file: !1142, line: 140, baseType: !3021, size: 64, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!1135, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2979, file: !1142, line: 141, baseType: !3026, size: 64, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!22, !1296, !428}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2979, file: !1142, line: 142, baseType: !3030, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!1140, !1140, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1377, file: !226, line: 1271, baseType: !3036, size: 448, offset: 8128)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2697, line: 63, size: 448, elements: !3037)
!3037 = !{!3038, !3043, !3044, !3045, !3046, !3047, !3048}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3036, file: !2697, line: 64, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!39, !3042, !2695}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3036, file: !2697, line: 66, baseType: !3039, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3036, file: !2697, line: 69, baseType: !673, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3036, file: !2697, line: 70, baseType: !22, size: 32, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3036, file: !2697, line: 71, baseType: !7, size: 32, offset: 224)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3036, file: !2697, line: 74, baseType: !97, size: 128, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3036, file: !2697, line: 85, baseType: !3049, size: 64, offset: 384)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1377, file: !226, line: 1274, baseType: !281, size: 64, offset: 8576)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1377, file: !226, line: 1280, baseType: !281, size: 64, offset: 8640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1377, file: !226, line: 1283, baseType: !22, size: 32, offset: 8704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1377, file: !226, line: 1286, baseType: !2014, size: 32, offset: 8736)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1377, file: !226, line: 1289, baseType: !2518, size: 64, offset: 8768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1377, file: !226, line: 1290, baseType: !649, size: 64, offset: 8832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1377, file: !226, line: 1297, baseType: !520, size: 64, offset: 8896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1377, file: !226, line: 1304, baseType: !3058, size: 64, offset: 8960)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3059, line: 49, size: 64, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3060 = !{!3061}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3058, file: !3059, line: 50, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3059, line: 41, size: 512, align: 512, elements: !3064)
!3064 = !{!3065, !3066, !3071}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3063, file: !3059, line: 43, baseType: !59, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3063, file: !3059, line: 45, baseType: !3067, size: 192, offset: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3059, line: 29, size: 192, elements: !3068)
!3068 = !{!3069, !3070}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3067, file: !3059, line: 30, baseType: !97, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3067, file: !3059, line: 32, baseType: !673, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3063, file: !3059, line: 46, baseType: !673, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1377, file: !226, line: 1305, baseType: !3058, size: 64, offset: 9024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1377, file: !226, line: 1306, baseType: !418, size: 128, align: 64, offset: 9088)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1377, file: !226, line: 1307, baseType: !569, size: 256, offset: 9216)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1377, file: !226, line: 1309, baseType: !1030, size: 256, offset: 9472)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1377, file: !226, line: 1314, baseType: !22, size: 32, offset: 9728)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1377, file: !226, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1377, file: !226, line: 1318, baseType: !97, size: 128, offset: 10304)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1377, file: !226, line: 1320, baseType: !59, size: 32, offset: 10432)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1377, file: !226, line: 1321, baseType: !97, size: 128, offset: 10496)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1176, file: !226, line: 656, baseType: !1527, size: 64, offset: 512)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1176, file: !226, line: 659, baseType: !20, size: 64, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1176, file: !226, line: 663, baseType: !39, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !226, line: 671, baseType: !3085, size: 32, offset: 704)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !226, line: 671, size: 32, elements: !3086)
!3086 = !{!3087, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3085, file: !226, line: 672, baseType: !3088, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3085, file: !226, line: 673, baseType: !7, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1176, file: !226, line: 675, baseType: !1249, size: 32, offset: 736)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1176, file: !226, line: 676, baseType: !41, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1176, file: !226, line: 677, baseType: !1285, size: 128, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1176, file: !226, line: 678, baseType: !1285, size: 128, offset: 960)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1176, file: !226, line: 679, baseType: !1285, size: 128, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1176, file: !226, line: 680, baseType: !59, size: 32, offset: 1216)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1176, file: !226, line: 681, baseType: !26, size: 16, offset: 1248)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1176, file: !226, line: 682, baseType: !83, size: 8, offset: 1264)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1176, file: !226, line: 683, baseType: !83, size: 8, offset: 1272)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1176, file: !226, line: 684, baseType: !2828, size: 64, offset: 1280)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1176, file: !226, line: 691, baseType: !39, size: 64, offset: 1344)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1176, file: !226, line: 692, baseType: !354, size: 320, offset: 1408)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1176, file: !226, line: 694, baseType: !39, size: 64, offset: 1728)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1176, file: !226, line: 695, baseType: !39, size: 64, offset: 1792)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1176, file: !226, line: 697, baseType: !500, size: 128, offset: 1856)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1176, file: !226, line: 698, baseType: !97, size: 128, offset: 1984)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1176, file: !226, line: 707, baseType: !97, size: 128, offset: 2112)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1176, file: !226, line: 708, baseType: !97, size: 128, offset: 2240)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !226, line: 709, baseType: !3109, size: 128, offset: 2368)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !226, line: 709, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3109, file: !226, line: 710, baseType: !649, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3109, file: !226, line: 711, baseType: !418, size: 128, align: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1176, file: !226, line: 713, baseType: !283, size: 64, offset: 2496)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1176, file: !226, line: 714, baseType: !283, size: 64, offset: 2560)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1176, file: !226, line: 715, baseType: !49, size: 32, offset: 2624)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1176, file: !226, line: 716, baseType: !49, size: 32, offset: 2656)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1176, file: !226, line: 717, baseType: !49, size: 32, offset: 2688)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1176, file: !226, line: 719, baseType: !49, size: 32, offset: 2720)
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !226, line: 721, baseType: !3120, size: 64, offset: 2752)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !226, line: 721, size: 64, elements: !3121)
!3121 = !{!3122, !3248}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3120, file: !226, line: 722, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !226, line: 1914, size: 2112, elements: !3126)
!3126 = !{!3127, !3128, !3132, !3136, !3140, !3141, !3142, !3148, !3161, !3165, !3169, !3170, !3174, !3175, !3179, !3184, !3185, !3189, !3193, !3199, !3200, !3204, !3205, !3211, !3215, !3216, !3221, !3225, !3229, !3233, !3237, !3238, !3244}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3125, file: !226, line: 1915, baseType: !1410, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3125, file: !226, line: 1916, baseType: !3129, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!41, !1016, !41, !22}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3125, file: !226, line: 1917, baseType: !3133, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!1327, !1016, !439, !35, !40}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3125, file: !226, line: 1918, baseType: !3137, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!1327, !1016, !16, !35, !40}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3125, file: !226, line: 1919, baseType: !1948, size: 64, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3125, file: !226, line: 1920, baseType: !1948, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3125, file: !226, line: 1921, baseType: !3143, size: 64, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!22, !1951, !3146, !7}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !226, line: 53, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3125, file: !226, line: 1923, baseType: !3149, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!22, !1016, !3152}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !226, line: 1858, size: 128, elements: !3154)
!3154 = !{!3155, !3160}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3153, file: !226, line: 1859, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !226, line: 1855, baseType: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!428, !3152, !16, !22, !41, !317, !7}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3153, file: !226, line: 1860, baseType: !41, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3125, file: !226, line: 1924, baseType: !3162, size: 64, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!2182, !1016, !2184}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3125, file: !226, line: 1925, baseType: !3166, size: 64, offset: 576)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!673, !1016, !7, !39}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3125, file: !226, line: 1926, baseType: !3166, size: 64, offset: 640)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3125, file: !226, line: 1927, baseType: !3171, size: 64, offset: 704)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!22, !1016, !1657}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3125, file: !226, line: 1928, baseType: !39, size: 64, offset: 768)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3125, file: !226, line: 1929, baseType: !3176, size: 64, offset: 832)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!22, !1175, !1016}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3125, file: !226, line: 1930, baseType: !3180, size: 64, offset: 896)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!22, !1016, !3183}
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !226, line: 1061, baseType: !20)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3125, file: !226, line: 1931, baseType: !3176, size: 64, offset: 960)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3125, file: !226, line: 1932, baseType: !3186, size: 64, offset: 1024)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!22, !1016, !41, !41, !22}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3125, file: !226, line: 1933, baseType: !3190, size: 64, offset: 1088)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!22, !22, !1016, !22}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3125, file: !226, line: 1934, baseType: !3194, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!22, !1016, !22, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !226, line: 1063, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3125, file: !226, line: 1935, baseType: !1013, size: 64, offset: 1216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3125, file: !226, line: 1936, baseType: !3201, size: 64, offset: 1280)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!22, !22}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3125, file: !226, line: 1937, baseType: !3194, size: 64, offset: 1344)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3125, file: !226, line: 1938, baseType: !3206, size: 64, offset: 1408)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!1327, !3209, !1016, !40, !35, !7}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !695, line: 59, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3125, file: !226, line: 1939, baseType: !3212, size: 64, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!1327, !1016, !40, !3209, !35, !7}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3125, file: !226, line: 1940, baseType: !2004, size: 64, offset: 1536)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3125, file: !226, line: 1941, baseType: !3217, size: 64, offset: 1600)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!22, !1016, !22, !3220, !1925}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3125, file: !226, line: 1942, baseType: !3222, size: 64, offset: 1664)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!673, !1016, !22, !41, !41}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3125, file: !226, line: 1944, baseType: !3226, size: 64, offset: 1728)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !2115, !1016}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3125, file: !226, line: 1948, baseType: !3230, size: 64, offset: 1792)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!1327, !1016, !41, !1016, !41, !35, !7}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3125, file: !226, line: 1950, baseType: !3234, size: 64, offset: 1856)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!41, !1016, !41, !1016, !41, !41, !7}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3125, file: !226, line: 1953, baseType: !3186, size: 64, offset: 1920)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3125, file: !226, line: 1954, baseType: !3239, size: 64, offset: 1984)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!22, !3242, !7}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !226, line: 1911, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3125, file: !226, line: 1955, baseType: !3245, size: 64, offset: 2048)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!22, !3242, !3146, !7}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3120, file: !226, line: 723, baseType: !2586, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1176, file: !226, line: 725, baseType: !3250, size: 64, offset: 2816)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !226, line: 725, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1176, file: !226, line: 726, baseType: !1528, size: 1536, align: 64, offset: 2880)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1176, file: !226, line: 727, baseType: !97, size: 128, offset: 4416)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !226, line: 728, baseType: !3255, size: 64, offset: 4544)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1176, file: !226, line: 728, size: 64, elements: !3256)
!3256 = !{!3257, !3258, !3269, !3270}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3255, file: !226, line: 729, baseType: !3209, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3255, file: !226, line: 730, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3261, line: 14, size: 832, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3260, file: !3261, line: 15, baseType: !1423, size: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3260, file: !3261, line: 16, baseType: !1410, size: 64, offset: 512)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3260, file: !3261, line: 17, baseType: !3123, size: 64, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3260, file: !3261, line: 18, baseType: !97, size: 128, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3260, file: !3261, line: 19, baseType: !1249, size: 32, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3260, file: !3261, line: 20, baseType: !7, size: 32, offset: 800)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3255, file: !226, line: 731, baseType: !439, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3255, file: !226, line: 732, baseType: !7, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1176, file: !226, line: 735, baseType: !385, size: 32, offset: 4608)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1176, file: !226, line: 738, baseType: !385, size: 32, offset: 4640)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1176, file: !226, line: 739, baseType: !2940, size: 64, offset: 4672)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1176, file: !226, line: 750, baseType: !20, size: 64, offset: 4736)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1141, file: !1142, line: 91, baseType: !3276, size: 256, offset: 448)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !2962)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1141, file: !1142, line: 94, baseType: !3278, size: 64, offset: 704)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3279, line: 25, size: 64, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3278, file: !3279, line: 26, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3278, file: !3279, line: 26, size: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3282, file: !3279, line: 28, baseType: !318, size: 64, align: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !3279, line: 30, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3282, file: !3279, line: 30, size: 64, elements: !3287)
!3287 = !{!3288, !3289}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3286, file: !3279, line: 31, baseType: !59, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3286, file: !3279, line: 32, baseType: !22, size: 32, offset: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1141, file: !1142, line: 95, baseType: !2977, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1141, file: !1142, line: 96, baseType: !1376, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1141, file: !1142, line: 97, baseType: !39, size: 64, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1141, file: !1142, line: 98, baseType: !20, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !1142, line: 100, baseType: !3295, size: 128, offset: 1024)
!3295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !1142, line: 100, size: 128, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3295, file: !1142, line: 101, baseType: !97, size: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3295, file: !1142, line: 102, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1141, file: !1142, line: 104, baseType: !97, size: 128, offset: 1152)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1141, file: !1142, line: 105, baseType: !97, size: 128, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1141, file: !1142, line: 113, baseType: !3303, size: 128, offset: 1408)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !1142, line: 109, size: 128, elements: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3303, file: !1142, line: 110, baseType: !500, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3303, file: !1142, line: 111, baseType: !1151, size: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3303, file: !1142, line: 112, baseType: !418, size: 128, align: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1136, file: !1137, line: 72, baseType: !1376, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1136, file: !1137, line: 73, baseType: !22, size: 32, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1136, file: !1137, line: 74, baseType: !1214, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1131, file: !1132, line: 10, baseType: !1140, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1017, file: !226, line: 1015, baseType: !1175, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1017, file: !226, line: 1016, baseType: !3123, size: 64, offset: 1408)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1017, file: !226, line: 1018, baseType: !317, size: 64, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1017, file: !226, line: 1020, baseType: !20, size: 64, offset: 1536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1017, file: !226, line: 1023, baseType: !20, size: 64, offset: 1600)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1017, file: !226, line: 1027, baseType: !3318, size: 64, offset: 1664)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1017, file: !226, line: 1029, baseType: !1527, size: 64, offset: 1728)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1017, file: !226, line: 1030, baseType: !2014, size: 32, offset: 1792)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1017, file: !226, line: 1031, baseType: !2014, size: 32, offset: 1824)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !992, file: !122, line: 756, baseType: !39, size: 64, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !992, file: !122, line: 757, baseType: !39, size: 64, offset: 768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !992, file: !122, line: 760, baseType: !39, size: 64, offset: 832)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !992, file: !122, line: 761, baseType: !39, size: 64, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !992, file: !122, line: 763, baseType: !39, size: 64, offset: 960)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !992, file: !122, line: 764, baseType: !3328, size: 64, offset: 1024)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1672, line: 299, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1672, line: 299, size: 64, elements: !3331)
!3331 = !{!3332}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3330, file: !1672, line: 299, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1677, line: 18, baseType: !39)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !992, file: !122, line: 773, baseType: !49, size: 32, offset: 1088)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !992, file: !122, line: 785, baseType: !49, size: 32, offset: 1120)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !992, file: !122, line: 795, baseType: !3337, size: 64, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !122, line: 726, size: 128, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3338, file: !122, line: 727, baseType: !317, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3338, file: !122, line: 728, baseType: !22, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !992, file: !122, line: 801, baseType: !39, size: 64, offset: 1216)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !992, file: !122, line: 804, baseType: !281, size: 64, offset: 1280)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !992, file: !122, line: 806, baseType: !22, size: 32, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !992, file: !122, line: 808, baseType: !59, size: 32, offset: 1376)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !992, file: !122, line: 823, baseType: !354, size: 320, offset: 1408)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !992, file: !122, line: 825, baseType: !97, size: 128, offset: 1728)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !992, file: !122, line: 845, baseType: !22, size: 32, offset: 1856)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !992, file: !122, line: 849, baseType: !39, size: 64, offset: 1920)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !992, file: !122, line: 850, baseType: !39, size: 64, offset: 1984)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !992, file: !122, line: 852, baseType: !39, size: 64, offset: 2048)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !992, file: !122, line: 853, baseType: !39, size: 64, offset: 2112)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !992, file: !122, line: 854, baseType: !283, size: 64, offset: 2176)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !992, file: !122, line: 855, baseType: !39, size: 64, offset: 2240)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !992, file: !122, line: 856, baseType: !39, size: 64, offset: 2304)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !992, file: !122, line: 857, baseType: !39, size: 64, offset: 2368)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !992, file: !122, line: 858, baseType: !39, size: 64, offset: 2432)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !992, file: !122, line: 865, baseType: !865, size: 32, offset: 2496)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !992, file: !122, line: 867, baseType: !59, size: 32, offset: 2528)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !992, file: !122, line: 869, baseType: !39, size: 64, offset: 2560)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !992, file: !122, line: 869, baseType: !39, size: 64, offset: 2624)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !992, file: !122, line: 869, baseType: !39, size: 64, offset: 2688)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !992, file: !122, line: 869, baseType: !39, size: 64, offset: 2752)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !992, file: !122, line: 870, baseType: !39, size: 64, offset: 2816)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !992, file: !122, line: 870, baseType: !39, size: 64, offset: 2880)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !992, file: !122, line: 870, baseType: !39, size: 64, offset: 2944)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !992, file: !122, line: 871, baseType: !39, size: 64, offset: 3008)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !992, file: !122, line: 871, baseType: !39, size: 64, offset: 3072)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !992, file: !122, line: 871, baseType: !39, size: 64, offset: 3136)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !992, file: !122, line: 871, baseType: !39, size: 64, offset: 3200)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !992, file: !122, line: 873, baseType: !3372, size: 3328, offset: 3264)
!3372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !3373)
!3373 = !{!3374}
!3374 = !DISubrange(count: 52)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !992, file: !122, line: 875, baseType: !3376, size: 1280, offset: 6592)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1280, elements: !449)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !992, file: !122, line: 877, baseType: !3378, size: 64, offset: 7872)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !122, line: 877, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !992, file: !122, line: 880, baseType: !3381, size: 1088, offset: 7936)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3382, line: 72, baseType: !3383)
!3382 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3382, line: 23, size: 1088, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3392, !3393, !3394, !3395, !3420, !3421, !3422}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3383, file: !3382, line: 28, baseType: !317, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3383, file: !3382, line: 38, baseType: !283, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3383, file: !3382, line: 40, baseType: !39, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3383, file: !3382, line: 43, baseType: !354, size: 320, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3383, file: !3382, line: 44, baseType: !3390, size: 64, offset: 512)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3382, line: 44, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3383, file: !3382, line: 48, baseType: !39, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3383, file: !3382, line: 59, baseType: !1030, size: 256, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3383, file: !3382, line: 60, baseType: !20, size: 64, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3383, file: !3382, line: 61, baseType: !3396, size: 64, offset: 960)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3398)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3399, line: 13, size: 1216, elements: !3400)
!3399 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3398, file: !3399, line: 14, baseType: !20, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3398, file: !3399, line: 15, baseType: !39, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3398, file: !3399, line: 17, baseType: !39, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3398, file: !3399, line: 17, baseType: !39, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3398, file: !3399, line: 18, baseType: !39, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3398, file: !3399, line: 18, baseType: !39, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3398, file: !3399, line: 19, baseType: !2053, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3398, file: !3399, line: 21, baseType: !673, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3398, file: !3399, line: 23, baseType: !673, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3398, file: !3399, line: 24, baseType: !673, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3398, file: !3399, line: 25, baseType: !673, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3398, file: !3399, line: 26, baseType: !673, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3398, file: !3399, line: 27, baseType: !673, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3398, file: !3399, line: 28, baseType: !673, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3398, file: !3399, line: 29, baseType: !673, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3398, file: !3399, line: 30, baseType: !673, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3398, file: !3399, line: 31, baseType: !673, size: 64, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3398, file: !3399, line: 32, baseType: !673, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3398, file: !3399, line: 33, baseType: !673, size: 64, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3383, file: !3382, line: 63, baseType: !49, size: 32, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3383, file: !3382, line: 69, baseType: !93, size: 16, offset: 1056)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3383, file: !3382, line: 70, baseType: !2362, size: 16, offset: 1072)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !122, line: 882, baseType: !39, size: 64, offset: 9024)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !992, file: !122, line: 885, baseType: !59, size: 32, offset: 9088)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !992, file: !122, line: 886, baseType: !3426, size: 64, offset: 9152)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !122, line: 732, flags: DIFlagFwdDecl)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !992, file: !122, line: 901, baseType: !520, size: 64, offset: 9216)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !992, file: !122, line: 904, baseType: !1016, size: 64, offset: 9280)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !992, file: !122, line: 906, baseType: !3431, size: 64, offset: 9344)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !122, line: 906, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !992, file: !122, line: 930, baseType: !49, size: 32, offset: 9408)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !992, file: !122, line: 933, baseType: !49, size: 32, offset: 9440)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !992, file: !122, line: 935, baseType: !3436, size: 64, offset: 9472)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !211, line: 103, size: 64, elements: !3437)
!3437 = !{!3438}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3436, file: !211, line: 104, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !211, line: 101, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !992, file: !122, line: 940, baseType: !281, size: 64, offset: 9536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !992, file: !122, line: 942, baseType: !569, size: 256, offset: 9600)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !989, file: !122, line: 986, baseType: !3444, offset: 10240)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !685)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !694, file: !695, line: 882, baseType: !988, size: 64, offset: 9792)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !694, file: !695, line: 884, baseType: !22, size: 32, offset: 9856)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !694, file: !695, line: 885, baseType: !22, size: 32, offset: 9888)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !694, file: !695, line: 886, baseType: !22, size: 32, offset: 9920)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !694, file: !695, line: 888, baseType: !22, size: 32, offset: 9952)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !694, file: !695, line: 890, baseType: !39, size: 64, offset: 9984)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !694, file: !695, line: 893, baseType: !7, size: 32, offset: 10048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !694, file: !695, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !694, file: !695, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !694, file: !695, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !694, file: !695, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !694, file: !695, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !694, file: !695, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !694, file: !695, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !694, file: !695, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !694, file: !695, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !694, file: !695, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !694, file: !695, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !694, file: !695, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !694, file: !695, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !694, file: !695, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !694, file: !695, line: 969, baseType: !39, size: 64, offset: 10176)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !694, file: !695, line: 971, baseType: !3468, size: 448, offset: 10240)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !3469)
!3469 = !{!3470, !3471, !3476}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3468, file: !108, line: 26, baseType: !39, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3468, file: !108, line: 27, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!673, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3468, file: !108, line: 28, baseType: !3477, size: 320, offset: 128)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3468, file: !108, line: 28, size: 320, elements: !3478)
!3478 = !{!3479, !3489, !3514}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3477, file: !108, line: 37, baseType: !3480, size: 320)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !108, line: 30, size: 320, elements: !3481)
!3481 = !{!3482, !3484, !3485, !3486, !3487, !3488}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3480, file: !108, line: 31, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3480, file: !108, line: 32, baseType: !384, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3480, file: !108, line: 33, baseType: !384, size: 32, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3480, file: !108, line: 34, baseType: !384, size: 32, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3480, file: !108, line: 35, baseType: !317, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3480, file: !108, line: 36, baseType: !3483, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3477, file: !108, line: 47, baseType: !3490, size: 192)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !108, line: 39, size: 192, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3513}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3490, file: !108, line: 40, baseType: !857, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3490, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3490, file: !108, line: 42, baseType: !3495, size: 64, offset: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3490, file: !108, line: 42, size: 64, elements: !3496)
!3496 = !{!3497, !3505}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3495, file: !108, line: 43, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3500, line: 7, size: 128, elements: !3501)
!3500 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3501 = !{!3502, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3499, file: !3500, line: 8, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3499, file: !3500, line: 9, baseType: !43, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3495, file: !108, line: 44, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3508, line: 7, size: 64, elements: !3509)
!3508 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3509 = !{!3510, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3507, file: !3508, line: 8, baseType: !3511, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3508, line: 5, baseType: !339)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3507, file: !3508, line: 9, baseType: !339, size: 32, offset: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3490, file: !108, line: 46, baseType: !317, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3477, file: !108, line: 55, baseType: !3515, size: 256)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !108, line: 49, size: 256, elements: !3516)
!3516 = !{!3517, !3520, !3521, !3522, !3523}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3515, file: !108, line: 50, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !108, line: 14, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3515, file: !108, line: 51, baseType: !22, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3515, file: !108, line: 52, baseType: !22, size: 32, offset: 96)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3515, file: !108, line: 53, baseType: !39, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3515, file: !108, line: 54, baseType: !39, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !694, file: !695, line: 973, baseType: !3525, size: 32, offset: 10688)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !3526)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !694, file: !695, line: 974, baseType: !3525, size: 32, offset: 10720)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !694, file: !695, line: 978, baseType: !39, size: 64, offset: 10752)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !694, file: !695, line: 987, baseType: !693, size: 64, offset: 10816)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !695, line: 990, baseType: !693, size: 64, offset: 10880)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !694, file: !695, line: 995, baseType: !97, size: 128, offset: 10944)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !694, file: !695, line: 996, baseType: !97, size: 128, offset: 11072)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !694, file: !695, line: 997, baseType: !693, size: 64, offset: 11200)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !694, file: !695, line: 1005, baseType: !97, size: 128, offset: 11264)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !694, file: !695, line: 1006, baseType: !97, size: 128, offset: 11392)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !694, file: !695, line: 1009, baseType: !1066, size: 64, offset: 11520)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !694, file: !695, line: 1010, baseType: !3538, size: 512, offset: 11584)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 512, elements: !449)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !694, file: !695, line: 1011, baseType: !97, size: 128, offset: 12096)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !694, file: !695, line: 1012, baseType: !97, size: 128, offset: 12224)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !694, file: !695, line: 1014, baseType: !607, size: 64, offset: 12352)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !694, file: !695, line: 1017, baseType: !2355, size: 64, offset: 12416)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !694, file: !695, line: 1020, baseType: !2355, size: 64, offset: 12480)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !694, file: !695, line: 1023, baseType: !20, size: 64, offset: 12544)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !694, file: !695, line: 1025, baseType: !317, size: 64, offset: 12608)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !694, file: !695, line: 1026, baseType: !317, size: 64, offset: 12672)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !694, file: !695, line: 1031, baseType: !317, size: 64, offset: 12736)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !694, file: !695, line: 1032, baseType: !3549, size: 192, offset: 12800)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !695, line: 324, size: 192, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3549, file: !695, line: 326, baseType: !317, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3549, file: !695, line: 327, baseType: !317, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3549, file: !695, line: 328, baseType: !365, size: 32, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !694, file: !695, line: 1041, baseType: !39, size: 64, offset: 12992)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !694, file: !695, line: 1042, baseType: !39, size: 64, offset: 13056)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !694, file: !695, line: 1045, baseType: !317, size: 64, offset: 13120)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !694, file: !695, line: 1048, baseType: !317, size: 64, offset: 13184)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !694, file: !695, line: 1051, baseType: !39, size: 64, offset: 13248)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !694, file: !695, line: 1052, baseType: !39, size: 64, offset: 13312)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !694, file: !695, line: 1055, baseType: !3561, size: 640, offset: 13376)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3562, line: 132, size: 640, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3563 = !{!3564, !3570, !3571}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3561, file: !3562, line: 133, baseType: !3565, size: 576)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3566, size: 576, elements: !1062)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3562, line: 117, size: 192, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3566, file: !3562, line: 118, baseType: !317, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3566, file: !3562, line: 119, baseType: !871, size: 128, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3561, file: !3562, line: 134, baseType: !7, size: 32, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3561, file: !3562, line: 135, baseType: !7, size: 32, offset: 608)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !694, file: !695, line: 1058, baseType: !3573, size: 448, offset: 14016)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3562, line: 144, size: 448, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3573, file: !3562, line: 145, baseType: !418, size: 128, align: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3573, file: !3562, line: 146, baseType: !1030, size: 256, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3573, file: !3562, line: 147, baseType: !7, size: 32, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !694, file: !695, line: 1064, baseType: !275, size: 64, offset: 14464)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !694, file: !695, line: 1067, baseType: !275, size: 64, offset: 14528)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !694, file: !695, line: 1070, baseType: !275, size: 64, offset: 14592)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !694, file: !695, line: 1074, baseType: !326, size: 64, offset: 14656)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !694, file: !695, line: 1084, baseType: !3583, size: 128, offset: 14720)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !2971)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !694, file: !695, line: 1086, baseType: !3585, size: 64, offset: 14848)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !695, line: 55, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !694, file: !695, line: 1089, baseType: !3588, size: 64, offset: 14912)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3589, line: 12, size: 64, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3590 = !{!3591}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3588, file: !3589, line: 13, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3589, line: 8, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !694, file: !695, line: 1090, baseType: !3595, size: 128, offset: 14976)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3596, line: 13, size: 128, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3595, file: !3596, line: 14, baseType: !97, size: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !694, file: !695, line: 1097, baseType: !3600, size: 64, offset: 15104)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !695, line: 50, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !694, file: !695, line: 1100, baseType: !3603, size: 64, offset: 15168)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !695, line: 1100, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !694, file: !695, line: 1103, baseType: !3606, size: 64, offset: 15232)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !695, line: 53, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !694, file: !695, line: 1107, baseType: !3609, size: 64, offset: 15296)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3611, line: 31, size: 576, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3612 = !{!3613, !3614, !3617, !3620, !3623, !3624, !3627, !3630, !3631}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3610, file: !3611, line: 32, baseType: !331, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3610, file: !3611, line: 33, baseType: !3615, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3611, line: 9, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3610, file: !3611, line: 34, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3611, line: 10, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3610, file: !3611, line: 35, baseType: !3621, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3611, line: 8, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3610, file: !3611, line: 36, baseType: !1083, size: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3610, file: !3611, line: 37, baseType: !3625, size: 64, offset: 320)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !328, line: 34, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3610, file: !3611, line: 38, baseType: !3628, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3611, line: 38, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3610, file: !3611, line: 39, baseType: !3628, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3610, file: !3611, line: 40, baseType: !3632, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3611, line: 12, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !694, file: !695, line: 1110, baseType: !3635, size: 64, offset: 15360)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3637, line: 93, size: 8768, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3687, !3696, !3697, !3699, !3700, !3701, !4555, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4593, !4594, !4601, !4611, !4614, !4615, !4618, !4619, !4620, !4621, !4622, !4623}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3636, file: !3637, line: 94, baseType: !331, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3636, file: !3637, line: 95, baseType: !49, size: 32, offset: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3636, file: !3637, line: 96, baseType: !22, size: 32, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3636, file: !3637, line: 97, baseType: !22, size: 32, offset: 96)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3636, file: !3637, line: 98, baseType: !97, size: 128, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3636, file: !3637, line: 100, baseType: !54, size: 192, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3636, file: !3637, line: 103, baseType: !693, size: 64, offset: 448)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3636, file: !3637, line: 106, baseType: !3647, size: 192, offset: 512)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3648, line: 32, size: 192, elements: !3649)
!3648 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3647, file: !3648, line: 33, baseType: !97, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3647, file: !3648, line: 34, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3653, line: 25, baseType: !3654)
!3653 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3653, line: 23, size: 64, elements: !3655)
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3654, file: !3653, line: 24, baseType: !939, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3636, file: !3637, line: 109, baseType: !649, size: 64, offset: 704)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3636, file: !3637, line: 112, baseType: !22, size: 32, offset: 768)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3636, file: !3637, line: 114, baseType: !22, size: 32, offset: 800)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3636, file: !3637, line: 115, baseType: !693, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3636, file: !3637, line: 118, baseType: !22, size: 32, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3636, file: !3637, line: 119, baseType: !7, size: 32, offset: 928)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3636, file: !3637, line: 121, baseType: !3664, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3637, line: 80, size: 448, elements: !3666)
!3666 = !{!3667, !3668, !3674}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3665, file: !3637, line: 81, baseType: !49, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3665, file: !3637, line: 82, baseType: !3669, size: 128, offset: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3637, line: 75, size: 128, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3669, file: !3637, line: 76, baseType: !693, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3669, file: !3637, line: 77, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3665, file: !3637, line: 83, baseType: !608, size: 256, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3636, file: !3637, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3636, file: !3637, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3636, file: !3637, line: 138, baseType: !7, size: 32, offset: 1056)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3636, file: !3637, line: 139, baseType: !97, size: 128, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3636, file: !3637, line: 142, baseType: !810, size: 512, offset: 1216)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3636, file: !3637, line: 143, baseType: !818, size: 64, offset: 1728)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3636, file: !3637, line: 150, baseType: !3682, size: 256, offset: 1792)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3683, size: 256, elements: !2345)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3637, line: 38, size: 128, elements: !3684)
!3684 = !{!3685, !3686}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3683, file: !3637, line: 39, baseType: !317, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3683, file: !3637, line: 40, baseType: !317, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3636, file: !3637, line: 156, baseType: !3688, size: 192, offset: 2048)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3637, line: 66, size: 192, elements: !3689)
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3688, file: !3637, line: 67, baseType: !3691, size: 192)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3637, line: 47, size: 192, elements: !3692)
!3692 = !{!3693, !3694, !3695}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3691, file: !3637, line: 48, baseType: !283, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3691, file: !3637, line: 49, baseType: !283, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3691, file: !3637, line: 50, baseType: !283, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3636, file: !3637, line: 160, baseType: !3561, size: 640, offset: 2240)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3636, file: !3637, line: 163, baseType: !3698, size: 256, offset: 2880)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 256, elements: !449)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3636, file: !3637, line: 169, baseType: !1066, size: 64, offset: 3136)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3636, file: !3637, line: 172, baseType: !22, size: 32, offset: 3200)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3636, file: !3637, line: 174, baseType: !3702, size: 64, offset: 3264)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3704, line: 193, size: 5248, elements: !3705)
!3704 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3705 = !{!3706, !3707, !3708, !4159, !4444, !4445, !4446, !4493, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4510, !4511, !4512, !4513, !4514, !4522, !4531, !4532, !4533, !4534, !4535, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3703, file: !3704, line: 194, baseType: !2204, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3703, file: !3704, line: 195, baseType: !22, size: 32, offset: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3703, file: !3704, line: 196, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3717, !3718, !3771, !3841, !3842, !3843, !3844, !3845, !3852, !3944, !3957, !3967, !3971, !3973, !3974, !3975, !3979, !3986, !3987, !3990, !3993, !3997, !4101, !4102, !4103, !4104, !4105, !4106, !4136, !4137, !4138, !4141, !4144, !4153, !4154, !4155, !4156, !4157, !4158}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3710, file: !164, line: 706, baseType: !1423, size: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3710, file: !164, line: 707, baseType: !3709, size: 64, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3710, file: !164, line: 709, baseType: !3715, size: 64, offset: 576)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3710, file: !164, line: 711, baseType: !16, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3710, file: !164, line: 712, baseType: !3719, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3731, !3736, !3740}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3721, file: !164, line: 90, baseType: !16, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3721, file: !164, line: 91, baseType: !1503, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3721, file: !164, line: 92, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!22, !3729, !1459}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3721, file: !164, line: 93, baseType: !3732, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!439, !3729, !3735, !633, !634}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3721, file: !164, line: 95, baseType: !3737, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3709}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3721, file: !164, line: 97, baseType: !3741, size: 64, offset: 320)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !171, line: 286, size: 1472, elements: !3744)
!3744 = !{!3745, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3743, file: !171, line: 287, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!22, !3709}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3743, file: !171, line: 288, baseType: !3737, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3743, file: !171, line: 289, baseType: !3746, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3743, file: !171, line: 290, baseType: !3746, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3743, file: !171, line: 291, baseType: !3746, size: 64, offset: 256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3743, file: !171, line: 292, baseType: !3746, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3743, file: !171, line: 293, baseType: !3746, size: 64, offset: 384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3743, file: !171, line: 294, baseType: !3746, size: 64, offset: 448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3743, file: !171, line: 295, baseType: !3746, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3743, file: !171, line: 296, baseType: !3746, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3743, file: !171, line: 297, baseType: !3746, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3743, file: !171, line: 298, baseType: !3746, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3743, file: !171, line: 299, baseType: !3746, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3743, file: !171, line: 300, baseType: !3746, size: 64, offset: 832)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3743, file: !171, line: 301, baseType: !3746, size: 64, offset: 896)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3743, file: !171, line: 302, baseType: !3746, size: 64, offset: 960)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3743, file: !171, line: 303, baseType: !3746, size: 64, offset: 1024)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3743, file: !171, line: 304, baseType: !3746, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3743, file: !171, line: 305, baseType: !3746, size: 64, offset: 1152)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3743, file: !171, line: 306, baseType: !3746, size: 64, offset: 1216)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3743, file: !171, line: 307, baseType: !3746, size: 64, offset: 1280)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3743, file: !171, line: 308, baseType: !3746, size: 64, offset: 1344)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3743, file: !171, line: 309, baseType: !3746, size: 64, offset: 1408)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3710, file: !164, line: 714, baseType: !3772, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3775, line: 80, size: 1344, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3840}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3774, file: !3775, line: 81, baseType: !16, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3774, file: !3775, line: 82, baseType: !16, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3774, file: !3775, line: 83, baseType: !1503, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3774, file: !3775, line: 84, baseType: !1503, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3774, file: !3775, line: 85, baseType: !1503, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3774, file: !3775, line: 87, baseType: !3783, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!22, !3709, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3799, !3803, !3804, !3805, !3806, !3807, !3815, !3816, !3817, !3818, !3819, !3820}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3787, file: !158, line: 97, baseType: !16, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3787, file: !158, line: 98, baseType: !3772, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3787, file: !158, line: 100, baseType: !1410, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3787, file: !158, line: 101, baseType: !16, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3787, file: !158, line: 103, baseType: !428, size: 8, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3787, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3787, file: !158, line: 106, baseType: !3796, size: 64, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3798)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !158, line: 106, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3787, file: !158, line: 107, baseType: !3800, size: 64, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !158, line: 107, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3787, file: !158, line: 109, baseType: !3746, size: 64, offset: 448)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3787, file: !158, line: 110, baseType: !3737, size: 64, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3787, file: !158, line: 111, baseType: !3746, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3787, file: !158, line: 112, baseType: !3737, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3787, file: !158, line: 113, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!22, !3709, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !171, line: 60, baseType: !3812)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !171, line: 58, size: 32, elements: !3813)
!3813 = !{!3814}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3812, file: !171, line: 59, baseType: !22, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3787, file: !158, line: 114, baseType: !3746, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3787, file: !158, line: 115, baseType: !1503, size: 64, offset: 832)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3787, file: !158, line: 116, baseType: !1503, size: 64, offset: 896)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3787, file: !158, line: 118, baseType: !3741, size: 64, offset: 960)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3787, file: !158, line: 119, baseType: !3737, size: 64, offset: 1024)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3787, file: !158, line: 121, baseType: !3821, size: 64, offset: 1088)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3774, file: !3775, line: 88, baseType: !3726, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3774, file: !3775, line: 89, baseType: !3746, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3774, file: !3775, line: 90, baseType: !3737, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3774, file: !3775, line: 91, baseType: !3737, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3774, file: !3775, line: 92, baseType: !3737, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3774, file: !3775, line: 94, baseType: !3746, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3774, file: !3775, line: 95, baseType: !3746, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3774, file: !3775, line: 97, baseType: !3808, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3774, file: !3775, line: 98, baseType: !3746, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3774, file: !3775, line: 100, baseType: !3746, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3774, file: !3775, line: 102, baseType: !3746, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3774, file: !3775, line: 103, baseType: !3737, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3774, file: !3775, line: 105, baseType: !3741, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3774, file: !3775, line: 107, baseType: !3837, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3775, line: 107, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3774, file: !3775, line: 109, baseType: !428, size: 8, offset: 1280)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3710, file: !164, line: 715, baseType: !3786, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3710, file: !164, line: 717, baseType: !20, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3710, file: !164, line: 719, baseType: !20, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3710, file: !164, line: 721, baseType: !1030, size: 256, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3710, file: !164, line: 725, baseType: !3846, size: 448, offset: 1280)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3846, file: !164, line: 518, baseType: !97, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3846, file: !164, line: 519, baseType: !97, size: 128, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3846, file: !164, line: 520, baseType: !97, size: 128, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3846, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3710, file: !164, line: 726, baseType: !3853, size: 2496, offset: 1728)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !171, line: 663, size: 2496, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3937, !3941}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3853, file: !171, line: 664, baseType: !3811, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3853, file: !171, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3853, file: !171, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3853, file: !171, line: 667, baseType: !428, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3853, file: !171, line: 668, baseType: !428, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3853, file: !171, line: 669, baseType: !428, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3853, file: !171, line: 670, baseType: !428, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3853, file: !171, line: 671, baseType: !428, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3853, file: !171, line: 672, baseType: !428, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3853, file: !171, line: 673, baseType: !428, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3853, file: !171, line: 674, baseType: !428, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3853, file: !171, line: 675, baseType: !384, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3853, file: !171, line: 676, baseType: !59, size: 32, offset: 96)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3853, file: !171, line: 678, baseType: !97, size: 128, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3853, file: !171, line: 679, baseType: !608, size: 256, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3853, file: !171, line: 680, baseType: !3871, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3873, line: 43, size: 1536, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3872, file: !3873, line: 44, baseType: !16, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3872, file: !3873, line: 45, baseType: !22, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3872, file: !3873, line: 46, baseType: !97, size: 128, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3872, file: !3873, line: 47, baseType: !59, size: 32, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3872, file: !3873, line: 48, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !171, line: 629, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3872, file: !3873, line: 49, baseType: !2456, size: 320, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3872, file: !3873, line: 50, baseType: !39, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3872, file: !3873, line: 51, baseType: !818, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3872, file: !3873, line: 52, baseType: !818, size: 64, offset: 832)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3872, file: !3873, line: 53, baseType: !818, size: 64, offset: 896)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3872, file: !3873, line: 54, baseType: !818, size: 64, offset: 960)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3872, file: !3873, line: 55, baseType: !818, size: 64, offset: 1024)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3872, file: !3873, line: 56, baseType: !39, size: 64, offset: 1088)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3872, file: !3873, line: 57, baseType: !39, size: 64, offset: 1152)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3872, file: !3873, line: 58, baseType: !39, size: 64, offset: 1216)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3872, file: !3873, line: 59, baseType: !39, size: 64, offset: 1280)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3872, file: !3873, line: 60, baseType: !39, size: 64, offset: 1344)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3872, file: !3873, line: 61, baseType: !3709, size: 64, offset: 1408)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3872, file: !3873, line: 62, baseType: !428, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3872, file: !3873, line: 63, baseType: !428, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3853, file: !171, line: 681, baseType: !428, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3853, file: !171, line: 682, baseType: !428, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3853, file: !171, line: 683, baseType: !428, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3853, file: !171, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3853, file: !171, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3853, file: !171, line: 690, baseType: !810, size: 512, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3853, file: !171, line: 691, baseType: !317, size: 64, offset: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3853, file: !171, line: 692, baseType: !569, size: 256, offset: 1216)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3853, file: !171, line: 693, baseType: !54, size: 192, offset: 1472)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3853, file: !171, line: 694, baseType: !3880, size: 64, offset: 1664)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3853, file: !171, line: 695, baseType: !49, size: 32, offset: 1728)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3853, file: !171, line: 696, baseType: !49, size: 32, offset: 1760)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3853, file: !171, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3853, file: !171, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3853, file: !171, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3853, file: !171, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3853, file: !171, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3853, file: !171, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3853, file: !171, line: 703, baseType: !428, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3853, file: !171, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3853, file: !171, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3853, file: !171, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3853, file: !171, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3853, file: !171, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3853, file: !171, line: 709, baseType: !7, size: 32, offset: 1824)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3853, file: !171, line: 710, baseType: !170, size: 32, offset: 1856)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3853, file: !171, line: 711, baseType: !178, size: 32, offset: 1888)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3853, file: !171, line: 712, baseType: !178, size: 32, offset: 1920)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3853, file: !171, line: 713, baseType: !22, size: 32, offset: 1952)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3853, file: !171, line: 714, baseType: !22, size: 32, offset: 1984)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3853, file: !171, line: 715, baseType: !317, size: 64, offset: 2048)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3853, file: !171, line: 716, baseType: !317, size: 64, offset: 2112)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3853, file: !171, line: 717, baseType: !317, size: 64, offset: 2176)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3853, file: !171, line: 718, baseType: !317, size: 64, offset: 2240)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3853, file: !171, line: 720, baseType: !3932, size: 64, offset: 2304)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !171, line: 632, size: 64, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3933, file: !171, line: 633, baseType: !59, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3933, file: !171, line: 634, baseType: !7, size: 32, offset: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3853, file: !171, line: 721, baseType: !3938, size: 64, offset: 2368)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3709, !339}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3853, file: !171, line: 722, baseType: !3942, size: 64, offset: 2432)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !171, line: 722, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3710, file: !164, line: 727, baseType: !3945, size: 64, offset: 4224)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !171, line: 742, size: 1792, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3954, !3955, !3956}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3946, file: !171, line: 743, baseType: !3743, size: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3946, file: !171, line: 744, baseType: !3746, size: 64, offset: 1472)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3946, file: !171, line: 745, baseType: !3951, size: 64, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !3709, !428}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3946, file: !171, line: 746, baseType: !3746, size: 64, offset: 1600)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3946, file: !171, line: 747, baseType: !3737, size: 64, offset: 1664)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3946, file: !171, line: 748, baseType: !3737, size: 64, offset: 1728)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3710, file: !164, line: 736, baseType: !3958, size: 128, offset: 4288)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !3959)
!3959 = !{!3960, !3964}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3958, file: !164, line: 531, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3963, line: 13, flags: DIFlagFwdDecl)
!3963 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3958, file: !164, line: 532, baseType: !3965, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3710, file: !164, line: 738, baseType: !3968, size: 64, offset: 4416)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3710, file: !164, line: 740, baseType: !3972, size: 64, offset: 4480)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3710, file: !164, line: 741, baseType: !317, size: 64, offset: 4544)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3710, file: !164, line: 746, baseType: !317, size: 64, offset: 4608)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3710, file: !164, line: 747, baseType: !3976, size: 64, offset: 4672)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3978)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3710, file: !164, line: 749, baseType: !3980, size: 64, offset: 4736)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3981, file: !164, line: 433, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3981, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3981, file: !164, line: 435, baseType: !39, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3710, file: !164, line: 751, baseType: !97, size: 128, offset: 4800)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3710, file: !164, line: 762, baseType: !3988, size: 64, offset: 4928)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3710, file: !164, line: 770, baseType: !3991, offset: 4992)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3992, line: 5, elements: !1009)
!3992 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3710, file: !164, line: 772, baseType: !3994, size: 64, offset: 4992)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3996, line: 18, flags: DIFlagFwdDecl)
!3996 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3710, file: !164, line: 773, baseType: !3998, size: 64, offset: 5056)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4000, line: 41, size: 512, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4001 = !{!4002, !4003, !4097, !4098, !4099, !4100}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3999, file: !4000, line: 42, baseType: !3998, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3999, file: !4000, line: 43, baseType: !4004, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4006)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4000, line: 125, size: 1408, elements: !4007)
!4007 = !{!4008, !4012, !4016, !4022, !4026, !4027, !4032, !4036, !4040, !4044, !4048, !4049, !4053, !4057, !4061, !4072, !4073, !4074, !4075, !4085, !4089, !4093}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4006, file: !4000, line: 126, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!3998, !3998}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4006, file: !4000, line: 127, baseType: !4013, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3998}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4006, file: !4000, line: 128, baseType: !4017, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!428, !4020}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3999)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4006, file: !4000, line: 129, baseType: !4023, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!2053, !4020, !3729}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4006, file: !4000, line: 131, baseType: !4017, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4006, file: !4000, line: 133, baseType: !4028, size: 64, offset: 320)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!4031, !4020}
!4031 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4000, line: 132, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4006, file: !4000, line: 134, baseType: !4033, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!428, !4020, !16}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4006, file: !4000, line: 136, baseType: !4037, size: 64, offset: 448)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!22, !4020, !16, !7, !20, !35}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4006, file: !4000, line: 141, baseType: !4041, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!22, !4020, !16, !2533, !35}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4006, file: !4000, line: 144, baseType: !4045, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!16, !4020}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4006, file: !4000, line: 145, baseType: !4045, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4006, file: !4000, line: 146, baseType: !4050, size: 64, offset: 704)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!3998, !4020}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4006, file: !4000, line: 148, baseType: !4054, size: 64, offset: 768)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!3998, !4020, !3998}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4006, file: !4000, line: 151, baseType: !4058, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!3998, !4020, !16}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4006, file: !4000, line: 153, baseType: !4062, size: 64, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!22, !4020, !16, !16, !7, !7, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4000, line: 94, size: 640, elements: !4067)
!4067 = !{!4068, !4069, !4070}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4066, file: !4000, line: 95, baseType: !3998, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4066, file: !4000, line: 96, baseType: !7, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4066, file: !4000, line: 97, baseType: !4071, size: 512, offset: 128)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 512, elements: !853)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4006, file: !4000, line: 158, baseType: !4054, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4006, file: !4000, line: 161, baseType: !4050, size: 64, offset: 1024)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4006, file: !4000, line: 163, baseType: !4009, size: 64, offset: 1088)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4006, file: !4000, line: 164, baseType: !4076, size: 64, offset: 1152)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!22, !4020, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4000, line: 73, size: 128, elements: !4081)
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4080, file: !4000, line: 74, baseType: !7, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4080, file: !4000, line: 75, baseType: !7, size: 32, offset: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4080, file: !4000, line: 76, baseType: !4020, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4006, file: !4000, line: 166, baseType: !4086, size: 64, offset: 1216)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!20, !3998, !22}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4006, file: !4000, line: 167, baseType: !4090, size: 64, offset: 1280)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!22, !4020, !7}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4006, file: !4000, line: 168, baseType: !4094, size: 64, offset: 1344)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!22, !3998}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3999, file: !4000, line: 44, baseType: !3709, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3999, file: !4000, line: 45, baseType: !97, size: 128, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3999, file: !4000, line: 46, baseType: !97, size: 128, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3999, file: !4000, line: 47, baseType: !83, size: 8, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3710, file: !164, line: 776, baseType: !22, size: 32, offset: 5120)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3710, file: !164, line: 778, baseType: !1249, size: 32, offset: 5152)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3710, file: !164, line: 779, baseType: !384, size: 32, offset: 5184)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3710, file: !164, line: 781, baseType: !59, size: 32, offset: 5216)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3710, file: !164, line: 782, baseType: !97, size: 128, offset: 5248)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3710, file: !164, line: 784, baseType: !4107, size: 64, offset: 5376)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4109)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4110, line: 52, size: 768, elements: !4111)
!4110 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4111 = !{!4112, !4113, !4114, !4115, !4116, !4120, !4124, !4125, !4126, !4127, !4131, !4135}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4109, file: !4110, line: 53, baseType: !16, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4109, file: !4110, line: 55, baseType: !1503, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4109, file: !4110, line: 56, baseType: !1503, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4109, file: !4110, line: 58, baseType: !3726, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4109, file: !4110, line: 59, baseType: !4117, size: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!439, !3729, !3735}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4109, file: !4110, line: 61, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !4107}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4109, file: !4110, line: 62, baseType: !3737, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4109, file: !4110, line: 64, baseType: !3746, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4109, file: !4110, line: 66, baseType: !2036, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4109, file: !4110, line: 67, baseType: !4128, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!2053, !3729}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4109, file: !4110, line: 69, baseType: !4132, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !3729, !633, !634}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4109, file: !4110, line: 71, baseType: !3741, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3710, file: !164, line: 785, baseType: !1503, size: 64, offset: 5440)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3710, file: !164, line: 787, baseType: !3737, size: 64, offset: 5504)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3710, file: !164, line: 788, baseType: !4139, size: 64, offset: 5568)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3710, file: !164, line: 789, baseType: !4142, size: 64, offset: 5632)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3710, file: !164, line: 791, baseType: !4145, size: 64, offset: 5696)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4146, file: !164, line: 598, baseType: !185, size: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4146, file: !164, line: 599, baseType: !194, size: 32, offset: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4146, file: !164, line: 600, baseType: !199, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4146, file: !164, line: 601, baseType: !428, size: 8, offset: 96)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4146, file: !164, line: 602, baseType: !428, size: 8, offset: 104)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3710, file: !164, line: 793, baseType: !204, size: 32, offset: 5760)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3710, file: !164, line: 795, baseType: !428, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3710, file: !164, line: 796, baseType: !428, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3710, file: !164, line: 797, baseType: !428, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3710, file: !164, line: 798, baseType: !428, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3710, file: !164, line: 799, baseType: !428, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3703, file: !3704, line: 197, baseType: !4160, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !4162, line: 441, size: 1472, elements: !4163)
!4162 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!4163 = !{!4164, !4165, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4195, !4196, !4199, !4200, !4202, !4323, !4326, !4327, !4443}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4161, file: !4162, line: 442, baseType: !2204, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !4161, file: !4162, line: 443, baseType: !4166, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4161, file: !4162, line: 444, baseType: !1410, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4161, file: !4162, line: 445, baseType: !16, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4161, file: !4162, line: 446, baseType: !16, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !4161, file: !4162, line: 447, baseType: !22, size: 32, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4161, file: !4162, line: 448, baseType: !22, size: 32, offset: 352)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !4161, file: !4162, line: 449, baseType: !22, size: 32, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4161, file: !4162, line: 450, baseType: !7, size: 32, offset: 416)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4161, file: !4162, line: 451, baseType: !389, size: 16, offset: 448)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !4161, file: !4162, line: 452, baseType: !389, size: 16, offset: 464)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !4161, file: !4162, line: 453, baseType: !4177, size: 352, offset: 480)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !4178, line: 30, size: 352, elements: !4179)
!4178 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!4179 = !{!4180, !4182, !4183, !4184, !4185, !4188, !4192, !4194}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !4177, file: !4178, line: 31, baseType: !4181, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !4178, line: 7, baseType: !7)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !4177, file: !4178, line: 32, baseType: !4181, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !4177, file: !4178, line: 33, baseType: !4181, size: 32, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !4177, file: !4178, line: 34, baseType: !4181, size: 32, offset: 96)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !4177, file: !4178, line: 35, baseType: !4186, size: 8, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !4187, line: 5, baseType: !87)
!4187 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !4177, file: !4178, line: 36, baseType: !4189, size: 152, offset: 136)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, size: 152, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 19)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !4177, file: !4178, line: 37, baseType: !4193, size: 32, offset: 288)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !4187, line: 6, baseType: !7)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !4177, file: !4178, line: 38, baseType: !4193, size: 32, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4161, file: !4162, line: 454, baseType: !39, size: 64, offset: 832)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !4161, file: !4162, line: 455, baseType: !4197, size: 64, offset: 896)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4162, line: 455, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !4161, file: !4162, line: 456, baseType: !4160, size: 64, offset: 960)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !4161, file: !4162, line: 461, baseType: !4201, size: 64, offset: 1024)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !4161, file: !4162, line: 462, baseType: !4203, size: 64, offset: 1088)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !4206, line: 101, size: 3008, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!4207 = !{!4208, !4240, !4241, !4242, !4264, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4292, !4318, !4319, !4320, !4321, !4322}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4205, file: !4206, line: 102, baseType: !4209, size: 1088)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !4210, line: 35, size: 1088, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!4211 = !{!4212, !4229, !4230, !4231, !4232, !4233, !4237, !4238, !4239}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4209, file: !4210, line: 36, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !4210, line: 10, size: 256, elements: !4215)
!4215 = !{!4216, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4214, file: !4210, line: 11, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4214, file: !4210, line: 11, size: 64, elements: !4218)
!4218 = !{!4219, !4220}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4217, file: !4210, line: 12, baseType: !4213, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4217, file: !4210, line: 13, baseType: !716, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4214, file: !4210, line: 15, baseType: !7, size: 32, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4214, file: !4210, line: 16, baseType: !7, size: 32, offset: 96)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4214, file: !4210, line: 17, baseType: !7, size: 32, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4214, file: !4210, line: 18, baseType: !7, size: 32, offset: 160)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4214, file: !4210, line: 19, baseType: !7, size: 32, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4214, file: !4210, line: 20, baseType: !428, size: 8, offset: 224)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4214, file: !4210, line: 22, baseType: !4228, align: 64, offset: 256)
!4228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !685)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4209, file: !4210, line: 37, baseType: !569, size: 256, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4209, file: !4210, line: 38, baseType: !1030, size: 256, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4209, file: !4210, line: 39, baseType: !49, size: 32, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !4209, file: !4210, line: 40, baseType: !4214, size: 256, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4209, file: !4210, line: 41, baseType: !4234, size: 64, offset: 896)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !717, line: 56, size: 64, elements: !4235)
!4235 = !{!4236}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4234, file: !717, line: 57, baseType: !720, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !4209, file: !4210, line: 42, baseType: !49, size: 32, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !4209, file: !4210, line: 43, baseType: !22, size: 32, offset: 992)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4209, file: !4210, line: 44, baseType: !4213, size: 64, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4205, file: !4206, line: 103, baseType: !3702, size: 64, offset: 1088)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !4205, file: !4206, line: 104, baseType: !3702, size: 64, offset: 1152)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4205, file: !4206, line: 105, baseType: !4243, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !4206, line: 33, size: 320, elements: !4246)
!4246 = !{!4247, !4251, !4255, !4259, !4263}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4245, file: !4206, line: 34, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!428, !4204}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4245, file: !4206, line: 35, baseType: !4252, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !4204, !428}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4245, file: !4206, line: 36, baseType: !4256, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4204}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4245, file: !4206, line: 37, baseType: !4260, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!22, !4204, !3702}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4245, file: !4206, line: 38, baseType: !4256, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !4205, file: !4206, line: 106, baseType: !4265, size: 64, offset: 1280)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !4206, line: 41, size: 192, elements: !4268)
!4268 = !{!4269, !4275, !4279}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4267, file: !4206, line: 42, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!35, !4204, !4273, !4273, !35}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4267, file: !4206, line: 44, baseType: !4276, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !4204, !4273, !4273, !35}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4267, file: !4206, line: 46, baseType: !4256, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4205, file: !4206, line: 107, baseType: !59, size: 32, offset: 1344)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !4205, file: !4206, line: 108, baseType: !22, size: 32, offset: 1376)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4205, file: !4206, line: 109, baseType: !22, size: 32, offset: 1408)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4205, file: !4206, line: 110, baseType: !54, size: 192, offset: 1472)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !4205, file: !4206, line: 111, baseType: !54, size: 192, offset: 1664)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4205, file: !4206, line: 112, baseType: !39, size: 64, offset: 1856)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !4205, file: !4206, line: 113, baseType: !39, size: 64, offset: 1920)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !4205, file: !4206, line: 114, baseType: !87, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4205, file: !4206, line: 115, baseType: !1030, size: 256, offset: 2048)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !4205, file: !4206, line: 116, baseType: !1030, size: 256, offset: 2304)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !4205, file: !4206, line: 117, baseType: !4291, size: 64, offset: 2560)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !4205, file: !4206, line: 118, baseType: !4293, size: 192, offset: 2624)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4205, file: !4206, line: 118, size: 192, elements: !4294)
!4294 = !{!4295, !4316}
!4295 = !DIDerivedType(tag: DW_TAG_member, scope: !4293, file: !4206, line: 118, baseType: !4296, size: 192)
!4296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4293, file: !4206, line: 118, size: 192, elements: !4297)
!4297 = !{!4298, !4307, !4308, !4309, !4314, !4315}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !4296, file: !4206, line: 118, baseType: !4299, size: 192)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !4300, line: 44, size: 192, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!4301 = !{!4302, !4303, !4304, !4305, !4306}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4299, file: !4300, line: 45, baseType: !7, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4299, file: !4300, line: 46, baseType: !7, size: 32, offset: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4299, file: !4300, line: 47, baseType: !7, size: 32, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !4299, file: !4300, line: 48, baseType: !7, size: 32, offset: 96)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4299, file: !4300, line: 49, baseType: !20, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4296, file: !4206, line: 118, baseType: !4291, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !4296, file: !4206, line: 118, baseType: !1172, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !4296, file: !4206, line: 118, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !4312)
!4312 = !{!4313}
!4313 = !DISubrange(count: 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4296, file: !4206, line: 118, baseType: !4291, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !4296, file: !4206, line: 118, baseType: !1172, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4293, file: !4206, line: 118, baseType: !4317, offset: 192)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, elements: !4312)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !4205, file: !4206, line: 119, baseType: !7, size: 32, offset: 2816)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !4205, file: !4206, line: 120, baseType: !7, size: 32, offset: 2848)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !4205, file: !4206, line: 121, baseType: !22, size: 32, offset: 2880)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4205, file: !4206, line: 122, baseType: !2204, size: 32, offset: 2912)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !4205, file: !4206, line: 123, baseType: !20, size: 64, offset: 2944)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !4161, file: !4162, line: 463, baseType: !4324, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !4161, file: !4162, line: 464, baseType: !20, size: 64, offset: 1216)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4161, file: !4162, line: 470, baseType: !4328, size: 64, offset: 1280)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !4162, line: 357, size: 2176, elements: !4331)
!4331 = !{!4332, !4336, !4340, !4344, !4348, !4352, !4356, !4357, !4361, !4365, !4366, !4370, !4371, !4375, !4379, !4385, !4386, !4387, !4388, !4389, !4390, !4394, !4395, !4396, !4397, !4401, !4405, !4409, !4413, !4425, !4431, !4437, !4438, !4442}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !4330, file: !4162, line: 358, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!3702, !4160, !1016, !22}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !4330, file: !4162, line: 360, baseType: !4337, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!22, !4160, !3702}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4330, file: !4162, line: 361, baseType: !4341, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{null, !4160, !3702}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4330, file: !4162, line: 362, baseType: !4345, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!22, !3702, !1016}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4330, file: !4162, line: 363, baseType: !4349, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{null, !3702, !1016}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4330, file: !4162, line: 364, baseType: !4353, size: 64, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{null, !3702}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4330, file: !4162, line: 365, baseType: !4353, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4330, file: !4162, line: 366, baseType: !4358, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!1327, !3702, !4273, !35}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !4330, file: !4162, line: 367, baseType: !4362, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!22, !3702, !83}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !4330, file: !4162, line: 368, baseType: !4353, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !4330, file: !4162, line: 369, baseType: !4367, size: 64, offset: 640)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!7, !3702}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !4330, file: !4162, line: 370, baseType: !4367, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4330, file: !4162, line: 371, baseType: !4372, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!22, !3702, !7, !39}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4330, file: !4162, line: 373, baseType: !4376, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!673, !3702, !7, !39}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4330, file: !4162, line: 375, baseType: !4380, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{null, !3702, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4330, file: !4162, line: 376, baseType: !4353, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !4330, file: !4162, line: 377, baseType: !4353, size: 64, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4330, file: !4162, line: 378, baseType: !4353, size: 64, offset: 1088)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4330, file: !4162, line: 379, baseType: !4353, size: 64, offset: 1152)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4330, file: !4162, line: 380, baseType: !4353, size: 64, offset: 1216)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !4330, file: !4162, line: 381, baseType: !4391, size: 64, offset: 1280)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!22, !3702, !22}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4330, file: !4162, line: 382, baseType: !4353, size: 64, offset: 1344)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !4330, file: !4162, line: 383, baseType: !4391, size: 64, offset: 1408)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !4330, file: !4162, line: 384, baseType: !4353, size: 64, offset: 1472)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !4330, file: !4162, line: 385, baseType: !4398, size: 64, offset: 1536)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !3702, !22}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !4330, file: !4162, line: 386, baseType: !4402, size: 64, offset: 1600)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !3702, !18}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !4330, file: !4162, line: 387, baseType: !4406, size: 64, offset: 1664)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!22, !3702}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !4330, file: !4162, line: 388, baseType: !4410, size: 64, offset: 1728)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!22, !3702, !7, !7}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !4330, file: !4162, line: 390, baseType: !4414, size: 64, offset: 1792)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!22, !3702, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !4419, line: 15, size: 64, elements: !4420)
!4419 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !4418, file: !4419, line: 16, baseType: !26, size: 16)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !4418, file: !4419, line: 17, baseType: !26, size: 16, offset: 16)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !4418, file: !4419, line: 18, baseType: !26, size: 16, offset: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !4418, file: !4419, line: 19, baseType: !26, size: 16, offset: 48)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !4330, file: !4162, line: 391, baseType: !4426, size: 64, offset: 1856)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!22, !3702, !4429}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !4162, line: 16, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !4330, file: !4162, line: 393, baseType: !4432, size: 64, offset: 1920)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!22, !3702, !4435}
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !4162, line: 17, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !4330, file: !4162, line: 394, baseType: !4432, size: 64, offset: 1984)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4330, file: !4162, line: 395, baseType: !4439, size: 64, offset: 2048)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !3702, !2115}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !4330, file: !4162, line: 401, baseType: !2145, size: 64, offset: 2112)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !4161, file: !4162, line: 471, baseType: !97, size: 128, offset: 1344)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3703, file: !3704, line: 198, baseType: !4204, size: 64, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3703, file: !3704, line: 199, baseType: !4328, size: 64, offset: 256)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3703, file: !3704, line: 201, baseType: !4447, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4449, line: 269, size: 128, elements: !4450)
!4449 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!4450 = !{!4451, !4492}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4448, file: !4449, line: 270, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4449, line: 231, size: 1152, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4465, !4469, !4470, !4471, !4472, !4476, !4477, !4481, !4482, !4486, !4490, !4491}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4453, file: !4449, line: 232, baseType: !439, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4453, file: !4449, line: 233, baseType: !22, size: 32, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4453, file: !4449, line: 238, baseType: !4406, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4453, file: !4449, line: 239, baseType: !4353, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4453, file: !4449, line: 240, baseType: !4353, size: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4453, file: !4449, line: 241, baseType: !4461, size: 64, offset: 320)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!1327, !3702, !1016, !4464, !35, !1925, !39}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4453, file: !4449, line: 243, baseType: !4466, size: 64, offset: 384)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!1327, !3702, !1016, !4273, !35}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4453, file: !4449, line: 245, baseType: !4372, size: 64, offset: 448)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4453, file: !4449, line: 247, baseType: !4372, size: 64, offset: 512)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4453, file: !4449, line: 249, baseType: !4380, size: 64, offset: 576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4453, file: !4449, line: 250, baseType: !4473, size: 64, offset: 640)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!2182, !3702, !1016, !2184}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4453, file: !4449, line: 252, baseType: !4353, size: 64, offset: 704)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4453, file: !4449, line: 257, baseType: !4478, size: 64, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !3702, !4273, !4273, !35}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4453, file: !4449, line: 259, baseType: !4353, size: 64, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4453, file: !4449, line: 260, baseType: !4483, size: 64, offset: 896)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !3702, !428}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4453, file: !4449, line: 261, baseType: !4487, size: 64, offset: 960)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!35, !3702, !4273, !4273, !35}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !4453, file: !4449, line: 263, baseType: !4478, size: 64, offset: 1024)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4453, file: !4449, line: 266, baseType: !1410, size: 64, offset: 1088)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4448, file: !4449, line: 271, baseType: !3702, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3703, file: !3704, line: 202, baseType: !4494, size: 384, offset: 384)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4449, line: 17, size: 384, elements: !4495)
!4495 = !{!4496, !4497, !4498, !4499, !4500}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4494, file: !4449, line: 18, baseType: !281, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4494, file: !4449, line: 19, baseType: !365, size: 32, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !4494, file: !4449, line: 20, baseType: !7, size: 32, offset: 96)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !4494, file: !4449, line: 21, baseType: !97, size: 128, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !4494, file: !4449, line: 22, baseType: !97, size: 128, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3703, file: !3704, line: 204, baseType: !1030, size: 256, offset: 768)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3703, file: !3704, line: 205, baseType: !1030, size: 256, offset: 1024)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3703, file: !3704, line: 206, baseType: !1030, size: 256, offset: 1280)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3703, file: !3704, line: 207, baseType: !354, size: 320, offset: 1536)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3703, file: !3704, line: 208, baseType: !1030, size: 256, offset: 1856)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3703, file: !3704, line: 209, baseType: !4177, size: 352, offset: 2112)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3703, file: !3704, line: 209, baseType: !4177, size: 352, offset: 2464)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3703, file: !3704, line: 210, baseType: !4509, size: 512, offset: 2816)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1466)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3703, file: !3704, line: 211, baseType: !39, size: 64, offset: 3328)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3703, file: !3704, line: 212, baseType: !22, size: 32, offset: 3392)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3703, file: !3704, line: 213, baseType: !7, size: 32, offset: 3424)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3703, file: !3704, line: 214, baseType: !4418, size: 64, offset: 3456)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3703, file: !3704, line: 221, baseType: !4515, size: 64, align: 64, offset: 3520)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3703, file: !3704, line: 216, size: 64, align: 64, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4515, file: !3704, line: 217, baseType: !59, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !4515, file: !3704, line: 218, baseType: !428, size: 8, offset: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !4515, file: !3704, line: 219, baseType: !428, size: 8, offset: 40)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4515, file: !3704, line: 220, baseType: !4521, offset: 64)
!4521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !4312)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3703, file: !3704, line: 230, baseType: !4523, size: 192, align: 64, offset: 3584)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3703, file: !3704, line: 223, size: 192, align: 64, elements: !4524)
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4530}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !4523, file: !3704, line: 224, baseType: !1066, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !4523, file: !3704, line: 225, baseType: !1066, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4523, file: !3704, line: 226, baseType: !59, size: 32, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !4523, file: !3704, line: 227, baseType: !87, size: 8, offset: 160)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4523, file: !3704, line: 228, baseType: !428, size: 8, offset: 168)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4523, file: !3704, line: 229, baseType: !4521, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3703, file: !3704, line: 232, baseType: !428, size: 8, offset: 3776)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3703, file: !3704, line: 233, baseType: !428, size: 8, offset: 3784)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3703, file: !3704, line: 234, baseType: !22, size: 32, offset: 3808)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3703, file: !3704, line: 236, baseType: !3702, size: 64, offset: 3840)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3703, file: !3704, line: 237, baseType: !4536, size: 64, offset: 3904)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !226, line: 1083, size: 384, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4537, file: !226, line: 1084, baseType: !1043, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4537, file: !226, line: 1085, baseType: !22, size: 32, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4537, file: !226, line: 1086, baseType: !22, size: 32, offset: 96)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4537, file: !226, line: 1087, baseType: !4536, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4537, file: !226, line: 1088, baseType: !1016, size: 64, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4537, file: !226, line: 1089, baseType: !418, size: 128, align: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3703, file: !3704, line: 238, baseType: !54, size: 192, offset: 3968)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3703, file: !3704, line: 239, baseType: !54, size: 192, offset: 4160)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3703, file: !3704, line: 240, baseType: !569, size: 256, offset: 4352)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3703, file: !3704, line: 241, baseType: !20, size: 64, offset: 4608)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3703, file: !3704, line: 242, baseType: !20, size: 64, offset: 4672)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3703, file: !3704, line: 243, baseType: !59, size: 32, offset: 4736)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3703, file: !3704, line: 244, baseType: !22, size: 32, offset: 4768)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3703, file: !3704, line: 245, baseType: !4291, size: 64, offset: 4800)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3703, file: !3704, line: 247, baseType: !97, size: 128, offset: 4864)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3703, file: !3704, line: 250, baseType: !569, size: 256, offset: 4992)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3636, file: !3637, line: 185, baseType: !4556, size: 64, offset: 3328)
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !861, line: 860, baseType: !4557)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !861, line: 853, size: 64, elements: !4558)
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4557, file: !861, line: 858, baseType: !1146, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4557, file: !861, line: 859, baseType: !59, size: 32, offset: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3636, file: !3637, line: 186, baseType: !317, size: 64, offset: 3392)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3636, file: !3637, line: 186, baseType: !317, size: 64, offset: 3456)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3636, file: !3637, line: 186, baseType: !317, size: 64, offset: 3520)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3636, file: !3637, line: 186, baseType: !317, size: 64, offset: 3584)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3636, file: !3637, line: 187, baseType: !317, size: 64, offset: 3648)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3636, file: !3637, line: 188, baseType: !317, size: 64, offset: 3712)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3636, file: !3637, line: 189, baseType: !3549, size: 192, offset: 3776)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3636, file: !3637, line: 190, baseType: !39, size: 64, offset: 3968)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3636, file: !3637, line: 190, baseType: !39, size: 64, offset: 4032)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3636, file: !3637, line: 190, baseType: !39, size: 64, offset: 4096)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3636, file: !3637, line: 190, baseType: !39, size: 64, offset: 4160)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3636, file: !3637, line: 191, baseType: !39, size: 64, offset: 4224)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3636, file: !3637, line: 191, baseType: !39, size: 64, offset: 4288)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3636, file: !3637, line: 191, baseType: !39, size: 64, offset: 4352)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3636, file: !3637, line: 191, baseType: !39, size: 64, offset: 4416)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3636, file: !3637, line: 192, baseType: !39, size: 64, offset: 4480)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3636, file: !3637, line: 192, baseType: !39, size: 64, offset: 4544)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3636, file: !3637, line: 192, baseType: !39, size: 64, offset: 4608)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3636, file: !3637, line: 192, baseType: !39, size: 64, offset: 4672)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3636, file: !3637, line: 193, baseType: !39, size: 64, offset: 4736)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3636, file: !3637, line: 193, baseType: !39, size: 64, offset: 4800)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3636, file: !3637, line: 194, baseType: !4583, size: 448, offset: 4864)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4584, line: 12, size: 448, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4583, file: !4584, line: 15, baseType: !317, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4583, file: !4584, line: 17, baseType: !317, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4583, file: !4584, line: 19, baseType: !317, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4583, file: !4584, line: 21, baseType: !317, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4583, file: !4584, line: 29, baseType: !317, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4583, file: !4584, line: 35, baseType: !317, size: 64, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4583, file: !4584, line: 44, baseType: !317, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3636, file: !3637, line: 202, baseType: !319, size: 64, offset: 5312)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3636, file: !3637, line: 213, baseType: !4595, size: 2048, offset: 5376)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4596, size: 2048, elements: !2971)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4597, line: 43, size: 128, elements: !4598)
!4597 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4598 = !{!4599, !4600}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4596, file: !4597, line: 44, baseType: !38, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4596, file: !4597, line: 45, baseType: !38, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3636, file: !3637, line: 216, baseType: !4602, size: 448, offset: 7424)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3637, line: 30, size: 448, elements: !4603)
!4603 = !{!4604, !4605, !4606, !4607, !4608, !4609, !4610}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4602, file: !3637, line: 31, baseType: !22, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4602, file: !3637, line: 32, baseType: !673, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4602, file: !3637, line: 33, baseType: !39, size: 64, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4602, file: !3637, line: 34, baseType: !317, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4602, file: !3637, line: 34, baseType: !317, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4602, file: !3637, line: 35, baseType: !39, size: 64, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4602, file: !3637, line: 35, baseType: !39, size: 64, offset: 384)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3636, file: !3637, line: 219, baseType: !4612, size: 64, offset: 7872)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3637, line: 219, flags: DIFlagFwdDecl)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3636, file: !3637, line: 222, baseType: !7, size: 32, offset: 7936)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3636, file: !3637, line: 223, baseType: !4616, size: 64, offset: 8000)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3637, line: 223, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3636, file: !3637, line: 230, baseType: !428, size: 8, offset: 8064)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3636, file: !3637, line: 231, baseType: !389, size: 16, offset: 8080)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3636, file: !3637, line: 232, baseType: !389, size: 16, offset: 8096)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3636, file: !3637, line: 234, baseType: !988, size: 64, offset: 8128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3636, file: !3637, line: 237, baseType: !1030, size: 256, offset: 8192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3636, file: !3637, line: 243, baseType: !354, size: 320, offset: 8448)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !694, file: !695, line: 1111, baseType: !4625, size: 64, offset: 15424)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3637, line: 20, size: 16640, elements: !4627)
!4627 = !{!4628, !4629, !4630, !4631}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4626, file: !3637, line: 21, baseType: !59, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4626, file: !3637, line: 22, baseType: !331, size: 32, offset: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4626, file: !3637, line: 23, baseType: !54, size: 192, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4626, file: !3637, line: 24, baseType: !4632, size: 16384, offset: 256)
!4632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4633, size: 16384, elements: !1466)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3648, line: 51, size: 256, elements: !4634)
!4634 = !{!4635}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4633, file: !3648, line: 52, baseType: !4636, size: 256)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3648, line: 37, size: 256, elements: !4637)
!4637 = !{!4638, !4645, !4646, !4650}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4636, file: !3648, line: 39, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4640, line: 83, baseType: !4641)
!4640 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4640, line: 82, baseType: !4643)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !22}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4636, file: !3648, line: 40, baseType: !39, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4636, file: !3648, line: 46, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4640, line: 86, baseType: !4648)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4640, line: 85, baseType: !2561)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4636, file: !3648, line: 48, baseType: !3652, size: 64, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !694, file: !695, line: 1112, baseType: !3652, size: 64, offset: 15488)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !694, file: !695, line: 1113, baseType: !3652, size: 64, offset: 15552)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !694, file: !695, line: 1115, baseType: !3652, size: 64, offset: 15616)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !694, file: !695, line: 1116, baseType: !3647, size: 192, offset: 15680)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !694, file: !695, line: 1117, baseType: !39, size: 64, offset: 15872)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !694, file: !695, line: 1118, baseType: !35, size: 64, offset: 15936)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !694, file: !695, line: 1119, baseType: !7, size: 32, offset: 16000)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !694, file: !695, line: 1121, baseType: !421, size: 64, offset: 16064)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !694, file: !695, line: 1125, baseType: !4660, size: 64, offset: 16128)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !695, line: 43, flags: DIFlagFwdDecl)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !694, file: !695, line: 1127, baseType: !290, size: 32, offset: 16192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !694, file: !695, line: 1128, baseType: !7, size: 32, offset: 16224)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !694, file: !695, line: 1130, baseType: !4665, size: 128, offset: 16256)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4666, line: 37, size: 128, elements: !4667)
!4666 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4667 = !{!4668, !4669, !4670}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4665, file: !4666, line: 38, baseType: !22, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4665, file: !4666, line: 39, baseType: !49, size: 32, offset: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4665, file: !4666, line: 40, baseType: !4671, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4666, line: 24, flags: DIFlagFwdDecl)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !694, file: !695, line: 1131, baseType: !4674, size: 256, offset: 16384)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4675, line: 12, size: 256, elements: !4676)
!4675 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4676 = !{!4677, !4678, !4679, !4680}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4674, file: !4675, line: 13, baseType: !439, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4674, file: !4675, line: 14, baseType: !39, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4674, file: !4675, line: 15, baseType: !39, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4674, file: !4675, line: 16, baseType: !428, size: 8, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !694, file: !695, line: 1134, baseType: !317, size: 64, offset: 16640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !694, file: !695, line: 1135, baseType: !317, size: 64, offset: 16704)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !694, file: !695, line: 1138, baseType: !59, size: 32, offset: 16768)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !694, file: !695, line: 1141, baseType: !365, size: 32, offset: 16800)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !694, file: !695, line: 1143, baseType: !4686, size: 64, offset: 16832)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !695, line: 735, size: 64, elements: !4687)
!4687 = !{!4688}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4686, file: !695, line: 736, baseType: !4689, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !694, file: !695, line: 1147, baseType: !874, size: 128, offset: 16896)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !694, file: !695, line: 1149, baseType: !693, size: 64, offset: 17024)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !694, file: !695, line: 1151, baseType: !4693, size: 64, offset: 17088)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !695, line: 1151, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !694, file: !695, line: 1188, baseType: !20, size: 64, offset: 17152)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !694, file: !695, line: 1191, baseType: !4697, size: 64, offset: 17216)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !695, line: 44, flags: DIFlagFwdDecl)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !694, file: !695, line: 1194, baseType: !4700, size: 64, offset: 17280)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !695, line: 45, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !694, file: !695, line: 1197, baseType: !4703, size: 64, offset: 17344)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !695, line: 61, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !694, file: !695, line: 1199, baseType: !4706, size: 64, offset: 17408)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4708, line: 99, size: 128, elements: !4709)
!4708 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4709 = !{!4710, !4711, !4712}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4707, file: !4708, line: 100, baseType: !281, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4707, file: !4708, line: 101, baseType: !49, size: 32, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4707, file: !4708, line: 103, baseType: !26, size: 16, offset: 96)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !694, file: !695, line: 1202, baseType: !4714, size: 64, offset: 17472)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !695, line: 48, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !694, file: !695, line: 1205, baseType: !39, size: 64, offset: 17536)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !694, file: !695, line: 1206, baseType: !4718, size: 64, offset: 17600)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3648, line: 14, baseType: !4720)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3648, line: 12, size: 384, elements: !4721)
!4721 = !{!4722}
!4722 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !3648, line: 13, baseType: !4723, size: 384)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4720, file: !3648, line: 13, size: 384, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4723, file: !3648, line: 13, baseType: !22, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4723, file: !3648, line: 13, baseType: !22, size: 32, offset: 32)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4723, file: !3648, line: 13, baseType: !22, size: 32, offset: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4723, file: !3648, line: 13, baseType: !4729, size: 256, offset: 128)
!4729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4730, line: 37, size: 256, elements: !4731)
!4730 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4731 = !{!4732, !4737, !4750, !4756, !4765, !4792, !4797}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4729, file: !4730, line: 42, baseType: !4733, size: 64)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 39, size: 64, elements: !4734)
!4734 = !{!4735, !4736}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4733, file: !4730, line: 40, baseType: !3526, size: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4733, file: !4730, line: 41, baseType: !296, size: 32, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4729, file: !4730, line: 50, baseType: !4738, size: 192)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 45, size: 192, elements: !4739)
!4739 = !{!4740, !4742, !4743, !4749}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4738, file: !4730, line: 46, baseType: !4741, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4738, file: !4730, line: 47, baseType: !22, size: 32, offset: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4738, file: !4730, line: 48, baseType: !4744, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4730, line: 11, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4730, line: 8, size: 64, elements: !4746)
!4746 = !{!4747, !4748}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4745, file: !4730, line: 9, baseType: !22, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4745, file: !4730, line: 10, baseType: !20, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4738, file: !4730, line: 49, baseType: !22, size: 32, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4729, file: !4730, line: 57, baseType: !4751, size: 128)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 53, size: 128, elements: !4752)
!4752 = !{!4753, !4754, !4755}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4751, file: !4730, line: 54, baseType: !3526, size: 32)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4751, file: !4730, line: 55, baseType: !296, size: 32, offset: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4751, file: !4730, line: 56, baseType: !4744, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4729, file: !4730, line: 66, baseType: !4757, size: 256)
!4757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 60, size: 256, elements: !4758)
!4758 = !{!4759, !4760, !4761, !4762, !4764}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4757, file: !4730, line: 61, baseType: !3526, size: 32)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4757, file: !4730, line: 62, baseType: !296, size: 32, offset: 32)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4757, file: !4730, line: 63, baseType: !22, size: 32, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4757, file: !4730, line: 64, baseType: !4763, size: 64, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1329)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4757, file: !4730, line: 65, baseType: !4763, size: 64, offset: 192)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4729, file: !4730, line: 105, baseType: !4766, size: 256)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 69, size: 256, elements: !4767)
!4767 = !{!4768, !4769}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4766, file: !4730, line: 70, baseType: !20, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, scope: !4766, file: !4730, line: 79, baseType: !4770, size: 192, offset: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4766, file: !4730, line: 79, size: 192, elements: !4771)
!4771 = !{!4772, !4773, !4774, !4781, !4786}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4770, file: !4730, line: 81, baseType: !22, size: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4770, file: !4730, line: 86, baseType: !389, size: 16)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4770, file: !4730, line: 92, baseType: !4775, size: 192)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4770, file: !4730, line: 88, size: 192, elements: !4776)
!4776 = !{!4777, !4779, !4780}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4775, file: !4730, line: 89, baseType: !4778, size: 64)
!4778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !853)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4775, file: !4730, line: 90, baseType: !20, size: 64, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4775, file: !4730, line: 91, baseType: !20, size: 64, offset: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4770, file: !4730, line: 97, baseType: !4782, size: 96)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4770, file: !4730, line: 94, size: 96, elements: !4783)
!4783 = !{!4784, !4785}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4782, file: !4730, line: 95, baseType: !4778, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4782, file: !4730, line: 96, baseType: !385, size: 32, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4770, file: !4730, line: 103, baseType: !4787, size: 128)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4770, file: !4730, line: 99, size: 128, elements: !4788)
!4788 = !{!4789, !4790, !4791}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4787, file: !4730, line: 100, baseType: !39, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4787, file: !4730, line: 101, baseType: !385, size: 32, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4787, file: !4730, line: 102, baseType: !385, size: 32, offset: 96)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4729, file: !4730, line: 111, baseType: !4793, size: 128)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 108, size: 128, elements: !4794)
!4794 = !{!4795, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4793, file: !4730, line: 109, baseType: !673, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4793, file: !4730, line: 110, baseType: !22, size: 32, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4729, file: !4730, line: 118, baseType: !4798, size: 128)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4729, file: !4730, line: 114, size: 128, elements: !4799)
!4799 = !{!4800, !4801, !4802}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4798, file: !4730, line: 115, baseType: !20, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4798, file: !4730, line: 116, baseType: !22, size: 32, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4798, file: !4730, line: 117, baseType: !7, size: 32, offset: 96)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !694, file: !695, line: 1208, baseType: !4583, size: 448, offset: 17664)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !694, file: !695, line: 1215, baseType: !317, size: 64, offset: 18112)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !694, file: !695, line: 1217, baseType: !317, size: 64, offset: 18176)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !694, file: !695, line: 1219, baseType: !317, size: 64, offset: 18240)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !694, file: !695, line: 1223, baseType: !4808, size: 64, offset: 18304)
!4808 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4809, line: 99, baseType: !4810)
!4809 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4809, line: 99, size: 64, elements: !4811)
!4811 = !{!4812}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4810, file: !4809, line: 99, baseType: !939, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !694, file: !695, line: 1225, baseType: !1146, size: 32, offset: 18368)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !694, file: !695, line: 1226, baseType: !22, size: 32, offset: 18400)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !694, file: !695, line: 1227, baseType: !22, size: 32, offset: 18432)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !694, file: !695, line: 1231, baseType: !4817, size: 64, offset: 18496)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !695, line: 1231, flags: DIFlagFwdDecl)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !694, file: !695, line: 1233, baseType: !97, size: 128, offset: 18560)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !694, file: !695, line: 1240, baseType: !4821, size: 64, offset: 18688)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !695, line: 62, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !694, file: !695, line: 1242, baseType: !4824, size: 64, offset: 18752)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !695, line: 1242, flags: DIFlagFwdDecl)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !694, file: !695, line: 1244, baseType: !97, size: 128, offset: 18816)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !694, file: !695, line: 1245, baseType: !4828, size: 64, offset: 18944)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !695, line: 51, flags: DIFlagFwdDecl)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !694, file: !695, line: 1246, baseType: !1030, size: 256, offset: 19008)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !694, file: !695, line: 1247, baseType: !7, size: 32, offset: 19264)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !694, file: !695, line: 1250, baseType: !4833, size: 64, offset: 19328)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !695, line: 57, flags: DIFlagFwdDecl)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !694, file: !695, line: 1251, baseType: !1030, size: 256, offset: 19392)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !694, file: !695, line: 1252, baseType: !97, size: 128, offset: 19648)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !694, file: !695, line: 1259, baseType: !1750, size: 64, offset: 19776)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !694, file: !695, line: 1260, baseType: !389, size: 16, offset: 19840)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !694, file: !695, line: 1261, baseType: !389, size: 16, offset: 19856)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !694, file: !695, line: 1314, baseType: !4841, size: 64, offset: 19904)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4843, line: 62, size: 256, align: 256, elements: !4844)
!4843 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4850, !4851}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4842, file: !4843, line: 75, baseType: !385, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4842, file: !4843, line: 90, baseType: !385, size: 32, offset: 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4842, file: !4843, line: 112, baseType: !318, size: 64, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4842, file: !4843, line: 132, baseType: !385, size: 32, offset: 128)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4842, file: !4843, line: 140, baseType: !385, size: 32, offset: 160)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4842, file: !4843, line: 149, baseType: !385, size: 32, offset: 192)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4842, file: !4843, line: 154, baseType: !4852, offset: 224)
!4852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !685)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !694, file: !695, line: 1315, baseType: !384, size: 32, offset: 19968)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !694, file: !695, line: 1316, baseType: !384, size: 32, offset: 20000)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !694, file: !695, line: 1321, baseType: !39, size: 64, offset: 20032)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !694, file: !695, line: 1325, baseType: !22, size: 32, offset: 20096)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !694, file: !695, line: 1326, baseType: !22, size: 32, offset: 20128)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !694, file: !695, line: 1327, baseType: !22, size: 32, offset: 20160)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !694, file: !695, line: 1328, baseType: !22, size: 32, offset: 20192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !694, file: !695, line: 1329, baseType: !418, size: 128, align: 64, offset: 20224)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !694, file: !695, line: 1332, baseType: !4862, size: 128, offset: 20352)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4863, line: 51, size: 128, elements: !4864)
!4863 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4864 = !{!4865, !4870, !4871}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4862, file: !4863, line: 60, baseType: !4866, size: 64)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4867, line: 7, size: 64, elements: !4868)
!4867 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4868 = !{!4869}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4866, file: !4867, line: 12, baseType: !936, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4862, file: !4863, line: 63, baseType: !428, size: 8, offset: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4862, file: !4863, line: 70, baseType: !428, size: 8, offset: 72)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !694, file: !695, line: 1335, baseType: !3209, size: 64, offset: 20480)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !694, file: !695, line: 1337, baseType: !4874, size: 128, offset: 20544)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4863, line: 39, size: 128, elements: !4875)
!4875 = !{!4876, !4877, !4878}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4874, file: !4863, line: 40, baseType: !1547, size: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4874, file: !4863, line: 42, baseType: !385, size: 32, offset: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4874, file: !4863, line: 43, baseType: !385, size: 32, offset: 96)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !694, file: !695, line: 1340, baseType: !4880, size: 64, offset: 20672)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !695, line: 69, flags: DIFlagFwdDecl)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !694, file: !695, line: 1351, baseType: !22, size: 32, offset: 20736)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !694, file: !695, line: 1352, baseType: !22, size: 32, offset: 20768)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !694, file: !695, line: 1354, baseType: !39, size: 64, offset: 20800)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !694, file: !695, line: 1364, baseType: !317, size: 64, offset: 20864)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !694, file: !695, line: 1365, baseType: !317, size: 64, offset: 20928)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !694, file: !695, line: 1412, baseType: !39, size: 64, offset: 20992)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !694, file: !695, line: 1453, baseType: !4889, size: 64, offset: 21056)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !695, line: 1453, flags: DIFlagFwdDecl)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !694, file: !695, line: 1457, baseType: !4892, size: 64, offset: 21120)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !211, line: 61, size: 576, elements: !4894)
!4894 = !{!4895, !4896, !4915, !4918, !4919, !4952, !4962}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4893, file: !211, line: 62, baseType: !210, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, scope: !4893, file: !211, line: 64, baseType: !4897, size: 192, offset: 64)
!4897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4893, file: !211, line: 64, size: 192, elements: !4898)
!4898 = !{!4899, !4910}
!4899 = !DIDerivedType(tag: DW_TAG_member, scope: !4897, file: !211, line: 65, baseType: !4900, size: 192)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4897, file: !211, line: 65, size: 192, elements: !4901)
!4901 = !{!4902, !4909}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4900, file: !211, line: 66, baseType: !4903, size: 128)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4904, line: 50, size: 128, elements: !4905)
!4904 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4905 = !{!4906, !4907, !4908}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4903, file: !4904, line: 52, baseType: !39, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4903, file: !4904, line: 54, baseType: !7, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4903, file: !4904, line: 55, baseType: !7, size: 32, offset: 96)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4900, file: !211, line: 67, baseType: !39, size: 64, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, scope: !4897, file: !211, line: 70, baseType: !4911, size: 192)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4897, file: !211, line: 70, size: 192, elements: !4912)
!4912 = !{!4913, !4914}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4911, file: !211, line: 71, baseType: !418, size: 128, align: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4911, file: !211, line: 72, baseType: !39, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4893, file: !211, line: 76, baseType: !4916, size: 64, offset: 256)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !211, line: 76, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4893, file: !211, line: 77, baseType: !39, size: 64, offset: 320)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4893, file: !211, line: 79, baseType: !4920, size: 64, offset: 384)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4904, line: 25, size: 256, elements: !4922)
!4922 = !{!4923, !4929, !4933}
!4923 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4904, line: 26, baseType: !4924, size: 128)
!4924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4904, line: 26, size: 128, elements: !4925)
!4925 = !{!4926, !4928}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4924, file: !4904, line: 27, baseType: !4927, size: 128)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !2971)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4924, file: !4904, line: 28, baseType: !4927, size: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4921, file: !4904, line: 31, baseType: !4930, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4932)
!4932 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4904, line: 23, flags: DIFlagFwdDecl)
!4933 = !DIDerivedType(tag: DW_TAG_member, scope: !4921, file: !4904, line: 33, baseType: !4934, size: 64, offset: 192)
!4934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4921, file: !4904, line: 33, size: 64, elements: !4935)
!4935 = !{!4936, !4942, !4947}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4934, file: !4904, line: 38, baseType: !4937, size: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !4904, line: 34, size: 64, elements: !4938)
!4938 = !{!4939, !4940, !4941}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4937, file: !4904, line: 35, baseType: !339, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4937, file: !4904, line: 36, baseType: !83, size: 8, offset: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4937, file: !4904, line: 37, baseType: !83, size: 8, offset: 40)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4934, file: !4904, line: 42, baseType: !4943, size: 16)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !4904, line: 39, size: 16, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4943, file: !4904, line: 40, baseType: !83, size: 8)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4943, file: !4904, line: 41, baseType: !83, size: 8, offset: 8)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4934, file: !4904, line: 46, baseType: !4948, size: 16)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4934, file: !4904, line: 43, size: 16, elements: !4949)
!4949 = !{!4950, !4951}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4948, file: !4904, line: 44, baseType: !83, size: 8)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4948, file: !4904, line: 45, baseType: !83, size: 8, offset: 8)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4893, file: !211, line: 81, baseType: !4953, size: 64, offset: 448)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !211, line: 85, size: 384, elements: !4955)
!4955 = !{!4956, !4957, !4958, !4959, !4960, !4961}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4954, file: !211, line: 86, baseType: !4916, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4954, file: !211, line: 87, baseType: !39, size: 64, offset: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4954, file: !211, line: 88, baseType: !39, size: 64, offset: 128)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4954, file: !211, line: 89, baseType: !39, size: 64, offset: 192)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4954, file: !211, line: 90, baseType: !428, size: 8, offset: 256)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4954, file: !211, line: 92, baseType: !4953, size: 64, offset: 320)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4893, file: !211, line: 82, baseType: !7, size: 32, offset: 512)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !694, file: !695, line: 1463, baseType: !4964, offset: 21184)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !695, line: 739, elements: !1009)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !694, file: !695, line: 1470, baseType: !418, size: 128, align: 64, offset: 21184)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !694, file: !695, line: 1471, baseType: !331, size: 32, offset: 21312)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !694, file: !695, line: 1472, baseType: !22, size: 32, offset: 21344)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !694, file: !695, line: 1474, baseType: !693, size: 64, offset: 21376)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !694, file: !695, line: 1475, baseType: !2456, size: 320, offset: 21440)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !694, file: !695, line: 1478, baseType: !4971, size: 64, offset: 21760)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4973, line: 49, size: 512, elements: !4974)
!4973 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4974 = !{!4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4984}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4972, file: !4973, line: 50, baseType: !4971, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4972, file: !4973, line: 51, baseType: !20, size: 64, offset: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4972, file: !4973, line: 52, baseType: !39, size: 64, offset: 128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4972, file: !4973, line: 53, baseType: !39, size: 64, offset: 192)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4972, file: !4973, line: 54, baseType: !1924, size: 64, offset: 256)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4972, file: !4973, line: 56, baseType: !7, size: 32, offset: 320)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4972, file: !4973, line: 58, baseType: !7, size: 32, offset: 352)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4972, file: !4973, line: 59, baseType: !4983, size: 64, offset: 384)
!4983 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !25, line: 159, baseType: !317)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4972, file: !4973, line: 60, baseType: !2053, size: 64, offset: 448)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !694, file: !695, line: 1482, baseType: !331, size: 32, offset: 21824)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !694, file: !695, line: 1489, baseType: !20, size: 64, offset: 21888)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !694, file: !695, line: 1504, baseType: !20, size: 64, offset: 21952)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !694, file: !695, line: 1505, baseType: !318, size: 64, offset: 22016)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !694, file: !695, line: 1506, baseType: !317, size: 64, offset: 22080)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !694, file: !695, line: 1507, baseType: !318, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !694, file: !695, line: 1508, baseType: !318, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !694, file: !695, line: 1509, baseType: !318, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !694, file: !695, line: 1510, baseType: !418, size: 128, align: 64, offset: 22208)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !694, file: !695, line: 1511, baseType: !22, size: 32, offset: 22336)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !694, file: !695, line: 1515, baseType: !4234, size: 64, offset: 22400)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !694, file: !695, line: 1518, baseType: !4234, size: 64, offset: 22464)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !694, file: !695, line: 1528, baseType: !418, size: 128, align: 64, offset: 22528)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !694, file: !695, line: 1552, baseType: !4999, size: 35328, offset: 23040)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5000, line: 430, size: 35328, elements: !5001)
!5000 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5001 = !{!5002, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5031, !5032, !5033, !5034, !5035, !5036, !5039, !5040, !5041, !5042}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4999, file: !5000, line: 432, baseType: !5003, size: 192)
!5003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5004, size: 192, elements: !1062)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5005, line: 16, size: 64, elements: !5006)
!5005 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5006 = !{!5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5004, file: !5005, line: 17, baseType: !93, size: 16)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5004, file: !5005, line: 18, baseType: !93, size: 16, offset: 16)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5004, file: !5005, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5004, file: !5005, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5004, file: !5005, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5004, file: !5005, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5004, file: !5005, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5004, file: !5005, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5004, file: !5005, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5004, file: !5005, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5004, file: !5005, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5004, file: !5005, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5004, file: !5005, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4999, file: !5000, line: 436, baseType: !39, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4999, file: !5000, line: 440, baseType: !26, size: 16, offset: 256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4999, file: !5000, line: 441, baseType: !26, size: 16, offset: 272)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4999, file: !5000, line: 442, baseType: !26, size: 16, offset: 288)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4999, file: !5000, line: 443, baseType: !26, size: 16, offset: 304)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4999, file: !5000, line: 447, baseType: !39, size: 64, offset: 320)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4999, file: !5000, line: 448, baseType: !39, size: 64, offset: 384)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4999, file: !5000, line: 459, baseType: !5028, size: 256, offset: 448)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5029, size: 256, elements: !449)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5000, line: 428, flags: DIFlagFwdDecl)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4999, file: !5000, line: 461, baseType: !39, size: 64, offset: 704)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4999, file: !5000, line: 463, baseType: !39, size: 64, offset: 768)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4999, file: !5000, line: 465, baseType: !39, size: 64, offset: 832)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4999, file: !5000, line: 466, baseType: !39, size: 64, offset: 896)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4999, file: !5000, line: 467, baseType: !39, size: 64, offset: 960)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4999, file: !5000, line: 473, baseType: !5037, size: 64, offset: 1024)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5000, line: 10, flags: DIFlagFwdDecl)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4999, file: !5000, line: 480, baseType: !39, size: 64, offset: 1088)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4999, file: !5000, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4999, file: !5000, line: 491, baseType: !384, size: 32, offset: 1184)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4999, file: !5000, line: 501, baseType: !5043, size: 33792, offset: 1536)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5044, line: 448, size: 33792, elements: !5045)
!5044 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5045 = !{!5046, !5047, !5048, !5209, !5210, !5216, !5217}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5043, file: !5044, line: 461, baseType: !7, size: 32)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5043, file: !5044, line: 468, baseType: !39, size: 64, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5043, file: !5044, line: 476, baseType: !5049, size: 64, offset: 128)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5044, line: 356, size: 33280, align: 512, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5050, file: !5044, line: 358, baseType: !7, size: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5050, file: !5044, line: 361, baseType: !7, size: 32, offset: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5050, file: !5044, line: 364, baseType: !317, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5050, file: !5044, line: 367, baseType: !317, size: 64, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5050, file: !5044, line: 370, baseType: !317, size: 64, offset: 192)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5050, file: !5044, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5050, file: !5044, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5050, file: !5044, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5050, file: !5044, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5050, file: !5044, line: 397, baseType: !5062, size: 32768, offset: 512)
!5062 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5044, line: 348, size: 32768, elements: !5063)
!5063 = !{!5064, !5079, !5116, !5193, !5205}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5062, file: !5044, line: 349, baseType: !5065, size: 896)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5044, line: 12, size: 896, elements: !5066)
!5066 = !{!5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5078}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5065, file: !5044, line: 13, baseType: !384, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5065, file: !5044, line: 14, baseType: !384, size: 32, offset: 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5065, file: !5044, line: 15, baseType: !384, size: 32, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5065, file: !5044, line: 16, baseType: !384, size: 32, offset: 96)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5065, file: !5044, line: 17, baseType: !384, size: 32, offset: 128)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5065, file: !5044, line: 18, baseType: !384, size: 32, offset: 160)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5065, file: !5044, line: 19, baseType: !384, size: 32, offset: 192)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5065, file: !5044, line: 22, baseType: !5075, size: 640, offset: 224)
!5075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 640, elements: !5076)
!5076 = !{!5077}
!5077 = !DISubrange(count: 20)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5065, file: !5044, line: 25, baseType: !384, size: 32, offset: 864)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5062, file: !5044, line: 350, baseType: !5080, size: 4096, align: 128)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5044, line: 34, size: 4096, align: 128, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5101, !5102, !5103, !5105, !5107, !5111}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5080, file: !5044, line: 35, baseType: !93, size: 16)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5080, file: !5044, line: 36, baseType: !93, size: 16, offset: 16)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5080, file: !5044, line: 37, baseType: !93, size: 16, offset: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5080, file: !5044, line: 38, baseType: !93, size: 16, offset: 48)
!5086 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !5044, line: 39, baseType: !5087, size: 128, offset: 64)
!5087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5080, file: !5044, line: 39, size: 128, elements: !5088)
!5088 = !{!5089, !5094}
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5087, file: !5044, line: 40, baseType: !5090, size: 128)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5087, file: !5044, line: 40, size: 128, elements: !5091)
!5091 = !{!5092, !5093}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5090, file: !5044, line: 41, baseType: !317, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5090, file: !5044, line: 42, baseType: !317, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, scope: !5087, file: !5044, line: 44, baseType: !5095, size: 128)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5087, file: !5044, line: 44, size: 128, elements: !5096)
!5096 = !{!5097, !5098, !5099, !5100}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5095, file: !5044, line: 45, baseType: !384, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5095, file: !5044, line: 46, baseType: !384, size: 32, offset: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5095, file: !5044, line: 47, baseType: !384, size: 32, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5095, file: !5044, line: 48, baseType: !384, size: 32, offset: 96)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5080, file: !5044, line: 51, baseType: !384, size: 32, offset: 192)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5080, file: !5044, line: 52, baseType: !384, size: 32, offset: 224)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5080, file: !5044, line: 55, baseType: !5104, size: 1024, offset: 256)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1024, elements: !2962)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5080, file: !5044, line: 58, baseType: !5106, size: 2048, offset: 1280)
!5106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 2048, elements: !1466)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5080, file: !5044, line: 60, baseType: !5108, size: 384, offset: 3328)
!5108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, elements: !5109)
!5109 = !{!5110}
!5110 = !DISubrange(count: 12)
!5111 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !5044, line: 62, baseType: !5112, size: 384, offset: 3712)
!5112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5080, file: !5044, line: 62, size: 384, elements: !5113)
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5112, file: !5044, line: 63, baseType: !5108, size: 384)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5112, file: !5044, line: 64, baseType: !5108, size: 384)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5062, file: !5044, line: 351, baseType: !5117, size: 1088)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5044, line: 79, size: 1088, elements: !5118)
!5118 = !{!5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5192}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5117, file: !5044, line: 80, baseType: !384, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5117, file: !5044, line: 81, baseType: !384, size: 32, offset: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5117, file: !5044, line: 82, baseType: !384, size: 32, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5117, file: !5044, line: 83, baseType: !384, size: 32, offset: 96)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5117, file: !5044, line: 84, baseType: !384, size: 32, offset: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5117, file: !5044, line: 85, baseType: !384, size: 32, offset: 160)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5117, file: !5044, line: 86, baseType: !384, size: 32, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5117, file: !5044, line: 88, baseType: !5075, size: 640, offset: 224)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5117, file: !5044, line: 89, baseType: !83, size: 8, offset: 864)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5117, file: !5044, line: 90, baseType: !83, size: 8, offset: 872)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5117, file: !5044, line: 91, baseType: !83, size: 8, offset: 880)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5117, file: !5044, line: 92, baseType: !83, size: 8, offset: 888)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5117, file: !5044, line: 93, baseType: !83, size: 8, offset: 896)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5117, file: !5044, line: 94, baseType: !83, size: 8, offset: 904)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5117, file: !5044, line: 95, baseType: !5134, size: 64, offset: 960)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5136, line: 11, size: 128, elements: !5137)
!5136 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5137 = !{!5138, !5139}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5135, file: !5136, line: 12, baseType: !673, size: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5135, file: !5136, line: 13, baseType: !5140, size: 64, offset: 64)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5142, line: 103, size: 1344, elements: !5143)
!5142 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5143 = !{!5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5172, !5173, !5174}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5141, file: !5142, line: 109, baseType: !39, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5141, file: !5142, line: 110, baseType: !39, size: 64, offset: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5141, file: !5142, line: 111, baseType: !39, size: 64, offset: 128)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5141, file: !5142, line: 112, baseType: !39, size: 64, offset: 192)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5141, file: !5142, line: 113, baseType: !39, size: 64, offset: 256)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5141, file: !5142, line: 114, baseType: !39, size: 64, offset: 320)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5141, file: !5142, line: 117, baseType: !39, size: 64, offset: 384)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5141, file: !5142, line: 118, baseType: !39, size: 64, offset: 448)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5141, file: !5142, line: 119, baseType: !39, size: 64, offset: 512)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5141, file: !5142, line: 120, baseType: !39, size: 64, offset: 576)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5141, file: !5142, line: 121, baseType: !39, size: 64, offset: 640)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5141, file: !5142, line: 122, baseType: !39, size: 64, offset: 704)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5141, file: !5142, line: 123, baseType: !39, size: 64, offset: 768)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5141, file: !5142, line: 124, baseType: !39, size: 64, offset: 832)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5141, file: !5142, line: 125, baseType: !39, size: 64, offset: 896)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5141, file: !5142, line: 139, baseType: !39, size: 64, offset: 960)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5141, file: !5142, line: 142, baseType: !39, size: 64, offset: 1024)
!5161 = !DIDerivedType(tag: DW_TAG_member, scope: !5141, file: !5142, line: 144, baseType: !5162, size: 64, offset: 1088)
!5162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5141, file: !5142, line: 144, size: 64, elements: !5163)
!5163 = !{!5164, !5165, !5166}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5162, file: !5142, line: 146, baseType: !93, size: 16)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5162, file: !5142, line: 148, baseType: !317, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5162, file: !5142, line: 150, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5142, line: 59, size: 64, elements: !5168)
!5168 = !{!5169, !5170, !5171}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5167, file: !5142, line: 61, baseType: !317, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5167, file: !5142, line: 63, baseType: !317, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5167, file: !5142, line: 65, baseType: !317, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5141, file: !5142, line: 153, baseType: !39, size: 64, offset: 1152)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5141, file: !5142, line: 154, baseType: !39, size: 64, offset: 1216)
!5174 = !DIDerivedType(tag: DW_TAG_member, scope: !5141, file: !5142, line: 156, baseType: !5175, size: 64, offset: 1280)
!5175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5141, file: !5142, line: 156, size: 64, elements: !5176)
!5176 = !{!5177, !5178, !5179}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5175, file: !5142, line: 158, baseType: !93, size: 16)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5175, file: !5142, line: 160, baseType: !317, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5175, file: !5142, line: 162, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5142, line: 69, size: 64, elements: !5181)
!5181 = !{!5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5180, file: !5142, line: 71, baseType: !317, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5180, file: !5142, line: 73, baseType: !317, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5180, file: !5142, line: 75, baseType: !317, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5180, file: !5142, line: 77, baseType: !317, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5180, file: !5142, line: 80, baseType: !317, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5180, file: !5142, line: 83, baseType: !317, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5180, file: !5142, line: 86, baseType: !317, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5180, file: !5142, line: 88, baseType: !317, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5180, file: !5142, line: 93, baseType: !317, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5180, file: !5142, line: 100, baseType: !317, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5117, file: !5044, line: 96, baseType: !384, size: 32, offset: 1024)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5062, file: !5044, line: 352, baseType: !5194, size: 4608, align: 512)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5044, line: 333, size: 4608, align: 512, elements: !5195)
!5195 = !{!5196, !5197, !5204}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5194, file: !5044, line: 334, baseType: !5080, size: 4096, align: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5194, file: !5044, line: 335, baseType: !5198, size: 512, offset: 4096)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5044, line: 312, size: 512, elements: !5199)
!5199 = !{!5200, !5201, !5202}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5198, file: !5044, line: 313, baseType: !317, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5198, file: !5044, line: 314, baseType: !317, size: 64, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5198, file: !5044, line: 315, baseType: !5203, size: 384, offset: 128)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, elements: !407)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5194, file: !5044, line: 336, baseType: !4228, offset: 4608)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5062, file: !5044, line: 353, baseType: !5206, size: 32768)
!5206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !5207)
!5207 = !{!5208}
!5208 = !DISubrange(count: 4096)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5043, file: !5044, line: 484, baseType: !5049, size: 64, offset: 192)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5043, file: !5044, line: 491, baseType: !5211, size: 128, offset: 256)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5044, line: 404, size: 128, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5211, file: !5044, line: 424, baseType: !317, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5211, file: !5044, line: 432, baseType: !7, size: 32, offset: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5211, file: !5044, line: 440, baseType: !7, size: 32, offset: 96)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5043, file: !5044, line: 498, baseType: !5211, size: 128, offset: 384)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5043, file: !5044, line: 508, baseType: !5050, size: 33280, align: 512, offset: 512)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5220)
!5220 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!5221 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !260, line: 250, baseType: !7)
!5222 = !{!5223, !5226, !5231, !0, !5233, !5235, !5237, !5243, !5248, !5251, !5253, !5258, !5260, !5262, !5264, !5266, !5271, !5273, !5278, !5281, !5286, !5288, !5290, !5292, !5295, !5297, !5299, !5308, !5311, !5316, !5321, !5324, !5326, !5328, !5331, !5333}
!5223 = !DIGlobalVariableExpression(var: !5224, expr: !DIExpression())
!5224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !5225, isLocal: true, isDefinition: true)
!5225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !1062)
!5226 = !DIGlobalVariableExpression(var: !5227, expr: !DIExpression())
!5227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 602, type: !5228, isLocal: true, isDefinition: true)
!5228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 144, elements: !5229)
!5229 = !{!5230}
!5230 = !DISubrange(count: 18)
!5231 = !DIGlobalVariableExpression(var: !5232, expr: !DIExpression())
!5232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_devpts__299_619_init_devpts_fs6300", scope: !2, file: !3, line: 619, type: !20, isLocal: true, isDefinition: true)
!5233 = !DIGlobalVariableExpression(var: !5234, expr: !DIExpression())
!5234 = distinct !DIGlobalVariable(name: "pty_limit", scope: !2, file: !3, line: 42, type: !22, isLocal: true, isDefinition: true)
!5235 = !DIGlobalVariableExpression(var: !5236, expr: !DIExpression())
!5236 = distinct !DIGlobalVariable(name: "pty_reserve", scope: !2, file: !3, line: 43, type: !22, isLocal: true, isDefinition: true)
!5237 = !DIGlobalVariableExpression(var: !5238, expr: !DIExpression())
!5238 = distinct !DIGlobalVariable(scope: null, file: !5239, line: 279, type: !5240, isLocal: true, isDefinition: true)
!5239 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 200, elements: !5241)
!5241 = !{!5242}
!5242 = !DISubrange(count: 25)
!5243 = !DIGlobalVariableExpression(var: !5244, expr: !DIExpression())
!5244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !5245, isLocal: true, isDefinition: true)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, elements: !5246)
!5246 = !{!5247}
!5247 = !DISubrange(count: 11)
!5248 = !DIGlobalVariableExpression(var: !5249, expr: !DIExpression())
!5249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !5250, isLocal: true, isDefinition: true)
!5250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !2347)
!5251 = !DIGlobalVariableExpression(var: !5252, expr: !DIExpression())
!5252 = distinct !DIGlobalVariable(name: "devpts_fs_type", scope: !2, file: !3, line: 500, type: !1386, isLocal: true, isDefinition: true)
!5253 = !DIGlobalVariableExpression(var: !5254, expr: !DIExpression())
!5254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !5255, isLocal: true, isDefinition: true)
!5255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 272, elements: !5256)
!5256 = !{!5257}
!5257 = !DISubrange(count: 34)
!5258 = !DIGlobalVariableExpression(var: !5259, expr: !DIExpression())
!5259 = distinct !DIGlobalVariable(name: "devpts_sops", scope: !2, file: !3, line: 404, type: !2578, isLocal: true, isDefinition: true)
!5260 = !DIGlobalVariableExpression(var: !5261, expr: !DIExpression())
!5261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !4778, isLocal: true, isDefinition: true)
!5262 = !DIGlobalVariableExpression(var: !5263, expr: !DIExpression())
!5263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !4778, isLocal: true, isDefinition: true)
!5264 = !DIGlobalVariableExpression(var: !5265, expr: !DIExpression())
!5265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !5245, isLocal: true, isDefinition: true)
!5266 = !DIGlobalVariableExpression(var: !5267, expr: !DIExpression())
!5267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 397, type: !5268, isLocal: true, isDefinition: true)
!5268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 120, elements: !5269)
!5269 = !{!5270}
!5270 = !DISubrange(count: 15)
!5271 = !DIGlobalVariableExpression(var: !5272, expr: !DIExpression())
!5272 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !4778, isLocal: true, isDefinition: true)
!5273 = !DIGlobalVariableExpression(var: !5274, expr: !DIExpression())
!5274 = distinct !DIGlobalVariable(scope: null, file: !250, line: 480, type: !5275, isLocal: true, isDefinition: true)
!5275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !5276)
!5276 = !{!5277}
!5277 = !DISubrange(count: 21)
!5278 = !DIGlobalVariableExpression(var: !5279, expr: !DIExpression())
!5279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !5280, isLocal: true, isDefinition: true)
!5280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16, elements: !2345)
!5281 = !DIGlobalVariableExpression(var: !5282, expr: !DIExpression())
!5282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !5283, isLocal: true, isDefinition: true)
!5283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 296, elements: !5284)
!5284 = !{!5285}
!5285 = !DISubrange(count: 37)
!5286 = !DIGlobalVariableExpression(var: !5287, expr: !DIExpression())
!5287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !5250, isLocal: true, isDefinition: true)
!5288 = !DIGlobalVariableExpression(var: !5289, expr: !DIExpression())
!5289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !5250, isLocal: true, isDefinition: true)
!5290 = !DIGlobalVariableExpression(var: !5291, expr: !DIExpression())
!5291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !4778, isLocal: true, isDefinition: true)
!5292 = !DIGlobalVariableExpression(var: !5293, expr: !DIExpression())
!5293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !5294, isLocal: true, isDefinition: true)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !5109)
!5295 = !DIGlobalVariableExpression(var: !5296, expr: !DIExpression())
!5296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !5294, isLocal: true, isDefinition: true)
!5297 = !DIGlobalVariableExpression(var: !5298, expr: !DIExpression())
!5298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !5250, isLocal: true, isDefinition: true)
!5299 = !DIGlobalVariableExpression(var: !5300, expr: !DIExpression())
!5300 = distinct !DIGlobalVariable(name: "tokens", scope: !2, file: !3, line: 91, type: !5301, isLocal: true, isDefinition: true)
!5301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5302, size: 896, elements: !2347)
!5302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5303)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !5304, line: 14, size: 128, elements: !5305)
!5304 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!5305 = !{!5306, !5307}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !5303, file: !5304, line: 15, baseType: !22, size: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !5303, file: !5304, line: 16, baseType: !16, size: 64, offset: 64)
!5308 = !DIGlobalVariableExpression(var: !5309, expr: !DIExpression())
!5309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !5310, isLocal: true, isDefinition: true)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 40, elements: !538)
!5311 = !DIGlobalVariableExpression(var: !5312, expr: !DIExpression())
!5312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !5313, isLocal: true, isDefinition: true)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !5314)
!5314 = !{!5315}
!5315 = !DISubrange(count: 48)
!5316 = !DIGlobalVariableExpression(var: !5317, expr: !DIExpression())
!5317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !5318, isLocal: true, isDefinition: true)
!5318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !5319)
!5319 = !{!5320}
!5320 = !DISubrange(count: 47)
!5321 = !DIGlobalVariableExpression(var: !5322, expr: !DIExpression())
!5322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !5323, isLocal: true, isDefinition: true)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !449)
!5324 = !DIGlobalVariableExpression(var: !5325, expr: !DIExpression())
!5325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !4778, isLocal: true, isDefinition: true)
!5326 = !DIGlobalVariableExpression(var: !5327, expr: !DIExpression())
!5327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !5225, isLocal: true, isDefinition: true)
!5328 = !DIGlobalVariableExpression(var: !5329, expr: !DIExpression())
!5329 = distinct !DIGlobalVariable(name: "pty_table", scope: !2, file: !3, line: 48, type: !5330, isLocal: true, isDefinition: true)
!5330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !449)
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(name: "pty_limit_min", scope: !2, file: !3, line: 44, type: !22, isLocal: true, isDefinition: true)
!5333 = !DIGlobalVariableExpression(var: !5334, expr: !DIExpression())
!5334 = distinct !DIGlobalVariable(name: "pty_limit_max", scope: !2, file: !3, line: 45, type: !22, isLocal: true, isDefinition: true)
!5335 = !{i32 7, !"Dwarf Version", i32 5}
!5336 = !{i32 2, !"Debug Info Version", i32 3}
!5337 = !{i32 1, !"wchar_size", i32 2}
!5338 = !{i32 8, !"cf-protection-branch", i32 1}
!5339 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5340 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5341 = !{i32 1, !"Code Model", i32 2}
!5342 = !{i32 1, !"override-stack-alignment", i32 8}
!5343 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5344 = distinct !DISubprogram(name: "devpts_mntget", scope: !3, file: !3, line: 150, type: !5345, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5367)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!1135, !1016, !5347}
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pts_fs_info", file: !3, line: 101, size: 512, elements: !5349)
!5349 = !{!5350, !5354, !5365, !5366}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_ptys", scope: !5348, file: !3, line: 102, baseType: !5351, size: 128)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1089, line: 246, size: 128, elements: !5352)
!5352 = !{!5353}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5351, file: !1089, line: 247, baseType: !1092, size: 128)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "mount_opts", scope: !5348, file: !3, line: 103, baseType: !5355, size: 224, offset: 128)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pts_mount_opts", file: !3, line: 75, size: 224, elements: !5356)
!5356 = !{!5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "setuid", scope: !5355, file: !3, line: 76, baseType: !22, size: 32)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "setgid", scope: !5355, file: !3, line: 77, baseType: !22, size: 32, offset: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5355, file: !3, line: 78, baseType: !290, size: 32, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5355, file: !3, line: 79, baseType: !298, size: 32, offset: 96)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5355, file: !3, line: 80, baseType: !24, size: 16, offset: 128)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "ptmxmode", scope: !5355, file: !3, line: 81, baseType: !24, size: 16, offset: 144)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !5355, file: !3, line: 82, baseType: !22, size: 32, offset: 160)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5355, file: !3, line: 83, baseType: !22, size: 32, offset: 192)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !5348, file: !3, line: 104, baseType: !1376, size: 64, offset: 384)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "ptmx_dentry", scope: !5348, file: !3, line: 105, baseType: !1140, size: 64, offset: 448)
!5367 = !{!5368, !5369, !5370, !5371}
!5368 = !DILocalVariable(name: "filp", arg: 1, scope: !5344, file: !3, line: 150, type: !1016)
!5369 = !DILocalVariable(name: "fsi", arg: 2, scope: !5344, file: !3, line: 150, type: !5347)
!5370 = !DILocalVariable(name: "path", scope: !5344, file: !3, line: 152, type: !1131)
!5371 = !DILocalVariable(name: "err", scope: !5344, file: !3, line: 153, type: !22)
!5372 = !DILocation(line: 150, column: 45, scope: !5344)
!5373 = !DILocation(line: 150, column: 71, scope: !5344)
!5374 = !DILocation(line: 152, column: 2, scope: !5344)
!5375 = !DILocation(line: 152, column: 14, scope: !5344)
!5376 = !DILocation(line: 153, column: 2, scope: !5344)
!5377 = !DILocation(line: 153, column: 6, scope: !5344)
!5378 = !DILocation(line: 155, column: 9, scope: !5344)
!5379 = !DILocation(line: 155, column: 15, scope: !5344)
!5380 = !DILocation(line: 156, column: 2, scope: !5344)
!5381 = !DILocation(line: 161, column: 2, scope: !5344)
!5382 = !DILocation(line: 161, column: 14, scope: !5344)
!5383 = !DILocation(line: 161, column: 19, scope: !5344)
!5384 = !DILocation(line: 161, column: 36, scope: !5344)
!5385 = !DILocation(line: 161, column: 28, scope: !5344)
!5386 = !DILocation(line: 162, column: 7, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 162, column: 7)
!5388 = !DILocation(line: 162, column: 24, scope: !5387)
!5389 = !DILocation(line: 162, column: 7, scope: !5344)
!5390 = !DILocation(line: 163, column: 4, scope: !5387)
!5391 = distinct !{!5391, !5381, !5392, !5393, !5394}
!5392 = !DILocation(line: 163, column: 4, scope: !5344)
!5393 = !{!"llvm.loop.mustprogress"}
!5394 = !{!"llvm.loop.unroll.disable"}
!5395 = !DILocation(line: 166, column: 12, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 166, column: 6)
!5397 = !DILocation(line: 166, column: 17, scope: !5396)
!5398 = !DILocation(line: 166, column: 25, scope: !5396)
!5399 = !DILocation(line: 166, column: 33, scope: !5396)
!5400 = !DILocation(line: 166, column: 56, scope: !5396)
!5401 = !DILocation(line: 167, column: 22, scope: !5396)
!5402 = !DILocation(line: 167, column: 27, scope: !5396)
!5403 = !DILocation(line: 167, column: 7, scope: !5396)
!5404 = !DILocation(line: 167, column: 38, scope: !5396)
!5405 = !DILocation(line: 167, column: 35, scope: !5396)
!5406 = !DILocation(line: 166, column: 6, scope: !5344)
!5407 = !DILocation(line: 168, column: 9, scope: !5396)
!5408 = !DILocation(line: 168, column: 7, scope: !5396)
!5409 = !DILocation(line: 168, column: 3, scope: !5396)
!5410 = !DILocation(line: 169, column: 12, scope: !5344)
!5411 = !DILocation(line: 169, column: 2, scope: !5344)
!5412 = !DILocation(line: 170, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 170, column: 6)
!5414 = !DILocation(line: 170, column: 6, scope: !5344)
!5415 = !DILocation(line: 171, column: 22, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 171, column: 7)
!5417 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 170, column: 12)
!5418 = !DILocation(line: 171, column: 27, scope: !5416)
!5419 = !DILocation(line: 171, column: 7, scope: !5416)
!5420 = !DILocation(line: 171, column: 38, scope: !5416)
!5421 = !DILocation(line: 171, column: 35, scope: !5416)
!5422 = !DILocation(line: 171, column: 7, scope: !5417)
!5423 = !DILocation(line: 172, column: 16, scope: !5416)
!5424 = !DILocation(line: 172, column: 4, scope: !5416)
!5425 = !DILocation(line: 174, column: 7, scope: !5417)
!5426 = !DILocation(line: 175, column: 2, scope: !5417)
!5427 = !DILocation(line: 177, column: 14, scope: !5344)
!5428 = !DILocation(line: 177, column: 2, scope: !5344)
!5429 = !DILocation(line: 178, column: 17, scope: !5344)
!5430 = !DILocation(line: 178, column: 9, scope: !5344)
!5431 = !DILocation(line: 178, column: 2, scope: !5344)
!5432 = !DILocation(line: 179, column: 1, scope: !5344)
!5433 = !DISubprogram(name: "path_get", scope: !1132, file: !1132, line: 13, type: !5434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !1296}
!5436 = !DISubprogram(name: "follow_up", scope: !5437, file: !5437, line: 89, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5437 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!22, !3024}
!5440 = distinct !DISubprogram(name: "DEVPTS_SB", scope: !3, file: !3, line: 108, type: !5441, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5443)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!5347, !1376}
!5443 = !{!5444}
!5444 = !DILocalVariable(name: "sb", arg: 1, scope: !5440, file: !3, line: 108, type: !1376)
!5445 = !DILocation(line: 108, column: 65, scope: !5440)
!5446 = !DILocation(line: 110, column: 9, scope: !5440)
!5447 = !DILocation(line: 110, column: 13, scope: !5440)
!5448 = !DILocation(line: 110, column: 2, scope: !5440)
!5449 = distinct !DISubprogram(name: "devpts_ptmx_path", scope: !3, file: !3, line: 113, type: !5438, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5450)
!5450 = !{!5451, !5452, !5453}
!5451 = !DILocalVariable(name: "path", arg: 1, scope: !5449, file: !3, line: 113, type: !3024)
!5452 = !DILocalVariable(name: "sb", scope: !5449, file: !3, line: 115, type: !1376)
!5453 = !DILocalVariable(name: "err", scope: !5449, file: !3, line: 116, type: !22)
!5454 = !DILocation(line: 113, column: 42, scope: !5449)
!5455 = !DILocation(line: 115, column: 2, scope: !5449)
!5456 = !DILocation(line: 115, column: 22, scope: !5449)
!5457 = !DILocation(line: 116, column: 2, scope: !5449)
!5458 = !DILocation(line: 116, column: 6, scope: !5449)
!5459 = !DILocation(line: 119, column: 17, scope: !5449)
!5460 = !DILocation(line: 119, column: 8, scope: !5449)
!5461 = !DILocation(line: 119, column: 6, scope: !5449)
!5462 = !DILocation(line: 120, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 120, column: 6)
!5464 = !DILocation(line: 120, column: 6, scope: !5449)
!5465 = !DILocation(line: 121, column: 10, scope: !5463)
!5466 = !DILocation(line: 121, column: 3, scope: !5463)
!5467 = !DILocation(line: 124, column: 7, scope: !5449)
!5468 = !DILocation(line: 124, column: 13, scope: !5449)
!5469 = !DILocation(line: 124, column: 18, scope: !5449)
!5470 = !DILocation(line: 124, column: 5, scope: !5449)
!5471 = !DILocation(line: 125, column: 7, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 125, column: 6)
!5473 = !DILocation(line: 125, column: 11, scope: !5472)
!5474 = !DILocation(line: 125, column: 19, scope: !5472)
!5475 = !DILocation(line: 125, column: 42, scope: !5472)
!5476 = !DILocation(line: 126, column: 7, scope: !5472)
!5477 = !DILocation(line: 126, column: 13, scope: !5472)
!5478 = !DILocation(line: 126, column: 18, scope: !5472)
!5479 = !DILocation(line: 126, column: 30, scope: !5472)
!5480 = !DILocation(line: 126, column: 34, scope: !5472)
!5481 = !DILocation(line: 126, column: 27, scope: !5472)
!5482 = !DILocation(line: 125, column: 6, scope: !5449)
!5483 = !DILocation(line: 127, column: 3, scope: !5472)
!5484 = !DILocation(line: 129, column: 2, scope: !5449)
!5485 = !DILocation(line: 130, column: 1, scope: !5449)
!5486 = !DISubprogram(name: "dput", scope: !1142, file: !1142, line: 368, type: !3009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5487 = !DISubprogram(name: "mntput", scope: !1137, file: !1137, line: 87, type: !5488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{null, !1135}
!5490 = distinct !DISubprogram(name: "ERR_PTR", scope: !5491, file: !5491, line: 39, type: !5492, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5494)
!5491 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!20, !673}
!5494 = !{!5495}
!5495 = !DILocalVariable(name: "error", arg: 1, scope: !5490, file: !5491, line: 39, type: !673)
!5496 = !DILocation(line: 39, column: 48, scope: !5490)
!5497 = !DILocation(line: 41, column: 18, scope: !5490)
!5498 = !DILocation(line: 41, column: 9, scope: !5490)
!5499 = !DILocation(line: 41, column: 2, scope: !5490)
!5500 = distinct !DISubprogram(name: "devpts_acquire", scope: !3, file: !3, line: 181, type: !5501, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5503)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!5347, !1016}
!5503 = !{!5504, !5505, !5506, !5507, !5508, !5511}
!5504 = !DILocalVariable(name: "filp", arg: 1, scope: !5500, file: !3, line: 181, type: !1016)
!5505 = !DILocalVariable(name: "result", scope: !5500, file: !3, line: 183, type: !5347)
!5506 = !DILocalVariable(name: "path", scope: !5500, file: !3, line: 184, type: !1131)
!5507 = !DILocalVariable(name: "sb", scope: !5500, file: !3, line: 185, type: !1376)
!5508 = !DILocalVariable(name: "err", scope: !5509, file: !3, line: 192, type: !22)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 191, column: 55)
!5510 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 191, column: 6)
!5511 = !DILabel(scope: !5500, name: "out", file: !3, line: 208)
!5512 = !DILocation(line: 181, column: 49, scope: !5500)
!5513 = !DILocation(line: 183, column: 2, scope: !5500)
!5514 = !DILocation(line: 183, column: 22, scope: !5500)
!5515 = !DILocation(line: 184, column: 2, scope: !5500)
!5516 = !DILocation(line: 184, column: 14, scope: !5500)
!5517 = !DILocation(line: 185, column: 2, scope: !5500)
!5518 = !DILocation(line: 185, column: 22, scope: !5500)
!5519 = !DILocation(line: 187, column: 9, scope: !5500)
!5520 = !DILocation(line: 187, column: 15, scope: !5500)
!5521 = !DILocation(line: 188, column: 2, scope: !5500)
!5522 = !DILocation(line: 191, column: 11, scope: !5510)
!5523 = !DILocation(line: 191, column: 16, scope: !5510)
!5524 = !DILocation(line: 191, column: 24, scope: !5510)
!5525 = !DILocation(line: 191, column: 32, scope: !5510)
!5526 = !DILocation(line: 191, column: 6, scope: !5500)
!5527 = !DILocation(line: 192, column: 3, scope: !5509)
!5528 = !DILocation(line: 192, column: 7, scope: !5509)
!5529 = !DILocation(line: 194, column: 9, scope: !5509)
!5530 = !DILocation(line: 194, column: 7, scope: !5509)
!5531 = !DILocation(line: 195, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 195, column: 7)
!5533 = !DILocation(line: 195, column: 7, scope: !5509)
!5534 = !DILocation(line: 196, column: 21, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 195, column: 12)
!5536 = !DILocation(line: 196, column: 13, scope: !5535)
!5537 = !DILocation(line: 196, column: 11, scope: !5535)
!5538 = !DILocation(line: 197, column: 4, scope: !5535)
!5539 = !DILocation(line: 199, column: 2, scope: !5510)
!5540 = !DILocation(line: 199, column: 2, scope: !5509)
!5541 = !DILocation(line: 204, column: 12, scope: !5500)
!5542 = !DILocation(line: 204, column: 17, scope: !5500)
!5543 = !DILocation(line: 204, column: 5, scope: !5500)
!5544 = !DILocation(line: 205, column: 14, scope: !5500)
!5545 = !DILocation(line: 205, column: 18, scope: !5500)
!5546 = !DILocation(line: 205, column: 2, scope: !5500)
!5547 = !DILocation(line: 206, column: 21, scope: !5500)
!5548 = !DILocation(line: 206, column: 11, scope: !5500)
!5549 = !DILocation(line: 206, column: 9, scope: !5500)
!5550 = !DILocation(line: 206, column: 2, scope: !5500)
!5551 = !DILocation(line: 208, column: 1, scope: !5500)
!5552 = !DILocation(line: 209, column: 2, scope: !5500)
!5553 = !DILocation(line: 210, column: 9, scope: !5500)
!5554 = !DILocation(line: 210, column: 2, scope: !5500)
!5555 = !DILocation(line: 211, column: 1, scope: !5500)
!5556 = distinct !DISubprogram(name: "atomic_inc", scope: !5557, file: !5557, line: 433, type: !5558, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5561)
!5557 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5558 = !DISubroutineType(types: !5559)
!5559 = !{null, !5560}
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!5561 = !{!5562}
!5562 = !DILocalVariable(name: "v", arg: 1, scope: !5556, file: !5557, line: 433, type: !5560)
!5563 = !DILocation(line: 433, column: 22, scope: !5556)
!5564 = !DILocation(line: 435, column: 31, scope: !5556)
!5565 = !DILocation(line: 435, column: 2, scope: !5556)
!5566 = !DILocation(line: 436, column: 17, scope: !5556)
!5567 = !DILocation(line: 436, column: 2, scope: !5556)
!5568 = !DILocation(line: 437, column: 1, scope: !5556)
!5569 = !DISubprogram(name: "path_put", scope: !1132, file: !1132, line: 14, type: !5434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = distinct !DISubprogram(name: "devpts_release", scope: !3, file: !3, line: 213, type: !5571, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5573)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{null, !5347}
!5573 = !{!5574}
!5574 = !DILocalVariable(name: "fsi", arg: 1, scope: !5570, file: !3, line: 213, type: !5347)
!5575 = !DILocation(line: 213, column: 41, scope: !5570)
!5576 = !DILocation(line: 215, column: 19, scope: !5570)
!5577 = !DILocation(line: 215, column: 24, scope: !5570)
!5578 = !DILocation(line: 215, column: 2, scope: !5570)
!5579 = !DILocation(line: 216, column: 1, scope: !5570)
!5580 = !DISubprogram(name: "deactivate_super", scope: !226, file: !226, line: 2413, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = distinct !DISubprogram(name: "devpts_new_index", scope: !3, file: !3, line: 512, type: !5582, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!22, !5347}
!5584 = !{!5585, !5586, !5587}
!5585 = !DILocalVariable(name: "fsi", arg: 1, scope: !5581, file: !3, line: 512, type: !5347)
!5586 = !DILocalVariable(name: "index", scope: !5581, file: !3, line: 514, type: !22)
!5587 = !DILabel(scope: !5581, name: "out", file: !3, line: 523)
!5588 = !DILocation(line: 512, column: 42, scope: !5581)
!5589 = !DILocation(line: 514, column: 2, scope: !5581)
!5590 = !DILocation(line: 514, column: 6, scope: !5581)
!5591 = !DILocation(line: 516, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 516, column: 6)
!5593 = !DILocation(line: 516, column: 40, scope: !5592)
!5594 = !DILocation(line: 517, column: 7, scope: !5592)
!5595 = !DILocation(line: 517, column: 12, scope: !5592)
!5596 = !DILocation(line: 517, column: 23, scope: !5592)
!5597 = !DILocation(line: 517, column: 37, scope: !5592)
!5598 = !DILocation(line: 516, column: 50, scope: !5592)
!5599 = !DILocation(line: 516, column: 36, scope: !5592)
!5600 = !DILocation(line: 516, column: 6, scope: !5581)
!5601 = !DILocation(line: 518, column: 3, scope: !5592)
!5602 = !DILocation(line: 520, column: 25, scope: !5581)
!5603 = !DILocation(line: 520, column: 30, scope: !5581)
!5604 = !DILocation(line: 520, column: 46, scope: !5581)
!5605 = !DILocation(line: 520, column: 51, scope: !5581)
!5606 = !DILocation(line: 520, column: 62, scope: !5581)
!5607 = !DILocation(line: 520, column: 66, scope: !5581)
!5608 = !DILocation(line: 520, column: 10, scope: !5581)
!5609 = !DILocation(line: 520, column: 8, scope: !5581)
!5610 = !DILocation(line: 520, column: 2, scope: !5581)
!5611 = !DILocation(line: 523, column: 1, scope: !5581)
!5612 = !DILocation(line: 524, column: 6, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 524, column: 6)
!5614 = !DILocation(line: 524, column: 12, scope: !5613)
!5615 = !DILocation(line: 524, column: 6, scope: !5581)
!5616 = !DILocation(line: 525, column: 3, scope: !5613)
!5617 = !DILocation(line: 526, column: 9, scope: !5581)
!5618 = !DILocation(line: 527, column: 1, scope: !5581)
!5619 = !DILocation(line: 526, column: 2, scope: !5581)
!5620 = distinct !DISubprogram(name: "atomic_inc_return", scope: !5557, file: !5557, line: 450, type: !5621, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!22, !5560}
!5623 = !{!5624}
!5624 = !DILocalVariable(name: "v", arg: 1, scope: !5620, file: !5557, line: 450, type: !5560)
!5625 = !DILocation(line: 450, column: 29, scope: !5620)
!5626 = !DILocation(line: 452, column: 2, scope: !5620)
!5627 = !DILocation(line: 452, column: 2, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5620, file: !5557, line: 452, column: 2)
!5629 = !DILocation(line: 453, column: 31, scope: !5620)
!5630 = !DILocation(line: 453, column: 2, scope: !5620)
!5631 = !DILocation(line: 454, column: 31, scope: !5620)
!5632 = !DILocation(line: 454, column: 9, scope: !5620)
!5633 = !DILocation(line: 454, column: 2, scope: !5620)
!5634 = distinct !DISubprogram(name: "ida_alloc_max", scope: !1089, file: !1089, line: 309, type: !5635, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!22, !5637, !7, !274}
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5638 = !{!5639, !5640, !5641}
!5639 = !DILocalVariable(name: "ida", arg: 1, scope: !5634, file: !1089, line: 309, type: !5637)
!5640 = !DILocalVariable(name: "max", arg: 2, scope: !5634, file: !1089, line: 309, type: !7)
!5641 = !DILocalVariable(name: "gfp", arg: 3, scope: !5634, file: !1089, line: 309, type: !274)
!5642 = !DILocation(line: 309, column: 45, scope: !5634)
!5643 = !DILocation(line: 309, column: 63, scope: !5634)
!5644 = !DILocation(line: 309, column: 74, scope: !5634)
!5645 = !DILocation(line: 311, column: 25, scope: !5634)
!5646 = !DILocation(line: 311, column: 33, scope: !5634)
!5647 = !DILocation(line: 311, column: 38, scope: !5634)
!5648 = !DILocation(line: 311, column: 9, scope: !5634)
!5649 = !DILocation(line: 311, column: 2, scope: !5634)
!5650 = distinct !DISubprogram(name: "atomic_dec", scope: !5557, file: !5557, line: 590, type: !5558, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5651)
!5651 = !{!5652}
!5652 = !DILocalVariable(name: "v", arg: 1, scope: !5650, file: !5557, line: 590, type: !5560)
!5653 = !DILocation(line: 590, column: 22, scope: !5650)
!5654 = !DILocation(line: 592, column: 31, scope: !5650)
!5655 = !DILocation(line: 592, column: 2, scope: !5650)
!5656 = !DILocation(line: 593, column: 17, scope: !5650)
!5657 = !DILocation(line: 593, column: 2, scope: !5650)
!5658 = !DILocation(line: 594, column: 1, scope: !5650)
!5659 = distinct !DISubprogram(name: "devpts_kill_index", scope: !3, file: !3, line: 529, type: !5660, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5662)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{null, !5347, !22}
!5662 = !{!5663, !5664}
!5663 = !DILocalVariable(name: "fsi", arg: 1, scope: !5659, file: !3, line: 529, type: !5347)
!5664 = !DILocalVariable(name: "idx", arg: 2, scope: !5659, file: !3, line: 529, type: !22)
!5665 = !DILocation(line: 529, column: 44, scope: !5659)
!5666 = !DILocation(line: 529, column: 53, scope: !5659)
!5667 = !DILocation(line: 531, column: 12, scope: !5659)
!5668 = !DILocation(line: 531, column: 17, scope: !5659)
!5669 = !DILocation(line: 531, column: 33, scope: !5659)
!5670 = !DILocation(line: 531, column: 2, scope: !5659)
!5671 = !DILocation(line: 532, column: 2, scope: !5659)
!5672 = !DILocation(line: 533, column: 1, scope: !5659)
!5673 = !DISubprogram(name: "ida_free", scope: !1089, file: !1089, line: 258, type: !5674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{null, !5637, !7}
!5676 = distinct !DISubprogram(name: "devpts_pty_new", scope: !3, file: !3, line: 544, type: !5677, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!1140, !5347, !22, !20}
!5679 = !{!5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5689}
!5680 = !DILocalVariable(name: "fsi", arg: 1, scope: !5676, file: !3, line: 544, type: !5347)
!5681 = !DILocalVariable(name: "index", arg: 2, scope: !5676, file: !3, line: 544, type: !22)
!5682 = !DILocalVariable(name: "priv", arg: 3, scope: !5676, file: !3, line: 544, type: !20)
!5683 = !DILocalVariable(name: "dentry", scope: !5676, file: !3, line: 546, type: !1140)
!5684 = !DILocalVariable(name: "sb", scope: !5676, file: !3, line: 547, type: !1376)
!5685 = !DILocalVariable(name: "inode", scope: !5676, file: !3, line: 548, type: !1175)
!5686 = !DILocalVariable(name: "root", scope: !5676, file: !3, line: 549, type: !1140)
!5687 = !DILocalVariable(name: "opts", scope: !5676, file: !3, line: 550, type: !5688)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5689 = !DILocalVariable(name: "s", scope: !5676, file: !3, line: 551, type: !5294)
!5690 = !DILocation(line: 544, column: 51, scope: !5676)
!5691 = !DILocation(line: 544, column: 60, scope: !5676)
!5692 = !DILocation(line: 544, column: 73, scope: !5676)
!5693 = !DILocation(line: 546, column: 2, scope: !5676)
!5694 = !DILocation(line: 546, column: 17, scope: !5676)
!5695 = !DILocation(line: 547, column: 2, scope: !5676)
!5696 = !DILocation(line: 547, column: 22, scope: !5676)
!5697 = !DILocation(line: 547, column: 27, scope: !5676)
!5698 = !DILocation(line: 547, column: 32, scope: !5676)
!5699 = !DILocation(line: 548, column: 2, scope: !5676)
!5700 = !DILocation(line: 548, column: 16, scope: !5676)
!5701 = !DILocation(line: 549, column: 2, scope: !5676)
!5702 = !DILocation(line: 549, column: 17, scope: !5676)
!5703 = !DILocation(line: 550, column: 2, scope: !5676)
!5704 = !DILocation(line: 550, column: 25, scope: !5676)
!5705 = !DILocation(line: 551, column: 2, scope: !5676)
!5706 = !DILocation(line: 551, column: 7, scope: !5676)
!5707 = !DILocation(line: 553, column: 9, scope: !5676)
!5708 = !DILocation(line: 553, column: 13, scope: !5676)
!5709 = !DILocation(line: 553, column: 7, scope: !5676)
!5710 = !DILocation(line: 554, column: 10, scope: !5676)
!5711 = !DILocation(line: 554, column: 15, scope: !5676)
!5712 = !DILocation(line: 554, column: 7, scope: !5676)
!5713 = !DILocation(line: 556, column: 20, scope: !5676)
!5714 = !DILocation(line: 556, column: 10, scope: !5676)
!5715 = !DILocation(line: 556, column: 8, scope: !5676)
!5716 = !DILocation(line: 557, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 557, column: 6)
!5718 = !DILocation(line: 557, column: 6, scope: !5676)
!5719 = !DILocation(line: 558, column: 10, scope: !5717)
!5720 = !DILocation(line: 558, column: 3, scope: !5717)
!5721 = !DILocation(line: 560, column: 17, scope: !5676)
!5722 = !DILocation(line: 560, column: 23, scope: !5676)
!5723 = !DILocation(line: 560, column: 2, scope: !5676)
!5724 = !DILocation(line: 560, column: 9, scope: !5676)
!5725 = !DILocation(line: 560, column: 15, scope: !5676)
!5726 = !DILocation(line: 561, column: 2, scope: !5676)
!5727 = !DILocation(line: 561, column: 9, scope: !5676)
!5728 = !DILocation(line: 561, column: 17, scope: !5676)
!5729 = !DILocation(line: 561, column: 23, scope: !5676)
!5730 = !DILocation(line: 561, column: 32, scope: !5676)
!5731 = !DILocation(line: 561, column: 38, scope: !5676)
!5732 = !DILocation(line: 561, column: 44, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 561, column: 44)
!5734 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 561, column: 44)
!5735 = !DILocation(line: 561, column: 44, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 561, column: 44)
!5737 = !DILocation(line: 561, column: 44, scope: !5734)
!5738 = !DILocation(line: 562, column: 2, scope: !5676)
!5739 = !DILocation(line: 562, column: 9, scope: !5676)
!5740 = !DILocation(line: 562, column: 17, scope: !5676)
!5741 = !DILocation(line: 562, column: 23, scope: !5676)
!5742 = !DILocation(line: 562, column: 32, scope: !5676)
!5743 = !DILocation(line: 562, column: 38, scope: !5676)
!5744 = !DILocation(line: 562, column: 44, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 562, column: 44)
!5746 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 562, column: 44)
!5747 = !DILocation(line: 562, column: 44, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 562, column: 44)
!5749 = !DILocation(line: 562, column: 44, scope: !5746)
!5750 = !DILocation(line: 563, column: 2, scope: !5676)
!5751 = !DILocation(line: 563, column: 9, scope: !5676)
!5752 = !DILocation(line: 563, column: 19, scope: !5676)
!5753 = !DILocation(line: 563, column: 26, scope: !5676)
!5754 = !DILocation(line: 563, column: 36, scope: !5676)
!5755 = !DILocation(line: 563, column: 60, scope: !5676)
!5756 = !DILocation(line: 563, column: 34, scope: !5676)
!5757 = !DILocation(line: 564, column: 21, scope: !5676)
!5758 = !DILocation(line: 564, column: 36, scope: !5676)
!5759 = !DILocation(line: 564, column: 42, scope: !5676)
!5760 = !DILocation(line: 564, column: 35, scope: !5676)
!5761 = !DILocation(line: 564, column: 28, scope: !5676)
!5762 = !DILocation(line: 564, column: 48, scope: !5676)
!5763 = !DILocation(line: 564, column: 2, scope: !5676)
!5764 = !DILocation(line: 566, column: 10, scope: !5676)
!5765 = !DILocation(line: 566, column: 19, scope: !5676)
!5766 = !DILocation(line: 566, column: 2, scope: !5676)
!5767 = !DILocation(line: 568, column: 24, scope: !5676)
!5768 = !DILocation(line: 568, column: 30, scope: !5676)
!5769 = !DILocation(line: 568, column: 11, scope: !5676)
!5770 = !DILocation(line: 568, column: 9, scope: !5676)
!5771 = !DILocation(line: 569, column: 6, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 569, column: 6)
!5773 = !DILocation(line: 569, column: 6, scope: !5676)
!5774 = !DILocation(line: 570, column: 22, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 569, column: 14)
!5776 = !DILocation(line: 570, column: 3, scope: !5775)
!5777 = !DILocation(line: 570, column: 11, scope: !5775)
!5778 = !DILocation(line: 570, column: 20, scope: !5775)
!5779 = !DILocation(line: 571, column: 9, scope: !5775)
!5780 = !DILocation(line: 571, column: 17, scope: !5775)
!5781 = !DILocation(line: 571, column: 3, scope: !5775)
!5782 = !DILocation(line: 572, column: 27, scope: !5775)
!5783 = !DILocation(line: 572, column: 19, scope: !5775)
!5784 = !DILocation(line: 572, column: 34, scope: !5775)
!5785 = !DILocation(line: 572, column: 3, scope: !5775)
!5786 = !DILocation(line: 573, column: 2, scope: !5775)
!5787 = !DILocation(line: 574, column: 8, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 573, column: 9)
!5789 = !DILocation(line: 574, column: 3, scope: !5788)
!5790 = !DILocation(line: 575, column: 12, scope: !5788)
!5791 = !DILocation(line: 575, column: 10, scope: !5788)
!5792 = !DILocation(line: 578, column: 9, scope: !5676)
!5793 = !DILocation(line: 578, column: 2, scope: !5676)
!5794 = !DILocation(line: 579, column: 1, scope: !5676)
!5795 = !DISubprogram(name: "new_inode", scope: !226, file: !226, line: 2932, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5796 = distinct !DISubprogram(name: "get_current", scope: !5797, file: !5797, line: 39, type: !5798, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5800)
!5797 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!693}
!5800 = !{!5801, !5803, !5805}
!5801 = !DILocalVariable(name: "pscr_ret__", scope: !5802, file: !5797, line: 41, type: !693)
!5802 = distinct !DILexicalBlock(scope: !5796, file: !5797, line: 41, column: 9)
!5803 = !DILocalVariable(name: "__vpp_verify", scope: !5804, file: !5797, line: 41, type: !2053)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !5797, line: 41, column: 9)
!5805 = !DILocalVariable(name: "pfo_val__", scope: !5806, file: !5797, line: 41, type: !317)
!5806 = distinct !DILexicalBlock(scope: !5802, file: !5797, line: 41, column: 9)
!5807 = !DILocation(line: 41, column: 9, scope: !5802)
!5808 = !DILocation(line: 41, column: 9, scope: !5804)
!5809 = !DILocation(line: 41, column: 9, scope: !5806)
!5810 = !{i64 2148545617}
!5811 = !DILocation(line: 41, column: 9, scope: !5796)
!5812 = !DILocation(line: 41, column: 2, scope: !5796)
!5813 = !DISubprogram(name: "inode_set_ctime_current", scope: !226, file: !226, line: 1515, type: !5814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!1285, !1175}
!5816 = !DISubprogram(name: "init_special_inode", scope: !226, file: !226, line: 2613, type: !5817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{null, !1175, !24, !1249}
!5819 = !DISubprogram(name: "sprintf", scope: !5820, file: !5820, line: 10, type: !5821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5820 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!22, !439, !16, null}
!5823 = !DISubprogram(name: "d_alloc_name", scope: !226, file: !226, line: 3181, type: !5824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!1140, !1140, !16}
!5826 = !DISubprogram(name: "d_add", scope: !1142, file: !1142, line: 269, type: !3014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5827 = distinct !DISubprogram(name: "fsnotify_create", scope: !5239, file: !5239, line: 211, type: !5828, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5830)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{null, !1175, !1140}
!5830 = !{!5831, !5832}
!5831 = !DILocalVariable(name: "dir", arg: 1, scope: !5827, file: !5239, line: 211, type: !1175)
!5832 = !DILocalVariable(name: "dentry", arg: 2, scope: !5827, file: !5239, line: 211, type: !1140)
!5833 = !DILocation(line: 211, column: 50, scope: !5827)
!5834 = !DILocation(line: 211, column: 70, scope: !5827)
!5835 = !DILocation(line: 213, column: 20, scope: !5827)
!5836 = !DILocation(line: 213, column: 25, scope: !5827)
!5837 = !DILocation(line: 213, column: 2, scope: !5827)
!5838 = !DILocation(line: 215, column: 18, scope: !5827)
!5839 = !DILocation(line: 215, column: 23, scope: !5827)
!5840 = !DILocation(line: 215, column: 2, scope: !5827)
!5841 = !DILocation(line: 216, column: 1, scope: !5827)
!5842 = distinct !DISubprogram(name: "d_inode", scope: !1142, file: !1142, line: 514, type: !5843, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5845)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!1175, !2990}
!5845 = !{!5846}
!5846 = !DILocalVariable(name: "dentry", arg: 1, scope: !5842, file: !1142, line: 514, type: !2990)
!5847 = !DILocation(line: 514, column: 58, scope: !5842)
!5848 = !DILocation(line: 516, column: 9, scope: !5842)
!5849 = !DILocation(line: 516, column: 17, scope: !5842)
!5850 = !DILocation(line: 516, column: 2, scope: !5842)
!5851 = !DISubprogram(name: "iput", scope: !226, file: !226, line: 2459, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5852 = distinct !DISubprogram(name: "devpts_get_priv", scope: !3, file: !3, line: 587, type: !5853, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!20, !1140}
!5855 = !{!5856}
!5856 = !DILocalVariable(name: "dentry", arg: 1, scope: !5852, file: !3, line: 587, type: !1140)
!5857 = !DILocation(line: 587, column: 38, scope: !5852)
!5858 = !DILocation(line: 589, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 589, column: 6)
!5860 = !DILocation(line: 589, column: 14, scope: !5859)
!5861 = !DILocation(line: 589, column: 20, scope: !5859)
!5862 = !DILocation(line: 589, column: 28, scope: !5859)
!5863 = !DILocation(line: 589, column: 6, scope: !5852)
!5864 = !DILocation(line: 590, column: 3, scope: !5859)
!5865 = !DILocation(line: 591, column: 9, scope: !5852)
!5866 = !DILocation(line: 591, column: 17, scope: !5852)
!5867 = !DILocation(line: 591, column: 2, scope: !5852)
!5868 = !DILocation(line: 592, column: 1, scope: !5852)
!5869 = distinct !DISubprogram(name: "devpts_pty_kill", scope: !3, file: !3, line: 600, type: !3009, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5870)
!5870 = !{!5871, !5872, !5874}
!5871 = !DILocalVariable(name: "dentry", arg: 1, scope: !5869, file: !3, line: 600, type: !1140)
!5872 = !DILocalVariable(name: "__ret_warn_on", scope: !5873, file: !3, line: 602, type: !22)
!5873 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 602, column: 2)
!5874 = !DILocalVariable(name: "__flags", scope: !5875, file: !3, line: 602, type: !22)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 602, column: 2)
!5876 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 602, column: 2)
!5877 = !DILocation(line: 600, column: 37, scope: !5869)
!5878 = !DILocation(line: 602, column: 2, scope: !5873)
!5879 = !DILocation(line: 602, column: 2, scope: !5876)
!5880 = !DILocation(line: 602, column: 2, scope: !5875)
!5881 = !DILocation(line: 602, column: 2, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 602, column: 2)
!5883 = !DILocation(line: 602, column: 2, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 602, column: 2)
!5885 = !{i64 2155012638, i64 2155012667, i64 2155012713, i64 2155012771, i64 2155012825, i64 2155012879, i64 2155012934, i64 2155012965, i64 2155013273, i64 2155013279, i64 2155013326, i64 2155013349, i64 2155013375}
!5886 = !DILocation(line: 602, column: 2, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 602, column: 2)
!5888 = !DILocation(line: 602, column: 2, scope: !5869)
!5889 = !DILocation(line: 604, column: 2, scope: !5869)
!5890 = !DILocation(line: 604, column: 10, scope: !5869)
!5891 = !DILocation(line: 604, column: 19, scope: !5869)
!5892 = !DILocation(line: 605, column: 13, scope: !5869)
!5893 = !DILocation(line: 605, column: 21, scope: !5869)
!5894 = !DILocation(line: 605, column: 2, scope: !5869)
!5895 = !DILocation(line: 606, column: 9, scope: !5869)
!5896 = !DILocation(line: 606, column: 2, scope: !5869)
!5897 = !DILocation(line: 607, column: 26, scope: !5869)
!5898 = !DILocation(line: 607, column: 34, scope: !5869)
!5899 = !DILocation(line: 607, column: 18, scope: !5869)
!5900 = !DILocation(line: 607, column: 45, scope: !5869)
!5901 = !DILocation(line: 607, column: 2, scope: !5869)
!5902 = !DILocation(line: 608, column: 7, scope: !5869)
!5903 = !DILocation(line: 608, column: 2, scope: !5869)
!5904 = !DILocation(line: 609, column: 1, scope: !5869)
!5905 = !DISubprogram(name: "drop_nlink", scope: !226, file: !226, line: 2328, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5906 = !DISubprogram(name: "d_drop", scope: !1142, file: !1142, line: 226, type: !3009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5907 = distinct !DISubprogram(name: "fsnotify_unlink", scope: !5239, file: !5239, line: 277, type: !5828, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5908)
!5908 = !{!5909, !5910, !5911, !5914}
!5909 = !DILocalVariable(name: "dir", arg: 1, scope: !5907, file: !5239, line: 277, type: !1175)
!5910 = !DILocalVariable(name: "dentry", arg: 2, scope: !5907, file: !5239, line: 277, type: !1140)
!5911 = !DILocalVariable(name: "__ret_warn_on", scope: !5912, file: !5239, line: 279, type: !22)
!5912 = distinct !DILexicalBlock(scope: !5913, file: !5239, line: 279, column: 6)
!5913 = distinct !DILexicalBlock(scope: !5907, file: !5239, line: 279, column: 6)
!5914 = !DILocalVariable(name: "__flags", scope: !5915, file: !5239, line: 279, type: !22)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !5239, line: 279, column: 6)
!5916 = distinct !DILexicalBlock(scope: !5912, file: !5239, line: 279, column: 6)
!5917 = !DILocation(line: 277, column: 50, scope: !5907)
!5918 = !DILocation(line: 277, column: 70, scope: !5907)
!5919 = !DILocation(line: 279, column: 6, scope: !5912)
!5920 = !DILocation(line: 279, column: 6, scope: !5916)
!5921 = !DILocation(line: 279, column: 6, scope: !5915)
!5922 = !DILocation(line: 279, column: 6, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5915, file: !5239, line: 279, column: 6)
!5924 = !DILocation(line: 279, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5915, file: !5239, line: 279, column: 6)
!5926 = !{i64 2155002221, i64 2155002250, i64 2155002296, i64 2155002354, i64 2155002408, i64 2155002462, i64 2155002517, i64 2155002548, i64 2155002856, i64 2155002862, i64 2155002909, i64 2155002932, i64 2155002958}
!5927 = !DILocation(line: 279, column: 6, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5915, file: !5239, line: 279, column: 6)
!5929 = !DILocation(line: 279, column: 6, scope: !5913)
!5930 = !DILocation(line: 279, column: 6, scope: !5907)
!5931 = !DILocation(line: 280, column: 3, scope: !5913)
!5932 = !DILocation(line: 282, column: 18, scope: !5907)
!5933 = !DILocation(line: 282, column: 31, scope: !5907)
!5934 = !DILocation(line: 282, column: 23, scope: !5907)
!5935 = !DILocation(line: 282, column: 40, scope: !5907)
!5936 = !DILocation(line: 282, column: 2, scope: !5907)
!5937 = !DILocation(line: 283, column: 1, scope: !5907)
!5938 = distinct !DISubprogram(name: "__initstub__kmod_devpts__299_619_init_devpts_fs6", scope: !3, file: !3, line: 619, type: !2327, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5939 = !DILocation(line: 619, column: 1, scope: !5938)
!5940 = distinct !DISubprogram(name: "init_devpts_fs", scope: !3, file: !3, line: 611, type: !2327, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5941)
!5941 = !{!5942}
!5942 = !DILocalVariable(name: "err", scope: !5940, file: !3, line: 613, type: !22)
!5943 = !DILocation(line: 613, column: 2, scope: !5940)
!5944 = !DILocation(line: 613, column: 6, scope: !5940)
!5945 = !DILocation(line: 613, column: 12, scope: !5940)
!5946 = !DILocation(line: 614, column: 7, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5940, file: !3, line: 614, column: 6)
!5948 = !DILocation(line: 614, column: 6, scope: !5940)
!5949 = !DILocation(line: 615, column: 3, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 614, column: 12)
!5951 = !DILocation(line: 616, column: 2, scope: !5950)
!5952 = !DILocation(line: 617, column: 9, scope: !5940)
!5953 = !DILocation(line: 618, column: 1, scope: !5940)
!5954 = !DILocation(line: 617, column: 2, scope: !5940)
!5955 = !DISubprogram(name: "path_pts", scope: !5437, file: !5437, line: 50, type: !5438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5957, file: !5957, line: 94, type: !5958, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5963)
!5957 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5958 = !DISubroutineType(types: !5959)
!5959 = !{null, !5960, !35}
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5962)
!5962 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5963 = !{!5964, !5965}
!5964 = !DILocalVariable(name: "v", arg: 1, scope: !5956, file: !5957, line: 94, type: !5960)
!5965 = !DILocalVariable(name: "size", arg: 2, scope: !5956, file: !5957, line: 94, type: !35)
!5966 = !DILocation(line: 94, column: 79, scope: !5956)
!5967 = !DILocation(line: 94, column: 89, scope: !5956)
!5968 = !DILocation(line: 96, column: 20, scope: !5956)
!5969 = !DILocation(line: 96, column: 23, scope: !5956)
!5970 = !DILocation(line: 96, column: 2, scope: !5956)
!5971 = !DILocation(line: 97, column: 2, scope: !5956)
!5972 = !DILocation(line: 98, column: 1, scope: !5956)
!5973 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5974, file: !5974, line: 976, type: !5558, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5975)
!5974 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5975 = !{!5976}
!5976 = !DILocalVariable(name: "v", arg: 1, scope: !5973, file: !5974, line: 976, type: !5560)
!5977 = !DILocation(line: 976, column: 26, scope: !5973)
!5978 = !DILocation(line: 979, column: 18, scope: !5973)
!5979 = !DILocation(line: 979, column: 2, scope: !5973)
!5980 = !DILocation(line: 983, column: 1, scope: !5973)
!5981 = distinct !DISubprogram(name: "kasan_check_write", scope: !5982, file: !5982, line: 44, type: !5983, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5985)
!5982 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!428, !5960, !7}
!5985 = !{!5986, !5987}
!5986 = !DILocalVariable(name: "p", arg: 1, scope: !5981, file: !5982, line: 44, type: !5960)
!5987 = !DILocalVariable(name: "size", arg: 2, scope: !5981, file: !5982, line: 44, type: !7)
!5988 = !DILocation(line: 44, column: 59, scope: !5981)
!5989 = !DILocation(line: 44, column: 75, scope: !5981)
!5990 = !DILocation(line: 46, column: 2, scope: !5981)
!5991 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5992, file: !5992, line: 229, type: !5993, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5992 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !5960, !35, !22}
!5995 = !{!5996, !5997, !5998}
!5996 = !DILocalVariable(name: "ptr", arg: 1, scope: !5991, file: !5992, line: 229, type: !5960)
!5997 = !DILocalVariable(name: "size", arg: 2, scope: !5991, file: !5992, line: 229, type: !35)
!5998 = !DILocalVariable(name: "type", arg: 3, scope: !5991, file: !5992, line: 230, type: !22)
!5999 = !DILocation(line: 229, column: 60, scope: !5991)
!6000 = !DILocation(line: 229, column: 72, scope: !5991)
!6001 = !DILocation(line: 230, column: 15, scope: !5991)
!6002 = !DILocation(line: 230, column: 23, scope: !5991)
!6003 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6004, file: !6004, line: 51, type: !5558, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6005)
!6004 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6005 = !{!6006}
!6006 = !DILocalVariable(name: "v", arg: 1, scope: !6003, file: !6004, line: 51, type: !5560)
!6007 = !DILocation(line: 51, column: 55, scope: !6003)
!6008 = !DILocation(line: 54, column: 16, scope: !6003)
!6009 = !DILocation(line: 54, column: 19, scope: !6003)
!6010 = !DILocation(line: 53, column: 2, scope: !6003)
!6011 = !{i64 2148794922, i64 2148794961, i64 2148794982, i64 2148795019, i64 2148795042, i64 2148794912}
!6012 = !DILocation(line: 55, column: 1, scope: !6003)
!6013 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !5974, file: !5974, line: 996, type: !5621, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6014)
!6014 = !{!6015}
!6015 = !DILocalVariable(name: "v", arg: 1, scope: !6013, file: !5974, line: 996, type: !5560)
!6016 = !DILocation(line: 996, column: 33, scope: !6013)
!6017 = !DILocation(line: 1007, column: 34, scope: !6013)
!6018 = !DILocation(line: 1007, column: 9, scope: !6013)
!6019 = !DILocation(line: 1007, column: 2, scope: !6013)
!6020 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !5974, file: !5974, line: 548, type: !6021, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6023)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{!22, !22, !5560}
!6023 = !{!6024, !6025}
!6024 = !DILocalVariable(name: "i", arg: 1, scope: !6020, file: !5974, line: 548, type: !22)
!6025 = !DILocalVariable(name: "v", arg: 2, scope: !6020, file: !5974, line: 548, type: !5560)
!6026 = !DILocation(line: 548, column: 27, scope: !6020)
!6027 = !DILocation(line: 548, column: 40, scope: !6020)
!6028 = !DILocation(line: 551, column: 32, scope: !6020)
!6029 = !DILocation(line: 551, column: 35, scope: !6020)
!6030 = !DILocation(line: 551, column: 9, scope: !6020)
!6031 = !DILocation(line: 551, column: 2, scope: !6020)
!6032 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !6004, file: !6004, line: 83, type: !6021, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6033)
!6033 = !{!6034, !6035, !6036}
!6034 = !DILocalVariable(name: "i", arg: 1, scope: !6032, file: !6004, line: 83, type: !22)
!6035 = !DILocalVariable(name: "v", arg: 2, scope: !6032, file: !6004, line: 83, type: !5560)
!6036 = !DILocalVariable(name: "__ret", scope: !6037, file: !6004, line: 85, type: !22)
!6037 = distinct !DILexicalBlock(scope: !6032, file: !6004, line: 85, column: 13)
!6038 = !DILocation(line: 83, column: 55, scope: !6032)
!6039 = !DILocation(line: 83, column: 68, scope: !6032)
!6040 = !DILocation(line: 85, column: 9, scope: !6032)
!6041 = !DILocation(line: 85, column: 13, scope: !6037)
!6042 = !{i64 2148802998, i64 2148803037, i64 2148803058, i64 2148803095, i64 2148803118, i64 2148803127}
!6043 = !DILocation(line: 85, column: 13, scope: !6032)
!6044 = !DILocation(line: 85, column: 11, scope: !6032)
!6045 = !DILocation(line: 85, column: 2, scope: !6032)
!6046 = !DISubprogram(name: "ida_alloc_range", scope: !1089, file: !1089, line: 257, type: !6047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{!22, !5637, !7, !7, !274}
!6049 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !5974, file: !5974, line: 1194, type: !5558, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6050 = !{!6051}
!6051 = !DILocalVariable(name: "v", arg: 1, scope: !6049, file: !5974, line: 1194, type: !5560)
!6052 = !DILocation(line: 1194, column: 26, scope: !6049)
!6053 = !DILocation(line: 1197, column: 18, scope: !6049)
!6054 = !DILocation(line: 1197, column: 2, scope: !6049)
!6055 = !DILocation(line: 1201, column: 1, scope: !6049)
!6056 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6004, file: !6004, line: 58, type: !5558, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6057)
!6057 = !{!6058}
!6058 = !DILocalVariable(name: "v", arg: 1, scope: !6056, file: !6004, line: 58, type: !5560)
!6059 = !DILocation(line: 58, column: 55, scope: !6056)
!6060 = !DILocation(line: 61, column: 16, scope: !6056)
!6061 = !DILocation(line: 61, column: 19, scope: !6056)
!6062 = !DILocation(line: 60, column: 2, scope: !6056)
!6063 = !{i64 2148795285, i64 2148795324, i64 2148795345, i64 2148795382, i64 2148795405, i64 2148795275}
!6064 = !DILocation(line: 62, column: 1, scope: !6056)
!6065 = distinct !DISubprogram(name: "audit_inode_child", scope: !6066, file: !6066, line: 388, type: !6067, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6066 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!6067 = !DISubroutineType(types: !6068)
!6068 = !{null, !1175, !2990, !1173}
!6069 = !{!6070, !6071, !6072}
!6070 = !DILocalVariable(name: "parent", arg: 1, scope: !6065, file: !6066, line: 388, type: !1175)
!6071 = !DILocalVariable(name: "dentry", arg: 2, scope: !6065, file: !6066, line: 389, type: !2990)
!6072 = !DILocalVariable(name: "type", arg: 3, scope: !6065, file: !6066, line: 390, type: !1173)
!6073 = !DILocation(line: 388, column: 52, scope: !6065)
!6074 = !DILocation(line: 389, column: 31, scope: !6065)
!6075 = !DILocation(line: 390, column: 30, scope: !6065)
!6076 = !DILocation(line: 391, column: 6, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6065, file: !6066, line: 391, column: 6)
!6078 = !DILocation(line: 391, column: 6, scope: !6065)
!6079 = !DILocation(line: 392, column: 23, scope: !6077)
!6080 = !DILocation(line: 392, column: 31, scope: !6077)
!6081 = !DILocation(line: 392, column: 39, scope: !6077)
!6082 = !DILocation(line: 392, column: 3, scope: !6077)
!6083 = !DILocation(line: 393, column: 1, scope: !6065)
!6084 = distinct !DISubprogram(name: "fsnotify_dirent", scope: !5239, file: !5239, line: 39, type: !6085, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6087)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{null, !1175, !1140, !385}
!6087 = !{!6088, !6089, !6090}
!6088 = !DILocalVariable(name: "dir", arg: 1, scope: !6084, file: !5239, line: 39, type: !1175)
!6089 = !DILocalVariable(name: "dentry", arg: 2, scope: !6084, file: !5239, line: 39, type: !1140)
!6090 = !DILocalVariable(name: "mask", arg: 3, scope: !6084, file: !5239, line: 40, type: !385)
!6091 = !DILocation(line: 39, column: 50, scope: !6084)
!6092 = !DILocation(line: 39, column: 70, scope: !6084)
!6093 = !DILocation(line: 40, column: 14, scope: !6084)
!6094 = !DILocation(line: 42, column: 16, scope: !6084)
!6095 = !DILocation(line: 42, column: 22, scope: !6084)
!6096 = !DILocation(line: 42, column: 53, scope: !6084)
!6097 = !DILocation(line: 42, column: 59, scope: !6084)
!6098 = !DILocation(line: 42, column: 67, scope: !6084)
!6099 = !DILocation(line: 42, column: 2, scope: !6084)
!6100 = !DILocation(line: 43, column: 1, scope: !6084)
!6101 = distinct !DISubprogram(name: "audit_dummy_context", scope: !6066, file: !6066, line: 318, type: !2043, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6102)
!6102 = !{!6103}
!6103 = !DILocalVariable(name: "p", scope: !6101, file: !6066, line: 320, type: !20)
!6104 = !DILocation(line: 320, column: 2, scope: !6101)
!6105 = !DILocation(line: 320, column: 8, scope: !6101)
!6106 = !DILocation(line: 320, column: 12, scope: !6101)
!6107 = !DILocation(line: 321, column: 10, scope: !6101)
!6108 = !DILocation(line: 321, column: 12, scope: !6101)
!6109 = !DILocation(line: 321, column: 23, scope: !6101)
!6110 = !DILocation(line: 321, column: 15, scope: !6101)
!6111 = !DILocation(line: 322, column: 1, scope: !6101)
!6112 = !DILocation(line: 321, column: 2, scope: !6101)
!6113 = !DISubprogram(name: "__audit_inode_child", scope: !6066, file: !6066, line: 300, type: !6067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6114 = distinct !DISubprogram(name: "audit_context", scope: !6066, file: !6066, line: 313, type: !6115, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!4660}
!6117 = !DILocation(line: 315, column: 9, scope: !6114)
!6118 = !DILocation(line: 315, column: 18, scope: !6114)
!6119 = !DILocation(line: 315, column: 2, scope: !6114)
!6120 = distinct !DISubprogram(name: "fsnotify_name", scope: !5239, file: !5239, line: 29, type: !6121, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6123)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{!22, !385, !2053, !22, !1175, !2997, !384}
!6123 = !{!6124, !6125, !6126, !6127, !6128, !6129}
!6124 = !DILocalVariable(name: "mask", arg: 1, scope: !6120, file: !5239, line: 29, type: !385)
!6125 = !DILocalVariable(name: "data", arg: 2, scope: !6120, file: !5239, line: 29, type: !2053)
!6126 = !DILocalVariable(name: "data_type", arg: 3, scope: !6120, file: !5239, line: 29, type: !22)
!6127 = !DILocalVariable(name: "dir", arg: 4, scope: !6120, file: !5239, line: 30, type: !1175)
!6128 = !DILocalVariable(name: "name", arg: 5, scope: !6120, file: !5239, line: 30, type: !2997)
!6129 = !DILocalVariable(name: "cookie", arg: 6, scope: !6120, file: !5239, line: 31, type: !384)
!6130 = !DILocation(line: 29, column: 39, scope: !6120)
!6131 = !DILocation(line: 29, column: 57, scope: !6120)
!6132 = !DILocation(line: 29, column: 67, scope: !6120)
!6133 = !DILocation(line: 30, column: 19, scope: !6120)
!6134 = !DILocation(line: 30, column: 43, scope: !6120)
!6135 = !DILocation(line: 31, column: 9, scope: !6120)
!6136 = !DILocation(line: 33, column: 24, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6120, file: !5239, line: 33, column: 6)
!6138 = !DILocation(line: 33, column: 29, scope: !6137)
!6139 = !DILocation(line: 33, column: 35, scope: !6137)
!6140 = !DILocation(line: 33, column: 6, scope: !6137)
!6141 = !DILocation(line: 33, column: 58, scope: !6137)
!6142 = !DILocation(line: 33, column: 6, scope: !6120)
!6143 = !DILocation(line: 34, column: 3, scope: !6137)
!6144 = !DILocation(line: 36, column: 18, scope: !6120)
!6145 = !DILocation(line: 36, column: 24, scope: !6120)
!6146 = !DILocation(line: 36, column: 30, scope: !6120)
!6147 = !DILocation(line: 36, column: 41, scope: !6120)
!6148 = !DILocation(line: 36, column: 46, scope: !6120)
!6149 = !DILocation(line: 36, column: 58, scope: !6120)
!6150 = !DILocation(line: 36, column: 9, scope: !6120)
!6151 = !DILocation(line: 36, column: 2, scope: !6120)
!6152 = !DILocation(line: 37, column: 1, scope: !6120)
!6153 = distinct !DISubprogram(name: "atomic_long_read", scope: !5557, file: !5557, line: 3158, type: !6154, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6158)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!673, !6156}
!6156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6157, size: 64)
!6157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!6158 = !{!6159}
!6159 = !DILocalVariable(name: "v", arg: 1, scope: !6153, file: !5557, line: 3158, type: !6156)
!6160 = !DILocation(line: 3158, column: 39, scope: !6153)
!6161 = !DILocation(line: 3160, column: 25, scope: !6153)
!6162 = !DILocation(line: 3160, column: 2, scope: !6153)
!6163 = !DILocation(line: 3161, column: 30, scope: !6153)
!6164 = !DILocation(line: 3161, column: 9, scope: !6153)
!6165 = !DILocation(line: 3161, column: 2, scope: !6153)
!6166 = !DISubprogram(name: "fsnotify", scope: !242, file: !242, line: 541, type: !6167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!22, !385, !2053, !22, !1175, !2997, !1175, !384}
!6169 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5957, file: !5957, line: 66, type: !5958, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6170)
!6170 = !{!6171, !6172}
!6171 = !DILocalVariable(name: "v", arg: 1, scope: !6169, file: !5957, line: 66, type: !5960)
!6172 = !DILocalVariable(name: "size", arg: 2, scope: !6169, file: !5957, line: 66, type: !35)
!6173 = !DILocation(line: 66, column: 73, scope: !6169)
!6174 = !DILocation(line: 66, column: 83, scope: !6169)
!6175 = !DILocation(line: 68, column: 19, scope: !6169)
!6176 = !DILocation(line: 68, column: 22, scope: !6169)
!6177 = !DILocation(line: 68, column: 2, scope: !6169)
!6178 = !DILocation(line: 69, column: 2, scope: !6169)
!6179 = !DILocation(line: 70, column: 1, scope: !6169)
!6180 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !282, file: !282, line: 35, type: !6154, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "v", arg: 1, scope: !6180, file: !282, line: 35, type: !6156)
!6183 = !DILocation(line: 35, column: 43, scope: !6180)
!6184 = !DILocation(line: 38, column: 27, scope: !6180)
!6185 = !DILocation(line: 38, column: 9, scope: !6180)
!6186 = !DILocation(line: 38, column: 2, scope: !6180)
!6187 = distinct !DISubprogram(name: "kasan_check_read", scope: !5982, file: !5982, line: 40, type: !5983, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6188)
!6188 = !{!6189, !6190}
!6189 = !DILocalVariable(name: "p", arg: 1, scope: !6187, file: !5982, line: 40, type: !5960)
!6190 = !DILocalVariable(name: "size", arg: 2, scope: !6187, file: !5982, line: 40, type: !7)
!6191 = !DILocation(line: 40, column: 58, scope: !6187)
!6192 = !DILocation(line: 40, column: 74, scope: !6187)
!6193 = !DILocation(line: 42, column: 2, scope: !6187)
!6194 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5974, file: !5974, line: 2554, type: !6195, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6199)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!287, !6197}
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6198, size: 64)
!6198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!6199 = !{!6200}
!6200 = !DILocalVariable(name: "v", arg: 1, scope: !6194, file: !5974, line: 2554, type: !6197)
!6201 = !DILocation(line: 2554, column: 37, scope: !6194)
!6202 = !DILocation(line: 2556, column: 28, scope: !6194)
!6203 = !DILocation(line: 2556, column: 9, scope: !6194)
!6204 = !DILocation(line: 2556, column: 2, scope: !6194)
!6205 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6206, file: !6206, line: 13, type: !6195, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6207)
!6206 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6207 = !{!6208}
!6208 = !DILocalVariable(name: "v", arg: 1, scope: !6205, file: !6206, line: 13, type: !6197)
!6209 = !DILocation(line: 13, column: 65, scope: !6205)
!6210 = !DILocation(line: 15, column: 9, scope: !6205)
!6211 = !DILocation(line: 15, column: 2, scope: !6205)
!6212 = distinct !DISubprogram(name: "d_is_negative", scope: !1142, file: !1142, line: 433, type: !6213, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{!428, !2990}
!6215 = !{!6216}
!6216 = !DILocalVariable(name: "dentry", arg: 1, scope: !6212, file: !1142, line: 433, type: !2990)
!6217 = !DILocation(line: 433, column: 55, scope: !6212)
!6218 = !DILocation(line: 436, column: 19, scope: !6212)
!6219 = !DILocation(line: 436, column: 9, scope: !6212)
!6220 = !DILocation(line: 436, column: 2, scope: !6212)
!6221 = distinct !DISubprogram(name: "fsnotify_delete", scope: !5239, file: !5239, line: 243, type: !6222, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{null, !1175, !1175, !1140}
!6224 = !{!6225, !6226, !6227, !6228}
!6225 = !DILocalVariable(name: "dir", arg: 1, scope: !6221, file: !5239, line: 243, type: !1175)
!6226 = !DILocalVariable(name: "inode", arg: 2, scope: !6221, file: !5239, line: 243, type: !1175)
!6227 = !DILocalVariable(name: "dentry", arg: 3, scope: !6221, file: !5239, line: 244, type: !1140)
!6228 = !DILocalVariable(name: "mask", scope: !6221, file: !5239, line: 246, type: !385)
!6229 = !DILocation(line: 243, column: 50, scope: !6221)
!6230 = !DILocation(line: 243, column: 69, scope: !6221)
!6231 = !DILocation(line: 244, column: 23, scope: !6221)
!6232 = !DILocation(line: 246, column: 2, scope: !6221)
!6233 = !DILocation(line: 246, column: 8, scope: !6221)
!6234 = !DILocation(line: 248, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6221, file: !5239, line: 248, column: 6)
!6236 = !DILocation(line: 248, column: 6, scope: !6221)
!6237 = !DILocation(line: 249, column: 8, scope: !6235)
!6238 = !DILocation(line: 249, column: 3, scope: !6235)
!6239 = !DILocation(line: 251, column: 16, scope: !6221)
!6240 = !DILocation(line: 251, column: 22, scope: !6221)
!6241 = !DILocation(line: 251, column: 51, scope: !6221)
!6242 = !DILocation(line: 251, column: 57, scope: !6221)
!6243 = !DILocation(line: 251, column: 65, scope: !6221)
!6244 = !DILocation(line: 251, column: 2, scope: !6221)
!6245 = !DILocation(line: 253, column: 1, scope: !6221)
!6246 = distinct !DISubprogram(name: "d_is_miss", scope: !1142, file: !1142, line: 388, type: !6213, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6247)
!6247 = !{!6248}
!6248 = !DILocalVariable(name: "dentry", arg: 1, scope: !6246, file: !1142, line: 388, type: !2990)
!6249 = !DILocation(line: 388, column: 51, scope: !6246)
!6250 = !DILocation(line: 390, column: 24, scope: !6246)
!6251 = !DILocation(line: 390, column: 9, scope: !6246)
!6252 = !DILocation(line: 390, column: 32, scope: !6246)
!6253 = !DILocation(line: 390, column: 2, scope: !6246)
!6254 = distinct !DISubprogram(name: "__d_entry_type", scope: !1142, file: !1142, line: 383, type: !6255, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6255 = !DISubroutineType(types: !6256)
!6256 = !{!7, !2990}
!6257 = !{!6258}
!6258 = !DILocalVariable(name: "dentry", arg: 1, scope: !6254, file: !1142, line: 383, type: !2990)
!6259 = !DILocation(line: 383, column: 60, scope: !6254)
!6260 = !DILocation(line: 385, column: 9, scope: !6254)
!6261 = !DILocation(line: 385, column: 17, scope: !6254)
!6262 = !DILocation(line: 385, column: 25, scope: !6254)
!6263 = !DILocation(line: 385, column: 2, scope: !6254)
!6264 = !DISubprogram(name: "register_filesystem", scope: !226, file: !226, line: 2445, type: !6265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!22, !1385}
!6267 = !DISubprogram(name: "register_sysctl_sz", scope: !12, file: !12, line: 232, type: !6268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{!632, !16, !33, !35}
!6270 = distinct !DISubprogram(name: "devpts_mount", scope: !3, file: !3, line: 484, type: !1403, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6271)
!6271 = !{!6272, !6273, !6274, !6275}
!6272 = !DILocalVariable(name: "fs_type", arg: 1, scope: !6270, file: !3, line: 484, type: !1385)
!6273 = !DILocalVariable(name: "flags", arg: 2, scope: !6270, file: !3, line: 485, type: !22)
!6274 = !DILocalVariable(name: "dev_name", arg: 3, scope: !6270, file: !3, line: 485, type: !16)
!6275 = !DILocalVariable(name: "data", arg: 4, scope: !6270, file: !3, line: 485, type: !20)
!6276 = !DILocation(line: 484, column: 61, scope: !6270)
!6277 = !DILocation(line: 485, column: 6, scope: !6270)
!6278 = !DILocation(line: 485, column: 25, scope: !6270)
!6279 = !DILocation(line: 485, column: 41, scope: !6270)
!6280 = !DILocation(line: 487, column: 21, scope: !6270)
!6281 = !DILocation(line: 487, column: 30, scope: !6270)
!6282 = !DILocation(line: 487, column: 37, scope: !6270)
!6283 = !DILocation(line: 487, column: 9, scope: !6270)
!6284 = !DILocation(line: 487, column: 2, scope: !6270)
!6285 = distinct !DISubprogram(name: "devpts_kill_sb", scope: !3, file: !3, line: 490, type: !1407, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6286 = !{!6287, !6288}
!6287 = !DILocalVariable(name: "sb", arg: 1, scope: !6285, file: !3, line: 490, type: !1376)
!6288 = !DILocalVariable(name: "fsi", scope: !6285, file: !3, line: 492, type: !5347)
!6289 = !DILocation(line: 490, column: 48, scope: !6285)
!6290 = !DILocation(line: 492, column: 2, scope: !6285)
!6291 = !DILocation(line: 492, column: 22, scope: !6285)
!6292 = !DILocation(line: 492, column: 38, scope: !6285)
!6293 = !DILocation(line: 492, column: 28, scope: !6285)
!6294 = !DILocation(line: 494, column: 6, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 494, column: 6)
!6296 = !DILocation(line: 494, column: 6, scope: !6285)
!6297 = !DILocation(line: 495, column: 16, scope: !6295)
!6298 = !DILocation(line: 495, column: 21, scope: !6295)
!6299 = !DILocation(line: 495, column: 3, scope: !6295)
!6300 = !DILocation(line: 496, column: 8, scope: !6285)
!6301 = !DILocation(line: 496, column: 2, scope: !6285)
!6302 = !DILocation(line: 497, column: 20, scope: !6285)
!6303 = !DILocation(line: 497, column: 2, scope: !6285)
!6304 = !DILocation(line: 498, column: 1, scope: !6285)
!6305 = !DISubprogram(name: "mount_nodev", scope: !226, file: !226, line: 2404, type: !6306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = !DISubroutineType(types: !6307)
!6307 = !{!1140, !1385, !22, !20, !6308}
!6308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6309, size: 64)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!22, !1376, !20, !22}
!6311 = distinct !DISubprogram(name: "devpts_fill_super", scope: !3, file: !3, line: 427, type: !6309, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6312 = !{!6313, !6314, !6315, !6316, !6317, !6318, !6319}
!6313 = !DILocalVariable(name: "s", arg: 1, scope: !6311, file: !3, line: 427, type: !1376)
!6314 = !DILocalVariable(name: "data", arg: 2, scope: !6311, file: !3, line: 427, type: !20)
!6315 = !DILocalVariable(name: "silent", arg: 3, scope: !6311, file: !3, line: 427, type: !22)
!6316 = !DILocalVariable(name: "inode", scope: !6311, file: !3, line: 429, type: !1175)
!6317 = !DILocalVariable(name: "error", scope: !6311, file: !3, line: 430, type: !22)
!6318 = !DILabel(scope: !6311, name: "fail_dput", file: !3, line: 471)
!6319 = !DILabel(scope: !6311, name: "fail", file: !3, line: 474)
!6320 = !DILocation(line: 427, column: 39, scope: !6311)
!6321 = !DILocation(line: 427, column: 48, scope: !6311)
!6322 = !DILocation(line: 427, column: 58, scope: !6311)
!6323 = !DILocation(line: 429, column: 2, scope: !6311)
!6324 = !DILocation(line: 429, column: 16, scope: !6311)
!6325 = !DILocation(line: 430, column: 2, scope: !6311)
!6326 = !DILocation(line: 430, column: 6, scope: !6311)
!6327 = !DILocation(line: 432, column: 2, scope: !6311)
!6328 = !DILocation(line: 432, column: 5, scope: !6311)
!6329 = !DILocation(line: 432, column: 14, scope: !6311)
!6330 = !DILocation(line: 433, column: 2, scope: !6311)
!6331 = !DILocation(line: 433, column: 5, scope: !6311)
!6332 = !DILocation(line: 433, column: 17, scope: !6311)
!6333 = !DILocation(line: 434, column: 2, scope: !6311)
!6334 = !DILocation(line: 434, column: 5, scope: !6311)
!6335 = !DILocation(line: 434, column: 22, scope: !6311)
!6336 = !DILocation(line: 435, column: 2, scope: !6311)
!6337 = !DILocation(line: 435, column: 5, scope: !6311)
!6338 = !DILocation(line: 435, column: 13, scope: !6311)
!6339 = !DILocation(line: 436, column: 2, scope: !6311)
!6340 = !DILocation(line: 436, column: 5, scope: !6311)
!6341 = !DILocation(line: 436, column: 10, scope: !6311)
!6342 = !DILocation(line: 437, column: 2, scope: !6311)
!6343 = !DILocation(line: 437, column: 5, scope: !6311)
!6344 = !DILocation(line: 437, column: 12, scope: !6311)
!6345 = !DILocation(line: 438, column: 2, scope: !6311)
!6346 = !DILocation(line: 438, column: 5, scope: !6311)
!6347 = !DILocation(line: 438, column: 17, scope: !6311)
!6348 = !DILocation(line: 440, column: 8, scope: !6311)
!6349 = !DILocation(line: 441, column: 33, scope: !6311)
!6350 = !DILocation(line: 441, column: 17, scope: !6311)
!6351 = !DILocation(line: 441, column: 2, scope: !6311)
!6352 = !DILocation(line: 441, column: 5, scope: !6311)
!6353 = !DILocation(line: 441, column: 15, scope: !6311)
!6354 = !DILocation(line: 442, column: 7, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 442, column: 6)
!6356 = !DILocation(line: 442, column: 10, scope: !6355)
!6357 = !DILocation(line: 442, column: 6, scope: !6311)
!6358 = !DILocation(line: 443, column: 3, scope: !6355)
!6359 = !DILocation(line: 445, column: 30, scope: !6311)
!6360 = !DILocation(line: 445, column: 60, scope: !6311)
!6361 = !DILocation(line: 445, column: 50, scope: !6311)
!6362 = !DILocation(line: 445, column: 64, scope: !6311)
!6363 = !DILocation(line: 445, column: 10, scope: !6311)
!6364 = !DILocation(line: 445, column: 8, scope: !6311)
!6365 = !DILocation(line: 446, column: 6, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 446, column: 6)
!6367 = !DILocation(line: 446, column: 6, scope: !6311)
!6368 = !DILocation(line: 447, column: 3, scope: !6366)
!6369 = !DILocation(line: 449, column: 8, scope: !6311)
!6370 = !DILocation(line: 450, column: 20, scope: !6311)
!6371 = !DILocation(line: 450, column: 10, scope: !6311)
!6372 = !DILocation(line: 450, column: 8, scope: !6311)
!6373 = !DILocation(line: 451, column: 7, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 451, column: 6)
!6375 = !DILocation(line: 451, column: 6, scope: !6311)
!6376 = !DILocation(line: 452, column: 3, scope: !6374)
!6377 = !DILocation(line: 453, column: 2, scope: !6311)
!6378 = !DILocation(line: 453, column: 9, scope: !6311)
!6379 = !DILocation(line: 453, column: 15, scope: !6311)
!6380 = !DILocation(line: 454, column: 2, scope: !6311)
!6381 = !DILocation(line: 454, column: 9, scope: !6311)
!6382 = !DILocation(line: 454, column: 19, scope: !6311)
!6383 = !DILocation(line: 454, column: 26, scope: !6311)
!6384 = !DILocation(line: 454, column: 36, scope: !6311)
!6385 = !DILocation(line: 454, column: 60, scope: !6311)
!6386 = !DILocation(line: 454, column: 34, scope: !6311)
!6387 = !DILocation(line: 455, column: 2, scope: !6311)
!6388 = !DILocation(line: 455, column: 9, scope: !6311)
!6389 = !DILocation(line: 455, column: 16, scope: !6311)
!6390 = !DILocation(line: 456, column: 2, scope: !6311)
!6391 = !DILocation(line: 456, column: 9, scope: !6311)
!6392 = !DILocation(line: 456, column: 14, scope: !6311)
!6393 = !DILocation(line: 457, column: 2, scope: !6311)
!6394 = !DILocation(line: 457, column: 9, scope: !6311)
!6395 = !DILocation(line: 457, column: 15, scope: !6311)
!6396 = !DILocation(line: 458, column: 12, scope: !6311)
!6397 = !DILocation(line: 458, column: 2, scope: !6311)
!6398 = !DILocation(line: 460, column: 26, scope: !6311)
!6399 = !DILocation(line: 460, column: 14, scope: !6311)
!6400 = !DILocation(line: 460, column: 2, scope: !6311)
!6401 = !DILocation(line: 460, column: 5, scope: !6311)
!6402 = !DILocation(line: 460, column: 12, scope: !6311)
!6403 = !DILocation(line: 461, column: 7, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 461, column: 6)
!6405 = !DILocation(line: 461, column: 10, scope: !6404)
!6406 = !DILocation(line: 461, column: 6, scope: !6311)
!6407 = !DILocation(line: 462, column: 3, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 462, column: 3)
!6409 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 461, column: 18)
!6410 = !DILocation(line: 462, column: 3, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 462, column: 3)
!6412 = !DILocation(line: 463, column: 3, scope: !6409)
!6413 = !DILocation(line: 466, column: 21, scope: !6311)
!6414 = !DILocation(line: 466, column: 10, scope: !6311)
!6415 = !DILocation(line: 466, column: 8, scope: !6311)
!6416 = !DILocation(line: 467, column: 6, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 467, column: 6)
!6418 = !DILocation(line: 467, column: 6, scope: !6311)
!6419 = !DILocation(line: 468, column: 3, scope: !6417)
!6420 = !DILocation(line: 470, column: 2, scope: !6311)
!6421 = !DILocation(line: 471, column: 1, scope: !6311)
!6422 = !DILocation(line: 472, column: 7, scope: !6311)
!6423 = !DILocation(line: 472, column: 10, scope: !6311)
!6424 = !DILocation(line: 472, column: 2, scope: !6311)
!6425 = !DILocation(line: 473, column: 2, scope: !6311)
!6426 = !DILocation(line: 473, column: 5, scope: !6311)
!6427 = !DILocation(line: 473, column: 12, scope: !6311)
!6428 = !DILocation(line: 474, column: 1, scope: !6311)
!6429 = !DILocation(line: 475, column: 9, scope: !6311)
!6430 = !DILocation(line: 475, column: 2, scope: !6311)
!6431 = !DILocation(line: 476, column: 1, scope: !6311)
!6432 = distinct !DISubprogram(name: "new_pts_fs_info", scope: !3, file: !3, line: 410, type: !6433, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6435)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!20, !1376}
!6435 = !{!6436, !6437}
!6436 = !DILocalVariable(name: "sb", arg: 1, scope: !6432, file: !3, line: 410, type: !1376)
!6437 = !DILocalVariable(name: "fsi", scope: !6432, file: !3, line: 412, type: !5347)
!6438 = !DILocation(line: 410, column: 50, scope: !6432)
!6439 = !DILocation(line: 412, column: 2, scope: !6432)
!6440 = !DILocation(line: 412, column: 22, scope: !6432)
!6441 = !DILocation(line: 414, column: 8, scope: !6432)
!6442 = !DILocation(line: 414, column: 6, scope: !6432)
!6443 = !DILocation(line: 415, column: 7, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 415, column: 6)
!6445 = !DILocation(line: 415, column: 6, scope: !6432)
!6446 = !DILocation(line: 416, column: 3, scope: !6444)
!6447 = !DILocation(line: 418, column: 12, scope: !6432)
!6448 = !DILocation(line: 418, column: 17, scope: !6432)
!6449 = !DILocation(line: 418, column: 2, scope: !6432)
!6450 = !DILocation(line: 419, column: 2, scope: !6432)
!6451 = !DILocation(line: 419, column: 7, scope: !6432)
!6452 = !DILocation(line: 419, column: 18, scope: !6432)
!6453 = !DILocation(line: 419, column: 23, scope: !6432)
!6454 = !DILocation(line: 420, column: 2, scope: !6432)
!6455 = !DILocation(line: 420, column: 7, scope: !6432)
!6456 = !DILocation(line: 420, column: 18, scope: !6432)
!6457 = !DILocation(line: 420, column: 27, scope: !6432)
!6458 = !DILocation(line: 421, column: 12, scope: !6432)
!6459 = !DILocation(line: 421, column: 2, scope: !6432)
!6460 = !DILocation(line: 421, column: 7, scope: !6432)
!6461 = !DILocation(line: 421, column: 10, scope: !6432)
!6462 = !DILocation(line: 423, column: 9, scope: !6432)
!6463 = !DILocation(line: 423, column: 2, scope: !6432)
!6464 = !DILocation(line: 424, column: 1, scope: !6432)
!6465 = distinct !DISubprogram(name: "parse_mount_options", scope: !3, file: !3, line: 228, type: !6466, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6468)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{!22, !439, !22, !5688}
!6468 = !{!6469, !6470, !6471, !6472, !6473, !6474, !6475, !6483, !6484}
!6469 = !DILocalVariable(name: "data", arg: 1, scope: !6465, file: !3, line: 228, type: !439)
!6470 = !DILocalVariable(name: "op", arg: 2, scope: !6465, file: !3, line: 228, type: !22)
!6471 = !DILocalVariable(name: "opts", arg: 3, scope: !6465, file: !3, line: 228, type: !5688)
!6472 = !DILocalVariable(name: "p", scope: !6465, file: !3, line: 230, type: !439)
!6473 = !DILocalVariable(name: "uid", scope: !6465, file: !3, line: 231, type: !290)
!6474 = !DILocalVariable(name: "gid", scope: !6465, file: !3, line: 232, type: !298)
!6475 = !DILocalVariable(name: "args", scope: !6476, file: !3, line: 250, type: !6477)
!6476 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 249, column: 43)
!6477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6478, size: 384, elements: !1062)
!6478 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !5304, line: 28, baseType: !6479)
!6479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5304, line: 25, size: 128, elements: !6480)
!6480 = !{!6481, !6482}
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !6479, file: !5304, line: 26, baseType: !439, size: 64)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !6479, file: !5304, line: 27, baseType: !439, size: 64, offset: 64)
!6483 = !DILocalVariable(name: "token", scope: !6476, file: !3, line: 251, type: !22)
!6484 = !DILocalVariable(name: "option", scope: !6476, file: !3, line: 252, type: !22)
!6485 = !DILocation(line: 228, column: 38, scope: !6465)
!6486 = !DILocation(line: 228, column: 48, scope: !6465)
!6487 = !DILocation(line: 228, column: 75, scope: !6465)
!6488 = !DILocation(line: 230, column: 2, scope: !6465)
!6489 = !DILocation(line: 230, column: 8, scope: !6465)
!6490 = !DILocation(line: 231, column: 2, scope: !6465)
!6491 = !DILocation(line: 231, column: 9, scope: !6465)
!6492 = !DILocation(line: 232, column: 2, scope: !6465)
!6493 = !DILocation(line: 232, column: 9, scope: !6465)
!6494 = !DILocation(line: 234, column: 2, scope: !6465)
!6495 = !DILocation(line: 234, column: 8, scope: !6465)
!6496 = !DILocation(line: 234, column: 16, scope: !6465)
!6497 = !DILocation(line: 235, column: 2, scope: !6465)
!6498 = !DILocation(line: 235, column: 8, scope: !6465)
!6499 = !DILocation(line: 235, column: 16, scope: !6465)
!6500 = !DILocation(line: 236, column: 2, scope: !6465)
!6501 = !DILocation(line: 236, column: 8, scope: !6465)
!6502 = !DILocation(line: 236, column: 18, scope: !6465)
!6503 = !DILocation(line: 237, column: 2, scope: !6465)
!6504 = !DILocation(line: 237, column: 8, scope: !6465)
!6505 = !DILocation(line: 237, column: 18, scope: !6465)
!6506 = !DILocation(line: 238, column: 2, scope: !6465)
!6507 = !DILocation(line: 238, column: 8, scope: !6465)
!6508 = !DILocation(line: 238, column: 16, scope: !6465)
!6509 = !DILocation(line: 239, column: 2, scope: !6465)
!6510 = !DILocation(line: 239, column: 8, scope: !6465)
!6511 = !DILocation(line: 239, column: 17, scope: !6465)
!6512 = !DILocation(line: 240, column: 2, scope: !6465)
!6513 = !DILocation(line: 240, column: 8, scope: !6465)
!6514 = !DILocation(line: 240, column: 16, scope: !6465)
!6515 = !DILocation(line: 245, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 245, column: 6)
!6517 = !DILocation(line: 245, column: 9, scope: !6516)
!6518 = !DILocation(line: 245, column: 6, scope: !6465)
!6519 = !DILocation(line: 247, column: 5, scope: !6516)
!6520 = !DILocation(line: 247, column: 14, scope: !6516)
!6521 = !DILocation(line: 247, column: 23, scope: !6516)
!6522 = !DILocation(line: 247, column: 43, scope: !6516)
!6523 = !DILocation(line: 247, column: 52, scope: !6516)
!6524 = !DILocation(line: 247, column: 30, scope: !6516)
!6525 = !DILocation(line: 246, column: 3, scope: !6516)
!6526 = !DILocation(line: 246, column: 9, scope: !6516)
!6527 = !DILocation(line: 246, column: 17, scope: !6516)
!6528 = !DILocation(line: 249, column: 2, scope: !6465)
!6529 = !DILocation(line: 249, column: 14, scope: !6465)
!6530 = !DILocation(line: 249, column: 12, scope: !6465)
!6531 = !DILocation(line: 249, column: 34, scope: !6465)
!6532 = !DILocation(line: 250, column: 3, scope: !6476)
!6533 = !DILocation(line: 250, column: 15, scope: !6476)
!6534 = !DILocation(line: 251, column: 3, scope: !6476)
!6535 = !DILocation(line: 251, column: 7, scope: !6476)
!6536 = !DILocation(line: 252, column: 3, scope: !6476)
!6537 = !DILocation(line: 252, column: 7, scope: !6476)
!6538 = !DILocation(line: 254, column: 9, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 254, column: 7)
!6540 = !DILocation(line: 254, column: 8, scope: !6539)
!6541 = !DILocation(line: 254, column: 7, scope: !6476)
!6542 = !DILocation(line: 255, column: 4, scope: !6539)
!6543 = distinct !{!6543, !6528, !6544, !5393, !5394}
!6544 = !DILocation(line: 299, column: 2, scope: !6465)
!6545 = !DILocation(line: 257, column: 23, scope: !6476)
!6546 = !DILocation(line: 257, column: 34, scope: !6476)
!6547 = !DILocation(line: 257, column: 11, scope: !6476)
!6548 = !DILocation(line: 257, column: 9, scope: !6476)
!6549 = !DILocation(line: 258, column: 11, scope: !6476)
!6550 = !DILocation(line: 258, column: 3, scope: !6476)
!6551 = !DILocation(line: 260, column: 19, scope: !6552)
!6552 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 260, column: 8)
!6553 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 258, column: 18)
!6554 = !DILocation(line: 260, column: 8, scope: !6552)
!6555 = !DILocation(line: 260, column: 8, scope: !6553)
!6556 = !DILocation(line: 261, column: 5, scope: !6552)
!6557 = !DILocation(line: 262, column: 10, scope: !6553)
!6558 = !DILocation(line: 262, column: 20, scope: !6553)
!6559 = !DILocation(line: 262, column: 39, scope: !6553)
!6560 = !DILocation(line: 263, column: 9, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 263, column: 8)
!6562 = !DILocation(line: 263, column: 8, scope: !6553)
!6563 = !DILocation(line: 264, column: 5, scope: !6561)
!6564 = !DILocation(line: 265, column: 4, scope: !6553)
!6565 = !DILocation(line: 265, column: 10, scope: !6553)
!6566 = !DILocation(line: 265, column: 16, scope: !6553)
!6567 = !DILocation(line: 266, column: 4, scope: !6553)
!6568 = !DILocation(line: 266, column: 10, scope: !6553)
!6569 = !DILocation(line: 266, column: 17, scope: !6553)
!6570 = !DILocation(line: 267, column: 4, scope: !6553)
!6571 = !DILocation(line: 269, column: 19, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 269, column: 8)
!6573 = !DILocation(line: 269, column: 8, scope: !6572)
!6574 = !DILocation(line: 269, column: 8, scope: !6553)
!6575 = !DILocation(line: 270, column: 5, scope: !6572)
!6576 = !DILocation(line: 271, column: 10, scope: !6553)
!6577 = !DILocation(line: 271, column: 20, scope: !6553)
!6578 = !DILocation(line: 271, column: 39, scope: !6553)
!6579 = !DILocation(line: 272, column: 9, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 272, column: 8)
!6581 = !DILocation(line: 272, column: 8, scope: !6553)
!6582 = !DILocation(line: 273, column: 5, scope: !6580)
!6583 = !DILocation(line: 274, column: 4, scope: !6553)
!6584 = !DILocation(line: 274, column: 10, scope: !6553)
!6585 = !DILocation(line: 274, column: 16, scope: !6553)
!6586 = !DILocation(line: 275, column: 4, scope: !6553)
!6587 = !DILocation(line: 275, column: 10, scope: !6553)
!6588 = !DILocation(line: 275, column: 17, scope: !6553)
!6589 = !DILocation(line: 276, column: 4, scope: !6553)
!6590 = !DILocation(line: 278, column: 21, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 278, column: 8)
!6592 = !DILocation(line: 278, column: 8, scope: !6591)
!6593 = !DILocation(line: 278, column: 8, scope: !6553)
!6594 = !DILocation(line: 279, column: 5, scope: !6591)
!6595 = !DILocation(line: 280, column: 17, scope: !6553)
!6596 = !DILocation(line: 280, column: 24, scope: !6553)
!6597 = !DILocation(line: 280, column: 4, scope: !6553)
!6598 = !DILocation(line: 280, column: 10, scope: !6553)
!6599 = !DILocation(line: 280, column: 15, scope: !6553)
!6600 = !DILocation(line: 281, column: 4, scope: !6553)
!6601 = !DILocation(line: 283, column: 21, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 283, column: 8)
!6603 = !DILocation(line: 283, column: 8, scope: !6602)
!6604 = !DILocation(line: 283, column: 8, scope: !6553)
!6605 = !DILocation(line: 284, column: 5, scope: !6602)
!6606 = !DILocation(line: 285, column: 21, scope: !6553)
!6607 = !DILocation(line: 285, column: 28, scope: !6553)
!6608 = !DILocation(line: 285, column: 4, scope: !6553)
!6609 = !DILocation(line: 285, column: 10, scope: !6553)
!6610 = !DILocation(line: 285, column: 19, scope: !6553)
!6611 = !DILocation(line: 286, column: 4, scope: !6553)
!6612 = !DILocation(line: 290, column: 19, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 290, column: 8)
!6614 = !DILocation(line: 290, column: 8, scope: !6613)
!6615 = !DILocation(line: 290, column: 37, scope: !6613)
!6616 = !DILocation(line: 291, column: 8, scope: !6613)
!6617 = !DILocation(line: 291, column: 15, scope: !6613)
!6618 = !DILocation(line: 291, column: 19, scope: !6613)
!6619 = !DILocation(line: 291, column: 22, scope: !6613)
!6620 = !DILocation(line: 291, column: 29, scope: !6613)
!6621 = !DILocation(line: 290, column: 8, scope: !6553)
!6622 = !DILocation(line: 292, column: 5, scope: !6613)
!6623 = !DILocation(line: 293, column: 16, scope: !6553)
!6624 = !DILocation(line: 293, column: 4, scope: !6553)
!6625 = !DILocation(line: 293, column: 10, scope: !6553)
!6626 = !DILocation(line: 293, column: 14, scope: !6553)
!6627 = !DILocation(line: 294, column: 4, scope: !6553)
!6628 = !DILocation(line: 296, column: 4, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 296, column: 4)
!6630 = !DILocation(line: 296, column: 4, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 296, column: 4)
!6632 = !DILocation(line: 297, column: 4, scope: !6553)
!6633 = !DILocation(line: 301, column: 2, scope: !6465)
!6634 = !DILocation(line: 302, column: 1, scope: !6465)
!6635 = !DISubprogram(name: "set_nlink", scope: !226, file: !226, line: 2330, type: !6636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{null, !1175, !7}
!6638 = !DISubprogram(name: "d_make_root", scope: !1142, file: !1142, line: 249, type: !6639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6639 = !DISubroutineType(types: !6640)
!6640 = !{!1140, !1175}
!6641 = !DISubprogram(name: "_printk", scope: !6642, file: !6642, line: 153, type: !6643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6642 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!22, !16, null}
!6645 = distinct !DISubprogram(name: "mknod_ptmx", scope: !3, file: !3, line: 304, type: !2614, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6646)
!6646 = !{!6647, !6648, !6649, !6650, !6651, !6652, !6653, !6654, !6655, !6656, !6657}
!6647 = !DILocalVariable(name: "sb", arg: 1, scope: !6645, file: !3, line: 304, type: !1376)
!6648 = !DILocalVariable(name: "mode", scope: !6645, file: !3, line: 306, type: !22)
!6649 = !DILocalVariable(name: "rc", scope: !6645, file: !3, line: 307, type: !22)
!6650 = !DILocalVariable(name: "dentry", scope: !6645, file: !3, line: 308, type: !1140)
!6651 = !DILocalVariable(name: "inode", scope: !6645, file: !3, line: 309, type: !1175)
!6652 = !DILocalVariable(name: "root", scope: !6645, file: !3, line: 310, type: !1140)
!6653 = !DILocalVariable(name: "fsi", scope: !6645, file: !3, line: 311, type: !5347)
!6654 = !DILocalVariable(name: "opts", scope: !6645, file: !3, line: 312, type: !5688)
!6655 = !DILocalVariable(name: "ptmx_uid", scope: !6645, file: !3, line: 313, type: !290)
!6656 = !DILocalVariable(name: "ptmx_gid", scope: !6645, file: !3, line: 314, type: !298)
!6657 = !DILabel(scope: !6645, name: "out", file: !3, line: 352)
!6658 = !DILocation(line: 304, column: 43, scope: !6645)
!6659 = !DILocation(line: 306, column: 2, scope: !6645)
!6660 = !DILocation(line: 306, column: 6, scope: !6645)
!6661 = !DILocation(line: 307, column: 2, scope: !6645)
!6662 = !DILocation(line: 307, column: 6, scope: !6645)
!6663 = !DILocation(line: 308, column: 2, scope: !6645)
!6664 = !DILocation(line: 308, column: 17, scope: !6645)
!6665 = !DILocation(line: 309, column: 2, scope: !6645)
!6666 = !DILocation(line: 309, column: 16, scope: !6645)
!6667 = !DILocation(line: 310, column: 2, scope: !6645)
!6668 = !DILocation(line: 310, column: 17, scope: !6645)
!6669 = !DILocation(line: 310, column: 24, scope: !6645)
!6670 = !DILocation(line: 310, column: 28, scope: !6645)
!6671 = !DILocation(line: 311, column: 2, scope: !6645)
!6672 = !DILocation(line: 311, column: 22, scope: !6645)
!6673 = !DILocation(line: 311, column: 38, scope: !6645)
!6674 = !DILocation(line: 311, column: 28, scope: !6645)
!6675 = !DILocation(line: 312, column: 2, scope: !6645)
!6676 = !DILocation(line: 312, column: 25, scope: !6645)
!6677 = !DILocation(line: 312, column: 33, scope: !6645)
!6678 = !DILocation(line: 312, column: 38, scope: !6645)
!6679 = !DILocation(line: 313, column: 2, scope: !6645)
!6680 = !DILocation(line: 313, column: 9, scope: !6645)
!6681 = !DILocation(line: 313, column: 20, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 313, column: 20)
!6683 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 313, column: 20)
!6684 = !DILocation(line: 313, column: 20, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 313, column: 20)
!6686 = !DILocation(line: 313, column: 20, scope: !6683)
!6687 = !DILocation(line: 314, column: 2, scope: !6645)
!6688 = !DILocation(line: 314, column: 9, scope: !6645)
!6689 = !DILocation(line: 314, column: 20, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 314, column: 20)
!6691 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 314, column: 20)
!6692 = !DILocation(line: 314, column: 20, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 314, column: 20)
!6694 = !DILocation(line: 314, column: 20, scope: !6691)
!6695 = !DILocation(line: 316, column: 21, scope: !6645)
!6696 = !DILocation(line: 316, column: 13, scope: !6645)
!6697 = !DILocation(line: 316, column: 2, scope: !6645)
!6698 = !DILocation(line: 319, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 319, column: 6)
!6700 = !DILocation(line: 319, column: 11, scope: !6699)
!6701 = !DILocation(line: 319, column: 6, scope: !6645)
!6702 = !DILocation(line: 320, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 319, column: 24)
!6704 = !DILocation(line: 321, column: 3, scope: !6703)
!6705 = !DILocation(line: 324, column: 24, scope: !6645)
!6706 = !DILocation(line: 324, column: 11, scope: !6645)
!6707 = !DILocation(line: 324, column: 9, scope: !6645)
!6708 = !DILocation(line: 325, column: 7, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 325, column: 6)
!6710 = !DILocation(line: 325, column: 6, scope: !6645)
!6711 = !DILocation(line: 326, column: 3, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 326, column: 3)
!6713 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 325, column: 15)
!6714 = !DILocation(line: 326, column: 3, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 326, column: 3)
!6716 = !DILocation(line: 327, column: 3, scope: !6713)
!6717 = !DILocation(line: 333, column: 20, scope: !6645)
!6718 = !DILocation(line: 333, column: 10, scope: !6645)
!6719 = !DILocation(line: 333, column: 8, scope: !6645)
!6720 = !DILocation(line: 334, column: 7, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6645, file: !3, line: 334, column: 6)
!6722 = !DILocation(line: 334, column: 6, scope: !6645)
!6723 = !DILocation(line: 335, column: 3, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 335, column: 3)
!6725 = distinct !DILexicalBlock(scope: !6721, file: !3, line: 334, column: 14)
!6726 = !DILocation(line: 335, column: 3, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 335, column: 3)
!6728 = !DILocation(line: 336, column: 8, scope: !6725)
!6729 = !DILocation(line: 336, column: 3, scope: !6725)
!6730 = !DILocation(line: 337, column: 3, scope: !6725)
!6731 = !DILocation(line: 340, column: 2, scope: !6645)
!6732 = !DILocation(line: 340, column: 9, scope: !6645)
!6733 = !DILocation(line: 340, column: 15, scope: !6645)
!6734 = !DILocation(line: 341, column: 2, scope: !6645)
!6735 = !DILocation(line: 341, column: 9, scope: !6645)
!6736 = !DILocation(line: 341, column: 19, scope: !6645)
!6737 = !DILocation(line: 341, column: 26, scope: !6645)
!6738 = !DILocation(line: 341, column: 36, scope: !6645)
!6739 = !DILocation(line: 341, column: 60, scope: !6645)
!6740 = !DILocation(line: 341, column: 34, scope: !6645)
!6741 = !DILocation(line: 343, column: 17, scope: !6645)
!6742 = !DILocation(line: 343, column: 23, scope: !6645)
!6743 = !DILocation(line: 343, column: 16, scope: !6645)
!6744 = !DILocation(line: 343, column: 7, scope: !6645)
!6745 = !DILocation(line: 344, column: 21, scope: !6645)
!6746 = !DILocation(line: 344, column: 28, scope: !6645)
!6747 = !DILocation(line: 344, column: 2, scope: !6645)
!6748 = !DILocation(line: 345, column: 2, scope: !6645)
!6749 = !DILocation(line: 345, column: 9, scope: !6645)
!6750 = !DILocation(line: 345, column: 17, scope: !6645)
!6751 = !DILocation(line: 346, column: 2, scope: !6645)
!6752 = !DILocation(line: 346, column: 9, scope: !6645)
!6753 = !DILocation(line: 346, column: 17, scope: !6645)
!6754 = !DILocation(line: 348, column: 8, scope: !6645)
!6755 = !DILocation(line: 348, column: 16, scope: !6645)
!6756 = !DILocation(line: 348, column: 2, scope: !6645)
!6757 = !DILocation(line: 350, column: 21, scope: !6645)
!6758 = !DILocation(line: 350, column: 2, scope: !6645)
!6759 = !DILocation(line: 350, column: 7, scope: !6645)
!6760 = !DILocation(line: 350, column: 19, scope: !6645)
!6761 = !DILocation(line: 351, column: 5, scope: !6645)
!6762 = !DILocation(line: 351, column: 2, scope: !6645)
!6763 = !DILocation(line: 352, column: 1, scope: !6645)
!6764 = !DILocation(line: 353, column: 23, scope: !6645)
!6765 = !DILocation(line: 353, column: 15, scope: !6645)
!6766 = !DILocation(line: 353, column: 2, scope: !6645)
!6767 = !DILocation(line: 354, column: 9, scope: !6645)
!6768 = !DILocation(line: 355, column: 1, scope: !6645)
!6769 = !DILocation(line: 354, column: 2, scope: !6645)
!6770 = distinct !DISubprogram(name: "devpts_remount", scope: !3, file: !3, line: 366, type: !2626, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6771)
!6771 = !{!6772, !6773, !6774, !6775, !6776, !6777}
!6772 = !DILocalVariable(name: "sb", arg: 1, scope: !6770, file: !3, line: 366, type: !1376)
!6773 = !DILocalVariable(name: "flags", arg: 2, scope: !6770, file: !3, line: 366, type: !2355)
!6774 = !DILocalVariable(name: "data", arg: 3, scope: !6770, file: !3, line: 366, type: !439)
!6775 = !DILocalVariable(name: "err", scope: !6770, file: !3, line: 368, type: !22)
!6776 = !DILocalVariable(name: "fsi", scope: !6770, file: !3, line: 369, type: !5347)
!6777 = !DILocalVariable(name: "opts", scope: !6770, file: !3, line: 370, type: !5688)
!6778 = !DILocation(line: 366, column: 47, scope: !6770)
!6779 = !DILocation(line: 366, column: 56, scope: !6770)
!6780 = !DILocation(line: 366, column: 69, scope: !6770)
!6781 = !DILocation(line: 368, column: 2, scope: !6770)
!6782 = !DILocation(line: 368, column: 6, scope: !6770)
!6783 = !DILocation(line: 369, column: 2, scope: !6770)
!6784 = !DILocation(line: 369, column: 22, scope: !6770)
!6785 = !DILocation(line: 369, column: 38, scope: !6770)
!6786 = !DILocation(line: 369, column: 28, scope: !6770)
!6787 = !DILocation(line: 370, column: 2, scope: !6770)
!6788 = !DILocation(line: 370, column: 25, scope: !6770)
!6789 = !DILocation(line: 370, column: 33, scope: !6770)
!6790 = !DILocation(line: 370, column: 38, scope: !6770)
!6791 = !DILocation(line: 372, column: 28, scope: !6770)
!6792 = !DILocation(line: 372, column: 49, scope: !6770)
!6793 = !DILocation(line: 372, column: 8, scope: !6770)
!6794 = !DILocation(line: 372, column: 6, scope: !6770)
!6795 = !DILocation(line: 380, column: 19, scope: !6770)
!6796 = !DILocation(line: 380, column: 2, scope: !6770)
!6797 = !DILocation(line: 382, column: 9, scope: !6770)
!6798 = !DILocation(line: 383, column: 1, scope: !6770)
!6799 = !DILocation(line: 382, column: 2, scope: !6770)
!6800 = distinct !DISubprogram(name: "devpts_show_options", scope: !3, file: !3, line: 385, type: !2631, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6801 = !{!6802, !6803, !6804, !6805}
!6802 = !DILocalVariable(name: "seq", arg: 1, scope: !6800, file: !3, line: 385, type: !2115)
!6803 = !DILocalVariable(name: "root", arg: 2, scope: !6800, file: !3, line: 385, type: !1140)
!6804 = !DILocalVariable(name: "fsi", scope: !6800, file: !3, line: 387, type: !5347)
!6805 = !DILocalVariable(name: "opts", scope: !6800, file: !3, line: 388, type: !5688)
!6806 = !DILocation(line: 385, column: 49, scope: !6800)
!6807 = !DILocation(line: 385, column: 69, scope: !6800)
!6808 = !DILocation(line: 387, column: 2, scope: !6800)
!6809 = !DILocation(line: 387, column: 22, scope: !6800)
!6810 = !DILocation(line: 387, column: 38, scope: !6800)
!6811 = !DILocation(line: 387, column: 44, scope: !6800)
!6812 = !DILocation(line: 387, column: 28, scope: !6800)
!6813 = !DILocation(line: 388, column: 2, scope: !6800)
!6814 = !DILocation(line: 388, column: 25, scope: !6800)
!6815 = !DILocation(line: 388, column: 33, scope: !6800)
!6816 = !DILocation(line: 388, column: 38, scope: !6800)
!6817 = !DILocation(line: 390, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 390, column: 6)
!6819 = !DILocation(line: 390, column: 12, scope: !6818)
!6820 = !DILocation(line: 390, column: 6, scope: !6800)
!6821 = !DILocation(line: 391, column: 14, scope: !6818)
!6822 = !DILocation(line: 392, column: 39, scope: !6818)
!6823 = !DILocation(line: 392, column: 45, scope: !6818)
!6824 = !DILocation(line: 392, column: 7, scope: !6818)
!6825 = !DILocation(line: 391, column: 3, scope: !6818)
!6826 = !DILocation(line: 393, column: 6, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 393, column: 6)
!6828 = !DILocation(line: 393, column: 12, scope: !6827)
!6829 = !DILocation(line: 393, column: 6, scope: !6800)
!6830 = !DILocation(line: 394, column: 14, scope: !6827)
!6831 = !DILocation(line: 395, column: 39, scope: !6827)
!6832 = !DILocation(line: 395, column: 45, scope: !6827)
!6833 = !DILocation(line: 395, column: 7, scope: !6827)
!6834 = !DILocation(line: 394, column: 3, scope: !6827)
!6835 = !DILocation(line: 396, column: 13, scope: !6800)
!6836 = !DILocation(line: 396, column: 32, scope: !6800)
!6837 = !DILocation(line: 396, column: 38, scope: !6800)
!6838 = !DILocation(line: 396, column: 2, scope: !6800)
!6839 = !DILocation(line: 397, column: 13, scope: !6800)
!6840 = !DILocation(line: 397, column: 36, scope: !6800)
!6841 = !DILocation(line: 397, column: 42, scope: !6800)
!6842 = !DILocation(line: 397, column: 2, scope: !6800)
!6843 = !DILocation(line: 398, column: 6, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6800, file: !3, line: 398, column: 6)
!6845 = !DILocation(line: 398, column: 12, scope: !6844)
!6846 = !DILocation(line: 398, column: 16, scope: !6844)
!6847 = !DILocation(line: 398, column: 6, scope: !6800)
!6848 = !DILocation(line: 399, column: 14, scope: !6844)
!6849 = !DILocation(line: 399, column: 30, scope: !6844)
!6850 = !DILocation(line: 399, column: 36, scope: !6844)
!6851 = !DILocation(line: 399, column: 3, scope: !6844)
!6852 = !DILocation(line: 402, column: 1, scope: !6800)
!6853 = !DILocation(line: 401, column: 2, scope: !6800)
!6854 = distinct !DISubprogram(name: "update_ptmx_mode", scope: !3, file: !3, line: 357, type: !5571, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6855)
!6855 = !{!6856, !6857}
!6856 = !DILocalVariable(name: "fsi", arg: 1, scope: !6854, file: !3, line: 357, type: !5347)
!6857 = !DILocalVariable(name: "inode", scope: !6854, file: !3, line: 359, type: !1175)
!6858 = !DILocation(line: 357, column: 50, scope: !6854)
!6859 = !DILocation(line: 359, column: 2, scope: !6854)
!6860 = !DILocation(line: 359, column: 16, scope: !6854)
!6861 = !DILocation(line: 360, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 360, column: 6)
!6863 = !DILocation(line: 360, column: 11, scope: !6862)
!6864 = !DILocation(line: 360, column: 6, scope: !6854)
!6865 = !DILocation(line: 361, column: 19, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 360, column: 24)
!6867 = !DILocation(line: 361, column: 24, scope: !6866)
!6868 = !DILocation(line: 361, column: 11, scope: !6866)
!6869 = !DILocation(line: 361, column: 9, scope: !6866)
!6870 = !DILocation(line: 362, column: 27, scope: !6866)
!6871 = !DILocation(line: 362, column: 32, scope: !6866)
!6872 = !DILocation(line: 362, column: 43, scope: !6866)
!6873 = !DILocation(line: 362, column: 26, scope: !6866)
!6874 = !DILocation(line: 362, column: 19, scope: !6866)
!6875 = !DILocation(line: 362, column: 3, scope: !6866)
!6876 = !DILocation(line: 362, column: 10, scope: !6866)
!6877 = !DILocation(line: 362, column: 17, scope: !6866)
!6878 = !DILocation(line: 363, column: 2, scope: !6866)
!6879 = !DILocation(line: 364, column: 1, scope: !6854)
!6880 = !DISubprogram(name: "seq_printf", scope: !2117, file: !2117, line: 119, type: !6881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6881 = !DISubroutineType(types: !6882)
!6882 = !{null, !2115, !16, null}
!6883 = distinct !DISubprogram(name: "from_kuid_munged", scope: !291, file: !291, line: 163, type: !6884, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6886)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{!295, !520, !290}
!6886 = !{!6887, !6888, !6889}
!6887 = !DILocalVariable(name: "to", arg: 1, scope: !6883, file: !291, line: 163, type: !520)
!6888 = !DILocalVariable(name: "kuid", arg: 2, scope: !6883, file: !291, line: 163, type: !290)
!6889 = !DILocalVariable(name: "uid", scope: !6883, file: !291, line: 165, type: !295)
!6890 = !DILocation(line: 163, column: 61, scope: !6883)
!6891 = !DILocation(line: 163, column: 72, scope: !6883)
!6892 = !DILocation(line: 165, column: 2, scope: !6883)
!6893 = !DILocation(line: 165, column: 8, scope: !6883)
!6894 = !DILocation(line: 165, column: 24, scope: !6883)
!6895 = !DILocation(line: 165, column: 14, scope: !6883)
!6896 = !DILocation(line: 166, column: 6, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6883, file: !291, line: 166, column: 6)
!6898 = !DILocation(line: 166, column: 10, scope: !6897)
!6899 = !DILocation(line: 166, column: 6, scope: !6883)
!6900 = !DILocation(line: 167, column: 9, scope: !6897)
!6901 = !DILocation(line: 167, column: 7, scope: !6897)
!6902 = !DILocation(line: 167, column: 3, scope: !6897)
!6903 = !DILocation(line: 168, column: 9, scope: !6883)
!6904 = !DILocation(line: 169, column: 1, scope: !6883)
!6905 = !DILocation(line: 168, column: 2, scope: !6883)
!6906 = distinct !DISubprogram(name: "from_kgid_munged", scope: !291, file: !291, line: 171, type: !6907, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6909)
!6907 = !DISubroutineType(types: !6908)
!6908 = !{!302, !520, !298}
!6909 = !{!6910, !6911, !6912}
!6910 = !DILocalVariable(name: "to", arg: 1, scope: !6906, file: !291, line: 171, type: !520)
!6911 = !DILocalVariable(name: "kgid", arg: 2, scope: !6906, file: !291, line: 171, type: !298)
!6912 = !DILocalVariable(name: "gid", scope: !6906, file: !291, line: 173, type: !302)
!6913 = !DILocation(line: 171, column: 61, scope: !6906)
!6914 = !DILocation(line: 171, column: 72, scope: !6906)
!6915 = !DILocation(line: 173, column: 2, scope: !6906)
!6916 = !DILocation(line: 173, column: 8, scope: !6906)
!6917 = !DILocation(line: 173, column: 24, scope: !6906)
!6918 = !DILocation(line: 173, column: 14, scope: !6906)
!6919 = !DILocation(line: 174, column: 6, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6906, file: !291, line: 174, column: 6)
!6921 = !DILocation(line: 174, column: 10, scope: !6920)
!6922 = !DILocation(line: 174, column: 6, scope: !6906)
!6923 = !DILocation(line: 175, column: 9, scope: !6920)
!6924 = !DILocation(line: 175, column: 7, scope: !6920)
!6925 = !DILocation(line: 175, column: 3, scope: !6920)
!6926 = !DILocation(line: 176, column: 9, scope: !6906)
!6927 = !DILocation(line: 177, column: 1, scope: !6906)
!6928 = !DILocation(line: 176, column: 2, scope: !6906)
!6929 = distinct !DISubprogram(name: "from_kuid", scope: !291, file: !291, line: 153, type: !6884, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6930)
!6930 = !{!6931, !6932}
!6931 = !DILocalVariable(name: "to", arg: 1, scope: !6929, file: !291, line: 153, type: !520)
!6932 = !DILocalVariable(name: "kuid", arg: 2, scope: !6929, file: !291, line: 153, type: !290)
!6933 = !DILocation(line: 153, column: 54, scope: !6929)
!6934 = !DILocation(line: 153, column: 65, scope: !6929)
!6935 = !DILocation(line: 155, column: 9, scope: !6929)
!6936 = !DILocation(line: 155, column: 2, scope: !6929)
!6937 = distinct !DISubprogram(name: "__kuid_val", scope: !291, file: !291, line: 34, type: !6938, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!295, !290}
!6940 = !{!6941}
!6941 = !DILocalVariable(name: "uid", arg: 1, scope: !6937, file: !291, line: 34, type: !290)
!6942 = !DILocation(line: 34, column: 39, scope: !6937)
!6943 = !DILocation(line: 36, column: 13, scope: !6937)
!6944 = !DILocation(line: 36, column: 2, scope: !6937)
!6945 = distinct !DISubprogram(name: "from_kgid", scope: !291, file: !291, line: 158, type: !6907, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6946)
!6946 = !{!6947, !6948}
!6947 = !DILocalVariable(name: "to", arg: 1, scope: !6945, file: !291, line: 158, type: !520)
!6948 = !DILocalVariable(name: "kgid", arg: 2, scope: !6945, file: !291, line: 158, type: !298)
!6949 = !DILocation(line: 158, column: 54, scope: !6945)
!6950 = !DILocation(line: 158, column: 65, scope: !6945)
!6951 = !DILocation(line: 160, column: 9, scope: !6945)
!6952 = !DILocation(line: 160, column: 2, scope: !6945)
!6953 = distinct !DISubprogram(name: "__kgid_val", scope: !291, file: !291, line: 39, type: !6954, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6956)
!6954 = !DISubroutineType(types: !6955)
!6955 = !{!302, !298}
!6956 = !{!6957}
!6957 = !DILocalVariable(name: "gid", arg: 1, scope: !6953, file: !291, line: 39, type: !298)
!6958 = !DILocation(line: 39, column: 39, scope: !6953)
!6959 = !DILocation(line: 41, column: 13, scope: !6953)
!6960 = !DILocation(line: 41, column: 2, scope: !6953)
!6961 = distinct !DISubprogram(name: "kzalloc", scope: !250, file: !250, line: 719, type: !6962, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6964)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{!20, !35, !274}
!6964 = !{!6965, !6966}
!6965 = !DILocalVariable(name: "size", arg: 1, scope: !6961, file: !250, line: 719, type: !35)
!6966 = !DILocalVariable(name: "flags", arg: 2, scope: !6961, file: !250, line: 719, type: !274)
!6967 = !DILocation(line: 719, column: 52, scope: !6961)
!6968 = !DILocation(line: 719, column: 64, scope: !6961)
!6969 = !DILocation(line: 721, column: 17, scope: !6961)
!6970 = !DILocation(line: 721, column: 23, scope: !6961)
!6971 = !DILocation(line: 721, column: 29, scope: !6961)
!6972 = !DILocation(line: 721, column: 9, scope: !6961)
!6973 = !DILocation(line: 721, column: 2, scope: !6961)
!6974 = distinct !DISubprogram(name: "ida_init", scope: !1089, file: !1089, line: 314, type: !6975, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6977)
!6975 = !DISubroutineType(types: !6976)
!6976 = !{null, !5637}
!6977 = !{!6978}
!6978 = !DILocalVariable(name: "ida", arg: 1, scope: !6974, file: !1089, line: 314, type: !5637)
!6979 = !DILocation(line: 314, column: 41, scope: !6974)
!6980 = !DILocation(line: 316, column: 17, scope: !6974)
!6981 = !DILocation(line: 316, column: 22, scope: !6974)
!6982 = !DILocation(line: 316, column: 2, scope: !6974)
!6983 = !DILocation(line: 317, column: 1, scope: !6974)
!6984 = distinct !DISubprogram(name: "kmalloc", scope: !250, file: !250, line: 591, type: !6962, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6985)
!6985 = !{!6986, !6987, !6988}
!6986 = !DILocalVariable(name: "size", arg: 1, scope: !6984, file: !250, line: 591, type: !35)
!6987 = !DILocalVariable(name: "flags", arg: 2, scope: !6984, file: !250, line: 591, type: !274)
!6988 = !DILocalVariable(name: "index", scope: !6989, file: !250, line: 594, type: !7)
!6989 = distinct !DILexicalBlock(scope: !6990, file: !250, line: 593, column: 42)
!6990 = distinct !DILexicalBlock(scope: !6984, file: !250, line: 593, column: 6)
!6991 = !DILocation(line: 591, column: 61, scope: !6984)
!6992 = !DILocation(line: 591, column: 73, scope: !6984)
!6993 = !DILocation(line: 593, column: 27, scope: !6990)
!6994 = !DILocation(line: 593, column: 6, scope: !6990)
!6995 = !DILocation(line: 593, column: 33, scope: !6990)
!6996 = !DILocation(line: 593, column: 36, scope: !6990)
!6997 = !DILocation(line: 593, column: 6, scope: !6984)
!6998 = !DILocation(line: 594, column: 3, scope: !6989)
!6999 = !DILocation(line: 594, column: 16, scope: !6989)
!7000 = !DILocation(line: 596, column: 7, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6989, file: !250, line: 596, column: 7)
!7002 = !DILocation(line: 596, column: 12, scope: !7001)
!7003 = !DILocation(line: 596, column: 7, scope: !6989)
!7004 = !DILocation(line: 597, column: 25, scope: !7001)
!7005 = !DILocation(line: 597, column: 31, scope: !7001)
!7006 = !DILocation(line: 597, column: 11, scope: !7001)
!7007 = !DILocation(line: 597, column: 4, scope: !7001)
!7008 = !DILocation(line: 599, column: 11, scope: !6989)
!7009 = !DILocation(line: 599, column: 9, scope: !6989)
!7010 = !DILocation(line: 601, column: 33, scope: !6989)
!7011 = !DILocation(line: 601, column: 40, scope: !6989)
!7012 = !DILocation(line: 601, column: 20, scope: !6989)
!7013 = !DILocation(line: 601, column: 5, scope: !6989)
!7014 = !DILocation(line: 601, column: 51, scope: !6989)
!7015 = !DILocation(line: 602, column: 5, scope: !6989)
!7016 = !DILocation(line: 602, column: 12, scope: !6989)
!7017 = !DILocation(line: 600, column: 10, scope: !6989)
!7018 = !DILocation(line: 600, column: 3, scope: !6989)
!7019 = !DILocation(line: 603, column: 2, scope: !6990)
!7020 = !DILocation(line: 604, column: 19, scope: !6984)
!7021 = !DILocation(line: 604, column: 25, scope: !6984)
!7022 = !DILocation(line: 604, column: 9, scope: !6984)
!7023 = !DILocation(line: 604, column: 2, scope: !6984)
!7024 = !DILocation(line: 605, column: 1, scope: !6984)
!7025 = !DISubprogram(name: "kmalloc_large", scope: !250, file: !250, line: 531, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7026 = distinct !DISubprogram(name: "__kmalloc_index", scope: !250, file: !250, line: 444, type: !7027, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7029)
!7027 = !DISubroutineType(types: !7028)
!7028 = !{!7, !35, !428}
!7029 = !{!7030, !7031}
!7030 = !DILocalVariable(name: "size", arg: 1, scope: !7026, file: !250, line: 444, type: !35)
!7031 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7026, file: !250, line: 445, type: !428)
!7032 = !DILocation(line: 444, column: 60, scope: !7026)
!7033 = !DILocation(line: 445, column: 16, scope: !7026)
!7034 = !DILocation(line: 447, column: 7, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 447, column: 6)
!7036 = !DILocation(line: 447, column: 6, scope: !7026)
!7037 = !DILocation(line: 448, column: 3, scope: !7035)
!7038 = !DILocation(line: 450, column: 6, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 450, column: 6)
!7040 = !DILocation(line: 450, column: 11, scope: !7039)
!7041 = !DILocation(line: 450, column: 6, scope: !7026)
!7042 = !DILocation(line: 451, column: 3, scope: !7039)
!7043 = !DILocation(line: 453, column: 32, scope: !7044)
!7044 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 453, column: 6)
!7045 = !DILocation(line: 453, column: 37, scope: !7044)
!7046 = !DILocation(line: 453, column: 42, scope: !7044)
!7047 = !DILocation(line: 453, column: 45, scope: !7044)
!7048 = !DILocation(line: 453, column: 50, scope: !7044)
!7049 = !DILocation(line: 453, column: 6, scope: !7026)
!7050 = !DILocation(line: 454, column: 3, scope: !7044)
!7051 = !DILocation(line: 455, column: 32, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 455, column: 6)
!7053 = !DILocation(line: 455, column: 37, scope: !7052)
!7054 = !DILocation(line: 455, column: 43, scope: !7052)
!7055 = !DILocation(line: 455, column: 46, scope: !7052)
!7056 = !DILocation(line: 455, column: 51, scope: !7052)
!7057 = !DILocation(line: 455, column: 6, scope: !7026)
!7058 = !DILocation(line: 456, column: 3, scope: !7052)
!7059 = !DILocation(line: 457, column: 6, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 457, column: 6)
!7061 = !DILocation(line: 457, column: 11, scope: !7060)
!7062 = !DILocation(line: 457, column: 6, scope: !7026)
!7063 = !DILocation(line: 457, column: 26, scope: !7060)
!7064 = !DILocation(line: 458, column: 6, scope: !7065)
!7065 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 458, column: 6)
!7066 = !DILocation(line: 458, column: 11, scope: !7065)
!7067 = !DILocation(line: 458, column: 6, scope: !7026)
!7068 = !DILocation(line: 458, column: 26, scope: !7065)
!7069 = !DILocation(line: 459, column: 6, scope: !7070)
!7070 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 459, column: 6)
!7071 = !DILocation(line: 459, column: 11, scope: !7070)
!7072 = !DILocation(line: 459, column: 6, scope: !7026)
!7073 = !DILocation(line: 459, column: 26, scope: !7070)
!7074 = !DILocation(line: 460, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 460, column: 6)
!7076 = !DILocation(line: 460, column: 11, scope: !7075)
!7077 = !DILocation(line: 460, column: 6, scope: !7026)
!7078 = !DILocation(line: 460, column: 26, scope: !7075)
!7079 = !DILocation(line: 461, column: 6, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 461, column: 6)
!7081 = !DILocation(line: 461, column: 11, scope: !7080)
!7082 = !DILocation(line: 461, column: 6, scope: !7026)
!7083 = !DILocation(line: 461, column: 26, scope: !7080)
!7084 = !DILocation(line: 462, column: 6, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 462, column: 6)
!7086 = !DILocation(line: 462, column: 11, scope: !7085)
!7087 = !DILocation(line: 462, column: 6, scope: !7026)
!7088 = !DILocation(line: 462, column: 26, scope: !7085)
!7089 = !DILocation(line: 463, column: 6, scope: !7090)
!7090 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 463, column: 6)
!7091 = !DILocation(line: 463, column: 11, scope: !7090)
!7092 = !DILocation(line: 463, column: 6, scope: !7026)
!7093 = !DILocation(line: 463, column: 26, scope: !7090)
!7094 = !DILocation(line: 464, column: 6, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 464, column: 6)
!7096 = !DILocation(line: 464, column: 11, scope: !7095)
!7097 = !DILocation(line: 464, column: 6, scope: !7026)
!7098 = !DILocation(line: 464, column: 26, scope: !7095)
!7099 = !DILocation(line: 465, column: 6, scope: !7100)
!7100 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 465, column: 6)
!7101 = !DILocation(line: 465, column: 11, scope: !7100)
!7102 = !DILocation(line: 465, column: 6, scope: !7026)
!7103 = !DILocation(line: 465, column: 26, scope: !7100)
!7104 = !DILocation(line: 466, column: 6, scope: !7105)
!7105 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 466, column: 6)
!7106 = !DILocation(line: 466, column: 11, scope: !7105)
!7107 = !DILocation(line: 466, column: 6, scope: !7026)
!7108 = !DILocation(line: 466, column: 26, scope: !7105)
!7109 = !DILocation(line: 467, column: 6, scope: !7110)
!7110 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 467, column: 6)
!7111 = !DILocation(line: 467, column: 11, scope: !7110)
!7112 = !DILocation(line: 467, column: 6, scope: !7026)
!7113 = !DILocation(line: 467, column: 26, scope: !7110)
!7114 = !DILocation(line: 468, column: 6, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 468, column: 6)
!7116 = !DILocation(line: 468, column: 11, scope: !7115)
!7117 = !DILocation(line: 468, column: 6, scope: !7026)
!7118 = !DILocation(line: 468, column: 26, scope: !7115)
!7119 = !DILocation(line: 469, column: 6, scope: !7120)
!7120 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 469, column: 6)
!7121 = !DILocation(line: 469, column: 11, scope: !7120)
!7122 = !DILocation(line: 469, column: 6, scope: !7026)
!7123 = !DILocation(line: 469, column: 26, scope: !7120)
!7124 = !DILocation(line: 470, column: 6, scope: !7125)
!7125 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 470, column: 6)
!7126 = !DILocation(line: 470, column: 11, scope: !7125)
!7127 = !DILocation(line: 470, column: 6, scope: !7026)
!7128 = !DILocation(line: 470, column: 26, scope: !7125)
!7129 = !DILocation(line: 471, column: 6, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 471, column: 6)
!7131 = !DILocation(line: 471, column: 11, scope: !7130)
!7132 = !DILocation(line: 471, column: 6, scope: !7026)
!7133 = !DILocation(line: 471, column: 26, scope: !7130)
!7134 = !DILocation(line: 472, column: 6, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 472, column: 6)
!7136 = !DILocation(line: 472, column: 11, scope: !7135)
!7137 = !DILocation(line: 472, column: 6, scope: !7026)
!7138 = !DILocation(line: 472, column: 26, scope: !7135)
!7139 = !DILocation(line: 473, column: 6, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 473, column: 6)
!7141 = !DILocation(line: 473, column: 11, scope: !7140)
!7142 = !DILocation(line: 473, column: 6, scope: !7026)
!7143 = !DILocation(line: 473, column: 26, scope: !7140)
!7144 = !DILocation(line: 474, column: 6, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 474, column: 6)
!7146 = !DILocation(line: 474, column: 11, scope: !7145)
!7147 = !DILocation(line: 474, column: 6, scope: !7026)
!7148 = !DILocation(line: 474, column: 27, scope: !7145)
!7149 = !DILocation(line: 475, column: 6, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 475, column: 6)
!7151 = !DILocation(line: 475, column: 11, scope: !7150)
!7152 = !DILocation(line: 475, column: 6, scope: !7026)
!7153 = !DILocation(line: 475, column: 32, scope: !7150)
!7154 = !DILocation(line: 477, column: 50, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7026, file: !250, line: 477, column: 6)
!7156 = !{i8 0, i8 2}
!7157 = !DILocation(line: 477, column: 6, scope: !7026)
!7158 = !DILocation(line: 478, column: 3, scope: !7155)
!7159 = !DILocation(line: 478, column: 3, scope: !7160)
!7160 = distinct !DILexicalBlock(scope: !7161, file: !250, line: 478, column: 3)
!7161 = distinct !DILexicalBlock(scope: !7155, file: !250, line: 478, column: 3)
!7162 = !{i32 -2141467925}
!7163 = !DILocation(line: 478, column: 3, scope: !7161)
!7164 = !DILocation(line: 480, column: 3, scope: !7155)
!7165 = !DILocation(line: 480, column: 3, scope: !7166)
!7166 = distinct !DILexicalBlock(scope: !7155, file: !250, line: 480, column: 3)
!7167 = !DILocation(line: 480, column: 3, scope: !7168)
!7168 = distinct !DILexicalBlock(scope: !7166, file: !250, line: 480, column: 3)
!7169 = !DILocation(line: 480, column: 3, scope: !7170)
!7170 = distinct !DILexicalBlock(scope: !7166, file: !250, line: 480, column: 3)
!7171 = !{i64 2153499574, i64 2153499603, i64 2153499649, i64 2153499707, i64 2153499761, i64 2153499815, i64 2153499870, i64 2153499901}
!7172 = !DILocation(line: 483, column: 2, scope: !7026)
!7173 = !DILocation(line: 484, column: 1, scope: !7026)
!7174 = !DISubprogram(name: "kmalloc_trace", scope: !250, file: !250, line: 525, type: !7175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7175 = !DISubroutineType(types: !7176)
!7176 = !{!20, !1103, !274, !35}
!7177 = distinct !DISubprogram(name: "kmalloc_type", scope: !250, file: !250, line: 401, type: !7178, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7180)
!7178 = !DISubroutineType(types: !7179)
!7179 = !{!249, !274, !39}
!7180 = !{!7181, !7182}
!7181 = !DILocalVariable(name: "flags", arg: 1, scope: !7177, file: !250, line: 401, type: !274)
!7182 = !DILocalVariable(name: "caller", arg: 2, scope: !7177, file: !250, line: 401, type: !39)
!7183 = !DILocation(line: 401, column: 67, scope: !7177)
!7184 = !DILocation(line: 401, column: 88, scope: !7177)
!7185 = !DILocation(line: 407, column: 6, scope: !7186)
!7186 = distinct !DILexicalBlock(scope: !7177, file: !250, line: 407, column: 6)
!7187 = !DILocation(line: 407, column: 6, scope: !7177)
!7188 = !DILocation(line: 413, column: 3, scope: !7186)
!7189 = !DILocation(line: 423, column: 38, scope: !7190)
!7190 = distinct !DILexicalBlock(scope: !7177, file: !250, line: 423, column: 6)
!7191 = !DILocation(line: 423, column: 44, scope: !7190)
!7192 = !DILocation(line: 423, column: 6, scope: !7177)
!7193 = !DILocation(line: 424, column: 3, scope: !7190)
!7194 = !DILocation(line: 426, column: 3, scope: !7195)
!7195 = distinct !DILexicalBlock(scope: !7177, file: !250, line: 425, column: 6)
!7196 = !DILocation(line: 429, column: 1, scope: !7177)
!7197 = !DISubprogram(name: "__kmalloc", scope: !250, file: !250, line: 488, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7198 = !DISubprogram(name: "__compiletime_assert_255", scope: !250, file: !250, line: 478, type: !2561, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7199 = distinct !DISubprogram(name: "xa_init_flags", scope: !260, file: !260, line: 378, type: !7200, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7203)
!7200 = !DISubroutineType(types: !7201)
!7201 = !{null, !7202, !274}
!7202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!7203 = !{!7204, !7205}
!7204 = !DILocalVariable(name: "xa", arg: 1, scope: !7199, file: !260, line: 378, type: !7202)
!7205 = !DILocalVariable(name: "flags", arg: 2, scope: !7199, file: !260, line: 378, type: !274)
!7206 = !DILocation(line: 378, column: 49, scope: !7199)
!7207 = !DILocation(line: 378, column: 59, scope: !7199)
!7208 = !DILocation(line: 380, column: 2, scope: !7199)
!7209 = !DILocation(line: 380, column: 2, scope: !7210)
!7210 = distinct !DILexicalBlock(scope: !7199, file: !260, line: 380, column: 2)
!7211 = !DILocation(line: 381, column: 17, scope: !7199)
!7212 = !DILocation(line: 381, column: 2, scope: !7199)
!7213 = !DILocation(line: 381, column: 6, scope: !7199)
!7214 = !DILocation(line: 381, column: 15, scope: !7199)
!7215 = !DILocation(line: 382, column: 2, scope: !7199)
!7216 = !DILocation(line: 382, column: 6, scope: !7199)
!7217 = !DILocation(line: 382, column: 14, scope: !7199)
!7218 = !DILocation(line: 383, column: 1, scope: !7199)
!7219 = distinct !DISubprogram(name: "spinlock_check", scope: !7220, file: !7220, line: 324, type: !7221, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7224)
!7220 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7221 = !DISubroutineType(types: !7222)
!7222 = !{!7223, !1801}
!7223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!7224 = !{!7225}
!7225 = !DILocalVariable(name: "lock", arg: 1, scope: !7219, file: !7220, line: 324, type: !1801)
!7226 = !DILocation(line: 324, column: 67, scope: !7219)
!7227 = !DILocation(line: 326, column: 10, scope: !7219)
!7228 = !DILocation(line: 326, column: 16, scope: !7219)
!7229 = !DILocation(line: 326, column: 2, scope: !7219)
!7230 = !DISubprogram(name: "strsep", scope: !7231, file: !7231, line: 137, type: !7232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7231 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7232 = !DISubroutineType(types: !7233)
!7233 = !{!439, !7234, !16}
!7234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!7235 = !DISubprogram(name: "match_token", scope: !5304, file: !5304, line: 30, type: !7236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7236 = !DISubroutineType(types: !7237)
!7237 = !{!22, !439, !7238, !7239}
!7238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!7239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6478, size: 64)
!7240 = !DISubprogram(name: "match_int", scope: !5304, file: !5304, line: 31, type: !7241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7241 = !DISubroutineType(types: !7242)
!7242 = !{!22, !7239, !2355}
!7243 = distinct !DISubprogram(name: "make_kuid", scope: !291, file: !291, line: 143, type: !7244, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7246)
!7244 = !DISubroutineType(types: !7245)
!7245 = !{!290, !520, !295}
!7246 = !{!7247, !7248}
!7247 = !DILocalVariable(name: "from", arg: 1, scope: !7243, file: !291, line: 143, type: !520)
!7248 = !DILocalVariable(name: "uid", arg: 2, scope: !7243, file: !291, line: 143, type: !295)
!7249 = !DILocation(line: 143, column: 55, scope: !7243)
!7250 = !DILocation(line: 143, column: 67, scope: !7243)
!7251 = !DILocation(line: 145, column: 9, scope: !7243)
!7252 = !DILocation(line: 145, column: 2, scope: !7243)
!7253 = distinct !DISubprogram(name: "current_user_ns", scope: !278, file: !278, line: 346, type: !7254, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7254 = !DISubroutineType(types: !7255)
!7255 = !{!520}
!7256 = !DILocation(line: 348, column: 2, scope: !7253)
!7257 = distinct !DISubprogram(name: "uid_valid", scope: !291, file: !291, line: 111, type: !7258, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7260)
!7258 = !DISubroutineType(types: !7259)
!7259 = !{!428, !290}
!7260 = !{!7261}
!7261 = !DILocalVariable(name: "uid", arg: 1, scope: !7257, file: !291, line: 111, type: !290)
!7262 = !DILocation(line: 111, column: 37, scope: !7257)
!7263 = !DILocation(line: 113, column: 9, scope: !7257)
!7264 = !DILocation(line: 113, column: 25, scope: !7257)
!7265 = !DILocation(line: 113, column: 2, scope: !7257)
!7266 = distinct !DISubprogram(name: "make_kgid", scope: !291, file: !291, line: 148, type: !7267, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7269)
!7267 = !DISubroutineType(types: !7268)
!7268 = !{!298, !520, !302}
!7269 = !{!7270, !7271}
!7270 = !DILocalVariable(name: "from", arg: 1, scope: !7266, file: !291, line: 148, type: !520)
!7271 = !DILocalVariable(name: "gid", arg: 2, scope: !7266, file: !291, line: 148, type: !302)
!7272 = !DILocation(line: 148, column: 55, scope: !7266)
!7273 = !DILocation(line: 148, column: 67, scope: !7266)
!7274 = !DILocation(line: 150, column: 9, scope: !7266)
!7275 = !DILocation(line: 150, column: 2, scope: !7266)
!7276 = distinct !DISubprogram(name: "gid_valid", scope: !291, file: !291, line: 116, type: !7277, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7279)
!7277 = !DISubroutineType(types: !7278)
!7278 = !{!428, !298}
!7279 = !{!7280}
!7280 = !DILocalVariable(name: "gid", arg: 1, scope: !7276, file: !291, line: 116, type: !298)
!7281 = !DILocation(line: 116, column: 37, scope: !7276)
!7282 = !DILocation(line: 118, column: 9, scope: !7276)
!7283 = !DILocation(line: 118, column: 25, scope: !7276)
!7284 = !DILocation(line: 118, column: 2, scope: !7276)
!7285 = !DISubprogram(name: "match_octal", scope: !5304, file: !5304, line: 34, type: !7241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7286 = distinct !DISubprogram(name: "inode_lock", scope: !226, file: !226, line: 802, type: !2587, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7287)
!7287 = !{!7288}
!7288 = !DILocalVariable(name: "inode", arg: 1, scope: !7286, file: !226, line: 802, type: !1175)
!7289 = !DILocation(line: 802, column: 45, scope: !7286)
!7290 = !DILocation(line: 804, column: 14, scope: !7286)
!7291 = !DILocation(line: 804, column: 21, scope: !7286)
!7292 = !DILocation(line: 804, column: 2, scope: !7286)
!7293 = !DILocation(line: 805, column: 1, scope: !7286)
!7294 = distinct !DISubprogram(name: "inode_unlock", scope: !226, file: !226, line: 807, type: !2587, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7295 = !{!7296}
!7296 = !DILocalVariable(name: "inode", arg: 1, scope: !7294, file: !226, line: 807, type: !1175)
!7297 = !DILocation(line: 807, column: 47, scope: !7294)
!7298 = !DILocation(line: 809, column: 12, scope: !7294)
!7299 = !DILocation(line: 809, column: 19, scope: !7294)
!7300 = !DILocation(line: 809, column: 2, scope: !7294)
!7301 = !DILocation(line: 810, column: 1, scope: !7294)
!7302 = !DISubprogram(name: "down_write", scope: !355, file: !355, line: 187, type: !7303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7303 = !DISubroutineType(types: !7304)
!7304 = !{null, !7305}
!7305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!7306 = !DISubprogram(name: "up_write", scope: !355, file: !355, line: 203, type: !7303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7307 = !DISubprogram(name: "ida_destroy", scope: !1089, file: !1089, line: 259, type: !6975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7308 = !DISubprogram(name: "kfree", scope: !250, file: !250, line: 227, type: !7309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7309 = !DISubroutineType(types: !7310)
!7310 = !{null, !2053}
!7311 = !DISubprogram(name: "kill_litter_super", scope: !226, file: !226, line: 2412, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
