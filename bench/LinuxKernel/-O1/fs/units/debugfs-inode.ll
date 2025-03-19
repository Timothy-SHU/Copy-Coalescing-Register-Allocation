; ModuleID = 'fs/debugfs/inode.c'
source_filename = "fs/debugfs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_lookup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_lookup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_file_unsafe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_file_unsafe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_file_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_file_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_dir: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_dir ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_automount: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_automount ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_create_symlink: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_create_symlink ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_lookup_and_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_lookup_and_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_rename: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_rename ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debugfs_initialized: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debugfs_initialized ; .previous"
module asm ".section\09\22.initcall1.init..kmod_debugfs__345_918_debugfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_debugfs__345_918_debugfs_init1:\09\09\09"
module asm ".long\09__initstub__kmod_debugfs__345_918_debugfs_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.mnt_idmap = type opaque
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pcpu_hot = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [16 x i8] }
%struct.anon.28 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [48 x i8] }
%struct.anon.30 = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.16 = type { ptr }
%struct.debugfs_fsdata = type { ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.refcount_struct, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.name_snapshot = type { %struct.qstr, [32 x i8] }
%struct.iattr = type { i32, i16, %union.anon.25, %union.anon.26, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.25 = type { %struct.kuid_t }
%union.anon.26 = type { %struct.kgid_t }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.debugfs_fs_info = type { %struct.debugfs_mount_opts }
%struct.debugfs_mount_opts = type { %struct.kuid_t, %struct.kgid_t, i16, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.path = type { ptr, ptr }

@__UNIQUE_ID_alias332 = internal constant [25 x i8] c"debugfs.alias=fs-debugfs\00", section ".modinfo", align 1, !dbg !0
@debugfs_mount = internal global ptr null, align 8, !dbg !4410
@__UNIQUE_ID___addressable_debugfs_lookup333 = internal global ptr @debugfs_lookup, section ".discard.addressable", align 8, !dbg !4365
@debugfs_full_proxy_file_operations = external dso_local constant %struct.file_operations, align 8
@debugfs_noop_file_operations = external dso_local constant %struct.file_operations, align 8
@__UNIQUE_ID___addressable_debugfs_create_file334 = internal global ptr @debugfs_create_file, section ".discard.addressable", align 8, !dbg !4367
@debugfs_open_proxy_file_operations = external dso_local constant %struct.file_operations, align 8
@__UNIQUE_ID___addressable_debugfs_create_file_unsafe335 = internal global ptr @debugfs_create_file_unsafe, section ".discard.addressable", align 8, !dbg !4369
@__UNIQUE_ID___addressable_debugfs_create_file_size336 = internal global ptr @debugfs_create_file_size, section ".discard.addressable", align 8, !dbg !4371
@debugfs_allow = internal global i32 3, section ".data..ro_after_init", align 4, !dbg !4443
@.str = private unnamed_addr constant [64 x i8] c"\013debugfs: out of free dentries, can not create directory '%s'\0A\00", align 1, !dbg !4373
@debugfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4445
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@__UNIQUE_ID___addressable_debugfs_create_dir337 = internal global ptr @debugfs_create_dir, section ".discard.addressable", align 8, !dbg !4376
@.str.1 = private unnamed_addr constant [64 x i8] c"\013debugfs: out of free dentries, can not create automount '%s'\0A\00", align 1, !dbg !4378
@__UNIQUE_ID___addressable_debugfs_create_automount338 = internal global ptr @debugfs_create_automount, section ".discard.addressable", align 8, !dbg !4380
@.str.2 = private unnamed_addr constant [62 x i8] c"\013debugfs: out of free dentries, can not create symlink '%s'\0A\00", align 1, !dbg !4382
@debugfs_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4452
@__UNIQUE_ID___addressable_debugfs_create_symlink339 = internal global ptr @debugfs_create_symlink, section ".discard.addressable", align 8, !dbg !4387
@debug_fs_type = internal global %struct.file_system_type { ptr @.str.9, i32 0, ptr null, ptr null, ptr @debug_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !4456
@debugfs_mount_count = internal global i32 0, align 4, !dbg !4412
@__UNIQUE_ID___addressable_debugfs_remove341 = internal global ptr @debugfs_remove, section ".discard.addressable", align 8, !dbg !4389
@__UNIQUE_ID___addressable_debugfs_lookup_and_remove342 = internal global ptr @debugfs_lookup_and_remove, section ".discard.addressable", align 8, !dbg !4391
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@__UNIQUE_ID___addressable_debugfs_rename343 = internal global ptr @debugfs_rename, section ".discard.addressable", align 8, !dbg !4393
@debugfs_registered = internal global i8 0, align 1, !dbg !4414
@__UNIQUE_ID___addressable_debugfs_initialized344 = internal global ptr @debugfs_initialized, section ".discard.addressable", align 8, !dbg !4395
@__setup_str_debugfs_kernel = internal constant [8 x i8] c"debugfs\00", section ".init.rodata", align 1, !dbg !4522
@__setup_debugfs_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_debugfs_kernel, ptr @debugfs_kernel, i32 1 }, section ".init.setup", align 8, !dbg !4397
@__UNIQUE_ID___addressable___initstub__kmod_debugfs__345_918_debugfs_init1346 = internal global ptr @__initstub__kmod_debugfs__345_918_debugfs_init1, section ".discard.addressable", align 8, !dbg !4408
@.str.3 = private unnamed_addr constant [19 x i8] c"fs/debugfs/inode.c\00", align 1, !dbg !4416
@.str.4 = private unnamed_addr constant [59 x i8] c"\013debugfs: out of free dentries, can not create file '%s'\0A\00", align 1, !dbg !4421
@debugfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4426
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.5 = private unnamed_addr constant [51 x i8] c"\013debugfs: Unable to pin filesystem for file '%s'\0A\00", align 1, !dbg !4428
@.str.6 = private unnamed_addr constant [61 x i8] c"\013debugfs: Directory '%s' with parent '%s' already present!\0A\00", align 1, !dbg !4433
@.str.7 = private unnamed_addr constant [57 x i8] c"\013debugfs: File '%s' in directory '%s' already present!\0A\00", align 1, !dbg !4438
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4447
@.str.9 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1, !dbg !4454
@debug_fill_super.debug_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.10, ptr null, i32 0 }], align 16, !dbg !4461
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4458
@debugfs_super_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr @debugfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @debugfs_remount, ptr null, ptr @debugfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4509
@debugfs_dops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr @debugfs_release_dentry, ptr null, ptr null, ptr null, ptr @debugfs_automount, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !4520
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !4490
@tokens = internal constant [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.12 }, %struct.match_token { i32 1, ptr @.str.13 }, %struct.match_token { i32 2, ptr @.str.14 }, %struct.match_token { i32 3, ptr null }], align 16, !dbg !4500
@.str.12 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1, !dbg !4493
@.str.13 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1, !dbg !4496
@.str.14 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1, !dbg !4498
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1, !dbg !4511
@.str.16 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1, !dbg !4513
@.str.17 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1, !dbg !4515
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !4525
@.str.19 = private unnamed_addr constant [9 x i8] c"no-mount\00", align 1, !dbg !4528
@.str.20 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !4530
@kernel_kobj = external dso_local global ptr, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !4533
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID___addressable_debugfs_lookup333, ptr @__UNIQUE_ID___addressable_debugfs_create_file334, ptr @__UNIQUE_ID___addressable_debugfs_create_file_unsafe335, ptr @__UNIQUE_ID___addressable_debugfs_create_file_size336, ptr @__UNIQUE_ID___addressable_debugfs_create_dir337, ptr @__UNIQUE_ID___addressable_debugfs_create_automount338, ptr @__UNIQUE_ID___addressable_debugfs_create_symlink339, ptr @__UNIQUE_ID___addressable_debugfs_remove341, ptr @__UNIQUE_ID___addressable_debugfs_lookup_and_remove342, ptr @__UNIQUE_ID___addressable_debugfs_rename343, ptr @__UNIQUE_ID___addressable_debugfs_initialized344, ptr @__setup_debugfs_kernel, ptr @__UNIQUE_ID___addressable___initstub__kmod_debugfs__345_918_debugfs_init1346], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_lookup(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !4547 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4551, metadata !DIExpression()), !dbg !4554
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4552, metadata !DIExpression()), !dbg !4555
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4556
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4553, metadata !DIExpression()), !dbg !4557
  %call = call zeroext i1 @debugfs_initialized() #17, !dbg !4558
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !4560

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4561
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !4562
  br i1 %call1, label %if.then, label %lor.lhs.false2, !dbg !4563

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4564
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %1) #17, !dbg !4565
  br i1 %call3, label %if.then, label %if.end, !dbg !4566

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !4567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4567

if.end:                                           ; preds = %lor.lhs.false2
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4568
  %tobool = icmp ne ptr %2, null, !dbg !4568
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !4570

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @debugfs_mount, align 8, !dbg !4571
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 0, !dbg !4572
  %4 = load ptr, ptr %mnt_root, align 8, !dbg !4572
  store ptr %4, ptr %parent.addr, align 8, !dbg !4573
  br label %if.end5, !dbg !4574

if.end5:                                          ; preds = %if.then4, %if.end
  %5 = load ptr, ptr %name.addr, align 8, !dbg !4575
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4576
  %7 = load ptr, ptr %name.addr, align 8, !dbg !4577
  %call6 = call i64 @strlen(ptr noundef %7) #17, !dbg !4578
  %conv = trunc i64 %call6 to i32, !dbg !4578
  %call7 = call ptr @lookup_positive_unlocked(ptr noundef %5, ptr noundef %6, i32 noundef %conv) #17, !dbg !4579
  store ptr %call7, ptr %dentry, align 8, !dbg !4580
  %8 = load ptr, ptr %dentry, align 8, !dbg !4581
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %8) #17, !dbg !4583
  br i1 %call8, label %if.then9, label %if.end10, !dbg !4584

if.then9:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !4585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4585

if.end10:                                         ; preds = %if.end5
  %9 = load ptr, ptr %dentry, align 8, !dbg !4586
  store ptr %9, ptr %retval, align 8, !dbg !4587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4587

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4588
  %10 = load ptr, ptr %retval, align 8, !dbg !4588
  ret ptr %10, !dbg !4588
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @debugfs_initialized() #0 align 16 !dbg !4589 {
entry:
  %0 = load i8, ptr @debugfs_registered, align 1, !dbg !4590, !range !4591, !noundef !595
  %tobool = trunc i8 %0 to i1, !dbg !4590
  ret i1 %tobool, !dbg !4592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #3 align 16 !dbg !4593 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4600
  %tobool = icmp ne ptr %0, null, !dbg !4600
  %lnot = xor i1 %tobool, true, !dbg !4600
  %lnot1 = xor i1 %lnot, true, !dbg !4600
  %lnot2 = xor i1 %lnot1, true, !dbg !4600
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4600
  %conv = sext i32 %lnot.ext to i64, !dbg !4600
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4600
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4600
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !4601

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4602
  %2 = ptrtoint ptr %1 to i64, !dbg !4602
  %3 = inttoptr i64 %2 to ptr, !dbg !4602
  %4 = ptrtoint ptr %3 to i64, !dbg !4602
  %cmp = icmp uge i64 %4, -4095, !dbg !4602
  %lnot5 = xor i1 %cmp, true, !dbg !4602
  %lnot7 = xor i1 %lnot5, true, !dbg !4602
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4602
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !4602
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !4602
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !4601
  br label %lor.end, !dbg !4601

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !4603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4604 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4608
  %1 = ptrtoint ptr %0 to i64, !dbg !4608
  %2 = inttoptr i64 %1 to ptr, !dbg !4608
  %3 = ptrtoint ptr %2 to i64, !dbg !4608
  %cmp = icmp uge i64 %3, -4095, !dbg !4608
  %lnot = xor i1 %cmp, true, !dbg !4608
  %lnot1 = xor i1 %lnot, true, !dbg !4608
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4608
  %conv = sext i32 %lnot.ext to i64, !dbg !4608
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4608
  %tobool = icmp ne i64 %expval, 0, !dbg !4608
  ret i1 %tobool, !dbg !4609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4610 dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4614 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) #0 align 16 !dbg !4618 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4622, metadata !DIExpression()), !dbg !4627
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4623, metadata !DIExpression()), !dbg !4628
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4624, metadata !DIExpression()), !dbg !4629
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4625, metadata !DIExpression()), !dbg !4630
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !4626, metadata !DIExpression()), !dbg !4631
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4632
  %1 = load i16, ptr %mode.addr, align 2, !dbg !4633
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4634
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4635
  %4 = load ptr, ptr %fops.addr, align 8, !dbg !4636
  %tobool = icmp ne ptr %4, null, !dbg !4636
  %5 = zext i1 %tobool to i64, !dbg !4636
  %cond = select i1 %tobool, ptr @debugfs_full_proxy_file_operations, ptr @debugfs_noop_file_operations, !dbg !4636
  %6 = load ptr, ptr %fops.addr, align 8, !dbg !4637
  %call = call ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %cond, ptr noundef %6) #17, !dbg !4638
  ret ptr %call, !dbg !4639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__debugfs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %proxy_fops, ptr noundef %real_fops) #0 align 16 !dbg !4640 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %proxy_fops.addr = alloca ptr, align 8
  %real_fops.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4644, metadata !DIExpression()), !dbg !4652
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4645, metadata !DIExpression()), !dbg !4653
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4646, metadata !DIExpression()), !dbg !4654
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4647, metadata !DIExpression()), !dbg !4655
  store ptr %proxy_fops, ptr %proxy_fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proxy_fops.addr, metadata !4648, metadata !DIExpression()), !dbg !4656
  store ptr %real_fops, ptr %real_fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_fops.addr, metadata !4649, metadata !DIExpression()), !dbg !4657
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4658
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4650, metadata !DIExpression()), !dbg !4659
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4660
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4651, metadata !DIExpression()), !dbg !4661
  %0 = load i16, ptr %mode.addr, align 2, !dbg !4662
  %conv = zext i16 %0 to i32, !dbg !4662
  %and = and i32 %conv, 61440, !dbg !4664
  %tobool = icmp ne i32 %and, 0, !dbg !4664
  br i1 %tobool, label %if.end, label %if.then, !dbg !4665

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2, !dbg !4666
  %conv1 = zext i16 %1 to i32, !dbg !4666
  %or = or i32 %conv1, 32768, !dbg !4666
  %conv2 = trunc i32 %or to i16, !dbg !4666
  store i16 %conv2, ptr %mode.addr, align 2, !dbg !4666
  br label %if.end, !dbg !4667

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !4668

do.body:                                          ; preds = %if.end
  %2 = load i16, ptr %mode.addr, align 2, !dbg !4669
  %conv3 = zext i16 %2 to i32, !dbg !4669
  %and4 = and i32 %conv3, 61440, !dbg !4669
  %cmp = icmp eq i32 %and4, 32768, !dbg !4669
  %lnot = xor i1 %cmp, true, !dbg !4669
  %lnot6 = xor i1 %lnot, true, !dbg !4669
  %lnot7 = xor i1 %lnot6, true, !dbg !4669
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4669
  %conv8 = sext i32 %lnot.ext to i64, !dbg !4669
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !4669
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4669
  br i1 %tobool9, label %if.then10, label %if.end18, !dbg !4672

if.then10:                                        ; preds = %do.body
  br label %do.body11, !dbg !4669

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !4673

do.body12:                                        ; preds = %do.body11
  br label %do.cond, !dbg !4675

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !4675

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !4673

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 420, i32 0, i64 12) #16, !dbg !4677, !srcloc !4679
  br label %do.cond14, !dbg !4677

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4677

do.end15:                                         ; preds = %do.cond14
  unreachable, !dbg !4673

do.cond16:                                        ; No predecessors!
  br label %do.end17, !dbg !4673

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !4673

if.end18:                                         ; preds = %do.end17, %do.body
  br label %do.cond19, !dbg !4672

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !4672

do.end20:                                         ; preds = %do.cond19
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4680
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !4681
  %call = call ptr @start_creating(ptr noundef %3, ptr noundef %4) #17, !dbg !4682
  store ptr %call, ptr %dentry, align 8, !dbg !4683
  %5 = load ptr, ptr %dentry, align 8, !dbg !4684
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %5) #17, !dbg !4686
  br i1 %call21, label %if.then22, label %if.end23, !dbg !4687

if.then22:                                        ; preds = %do.end20
  %6 = load ptr, ptr %dentry, align 8, !dbg !4688
  store ptr %6, ptr %retval, align 8, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

if.end23:                                         ; preds = %do.end20
  %7 = load i32, ptr @debugfs_allow, align 4, !dbg !4690
  %conv24 = zext i32 %7 to i64, !dbg !4690
  %and25 = and i64 %conv24, 1, !dbg !4692
  %tobool26 = icmp ne i64 %and25, 0, !dbg !4692
  br i1 %tobool26, label %if.end30, label %if.then27, !dbg !4693

if.then27:                                        ; preds = %if.end23
  %8 = load ptr, ptr %dentry, align 8, !dbg !4694
  %call28 = call ptr @failed_creating(ptr noundef %8) #17, !dbg !4696
  %call29 = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !4697
  store ptr %call29, ptr %retval, align 8, !dbg !4698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4698

if.end30:                                         ; preds = %if.end23
  %9 = load ptr, ptr %dentry, align 8, !dbg !4699
  %d_sb = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 9, !dbg !4700
  %10 = load ptr, ptr %d_sb, align 8, !dbg !4700
  %call31 = call ptr @debugfs_get_inode(ptr noundef %10) #17, !dbg !4701
  store ptr %call31, ptr %inode, align 8, !dbg !4702
  %11 = load ptr, ptr %inode, align 8, !dbg !4703
  %tobool32 = icmp ne ptr %11, null, !dbg !4703
  %lnot33 = xor i1 %tobool32, true, !dbg !4703
  %lnot35 = xor i1 %lnot33, true, !dbg !4703
  %lnot37 = xor i1 %lnot35, true, !dbg !4703
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !4703
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !4703
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !4703
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !4703
  br i1 %tobool41, label %if.then42, label %if.end48, !dbg !4705

if.then42:                                        ; preds = %if.end30
  br label %do.body43, !dbg !4706

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !4709

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !4709

do.end45:                                         ; preds = %do.cond44
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4706
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %12) #18, !dbg !4706
  store i32 %call46, ptr %tmp, align 4, !dbg !4709
  %13 = load i32, ptr %tmp, align 4, !dbg !4706
  %14 = load ptr, ptr %dentry, align 8, !dbg !4711
  %call47 = call ptr @failed_creating(ptr noundef %14) #17, !dbg !4712
  store ptr %call47, ptr %retval, align 8, !dbg !4713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4713

if.end48:                                         ; preds = %if.end30
  %15 = load i16, ptr %mode.addr, align 2, !dbg !4714
  %16 = load ptr, ptr %inode, align 8, !dbg !4715
  %i_mode = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 0, !dbg !4716
  store i16 %15, ptr %i_mode, align 8, !dbg !4717
  %17 = load ptr, ptr %data.addr, align 8, !dbg !4718
  %18 = load ptr, ptr %inode, align 8, !dbg !4719
  %i_private = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 47, !dbg !4720
  store ptr %17, ptr %i_private, align 8, !dbg !4721
  %19 = load ptr, ptr %inode, align 8, !dbg !4722
  %i_op = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8, !dbg !4723
  store ptr @debugfs_file_inode_operations, ptr %i_op, align 8, !dbg !4724
  %20 = load ptr, ptr %proxy_fops.addr, align 8, !dbg !4725
  %21 = load ptr, ptr %inode, align 8, !dbg !4726
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 39, !dbg !4727
  store ptr %20, ptr %22, align 8, !dbg !4728
  %23 = load ptr, ptr %real_fops.addr, align 8, !dbg !4729
  %24 = ptrtoint ptr %23 to i64, !dbg !4730
  %or49 = or i64 %24, 1, !dbg !4731
  %25 = inttoptr i64 %or49 to ptr, !dbg !4732
  %26 = load ptr, ptr %dentry, align 8, !dbg !4733
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 11, !dbg !4734
  store ptr %25, ptr %d_fsdata, align 8, !dbg !4735
  %27 = load ptr, ptr %dentry, align 8, !dbg !4736
  %28 = load ptr, ptr %inode, align 8, !dbg !4737
  call void @d_instantiate(ptr noundef %27, ptr noundef %28) #17, !dbg !4738
  %29 = load ptr, ptr %dentry, align 8, !dbg !4739
  %d_parent = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3, !dbg !4740
  %30 = load ptr, ptr %d_parent, align 8, !dbg !4740
  %call50 = call ptr @d_inode(ptr noundef %30) #17, !dbg !4741
  %31 = load ptr, ptr %dentry, align 8, !dbg !4742
  call void @fsnotify_create(ptr noundef %call50, ptr noundef %31) #17, !dbg !4743
  %32 = load ptr, ptr %dentry, align 8, !dbg !4744
  %call51 = call ptr @end_creating(ptr noundef %32) #17, !dbg !4745
  store ptr %call51, ptr %retval, align 8, !dbg !4746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4746

cleanup:                                          ; preds = %if.end48, %do.end45, %if.then27, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4747
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4747
  %33 = load ptr, ptr %retval, align 8, !dbg !4747
  ret ptr %33, !dbg !4747
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_create_file_unsafe(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) #0 align 16 !dbg !4748 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4750, metadata !DIExpression()), !dbg !4755
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4751, metadata !DIExpression()), !dbg !4756
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4752, metadata !DIExpression()), !dbg !4757
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4753, metadata !DIExpression()), !dbg !4758
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !4754, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4760
  %1 = load i16, ptr %mode.addr, align 2, !dbg !4761
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4762
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4763
  %4 = load ptr, ptr %fops.addr, align 8, !dbg !4764
  %tobool = icmp ne ptr %4, null, !dbg !4764
  %5 = zext i1 %tobool to i64, !dbg !4764
  %cond = select i1 %tobool, ptr @debugfs_open_proxy_file_operations, ptr @debugfs_noop_file_operations, !dbg !4764
  %6 = load ptr, ptr %fops.addr, align 8, !dbg !4765
  %call = call ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %cond, ptr noundef %6) #17, !dbg !4766
  ret ptr %call, !dbg !4767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @debugfs_create_file_size(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops, i64 noundef %file_size) #0 align 16 !dbg !4768 {
entry:
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  %file_size.addr = alloca i64, align 8
  %de = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4772, metadata !DIExpression()), !dbg !4779
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4773, metadata !DIExpression()), !dbg !4780
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4774, metadata !DIExpression()), !dbg !4781
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4775, metadata !DIExpression()), !dbg !4782
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !4776, metadata !DIExpression()), !dbg !4783
  store i64 %file_size, ptr %file_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_size.addr, metadata !4777, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #16, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %de, metadata !4778, metadata !DIExpression()), !dbg !4786
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4787
  %1 = load i16, ptr %mode.addr, align 2, !dbg !4788
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4789
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4790
  %4 = load ptr, ptr %fops.addr, align 8, !dbg !4791
  %call = call ptr @debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !dbg !4792
  store ptr %call, ptr %de, align 8, !dbg !4786
  %5 = load ptr, ptr %de, align 8, !dbg !4793
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %5) #17, !dbg !4795
  br i1 %call1, label %if.end, label %if.then, !dbg !4796

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %file_size.addr, align 8, !dbg !4797
  %7 = load ptr, ptr %de, align 8, !dbg !4798
  %call2 = call ptr @d_inode(ptr noundef %7) #17, !dbg !4799
  %i_size = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 15, !dbg !4800
  store i64 %6, ptr %i_size, align 8, !dbg !4801
  br label %if.end, !dbg !4799

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #16, !dbg !4802
  ret void, !dbg !4802
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #3 align 16 !dbg !4803 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4809
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4810
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4810
  ret ptr %1, !dbg !4811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !4812 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4814, metadata !DIExpression()), !dbg !4818
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4815, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4816, metadata !DIExpression()), !dbg !4821
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4822
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4823
  %call = call ptr @start_creating(ptr noundef %0, ptr noundef %1) #17, !dbg !4824
  store ptr %call, ptr %dentry, align 8, !dbg !4821
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4817, metadata !DIExpression()), !dbg !4826
  %2 = load ptr, ptr %dentry, align 8, !dbg !4827
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !4829
  br i1 %call1, label %if.then, label %if.end, !dbg !4830

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !4831
  store ptr %3, ptr %retval, align 8, !dbg !4832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4832

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @debugfs_allow, align 4, !dbg !4833
  %conv = zext i32 %4 to i64, !dbg !4833
  %and = and i64 %conv, 1, !dbg !4835
  %tobool = icmp ne i64 %and, 0, !dbg !4835
  br i1 %tobool, label %if.end5, label %if.then2, !dbg !4836

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %dentry, align 8, !dbg !4837
  %call3 = call ptr @failed_creating(ptr noundef %5) #17, !dbg !4839
  %call4 = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !4840
  store ptr %call4, ptr %retval, align 8, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %dentry, align 8, !dbg !4842
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !4843
  %7 = load ptr, ptr %d_sb, align 8, !dbg !4843
  %call6 = call ptr @debugfs_get_inode(ptr noundef %7) #17, !dbg !4844
  store ptr %call6, ptr %inode, align 8, !dbg !4845
  %8 = load ptr, ptr %inode, align 8, !dbg !4846
  %tobool7 = icmp ne ptr %8, null, !dbg !4846
  %lnot = xor i1 %tobool7, true, !dbg !4846
  %lnot8 = xor i1 %lnot, true, !dbg !4846
  %lnot9 = xor i1 %lnot8, true, !dbg !4846
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4846
  %conv10 = sext i32 %lnot.ext to i64, !dbg !4846
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !4846
  %tobool11 = icmp ne i64 %expval, 0, !dbg !4846
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4848

if.then12:                                        ; preds = %if.end5
  br label %do.body, !dbg !4849

do.body:                                          ; preds = %if.then12
  br label %do.cond, !dbg !4852

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4852

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %name.addr, align 8, !dbg !4849
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %9) #18, !dbg !4849
  store i32 %call13, ptr %tmp, align 4, !dbg !4852
  %10 = load i32, ptr %tmp, align 4, !dbg !4849
  %11 = load ptr, ptr %dentry, align 8, !dbg !4854
  %call14 = call ptr @failed_creating(ptr noundef %11) #17, !dbg !4855
  store ptr %call14, ptr %retval, align 8, !dbg !4856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4856

if.end15:                                         ; preds = %if.end5
  %12 = load ptr, ptr %inode, align 8, !dbg !4857
  %i_mode = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 0, !dbg !4858
  store i16 16877, ptr %i_mode, align 8, !dbg !4859
  %13 = load ptr, ptr %inode, align 8, !dbg !4860
  %i_op = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8, !dbg !4861
  store ptr @debugfs_dir_inode_operations, ptr %i_op, align 8, !dbg !4862
  %14 = load ptr, ptr %inode, align 8, !dbg !4863
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 39, !dbg !4864
  store ptr @simple_dir_operations, ptr %15, align 8, !dbg !4865
  %16 = load ptr, ptr %inode, align 8, !dbg !4866
  call void @inc_nlink(ptr noundef %16) #17, !dbg !4867
  %17 = load ptr, ptr %dentry, align 8, !dbg !4868
  %18 = load ptr, ptr %inode, align 8, !dbg !4869
  call void @d_instantiate(ptr noundef %17, ptr noundef %18) #17, !dbg !4870
  %19 = load ptr, ptr %dentry, align 8, !dbg !4871
  %d_parent = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 3, !dbg !4872
  %20 = load ptr, ptr %d_parent, align 8, !dbg !4872
  %call16 = call ptr @d_inode(ptr noundef %20) #17, !dbg !4873
  call void @inc_nlink(ptr noundef %call16) #17, !dbg !4874
  %21 = load ptr, ptr %dentry, align 8, !dbg !4875
  %d_parent17 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 3, !dbg !4876
  %22 = load ptr, ptr %d_parent17, align 8, !dbg !4876
  %call18 = call ptr @d_inode(ptr noundef %22) #17, !dbg !4877
  %23 = load ptr, ptr %dentry, align 8, !dbg !4878
  call void @fsnotify_mkdir(ptr noundef %call18, ptr noundef %23) #17, !dbg !4879
  %24 = load ptr, ptr %dentry, align 8, !dbg !4880
  %call19 = call ptr @end_creating(ptr noundef %24) #17, !dbg !4881
  store ptr %call19, ptr %retval, align 8, !dbg !4882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4882

cleanup:                                          ; preds = %if.end15, %do.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4883
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4883
  %25 = load ptr, ptr %retval, align 8, !dbg !4883
  ret ptr %25, !dbg !4883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @start_creating(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !4884 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4886, metadata !DIExpression()), !dbg !4890
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4887, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !4888, metadata !DIExpression()), !dbg !4893
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4889, metadata !DIExpression()), !dbg !4895
  %0 = load i32, ptr @debugfs_allow, align 4, !dbg !4896
  %conv = zext i32 %0 to i64, !dbg !4896
  %and = and i64 %conv, 1, !dbg !4898
  %tobool = icmp ne i64 %and, 0, !dbg !4898
  br i1 %tobool, label %if.end, label %if.then, !dbg !4899

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !4900
  store ptr %call, ptr %retval, align 8, !dbg !4901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4901

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @debugfs_initialized() #17, !dbg !4902
  br i1 %call1, label %if.end4, label %if.then2, !dbg !4904

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @ERR_PTR(i64 noundef -2) #17, !dbg !4905
  store ptr %call3, ptr %retval, align 8, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4907
  %1 = load i32, ptr %tmp, align 4, !dbg !4910
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !4911
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !4913
  br i1 %call5, label %if.then6, label %if.end7, !dbg !4914

if.then6:                                         ; preds = %if.end4
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !4915
  store ptr %3, ptr %retval, align 8, !dbg !4916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end7:                                          ; preds = %if.end4
  %call8 = call i32 @simple_pin_fs(ptr noundef @debug_fs_type, ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !4917
  store i32 %call8, ptr %error, align 4, !dbg !4918
  %4 = load i32, ptr %error, align 4, !dbg !4919
  %tobool9 = icmp ne i32 %4, 0, !dbg !4919
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !4921

if.then10:                                        ; preds = %if.end7
  br label %do.body, !dbg !4922

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !4925

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4925

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %name.addr, align 8, !dbg !4922
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %5) #18, !dbg !4922
  store i32 %call12, ptr %tmp11, align 4, !dbg !4925
  %6 = load i32, ptr %tmp11, align 4, !dbg !4922
  %7 = load i32, ptr %error, align 4, !dbg !4927
  %conv13 = sext i32 %7 to i64, !dbg !4927
  %call14 = call ptr @ERR_PTR(i64 noundef %conv13) #17, !dbg !4928
  store ptr %call14, ptr %retval, align 8, !dbg !4929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4929

if.end15:                                         ; preds = %if.end7
  %8 = load ptr, ptr %parent.addr, align 8, !dbg !4930
  %tobool16 = icmp ne ptr %8, null, !dbg !4930
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4932

if.then17:                                        ; preds = %if.end15
  %9 = load ptr, ptr @debugfs_mount, align 8, !dbg !4933
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 0, !dbg !4934
  %10 = load ptr, ptr %mnt_root, align 8, !dbg !4934
  store ptr %10, ptr %parent.addr, align 8, !dbg !4935
  br label %if.end18, !dbg !4936

if.end18:                                         ; preds = %if.then17, %if.end15
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !4937
  %call19 = call ptr @d_inode(ptr noundef %11) #17, !dbg !4938
  call void @inode_lock(ptr noundef %call19) #17, !dbg !4939
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !4940
  %call20 = call ptr @d_inode(ptr noundef %12) #17, !dbg !4940
  %i_flags = getelementptr inbounds %struct.inode, ptr %call20, i32 0, i32 5, !dbg !4940
  %13 = load i32, ptr %i_flags, align 4, !dbg !4940
  %and21 = and i32 %13, 16, !dbg !4940
  %tobool22 = icmp ne i32 %and21, 0, !dbg !4940
  %lnot = xor i1 %tobool22, true, !dbg !4940
  %lnot23 = xor i1 %lnot, true, !dbg !4940
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !4940
  %conv24 = sext i32 %lnot.ext to i64, !dbg !4940
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4940
  %tobool25 = icmp ne i64 %expval, 0, !dbg !4940
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !4942

if.then26:                                        ; preds = %if.end18
  %call27 = call ptr @ERR_PTR(i64 noundef -2) #17, !dbg !4943
  store ptr %call27, ptr %dentry, align 8, !dbg !4944
  br label %if.end31, !dbg !4945

if.else:                                          ; preds = %if.end18
  %14 = load ptr, ptr %name.addr, align 8, !dbg !4946
  %15 = load ptr, ptr %parent.addr, align 8, !dbg !4947
  %16 = load ptr, ptr %name.addr, align 8, !dbg !4948
  %call28 = call i64 @strlen(ptr noundef %16) #17, !dbg !4949
  %conv29 = trunc i64 %call28 to i32, !dbg !4949
  %call30 = call ptr @lookup_one_len(ptr noundef %14, ptr noundef %15, i32 noundef %conv29) #17, !dbg !4950
  store ptr %call30, ptr %dentry, align 8, !dbg !4951
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %17 = load ptr, ptr %dentry, align 8, !dbg !4952
  %call32 = call zeroext i1 @IS_ERR(ptr noundef %17) #17, !dbg !4954
  br i1 %call32, label %if.end54, label %land.lhs.true, !dbg !4955

land.lhs.true:                                    ; preds = %if.end31
  %18 = load ptr, ptr %dentry, align 8, !dbg !4956
  %call33 = call zeroext i1 @d_really_is_positive(ptr noundef %18) #17, !dbg !4957
  br i1 %call33, label %if.then35, label %if.end54, !dbg !4958

if.then35:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %dentry, align 8, !dbg !4959
  %call36 = call zeroext i1 @d_is_dir(ptr noundef %19) #17, !dbg !4962
  br i1 %call36, label %if.then37, label %if.else44, !dbg !4963

if.then37:                                        ; preds = %if.then35
  br label %do.body38, !dbg !4964

do.body38:                                        ; preds = %if.then37
  br label %do.cond39, !dbg !4966

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4966

do.end40:                                         ; preds = %do.cond39
  %20 = load ptr, ptr %name.addr, align 8, !dbg !4964
  %21 = load ptr, ptr %parent.addr, align 8, !dbg !4964
  %d_name = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 4, !dbg !4964
  %name42 = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !4964
  %22 = load ptr, ptr %name42, align 8, !dbg !4964
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %20, ptr noundef %22) #18, !dbg !4964
  store i32 %call43, ptr %tmp41, align 4, !dbg !4966
  %23 = load i32, ptr %tmp41, align 4, !dbg !4964
  br label %if.end52, !dbg !4968

if.else44:                                        ; preds = %if.then35
  br label %do.body45, !dbg !4969

do.body45:                                        ; preds = %if.else44
  br label %do.cond46, !dbg !4971

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !4971

do.end47:                                         ; preds = %do.cond46
  %24 = load ptr, ptr %name.addr, align 8, !dbg !4969
  %25 = load ptr, ptr %parent.addr, align 8, !dbg !4969
  %d_name49 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 4, !dbg !4969
  %name50 = getelementptr inbounds %struct.qstr, ptr %d_name49, i32 0, i32 1, !dbg !4969
  %26 = load ptr, ptr %name50, align 8, !dbg !4969
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %24, ptr noundef %26) #18, !dbg !4969
  store i32 %call51, ptr %tmp48, align 4, !dbg !4971
  %27 = load i32, ptr %tmp48, align 4, !dbg !4969
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %do.end40
  %28 = load ptr, ptr %dentry, align 8, !dbg !4973
  call void @dput(ptr noundef %28) #17, !dbg !4974
  %call53 = call ptr @ERR_PTR(i64 noundef -17) #17, !dbg !4975
  store ptr %call53, ptr %dentry, align 8, !dbg !4976
  br label %if.end54, !dbg !4977

if.end54:                                         ; preds = %if.end52, %land.lhs.true, %if.end31
  %29 = load ptr, ptr %dentry, align 8, !dbg !4978
  %call55 = call zeroext i1 @IS_ERR(ptr noundef %29) #17, !dbg !4980
  br i1 %call55, label %if.then56, label %if.end58, !dbg !4981

if.then56:                                        ; preds = %if.end54
  %30 = load ptr, ptr %parent.addr, align 8, !dbg !4982
  %call57 = call ptr @d_inode(ptr noundef %30) #17, !dbg !4984
  call void @inode_unlock(ptr noundef %call57) #17, !dbg !4985
  call void @simple_release_fs(ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !4986
  br label %if.end58, !dbg !4987

if.end58:                                         ; preds = %if.then56, %if.end54
  %31 = load ptr, ptr %dentry, align 8, !dbg !4988
  store ptr %31, ptr %retval, align 8, !dbg !4989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4989

cleanup:                                          ; preds = %if.end58, %do.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4990
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !4990
  %32 = load ptr, ptr %retval, align 8, !dbg !4990
  ret ptr %32, !dbg !4990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @failed_creating(ptr noundef %dentry) #0 align 16 !dbg !4991 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4997
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !4998
  %1 = load ptr, ptr %d_parent, align 8, !dbg !4998
  %call = call ptr @d_inode(ptr noundef %1) #17, !dbg !4999
  call void @inode_unlock(ptr noundef %call) #17, !dbg !5000
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5001
  call void @dput(ptr noundef %2) #17, !dbg !5002
  call void @simple_release_fs(ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !5003
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5004
  ret ptr %call1, !dbg !5005
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5006 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  %0 = load i64, ptr %error.addr, align 8, !dbg !5012
  %1 = inttoptr i64 %0 to ptr, !dbg !5013
  ret ptr %1, !dbg !5014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @debugfs_get_inode(ptr noundef %sb) #0 align 16 !dbg !5015 {
entry:
  %sb.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5017, metadata !DIExpression()), !dbg !5019
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5018, metadata !DIExpression()), !dbg !5021
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5022
  %call = call ptr @new_inode(ptr noundef %0) #17, !dbg !5023
  store ptr %call, ptr %inode, align 8, !dbg !5021
  %1 = load ptr, ptr %inode, align 8, !dbg !5024
  %tobool = icmp ne ptr %1, null, !dbg !5024
  br i1 %tobool, label %if.then, label %if.end, !dbg !5026

if.then:                                          ; preds = %entry
  %call1 = call i32 @get_next_ino() #17, !dbg !5027
  %conv = zext i32 %call1 to i64, !dbg !5027
  %2 = load ptr, ptr %inode, align 8, !dbg !5029
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12, !dbg !5030
  store i64 %conv, ptr %i_ino, align 8, !dbg !5031
  %3 = load ptr, ptr %inode, align 8, !dbg !5032
  %i_atime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, !dbg !5033
  %4 = load ptr, ptr %inode, align 8, !dbg !5034
  %i_mtime = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17, !dbg !5035
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #16, !dbg !5036
  %5 = load ptr, ptr %inode, align 8, !dbg !5037
  %call2 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %5) #17, !dbg !5036
  %6 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5036
  %7 = extractvalue { i64, i64 } %call2, 0, !dbg !5036
  store i64 %7, ptr %6, align 8, !dbg !5036
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5036
  %9 = extractvalue { i64, i64 } %call2, 1, !dbg !5036
  store i64 %9, ptr %8, align 8, !dbg !5036
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !5036
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #16, !dbg !5036
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !5038
  br label %if.end, !dbg !5039

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %inode, align 8, !dbg !5040
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5041
  ret ptr %10, !dbg !5042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5043 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5047 dso_local void @inc_nlink(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5048 dso_local void @d_instantiate(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_mkdir(ptr noundef %dir, ptr noundef %dentry) #3 align 16 !dbg !5049 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5054, metadata !DIExpression()), !dbg !5056
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5055, metadata !DIExpression()), !dbg !5057
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5058
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5059
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #17, !dbg !5060
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5061
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5062
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 1073742080) #17, !dbg !5063
  ret void, !dbg !5064
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @end_creating(ptr noundef %dentry) #0 align 16 !dbg !5065 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5069
  %d_parent = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3, !dbg !5070
  %1 = load ptr, ptr %d_parent, align 8, !dbg !5070
  %call = call ptr @d_inode(ptr noundef %1) #17, !dbg !5071
  call void @inode_unlock(ptr noundef %call) #17, !dbg !5072
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !5073
  ret ptr %2, !dbg !5074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_create_automount(ptr noundef %name, ptr noundef %parent, ptr noundef %f, ptr noundef %data) #0 align 16 !dbg !5075 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5084, metadata !DIExpression()), !dbg !5105
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5085, metadata !DIExpression()), !dbg !5106
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5086, metadata !DIExpression()), !dbg !5107
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5087, metadata !DIExpression()), !dbg !5108
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !5109
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5088, metadata !DIExpression()), !dbg !5110
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5111
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5112
  %call = call ptr @start_creating(ptr noundef %0, ptr noundef %1) #17, !dbg !5113
  store ptr %call, ptr %dentry, align 8, !dbg !5110
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #16, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %fsd, metadata !5089, metadata !DIExpression()), !dbg !5115
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5116
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5104, metadata !DIExpression()), !dbg !5117
  %2 = load ptr, ptr %dentry, align 8, !dbg !5118
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !5120
  br i1 %call1, label %if.then, label %if.end, !dbg !5121

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !5122
  store ptr %3, ptr %retval, align 8, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #19, !dbg !5124
  store ptr %call2, ptr %fsd, align 8, !dbg !5125
  %4 = load ptr, ptr %fsd, align 8, !dbg !5126
  %tobool = icmp ne ptr %4, null, !dbg !5126
  br i1 %tobool, label %if.end6, label %if.then3, !dbg !5128

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dentry, align 8, !dbg !5129
  %call4 = call ptr @failed_creating(ptr noundef %5) #17, !dbg !5131
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5132
  store ptr %call5, ptr %retval, align 8, !dbg !5133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5133

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %f.addr, align 8, !dbg !5134
  %7 = load ptr, ptr %fsd, align 8, !dbg !5135
  %8 = getelementptr inbounds %struct.debugfs_fsdata, ptr %7, i32 0, i32 1, !dbg !5136
  store ptr %6, ptr %8, align 8, !dbg !5137
  %9 = load i32, ptr @debugfs_allow, align 4, !dbg !5138
  %conv = zext i32 %9 to i64, !dbg !5138
  %and = and i64 %conv, 1, !dbg !5140
  %tobool7 = icmp ne i64 %and, 0, !dbg !5140
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !5141

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %dentry, align 8, !dbg !5142
  %call9 = call ptr @failed_creating(ptr noundef %10) #17, !dbg !5144
  %11 = load ptr, ptr %fsd, align 8, !dbg !5145
  call void @kfree(ptr noundef %11) #17, !dbg !5146
  %call10 = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !5147
  store ptr %call10, ptr %retval, align 8, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

if.end11:                                         ; preds = %if.end6
  %12 = load ptr, ptr %dentry, align 8, !dbg !5149
  %d_sb = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9, !dbg !5150
  %13 = load ptr, ptr %d_sb, align 8, !dbg !5150
  %call12 = call ptr @debugfs_get_inode(ptr noundef %13) #17, !dbg !5151
  store ptr %call12, ptr %inode, align 8, !dbg !5152
  %14 = load ptr, ptr %inode, align 8, !dbg !5153
  %tobool13 = icmp ne ptr %14, null, !dbg !5153
  %lnot = xor i1 %tobool13, true, !dbg !5153
  %lnot14 = xor i1 %lnot, true, !dbg !5153
  %lnot15 = xor i1 %lnot14, true, !dbg !5153
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5153
  %conv16 = sext i32 %lnot.ext to i64, !dbg !5153
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !5153
  %tobool17 = icmp ne i64 %expval, 0, !dbg !5153
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !5155

if.then18:                                        ; preds = %if.end11
  br label %do.body, !dbg !5156

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !5159

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5159

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %name.addr, align 8, !dbg !5156
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %15) #18, !dbg !5156
  store i32 %call19, ptr %tmp, align 4, !dbg !5159
  %16 = load i32, ptr %tmp, align 4, !dbg !5156
  %17 = load ptr, ptr %fsd, align 8, !dbg !5161
  call void @kfree(ptr noundef %17) #17, !dbg !5162
  %18 = load ptr, ptr %dentry, align 8, !dbg !5163
  %call20 = call ptr @failed_creating(ptr noundef %18) #17, !dbg !5164
  store ptr %call20, ptr %retval, align 8, !dbg !5165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5165

if.end21:                                         ; preds = %if.end11
  %19 = load ptr, ptr %inode, align 8, !dbg !5166
  call void @make_empty_dir_inode(ptr noundef %19) #17, !dbg !5167
  %20 = load ptr, ptr %inode, align 8, !dbg !5168
  %i_flags = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 5, !dbg !5169
  %21 = load i32, ptr %i_flags, align 4, !dbg !5170
  %or = or i32 %21, 2048, !dbg !5170
  store i32 %or, ptr %i_flags, align 4, !dbg !5170
  %22 = load ptr, ptr %data.addr, align 8, !dbg !5171
  %23 = load ptr, ptr %inode, align 8, !dbg !5172
  %i_private = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 47, !dbg !5173
  store ptr %22, ptr %i_private, align 8, !dbg !5174
  %24 = load ptr, ptr %fsd, align 8, !dbg !5175
  %25 = load ptr, ptr %dentry, align 8, !dbg !5176
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 11, !dbg !5177
  store ptr %24, ptr %d_fsdata, align 8, !dbg !5178
  %26 = load ptr, ptr %inode, align 8, !dbg !5179
  call void @inc_nlink(ptr noundef %26) #17, !dbg !5180
  %27 = load ptr, ptr %dentry, align 8, !dbg !5181
  %28 = load ptr, ptr %inode, align 8, !dbg !5182
  call void @d_instantiate(ptr noundef %27, ptr noundef %28) #17, !dbg !5183
  %29 = load ptr, ptr %dentry, align 8, !dbg !5184
  %d_parent = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3, !dbg !5185
  %30 = load ptr, ptr %d_parent, align 8, !dbg !5185
  %call22 = call ptr @d_inode(ptr noundef %30) #17, !dbg !5186
  call void @inc_nlink(ptr noundef %call22) #17, !dbg !5187
  %31 = load ptr, ptr %dentry, align 8, !dbg !5188
  %d_parent23 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 3, !dbg !5189
  %32 = load ptr, ptr %d_parent23, align 8, !dbg !5189
  %call24 = call ptr @d_inode(ptr noundef %32) #17, !dbg !5190
  %33 = load ptr, ptr %dentry, align 8, !dbg !5191
  call void @fsnotify_mkdir(ptr noundef %call24, ptr noundef %33) #17, !dbg !5192
  %34 = load ptr, ptr %dentry, align 8, !dbg !5193
  %call25 = call ptr @end_creating(ptr noundef %34) #17, !dbg !5194
  store ptr %call25, ptr %retval, align 8, !dbg !5195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5195

cleanup:                                          ; preds = %if.end21, %do.end, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5196
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #16, !dbg !5196
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5196
  %35 = load ptr, ptr %retval, align 8, !dbg !5196
  ret ptr %35, !dbg !5196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5197 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5201, metadata !DIExpression()), !dbg !5203
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5202, metadata !DIExpression()), !dbg !5204
  %0 = load i64, ptr %size.addr, align 8, !dbg !5205
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5206
  %or = or i32 %1, 256, !dbg !5207
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5208
  ret ptr %call, !dbg !5209
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5210 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5213 dso_local void @make_empty_dir_inode(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_create_symlink(ptr noundef %name, ptr noundef %parent, ptr noundef %target) #0 align 16 !dbg !5214 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5218, metadata !DIExpression()), !dbg !5224
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5219, metadata !DIExpression()), !dbg !5225
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !5220, metadata !DIExpression()), !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !5227
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5221, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5222, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #16, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5223, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %target.addr, align 8, !dbg !5233
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #17, !dbg !5234
  store ptr %call, ptr %link, align 8, !dbg !5232
  %1 = load ptr, ptr %link, align 8, !dbg !5235
  %tobool = icmp ne ptr %1, null, !dbg !5235
  br i1 %tobool, label %if.end, label %if.then, !dbg !5237

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5238
  store ptr %call1, ptr %retval, align 8, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5240
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !5241
  %call2 = call ptr @start_creating(ptr noundef %2, ptr noundef %3) #17, !dbg !5242
  store ptr %call2, ptr %dentry, align 8, !dbg !5243
  %4 = load ptr, ptr %dentry, align 8, !dbg !5244
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %4) #17, !dbg !5246
  br i1 %call3, label %if.then4, label %if.end5, !dbg !5247

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %link, align 8, !dbg !5248
  call void @kfree(ptr noundef %5) #17, !dbg !5250
  %6 = load ptr, ptr %dentry, align 8, !dbg !5251
  store ptr %6, ptr %retval, align 8, !dbg !5252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5252

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %dentry, align 8, !dbg !5253
  %d_sb = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 9, !dbg !5254
  %8 = load ptr, ptr %d_sb, align 8, !dbg !5254
  %call6 = call ptr @debugfs_get_inode(ptr noundef %8) #17, !dbg !5255
  store ptr %call6, ptr %inode, align 8, !dbg !5256
  %9 = load ptr, ptr %inode, align 8, !dbg !5257
  %tobool7 = icmp ne ptr %9, null, !dbg !5257
  %lnot = xor i1 %tobool7, true, !dbg !5257
  %lnot8 = xor i1 %lnot, true, !dbg !5257
  %lnot9 = xor i1 %lnot8, true, !dbg !5257
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !5257
  %conv = sext i32 %lnot.ext to i64, !dbg !5257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5257
  %tobool10 = icmp ne i64 %expval, 0, !dbg !5257
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !5259

if.then11:                                        ; preds = %if.end5
  br label %do.body, !dbg !5260

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !5263

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5263

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %name.addr, align 8, !dbg !5260
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %10) #18, !dbg !5260
  store i32 %call12, ptr %tmp, align 4, !dbg !5263
  %11 = load i32, ptr %tmp, align 4, !dbg !5260
  %12 = load ptr, ptr %link, align 8, !dbg !5265
  call void @kfree(ptr noundef %12) #17, !dbg !5266
  %13 = load ptr, ptr %dentry, align 8, !dbg !5267
  %call13 = call ptr @failed_creating(ptr noundef %13) #17, !dbg !5268
  store ptr %call13, ptr %retval, align 8, !dbg !5269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5269

if.end14:                                         ; preds = %if.end5
  %14 = load ptr, ptr %inode, align 8, !dbg !5270
  %i_mode = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 0, !dbg !5271
  store i16 -24065, ptr %i_mode, align 8, !dbg !5272
  %15 = load ptr, ptr %inode, align 8, !dbg !5273
  %i_op = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8, !dbg !5274
  store ptr @debugfs_symlink_inode_operations, ptr %i_op, align 8, !dbg !5275
  %16 = load ptr, ptr %link, align 8, !dbg !5276
  %17 = load ptr, ptr %inode, align 8, !dbg !5277
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 43, !dbg !5278
  store ptr %16, ptr %18, align 8, !dbg !5279
  %19 = load ptr, ptr %dentry, align 8, !dbg !5280
  %20 = load ptr, ptr %inode, align 8, !dbg !5281
  call void @d_instantiate(ptr noundef %19, ptr noundef %20) #17, !dbg !5282
  %21 = load ptr, ptr %dentry, align 8, !dbg !5283
  %call15 = call ptr @end_creating(ptr noundef %21) #17, !dbg !5284
  store ptr %call15, ptr %retval, align 8, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

cleanup:                                          ; preds = %if.end14, %do.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #16, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5286
  %22 = load ptr, ptr %retval, align 8, !dbg !5286
  ret ptr %22, !dbg !5286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5287 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @debugfs_remove(ptr noundef %dentry) #0 align 16 !dbg !5290 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5294
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !5296
  br i1 %call, label %if.then, label %if.end, !dbg !5297

if.then:                                          ; preds = %entry
  br label %return, !dbg !5298

if.end:                                           ; preds = %entry
  %call1 = call i32 @simple_pin_fs(ptr noundef @debug_fs_type, ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !5299
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5300
  call void @simple_recursive_removal(ptr noundef %1, ptr noundef @remove_one) #17, !dbg !5301
  call void @simple_release_fs(ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !5302
  br label %return, !dbg !5303

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5303
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5304 dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5308 dso_local void @simple_recursive_removal(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_one(ptr noundef %victim) #0 align 16 !dbg !5311 {
entry:
  %victim.addr = alloca ptr, align 8
  store ptr %victim, ptr %victim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %victim.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  %0 = load ptr, ptr %victim.addr, align 8, !dbg !5315
  %call = call zeroext i1 @d_is_reg(ptr noundef %0) #17, !dbg !5317
  br i1 %call, label %if.then, label %if.end, !dbg !5318

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %victim.addr, align 8, !dbg !5319
  call void @__debugfs_file_removed(ptr noundef %1) #17, !dbg !5320
  br label %if.end, !dbg !5320

if.end:                                           ; preds = %if.then, %entry
  call void @simple_release_fs(ptr noundef @debugfs_mount, ptr noundef @debugfs_mount_count) #17, !dbg !5321
  ret void, !dbg !5322
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local void @simple_release_fs(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @debugfs_lookup_and_remove(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !5326 {
entry:
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5330, metadata !DIExpression()), !dbg !5333
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5331, metadata !DIExpression()), !dbg !5334
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5332, metadata !DIExpression()), !dbg !5336
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5337
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5338
  %call = call ptr @debugfs_lookup(ptr noundef %0, ptr noundef %1) #17, !dbg !5339
  store ptr %call, ptr %dentry, align 8, !dbg !5340
  %2 = load ptr, ptr %dentry, align 8, !dbg !5341
  %tobool = icmp ne ptr %2, null, !dbg !5341
  br i1 %tobool, label %if.end, label %if.then, !dbg !5343

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5344

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !5345
  call void @debugfs_remove(ptr noundef %3) #17, !dbg !5346
  %4 = load ptr, ptr %dentry, align 8, !dbg !5347
  call void @dput(ptr noundef %4) #17, !dbg !5348
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5349
  br label %cleanup, !dbg !5349

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5349
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5349

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5350 dso_local void @dput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @debugfs_rename(ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_name) #0 align 16 !dbg !5351 {
entry:
  %retval = alloca ptr, align 8
  %old_dir.addr = alloca ptr, align 8
  %old_dentry.addr = alloca ptr, align 8
  %new_dir.addr = alloca ptr, align 8
  %new_name.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %dentry = alloca ptr, align 8
  %trap = alloca ptr, align 8
  %old_name = alloca %struct.name_snapshot, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %old_dir, ptr %old_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dir.addr, metadata !5355, metadata !DIExpression()), !dbg !5368
  store ptr %old_dentry, ptr %old_dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dentry.addr, metadata !5356, metadata !DIExpression()), !dbg !5369
  store ptr %new_dir, ptr %new_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dir.addr, metadata !5357, metadata !DIExpression()), !dbg !5370
  store ptr %new_name, ptr %new_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_name.addr, metadata !5358, metadata !DIExpression()), !dbg !5371
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5359, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #16, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !5360, metadata !DIExpression()), !dbg !5375
  store ptr null, ptr %dentry, align 8, !dbg !5375
  call void @llvm.lifetime.start.p0(i64 8, ptr %trap) #16, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %trap, metadata !5361, metadata !DIExpression()), !dbg !5376
  call void @llvm.lifetime.start.p0(i64 48, ptr %old_name) #16, !dbg !5377
  call void @llvm.dbg.declare(metadata ptr %old_name, metadata !5362, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %old_dir.addr, align 8, !dbg !5379
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #17, !dbg !5381
  br i1 %call, label %if.then, label %if.end, !dbg !5382

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %old_dir.addr, align 8, !dbg !5383
  store ptr %1, ptr %retval, align 8, !dbg !5384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5384

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_dir.addr, align 8, !dbg !5385
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #17, !dbg !5387
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5388

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %new_dir.addr, align 8, !dbg !5389
  store ptr %3, ptr %retval, align 8, !dbg !5390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5390

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5391
  %call4 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %4) #17, !dbg !5393
  br i1 %call4, label %if.then5, label %if.end6, !dbg !5394

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5395
  store ptr %5, ptr %retval, align 8, !dbg !5396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5396

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %new_dir.addr, align 8, !dbg !5397
  %7 = load ptr, ptr %old_dir.addr, align 8, !dbg !5398
  %call7 = call ptr @lock_rename(ptr noundef %6, ptr noundef %7) #17, !dbg !5399
  store ptr %call7, ptr %trap, align 8, !dbg !5400
  %8 = load ptr, ptr %old_dir.addr, align 8, !dbg !5401
  %call8 = call zeroext i1 @d_really_is_negative(ptr noundef %8) #17, !dbg !5403
  br i1 %call8, label %if.then10, label %lor.lhs.false, !dbg !5404

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load ptr, ptr %new_dir.addr, align 8, !dbg !5405
  %call9 = call zeroext i1 @d_really_is_negative(ptr noundef %9) #17, !dbg !5406
  br i1 %call9, label %if.then10, label %if.end11, !dbg !5407

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  br label %exit, !dbg !5408

if.end11:                                         ; preds = %lor.lhs.false
  %10 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5409
  %call12 = call zeroext i1 @d_really_is_negative(ptr noundef %10) #17, !dbg !5411
  br i1 %call12, label %if.then16, label %lor.lhs.false13, !dbg !5412

lor.lhs.false13:                                  ; preds = %if.end11
  %11 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5413
  %12 = load ptr, ptr %trap, align 8, !dbg !5414
  %cmp = icmp eq ptr %11, %12, !dbg !5415
  br i1 %cmp, label %if.then16, label %lor.lhs.false14, !dbg !5416

lor.lhs.false14:                                  ; preds = %lor.lhs.false13
  %13 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5417
  %call15 = call zeroext i1 @d_mountpoint(ptr noundef %13) #17, !dbg !5418
  br i1 %call15, label %if.then16, label %if.end17, !dbg !5419

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false13, %if.end11
  br label %exit, !dbg !5420

if.end17:                                         ; preds = %lor.lhs.false14
  %14 = load ptr, ptr %new_name.addr, align 8, !dbg !5421
  %15 = load ptr, ptr %new_dir.addr, align 8, !dbg !5422
  %16 = load ptr, ptr %new_name.addr, align 8, !dbg !5423
  %call18 = call i64 @strlen(ptr noundef %16) #17, !dbg !5424
  %conv = trunc i64 %call18 to i32, !dbg !5424
  %call19 = call ptr @lookup_one_len(ptr noundef %14, ptr noundef %15, i32 noundef %conv) #17, !dbg !5425
  store ptr %call19, ptr %dentry, align 8, !dbg !5426
  %17 = load ptr, ptr %dentry, align 8, !dbg !5427
  %call20 = call zeroext i1 @IS_ERR(ptr noundef %17) #17, !dbg !5429
  br i1 %call20, label %if.then28, label %lor.lhs.false22, !dbg !5430

lor.lhs.false22:                                  ; preds = %if.end17
  %18 = load ptr, ptr %dentry, align 8, !dbg !5431
  %19 = load ptr, ptr %trap, align 8, !dbg !5432
  %cmp23 = icmp eq ptr %18, %19, !dbg !5433
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25, !dbg !5434

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %20 = load ptr, ptr %dentry, align 8, !dbg !5435
  %call26 = call zeroext i1 @d_really_is_positive(ptr noundef %20) #17, !dbg !5436
  br i1 %call26, label %if.then28, label %if.end29, !dbg !5437

if.then28:                                        ; preds = %lor.lhs.false25, %lor.lhs.false22, %if.end17
  br label %exit, !dbg !5438

if.end29:                                         ; preds = %lor.lhs.false25
  %21 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5439
  call void @take_dentry_name_snapshot(ptr noundef %old_name, ptr noundef %21) #17, !dbg !5440
  %22 = load ptr, ptr %old_dir.addr, align 8, !dbg !5441
  %call30 = call ptr @d_inode(ptr noundef %22) #17, !dbg !5442
  %23 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5443
  %24 = load ptr, ptr %new_dir.addr, align 8, !dbg !5444
  %call31 = call ptr @d_inode(ptr noundef %24) #17, !dbg !5445
  %25 = load ptr, ptr %dentry, align 8, !dbg !5446
  %call32 = call i32 @simple_rename(ptr noundef @nop_mnt_idmap, ptr noundef %call30, ptr noundef %23, ptr noundef %call31, ptr noundef %25, i32 noundef 0) #17, !dbg !5447
  store i32 %call32, ptr %error, align 4, !dbg !5448
  %26 = load i32, ptr %error, align 4, !dbg !5449
  %tobool = icmp ne i32 %26, 0, !dbg !5449
  br i1 %tobool, label %if.then33, label %if.end34, !dbg !5451

if.then33:                                        ; preds = %if.end29
  call void @release_dentry_name_snapshot(ptr noundef %old_name) #17, !dbg !5452
  br label %exit, !dbg !5454

if.end34:                                         ; preds = %if.end29
  %27 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5455
  %28 = load ptr, ptr %dentry, align 8, !dbg !5456
  call void @d_move(ptr noundef %27, ptr noundef %28) #17, !dbg !5457
  %29 = load ptr, ptr %old_dir.addr, align 8, !dbg !5458
  %call35 = call ptr @d_inode(ptr noundef %29) #17, !dbg !5459
  %30 = load ptr, ptr %new_dir.addr, align 8, !dbg !5460
  %call36 = call ptr @d_inode(ptr noundef %30) #17, !dbg !5461
  %name = getelementptr inbounds %struct.name_snapshot, ptr %old_name, i32 0, i32 0, !dbg !5462
  %31 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5463
  %call37 = call zeroext i1 @d_is_dir(ptr noundef %31) #17, !dbg !5464
  %conv38 = zext i1 %call37 to i32, !dbg !5464
  %32 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5465
  call void @fsnotify_move(ptr noundef %call35, ptr noundef %call36, ptr noundef %name, i32 noundef %conv38, ptr noundef null, ptr noundef %32) #17, !dbg !5466
  call void @release_dentry_name_snapshot(ptr noundef %old_name) #17, !dbg !5467
  %33 = load ptr, ptr %new_dir.addr, align 8, !dbg !5468
  %34 = load ptr, ptr %old_dir.addr, align 8, !dbg !5469
  call void @unlock_rename(ptr noundef %33, ptr noundef %34) #17, !dbg !5470
  %35 = load ptr, ptr %dentry, align 8, !dbg !5471
  call void @dput(ptr noundef %35) #17, !dbg !5472
  %36 = load ptr, ptr %old_dentry.addr, align 8, !dbg !5473
  store ptr %36, ptr %retval, align 8, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

exit:                                             ; preds = %if.then33, %if.then28, %if.then16, %if.then10
  call void @llvm.dbg.label(metadata !5367), !dbg !5475
  %37 = load ptr, ptr %dentry, align 8, !dbg !5476
  %tobool39 = icmp ne ptr %37, null, !dbg !5476
  br i1 %tobool39, label %land.lhs.true, label %if.end42, !dbg !5478

land.lhs.true:                                    ; preds = %exit
  %38 = load ptr, ptr %dentry, align 8, !dbg !5479
  %call40 = call zeroext i1 @IS_ERR(ptr noundef %38) #17, !dbg !5480
  br i1 %call40, label %if.end42, label %if.then41, !dbg !5481

if.then41:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %dentry, align 8, !dbg !5482
  call void @dput(ptr noundef %39) #17, !dbg !5483
  br label %if.end42, !dbg !5483

if.end42:                                         ; preds = %if.then41, %land.lhs.true, %exit
  %40 = load ptr, ptr %new_dir.addr, align 8, !dbg !5484
  %41 = load ptr, ptr %old_dir.addr, align 8, !dbg !5485
  call void @unlock_rename(ptr noundef %40, ptr noundef %41) #17, !dbg !5486
  %42 = load ptr, ptr %dentry, align 8, !dbg !5487
  %call43 = call zeroext i1 @IS_ERR(ptr noundef %42) #17, !dbg !5489
  br i1 %call43, label %if.then44, label %if.end45, !dbg !5490

if.then44:                                        ; preds = %if.end42
  %43 = load ptr, ptr %dentry, align 8, !dbg !5491
  store ptr %43, ptr %retval, align 8, !dbg !5492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5492

if.end45:                                         ; preds = %if.end42
  %call46 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !5493
  store ptr %call46, ptr %retval, align 8, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

cleanup:                                          ; preds = %if.end45, %if.then44, %if.end34, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %old_name) #16, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 8, ptr %trap) #16, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #16, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5495
  %44 = load ptr, ptr %retval, align 8, !dbg !5495
  ret ptr %44, !dbg !5495
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5496 dso_local ptr @lock_rename(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #3 align 16 !dbg !5499 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5505
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5506
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5506
  %cmp = icmp eq ptr %1, null, !dbg !5507
  ret i1 %cmp, !dbg !5508
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_mountpoint(ptr noundef %dentry) #3 align 16 !dbg !5509 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5513
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !5514
  %1 = load i32, ptr %d_flags, align 8, !dbg !5514
  %and = and i32 %1, 65536, !dbg !5515
  %tobool = icmp ne i32 %and, 0, !dbg !5513
  ret i1 %tobool, !dbg !5516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5517 dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_positive(ptr noundef %dentry) #3 align 16 !dbg !5518 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5522
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5523
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5523
  %cmp = icmp ne ptr %1, null, !dbg !5524
  ret i1 %cmp, !dbg !5525
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5526 dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5530 dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5531 dso_local void @release_dentry_name_snapshot(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5534 dso_local void @d_move(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_move(ptr noundef %old_dir, ptr noundef %new_dir, ptr noundef %old_name, i32 noundef %isdir, ptr noundef %target, ptr noundef %moved) #3 align 16 !dbg !5537 {
entry:
  %old_dir.addr = alloca ptr, align 8
  %new_dir.addr = alloca ptr, align 8
  %old_name.addr = alloca ptr, align 8
  %isdir.addr = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %moved.addr = alloca ptr, align 8
  %source = alloca ptr, align 8
  %fs_cookie = alloca i32, align 4
  %old_dir_mask = alloca i32, align 4
  %new_dir_mask = alloca i32, align 4
  %rename_mask = alloca i32, align 4
  %new_name = alloca ptr, align 8
  store ptr %old_dir, ptr %old_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_dir.addr, metadata !5541, metadata !DIExpression()), !dbg !5553
  store ptr %new_dir, ptr %new_dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_dir.addr, metadata !5542, metadata !DIExpression()), !dbg !5554
  store ptr %old_name, ptr %old_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old_name.addr, metadata !5543, metadata !DIExpression()), !dbg !5555
  store i32 %isdir, ptr %isdir.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %isdir.addr, metadata !5544, metadata !DIExpression()), !dbg !5556
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !5545, metadata !DIExpression()), !dbg !5557
  store ptr %moved, ptr %moved.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %moved.addr, metadata !5546, metadata !DIExpression()), !dbg !5558
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #16, !dbg !5559
  call void @llvm.dbg.declare(metadata ptr %source, metadata !5547, metadata !DIExpression()), !dbg !5560
  %0 = load ptr, ptr %moved.addr, align 8, !dbg !5561
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !5562
  %1 = load ptr, ptr %d_inode, align 8, !dbg !5562
  store ptr %1, ptr %source, align 8, !dbg !5560
  call void @llvm.lifetime.start.p0(i64 4, ptr %fs_cookie) #16, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %fs_cookie, metadata !5548, metadata !DIExpression()), !dbg !5564
  %call = call i32 @fsnotify_get_cookie() #17, !dbg !5565
  store i32 %call, ptr %fs_cookie, align 4, !dbg !5564
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_dir_mask) #16, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %old_dir_mask, metadata !5549, metadata !DIExpression()), !dbg !5567
  store i32 64, ptr %old_dir_mask, align 4, !dbg !5567
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_dir_mask) #16, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %new_dir_mask, metadata !5550, metadata !DIExpression()), !dbg !5569
  store i32 128, ptr %new_dir_mask, align 4, !dbg !5569
  call void @llvm.lifetime.start.p0(i64 4, ptr %rename_mask) #16, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %rename_mask, metadata !5551, metadata !DIExpression()), !dbg !5571
  store i32 268435456, ptr %rename_mask, align 4, !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_name) #16, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %new_name, metadata !5552, metadata !DIExpression()), !dbg !5573
  %2 = load ptr, ptr %moved.addr, align 8, !dbg !5574
  %d_name = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, !dbg !5575
  store ptr %d_name, ptr %new_name, align 8, !dbg !5573
  %3 = load i32, ptr %isdir.addr, align 4, !dbg !5576
  %tobool = icmp ne i32 %3, 0, !dbg !5576
  br i1 %tobool, label %if.then, label %if.end, !dbg !5578

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %old_dir_mask, align 4, !dbg !5579
  %or = or i32 %4, 1073741824, !dbg !5579
  store i32 %or, ptr %old_dir_mask, align 4, !dbg !5579
  %5 = load i32, ptr %new_dir_mask, align 4, !dbg !5581
  %or1 = or i32 %5, 1073741824, !dbg !5581
  store i32 %or1, ptr %new_dir_mask, align 4, !dbg !5581
  %6 = load i32, ptr %rename_mask, align 4, !dbg !5582
  %or2 = or i32 %6, 1073741824, !dbg !5582
  store i32 %or2, ptr %rename_mask, align 4, !dbg !5582
  br label %if.end, !dbg !5583

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %rename_mask, align 4, !dbg !5584
  %8 = load ptr, ptr %moved.addr, align 8, !dbg !5585
  %9 = load ptr, ptr %old_dir.addr, align 8, !dbg !5586
  %10 = load ptr, ptr %old_name.addr, align 8, !dbg !5587
  %call3 = call i32 @fsnotify_name(i32 noundef %7, ptr noundef %8, i32 noundef 3, ptr noundef %9, ptr noundef %10, i32 noundef 0) #17, !dbg !5588
  %11 = load i32, ptr %old_dir_mask, align 4, !dbg !5589
  %12 = load ptr, ptr %source, align 8, !dbg !5590
  %13 = load ptr, ptr %old_dir.addr, align 8, !dbg !5591
  %14 = load ptr, ptr %old_name.addr, align 8, !dbg !5592
  %15 = load i32, ptr %fs_cookie, align 4, !dbg !5593
  %call4 = call i32 @fsnotify_name(i32 noundef %11, ptr noundef %12, i32 noundef 2, ptr noundef %13, ptr noundef %14, i32 noundef %15) #17, !dbg !5594
  %16 = load i32, ptr %new_dir_mask, align 4, !dbg !5595
  %17 = load ptr, ptr %source, align 8, !dbg !5596
  %18 = load ptr, ptr %new_dir.addr, align 8, !dbg !5597
  %19 = load ptr, ptr %new_name, align 8, !dbg !5598
  %20 = load i32, ptr %fs_cookie, align 4, !dbg !5599
  %call5 = call i32 @fsnotify_name(i32 noundef %16, ptr noundef %17, i32 noundef 2, ptr noundef %18, ptr noundef %19, i32 noundef %20) #17, !dbg !5600
  %21 = load ptr, ptr %target.addr, align 8, !dbg !5601
  %tobool6 = icmp ne ptr %21, null, !dbg !5601
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5603

if.then7:                                         ; preds = %if.end
  %22 = load ptr, ptr %target.addr, align 8, !dbg !5604
  call void @fsnotify_link_count(ptr noundef %22) #17, !dbg !5605
  br label %if.end8, !dbg !5605

if.end8:                                          ; preds = %if.then7, %if.end
  %23 = load ptr, ptr %source, align 8, !dbg !5606
  call void @fsnotify_inode(ptr noundef %23, i32 noundef 2048) #17, !dbg !5607
  %24 = load ptr, ptr %new_dir.addr, align 8, !dbg !5608
  %25 = load ptr, ptr %moved.addr, align 8, !dbg !5609
  call void @audit_inode_child(ptr noundef %24, ptr noundef %25, i8 noundef zeroext 4) #17, !dbg !5610
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_name) #16, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 4, ptr %rename_mask) #16, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_dir_mask) #16, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_dir_mask) #16, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 4, ptr %fs_cookie) #16, !dbg !5611
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #16, !dbg !5611
  ret void, !dbg !5611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_dir(ptr noundef %dentry) #3 align 16 !dbg !5612 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5616
  %call = call zeroext i1 @d_can_lookup(ptr noundef %0) #17, !dbg !5617
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !5618

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5619
  %call1 = call zeroext i1 @d_is_autodir(ptr noundef %1) #17, !dbg !5620
  br label %lor.end, !dbg !5618

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !5621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5622 dso_local void @unlock_rename(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @debugfs_kernel(ptr noundef %str) #8 section ".init.text" align 16 !dbg !5623 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5627
  %tobool = icmp ne ptr %0, null, !dbg !5627
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5629

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !5630
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.18) #17, !dbg !5633
  %tobool1 = icmp ne i32 %call, 0, !dbg !5633
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !5634

if.then2:                                         ; preds = %if.then
  store i32 3, ptr @debugfs_allow, align 4, !dbg !5635
  br label %if.end11, !dbg !5636

if.else:                                          ; preds = %if.then
  %2 = load ptr, ptr %str.addr, align 8, !dbg !5637
  %call3 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.19) #17, !dbg !5639
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5639
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !5640

if.then5:                                         ; preds = %if.else
  store i32 1, ptr @debugfs_allow, align 4, !dbg !5641
  br label %if.end10, !dbg !5642

if.else6:                                         ; preds = %if.else
  %3 = load ptr, ptr %str.addr, align 8, !dbg !5643
  %call7 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.20) #17, !dbg !5645
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5645
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !5646

if.then9:                                         ; preds = %if.else6
  store i32 0, ptr @debugfs_allow, align 4, !dbg !5647
  br label %if.end, !dbg !5648

if.end:                                           ; preds = %if.then9, %if.else6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then2
  br label %if.end12, !dbg !5649

if.end12:                                         ; preds = %if.end11, %entry
  ret i32 0, !dbg !5650
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_debugfs__345_918_debugfs_init1() #8 section ".init.text" align 16 !dbg !5651 {
entry:
  %call = call i32 @debugfs_init() #18, !dbg !5652
  ret i32 %call, !dbg !5652
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @debugfs_init() #8 section ".init.text" align 16 !dbg !5653 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5655, metadata !DIExpression()), !dbg !5657
  %0 = load i32, ptr @debugfs_allow, align 4, !dbg !5658
  %conv = zext i32 %0 to i64, !dbg !5658
  %and = and i64 %conv, 2, !dbg !5660
  %tobool = icmp ne i64 %and, 0, !dbg !5660
  br i1 %tobool, label %if.end, label %if.then, !dbg !5661

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5662

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @kernel_kobj, align 8, !dbg !5663
  %call = call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef @.str.21) #17, !dbg !5664
  store i32 %call, ptr %retval1, align 4, !dbg !5665
  %2 = load i32, ptr %retval1, align 4, !dbg !5666
  %tobool2 = icmp ne i32 %2, 0, !dbg !5666
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5668

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %retval1, align 4, !dbg !5669
  store i32 %3, ptr %retval, align 4, !dbg !5670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5670

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @register_filesystem(ptr noundef @debug_fs_type) #17, !dbg !5671
  store i32 %call5, ptr %retval1, align 4, !dbg !5672
  %4 = load i32, ptr %retval1, align 4, !dbg !5673
  %tobool6 = icmp ne i32 %4, 0, !dbg !5673
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5675

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr @kernel_kobj, align 8, !dbg !5676
  call void @sysfs_remove_mount_point(ptr noundef %5, ptr noundef @.str.21) #17, !dbg !5677
  br label %if.end8, !dbg !5677

if.else:                                          ; preds = %if.end4
  store i8 1, ptr @debugfs_registered, align 1, !dbg !5678
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %6 = load i32, ptr %retval1, align 4, !dbg !5679
  store i32 %6, ptr %retval, align 4, !dbg !5680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5680

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5681
  %7 = load i32, ptr %retval, align 4, !dbg !5681
  ret i32 %7, !dbg !5681
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_create(ptr noundef %dir, ptr noundef %dentry) #3 align 16 !dbg !5682 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5684, metadata !DIExpression()), !dbg !5686
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5685, metadata !DIExpression()), !dbg !5687
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5688
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5689
  call void @audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #17, !dbg !5690
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5691
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5692
  call void @fsnotify_dirent(ptr noundef %2, ptr noundef %3, i32 noundef 256) #17, !dbg !5693
  ret void, !dbg !5694
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @debugfs_setattr(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %ia) #0 align 16 !dbg !5695 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %ia.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !5697, metadata !DIExpression()), !dbg !5701
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5698, metadata !DIExpression()), !dbg !5702
  store ptr %ia, ptr %ia.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ia.addr, metadata !5699, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5700, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %ia.addr, align 8, !dbg !5706
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %0, i32 0, i32 0, !dbg !5708
  %1 = load i32, ptr %ia_valid, align 8, !dbg !5708
  %and = and i32 %1, 7, !dbg !5709
  %tobool = icmp ne i32 %and, 0, !dbg !5709
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5710

if.then:                                          ; preds = %entry
  %call = call i32 @security_locked_down(i32 noundef 15) #17, !dbg !5711
  store i32 %call, ptr %ret, align 4, !dbg !5713
  %2 = load i32, ptr %ret, align 4, !dbg !5714
  %tobool1 = icmp ne i32 %2, 0, !dbg !5714
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5716

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %ret, align 4, !dbg !5717
  store i32 %3, ptr %retval, align 4, !dbg !5718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5718

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5719

if.end3:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !5720
  %5 = load ptr, ptr %ia.addr, align 8, !dbg !5721
  %call4 = call i32 @simple_setattr(ptr noundef @nop_mnt_idmap, ptr noundef %4, ptr noundef %5) #17, !dbg !5722
  store i32 %call4, ptr %retval, align 4, !dbg !5723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5723

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5724
  %6 = load i32, ptr %retval, align 4, !dbg !5724
  ret i32 %6, !dbg !5724
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5725 dso_local i32 @security_locked_down(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @audit_inode_child(ptr noundef %parent, ptr noundef %dentry, i8 noundef zeroext %type) #3 align 16 !dbg !5729 {
entry:
  %parent.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5734, metadata !DIExpression()), !dbg !5737
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5735, metadata !DIExpression()), !dbg !5738
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5736, metadata !DIExpression()), !dbg !5739
  %call = call zeroext i1 @audit_dummy_context() #17, !dbg !5740
  %lnot = xor i1 %call, true, !dbg !5740
  %lnot1 = xor i1 %lnot, true, !dbg !5740
  %lnot2 = xor i1 %lnot1, true, !dbg !5740
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5740
  %conv = sext i32 %lnot.ext to i64, !dbg !5740
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5740
  %tobool = icmp ne i64 %expval, 0, !dbg !5740
  br i1 %tobool, label %if.then, label %if.end, !dbg !5742

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5743
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5744
  %2 = load i8, ptr %type.addr, align 1, !dbg !5745
  call void @__audit_inode_child(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17, !dbg !5746
  br label %if.end, !dbg !5746

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_dirent(ptr noundef %dir, ptr noundef %dentry, i32 noundef %mask) #3 align 16 !dbg !5748 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5752, metadata !DIExpression()), !dbg !5755
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5753, metadata !DIExpression()), !dbg !5756
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5754, metadata !DIExpression()), !dbg !5757
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5758
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5759
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !5760
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5761
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !5762
  %call = call i32 @fsnotify_name(i32 noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef %2, ptr noundef %d_name, i32 noundef 0) #17, !dbg !5763
  ret void, !dbg !5764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @audit_dummy_context() #3 align 16 !dbg !5765 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5767, metadata !DIExpression()), !dbg !5769
  %call = call ptr @audit_context() #17, !dbg !5770
  store ptr %call, ptr %p, align 8, !dbg !5769
  %0 = load ptr, ptr %p, align 8, !dbg !5771
  %tobool = icmp ne ptr %0, null, !dbg !5771
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5772

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !5773
  %2 = load i32, ptr %1, align 4, !dbg !5774
  %tobool1 = icmp ne i32 %2, 0, !dbg !5772
  br label %lor.end, !dbg !5772

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5775
  ret i1 %3, !dbg !5776
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5777 dso_local void @__audit_inode_child(ptr noundef, ptr noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @audit_context() #3 align 16 !dbg !5778 {
entry:
  %call = call ptr @get_current() #17, !dbg !5781
  %audit_context = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 114, !dbg !5782
  %0 = load ptr, ptr %audit_context, align 32, !dbg !5782
  ret ptr %0, !dbg !5783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !5784 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5789, metadata !DIExpression()), !dbg !5795
  br label %do.body, !dbg !5795

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5791, metadata !DIExpression()), !dbg !5796
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5796
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5796
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5795
  br label %do.cond, !dbg !5796

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5796

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5793, metadata !DIExpression()), !dbg !5797
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !5797, !srcloc !5798
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5797
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5797
  %3 = inttoptr i64 %2 to ptr, !dbg !5797
  store ptr %3, ptr %tmp, align 8, !dbg !5797
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !5795
  %4 = load ptr, ptr %tmp, align 8, !dbg !5797
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5795
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5795
  store ptr %5, ptr %tmp1, align 8, !dbg !5795
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !5799
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5795
  ret ptr %6, !dbg !5800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fsnotify_name(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #3 align 16 !dbg !5801 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %data_type.addr = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5805, metadata !DIExpression()), !dbg !5811
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5806, metadata !DIExpression()), !dbg !5812
  store i32 %data_type, ptr %data_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data_type.addr, metadata !5807, metadata !DIExpression()), !dbg !5813
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5808, metadata !DIExpression()), !dbg !5814
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5809, metadata !DIExpression()), !dbg !5815
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5810, metadata !DIExpression()), !dbg !5816
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5817
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5819
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5819
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !5820
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !5821
  %cmp = icmp eq i64 %call, 0, !dbg !5822
  br i1 %cmp, label %if.then, label %if.end, !dbg !5823

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5824
  br label %return, !dbg !5824

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5825
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5826
  %4 = load i32, ptr %data_type.addr, align 4, !dbg !5827
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !5828
  %6 = load ptr, ptr %name.addr, align 8, !dbg !5829
  %7 = load i32, ptr %cookie.addr, align 4, !dbg !5830
  %call1 = call i32 @fsnotify(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef %7) #17, !dbg !5831
  store i32 %call1, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !5833
  ret i32 %8, !dbg !5833
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #9 align 16 !dbg !5834 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5843
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !5844
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5845
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !5846
  ret i64 %call, !dbg !5847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5848 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5851 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5859, metadata !DIExpression()), !dbg !5861
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5860, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5863
  %1 = load i64, ptr %size.addr, align 8, !dbg !5864
  %conv = trunc i64 %1 to i32, !dbg !5864
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5865
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5866
  %3 = load i64, ptr %size.addr, align 8, !dbg !5866
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5866
  ret void, !dbg !5867
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #9 align 16 !dbg !5868 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5872
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !5873
  ret i64 %call, !dbg !5874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5875 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5880, metadata !DIExpression()), !dbg !5882
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  ret i1 true, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5885 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5890, metadata !DIExpression()), !dbg !5893
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5891, metadata !DIExpression()), !dbg !5894
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5892, metadata !DIExpression()), !dbg !5895
  ret void, !dbg !5896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #9 align 16 !dbg !5897 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5906
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !5907
  ret i64 %call, !dbg !5908
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #9 align 16 !dbg !5909 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5914
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5914
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5914
  ret i64 %1, !dbg !5915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #3 align 16 !dbg !5916 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5920
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5921
  call void @down_write(ptr noundef %i_rwsem) #17, !dbg !5922
  ret void, !dbg !5923
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #3 align 16 !dbg !5924 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5928
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !5929
  call void @up_write(ptr noundef %i_rwsem) #17, !dbg !5930
  ret void, !dbg !5931
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5932 dso_local void @down_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5936 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5937 dso_local ptr @new_inode(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local i32 @get_next_ino() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5941 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5944 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5946, metadata !DIExpression()), !dbg !5951
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5947, metadata !DIExpression()), !dbg !5952
  %0 = load i64, ptr %size.addr, align 8, !dbg !5953
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5954
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5955

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5956
  %tobool = icmp ne i64 %2, 0, !dbg !5956
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5957

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5948, metadata !DIExpression()), !dbg !5959
  %3 = load i64, ptr %size.addr, align 8, !dbg !5960
  %cmp = icmp ugt i64 %3, 8192, !dbg !5962
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5963

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5964
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5965
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5966
  store ptr %call, ptr %retval, align 8, !dbg !5967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5968
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5968
  store i32 %call2, ptr %index, align 4, !dbg !5969
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5970
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5971
  %9 = ptrtoint ptr %8 to i64, !dbg !5971
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5972
  %idxprom = zext i32 %call3 to i64, !dbg !5973
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5973
  %10 = load i32, ptr %index, align 4, !dbg !5974
  %idxprom4 = zext i32 %10 to i64, !dbg !5973
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5973
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5973
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5975
  %13 = load i64, ptr %size.addr, align 8, !dbg !5976
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5977
  store ptr %call6, ptr %retval, align 8, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5979
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5980
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5981
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5982
  store ptr %call8, ptr %retval, align 8, !dbg !5983
  br label %return, !dbg !5983

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5984
  ret ptr %16, !dbg !5984
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5985 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5986 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5990, metadata !DIExpression()), !dbg !5992
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5991, metadata !DIExpression()), !dbg !5993
  %0 = load i64, ptr %size.addr, align 8, !dbg !5994
  %tobool = icmp ne i64 %0, 0, !dbg !5994
  br i1 %tobool, label %if.end, label %if.then, !dbg !5996

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5997
  br label %return, !dbg !5997

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5998
  %cmp = icmp ule i64 %1, 8, !dbg !6000
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6001

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6002
  br label %return, !dbg !6002

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6003
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6005
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6006

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6007
  %cmp4 = icmp ule i64 %3, 96, !dbg !6008
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6009

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6010
  br label %return, !dbg !6010

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6011
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6013
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6014

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6015
  %cmp9 = icmp ule i64 %5, 192, !dbg !6016
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6017

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6018
  br label %return, !dbg !6018

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6019
  %cmp12 = icmp ule i64 %6, 8, !dbg !6021
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6022

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6023
  br label %return, !dbg !6023

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6024
  %cmp15 = icmp ule i64 %7, 16, !dbg !6026
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6027

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6028
  br label %return, !dbg !6028

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6029
  %cmp18 = icmp ule i64 %8, 32, !dbg !6031
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6032

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6033
  br label %return, !dbg !6033

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6034
  %cmp21 = icmp ule i64 %9, 64, !dbg !6036
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6037

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6038
  br label %return, !dbg !6038

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6039
  %cmp24 = icmp ule i64 %10, 128, !dbg !6041
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6042

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6043
  br label %return, !dbg !6043

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6044
  %cmp27 = icmp ule i64 %11, 256, !dbg !6046
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6047

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6048
  br label %return, !dbg !6048

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6049
  %cmp30 = icmp ule i64 %12, 512, !dbg !6051
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6052

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6054
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6056
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6057

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6058
  br label %return, !dbg !6058

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6059
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6061
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6062

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6063
  br label %return, !dbg !6063

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6064
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6066
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6067

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6068
  br label %return, !dbg !6068

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6069
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6071
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6072

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6073
  br label %return, !dbg !6073

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6074
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6076
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6077

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6079
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6081
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6082

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6083
  br label %return, !dbg !6083

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6084
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6086
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6087

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6088
  br label %return, !dbg !6088

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6089
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6091
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6092

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6093
  br label %return, !dbg !6093

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6094
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6096
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6097

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6099
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6101
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6102

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6103
  br label %return, !dbg !6103

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6104
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6106
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6107

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6108
  br label %return, !dbg !6108

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6109
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6111
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6112

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6113
  br label %return, !dbg !6113

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6114, !range !4591, !noundef !595
  %tobool69 = trunc i8 %25 to i1, !dbg !6114
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6116

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6117

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #22, !dbg !6118, !srcloc !6121
  unreachable, !dbg !6118

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6122

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6123

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6124

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6126

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6124

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #16, !dbg !6128, !srcloc !6130
  br label %do.end75, !dbg !6128

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6124

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6131
  br label %return, !dbg !6131

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6132
  ret i32 %26, !dbg !6132
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6133 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !6136 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6144
  %and = and i32 %0, 17, !dbg !6144
  %cmp = icmp eq i32 %and, 0, !dbg !6144
  %lnot = xor i1 %cmp, true, !dbg !6144
  %lnot1 = xor i1 %lnot, true, !dbg !6144
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6144
  %conv = sext i32 %lnot.ext to i64, !dbg !6144
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6144
  %tobool = icmp ne i64 %expval, 0, !dbg !6144
  br i1 %tobool, label %if.then, label %if.end, !dbg !6146

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6147
  br label %return, !dbg !6147

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6148
  %and2 = and i32 %1, 1, !dbg !6150
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6150
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6151

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6153
  br label %return, !dbg !6153

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6155
  ret i32 %2, !dbg !6155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6156 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6157 dso_local void @__compiletime_assert_255() #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @debug_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 16 !dbg !6158 {
entry:
  %retval = alloca ptr, align 8
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !6160, metadata !DIExpression()), !dbg !6164
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6161, metadata !DIExpression()), !dbg !6165
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !6162, metadata !DIExpression()), !dbg !6166
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6163, metadata !DIExpression()), !dbg !6167
  %0 = load i32, ptr @debugfs_allow, align 4, !dbg !6168
  %conv = zext i32 %0 to i64, !dbg !6168
  %and = and i64 %conv, 1, !dbg !6170
  %tobool = icmp ne i64 %and, 0, !dbg !6170
  br i1 %tobool, label %if.end, label %if.then, !dbg !6171

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -1) #17, !dbg !6172
  store ptr %call, ptr %retval, align 8, !dbg !6173
  br label %return, !dbg !6173

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fs_type.addr, align 8, !dbg !6174
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6175
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6176
  %call1 = call ptr @mount_single(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef @debug_fill_super) #17, !dbg !6177
  store ptr %call1, ptr %retval, align 8, !dbg !6178
  br label %return, !dbg !6178

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !6179
  ret ptr %4, !dbg !6179
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6180 dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @debug_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 16 !dbg !4463 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %silent.addr = alloca i32, align 4
  %fsi = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4467, metadata !DIExpression()), !dbg !6184
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4468, metadata !DIExpression()), !dbg !6185
  store i32 %silent, ptr %silent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %silent.addr, metadata !4469, metadata !DIExpression()), !dbg !6186
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6187
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !4470, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4481, metadata !DIExpression()), !dbg !6190
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #19, !dbg !6191
  store ptr %call, ptr %fsi, align 8, !dbg !6192
  %0 = load ptr, ptr %fsi, align 8, !dbg !6193
  %1 = load ptr, ptr %sb.addr, align 8, !dbg !6194
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !6195
  store ptr %0, ptr %s_fs_info, align 32, !dbg !6196
  %2 = load ptr, ptr %fsi, align 8, !dbg !6197
  %tobool = icmp ne ptr %2, null, !dbg !6197
  br i1 %tobool, label %if.end, label %if.then, !dbg !6199

if.then:                                          ; preds = %entry
  store i32 -12, ptr %err, align 4, !dbg !6200
  br label %fail, !dbg !6202

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6203
  %4 = load ptr, ptr %fsi, align 8, !dbg !6204
  %mount_opts = getelementptr inbounds %struct.debugfs_fs_info, ptr %4, i32 0, i32 0, !dbg !6205
  %call1 = call i32 @debugfs_parse_options(ptr noundef %3, ptr noundef %mount_opts) #17, !dbg !6206
  store i32 %call1, ptr %err, align 4, !dbg !6207
  %5 = load i32, ptr %err, align 4, !dbg !6208
  %tobool2 = icmp ne i32 %5, 0, !dbg !6208
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6210

if.then3:                                         ; preds = %if.end
  br label %fail, !dbg !6211

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !6212
  %call5 = call i32 @simple_fill_super(ptr noundef %6, i64 noundef 1684170528, ptr noundef @debug_fill_super.debug_files) #17, !dbg !6213
  store i32 %call5, ptr %err, align 4, !dbg !6214
  %7 = load i32, ptr %err, align 4, !dbg !6215
  %tobool6 = icmp ne i32 %7, 0, !dbg !6215
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6217

if.then7:                                         ; preds = %if.end4
  br label %fail, !dbg !6218

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %sb.addr, align 8, !dbg !6219
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6, !dbg !6220
  store ptr @debugfs_super_operations, ptr %s_op, align 16, !dbg !6221
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !6222
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 40, !dbg !6223
  store ptr @debugfs_dops, ptr %s_d_op, align 16, !dbg !6224
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !6225
  call void @debugfs_apply_options(ptr noundef %10) #17, !dbg !6226
  store i32 0, ptr %retval, align 4, !dbg !6227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6227

fail:                                             ; preds = %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4482), !dbg !6228
  %11 = load ptr, ptr %fsi, align 8, !dbg !6229
  call void @kfree(ptr noundef %11) #17, !dbg !6230
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !6231
  %s_fs_info9 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 29, !dbg !6232
  store ptr null, ptr %s_fs_info9, align 32, !dbg !6233
  %13 = load i32, ptr %err, align 4, !dbg !6234
  store i32 %13, ptr %retval, align 4, !dbg !6235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6235

cleanup:                                          ; preds = %fail, %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6236
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6236
  %14 = load i32, ptr %retval, align 4, !dbg !6236
  ret i32 %14, !dbg !6236
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @debugfs_parse_options(ptr noundef %data, ptr noundef %opts) #0 align 16 !dbg !6237 {
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
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6242, metadata !DIExpression()), !dbg !6256
  store ptr %opts, ptr %opts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !6243, metadata !DIExpression()), !dbg !6257
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #16, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %args, metadata !6244, metadata !DIExpression()), !dbg !6259
  call void @llvm.lifetime.start.p0(i64 4, ptr %option) #16, !dbg !6260
  call void @llvm.dbg.declare(metadata ptr %option, metadata !6251, metadata !DIExpression()), !dbg !6261
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #16, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %token, metadata !6252, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6253, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6254, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6255, metadata !DIExpression()), !dbg !6269
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !6270
  %opts1 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %0, i32 0, i32 3, !dbg !6271
  store i32 0, ptr %opts1, align 4, !dbg !6272
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !6273
  %mode = getelementptr inbounds %struct.debugfs_mount_opts, ptr %1, i32 0, i32 2, !dbg !6274
  store i16 448, ptr %mode, align 4, !dbg !6275
  br label %while.cond, !dbg !6276

while.cond:                                       ; preds = %sw.epilog, %if.then, %entry
  %call = call ptr @strsep(ptr noundef %data.addr, ptr noundef @.str.11) #17, !dbg !6277
  store ptr %call, ptr %p, align 8, !dbg !6278
  %cmp = icmp ne ptr %call, null, !dbg !6279
  br i1 %cmp, label %while.body, label %while.end, !dbg !6276

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8, !dbg !6280
  %3 = load i8, ptr %2, align 1, !dbg !6283
  %tobool = icmp ne i8 %3, 0, !dbg !6283
  br i1 %tobool, label %if.end, label %if.then, !dbg !6284

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !6285, !llvm.loop !6286

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %p, align 8, !dbg !6290
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6291
  %call2 = call i32 @match_token(ptr noundef %4, ptr noundef @tokens, ptr noundef %arraydecay) #17, !dbg !6292
  store i32 %call2, ptr %token, align 4, !dbg !6293
  %5 = load i32, ptr %token, align 4, !dbg !6294
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb29
  ], !dbg !6295

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6296
  %call3 = call i32 @match_int(ptr noundef %arrayidx, ptr noundef %option) #17, !dbg !6299
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6299
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6300

if.then5:                                         ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !6301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6301

if.end6:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #16, !dbg !6302
  %call7 = call ptr @current_user_ns() #17, !dbg !6303
  %6 = load i32, ptr %option, align 4, !dbg !6304
  %call8 = call i32 @make_kuid(ptr noundef %call7, i32 noundef %6) #17, !dbg !6302
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !6302
  store i32 %call8, ptr %coerce.dive, align 4, !dbg !6302
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %tmp, i64 4, i1 false), !dbg !6302
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #16, !dbg !6302
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6305
  %7 = load i32, ptr %coerce.dive9, align 4, !dbg !6305
  %call10 = call zeroext i1 @uid_valid(i32 %7) #17, !dbg !6305
  br i1 %call10, label %if.end12, label %if.then11, !dbg !6307

if.then11:                                        ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !6308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6308

if.end12:                                         ; preds = %if.end6
  %8 = load ptr, ptr %opts.addr, align 8, !dbg !6309
  %uid13 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %8, i32 0, i32 0, !dbg !6310
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid13, ptr align 4 %uid, i64 4, i1 false), !dbg !6311
  br label %sw.epilog, !dbg !6312

sw.bb14:                                          ; preds = %if.end
  %arrayidx15 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6313
  %call16 = call i32 @match_int(ptr noundef %arrayidx15, ptr noundef %option) #17, !dbg !6315
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6315
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6316

if.then18:                                        ; preds = %sw.bb14
  store i32 -22, ptr %retval, align 4, !dbg !6317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6317

if.end19:                                         ; preds = %sw.bb14
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp20) #16, !dbg !6318
  %call21 = call ptr @current_user_ns() #17, !dbg !6319
  %9 = load i32, ptr %option, align 4, !dbg !6320
  %call22 = call i32 @make_kgid(ptr noundef %call21, i32 noundef %9) #17, !dbg !6318
  %coerce.dive23 = getelementptr inbounds %struct.kgid_t, ptr %tmp20, i32 0, i32 0, !dbg !6318
  store i32 %call22, ptr %coerce.dive23, align 4, !dbg !6318
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %tmp20, i64 4, i1 false), !dbg !6318
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp20) #16, !dbg !6318
  %coerce.dive24 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6321
  %10 = load i32, ptr %coerce.dive24, align 4, !dbg !6321
  %call25 = call zeroext i1 @gid_valid(i32 %10) #17, !dbg !6321
  br i1 %call25, label %if.end27, label %if.then26, !dbg !6323

if.then26:                                        ; preds = %if.end19
  store i32 -22, ptr %retval, align 4, !dbg !6324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6324

if.end27:                                         ; preds = %if.end19
  %11 = load ptr, ptr %opts.addr, align 8, !dbg !6325
  %gid28 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %11, i32 0, i32 1, !dbg !6326
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid28, ptr align 4 %gid, i64 4, i1 false), !dbg !6327
  br label %sw.epilog, !dbg !6328

sw.bb29:                                          ; preds = %if.end
  %arrayidx30 = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !6329
  %call31 = call i32 @match_octal(ptr noundef %arrayidx30, ptr noundef %option) #17, !dbg !6331
  %tobool32 = icmp ne i32 %call31, 0, !dbg !6331
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !6332

if.then33:                                        ; preds = %sw.bb29
  store i32 -22, ptr %retval, align 4, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

if.end34:                                         ; preds = %sw.bb29
  %12 = load i32, ptr %option, align 4, !dbg !6334
  %and = and i32 %12, 4095, !dbg !6335
  %conv = trunc i32 %and to i16, !dbg !6334
  %13 = load ptr, ptr %opts.addr, align 8, !dbg !6336
  %mode35 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %13, i32 0, i32 2, !dbg !6337
  store i16 %conv, ptr %mode35, align 4, !dbg !6338
  br label %sw.epilog, !dbg !6339

sw.epilog:                                        ; preds = %if.end, %if.end34, %if.end27, %if.end12
  %14 = load i32, ptr %token, align 4, !dbg !6340
  %sh_prom = zext i32 %14 to i64, !dbg !6340
  %shl = shl i64 1, %sh_prom, !dbg !6340
  %15 = load ptr, ptr %opts.addr, align 8, !dbg !6341
  %opts36 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %15, i32 0, i32 3, !dbg !6342
  %16 = load i32, ptr %opts36, align 4, !dbg !6343
  %conv37 = zext i32 %16 to i64, !dbg !6343
  %or = or i64 %conv37, %shl, !dbg !6343
  %conv38 = trunc i64 %or to i32, !dbg !6343
  store i32 %conv38, ptr %opts36, align 4, !dbg !6343
  br label %while.cond, !dbg !6276, !llvm.loop !6286

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !6344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6344

cleanup:                                          ; preds = %while.end, %if.then33, %if.then26, %if.then18, %if.then11, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #16, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %option) #16, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #16, !dbg !6345
  %17 = load i32, ptr %retval, align 4, !dbg !6345
  ret i32 %17, !dbg !6345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6346 dso_local i32 @simple_fill_super(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debugfs_apply_options(ptr noundef %sb) #0 align 16 !dbg !6350 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6354
  call void @_debugfs_apply_options(ptr noundef %0, i1 noundef zeroext false) #17, !dbg !6355
  ret void, !dbg !6356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6357 dso_local ptr @strsep(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6361 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local i32 @match_int(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #3 align 16 !dbg !6369 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6374, metadata !DIExpression()), !dbg !6376
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6377
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6377
  store i32 %0, ptr %val, align 4, !dbg !6377
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6378
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6378
  ret i32 %1, !dbg !6378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #3 align 16 !dbg !6379 {
entry:
  ret ptr @init_user_ns, !dbg !6382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #3 align 16 !dbg !6383 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6387, metadata !DIExpression()), !dbg !6388
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6389
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6389
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6389
  %cmp = icmp ne i32 %call, -1, !dbg !6390
  ret i1 %cmp, !dbg !6391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !6392 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6396, metadata !DIExpression()), !dbg !6398
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6397, metadata !DIExpression()), !dbg !6399
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6400
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6400
  store i32 %0, ptr %val, align 4, !dbg !6400
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6401
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6401
  ret i32 %1, !dbg !6401
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #3 align 16 !dbg !6402 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6406, metadata !DIExpression()), !dbg !6407
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6408
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6408
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6408
  %cmp = icmp ne i32 %call, -1, !dbg !6409
  ret i1 %cmp, !dbg !6410
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6411 dso_local i32 @match_octal(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !6412 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6416, metadata !DIExpression()), !dbg !6417
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6418
  %0 = load i32, ptr %val, align 4, !dbg !6418
  ret i32 %0, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !6420 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6424, metadata !DIExpression()), !dbg !6425
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6426
  %0 = load i32, ptr %val, align 4, !dbg !6426
  ret i32 %0, !dbg !6427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debugfs_free_inode(ptr noundef %inode) #0 align 16 !dbg !6428 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6432
  %i_mode = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 0, !dbg !6432
  %1 = load i16, ptr %i_mode, align 8, !dbg !6432
  %conv = zext i16 %1 to i32, !dbg !6432
  %and = and i32 %conv, 61440, !dbg !6432
  %cmp = icmp eq i32 %and, 40960, !dbg !6432
  br i1 %cmp, label %if.then, label %if.end, !dbg !6434

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6435
  %3 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 43, !dbg !6436
  %4 = load ptr, ptr %3, align 8, !dbg !6436
  call void @kfree(ptr noundef %4) #17, !dbg !6437
  br label %if.end, !dbg !6437

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !6438
  call void @free_inode_nonrcu(ptr noundef %5) #17, !dbg !6439
  ret void, !dbg !6440
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @debugfs_remount(ptr noundef %sb, ptr noundef %flags, ptr noundef %data) #0 align 16 !dbg !6441 {
entry:
  %sb.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %fsi = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6443, metadata !DIExpression()), !dbg !6449
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6444, metadata !DIExpression()), !dbg !6450
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6445, metadata !DIExpression()), !dbg !6451
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6446, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6447, metadata !DIExpression()), !dbg !6455
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6456
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6457
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6457
  store ptr %1, ptr %fsi, align 8, !dbg !6455
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !6458
  %call = call i32 @sync_filesystem(ptr noundef %2) #17, !dbg !6459
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6460
  %4 = load ptr, ptr %fsi, align 8, !dbg !6461
  %mount_opts = getelementptr inbounds %struct.debugfs_fs_info, ptr %4, i32 0, i32 0, !dbg !6462
  %call1 = call i32 @debugfs_parse_options(ptr noundef %3, ptr noundef %mount_opts) #17, !dbg !6463
  store i32 %call1, ptr %err, align 4, !dbg !6464
  %5 = load i32, ptr %err, align 4, !dbg !6465
  %tobool = icmp ne i32 %5, 0, !dbg !6465
  br i1 %tobool, label %if.then, label %if.end, !dbg !6467

if.then:                                          ; preds = %entry
  br label %fail, !dbg !6468

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !6469
  call void @debugfs_apply_options_remount(ptr noundef %6) #17, !dbg !6470
  br label %fail, !dbg !6470

fail:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6448), !dbg !6471
  %7 = load i32, ptr %err, align 4, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6473
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6473
  ret i32 %7, !dbg !6474
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @debugfs_show_options(ptr noundef %m, ptr noundef %root) #0 align 16 !dbg !6475 {
entry:
  %m.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %fsi = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral5 = alloca %struct.kgid_t, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6477, metadata !DIExpression()), !dbg !6481
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6478, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6483
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6479, metadata !DIExpression()), !dbg !6484
  %0 = load ptr, ptr %root.addr, align 8, !dbg !6485
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !6486
  %1 = load ptr, ptr %d_sb, align 8, !dbg !6486
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !6487
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !6487
  store ptr %2, ptr %fsi, align 8, !dbg !6484
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6480, metadata !DIExpression()), !dbg !6489
  %3 = load ptr, ptr %fsi, align 8, !dbg !6490
  %mount_opts = getelementptr inbounds %struct.debugfs_fs_info, ptr %3, i32 0, i32 0, !dbg !6491
  store ptr %mount_opts, ptr %opts, align 8, !dbg !6489
  %4 = load ptr, ptr %opts, align 8, !dbg !6492
  %uid = getelementptr inbounds %struct.debugfs_mount_opts, ptr %4, i32 0, i32 0, !dbg !6494
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6495
  store i32 0, ptr %val, align 4, !dbg !6495
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6496
  %5 = load i32, ptr %coerce.dive, align 4, !dbg !6496
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6496
  %6 = load i32, ptr %coerce.dive1, align 4, !dbg !6496
  %call = call zeroext i1 @uid_eq(i32 %5, i32 %6) #17, !dbg !6496
  br i1 %call, label %if.end, label %if.then, !dbg !6497

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %m.addr, align 8, !dbg !6498
  %8 = load ptr, ptr %opts, align 8, !dbg !6499
  %uid2 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %8, i32 0, i32 0, !dbg !6500
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid2, i32 0, i32 0, !dbg !6501
  %9 = load i32, ptr %coerce.dive3, align 4, !dbg !6501
  %call4 = call i32 @from_kuid_munged(ptr noundef @init_user_ns, i32 %9) #17, !dbg !6501
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef @.str.15, i32 noundef %call4) #17, !dbg !6502
  br label %if.end, !dbg !6502

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %opts, align 8, !dbg !6503
  %gid = getelementptr inbounds %struct.debugfs_mount_opts, ptr %10, i32 0, i32 1, !dbg !6505
  %val6 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral5, i32 0, i32 0, !dbg !6506
  store i32 0, ptr %val6, align 4, !dbg !6506
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6507
  %11 = load i32, ptr %coerce.dive7, align 4, !dbg !6507
  %coerce.dive8 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral5, i32 0, i32 0, !dbg !6507
  %12 = load i32, ptr %coerce.dive8, align 4, !dbg !6507
  %call9 = call zeroext i1 @gid_eq(i32 %11, i32 %12) #17, !dbg !6507
  br i1 %call9, label %if.end14, label %if.then10, !dbg !6508

if.then10:                                        ; preds = %if.end
  %13 = load ptr, ptr %m.addr, align 8, !dbg !6509
  %14 = load ptr, ptr %opts, align 8, !dbg !6510
  %gid11 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %14, i32 0, i32 1, !dbg !6511
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %gid11, i32 0, i32 0, !dbg !6512
  %15 = load i32, ptr %coerce.dive12, align 4, !dbg !6512
  %call13 = call i32 @from_kgid_munged(ptr noundef @init_user_ns, i32 %15) #17, !dbg !6512
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef @.str.16, i32 noundef %call13) #17, !dbg !6513
  br label %if.end14, !dbg !6513

if.end14:                                         ; preds = %if.then10, %if.end
  %16 = load ptr, ptr %opts, align 8, !dbg !6514
  %mode = getelementptr inbounds %struct.debugfs_mount_opts, ptr %16, i32 0, i32 2, !dbg !6516
  %17 = load i16, ptr %mode, align 4, !dbg !6516
  %conv = zext i16 %17 to i32, !dbg !6514
  %cmp = icmp ne i32 %conv, 448, !dbg !6517
  br i1 %cmp, label %if.then16, label %if.end19, !dbg !6518

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %m.addr, align 8, !dbg !6519
  %19 = load ptr, ptr %opts, align 8, !dbg !6520
  %mode17 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %19, i32 0, i32 2, !dbg !6521
  %20 = load i16, ptr %mode17, align 4, !dbg !6521
  %conv18 = zext i16 %20 to i32, !dbg !6520
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef @.str.17, i32 noundef %conv18) #17, !dbg !6522
  br label %if.end19, !dbg !6522

if.end19:                                         ; preds = %if.then16, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !6523
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6523
  ret i32 0, !dbg !6524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6525 dso_local void @free_inode_nonrcu(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6526 dso_local i32 @sync_filesystem(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debugfs_apply_options_remount(ptr noundef %sb) #0 align 16 !dbg !6527 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6529, metadata !DIExpression()), !dbg !6530
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6531
  call void @_debugfs_apply_options(ptr noundef %0, i1 noundef zeroext true) #17, !dbg !6532
  ret void, !dbg !6533
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @_debugfs_apply_options(ptr noundef %sb, i1 noundef zeroext %remount) #0 align 16 !dbg !6534 {
entry:
  %sb.addr = alloca ptr, align 8
  %remount.addr = alloca i8, align 1
  %fsi = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %opts = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !6538, metadata !DIExpression()), !dbg !6543
  %frombool = zext i1 %remount to i8
  store i8 %frombool, ptr %remount.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %remount.addr, metadata !6539, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsi) #16, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %fsi, metadata !6540, metadata !DIExpression()), !dbg !6546
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !6547
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !6548
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !6548
  store ptr %1, ptr %fsi, align 8, !dbg !6546
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6549
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6541, metadata !DIExpression()), !dbg !6550
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !6551
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13, !dbg !6552
  %3 = load ptr, ptr %s_root, align 8, !dbg !6552
  %call = call ptr @d_inode(ptr noundef %3) #17, !dbg !6553
  store ptr %call, ptr %inode, align 8, !dbg !6550
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #16, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6542, metadata !DIExpression()), !dbg !6555
  %4 = load ptr, ptr %fsi, align 8, !dbg !6556
  %mount_opts = getelementptr inbounds %struct.debugfs_fs_info, ptr %4, i32 0, i32 0, !dbg !6557
  store ptr %mount_opts, ptr %opts, align 8, !dbg !6555
  %5 = load i8, ptr %remount.addr, align 1, !dbg !6558, !range !4591, !noundef !595
  %tobool = trunc i8 %5 to i1, !dbg !6558
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6560

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %opts, align 8, !dbg !6561
  %opts1 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %6, i32 0, i32 3, !dbg !6562
  %7 = load i32, ptr %opts1, align 4, !dbg !6562
  %conv = zext i32 %7 to i64, !dbg !6561
  %and = and i64 %conv, 4, !dbg !6563
  %tobool2 = icmp ne i64 %and, 0, !dbg !6563
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6564

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %inode, align 8, !dbg !6565
  %i_mode = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 0, !dbg !6567
  %9 = load i16, ptr %i_mode, align 8, !dbg !6568
  %conv3 = zext i16 %9 to i32, !dbg !6568
  %and4 = and i32 %conv3, -4096, !dbg !6568
  %conv5 = trunc i32 %and4 to i16, !dbg !6568
  store i16 %conv5, ptr %i_mode, align 8, !dbg !6568
  %10 = load ptr, ptr %opts, align 8, !dbg !6569
  %mode = getelementptr inbounds %struct.debugfs_mount_opts, ptr %10, i32 0, i32 2, !dbg !6570
  %11 = load i16, ptr %mode, align 4, !dbg !6570
  %conv6 = zext i16 %11 to i32, !dbg !6569
  %12 = load ptr, ptr %inode, align 8, !dbg !6571
  %i_mode7 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 0, !dbg !6572
  %13 = load i16, ptr %i_mode7, align 8, !dbg !6573
  %conv8 = zext i16 %13 to i32, !dbg !6573
  %or = or i32 %conv8, %conv6, !dbg !6573
  %conv9 = trunc i32 %or to i16, !dbg !6573
  store i16 %conv9, ptr %i_mode7, align 8, !dbg !6573
  br label %if.end, !dbg !6574

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i8, ptr %remount.addr, align 1, !dbg !6575, !range !4591, !noundef !595
  %tobool10 = trunc i8 %14 to i1, !dbg !6575
  br i1 %tobool10, label %lor.lhs.false11, label %if.then16, !dbg !6577

lor.lhs.false11:                                  ; preds = %if.end
  %15 = load ptr, ptr %opts, align 8, !dbg !6578
  %opts12 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %15, i32 0, i32 3, !dbg !6579
  %16 = load i32, ptr %opts12, align 4, !dbg !6579
  %conv13 = zext i32 %16 to i64, !dbg !6578
  %and14 = and i64 %conv13, 1, !dbg !6580
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6580
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6581

if.then16:                                        ; preds = %lor.lhs.false11, %if.end
  %17 = load ptr, ptr %inode, align 8, !dbg !6582
  %i_uid = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 2, !dbg !6583
  %18 = load ptr, ptr %opts, align 8, !dbg !6584
  %uid = getelementptr inbounds %struct.debugfs_mount_opts, ptr %18, i32 0, i32 0, !dbg !6585
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i_uid, ptr align 4 %uid, i64 4, i1 false), !dbg !6585
  br label %if.end17, !dbg !6582

if.end17:                                         ; preds = %if.then16, %lor.lhs.false11
  %19 = load i8, ptr %remount.addr, align 1, !dbg !6586, !range !4591, !noundef !595
  %tobool18 = trunc i8 %19 to i1, !dbg !6586
  br i1 %tobool18, label %lor.lhs.false19, label %if.then24, !dbg !6588

lor.lhs.false19:                                  ; preds = %if.end17
  %20 = load ptr, ptr %opts, align 8, !dbg !6589
  %opts20 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %20, i32 0, i32 3, !dbg !6590
  %21 = load i32, ptr %opts20, align 4, !dbg !6590
  %conv21 = zext i32 %21 to i64, !dbg !6589
  %and22 = and i64 %conv21, 2, !dbg !6591
  %tobool23 = icmp ne i64 %and22, 0, !dbg !6591
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6592

if.then24:                                        ; preds = %lor.lhs.false19, %if.end17
  %22 = load ptr, ptr %inode, align 8, !dbg !6593
  %i_gid = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 4, !dbg !6594
  %23 = load ptr, ptr %opts, align 8, !dbg !6595
  %gid = getelementptr inbounds %struct.debugfs_mount_opts, ptr %23, i32 0, i32 1, !dbg !6596
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_gid, ptr align 4 %gid, i64 4, i1 false), !dbg !6596
  br label %if.end25, !dbg !6593

if.end25:                                         ; preds = %if.then24, %lor.lhs.false19
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #16, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsi) #16, !dbg !6597
  ret void, !dbg !6597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #3 align 16 !dbg !6598 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6602, metadata !DIExpression()), !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6603, metadata !DIExpression()), !dbg !6605
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !6606
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6606
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6606
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !6607
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6607
  %call4 = call i32 @__kuid_val(i32 %1) #17, !dbg !6607
  %cmp = icmp eq i32 %call, %call4, !dbg !6608
  ret i1 %cmp, !dbg !6609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6610 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !6613 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6617, metadata !DIExpression()), !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6618, metadata !DIExpression()), !dbg !6621
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #16, !dbg !6622
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6619, metadata !DIExpression()), !dbg !6623
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6624
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6625
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6625
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #17, !dbg !6625
  store i32 %call, ptr %uid, align 4, !dbg !6623
  %2 = load i32, ptr %uid, align 4, !dbg !6626
  %cmp = icmp eq i32 %2, -1, !dbg !6628
  br i1 %cmp, label %if.then, label %if.end, !dbg !6629

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6630
  store i32 %3, ptr %uid, align 4, !dbg !6631
  br label %if.end, !dbg !6632

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !6633
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #16, !dbg !6634
  ret i32 %4, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #3 align 16 !dbg !6636 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !6640, metadata !DIExpression()), !dbg !6642
  call void @llvm.dbg.declare(metadata ptr %right, metadata !6641, metadata !DIExpression()), !dbg !6643
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !6644
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !6644
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6644
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !6645
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !6645
  %call4 = call i32 @__kgid_val(i32 %1) #17, !dbg !6645
  %cmp = icmp eq i32 %call, %call4, !dbg !6646
  ret i1 %cmp, !dbg !6647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !6648 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6652, metadata !DIExpression()), !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6653, metadata !DIExpression()), !dbg !6656
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #16, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6654, metadata !DIExpression()), !dbg !6658
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6659
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6660
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6660
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #17, !dbg !6660
  store i32 %call, ptr %gid, align 4, !dbg !6658
  %2 = load i32, ptr %gid, align 4, !dbg !6661
  %cmp = icmp eq i32 %2, -1, !dbg !6663
  br i1 %cmp, label %if.then, label %if.end, !dbg !6664

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6665
  store i32 %3, ptr %gid, align 4, !dbg !6666
  br label %if.end, !dbg !6667

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #16, !dbg !6669
  ret i32 %4, !dbg !6670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !6671 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6673, metadata !DIExpression()), !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6674, metadata !DIExpression()), !dbg !6676
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6677
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6677
  %call = call i32 @__kuid_val(i32 %0) #17, !dbg !6677
  ret i32 %call, !dbg !6678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !6679 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6682, metadata !DIExpression()), !dbg !6684
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6685
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6685
  %call = call i32 @__kgid_val(i32 %0) #17, !dbg !6685
  ret i32 %call, !dbg !6686
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debugfs_release_dentry(ptr noundef %dentry) #0 align 16 !dbg !6687 {
entry:
  %dentry.addr = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6689, metadata !DIExpression()), !dbg !6691
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #16, !dbg !6692
  call void @llvm.dbg.declare(metadata ptr %fsd, metadata !6690, metadata !DIExpression()), !dbg !6693
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6694
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !6695
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !6695
  store ptr %1, ptr %fsd, align 8, !dbg !6693
  %2 = load ptr, ptr %fsd, align 8, !dbg !6696
  %3 = ptrtoint ptr %2 to i64, !dbg !6698
  %and = and i64 %3, 1, !dbg !6699
  %tobool = icmp ne i64 %and, 0, !dbg !6699
  br i1 %tobool, label %if.then, label %if.end, !dbg !6700

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fsd, align 8, !dbg !6702
  call void @kfree(ptr noundef %4) #17, !dbg !6703
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6704
  br label %cleanup, !dbg !6704

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #16, !dbg !6704
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6704

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @debugfs_automount(ptr noundef %path) #0 align 16 !dbg !6705 {
entry:
  %path.addr = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6707, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #16, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %fsd, metadata !6708, metadata !DIExpression()), !dbg !6711
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6712
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6713
  %1 = load ptr, ptr %dentry, align 8, !dbg !6713
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11, !dbg !6714
  %2 = load ptr, ptr %d_fsdata, align 8, !dbg !6714
  store ptr %2, ptr %fsd, align 8, !dbg !6711
  %3 = load ptr, ptr %fsd, align 8, !dbg !6715
  %4 = getelementptr inbounds %struct.debugfs_fsdata, ptr %3, i32 0, i32 1, !dbg !6716
  %5 = load ptr, ptr %4, align 8, !dbg !6716
  %6 = load ptr, ptr %path.addr, align 8, !dbg !6717
  %dentry1 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1, !dbg !6718
  %7 = load ptr, ptr %dentry1, align 8, !dbg !6718
  %8 = load ptr, ptr %path.addr, align 8, !dbg !6719
  %dentry2 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 1, !dbg !6720
  %9 = load ptr, ptr %dentry2, align 8, !dbg !6720
  %call = call ptr @d_inode(ptr noundef %9) #17, !dbg !6721
  %i_private = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 47, !dbg !6722
  %10 = load ptr, ptr %i_private, align 8, !dbg !6722
  %call3 = call ptr %5(ptr noundef %7, ptr noundef %10) #17, !dbg !6715
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #16, !dbg !6723
  ret ptr %call3, !dbg !6724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_reg(ptr noundef %dentry) #3 align 16 !dbg !6725 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6727, metadata !DIExpression()), !dbg !6728
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6729
  %call = call i32 @__d_entry_type(ptr noundef %0) #17, !dbg !6730
  %cmp = icmp eq i32 %call, 4194304, !dbg !6731
  ret i1 %cmp, !dbg !6732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__debugfs_file_removed(ptr noundef %dentry) #0 align 16 !dbg !6733 {
entry:
  %dentry.addr = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6735, metadata !DIExpression()), !dbg !6737
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #16, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %fsd, metadata !6736, metadata !DIExpression()), !dbg !6739
  br label %do.body, !dbg !6740

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6741

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !6743

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6743

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6741, !srcloc !6745
  br label %do.cond2, !dbg !6741

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !6741

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !6746

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !6748

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6748

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6746
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !6746
  %1 = load volatile ptr, ptr %d_fsdata, align 8, !dbg !6746
  store ptr %1, ptr %tmp, align 8, !dbg !6748
  %2 = load ptr, ptr %tmp, align 8, !dbg !6746
  store ptr %2, ptr %fsd, align 8, !dbg !6750
  %3 = load ptr, ptr %fsd, align 8, !dbg !6751
  %4 = ptrtoint ptr %3 to i64, !dbg !6753
  %and = and i64 %4, 1, !dbg !6754
  %tobool = icmp ne i64 %and, 0, !dbg !6754
  br i1 %tobool, label %if.then, label %if.end, !dbg !6755

if.then:                                          ; preds = %do.end6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6756

if.end:                                           ; preds = %do.end6
  %5 = load ptr, ptr %fsd, align 8, !dbg !6757
  %6 = getelementptr inbounds %struct.debugfs_fsdata, ptr %5, i32 0, i32 1, !dbg !6759
  %active_users = getelementptr inbounds %struct.anon.24, ptr %6, i32 0, i32 0, !dbg !6759
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %active_users) #17, !dbg !6760
  br i1 %call, label %if.end8, label %if.then7, !dbg !6761

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %fsd, align 8, !dbg !6762
  %8 = getelementptr inbounds %struct.debugfs_fsdata, ptr %7, i32 0, i32 1, !dbg !6763
  %active_users_drained = getelementptr inbounds %struct.anon.24, ptr %8, i32 0, i32 1, !dbg !6763
  call void @wait_for_completion(ptr noundef %active_users_drained) #17, !dbg !6764
  br label %if.end8, !dbg !6764

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6765
  br label %cleanup, !dbg !6765

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #16, !dbg !6765
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6765

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__d_entry_type(ptr noundef %dentry) #3 align 16 !dbg !6766 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6770, metadata !DIExpression()), !dbg !6771
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6772
  %d_flags = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 0, !dbg !6773
  %1 = load i32, ptr %d_flags, align 8, !dbg !6773
  %and = and i32 %1, 7340032, !dbg !6774
  ret i32 %and, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !6776 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6781, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6783
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !6784
  ret i1 %call, !dbg !6785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6786 dso_local void @wait_for_completion(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6789 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6793, metadata !DIExpression()), !dbg !6795
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6794, metadata !DIExpression()), !dbg !6796
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6797
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6798
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !6799
  ret i1 %call, !dbg !6800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !6801 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6805, metadata !DIExpression()), !dbg !6809
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6806, metadata !DIExpression()), !dbg !6810
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6807, metadata !DIExpression()), !dbg !6811
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !6812
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6808, metadata !DIExpression()), !dbg !6813
  %0 = load i32, ptr %i.addr, align 4, !dbg !6814
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6815
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6816
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !6817
  store i32 %call, ptr %old, align 4, !dbg !6813
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6818
  %tobool = icmp ne ptr %2, null, !dbg !6818
  br i1 %tobool, label %if.then, label %if.end, !dbg !6820

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6821
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6822
  store i32 %3, ptr %4, align 4, !dbg !6823
  br label %if.end, !dbg !6824

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6825
  %6 = load i32, ptr %i.addr, align 4, !dbg !6827
  %cmp = icmp eq i32 %5, %6, !dbg !6828
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6829

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6830

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6832

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6834

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6834

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6832

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6836

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6838

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6838

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6836, !srcloc !6840
  br label %do.cond7, !dbg !6836

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6836

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6832

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6832

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6841

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6842
  %cmp12 = icmp slt i32 %7, 0, !dbg !6842
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6842

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6842
  %9 = load i32, ptr %i.addr, align 4, !dbg !6842
  %sub = sub i32 %8, %9, !dbg !6842
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6842
  br label %lor.end, !dbg !6842

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6842
  %lnot14 = xor i1 %lnot, true, !dbg !6842
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6842
  %conv = sext i32 %lnot.ext to i64, !dbg !6842
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6842
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6842
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6844

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6845
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !6846
  br label %if.end17, !dbg !6846

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6847

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !6848
  %12 = load i1, ptr %retval, align 1, !dbg !6848
  ret i1 %12, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6849 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6854, metadata !DIExpression()), !dbg !6856
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6855, metadata !DIExpression()), !dbg !6857
  br label %do.body, !dbg !6858

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6859

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6861
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !6862
  %1 = load i32, ptr %i.addr, align 4, !dbg !6863
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6864
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !6865
  ret i32 %call, !dbg !6866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6867 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6870 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6872, metadata !DIExpression()), !dbg !6874
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6873, metadata !DIExpression()), !dbg !6875
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6876
  %1 = load i64, ptr %size.addr, align 8, !dbg !6877
  %conv = trunc i64 %1 to i32, !dbg !6877
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6878
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6879
  %3 = load i64, ptr %size.addr, align 8, !dbg !6879
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !6879
  ret void, !dbg !6880
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6881 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6883, metadata !DIExpression()), !dbg !6885
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6884, metadata !DIExpression()), !dbg !6886
  %0 = load i32, ptr %i.addr, align 4, !dbg !6887
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6888
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !6889
  ret i32 %call, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6891 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6893, metadata !DIExpression()), !dbg !6895
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6894, metadata !DIExpression()), !dbg !6896
  ret i1 true, !dbg !6897
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !6898 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6901, metadata !DIExpression()), !dbg !6905
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6902, metadata !DIExpression()), !dbg !6906
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6907
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6903, metadata !DIExpression()), !dbg !6907
  %0 = load i32, ptr %i.addr, align 4, !dbg !6907
  %sub = sub i32 0, %0, !dbg !6907
  store i32 %sub, ptr %__ret, align 4, !dbg !6907
  %1 = load i32, ptr %__ret, align 4, !dbg !6907
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6907
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6907
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !6907, !srcloc !6908
  store i32 %3, ptr %__ret, align 4, !dbg !6907
  %4 = load i32, ptr %__ret, align 4, !dbg !6907
  store i32 %4, ptr %tmp, align 4, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6909
  %5 = load i32, ptr %tmp, align 4, !dbg !6907
  ret i32 %5, !dbg !6910
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6911 dso_local i32 @fsnotify_get_cookie() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_link_count(ptr noundef %inode) #3 align 16 !dbg !6914 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6916, metadata !DIExpression()), !dbg !6917
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6918
  call void @fsnotify_inode(ptr noundef %0, i32 noundef 4) #17, !dbg !6919
  ret void, !dbg !6920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_inode(ptr noundef %inode, i32 noundef %mask) #3 align 16 !dbg !6921 {
entry:
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6926, metadata !DIExpression()), !dbg !6928
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6929
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !6931
  %1 = load ptr, ptr %i_sb, align 8, !dbg !6931
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !6932
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !6933
  %cmp = icmp eq i64 %call, 0, !dbg !6934
  br i1 %cmp, label %if.then, label %if.end, !dbg !6935

if.then:                                          ; preds = %entry
  br label %return, !dbg !6936

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !6937
  %i_mode = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 0, !dbg !6937
  %3 = load i16, ptr %i_mode, align 8, !dbg !6937
  %conv = zext i16 %3 to i32, !dbg !6937
  %and = and i32 %conv, 61440, !dbg !6937
  %cmp1 = icmp eq i32 %and, 16384, !dbg !6937
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !6939

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %mask.addr, align 4, !dbg !6940
  %or = or i32 %4, 1073741824, !dbg !6940
  store i32 %or, ptr %mask.addr, align 4, !dbg !6940
  br label %if.end4, !dbg !6941

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !6942
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !6943
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !6944
  %call5 = call i32 @fsnotify(i32 noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #17, !dbg !6945
  br label %return, !dbg !6946

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_can_lookup(ptr noundef %dentry) #3 align 16 !dbg !6947 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6949, metadata !DIExpression()), !dbg !6950
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6951
  %call = call i32 @__d_entry_type(ptr noundef %0) #17, !dbg !6952
  %cmp = icmp eq i32 %call, 2097152, !dbg !6953
  ret i1 %cmp, !dbg !6954
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_is_autodir(ptr noundef %dentry) #3 align 16 !dbg !6955 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6957, metadata !DIExpression()), !dbg !6958
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6959
  %call = call i32 @__d_entry_type(ptr noundef %0) #17, !dbg !6960
  %cmp = icmp eq i32 %call, 3145728, !dbg !6961
  ret i1 %cmp, !dbg !6962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6963 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6966 dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6969 dso_local i32 @register_filesystem(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6972 dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545}
!llvm.ident = !{!4546}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias332", scope: !2, file: !3, line: 310, type: !4535, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/debugfs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/debugfs/debugfs\22 -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22debugfs\22 -D __KBUILD_MODNAME=kmod_debugfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/debugfs/inode.ll fs/debugfs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !253, globals: !4364, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/debugfs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a1056ac6929a3b569fa095e562cb743")
!4 = !{!5, !11, !107, !113, !120, !128, !144, !151, !159, !166, !172, !177, !183, !216, !224, !229, !239, !245}
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
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !114, line: 15, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!117 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!118 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!119 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !121, line: 68, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !129, line: 1325, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!131 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!132 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!133 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!134 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!135 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!136 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!137 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!138 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!139 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!140 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!141 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!142 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!143 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !145, line: 51, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!148 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!149 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!150 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !152, line: 9, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!155 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!156 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!157 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!158 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !160, line: 312, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!163 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!164 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!165 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
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
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !217, line: 286, baseType: !7, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!220 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!221 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!222 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!223 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 10, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!226 = !{!227, !228}
!227 = !DIEnumerator(name: "false", value: 0)
!228 = !DIEnumerator(name: "true", value: 1)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !230, line: 364, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!231 = !{!232, !233, !234, !235, !236, !237, !238}
!232 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!233 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!234 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!235 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!236 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!237 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!238 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 88, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "Opt_uid", value: 0)
!242 = !DIEnumerator(name: "Opt_gid", value: 1)
!243 = !DIEnumerator(name: "Opt_mode", value: 2)
!244 = !DIEnumerator(name: "Opt_err", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !246, line: 119, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!249 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!250 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!251 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!252 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!253 = !{!20, !254, !39, !255, !256, !257, !4358, !1391, !764, !771, !4361}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !259, line: 746, size: 58368, elements: !260)
!259 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!260 = !{!261, !271, !272, !273, !278, !279, !280, !281, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !364, !375, !476, !480, !483, !514, !515, !516, !517, !528, !530, !531, !532, !533, !534, !535, !546, !547, !550, !551, !552, !553, !554, !555, !556, !557, !564, !565, !572, !573, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3523, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3571, !3577, !3578, !3579, !3580, !3581, !3583, !3586, !3593, !3598, !3601, !3604, !3607, !3633, !3772, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3810, !3811, !3812, !3821, !3829, !3830, !3831, !3832, !3833, !3838, !3839, !3840, !3843, !3844, !3847, !3850, !3853, !3861, !3864, !3865, !3951, !3952, !3953, !3954, !3955, !3961, !3962, !3963, !3964, !3967, !3968, !3971, !3974, !3975, !3978, !3979, !3980, !3983, !3984, !3985, !3986, !3987, !3988, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4020, !4021, !4027, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4039, !4111, !4113, !4114, !4115, !4116, !4117, !4118, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4135, !4136, !4137}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !258, file: !259, line: 752, baseType: !262, size: 192)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !263, line: 56, size: 192, elements: !264)
!263 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!264 = !{!265, !266, !267, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !263, line: 57, baseType: !39, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !262, file: !263, line: 58, baseType: !39, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !262, file: !263, line: 59, baseType: !268, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !262, file: !263, line: 61, baseType: !268, size: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !258, file: !259, line: 754, baseType: !7, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !258, file: !259, line: 767, baseType: !20, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !258, file: !259, line: 768, baseType: !274, size: 32, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !246, line: 113, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !246, line: 111, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !275, file: !246, line: 112, baseType: !49, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !259, line: 770, baseType: !7, size: 32, offset: 352)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !258, file: !259, line: 771, baseType: !7, size: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !258, file: !259, line: 774, baseType: !22, size: 32, offset: 416)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !258, file: !259, line: 775, baseType: !282, size: 128, offset: 448)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !283, line: 58, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!284 = !{!285, !291, !296, !297}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !282, file: !283, line: 59, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !287, line: 60, size: 64, elements: !288)
!287 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !287, line: 61, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !283, line: 60, baseType: !292, size: 32, offset: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 60, size: 32, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !292, file: !283, line: 61, baseType: !7, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !292, file: !283, line: 62, baseType: !49, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !282, file: !283, line: 65, baseType: !93, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !282, file: !283, line: 65, baseType: !93, size: 16, offset: 112)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !258, file: !259, line: 776, baseType: !7, size: 32, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !258, file: !259, line: 777, baseType: !39, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !258, file: !259, line: 778, baseType: !257, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !258, file: !259, line: 787, baseType: !22, size: 32, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !258, file: !259, line: 788, baseType: !22, size: 32, offset: 800)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !258, file: !259, line: 790, baseType: !22, size: 32, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !258, file: !259, line: 792, baseType: !22, size: 32, offset: 864)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !258, file: !259, line: 793, baseType: !22, size: 32, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !258, file: !259, line: 794, baseType: !22, size: 32, offset: 928)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !258, file: !259, line: 795, baseType: !7, size: 32, offset: 960)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !258, file: !259, line: 797, baseType: !309, size: 2048, offset: 1024)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !259, line: 551, size: 2048, elements: !310)
!310 = !{!311, !316, !324, !328, !329, !330, !331, !332, !333, !334, !335, !338, !339, !340, !341, !343, !346, !347, !348}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !309, file: !259, line: 553, baseType: !312, size: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !259, line: 411, size: 128, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !312, file: !259, line: 412, baseType: !39, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !312, file: !259, line: 413, baseType: !268, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !309, file: !259, line: 554, baseType: !317, size: 192, align: 64, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !318, line: 5, size: 192, align: 64, elements: !319)
!318 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!319 = !{!320, !321, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !317, file: !318, line: 6, baseType: !39, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !317, file: !318, line: 7, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !317, file: !318, line: 8, baseType: !322, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !309, file: !259, line: 555, baseType: !325, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !327)
!327 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !309, file: !259, line: 556, baseType: !325, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !309, file: !259, line: 558, baseType: !97, size: 128, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !309, file: !259, line: 559, baseType: !7, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !309, file: !259, line: 561, baseType: !325, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !309, file: !259, line: 562, baseType: !325, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !309, file: !259, line: 563, baseType: !325, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !309, file: !259, line: 564, baseType: !325, size: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !309, file: !259, line: 565, baseType: !336, size: 64, offset: 896)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !309, file: !259, line: 566, baseType: !325, size: 64, offset: 960)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !309, file: !259, line: 568, baseType: !325, size: 64, offset: 1024)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !309, file: !259, line: 571, baseType: !22, size: 32, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !309, file: !259, line: 572, baseType: !342, size: 64, offset: 1152)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !309, file: !259, line: 574, baseType: !344, size: 64, offset: 1216)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !259, line: 49, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !309, file: !259, line: 576, baseType: !344, size: 64, offset: 1280)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !309, file: !259, line: 578, baseType: !39, size: 64, offset: 1344)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !309, file: !259, line: 588, baseType: !349, size: 512, align: 512, offset: 1536)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !259, line: 497, size: 512, align: 512, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !349, file: !259, line: 498, baseType: !325, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !349, file: !259, line: 499, baseType: !325, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !349, file: !259, line: 500, baseType: !325, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !349, file: !259, line: 501, baseType: !268, size: 32, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !349, file: !259, line: 502, baseType: !268, size: 32, offset: 224)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !349, file: !259, line: 503, baseType: !39, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !349, file: !259, line: 504, baseType: !39, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !349, file: !259, line: 505, baseType: !39, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !349, file: !259, line: 506, baseType: !360, size: 64, align: 64, offset: 448)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !259, line: 445, size: 64, align: 64, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !360, file: !259, line: 446, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !360, file: !259, line: 447, baseType: !7, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !258, file: !259, line: 798, baseType: !365, size: 384, offset: 3072)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !259, line: 592, size: 384, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !365, file: !259, line: 593, baseType: !97, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !365, file: !259, line: 594, baseType: !39, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !365, file: !259, line: 595, baseType: !39, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !365, file: !259, line: 596, baseType: !7, size: 32, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !365, file: !259, line: 597, baseType: !26, size: 16, offset: 288)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !365, file: !259, line: 598, baseType: !26, size: 16, offset: 304)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !365, file: !259, line: 600, baseType: !374, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !258, file: !259, line: 799, baseType: !376, size: 1792, offset: 3456)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !259, line: 610, size: 1792, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !473, !474}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !376, file: !259, line: 611, baseType: !317, size: 192, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !376, file: !259, line: 618, baseType: !325, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !376, file: !259, line: 619, baseType: !325, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !376, file: !259, line: 620, baseType: !325, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !376, file: !259, line: 621, baseType: !325, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !376, file: !259, line: 622, baseType: !325, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !376, file: !259, line: 629, baseType: !336, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !376, file: !259, line: 630, baseType: !325, size: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !259, line: 631, baseType: !7, size: 32, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !376, file: !259, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !376, file: !259, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !376, file: !259, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !376, file: !259, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !376, file: !259, line: 662, baseType: !392, size: 512, offset: 704)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !393)
!393 = !{!394, !402, !403, !408, !469, !470, !471, !472}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !392, file: !6, line: 119, baseType: !395, size: 256)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !396, line: 9, size: 256, elements: !397)
!396 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !395, file: !396, line: 10, baseType: !317, size: 192, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !395, file: !396, line: 11, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !401, line: 29, baseType: !336)
!401 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !392, file: !6, line: 120, baseType: !400, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !392, file: !6, line: 121, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!5, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !392, file: !6, line: 122, baseType: !409, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !411)
!411 = !{!412, !438, !439, !442, !452, !453, !464, !468}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !410, file: !6, line: 160, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !415)
!415 = !{!416, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !6, line: 216, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !414, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !414, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !414, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !414, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !414, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !414, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !414, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !414, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !414, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !414, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !414, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !414, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !414, file: !6, line: 235, baseType: !400, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !414, file: !6, line: 236, baseType: !407, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !414, file: !6, line: 237, baseType: !400, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !414, file: !6, line: 238, baseType: !407, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !414, file: !6, line: 239, baseType: !435, size: 4096, align: 512, offset: 512)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 4096, align: 512, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 8)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !410, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !410, file: !6, line: 162, baseType: !440, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !410, file: !6, line: 163, baseType: !443, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !444, line: 274, baseType: !445)
!444 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !444, line: 274, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !445, file: !444, line: 274, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !444, line: 69, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !444, line: 64, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !449, file: !444, line: 65, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !410, file: !6, line: 164, baseType: !407, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !410, file: !6, line: 165, baseType: !454, size: 128, offset: 256)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !396, line: 14, size: 128, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !454, file: !396, line: 15, baseType: !457, size: 128)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !318, line: 26, size: 128, elements: !458)
!458 = !{!459, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !457, file: !318, line: 27, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !318, line: 12, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !460, file: !318, line: 13, baseType: !322, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !457, file: !318, line: 28, baseType: !322, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !410, file: !6, line: 166, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!400}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !410, file: !6, line: 167, baseType: !400, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !392, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !392, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !392, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !392, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !376, file: !259, line: 671, baseType: !392, size: 512, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !376, file: !259, line: 679, baseType: !475, size: 64, offset: 1728)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !258, file: !259, line: 800, baseType: !477, size: 64, offset: 5248)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !259, line: 800, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !258, file: !259, line: 809, baseType: !481, size: 64, offset: 5312)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !259, line: 70, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !258, file: !259, line: 825, baseType: !484, size: 2048, align: 512, offset: 5632)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !259, line: 509, size: 2048, align: 512, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !484, file: !259, line: 511, baseType: !325, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !484, file: !259, line: 512, baseType: !325, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !484, file: !259, line: 513, baseType: !325, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !484, file: !259, line: 514, baseType: !325, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !484, file: !259, line: 515, baseType: !325, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !484, file: !259, line: 516, baseType: !325, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !484, file: !259, line: 518, baseType: !325, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !484, file: !259, line: 519, baseType: !325, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !484, file: !259, line: 520, baseType: !336, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !484, file: !259, line: 522, baseType: !325, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !484, file: !259, line: 523, baseType: !325, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !484, file: !259, line: 524, baseType: !336, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !484, file: !259, line: 526, baseType: !336, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !484, file: !259, line: 527, baseType: !325, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !484, file: !259, line: 529, baseType: !325, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !484, file: !259, line: 530, baseType: !325, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !484, file: !259, line: 531, baseType: !325, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !484, file: !259, line: 532, baseType: !325, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !484, file: !259, line: 533, baseType: !325, size: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !484, file: !259, line: 535, baseType: !325, size: 64, offset: 1216)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !484, file: !259, line: 536, baseType: !325, size: 64, offset: 1280)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !484, file: !259, line: 537, baseType: !325, size: 64, offset: 1344)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !484, file: !259, line: 538, baseType: !325, size: 64, offset: 1408)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !484, file: !259, line: 539, baseType: !325, size: 64, offset: 1472)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !484, file: !259, line: 540, baseType: !325, size: 64, offset: 1536)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !484, file: !259, line: 541, baseType: !325, size: 64, offset: 1600)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !484, file: !259, line: 542, baseType: !325, size: 64, offset: 1664)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !484, file: !259, line: 543, baseType: !325, size: 64, offset: 1728)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !258, file: !259, line: 833, baseType: !7, size: 32, offset: 7680)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !258, file: !259, line: 836, baseType: !7, size: 32, offset: 7712)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !258, file: !259, line: 837, baseType: !22, size: 32, offset: 7744)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !258, file: !259, line: 838, baseType: !518, size: 64, offset: 7808)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !521, line: 19, baseType: !522)
!521 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !521, line: 19, size: 64, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !522, file: !521, line: 19, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 1)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !258, file: !259, line: 839, baseType: !529, size: 64, offset: 7872)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !258, file: !259, line: 840, baseType: !520, size: 64, offset: 7936)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !258, file: !259, line: 841, baseType: !20, size: 64, offset: 8000)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !258, file: !259, line: 843, baseType: !26, size: 16, offset: 8064)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !258, file: !259, line: 845, baseType: !26, size: 16, offset: 8080)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !258, file: !259, line: 848, baseType: !22, size: 32, offset: 8096)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !258, file: !259, line: 849, baseType: !536, size: 32, offset: 8128)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !259, line: 718, size: 32, elements: !537)
!537 = !{!538, !545}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !536, file: !259, line: 724, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !536, file: !259, line: 719, size: 32, elements: !540)
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !539, file: !259, line: 720, baseType: !83, size: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !539, file: !259, line: 721, baseType: !83, size: 8, offset: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !539, file: !259, line: 722, baseType: !83, size: 8, offset: 16)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !539, file: !259, line: 723, baseType: !83, size: 8, offset: 24)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !536, file: !259, line: 725, baseType: !268, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !258, file: !259, line: 850, baseType: !97, size: 128, offset: 8192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !258, file: !259, line: 851, baseType: !548, size: 64, offset: 8320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !259, line: 60, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !258, file: !259, line: 855, baseType: !39, size: 64, offset: 8384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !258, file: !259, line: 856, baseType: !83, size: 8, offset: 8448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !258, file: !259, line: 857, baseType: !83, size: 8, offset: 8456)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !258, file: !259, line: 858, baseType: !22, size: 32, offset: 8480)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !258, file: !259, line: 859, baseType: !97, size: 128, offset: 8512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !258, file: !259, line: 860, baseType: !22, size: 32, offset: 8640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !258, file: !259, line: 861, baseType: !97, size: 128, offset: 8704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !258, file: !259, line: 873, baseType: !558, size: 256, offset: 8832)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !259, line: 376, size: 256, elements: !559)
!559 = !{!560, !561, !562, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !558, file: !259, line: 381, baseType: !39, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !558, file: !259, line: 384, baseType: !327, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !558, file: !259, line: 389, baseType: !327, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !558, file: !259, line: 392, baseType: !327, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !258, file: !259, line: 875, baseType: !97, size: 128, offset: 9088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !258, file: !259, line: 877, baseType: !566, size: 320, offset: 9216)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !567, line: 86, size: 320, elements: !568)
!567 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !566, file: !567, line: 87, baseType: !22, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !566, file: !567, line: 88, baseType: !97, size: 128, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !566, file: !567, line: 89, baseType: !97, size: 128, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !258, file: !259, line: 878, baseType: !317, size: 192, align: 64, offset: 9536)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !258, file: !259, line: 881, baseType: !574, size: 64, offset: 9728)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !129, line: 733, size: 10240, elements: !576)
!576 = !{!577, !3442}
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !129, line: 734, baseType: !578, size: 10240)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !575, file: !129, line: 734, size: 10240, elements: !579)
!579 = !{!580, !584, !598, !3321, !3322, !3323, !3324, !3325, !3326, !3333, !3334, !3335, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3374, !3376, !3379, !3422, !3423, !3424, !3427, !3428, !3429, !3432, !3433, !3434, !3440, !3441}
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !578, file: !129, line: 739, baseType: !581, size: 512, align: 512)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !578, file: !129, line: 739, size: 512, align: 512, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !581, file: !129, line: 747, baseType: !49, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !578, file: !129, line: 750, baseType: !585, size: 128, offset: 512)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !586, line: 218, size: 128, elements: !587)
!586 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!587 = !{!588, !596, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !586, line: 219, baseType: !589, size: 32)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !586, line: 219, size: 32, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !589, file: !586, line: 220, baseType: !59, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !589, file: !586, line: 221, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !586, line: 197, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 197, elements: !595)
!595 = !{}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !585, file: !586, line: 223, baseType: !7, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !585, file: !586, line: 224, baseType: !20, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !578, file: !129, line: 752, baseType: !599, size: 64, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!39, !602, !39, !39, !39, !39}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !604)
!604 = !{!605, !619, !620, !622, !629, !641, !642, !643, !1024, !1102, !1111, !3311, !3312, !3313, !3314, !3315, !3316, !3318, !3319, !3320}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !173, line: 995, baseType: !606, size: 128)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !173, line: 995, size: 128, elements: !607)
!607 = !{!608, !609, !618}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !606, file: !173, line: 996, baseType: !286, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !606, file: !173, line: 997, baseType: !610, size: 128, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !611)
!611 = !{!612, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !25, line: 233, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !610, file: !25, line: 234, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !613}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !606, file: !173, line: 998, baseType: !7, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !603, file: !173, line: 1005, baseType: !59, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !603, file: !173, line: 1006, baseType: !621, size: 32, offset: 160)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !603, file: !173, line: 1007, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !624, line: 13, baseType: !625)
!624 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !626, file: !25, line: 180, baseType: !336, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !603, file: !173, line: 1008, baseType: !630, size: 256, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !631, line: 66, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!632 = !{!633, !634, !635, !640}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 67, baseType: !623, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !630, file: !631, line: 68, baseType: !417, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !630, file: !631, line: 70, baseType: !636, size: 32, offset: 96)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !637, line: 15, size: 32, elements: !638)
!637 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !636, file: !637, line: 20, baseType: !49, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !630, file: !631, line: 72, baseType: !97, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !603, file: !173, line: 1009, baseType: !41, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !603, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !603, file: !173, line: 1011, baseType: !644, size: 256, offset: 640)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !645)
!645 = !{!646, !669, !1020, !1021, !1022, !1023}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !173, line: 949, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !648, line: 34, baseType: !649)
!648 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 25, size: 64, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !649, file: !648, line: 26, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !653, line: 27, baseType: !654)
!653 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !653, line: 13, size: 64, elements: !655)
!655 = !{!656, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !653, line: 14, baseType: !657, size: 32)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !653, line: 14, size: 32, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !657, file: !653, line: 15, baseType: !49, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !653, line: 16, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !653, line: 16, size: 32, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !661, file: !653, line: 18, baseType: !83, size: 8)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !661, file: !653, line: 19, baseType: !665, size: 24, offset: 8)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 3)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !654, file: !653, line: 26, baseType: !71, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !644, file: !173, line: 950, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !152, line: 59, size: 768, elements: !672)
!672 = !{!673, !674, !675, !676, !689, !690, !691, !692}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !671, file: !152, line: 61, baseType: !274, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !671, file: !152, line: 62, baseType: !7, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !671, file: !152, line: 63, baseType: !59, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !671, file: !152, line: 65, baseType: !677, size: 256, offset: 128)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 256, elements: !687)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !678, file: !25, line: 195, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !25, line: 199, baseType: !681, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !682, file: !25, line: 199, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!687 = !{!688}
!688 = !DISubrange(count: 4)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !671, file: !152, line: 66, baseType: !678, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !671, file: !152, line: 68, baseType: !54, size: 192, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !671, file: !152, line: 69, baseType: !610, size: 128, align: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !671, file: !152, line: 70, baseType: !693, offset: 768)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, elements: !1018)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !152, line: 54, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !694, file: !152, line: 55, baseType: !22, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !152, line: 56, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !700, line: 26, size: 1152, elements: !701)
!700 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!701 = !{!702, !715, !716, !717, !718, !722, !723, !724, !727, !1014, !1015, !1016, !1017}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !699, file: !700, line: 27, baseType: !703, size: 192)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !704, line: 19, size: 192, elements: !705)
!704 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!705 = !{!706, !713, !714}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !703, file: !704, line: 20, baseType: !707, size: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !708, line: 296, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !707, file: !708, line: 297, baseType: !59, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !707, file: !708, line: 299, baseType: !254, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !707, file: !708, line: 300, baseType: !20, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !703, file: !704, line: 21, baseType: !7, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !703, file: !704, line: 22, baseType: !7, size: 32, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !699, file: !700, line: 28, baseType: !610, size: 128, align: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !699, file: !700, line: 29, baseType: !7, size: 32, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !699, file: !700, line: 30, baseType: !257, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !699, file: !700, line: 31, baseType: !719, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !721, line: 325, flags: DIFlagFwdDecl)
!721 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!722 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !699, file: !700, line: 32, baseType: !7, size: 32, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !699, file: !700, line: 33, baseType: !698, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !699, file: !700, line: 35, baseType: !725, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !700, line: 17, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !699, file: !700, line: 37, baseType: !728, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !730, line: 68, size: 4800, elements: !731)
!730 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!731 = !{!732, !754, !755, !756, !757, !758, !766, !773, !784, !785, !788, !789, !911, !912, !924, !994, !995, !1009, !1012}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !729, file: !730, line: 69, baseType: !733, size: 576)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !730, line: 23, size: 576, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !733, file: !730, line: 24, baseType: !268, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !730, line: 25, baseType: !737, size: 512, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !730, line: 25, size: 512, elements: !738)
!738 = !{!739, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !737, file: !730, line: 26, baseType: !740, size: 480)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 480, elements: !746)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !730, line: 17, size: 96, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !741, file: !730, line: 18, baseType: !268, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !741, file: !730, line: 19, baseType: !268, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !730, line: 20, baseType: !268, size: 32, offset: 64)
!746 = !{!747}
!747 = !DISubrange(count: 5)
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !730, line: 27, baseType: !749, size: 128)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !730, line: 27, size: 128, elements: !750)
!750 = !{!751, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !749, file: !730, line: 28, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !749, file: !730, line: 29, baseType: !752, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !729, file: !730, line: 70, baseType: !733, size: 576, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !729, file: !730, line: 71, baseType: !733, size: 576, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !729, file: !730, line: 72, baseType: !728, size: 64, offset: 1728)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !729, file: !730, line: 73, baseType: !22, size: 32, offset: 1792)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !729, file: !730, line: 74, baseType: !759, size: 32, offset: 1824)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !760, line: 23, baseType: !761)
!760 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 21, size: 32, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !761, file: !760, line: 22, baseType: !764, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !729, file: !730, line: 75, baseType: !767, size: 32, offset: 1856)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !760, line: 28, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 26, size: 32, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !768, file: !760, line: 27, baseType: !771, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !729, file: !730, line: 76, baseType: !774, size: 192, offset: 1920)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !775, line: 9, size: 192, elements: !776)
!775 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!776 = !{!777, !778, !782, !783}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !774, file: !775, line: 10, baseType: !623, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !774, file: !775, line: 11, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !775, line: 7, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !774, file: !775, line: 12, baseType: !7, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !774, file: !775, line: 13, baseType: !274, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !730, line: 77, baseType: !39, size: 64, offset: 2112)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !729, file: !730, line: 80, baseType: !786, size: 8, offset: 2176)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !787)
!787 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !729, file: !730, line: 88, baseType: !97, size: 128, offset: 2240)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !729, file: !730, line: 89, baseType: !790, size: 64, offset: 2368)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !792, line: 195, size: 1728, elements: !793)
!792 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!793 = !{!794, !795, !800, !805, !814, !817, !818, !825, !826, !827, !828, !831, !832, !833, !835, !836, !875, !896}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !791, file: !792, line: 196, baseType: !274, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !791, file: !792, line: 197, baseType: !796, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !792, line: 28, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 198, baseType: !801, size: 192, offset: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 198, size: 192, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !801, file: !792, line: 199, baseType: !97, size: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !801, file: !792, line: 200, baseType: !317, size: 192, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !791, file: !792, line: 205, baseType: !806, size: 320, offset: 256)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !807, line: 48, size: 320, elements: !808)
!807 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!808 = !{!809, !810, !811, !812, !813}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !806, file: !807, line: 49, baseType: !623, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !806, file: !807, line: 55, baseType: !623, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !806, file: !807, line: 57, baseType: !636, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !806, file: !807, line: 59, baseType: !417, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !806, file: !807, line: 60, baseType: !97, size: 128, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !791, file: !792, line: 206, baseType: !815, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !792, line: 206, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !791, file: !792, line: 207, baseType: !20, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 208, baseType: !819, size: 64, offset: 704)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 208, size: 64, elements: !820)
!820 = !{!821, !824}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !819, file: !792, line: 209, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !823, line: 8, baseType: !337)
!823 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!824 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !819, file: !792, line: 210, baseType: !822, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !791, file: !792, line: 212, baseType: !822, size: 64, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !791, file: !792, line: 213, baseType: !759, size: 32, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !791, file: !792, line: 214, baseType: !767, size: 32, offset: 864)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !791, file: !792, line: 215, baseType: !829, size: 32, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !792, line: 31, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !268)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !791, file: !792, line: 216, baseType: !26, size: 16, offset: 928)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !791, file: !792, line: 217, baseType: !26, size: 16, offset: 944)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !791, file: !792, line: 221, baseType: !834, size: 16, offset: 960)
!834 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !792, line: 228, baseType: !39, size: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 245, baseType: !837, size: 320, offset: 1088)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 245, size: 320, elements: !838)
!838 = !{!839, !866}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !837, file: !792, line: 246, baseType: !840, size: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !792, line: 114, size: 320, elements: !841)
!841 = !{!842, !843, !855, !858, !865}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !840, file: !792, line: 116, baseType: !39, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !792, line: 117, baseType: !844, size: 64, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !792, line: 117, size: 64, elements: !845)
!845 = !{!846, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !792, line: 118, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !792, line: 118, size: 64, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !847, file: !792, line: 120, baseType: !93, size: 16)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !847, file: !792, line: 121, baseType: !851, size: 48, offset: 16)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 6)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !844, file: !792, line: 127, baseType: !39, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !840, file: !792, line: 129, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !792, line: 102, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !840, file: !792, line: 130, baseType: !859, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !792, line: 108, size: 192, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !860, file: !792, line: 109, baseType: !610, size: 128, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !860, file: !792, line: 110, baseType: !274, size: 32, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !860, file: !792, line: 111, baseType: !786, size: 8, offset: 160)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !840, file: !792, line: 131, baseType: !16, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !792, line: 247, baseType: !867, size: 320)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !792, line: 247, size: 320, elements: !868)
!868 = !{!869, !870, !871, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !867, file: !792, line: 248, baseType: !39, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !867, file: !792, line: 249, baseType: !39, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !792, line: 250, baseType: !856, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !867, file: !792, line: 251, baseType: !859, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !867, file: !792, line: 252, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 260, baseType: !876, size: 256, offset: 1408)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 260, size: 256, elements: !877)
!877 = !{!878, !884}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !876, file: !792, line: 261, baseType: !879, size: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !792, line: 134, size: 256, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !879, file: !792, line: 135, baseType: !20, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !879, file: !792, line: 136, baseType: !883, size: 256)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !687)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !792, line: 262, baseType: !885, size: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !792, line: 262, size: 256, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !885, file: !792, line: 264, baseType: !97, size: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !885, file: !792, line: 265, baseType: !889, size: 128, offset: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !890, line: 22, size: 128, elements: !891)
!890 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!891 = !{!892, !895}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !889, file: !890, line: 23, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !890, line: 23, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !889, file: !890, line: 24, baseType: !39, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !791, file: !792, line: 280, baseType: !897, size: 64, offset: 1664)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !792, line: 176, size: 192, elements: !899)
!899 = !{!900, !909, !910}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !898, file: !792, line: 177, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !792, line: 171, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!22, !790, !905, !907, !790}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !898, file: !792, line: 178, baseType: !790, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !898, file: !792, line: 179, baseType: !856, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !729, file: !730, line: 90, baseType: !806, size: 320, offset: 2432)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !729, file: !730, line: 97, baseType: !913, size: 256, offset: 2752)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !914, line: 98, size: 256, elements: !915)
!914 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !913, file: !914, line: 99, baseType: !623, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !913, file: !914, line: 100, baseType: !97, size: 128, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !913, file: !914, line: 101, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !914, line: 21, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !729, file: !730, line: 99, baseType: !925, size: 768, offset: 3008)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !926)
!926 = !{!927, !932}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !925, file: !12, line: 200, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!22, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !925, file: !12, line: 201, baseType: !933, size: 704, offset: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !934)
!934 = !{!935, !993}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !933, file: !12, line: 195, baseType: !936, size: 640)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !937)
!937 = !{!938, !950, !962, !963, !983, !984, !986, !992}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !12, line: 174, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !12, line: 174, size: 192, elements: !940)
!940 = !{!941, !949}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !12, line: 175, baseType: !942, size: 192)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !12, line: 175, size: 192, elements: !943)
!943 = !{!944, !945, !946, !947, !948}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !942, file: !12, line: 176, baseType: !33, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !942, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !942, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !942, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !942, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !939, file: !12, line: 182, baseType: !610, size: 128, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !936, file: !12, line: 184, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !953, line: 26, size: 256, elements: !954)
!953 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !952, file: !953, line: 27, baseType: !7, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !952, file: !953, line: 28, baseType: !957, size: 192, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !958, line: 43, size: 192, elements: !959)
!958 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !958, line: 44, baseType: !417, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !957, file: !958, line: 45, baseType: !97, size: 128, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !936, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !936, file: !12, line: 186, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !966)
!966 = !{!967, !968, !972, !979}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !965, file: !12, line: 205, baseType: !925, size: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !965, file: !12, line: 206, baseType: !969, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!931, !964}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !965, file: !12, line: 207, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !965, file: !12, line: 209, baseType: !980, size: 64, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!22, !976, !33}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !936, file: !12, line: 187, baseType: !931, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !936, file: !12, line: 188, baseType: !985, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !936, file: !12, line: 189, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !988, file: !12, line: 158, baseType: !317, size: 192, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !988, file: !12, line: 159, baseType: !976, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !936, file: !12, line: 190, baseType: !678, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !933, file: !12, line: 196, baseType: !460, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !729, file: !730, line: 100, baseType: !976, size: 64, offset: 3776)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !729, file: !730, line: 102, baseType: !996, size: 64, offset: 3840)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !730, line: 107, size: 1152, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !997, file: !730, line: 108, baseType: !682, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !997, file: !730, line: 109, baseType: !728, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !997, file: !730, line: 110, baseType: !759, size: 32, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !997, file: !730, line: 111, baseType: !49, size: 32, offset: 224)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !997, file: !730, line: 112, baseType: !1004, size: 640, offset: 256)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 640, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 10)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !997, file: !730, line: 113, baseType: !1008, size: 256, offset: 896)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 256, elements: !687)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !729, file: !730, line: 103, baseType: !1010, size: 640, offset: 3904)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 640, elements: !1005)
!1011 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !729, file: !730, line: 104, baseType: !1013, size: 256, offset: 4544)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !687)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !699, file: !700, line: 38, baseType: !996, size: 64, offset: 768)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !699, file: !700, line: 39, baseType: !22, size: 32, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !699, file: !700, line: 40, baseType: !774, size: 192, offset: 896)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !699, file: !700, line: 42, baseType: !22, size: 32, offset: 1088)
!1018 = !{!1019}
!1019 = !DISubrange(count: -1)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !644, file: !173, line: 951, baseType: !151, size: 32, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !644, file: !173, line: 952, baseType: !759, size: 32, offset: 160)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !644, file: !173, line: 952, baseType: !759, size: 32, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !644, file: !173, line: 953, baseType: !22, size: 32, offset: 224)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !603, file: !173, line: 1012, baseType: !1025, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1028, line: 110, size: 1472, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1087, !1088, !1089, !1097}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1027, file: !1028, line: 111, baseType: !623, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1027, file: !1028, line: 112, baseType: !759, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1027, file: !1028, line: 113, baseType: !767, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1027, file: !1028, line: 114, baseType: !759, size: 32, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1027, file: !1028, line: 115, baseType: !767, size: 32, offset: 160)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1027, file: !1028, line: 116, baseType: !759, size: 32, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1027, file: !1028, line: 117, baseType: !767, size: 32, offset: 224)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1027, file: !1028, line: 118, baseType: !759, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1027, file: !1028, line: 119, baseType: !767, size: 32, offset: 288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1027, file: !1028, line: 120, baseType: !7, size: 32, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1027, file: !1028, line: 121, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1042, line: 24, baseType: !1043)
!1042 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1042, line: 24, size: 64, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1043, file: !1042, line: 24, baseType: !325, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1027, file: !1028, line: 122, baseType: !1041, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1027, file: !1028, line: 123, baseType: !1041, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1027, file: !1028, line: 124, baseType: !1041, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1027, file: !1028, line: 125, baseType: !1041, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1027, file: !1028, line: 127, baseType: !87, size: 8, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1027, file: !1028, line: 129, baseType: !790, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1027, file: !1028, line: 130, baseType: !790, size: 64, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1027, file: !1028, line: 131, baseType: !790, size: 64, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1027, file: !1028, line: 132, baseType: !790, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1027, file: !1028, line: 135, baseType: !20, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1027, file: !1028, line: 137, baseType: !1057, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1059, line: 14, size: 1088, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1060 = !{!1061, !1062, !1071, !1072, !1073, !1074, !1075, !1076}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1058, file: !1059, line: 15, baseType: !274, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1058, file: !1059, line: 17, baseType: !1063, size: 320, offset: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1064, line: 22, size: 320, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !1064, line: 23, baseType: !417, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !1064, line: 24, baseType: !336, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1063, file: !1064, line: 26, baseType: !97, size: 128, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1063, file: !1064, line: 28, baseType: !1070, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1058, file: !1059, line: 19, baseType: !39, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1058, file: !1059, line: 20, baseType: !623, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1058, file: !1059, line: 23, baseType: !682, size: 128, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1058, file: !1059, line: 24, baseType: !759, size: 32, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1058, file: !1059, line: 29, baseType: !623, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1058, file: !1059, line: 36, baseType: !1077, size: 320, offset: 768)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1078, line: 15, size: 320, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1078, line: 16, baseType: !417, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1077, file: !1078, line: 18, baseType: !22, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1077, file: !1078, line: 19, baseType: !22, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1077, file: !1078, line: 20, baseType: !22, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1077, file: !1078, line: 21, baseType: !22, size: 32, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1077, file: !1078, line: 22, baseType: !39, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 23, baseType: !39, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1027, file: !1028, line: 138, baseType: !728, size: 64, offset: 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1027, file: !1028, line: 139, baseType: !996, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1027, file: !1028, line: 140, baseType: !1090, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1028, line: 25, size: 64, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1091, file: !1028, line: 26, baseType: !49, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1091, file: !1028, line: 27, baseType: !22, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1091, file: !1028, line: 28, baseType: !1096, offset: 64)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, elements: !1018)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !1028, line: 142, baseType: !1098, size: 128, offset: 1344)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1028, line: 142, size: 128, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1098, file: !1028, line: 143, baseType: !22, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1098, file: !1028, line: 144, baseType: !610, size: 128, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !603, file: !173, line: 1013, baseType: !1103, size: 256, offset: 960)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1103, file: !173, line: 971, baseType: !39, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1103, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1103, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1103, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1103, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1103, file: !173, line: 976, baseType: !41, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !603, file: !173, line: 1014, baseType: !1112, size: 128, offset: 1216)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1113, line: 8, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1114 = !{!1115, !3310}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1112, file: !1113, line: 9, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1118, line: 70, size: 256, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1119 = !{!1120, !3307, !3308, !3309}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1117, file: !1118, line: 71, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1123, line: 82, size: 1536, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1124 = !{!1125, !1126, !1131, !1139, !1140, !1155, !3274, !3276, !3289, !3290, !3291, !3292, !3293, !3299, !3300, !3301}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1122, file: !1123, line: 84, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1122, file: !1123, line: 85, baseType: !1127, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !444, line: 275, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !444, line: 275, size: 32, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1128, file: !444, line: 275, baseType: !448, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1122, file: !1123, line: 86, baseType: !1132, size: 128, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1133, line: 38, size: 128, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1134 = !{!1135, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !1133, line: 39, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1132, file: !1133, line: 39, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1122, file: !1123, line: 87, baseType: !1121, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1122, file: !1123, line: 88, baseType: !1141, size: 128, offset: 256)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1123, line: 49, size: 128, elements: !1142)
!1142 = !{!1143, !1152}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !1123, line: 50, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !1123, line: 50, size: 64, elements: !1145)
!1145 = !{!1146, !1151}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !1123, line: 51, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1144, file: !1123, line: 51, size: 64, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1147, file: !1123, line: 52, baseType: !268, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1147, file: !1123, line: 52, baseType: !268, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1144, file: !1123, line: 54, baseType: !325, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1141, file: !1123, line: 56, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1122, file: !1123, line: 89, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1164, !1165, !1168, !1169, !1356, !3088, !3089, !3090, !3091, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3256, !3259, !3260, !3261, !3270, !3271, !3272, !3273}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1157, file: !173, line: 642, baseType: !24, size: 16)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1157, file: !173, line: 643, baseType: !26, size: 16, offset: 16)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1157, file: !173, line: 644, baseType: !759, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1157, file: !173, line: 645, baseType: !97, size: 128, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1157, file: !173, line: 646, baseType: !767, size: 32, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1157, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1157, file: !173, line: 650, baseType: !1166, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1157, file: !173, line: 651, baseType: !1166, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1157, file: !173, line: 654, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !1173)
!1173 = !{!1174, !1178, !1191, !1197, !1201, !1205, !1209, !1213, !1217, !1221, !1225, !1226, !1232, !1236, !1273, !1304, !1311, !1317, !1321, !1325, !1329, !1333, !1337, !1343, !1347}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1172, file: !173, line: 1967, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1121, !1156, !1121, !7}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1172, file: !173, line: 1968, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!16, !1121, !1156, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1184, line: 10, size: 128, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1185 = !{!1186, !1190}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1183, file: !1184, line: 11, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !20}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1183, file: !1184, line: 12, baseType: !20, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1172, file: !173, line: 1969, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!22, !1195, !1156, !22}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1042, line: 42, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1172, file: !173, line: 1970, baseType: !1198, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!1166, !1156, !22, !786}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1172, file: !173, line: 1972, baseType: !1202, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!22, !1121, !874, !22}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1172, file: !173, line: 1974, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!22, !1195, !1156, !1121, !24, !786}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1172, file: !173, line: 1976, baseType: !1210, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!22, !1121, !1156, !1121}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1172, file: !173, line: 1977, baseType: !1214, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!22, !1156, !1121}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1172, file: !173, line: 1978, baseType: !1218, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!22, !1195, !1156, !1121, !16}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1172, file: !173, line: 1980, baseType: !1222, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!22, !1195, !1156, !1121, !24}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1172, file: !173, line: 1982, baseType: !1214, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1172, file: !173, line: 1983, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!22, !1195, !1156, !1121, !24, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !268)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1172, file: !173, line: 1985, baseType: !1233, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!22, !1195, !1156, !1121, !1156, !1121, !7}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1172, file: !173, line: 1987, baseType: !1237, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!22, !1195, !1121, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1255, !1264, !1265, !1270, !1271, !1272}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1241, file: !173, line: 227, baseType: !7, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1241, file: !173, line: 228, baseType: !24, size: 16, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !173, line: 241, baseType: !1246, size: 32, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !173, line: 241, size: 32, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1246, file: !173, line: 242, baseType: !759, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1246, file: !173, line: 243, baseType: !1250, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1251, line: 16, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 14, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1252, file: !1251, line: 15, baseType: !764, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !173, line: 245, baseType: !1256, size: 32, offset: 96)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !173, line: 245, size: 32, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1256, file: !173, line: 246, baseType: !767, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1256, file: !173, line: 247, baseType: !1260, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1251, line: 20, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 18, size: 32, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1261, file: !1251, line: 19, baseType: !771, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1241, file: !173, line: 249, baseType: !41, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1241, file: !173, line: 250, baseType: !1266, size: 128, offset: 192)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !823, line: 13, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1266, file: !823, line: 14, baseType: !822, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1266, file: !823, line: 15, baseType: !1011, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1241, file: !173, line: 251, baseType: !1266, size: 128, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1241, file: !173, line: 252, baseType: !1266, size: 128, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1241, file: !173, line: 259, baseType: !602, size: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1172, file: !173, line: 1988, baseType: !1274, size: 64, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!22, !1195, !1277, !1279, !268, !7}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1281, line: 22, size: 1280, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1280, file: !1281, line: 23, baseType: !268, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1280, file: !1281, line: 24, baseType: !24, size: 16, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1280, file: !1281, line: 25, baseType: !7, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1280, file: !1281, line: 26, baseType: !830, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1280, file: !1281, line: 27, baseType: !325, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1280, file: !1281, line: 28, baseType: !325, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1280, file: !1281, line: 41, baseType: !325, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1280, file: !1281, line: 42, baseType: !1230, size: 32, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1280, file: !1281, line: 43, baseType: !1230, size: 32, offset: 352)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1280, file: !1281, line: 44, baseType: !759, size: 32, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1280, file: !1281, line: 45, baseType: !767, size: 32, offset: 416)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1280, file: !1281, line: 46, baseType: !41, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1280, file: !1281, line: 47, baseType: !1266, size: 128, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1280, file: !1281, line: 48, baseType: !1266, size: 128, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1280, file: !1281, line: 49, baseType: !1266, size: 128, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1280, file: !1281, line: 50, baseType: !1266, size: 128, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1280, file: !1281, line: 51, baseType: !325, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1280, file: !1281, line: 52, baseType: !325, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1280, file: !1281, line: 53, baseType: !268, size: 32, offset: 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1280, file: !1281, line: 54, baseType: !268, size: 32, offset: 1184)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1280, file: !1281, line: 55, baseType: !325, size: 64, offset: 1216)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1172, file: !173, line: 1990, baseType: !1305, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1308, !1121, !874, !35}
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !1011)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1172, file: !173, line: 1991, baseType: !1312, size: 64, offset: 1024)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!22, !1156, !1315, !325, !325}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1172, file: !173, line: 1993, baseType: !1318, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!22, !1156, !22}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1172, file: !173, line: 1994, baseType: !1322, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!22, !1156, !1121, !602, !7, !24}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1172, file: !173, line: 1997, baseType: !1326, size: 64, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!22, !1195, !1156, !602, !24}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1172, file: !173, line: 1999, baseType: !1330, size: 64, offset: 1280)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1166, !1195, !1121, !22}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1172, file: !173, line: 2001, baseType: !1334, size: 64, offset: 1344)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!22, !1195, !1121, !1166, !22}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1172, file: !173, line: 2003, baseType: !1338, size: 64, offset: 1408)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!22, !1195, !1121, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1172, file: !173, line: 2005, baseType: !1344, size: 64, offset: 1472)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!22, !1121, !1341}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1172, file: !173, line: 2006, baseType: !1348, size: 64, offset: 1536)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1156}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1352, file: !173, line: 3193, baseType: !707, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1352, file: !173, line: 3194, baseType: !268, size: 32, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1157, file: !173, line: 655, baseType: !1357, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !2583, !2715, !2755, !2838, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2855, !2859, !2860, !2863, !2866, !2869, !2872, !2873, !2874, !2915, !2941, !2942, !2943, !2944, !2945, !2946, !2967, !2971, !2980, !2981, !2982, !2983, !3042, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1358, file: !173, line: 1191, baseType: !97, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1358, file: !173, line: 1192, baseType: !1230, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1358, file: !173, line: 1193, baseType: !87, size: 8, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1358, file: !173, line: 1194, baseType: !39, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1358, file: !173, line: 1195, baseType: !41, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1358, file: !173, line: 1196, baseType: !1366, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1378, !1382, !1386, !1390, !2571, !2572, !2573, !2575, !2576, !2577, !2579, !2580, !2581, !2582}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1367, file: !173, line: 2367, baseType: !16, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1367, file: !173, line: 2368, baseType: !22, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1367, file: !173, line: 2376, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!22, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1377, line: 32, flags: DIFlagFwdDecl)
!1377 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1367, file: !173, line: 2377, baseType: !1379, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1367, file: !173, line: 2378, baseType: !1383, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1121, !1366, !22, !16, !20}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1367, file: !173, line: 2380, baseType: !1387, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1357}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1367, file: !173, line: 2381, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !160, line: 402, size: 9216, align: 512, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1400, !2227, !2253, !2254, !2255, !2256, !2260, !2263, !2264, !2265, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2333, !2337, !2357, !2376, !2377, !2378, !2379, !2388, !2411, !2412, !2415, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2429, !2430, !2529, !2537, !2538, !2539, !2541, !2545, !2546, !2550, !2551, !2552, !2553, !2555, !2556, !2557, !2564, !2565, !2566, !2570}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1392, file: !160, line: 403, baseType: !159, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1392, file: !160, line: 406, baseType: !97, size: 128, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1392, file: !160, line: 409, baseType: !1397, size: 448, offset: 192)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 56)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1392, file: !160, line: 417, baseType: !1401, size: 768, offset: 640)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !160, line: 45, size: 768, elements: !1402)
!1402 = !{!1403, !2221, !2222, !2223, !2226}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1401, file: !160, line: 46, baseType: !1404, size: 512)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1405, line: 64, size: 512, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1406 = !{!1407, !1408, !1409, !1411, !1455, !2078, !2211, !2216, !2217, !2218, !2219, !2220}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1404, file: !1405, line: 65, baseType: !16, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1404, file: !1405, line: 66, baseType: !97, size: 128, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1404, file: !1405, line: 67, baseType: !1410, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1404, file: !1405, line: 68, baseType: !1412, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1405, line: 168, size: 768, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1413, file: !1405, line: 169, baseType: !97, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1413, file: !1405, line: 170, baseType: !59, size: 32, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1413, file: !1405, line: 171, baseType: !1404, size: 512, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1413, file: !1405, line: 172, baseType: !1419, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1405, line: 133, size: 192, elements: !1422)
!1422 = !{!1423, !1430, !1435}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1421, file: !1405, line: 134, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!22, !1428}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1405, line: 135, baseType: !1431, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!16, !1428}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1421, file: !1405, line: 136, baseType: !1436, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!22, !1428, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1405, line: 125, size: 20736, elements: !1442)
!1442 = !{!1443, !1445, !1449, !1450, !1454}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1441, file: !1405, line: 126, baseType: !1444, size: 192)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 192, elements: !666)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1441, file: !1405, line: 127, baseType: !1446, size: 4096, offset: 192)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 4096, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1441, file: !1405, line: 128, baseType: !22, size: 32, offset: 4288)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1441, file: !1405, line: 129, baseType: !1451, size: 16384, offset: 4320)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 2048)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1441, file: !1405, line: 130, baseType: !22, size: 32, offset: 20704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1404, file: !1405, line: 69, baseType: !1456, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1405, line: 116, size: 384, elements: !1459)
!1459 = !{!1460, !1464, !1483, !2040, !2070, !2074}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1458, file: !1405, line: 117, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1410}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1458, file: !1405, line: 118, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1468, line: 254, size: 128, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1469 = !{!1470, !1479}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1467, file: !1468, line: 255, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1308, !1410, !1474, !874}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1468, line: 30, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1475, file: !1468, line: 31, baseType: !16, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1475, file: !1468, line: 32, baseType: !24, size: 16, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1467, file: !1468, line: 256, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1308, !1410, !1474, !16, !35}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1458, file: !1405, line: 119, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1468, line: 84, size: 320, elements: !1488)
!1488 = !{!1489, !1490, !1494, !2036, !2038}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1487, file: !1468, line: 85, baseType: !16, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1487, file: !1468, line: 86, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!24, !1410, !1474, !22}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1487, file: !1468, line: 88, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!24, !1410, !1498, !22}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1468, line: 175, size: 512, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !2027, !2031, !2032}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1499, file: !1468, line: 176, baseType: !1475, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1499, file: !1468, line: 177, baseType: !35, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1499, file: !1468, line: 178, baseType: !20, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1499, file: !1468, line: 179, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !2019, !2020, !2021, !2024, !2025, !2026}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1509, file: !173, line: 473, baseType: !1156, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1509, file: !173, line: 474, baseType: !707, size: 128, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1509, file: !173, line: 475, baseType: !806, size: 320, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1509, file: !173, line: 476, baseType: !254, size: 32, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1509, file: !173, line: 477, baseType: !49, size: 32, offset: 544)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1509, file: !173, line: 482, baseType: !457, size: 128, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1509, file: !173, line: 483, baseType: !39, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1509, file: !173, line: 484, baseType: !39, size: 64, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1509, file: !173, line: 485, baseType: !1520, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !1523)
!1523 = !{!1524, !1817, !1887, !1891, !1895, !1912, !1918, !1922, !1927, !1931, !1935, !1939, !1983, !1987, !1991, !1995, !2000, !2004, !2011, !2015}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1522, file: !173, line: 405, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!22, !1528, !1815}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !129, line: 74, size: 512, align: 128, elements: !1530)
!1530 = !{!1531, !1532, !1809, !1814}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !129, line: 75, baseType: !39, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !129, line: 83, baseType: !1533, size: 320, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !129, line: 83, size: 320, elements: !1534)
!1534 = !{!1535, !1556, !1570, !1574, !1808}
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !129, line: 84, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !129, line: 84, size: 320, elements: !1537)
!1537 = !{!1538, !1549, !1550, !1555}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !129, line: 90, baseType: !1539, size: 128)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !129, line: 90, size: 128, elements: !1540)
!1540 = !{!1541, !1542, !1547, !1548}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1539, file: !129, line: 91, baseType: !97, size: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !129, line: 94, baseType: !1543, size: 128)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !129, line: 94, size: 128, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1543, file: !129, line: 96, baseType: !20, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1543, file: !129, line: 98, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1539, file: !129, line: 102, baseType: !97, size: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1539, file: !129, line: 103, baseType: !97, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1536, file: !129, line: 106, baseType: !1508, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !129, line: 107, baseType: !1551, size: 64, offset: 192)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !129, line: 107, size: 64, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1551, file: !129, line: 108, baseType: !39, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1551, file: !129, line: 109, baseType: !39, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1536, file: !129, line: 117, baseType: !39, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !129, line: 119, baseType: !1557, size: 320)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !129, line: 119, size: 320, elements: !1558)
!1558 = !{!1559, !1560, !1563, !1564, !1565}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1557, file: !129, line: 124, baseType: !39, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1557, file: !129, line: 125, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !129, line: 125, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1557, file: !129, line: 126, baseType: !39, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1557, file: !129, line: 127, baseType: !39, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !129, line: 128, baseType: !1566, size: 64, offset: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !129, line: 128, size: 64, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1566, file: !129, line: 133, baseType: !39, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1566, file: !129, line: 138, baseType: !623, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !129, line: 141, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !129, line: 141, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1571, file: !129, line: 142, baseType: !39, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !129, line: 144, baseType: !1575, size: 128)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !129, line: 144, size: 128, elements: !1576)
!1576 = !{!1577, !1807}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1575, file: !129, line: 146, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !121, line: 126, size: 1216, elements: !1580)
!1580 = !{!1581, !1591, !1612, !1613, !1614, !1615, !1616, !1789, !1790, !1791}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1579, file: !121, line: 127, baseType: !1582, size: 384)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !121, line: 21, size: 384, elements: !1583)
!1583 = !{!1584, !1585, !1587, !1588, !1589, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1582, file: !121, line: 22, baseType: !39, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1582, file: !121, line: 23, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1582, file: !121, line: 24, baseType: !1586, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1582, file: !121, line: 25, baseType: !39, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1582, file: !121, line: 26, baseType: !39, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1582, file: !121, line: 27, baseType: !39, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1579, file: !121, line: 128, baseType: !1592, size: 128, offset: 384)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1593, line: 105, size: 128, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1592, file: !1593, line: 110, baseType: !39, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1592, file: !1593, line: 118, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1593, line: 95, size: 448, elements: !1599)
!1599 = !{!1600, !1601, !1607, !1608, !1609, !1610, !1611}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1598, file: !1593, line: 96, baseType: !623, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1598, file: !1593, line: 97, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1593, line: 60, baseType: !1604)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1598, file: !1593, line: 98, baseType: !1602, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1598, file: !1593, line: 99, baseType: !786, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1598, file: !1593, line: 100, baseType: !786, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !1593, line: 101, baseType: !610, size: 128, align: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1598, file: !1593, line: 102, baseType: !1606, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1579, file: !121, line: 129, baseType: !952, size: 256, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1579, file: !121, line: 130, baseType: !120, size: 32, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1579, file: !121, line: 131, baseType: !7, size: 32, offset: 800)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1579, file: !121, line: 132, baseType: !39, size: 64, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1579, file: !121, line: 133, baseType: !1617, size: 64, offset: 896)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !121, line: 77, size: 192, elements: !1620)
!1620 = !{!1621, !1625, !1785}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1619, file: !121, line: 83, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1528}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1619, file: !121, line: 89, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !129, line: 1184, baseType: !7)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1632, line: 512, size: 896, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1633 = !{!1634, !1752, !1753, !1760, !1767, !1777, !1778, !1779, !1781, !1783}
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1632, line: 513, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1632, line: 513, size: 320, elements: !1636)
!1636 = !{!1637, !1748, !1749, !1750, !1751}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1635, file: !1632, line: 514, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !129, line: 625, size: 1344, elements: !1640)
!1640 = !{!1641, !1650, !1651, !1659, !1666, !1667, !1672, !1673, !1678, !1679, !1682, !1741, !1742, !1743, !1744, !1745, !1746}
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !129, line: 628, baseType: !1642, size: 128)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !129, line: 628, size: 128, elements: !1643)
!1643 = !{!1644, !1649}
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !129, line: 629, baseType: !1645, size: 128)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !129, line: 629, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1645, file: !129, line: 631, baseType: !39, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1645, file: !129, line: 632, baseType: !39, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1642, file: !129, line: 635, baseType: !610, size: 128, align: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1639, file: !129, line: 639, baseType: !574, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1639, file: !129, line: 640, baseType: !1652, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1653, line: 297, baseType: !1654)
!1653 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1653, line: 297, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1654, file: !1653, line: 297, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1658, line: 19, baseType: !39)
!1658 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !129, line: 646, baseType: !1660, size: 64, offset: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !129, line: 646, size: 64, elements: !1661)
!1661 = !{!1662, !1665}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1660, file: !129, line: 647, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !129, line: 542, baseType: !39)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1660, file: !129, line: 648, baseType: !1664, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1639, file: !129, line: 666, baseType: !22, size: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1639, file: !129, line: 667, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !129, line: 579, size: 320, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1669, file: !129, line: 580, baseType: !806, size: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1639, file: !129, line: 670, baseType: !786, size: 8, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1639, file: !129, line: 681, baseType: !1674, size: 256, offset: 512)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !129, line: 678, size: 256, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1674, file: !129, line: 679, baseType: !317, size: 192, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1674, file: !129, line: 680, baseType: !39, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1639, file: !129, line: 689, baseType: !97, size: 128, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1639, file: !129, line: 691, baseType: !1680, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !129, line: 691, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1639, file: !129, line: 694, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1632, line: 563, size: 1024, elements: !1686)
!1686 = !{!1687, !1691, !1692, !1696, !1700, !1704, !1705, !1709, !1713, !1717, !1718, !1719, !1723, !1727, !1733, !1737}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1685, file: !1632, line: 564, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1638}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1685, file: !1632, line: 569, baseType: !1688, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1685, file: !1632, line: 571, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!22, !1638, !39}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1685, file: !1632, line: 572, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!22, !1638}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1685, file: !1632, line: 578, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!22, !1638, !39, !39, !39}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1685, file: !1632, line: 580, baseType: !1626, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1685, file: !1632, line: 581, baseType: !1706, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1629, !1630, !7}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1685, file: !1632, line: 582, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1629, !1630, !39, !39}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1685, file: !1632, line: 584, baseType: !1714, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!39, !1638}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1685, file: !1632, line: 588, baseType: !1626, size: 64, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1685, file: !1632, line: 591, baseType: !1626, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1685, file: !1632, line: 597, baseType: !1720, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!22, !1638, !39, !20, !22, !22}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1685, file: !1632, line: 603, baseType: !1724, size: 64, offset: 768)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!16, !1638}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1685, file: !1632, line: 613, baseType: !1728, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!22, !1638, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !129, line: 717, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1685, file: !1632, line: 625, baseType: !1734, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!1731, !1638, !39}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1685, file: !1632, line: 633, baseType: !1738, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1528, !1638, !39}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1639, file: !129, line: 697, baseType: !39, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1639, file: !129, line: 699, baseType: !602, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1639, file: !129, line: 700, baseType: !20, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1639, file: !129, line: 711, baseType: !623, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1639, file: !129, line: 717, baseType: !1731, size: 64, offset: 1280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1639, file: !129, line: 722, baseType: !1747, offset: 1344)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !129, line: 570, elements: !595)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1635, file: !1632, line: 515, baseType: !254, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1635, file: !1632, line: 516, baseType: !39, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1635, file: !1632, line: 517, baseType: !39, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1635, file: !1632, line: 518, baseType: !39, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1631, file: !1632, line: 520, baseType: !128, size: 32, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1631, file: !1632, line: 522, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1658, line: 22, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 22, size: 64, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1756, file: !1658, line: 22, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1658, line: 15, baseType: !39)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1631, file: !1632, line: 524, baseType: !1761, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1653, line: 372, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1653, line: 372, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1763, file: !1653, line: 372, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1658, line: 16, baseType: !39)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1632, line: 527, baseType: !1768, size: 64, offset: 512)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1631, file: !1632, line: 527, size: 64, elements: !1769)
!1769 = !{!1770, !1776}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1768, file: !1632, line: 528, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1658, line: 21, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 21, size: 64, elements: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1772, file: !1658, line: 21, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1658, line: 14, baseType: !39)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1768, file: !1632, line: 529, baseType: !1755, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1631, file: !1632, line: 534, baseType: !1528, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1631, file: !1632, line: 535, baseType: !1528, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1631, file: !1632, line: 541, baseType: !1780, size: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1631, file: !1632, line: 545, baseType: !1782, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1631, file: !1632, line: 549, baseType: !1784, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1653, line: 520, baseType: !1528)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1619, file: !121, line: 100, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!22, !1578, !39, !39, !22}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1579, file: !121, line: 134, baseType: !20, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1579, file: !121, line: 135, baseType: !22, size: 32, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !121, line: 136, baseType: !1792, size: 128, offset: 1088)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !121, line: 136, size: 128, elements: !1793)
!1793 = !{!1794, !1800}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1792, file: !121, line: 137, baseType: !1795, size: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1796, line: 6, size: 128, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1795, file: !1796, line: 7, baseType: !325, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1795, file: !1796, line: 8, baseType: !325, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !121, line: 138, baseType: !1801)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !121, line: 138, elements: !1802)
!1802 = !{!1803, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1801, file: !121, line: 138, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !121, line: 138, elements: !595)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1801, file: !121, line: 138, baseType: !1806)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, elements: !1018)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1575, file: !129, line: 147, baseType: !20, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1533, file: !129, line: 161, baseType: !610, size: 128, align: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !129, line: 164, baseType: !1810, size: 32, offset: 384)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1529, file: !129, line: 164, size: 32, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1810, file: !129, line: 169, baseType: !49, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1810, file: !129, line: 177, baseType: !7, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1529, file: !129, line: 181, baseType: !49, size: 32, offset: 416)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !173, line: 309, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1522, file: !173, line: 406, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!22, !602, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !129, line: 293, size: 1536, elements: !1823)
!1823 = !{!1824, !1854, !1868}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !129, line: 295, baseType: !1825, size: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !129, line: 295, size: 512, elements: !1826)
!1826 = !{!1827, !1853}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !129, line: 296, baseType: !1828, size: 448)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !129, line: 296, size: 448, elements: !1829)
!1829 = !{!1830, !1831, !1840, !1841, !1842, !1851, !1852}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1828, file: !129, line: 298, baseType: !39, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !129, line: 299, baseType: !1832, size: 128, offset: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !129, line: 299, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1832, file: !129, line: 300, baseType: !97, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !129, line: 302, baseType: !1836, size: 128)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !129, line: 302, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1836, file: !129, line: 303, baseType: !20, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1836, file: !129, line: 305, baseType: !7, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1828, file: !129, line: 310, baseType: !1508, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1828, file: !129, line: 311, baseType: !39, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !129, line: 312, baseType: !1843, size: 64, offset: 320)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !129, line: 312, size: 64, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1843, file: !129, line: 313, baseType: !20, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1843, file: !129, line: 314, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !129, line: 257, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 255, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1848, file: !129, line: 256, baseType: !39, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1828, file: !129, line: 316, baseType: !49, size: 32, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1828, file: !129, line: 317, baseType: !49, size: 32, offset: 416)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1825, file: !129, line: 323, baseType: !1529, size: 512, align: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !129, line: 325, baseType: !1855, size: 512, offset: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !129, line: 325, size: 512, elements: !1856)
!1856 = !{!1857, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !129, line: 326, baseType: !1858, size: 320)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !129, line: 326, size: 320, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1858, file: !129, line: 327, baseType: !39, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1858, file: !129, line: 328, baseType: !39, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1858, file: !129, line: 329, baseType: !39, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1858, file: !129, line: 331, baseType: !49, size: 32, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1858, file: !129, line: 332, baseType: !49, size: 32, offset: 224)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1858, file: !129, line: 333, baseType: !49, size: 32, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1858, file: !129, line: 335, baseType: !7, size: 32, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1855, file: !129, line: 339, baseType: !1529, size: 512, align: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !129, line: 341, baseType: !1869, size: 512, offset: 1024)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !129, line: 341, size: 512, elements: !1870)
!1870 = !{!1871, !1880, !1886}
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !129, line: 342, baseType: !1872, size: 384)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !129, line: 342, size: 384, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1872, file: !129, line: 343, baseType: !39, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1872, file: !129, line: 344, baseType: !39, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1872, file: !129, line: 346, baseType: !20, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1872, file: !129, line: 347, baseType: !20, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1872, file: !129, line: 348, baseType: !20, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1872, file: !129, line: 349, baseType: !20, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !129, line: 352, baseType: !1881, size: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !129, line: 352, size: 256, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1881, file: !129, line: 353, baseType: !39, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1881, file: !129, line: 354, baseType: !39, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1881, file: !129, line: 356, baseType: !97, size: 128, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1869, file: !129, line: 359, baseType: !1529, size: 512, align: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1522, file: !173, line: 409, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!22, !1508, !1815}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1522, file: !173, line: 412, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!786, !1508, !1821}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1522, file: !173, line: 414, baseType: !1896, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1901, line: 1276, size: 448, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1902 = !{!1903, !1904, !1905, !1907, !1908, !1909, !1910, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1900, file: !1901, line: 1277, baseType: !602, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1900, file: !1901, line: 1278, baseType: !1508, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1900, file: !1901, line: 1279, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1900, file: !1901, line: 1281, baseType: !39, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1900, file: !1901, line: 1282, baseType: !7, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1900, file: !1901, line: 1283, baseType: !7, size: 32, offset: 288)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1900, file: !1901, line: 1284, baseType: !786, size: 8, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1900, file: !1901, line: 1285, baseType: !39, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1522, file: !173, line: 416, baseType: !1913, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!22, !602, !1508, !41, !7, !1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1522, file: !173, line: 419, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!22, !602, !1508, !41, !7, !7, !1528, !20}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1522, file: !173, line: 424, baseType: !1923, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !1508, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !325)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1522, file: !173, line: 425, baseType: !1928, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1821, !35, !35}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1522, file: !173, line: 426, baseType: !1932, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!786, !1821, !254}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1522, file: !173, line: 427, baseType: !1936, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1821}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1522, file: !173, line: 428, baseType: !1940, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1308, !1943, !1981}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1952, !1953, !1954, !1955}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1944, file: !173, line: 374, baseType: !602, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1944, file: !173, line: 375, baseType: !41, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1944, file: !173, line: 376, baseType: !1949, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1943, !1011}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1944, file: !173, line: 377, baseType: !20, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1944, file: !173, line: 378, baseType: !22, size: 32, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1944, file: !173, line: 379, baseType: !93, size: 16, offset: 288)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !173, line: 380, baseType: !1956, size: 64, offset: 320)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !173, line: 380, size: 64, elements: !1957)
!1957 = !{!1958, !1977}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1956, file: !173, line: 386, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1901, line: 998, size: 448, elements: !1961)
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1960, file: !1901, line: 999, baseType: !1821, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1960, file: !1901, line: 1000, baseType: !22, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1960, file: !1901, line: 1001, baseType: !1965, size: 320, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !55, line: 14, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !55, line: 30, size: 320, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1976}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !55, line: 31, baseType: !7, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1966, file: !55, line: 32, baseType: !20, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1966, file: !55, line: 33, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !55, line: 16, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!22, !1975, !7, !22, !20}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1966, file: !55, line: 34, baseType: !97, size: 128, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1956, file: !173, line: 395, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1308, !20}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !173, line: 69, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1522, file: !173, line: 433, baseType: !1984, size: 64, offset: 768)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!22, !1508, !1821, !1821, !113}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1522, file: !173, line: 435, baseType: !1988, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!22, !1821}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1522, file: !173, line: 436, baseType: !1992, size: 64, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!786, !1821, !35, !35}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1522, file: !173, line: 438, baseType: !1996, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1821, !1999, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1522, file: !173, line: 439, baseType: !2001, size: 64, offset: 1024)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!22, !1508, !1528}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1522, file: !173, line: 442, baseType: !2005, size: 64, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!22, !2008, !602, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1522, file: !173, line: 444, baseType: !2012, size: 64, offset: 1152)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !602}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1522, file: !173, line: 445, baseType: !2016, size: 64, offset: 1216)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!22, !1943, !1981}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1509, file: !173, line: 486, baseType: !39, size: 64, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1509, file: !173, line: 487, baseType: !806, size: 320, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1509, file: !173, line: 488, baseType: !2022, size: 32, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2023, line: 8, baseType: !268)
!2023 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1509, file: !173, line: 489, baseType: !59, size: 32, offset: 1312)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1509, file: !173, line: 490, baseType: !97, size: 128, offset: 1344)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1509, file: !173, line: 491, baseType: !20, size: 64, offset: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1499, file: !1468, line: 180, baseType: !2028, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!1308, !602, !1410, !1498, !874, !41, !35}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1499, file: !1468, line: 182, baseType: !2028, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1499, file: !1468, line: 184, baseType: !2033, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!22, !602, !1410, !1498, !1638}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1487, file: !1468, line: 90, baseType: !2037, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1487, file: !1468, line: 91, baseType: !2039, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1458, file: !1405, line: 120, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2044, !1428}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !2047)
!2047 = !{!2048, !2049, !2053, !2057, !2065, !2069}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2046, file: !167, line: 40, baseType: !166, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2046, file: !167, line: 41, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!786}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2046, file: !167, line: 42, baseType: !2054, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!20}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2046, file: !167, line: 43, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !2063}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2046, file: !167, line: 44, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!2061}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2046, file: !167, line: 45, baseType: !1187, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1458, file: !1405, line: 121, baseType: !2071, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!2061, !1428}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1458, file: !1405, line: 122, baseType: !2075, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !1428, !977, !978}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1404, file: !1405, line: 70, baseType: !2079, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1377, line: 190, size: 1152, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2203, !2204, !2205, !2206, !2207, !2210}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2080, file: !1377, line: 191, baseType: !49, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2080, file: !1377, line: 192, baseType: !49, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2080, file: !1377, line: 202, baseType: !2079, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2080, file: !1377, line: 203, baseType: !16, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2080, file: !1377, line: 205, baseType: !317, size: 192, align: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2080, file: !1377, line: 207, baseType: !2061, size: 64, offset: 384)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2080, file: !1377, line: 208, baseType: !7, size: 32, offset: 448)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !1377, line: 209, baseType: !2090, size: 256, offset: 512)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !1377, line: 209, size: 256, elements: !2091)
!2091 = !{!2092, !2101, !2105}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2090, file: !1377, line: 210, baseType: !2093, size: 256)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1377, line: 153, size: 256, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2100}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2093, file: !1377, line: 154, baseType: !39, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2093, file: !1377, line: 156, baseType: !460, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2093, file: !1377, line: 162, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1377, line: 162, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2093, file: !1377, line: 167, baseType: !39, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2090, file: !1377, line: 211, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1377, line: 170, size: 64, elements: !2103)
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2102, file: !1377, line: 171, baseType: !2079, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2090, file: !1377, line: 212, baseType: !2106, size: 256)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1377, line: 174, size: 256, elements: !2107)
!2107 = !{!2108, !2198, !2201, !2202}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2106, file: !1377, line: 175, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1377, line: 271, size: 768, elements: !2112)
!2112 = !{!2113, !2171, !2175, !2176, !2177, !2178, !2179, !2183, !2184, !2185, !2186, !2194}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2111, file: !1377, line: 276, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!22, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1377, line: 251, size: 1216, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2118, file: !1377, line: 253, baseType: !2079, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2118, file: !1377, line: 254, baseType: !602, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2118, file: !1377, line: 255, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2125, line: 17, size: 960, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2156, !2157, !2160}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2124, file: !2125, line: 18, baseType: !874, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2124, file: !2125, line: 19, baseType: !35, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2124, file: !2125, line: 20, baseType: !35, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2124, file: !2125, line: 21, baseType: !35, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2124, file: !2125, line: 22, baseType: !35, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2124, file: !2125, line: 23, baseType: !41, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2124, file: !2125, line: 24, baseType: !41, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2125, line: 25, baseType: !630, size: 256, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2124, file: !2125, line: 26, baseType: !2136, size: 64, offset: 704)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2125, line: 32, size: 256, elements: !2139)
!2139 = !{!2140, !2144, !2148, !2152}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2138, file: !2125, line: 33, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!20, !2123, !40}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2138, file: !2125, line: 34, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !2123, !20}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2138, file: !2125, line: 35, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!20, !2123, !20, !40}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2138, file: !2125, line: 36, baseType: !2153, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!22, !2123, !20}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2124, file: !2125, line: 27, baseType: !22, size: 32, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2124, file: !2125, line: 28, baseType: !2158, size: 64, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2124, file: !2125, line: 29, baseType: !20, size: 64, offset: 896)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2118, file: !1377, line: 256, baseType: !20, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2118, file: !1377, line: 259, baseType: !630, size: 256, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2118, file: !1377, line: 260, baseType: !630, size: 256, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2118, file: !1377, line: 261, baseType: !22, size: 32, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2118, file: !1377, line: 262, baseType: !97, size: 128, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2118, file: !1377, line: 263, baseType: !874, size: 64, offset: 960)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2118, file: !1377, line: 265, baseType: !35, size: 64, offset: 1024)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2118, file: !1377, line: 266, baseType: !786, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2118, file: !1377, line: 267, baseType: !786, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2118, file: !1377, line: 268, baseType: !1683, size: 64, offset: 1152)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2111, file: !1377, line: 277, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2117}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2111, file: !1377, line: 290, baseType: !2153, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2111, file: !1377, line: 292, baseType: !2141, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2111, file: !1377, line: 293, baseType: !2149, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2111, file: !1377, line: 294, baseType: !2145, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2111, file: !1377, line: 296, baseType: !2180, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!1308, !2117, !874, !35, !41}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2111, file: !1377, line: 306, baseType: !35, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2111, file: !1377, line: 313, baseType: !786, size: 8, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2111, file: !1377, line: 314, baseType: !2180, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2111, file: !1377, line: 317, baseType: !2187, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!2190, !2117, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2191, line: 59, baseType: !7)
!2191 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1377, line: 31, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2111, file: !1377, line: 320, baseType: !2195, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!22, !2117, !1638}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2106, file: !1377, line: 176, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1377, line: 35, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2106, file: !1377, line: 177, baseType: !41, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2106, file: !1377, line: 178, baseType: !2079, size: 64, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2080, file: !1377, line: 215, baseType: !20, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2080, file: !1377, line: 221, baseType: !325, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !1377, line: 223, baseType: !26, size: 16, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2080, file: !1377, line: 224, baseType: !24, size: 16, offset: 912)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2080, file: !1377, line: 225, baseType: !2208, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1377, line: 36, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2080, file: !1377, line: 227, baseType: !610, size: 128, align: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1404, file: !1405, line: 71, baseType: !2212, size: 32, offset: 448)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2213, line: 19, size: 32, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2212, file: !2213, line: 20, baseType: !274, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1404, file: !1405, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1404, file: !1405, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1404, file: !1405, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1404, file: !1405, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1404, file: !1405, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1401, file: !160, line: 47, baseType: !1391, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1401, file: !160, line: 48, baseType: !1410, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1401, file: !160, line: 49, baseType: !2224, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !160, line: 49, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1401, file: !160, line: 50, baseType: !951, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1392, file: !160, line: 418, baseType: !2228, size: 64, offset: 1408)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !160, line: 53, size: 448, elements: !2230)
!2230 = !{!2231, !2232, !2237, !2241, !2245, !2249}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2229, file: !160, line: 54, baseType: !1475, size: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2229, file: !160, line: 55, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!1308, !2228, !2236, !874}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2229, file: !160, line: 57, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!1308, !2228, !2236, !16, !35}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2229, file: !160, line: 59, baseType: !2242, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !1391, !16}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2229, file: !160, line: 60, baseType: !2246, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!22, !1391}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2229, file: !160, line: 61, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !1391}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1392, file: !160, line: 419, baseType: !16, size: 64, offset: 1472)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1392, file: !160, line: 420, baseType: !16, size: 64, offset: 1536)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1392, file: !160, line: 421, baseType: !1410, size: 64, offset: 1600)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1392, file: !160, line: 424, baseType: !2257, size: 64, offset: 1664)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !160, line: 424, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1392, file: !160, line: 425, baseType: !2261, size: 64, offset: 1728)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1392, file: !160, line: 426, baseType: !7, size: 32, offset: 1792)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1392, file: !160, line: 435, baseType: !630, size: 256, offset: 1856)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1392, file: !160, line: 437, baseType: !2266, size: 64, offset: 2112)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2268, line: 69, size: 320, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2269 = !{!2270, !2271, !2272, !2289, !2291, !2295, !2296}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2267, file: !2268, line: 70, baseType: !16, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2267, file: !2268, line: 71, baseType: !1391, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2267, file: !2268, line: 72, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2268, line: 47, size: 256, elements: !2276)
!2276 = !{!2277, !2278, !2284, !2288}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2268, line: 49, baseType: !7, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2275, file: !2268, line: 51, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!22, !16, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2275, file: !2268, line: 53, baseType: !2285, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!22, !874, !2282}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2275, file: !2268, line: 55, baseType: !1187, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2267, file: !2268, line: 73, baseType: !2290, size: 16, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2267, file: !2268, line: 74, baseType: !2292, size: 8, offset: 208)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2294)
!2294 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 75, baseType: !83, size: 8, offset: 216)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !2268, line: 76, baseType: !2297, size: 64, offset: 256)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !2268, line: 76, size: 64, elements: !2298)
!2298 = !{!2299, !2300, !2307}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2297, file: !2268, line: 77, baseType: !20, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2297, file: !2268, line: 78, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2303)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2268, line: 86, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2303, file: !2268, line: 87, baseType: !7, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2303, file: !2268, line: 88, baseType: !874, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2297, file: !2268, line: 79, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2268, line: 92, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2314, !2316, !2317}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2310, file: !2268, line: 94, baseType: !7, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2310, file: !2268, line: 95, baseType: !7, size: 32, offset: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2310, file: !2268, line: 96, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2310, file: !2268, line: 97, baseType: !2273, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2310, file: !2268, line: 98, baseType: !20, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1392, file: !160, line: 438, baseType: !7, size: 32, offset: 2176)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1392, file: !160, line: 441, baseType: !7, size: 32, offset: 2208)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1392, file: !160, line: 442, baseType: !2257, size: 64, offset: 2240)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1392, file: !160, line: 443, baseType: !2261, size: 64, offset: 2304)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1392, file: !160, line: 444, baseType: !786, size: 8, offset: 2368)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1392, file: !160, line: 451, baseType: !786, size: 8, offset: 2376)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1392, file: !160, line: 454, baseType: !7, size: 32, offset: 2400)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1392, file: !160, line: 455, baseType: !2326, size: 64, offset: 2432)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2328, line: 23, size: 96, elements: !2329)
!2328 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2327, file: !2328, line: 24, baseType: !22, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2327, file: !2328, line: 24, baseType: !22, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2327, file: !2328, line: 24, baseType: !22, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1392, file: !160, line: 458, baseType: !2334, size: 64, offset: 2496)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!22}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1392, file: !160, line: 460, baseType: !2338, size: 4032, align: 512, offset: 2560)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2339, size: 4032, elements: !2355)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !160, line: 362, size: 576, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2339, file: !160, line: 363, baseType: !20, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2339, file: !160, line: 364, baseType: !7, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2339, file: !160, line: 367, baseType: !2344, size: 448, offset: 128)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !160, line: 319, size: 448, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2344, file: !160, line: 320, baseType: !1391, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2344, file: !160, line: 321, baseType: !2348, size: 384, offset: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2349, line: 40, size: 384, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2348, file: !2349, line: 41, baseType: !2352, size: 384, align: 64)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, align: 64, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 2)
!2355 = !{!2356}
!2356 = !DISubrange(count: 7)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1392, file: !160, line: 463, baseType: !2358, size: 192, offset: 6592)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2359, line: 8, size: 192, elements: !2360)
!2359 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2360 = !{!2361, !2362, !2363}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2358, file: !2359, line: 10, baseType: !7, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2358, file: !2359, line: 11, baseType: !255, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2358, file: !2359, line: 12, baseType: !2364, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2366, line: 59, size: 48, elements: !2367)
!2366 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2367 = !{!2368, !2371, !2372, !2373, !2374, !2375}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2365, file: !2366, line: 60, baseType: !2369, size: 16)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !834)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2365, file: !2366, line: 61, baseType: !2369, size: 16, offset: 16)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2365, file: !2366, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2365, file: !2366, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2365, file: !2366, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2365, file: !2366, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1392, file: !160, line: 465, baseType: !39, size: 64, offset: 6784)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1392, file: !160, line: 469, baseType: !7, size: 32, offset: 6848)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1392, file: !160, line: 470, baseType: !97, size: 128, offset: 6912)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1392, file: !160, line: 471, baseType: !2380, size: 64, offset: 7040)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2382, line: 33, size: 96, elements: !2383)
!2382 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2381, file: !2382, line: 37, baseType: !22, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2381, file: !2382, line: 43, baseType: !22, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2381, file: !2382, line: 45, baseType: !26, size: 16, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !2382, line: 47, baseType: !26, size: 16, offset: 80)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1392, file: !160, line: 476, baseType: !2389, size: 64, offset: 7104)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !160, line: 378, size: 256, elements: !2391)
!2391 = !{!2392, !2408, !2409, !2410}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2390, file: !160, line: 379, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2395, line: 204, baseType: !2396)
!2395 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2395, line: 197, size: 192, elements: !2397)
!2397 = !{!2398, !2400, !2401, !2402, !2404, !2406}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2396, file: !2395, line: 198, baseType: !2399, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2395, line: 21, baseType: !269)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2396, file: !2395, line: 199, baseType: !87, size: 8, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2396, file: !2395, line: 200, baseType: !87, size: 8, offset: 40)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2396, file: !2395, line: 201, baseType: !2403, size: 16, offset: 48)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2395, line: 17, baseType: !94)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2396, file: !2395, line: 202, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2395, line: 16, baseType: !326)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2396, file: !2395, line: 203, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2395, line: 22, baseType: !326)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2390, file: !160, line: 380, baseType: !7, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2390, file: !160, line: 381, baseType: !874, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2390, file: !160, line: 382, baseType: !874, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1392, file: !160, line: 477, baseType: !2390, size: 256, offset: 7168)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1392, file: !160, line: 480, baseType: !2413, size: 64, offset: 7424)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !160, line: 480, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1392, file: !160, line: 483, baseType: !2416, size: 64, offset: 7488)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !160, line: 483, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1392, file: !160, line: 488, baseType: !874, size: 64, offset: 7552)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1392, file: !160, line: 492, baseType: !20, size: 64, offset: 7616)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1392, file: !160, line: 493, baseType: !7, size: 32, offset: 7680)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1392, file: !160, line: 495, baseType: !20, size: 64, offset: 7744)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1392, file: !160, line: 496, baseType: !7, size: 32, offset: 7808)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1392, file: !160, line: 499, baseType: !7, size: 32, offset: 7840)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1392, file: !160, line: 500, baseType: !2425, size: 64, offset: 7872)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2427, line: 45, baseType: !2428)
!2427 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1392, file: !160, line: 503, baseType: !7, size: 32, offset: 7936)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1392, file: !160, line: 504, baseType: !2431, size: 64, offset: 8000)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2434, line: 96, size: 192, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2435 = !{!2436, !2437, !2490, !2493}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2433, file: !2434, line: 97, baseType: !7, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2433, file: !2434, line: 98, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2434, line: 24, size: 3072, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2459, !2460, !2461, !2462, !2474, !2475, !2476, !2487, !2488, !2489}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2439, file: !2434, line: 26, baseType: !2442, size: 128)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 128, elements: !2353)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2439, file: !2434, line: 27, baseType: !2442, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2439, file: !2434, line: 28, baseType: !22, size: 32, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !2434, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2439, file: !2434, line: 32, baseType: !2447, size: 960, offset: 576)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2448, line: 206, size: 960, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2449 = !{!2450, !2451, !2454, !2456, !2457, !2458}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2447, file: !2448, line: 207, baseType: !613, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2447, file: !2448, line: 208, baseType: !2452, size: 256, offset: 64)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, size: 256, elements: !687)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2447, file: !2448, line: 209, baseType: !2455, size: 256, offset: 320)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !687)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2447, file: !2448, line: 213, baseType: !1011, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2447, file: !2448, line: 215, baseType: !1013, size: 256, offset: 640)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2447, file: !2448, line: 216, baseType: !83, size: 8, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2439, file: !2434, line: 33, baseType: !39, size: 64, offset: 1536)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2439, file: !2434, line: 34, baseType: !39, size: 64, offset: 1600)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2439, file: !2434, line: 35, baseType: !786, size: 8, offset: 1664)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2439, file: !2434, line: 36, baseType: !2463, size: 320, offset: 1728)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2464, line: 11, size: 320, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2465 = !{!2466, !2467, !2468, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2463, file: !2464, line: 16, baseType: !682, size: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2463, file: !2464, line: 17, baseType: !39, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2463, file: !2464, line: 18, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 19, baseType: !268, size: 32, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2439, file: !2434, line: 37, baseType: !913, size: 256, offset: 2048)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2439, file: !2434, line: 38, baseType: !610, size: 128, align: 64, offset: 2304)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2439, file: !2434, line: 39, baseType: !2477, size: 64, offset: 2432)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2434, line: 49, size: 768, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2478, file: !2434, line: 50, baseType: !59, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2478, file: !2434, line: 51, baseType: !2455, size: 256, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2478, file: !2434, line: 53, baseType: !2455, size: 256, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2478, file: !2434, line: 54, baseType: !39, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2478, file: !2434, line: 55, baseType: !2477, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2478, file: !2434, line: 56, baseType: !22, size: 32, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2478, file: !2434, line: 57, baseType: !22, size: 32, offset: 736)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2439, file: !2434, line: 40, baseType: !39, size: 64, offset: 2496)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2439, file: !2434, line: 42, baseType: !22, size: 32, offset: 2560)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2439, file: !2434, line: 43, baseType: !2432, size: 64, offset: 2624)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2433, file: !2434, line: 99, baseType: !2491, offset: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2492, line: 211, elements: !595)
!2492 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2433, file: !2434, line: 100, baseType: !2494, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2434, line: 63, size: 3008, elements: !2496)
!2496 = !{!2497, !2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2528}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2495, file: !2434, line: 64, baseType: !2477, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2495, file: !2434, line: 65, baseType: !2499, size: 192, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 192, elements: !666)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2495, file: !2434, line: 67, baseType: !22, size: 32, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2495, file: !2434, line: 68, baseType: !630, size: 256, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2495, file: !2434, line: 69, baseType: !59, size: 32, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2495, file: !2434, line: 70, baseType: !630, size: 256, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2495, file: !2434, line: 71, baseType: !39, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2495, file: !2434, line: 72, baseType: !39, size: 64, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2495, file: !2434, line: 73, baseType: !39, size: 64, offset: 1024)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2495, file: !2434, line: 74, baseType: !39, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2495, file: !2434, line: 75, baseType: !39, size: 64, offset: 1152)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2495, file: !2434, line: 76, baseType: !39, size: 64, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2495, file: !2434, line: 77, baseType: !39, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2495, file: !2434, line: 78, baseType: !39, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2495, file: !2434, line: 79, baseType: !786, size: 8, offset: 1408)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2495, file: !2434, line: 80, baseType: !39, size: 64, offset: 1472)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2495, file: !2434, line: 81, baseType: !630, size: 256, offset: 1536)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2495, file: !2434, line: 82, baseType: !952, size: 256, offset: 1792)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2495, file: !2434, line: 84, baseType: !49, size: 32, offset: 2048)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2495, file: !2434, line: 87, baseType: !39, size: 64, offset: 2112)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2495, file: !2434, line: 88, baseType: !39, size: 64, offset: 2176)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2495, file: !2434, line: 89, baseType: !2520, size: 704, offset: 2240)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !914, line: 111, size: 704, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2527}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2520, file: !914, line: 112, baseType: !913, size: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2520, file: !914, line: 113, baseType: !2463, size: 320, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2520, file: !914, line: 116, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !914, line: 18, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2520, file: !914, line: 117, baseType: !22, size: 32, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2495, file: !2434, line: 90, baseType: !2432, size: 64, offset: 2944)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1392, file: !160, line: 515, baseType: !2530, size: 64, offset: 8064)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2532, line: 117, size: 128, elements: !2533)
!2532 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2533 = !{!2534, !2535, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2531, file: !2532, line: 118, baseType: !798, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2531, file: !2532, line: 119, baseType: !798, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2531, file: !2532, line: 120, baseType: !1011, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1392, file: !160, line: 516, baseType: !7, size: 32, offset: 8128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1392, file: !160, line: 519, baseType: !7, size: 32, offset: 8160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1392, file: !160, line: 520, baseType: !2540, size: 64, offset: 8192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1392, file: !160, line: 523, baseType: !2542, size: 64, offset: 8256)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !160, line: 523, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1392, file: !160, line: 524, baseType: !7, size: 32, offset: 8320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1392, file: !160, line: 525, baseType: !2547, size: 64, offset: 8384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !160, line: 525, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1392, file: !160, line: 526, baseType: !7, size: 32, offset: 8448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1392, file: !160, line: 533, baseType: !20, size: 64, offset: 8512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1392, file: !160, line: 534, baseType: !7, size: 32, offset: 8576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1392, file: !160, line: 535, baseType: !2554, size: 64, offset: 8640)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1392, file: !160, line: 536, baseType: !7, size: 32, offset: 8704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1392, file: !160, line: 539, baseType: !22, size: 32, offset: 8736)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1392, file: !160, line: 540, baseType: !2558, size: 64, offset: 8768)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2560, line: 32, size: 64, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2559, file: !2560, line: 33, baseType: !798, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2559, file: !2560, line: 34, baseType: !798, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1392, file: !160, line: 563, baseType: !97, size: 128, offset: 8832)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1392, file: !160, line: 565, baseType: !97, size: 128, offset: 8960)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1392, file: !160, line: 568, baseType: !2567, size: 64, offset: 9088)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1392, file: !160, line: 570, baseType: !49, size: 32, offset: 9152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1367, file: !173, line: 2382, baseType: !1366, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1367, file: !173, line: 2383, baseType: !678, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1367, file: !173, line: 2385, baseType: !2574, offset: 576)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2492, line: 206, elements: !595)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1367, file: !173, line: 2386, baseType: !2574, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1367, file: !173, line: 2387, baseType: !2574, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1367, file: !173, line: 2388, baseType: !2578, offset: 576)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2574, elements: !666)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1367, file: !173, line: 2390, baseType: !2574, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1367, file: !173, line: 2391, baseType: !2574, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1367, file: !173, line: 2392, baseType: !2574, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1367, file: !173, line: 2393, baseType: !2574, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1358, file: !173, line: 1197, baseType: !2584, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !2587)
!2587 = !{!2588, !2592, !2596, !2597, !2601, !2605, !2609, !2610, !2611, !2615, !2619, !2623, !2624, !2625, !2631, !2635, !2636, !2640, !2641, !2642, !2643, !2647, !2651, !2698, !2713, !2714}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2586, file: !173, line: 2058, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1156, !1357}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2586, file: !173, line: 2059, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !1156}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2586, file: !173, line: 2060, baseType: !2593, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2586, file: !173, line: 2062, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !1156, !22}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2586, file: !173, line: 2063, baseType: !2602, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!22, !1156, !1815}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2586, file: !173, line: 2064, baseType: !2606, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!22, !1156}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2586, file: !173, line: 2065, baseType: !2593, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2586, file: !173, line: 2066, baseType: !1387, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2586, file: !173, line: 2067, baseType: !2612, size: 64, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!22, !1357, !22}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2586, file: !173, line: 2068, baseType: !2616, size: 64, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!22, !1357, !172}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2586, file: !173, line: 2069, baseType: !2620, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!22, !1357}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2586, file: !173, line: 2070, baseType: !2616, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2586, file: !173, line: 2071, baseType: !2620, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2586, file: !173, line: 2072, baseType: !2626, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!22, !1121, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2586, file: !173, line: 2073, baseType: !2632, size: 64, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!22, !1357, !255, !874}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2586, file: !173, line: 2074, baseType: !1387, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2586, file: !173, line: 2076, baseType: !2637, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!22, !2123, !1121}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2586, file: !173, line: 2077, baseType: !2637, size: 64, offset: 1088)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2586, file: !173, line: 2078, baseType: !2637, size: 64, offset: 1152)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2586, file: !173, line: 2079, baseType: !2637, size: 64, offset: 1216)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2586, file: !173, line: 2081, baseType: !2644, size: 64, offset: 1280)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!1308, !1357, !22, !874, !35, !41}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2586, file: !173, line: 2082, baseType: !2648, size: 64, offset: 1344)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!1308, !1357, !22, !16, !35, !41}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2586, file: !173, line: 2083, baseType: !2652, size: 64, offset: 1408)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!2655, !1156}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2683, !2684, !2685}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2657, file: !178, line: 297, baseType: !682, size: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2657, file: !178, line: 298, baseType: !97, size: 128, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2657, file: !178, line: 299, baseType: !97, size: 128, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2657, file: !178, line: 300, baseType: !97, size: 128, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2657, file: !178, line: 301, baseType: !630, size: 256, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2657, file: !178, line: 302, baseType: !59, size: 32, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2657, file: !178, line: 303, baseType: !49, size: 32, offset: 800)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2657, file: !178, line: 304, baseType: !1357, size: 64, offset: 832)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2657, file: !178, line: 305, baseType: !2668, size: 64, offset: 896)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !2669)
!2669 = !{!2670, !2682}
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !178, line: 69, baseType: !2671, size: 32)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2668, file: !178, line: 69, size: 32, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2671, file: !178, line: 70, baseType: !759, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2671, file: !178, line: 71, baseType: !767, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2671, file: !178, line: 72, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2677, line: 24, baseType: !2678)
!2677 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2677, line: 22, size: 32, elements: !2679)
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2678, file: !2677, line: 23, baseType: !2681, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2677, line: 20, baseType: !765)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2668, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2657, file: !178, line: 306, baseType: !41, size: 64, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2657, file: !178, line: 307, baseType: !39, size: 64, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2657, file: !178, line: 308, baseType: !2686, size: 576, offset: 1088)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !2687)
!2687 = !{!2688, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2686, file: !178, line: 206, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !43)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2686, file: !178, line: 207, baseType: !2689, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2686, file: !178, line: 208, baseType: !2689, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2686, file: !178, line: 209, baseType: !2689, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2686, file: !178, line: 210, baseType: !2689, size: 64, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2686, file: !178, line: 211, baseType: !2689, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2686, file: !178, line: 212, baseType: !2689, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2686, file: !178, line: 213, baseType: !822, size: 64, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2686, file: !178, line: 214, baseType: !822, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2586, file: !173, line: 2085, baseType: !2699, size: 64, offset: 1472)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!1011, !1357, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2704, line: 15, size: 256, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2705 = !{!2706, !2707, !2708, !2709, !2710}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2703, file: !2704, line: 16, baseType: !254, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2703, file: !2704, line: 19, baseType: !22, size: 32, offset: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2703, file: !2704, line: 26, baseType: !39, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2703, file: !2704, line: 33, baseType: !39, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2703, file: !2704, line: 36, baseType: !2711, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !129, line: 33, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2586, file: !173, line: 2087, baseType: !2699, size: 64, offset: 1536)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2586, file: !173, line: 2089, baseType: !1387, size: 64, offset: 1600)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1358, file: !173, line: 1198, baseType: !2716, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !2719)
!2719 = !{!2720, !2724, !2728, !2732, !2733, !2734, !2735, !2736, !2741, !2746, !2750}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2718, file: !178, line: 325, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!22, !2656}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2718, file: !178, line: 326, baseType: !2725, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!2656, !1357, !22}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2718, file: !178, line: 327, baseType: !2729, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2656}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2718, file: !178, line: 328, baseType: !2721, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2718, file: !178, line: 329, baseType: !2721, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2718, file: !178, line: 330, baseType: !2721, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2718, file: !178, line: 331, baseType: !2612, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2718, file: !178, line: 334, baseType: !2737, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!2740, !1156}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2718, file: !178, line: 335, baseType: !2742, size: 64, offset: 512)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!22, !1156, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2718, file: !178, line: 337, baseType: !2747, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!22, !1156, !2740}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2718, file: !178, line: 339, baseType: !2751, size: 64, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!22, !1357, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1358, file: !173, line: 1199, baseType: !2756, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !2759)
!2759 = !{!2760, !2764, !2765, !2769, !2770, !2771, !2786, !2809, !2813, !2814, !2837}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2758, file: !178, line: 431, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!22, !1357, !22, !22, !1277}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2758, file: !178, line: 432, baseType: !2612, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2758, file: !178, line: 433, baseType: !2766, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!22, !1357, !7}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2758, file: !178, line: 434, baseType: !2766, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2758, file: !178, line: 435, baseType: !2612, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2758, file: !178, line: 436, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!22, !1357, !22, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2776, file: !178, line: 418, baseType: !22, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2776, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2776, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2776, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2776, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2776, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2776, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2776, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2758, file: !178, line: 437, baseType: !2787, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!22, !1357, !2668, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2791, file: !178, line: 346, baseType: !22, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2791, file: !178, line: 347, baseType: !325, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2791, file: !178, line: 348, baseType: !325, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2791, file: !178, line: 349, baseType: !325, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2791, file: !178, line: 350, baseType: !325, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2791, file: !178, line: 351, baseType: !325, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2791, file: !178, line: 352, baseType: !325, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2791, file: !178, line: 353, baseType: !336, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2791, file: !178, line: 355, baseType: !336, size: 64, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2791, file: !178, line: 356, baseType: !22, size: 32, offset: 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2791, file: !178, line: 357, baseType: !22, size: 32, offset: 608)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2791, file: !178, line: 358, baseType: !325, size: 64, offset: 640)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2791, file: !178, line: 359, baseType: !325, size: 64, offset: 704)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2791, file: !178, line: 360, baseType: !325, size: 64, offset: 768)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2791, file: !178, line: 361, baseType: !336, size: 64, offset: 832)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2791, file: !178, line: 362, baseType: !22, size: 32, offset: 896)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2758, file: !178, line: 438, baseType: !2810, size: 64, offset: 448)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!22, !1357, !2754, !2790}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2758, file: !178, line: 440, baseType: !2787, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2758, file: !178, line: 441, baseType: !2815, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!22, !1357, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2819, file: !178, line: 412, baseType: !7, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2819, file: !178, line: 413, baseType: !2823, size: 1344, offset: 64)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2824, size: 1344, elements: !666)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2836}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2824, file: !178, line: 398, baseType: !7, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2824, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2824, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2824, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2824, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2824, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2824, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2824, file: !178, line: 406, baseType: !327, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2824, file: !178, line: 407, baseType: !2835, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !325)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2824, file: !178, line: 408, baseType: !2835, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2758, file: !178, line: 442, baseType: !2766, size: 64, offset: 640)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1358, file: !173, line: 1200, baseType: !2839, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1358, file: !173, line: 1201, baseType: !39, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1358, file: !173, line: 1202, baseType: !39, size: 64, offset: 704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1358, file: !173, line: 1203, baseType: !39, size: 64, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1358, file: !173, line: 1204, baseType: !1121, size: 64, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1358, file: !173, line: 1205, baseType: !806, size: 320, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1358, file: !173, line: 1206, baseType: !22, size: 32, offset: 1216)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1358, file: !173, line: 1207, baseType: !49, size: 32, offset: 1248)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1358, file: !173, line: 1209, baseType: !20, size: 64, offset: 1280)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1358, file: !173, line: 1211, baseType: !2851, size: 64, offset: 1344)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !173, line: 1211, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1358, file: !173, line: 1223, baseType: !2856, size: 64, offset: 1408)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1133, line: 34, size: 64, elements: !2857)
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2856, file: !1133, line: 35, baseType: !1136, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1358, file: !173, line: 1224, baseType: !97, size: 128, offset: 1472)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1358, file: !173, line: 1225, baseType: !2861, size: 64, offset: 1600)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !173, line: 1225, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1358, file: !173, line: 1226, baseType: !2864, size: 64, offset: 1664)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1358, file: !173, line: 1227, baseType: !2867, size: 64, offset: 1728)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !173, line: 50, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1358, file: !173, line: 1228, baseType: !2870, size: 64, offset: 1792)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1358, file: !173, line: 1229, baseType: !682, size: 128, offset: 1856)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1358, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1358, file: !173, line: 1231, baseType: !2875, size: 2496, offset: 2048)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2881, !2913}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2875, file: !178, line: 522, baseType: !7, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2875, file: !178, line: 523, baseType: !806, size: 320, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2875, file: !178, line: 524, baseType: !2880, size: 192, offset: 384)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 192, elements: !666)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2875, file: !178, line: 525, baseType: !2882, size: 1728, offset: 576)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2883, size: 1728, elements: !666)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !2884)
!2884 = !{!2885, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2883, file: !178, line: 223, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !2888)
!2888 = !{!2889, !2890, !2903, !2904}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2887, file: !178, line: 446, baseType: !22, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2887, file: !178, line: 447, baseType: !2891, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2893, file: !178, line: 313, baseType: !2612, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2893, file: !178, line: 314, baseType: !2612, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2893, file: !178, line: 315, baseType: !2612, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2893, file: !178, line: 316, baseType: !2612, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2893, file: !178, line: 317, baseType: !2721, size: 64, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2893, file: !178, line: 318, baseType: !2721, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2893, file: !178, line: 319, baseType: !2721, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2893, file: !178, line: 320, baseType: !2751, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2887, file: !178, line: 448, baseType: !1391, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2887, file: !178, line: 449, baseType: !2886, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2883, file: !178, line: 224, baseType: !22, size: 32, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2883, file: !178, line: 226, baseType: !97, size: 128, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2883, file: !178, line: 227, baseType: !39, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2883, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2883, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2883, file: !178, line: 230, baseType: !2689, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2883, file: !178, line: 231, baseType: !2689, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2883, file: !178, line: 232, baseType: !20, size: 64, offset: 512)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2875, file: !178, line: 526, baseType: !2914, size: 192, offset: 2304)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2891, size: 192, elements: !666)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1358, file: !173, line: 1233, baseType: !2916, size: 2368, offset: 4544)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2916, file: !173, line: 1185, baseType: !26, size: 16)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2916, file: !173, line: 1186, baseType: !26, size: 16, offset: 16)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2916, file: !173, line: 1187, baseType: !2921, size: 2304, offset: 64)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2922, size: 2304, elements: !666)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2923, line: 12, size: 768, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2924 = !{!2925, !2933, !2934, !2939, !2940}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2922, file: !2923, line: 13, baseType: !2926, size: 384)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2927, line: 17, size: 384, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2926, file: !2927, line: 18, baseType: !22, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2926, file: !2927, line: 19, baseType: !22, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2926, file: !2927, line: 20, baseType: !54, size: 192, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2926, file: !2927, line: 22, baseType: !610, size: 128, align: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2922, file: !2923, line: 14, baseType: !2315, size: 64, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2922, file: !2923, line: 15, baseType: !2935, size: 64, offset: 448)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2936, line: 16, size: 64, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2935, file: !2936, line: 17, baseType: !257, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2922, file: !2923, line: 16, baseType: !54, size: 192, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2922, file: !2923, line: 17, baseType: !49, size: 32, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1358, file: !173, line: 1240, baseType: !20, size: 64, offset: 6912)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1358, file: !173, line: 1243, baseType: !268, size: 32, offset: 6976)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1358, file: !173, line: 1245, baseType: !822, size: 64, offset: 7040)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1358, file: !173, line: 1246, baseType: !822, size: 64, offset: 7104)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1358, file: !173, line: 1248, baseType: !269, size: 32, offset: 7168)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1358, file: !173, line: 1249, baseType: !2947, size: 64, offset: 7232)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !217, line: 472, size: 256, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953, !2959, !2966}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2948, file: !217, line: 473, baseType: !59, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2948, file: !217, line: 474, baseType: !26, size: 16, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !217, line: 477, baseType: !26, size: 16, offset: 48)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !2948, file: !217, line: 478, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !37, line: 81, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 79, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2955, file: !37, line: 80, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !2353)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !217, line: 479, baseType: !2960, size: 64, offset: 128)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !217, line: 479, size: 64, elements: !2961)
!2961 = !{!2962, !2965}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2960, file: !217, line: 481, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !217, line: 464, baseType: !2947)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !2960, file: !217, line: 483, baseType: !2947, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2948, file: !217, line: 485, baseType: !678, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1358, file: !173, line: 1252, baseType: !2968, size: 256, offset: 7296)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !2969)
!2969 = !{!2970}
!2970 = !DISubrange(count: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1358, file: !173, line: 1253, baseType: !2972, size: 128, offset: 7552)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2973, line: 21, baseType: !2974)
!2973 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2973, line: 19, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2974, file: !2973, line: 20, baseType: !2977, size: 128)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1358, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1358, file: !173, line: 1261, baseType: !630, size: 256, offset: 7744)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1358, file: !173, line: 1267, baseType: !16, size: 64, offset: 8000)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1358, file: !173, line: 1269, baseType: !2984, size: 64, offset: 8064)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1123, line: 128, size: 1024, align: 512, elements: !2987)
!2987 = !{!2988, !2992, !2993, !3000, !3006, !3010, !3014, !3018, !3019, !3023, !3027, !3032, !3036}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2986, file: !1123, line: 129, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!22, !1121, !7}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2986, file: !1123, line: 130, baseType: !2989, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2986, file: !1123, line: 131, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!22, !2997, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2986, file: !1123, line: 132, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!22, !2997, !7, !16, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2986, file: !1123, line: 134, baseType: !3007, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!22, !2997}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2986, file: !1123, line: 135, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!22, !1121}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2986, file: !1123, line: 136, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !1121}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2986, file: !1123, line: 137, baseType: !3015, size: 64, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2986, file: !1123, line: 138, baseType: !3020, size: 64, offset: 512)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !1121, !1156}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2986, file: !1123, line: 139, baseType: !3024, size: 64, offset: 576)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!874, !1121, !874, !22}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2986, file: !1123, line: 140, baseType: !3028, size: 64, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!1116, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2986, file: !1123, line: 141, baseType: !3033, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!22, !1277, !786}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2986, file: !1123, line: 142, baseType: !3037, size: 64, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1121, !1121, !3040}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1358, file: !173, line: 1271, baseType: !3043, size: 448, offset: 8128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2704, line: 63, size: 448, elements: !3044)
!3044 = !{!3045, !3050, !3051, !3052, !3053, !3054, !3055}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3043, file: !2704, line: 64, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!39, !3049, !2702}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3043, file: !2704, line: 66, baseType: !3046, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3043, file: !2704, line: 69, baseType: !1011, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3043, file: !2704, line: 70, baseType: !22, size: 32, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3043, file: !2704, line: 71, baseType: !7, size: 32, offset: 224)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3043, file: !2704, line: 74, baseType: !97, size: 128, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3043, file: !2704, line: 85, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1358, file: !173, line: 1274, baseType: !623, size: 64, offset: 8576)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1358, file: !173, line: 1280, baseType: !623, size: 64, offset: 8640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1358, file: !173, line: 1283, baseType: !22, size: 32, offset: 8704)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1358, file: !173, line: 1286, baseType: !2022, size: 32, offset: 8736)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1358, file: !173, line: 1289, baseType: !2525, size: 64, offset: 8768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1358, file: !173, line: 1290, baseType: !678, size: 64, offset: 8832)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1358, file: !173, line: 1297, baseType: !728, size: 64, offset: 8896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1358, file: !173, line: 1304, baseType: !3065, size: 64, offset: 8960)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3066, line: 49, size: 64, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3065, file: !3066, line: 50, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3066, line: 41, size: 512, align: 512, elements: !3071)
!3071 = !{!3072, !3073, !3078}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !3066, line: 43, baseType: !59, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3070, file: !3066, line: 45, baseType: !3074, size: 192, offset: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3066, line: 29, size: 192, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3074, file: !3066, line: 30, baseType: !97, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3074, file: !3066, line: 32, baseType: !1011, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3070, file: !3066, line: 46, baseType: !1011, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1358, file: !173, line: 1305, baseType: !3065, size: 64, offset: 9024)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1358, file: !173, line: 1306, baseType: !610, size: 128, align: 64, offset: 9088)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1358, file: !173, line: 1307, baseType: !913, size: 256, offset: 9216)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1358, file: !173, line: 1309, baseType: !630, size: 256, offset: 9472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1358, file: !173, line: 1314, baseType: !22, size: 32, offset: 9728)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1358, file: !173, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1358, file: !173, line: 1318, baseType: !97, size: 128, offset: 10304)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1358, file: !173, line: 1320, baseType: !59, size: 32, offset: 10432)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1358, file: !173, line: 1321, baseType: !97, size: 128, offset: 10496)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1157, file: !173, line: 656, baseType: !1508, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1157, file: !173, line: 659, baseType: !20, size: 64, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1157, file: !173, line: 663, baseType: !39, size: 64, offset: 640)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !173, line: 671, baseType: !3092, size: 32, offset: 704)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !173, line: 671, size: 32, elements: !3093)
!3093 = !{!3094, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3092, file: !173, line: 672, baseType: !3095, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3092, file: !173, line: 673, baseType: !7, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1157, file: !173, line: 675, baseType: !1230, size: 32, offset: 736)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1157, file: !173, line: 676, baseType: !41, size: 64, offset: 768)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1157, file: !173, line: 677, baseType: !1266, size: 128, offset: 832)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1157, file: !173, line: 678, baseType: !1266, size: 128, offset: 960)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1157, file: !173, line: 679, baseType: !1266, size: 128, offset: 1088)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1157, file: !173, line: 680, baseType: !59, size: 32, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1157, file: !173, line: 681, baseType: !26, size: 16, offset: 1248)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1157, file: !173, line: 682, baseType: !83, size: 8, offset: 1264)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1157, file: !173, line: 683, baseType: !83, size: 8, offset: 1272)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1157, file: !173, line: 684, baseType: !2835, size: 64, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1157, file: !173, line: 691, baseType: !39, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1157, file: !173, line: 692, baseType: !806, size: 320, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1157, file: !173, line: 694, baseType: !39, size: 64, offset: 1728)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1157, file: !173, line: 695, baseType: !39, size: 64, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1157, file: !173, line: 697, baseType: !682, size: 128, offset: 1856)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1157, file: !173, line: 698, baseType: !97, size: 128, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1157, file: !173, line: 707, baseType: !97, size: 128, offset: 2112)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1157, file: !173, line: 708, baseType: !97, size: 128, offset: 2240)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !173, line: 709, baseType: !3116, size: 128, offset: 2368)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !173, line: 709, size: 128, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3116, file: !173, line: 710, baseType: !678, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3116, file: !173, line: 711, baseType: !610, size: 128, align: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1157, file: !173, line: 713, baseType: !625, size: 64, offset: 2496)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1157, file: !173, line: 714, baseType: !625, size: 64, offset: 2560)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1157, file: !173, line: 715, baseType: !49, size: 32, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1157, file: !173, line: 716, baseType: !49, size: 32, offset: 2656)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1157, file: !173, line: 717, baseType: !49, size: 32, offset: 2688)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1157, file: !173, line: 719, baseType: !49, size: 32, offset: 2720)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !173, line: 721, baseType: !3127, size: 64, offset: 2752)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !173, line: 721, size: 64, elements: !3128)
!3128 = !{!3129, !3255}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3127, file: !173, line: 722, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !3133)
!3133 = !{!3134, !3135, !3139, !3143, !3147, !3148, !3149, !3155, !3168, !3172, !3176, !3177, !3181, !3182, !3186, !3191, !3192, !3196, !3200, !3206, !3207, !3211, !3212, !3218, !3222, !3223, !3228, !3232, !3236, !3240, !3244, !3245, !3251}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3132, file: !173, line: 1915, baseType: !1391, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3132, file: !173, line: 1916, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!41, !602, !41, !22}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3132, file: !173, line: 1917, baseType: !3140, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!1308, !602, !874, !35, !40}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3132, file: !173, line: 1918, baseType: !3144, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!1308, !602, !16, !35, !40}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3132, file: !173, line: 1919, baseType: !1940, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3132, file: !173, line: 1920, baseType: !1940, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3132, file: !173, line: 1921, baseType: !3150, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!22, !1943, !3153, !7}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3132, file: !173, line: 1923, baseType: !3156, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!22, !602, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !3161)
!3161 = !{!3162, !3167}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3160, file: !173, line: 1859, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!786, !3159, !16, !22, !41, !325, !7}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3160, file: !173, line: 1860, baseType: !41, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3132, file: !173, line: 1924, baseType: !3169, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!2190, !602, !2192}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3132, file: !173, line: 1925, baseType: !3173, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!1011, !602, !7, !39}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3132, file: !173, line: 1926, baseType: !3173, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3132, file: !173, line: 1927, baseType: !3178, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!22, !602, !1638}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3132, file: !173, line: 1928, baseType: !39, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3132, file: !173, line: 1929, baseType: !3183, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!22, !1156, !602}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3132, file: !173, line: 1930, baseType: !3187, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!22, !602, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !20)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3132, file: !173, line: 1931, baseType: !3183, size: 64, offset: 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3132, file: !173, line: 1932, baseType: !3193, size: 64, offset: 1024)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!22, !602, !41, !41, !22}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3132, file: !173, line: 1933, baseType: !3197, size: 64, offset: 1088)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!22, !22, !602, !22}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3132, file: !173, line: 1934, baseType: !3201, size: 64, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!22, !602, !22, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !173, line: 1063, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3132, file: !173, line: 1935, baseType: !599, size: 64, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3132, file: !173, line: 1936, baseType: !3208, size: 64, offset: 1280)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!22, !22}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3132, file: !173, line: 1937, baseType: !3201, size: 64, offset: 1344)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3132, file: !173, line: 1938, baseType: !3213, size: 64, offset: 1408)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!1308, !3216, !602, !40, !35, !7}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !259, line: 59, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3132, file: !173, line: 1939, baseType: !3219, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!1308, !602, !40, !3216, !35, !7}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3132, file: !173, line: 1940, baseType: !2012, size: 64, offset: 1536)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3132, file: !173, line: 1941, baseType: !3224, size: 64, offset: 1600)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!22, !602, !22, !3227, !1917}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3132, file: !173, line: 1942, baseType: !3229, size: 64, offset: 1664)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!1011, !602, !22, !41, !41}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3132, file: !173, line: 1944, baseType: !3233, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !2123, !602}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3132, file: !173, line: 1948, baseType: !3237, size: 64, offset: 1792)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!1308, !602, !41, !602, !41, !35, !7}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3132, file: !173, line: 1950, baseType: !3241, size: 64, offset: 1856)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!41, !602, !41, !602, !41, !41, !7}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3132, file: !173, line: 1953, baseType: !3193, size: 64, offset: 1920)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3132, file: !173, line: 1954, baseType: !3246, size: 64, offset: 1984)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!22, !3249, !7}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3132, file: !173, line: 1955, baseType: !3252, size: 64, offset: 2048)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!22, !3249, !3153, !7}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3127, file: !173, line: 723, baseType: !2593, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1157, file: !173, line: 725, baseType: !3257, size: 64, offset: 2816)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !173, line: 725, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1157, file: !173, line: 726, baseType: !1509, size: 1536, align: 64, offset: 2880)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1157, file: !173, line: 727, baseType: !97, size: 128, offset: 4416)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !173, line: 728, baseType: !3262, size: 64, offset: 4544)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !173, line: 728, size: 64, elements: !3263)
!3263 = !{!3264, !3265, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3262, file: !173, line: 729, baseType: !3216, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3262, file: !173, line: 730, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3262, file: !173, line: 731, baseType: !874, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3262, file: !173, line: 732, baseType: !7, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1157, file: !173, line: 735, baseType: !269, size: 32, offset: 4608)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1157, file: !173, line: 738, baseType: !269, size: 32, offset: 4640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1157, file: !173, line: 739, baseType: !2947, size: 64, offset: 4672)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1157, file: !173, line: 750, baseType: !20, size: 64, offset: 4736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1122, file: !1123, line: 91, baseType: !3275, size: 256, offset: 448)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !2969)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1122, file: !1123, line: 94, baseType: !3277, size: 64, offset: 704)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3278, line: 25, size: 64, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !3278, line: 26, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3278, line: 26, size: 64, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3281, file: !3278, line: 28, baseType: !326, size: 64, align: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !3278, line: 30, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3278, line: 30, size: 64, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3285, file: !3278, line: 31, baseType: !59, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3285, file: !3278, line: 32, baseType: !22, size: 32, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1122, file: !1123, line: 95, baseType: !2984, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1122, file: !1123, line: 96, baseType: !1357, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1122, file: !1123, line: 97, baseType: !39, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1122, file: !1123, line: 98, baseType: !20, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1123, line: 100, baseType: !3294, size: 128, offset: 1024)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1123, line: 100, size: 128, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3294, file: !1123, line: 101, baseType: !97, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3294, file: !1123, line: 102, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1122, file: !1123, line: 104, baseType: !97, size: 128, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1122, file: !1123, line: 105, baseType: !97, size: 128, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1122, file: !1123, line: 113, baseType: !3302, size: 128, offset: 1408)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1123, line: 109, size: 128, elements: !3303)
!3303 = !{!3304, !3305, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3302, file: !1123, line: 110, baseType: !682, size: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3302, file: !1123, line: 111, baseType: !1132, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3302, file: !1123, line: 112, baseType: !610, size: 128, align: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1117, file: !1118, line: 72, baseType: !1357, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1117, file: !1118, line: 73, baseType: !22, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1117, file: !1118, line: 74, baseType: !1195, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1112, file: !1113, line: 10, baseType: !1121, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !603, file: !173, line: 1015, baseType: !1156, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !603, file: !173, line: 1016, baseType: !3130, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !603, file: !173, line: 1018, baseType: !325, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !603, file: !173, line: 1020, baseType: !20, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !603, file: !173, line: 1023, baseType: !20, size: 64, offset: 1600)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !603, file: !173, line: 1027, baseType: !3317, size: 64, offset: 1664)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !603, file: !173, line: 1029, baseType: !1508, size: 64, offset: 1728)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !603, file: !173, line: 1030, baseType: !2022, size: 32, offset: 1792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !603, file: !173, line: 1031, baseType: !2022, size: 32, offset: 1824)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !578, file: !129, line: 756, baseType: !39, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !578, file: !129, line: 757, baseType: !39, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !578, file: !129, line: 760, baseType: !39, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !578, file: !129, line: 761, baseType: !39, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !578, file: !129, line: 763, baseType: !39, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !578, file: !129, line: 764, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1653, line: 299, baseType: !3329)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1653, line: 299, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3329, file: !1653, line: 299, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1658, line: 18, baseType: !39)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !578, file: !129, line: 773, baseType: !49, size: 32, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !578, file: !129, line: 785, baseType: !49, size: 32, offset: 1120)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !578, file: !129, line: 795, baseType: !3336, size: 64, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !129, line: 726, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3337, file: !129, line: 727, baseType: !325, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3337, file: !129, line: 728, baseType: !22, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !578, file: !129, line: 801, baseType: !39, size: 64, offset: 1216)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !578, file: !129, line: 804, baseType: !623, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !578, file: !129, line: 806, baseType: !22, size: 32, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !578, file: !129, line: 808, baseType: !59, size: 32, offset: 1376)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !578, file: !129, line: 823, baseType: !806, size: 320, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !578, file: !129, line: 825, baseType: !97, size: 128, offset: 1728)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !578, file: !129, line: 845, baseType: !22, size: 32, offset: 1856)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !578, file: !129, line: 849, baseType: !39, size: 64, offset: 1920)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !578, file: !129, line: 850, baseType: !39, size: 64, offset: 1984)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !578, file: !129, line: 852, baseType: !39, size: 64, offset: 2048)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !578, file: !129, line: 853, baseType: !39, size: 64, offset: 2112)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !578, file: !129, line: 854, baseType: !625, size: 64, offset: 2176)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !578, file: !129, line: 855, baseType: !39, size: 64, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !578, file: !129, line: 856, baseType: !39, size: 64, offset: 2304)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !578, file: !129, line: 857, baseType: !39, size: 64, offset: 2368)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !578, file: !129, line: 858, baseType: !39, size: 64, offset: 2432)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !578, file: !129, line: 865, baseType: !448, size: 32, offset: 2496)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !578, file: !129, line: 867, baseType: !59, size: 32, offset: 2528)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !578, file: !129, line: 869, baseType: !39, size: 64, offset: 2560)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !578, file: !129, line: 869, baseType: !39, size: 64, offset: 2624)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !578, file: !129, line: 869, baseType: !39, size: 64, offset: 2688)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !578, file: !129, line: 869, baseType: !39, size: 64, offset: 2752)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !578, file: !129, line: 870, baseType: !39, size: 64, offset: 2816)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !578, file: !129, line: 870, baseType: !39, size: 64, offset: 2880)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !578, file: !129, line: 870, baseType: !39, size: 64, offset: 2944)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !578, file: !129, line: 871, baseType: !39, size: 64, offset: 3008)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !578, file: !129, line: 871, baseType: !39, size: 64, offset: 3072)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !578, file: !129, line: 871, baseType: !39, size: 64, offset: 3136)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !578, file: !129, line: 871, baseType: !39, size: 64, offset: 3200)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !578, file: !129, line: 873, baseType: !3371, size: 3328, offset: 3264)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !3372)
!3372 = !{!3373}
!3373 = !DISubrange(count: 52)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !578, file: !129, line: 875, baseType: !3375, size: 1280, offset: 6592)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 1280, elements: !687)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !578, file: !129, line: 877, baseType: !3377, size: 64, offset: 7872)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !129, line: 877, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !578, file: !129, line: 880, baseType: !3380, size: 1088, offset: 7936)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3381, line: 72, baseType: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 23, size: 1088, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3391, !3392, !3393, !3394, !3419, !3420, !3421}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3382, file: !3381, line: 28, baseType: !325, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3382, file: !3381, line: 38, baseType: !625, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3382, file: !3381, line: 40, baseType: !39, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3382, file: !3381, line: 43, baseType: !806, size: 320, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3382, file: !3381, line: 44, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3381, line: 44, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3381, line: 48, baseType: !39, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !3381, line: 59, baseType: !630, size: 256, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3382, file: !3381, line: 60, baseType: !20, size: 64, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3382, file: !3381, line: 61, baseType: !3395, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3398, line: 13, size: 1216, elements: !3399)
!3398 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3397, file: !3398, line: 14, baseType: !20, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3397, file: !3398, line: 15, baseType: !39, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3397, file: !3398, line: 17, baseType: !39, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3397, file: !3398, line: 17, baseType: !39, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3397, file: !3398, line: 18, baseType: !39, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3397, file: !3398, line: 18, baseType: !39, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3397, file: !3398, line: 19, baseType: !2061, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3397, file: !3398, line: 21, baseType: !1011, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3397, file: !3398, line: 23, baseType: !1011, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3397, file: !3398, line: 24, baseType: !1011, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3397, file: !3398, line: 25, baseType: !1011, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3397, file: !3398, line: 26, baseType: !1011, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3397, file: !3398, line: 27, baseType: !1011, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3397, file: !3398, line: 28, baseType: !1011, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3397, file: !3398, line: 29, baseType: !1011, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3397, file: !3398, line: 30, baseType: !1011, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3397, file: !3398, line: 31, baseType: !1011, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3397, file: !3398, line: 32, baseType: !1011, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3397, file: !3398, line: 33, baseType: !1011, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3382, file: !3381, line: 63, baseType: !49, size: 32, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3382, file: !3381, line: 69, baseType: !93, size: 16, offset: 1056)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3382, file: !3381, line: 70, baseType: !2369, size: 16, offset: 1072)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !129, line: 882, baseType: !39, size: 64, offset: 9024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !578, file: !129, line: 885, baseType: !59, size: 32, offset: 9088)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !578, file: !129, line: 886, baseType: !3425, size: 64, offset: 9152)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !129, line: 732, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !578, file: !129, line: 901, baseType: !728, size: 64, offset: 9216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !578, file: !129, line: 904, baseType: !602, size: 64, offset: 9280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !578, file: !129, line: 906, baseType: !3430, size: 64, offset: 9344)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !129, line: 906, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !578, file: !129, line: 930, baseType: !49, size: 32, offset: 9408)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !578, file: !129, line: 933, baseType: !49, size: 32, offset: 9440)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !578, file: !129, line: 935, baseType: !3435, size: 64, offset: 9472)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !145, line: 103, size: 64, elements: !3436)
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3435, file: !145, line: 104, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !145, line: 101, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !578, file: !129, line: 940, baseType: !623, size: 64, offset: 9536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !578, file: !129, line: 942, baseType: !913, size: 256, offset: 9600)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !575, file: !129, line: 986, baseType: !3443, offset: 10240)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1018)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !258, file: !259, line: 882, baseType: !574, size: 64, offset: 9792)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !258, file: !259, line: 884, baseType: !22, size: 32, offset: 9856)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !258, file: !259, line: 885, baseType: !22, size: 32, offset: 9888)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !258, file: !259, line: 886, baseType: !22, size: 32, offset: 9920)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !258, file: !259, line: 888, baseType: !22, size: 32, offset: 9952)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !258, file: !259, line: 890, baseType: !39, size: 64, offset: 9984)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !258, file: !259, line: 893, baseType: !7, size: 32, offset: 10048)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !258, file: !259, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !258, file: !259, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !258, file: !259, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !258, file: !259, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !258, file: !259, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !258, file: !259, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !258, file: !259, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !258, file: !259, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !258, file: !259, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !258, file: !259, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !258, file: !259, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !258, file: !259, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !258, file: !259, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !258, file: !259, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !258, file: !259, line: 969, baseType: !39, size: 64, offset: 10176)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !258, file: !259, line: 971, baseType: !3467, size: 448, offset: 10240)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !3468)
!3468 = !{!3469, !3470, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3467, file: !108, line: 26, baseType: !39, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3467, file: !108, line: 27, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!1011, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !108, line: 28, baseType: !3476, size: 320, offset: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3467, file: !108, line: 28, size: 320, elements: !3477)
!3477 = !{!3478, !3488, !3513}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3476, file: !108, line: 37, baseType: !3479, size: 320)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !108, line: 30, size: 320, elements: !3480)
!3480 = !{!3481, !3483, !3484, !3485, !3486, !3487}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3479, file: !108, line: 31, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3479, file: !108, line: 32, baseType: !268, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3479, file: !108, line: 33, baseType: !268, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3479, file: !108, line: 34, baseType: !268, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3479, file: !108, line: 35, baseType: !325, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3479, file: !108, line: 36, baseType: !3482, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3476, file: !108, line: 47, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !108, line: 39, size: 192, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3512}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3489, file: !108, line: 40, baseType: !440, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3489, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3489, file: !108, line: 42, baseType: !3494, size: 64, offset: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3489, file: !108, line: 42, size: 64, elements: !3495)
!3495 = !{!3496, !3504}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3494, file: !108, line: 43, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3499, line: 7, size: 128, elements: !3500)
!3499 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3500 = !{!3501, !3503}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3498, file: !3499, line: 8, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3498, file: !3499, line: 9, baseType: !43, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3494, file: !108, line: 44, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3507, line: 7, size: 64, elements: !3508)
!3507 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3508 = !{!3509, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3506, file: !3507, line: 8, baseType: !3510, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3507, line: 5, baseType: !798)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3506, file: !3507, line: 9, baseType: !798, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3489, file: !108, line: 46, baseType: !325, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3476, file: !108, line: 55, baseType: !3514, size: 256)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !108, line: 49, size: 256, elements: !3515)
!3515 = !{!3516, !3519, !3520, !3521, !3522}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3514, file: !108, line: 50, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !108, line: 14, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3514, file: !108, line: 51, baseType: !22, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3514, file: !108, line: 52, baseType: !22, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3514, file: !108, line: 53, baseType: !39, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3514, file: !108, line: 54, baseType: !39, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !258, file: !259, line: 973, baseType: !3524, size: 32, offset: 10688)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !3525)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !258, file: !259, line: 974, baseType: !3524, size: 32, offset: 10720)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !258, file: !259, line: 978, baseType: !39, size: 64, offset: 10752)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !258, file: !259, line: 987, baseType: !257, size: 64, offset: 10816)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !259, line: 990, baseType: !257, size: 64, offset: 10880)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !258, file: !259, line: 995, baseType: !97, size: 128, offset: 10944)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !258, file: !259, line: 996, baseType: !97, size: 128, offset: 11072)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !258, file: !259, line: 997, baseType: !257, size: 64, offset: 11200)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !258, file: !259, line: 1005, baseType: !97, size: 128, offset: 11264)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !258, file: !259, line: 1006, baseType: !97, size: 128, offset: 11392)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !258, file: !259, line: 1009, baseType: !670, size: 64, offset: 11520)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !258, file: !259, line: 1010, baseType: !3537, size: 512, offset: 11584)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 512, elements: !687)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !258, file: !259, line: 1011, baseType: !97, size: 128, offset: 12096)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !258, file: !259, line: 1012, baseType: !97, size: 128, offset: 12224)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !258, file: !259, line: 1014, baseType: !951, size: 64, offset: 12352)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !258, file: !259, line: 1017, baseType: !255, size: 64, offset: 12416)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !258, file: !259, line: 1020, baseType: !255, size: 64, offset: 12480)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !258, file: !259, line: 1023, baseType: !20, size: 64, offset: 12544)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !258, file: !259, line: 1025, baseType: !325, size: 64, offset: 12608)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !258, file: !259, line: 1026, baseType: !325, size: 64, offset: 12672)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !258, file: !259, line: 1031, baseType: !325, size: 64, offset: 12736)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !258, file: !259, line: 1032, baseType: !3548, size: 192, offset: 12800)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !259, line: 324, size: 192, elements: !3549)
!3549 = !{!3550, !3551, !3552}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3548, file: !259, line: 326, baseType: !325, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3548, file: !259, line: 327, baseType: !325, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3548, file: !259, line: 328, baseType: !417, size: 32, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !258, file: !259, line: 1041, baseType: !39, size: 64, offset: 12992)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !258, file: !259, line: 1042, baseType: !39, size: 64, offset: 13056)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !258, file: !259, line: 1045, baseType: !325, size: 64, offset: 13120)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !258, file: !259, line: 1048, baseType: !325, size: 64, offset: 13184)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !258, file: !259, line: 1051, baseType: !39, size: 64, offset: 13248)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !258, file: !259, line: 1052, baseType: !39, size: 64, offset: 13312)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !258, file: !259, line: 1055, baseType: !3560, size: 640, offset: 13376)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3561, line: 132, size: 640, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3562 = !{!3563, !3569, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3560, file: !3561, line: 133, baseType: !3564, size: 576)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3565, size: 576, elements: !666)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3561, line: 117, size: 192, elements: !3566)
!3566 = !{!3567, !3568}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3565, file: !3561, line: 118, baseType: !325, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3565, file: !3561, line: 119, baseType: !454, size: 128, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3560, file: !3561, line: 134, baseType: !7, size: 32, offset: 576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3560, file: !3561, line: 135, baseType: !7, size: 32, offset: 608)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !258, file: !259, line: 1058, baseType: !3572, size: 448, offset: 14016)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3561, line: 144, size: 448, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3572, file: !3561, line: 145, baseType: !610, size: 128, align: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3572, file: !3561, line: 146, baseType: !630, size: 256, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3572, file: !3561, line: 147, baseType: !7, size: 32, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !258, file: !259, line: 1064, baseType: !1025, size: 64, offset: 14464)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !258, file: !259, line: 1067, baseType: !1025, size: 64, offset: 14528)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !258, file: !259, line: 1070, baseType: !1025, size: 64, offset: 14592)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !258, file: !259, line: 1074, baseType: !790, size: 64, offset: 14656)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !258, file: !259, line: 1084, baseType: !3582, size: 128, offset: 14720)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !2978)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !258, file: !259, line: 1086, baseType: !3584, size: 64, offset: 14848)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !259, line: 55, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !258, file: !259, line: 1089, baseType: !3587, size: 64, offset: 14912)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3588, line: 12, size: 64, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3589 = !{!3590}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3587, file: !3588, line: 13, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3588, line: 8, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !258, file: !259, line: 1090, baseType: !3594, size: 128, offset: 14976)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3595, line: 13, size: 128, elements: !3596)
!3595 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3596 = !{!3597}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3594, file: !3595, line: 14, baseType: !97, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !258, file: !259, line: 1097, baseType: !3599, size: 64, offset: 15104)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !259, line: 50, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !258, file: !259, line: 1100, baseType: !3602, size: 64, offset: 15168)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !259, line: 1100, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !258, file: !259, line: 1103, baseType: !3605, size: 64, offset: 15232)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !259, line: 53, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !258, file: !259, line: 1107, baseType: !3608, size: 64, offset: 15296)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3610, line: 31, size: 576, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3611 = !{!3612, !3613, !3616, !3619, !3622, !3623, !3626, !3629, !3630}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3609, file: !3610, line: 32, baseType: !274, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3609, file: !3610, line: 33, baseType: !3614, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3610, line: 9, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3609, file: !3610, line: 34, baseType: !3617, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3610, line: 10, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3609, file: !3610, line: 35, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3610, line: 8, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3609, file: !3610, line: 36, baseType: !698, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3609, file: !3610, line: 37, baseType: !3624, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !792, line: 34, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3609, file: !3610, line: 38, baseType: !3627, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3610, line: 38, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3609, file: !3610, line: 39, baseType: !3627, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3609, file: !3610, line: 40, baseType: !3631, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3610, line: 12, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !258, file: !259, line: 1110, baseType: !3634, size: 64, offset: 15360)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3636, line: 93, size: 8768, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3637 = !{!3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3686, !3695, !3696, !3698, !3699, !3700, !3703, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3741, !3742, !3749, !3759, !3762, !3763, !3766, !3767, !3768, !3769, !3770, !3771}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3635, file: !3636, line: 94, baseType: !274, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3635, file: !3636, line: 95, baseType: !49, size: 32, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3635, file: !3636, line: 96, baseType: !22, size: 32, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3635, file: !3636, line: 97, baseType: !22, size: 32, offset: 96)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3635, file: !3636, line: 98, baseType: !97, size: 128, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3635, file: !3636, line: 100, baseType: !54, size: 192, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3635, file: !3636, line: 103, baseType: !257, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3635, file: !3636, line: 106, baseType: !3646, size: 192, offset: 512)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3647, line: 32, size: 192, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3646, file: !3647, line: 33, baseType: !97, size: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3646, file: !3647, line: 34, baseType: !3651, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3652, line: 25, baseType: !3653)
!3652 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3652, line: 23, size: 64, elements: !3654)
!3654 = !{!3655}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3653, file: !3652, line: 24, baseType: !525, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3635, file: !3636, line: 109, baseType: !678, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3635, file: !3636, line: 112, baseType: !22, size: 32, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3635, file: !3636, line: 114, baseType: !22, size: 32, offset: 800)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3635, file: !3636, line: 115, baseType: !257, size: 64, offset: 832)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3635, file: !3636, line: 118, baseType: !22, size: 32, offset: 896)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !3636, line: 119, baseType: !7, size: 32, offset: 928)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3635, file: !3636, line: 121, baseType: !3663, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3636, line: 80, size: 448, elements: !3665)
!3665 = !{!3666, !3667, !3673}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3664, file: !3636, line: 81, baseType: !49, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3664, file: !3636, line: 82, baseType: !3668, size: 128, offset: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3636, line: 75, size: 128, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3668, file: !3636, line: 76, baseType: !257, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3668, file: !3636, line: 77, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3664, file: !3636, line: 83, baseType: !952, size: 256, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3635, file: !3636, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3635, file: !3636, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3635, file: !3636, line: 138, baseType: !7, size: 32, offset: 1056)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3635, file: !3636, line: 139, baseType: !97, size: 128, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3635, file: !3636, line: 142, baseType: !392, size: 512, offset: 1216)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3635, file: !3636, line: 143, baseType: !400, size: 64, offset: 1728)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3635, file: !3636, line: 150, baseType: !3681, size: 256, offset: 1792)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3682, size: 256, elements: !2353)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3636, line: 38, size: 128, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3682, file: !3636, line: 39, baseType: !325, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3682, file: !3636, line: 40, baseType: !325, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3635, file: !3636, line: 156, baseType: !3687, size: 192, offset: 2048)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3636, line: 66, size: 192, elements: !3688)
!3688 = !{!3689}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3687, file: !3636, line: 67, baseType: !3690, size: 192)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3636, line: 47, size: 192, elements: !3691)
!3691 = !{!3692, !3693, !3694}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3690, file: !3636, line: 48, baseType: !625, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3690, file: !3636, line: 49, baseType: !625, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3690, file: !3636, line: 50, baseType: !625, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3635, file: !3636, line: 160, baseType: !3560, size: 640, offset: 2240)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3635, file: !3636, line: 163, baseType: !3697, size: 256, offset: 2880)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !687)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3635, file: !3636, line: 169, baseType: !670, size: 64, offset: 3136)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3635, file: !3636, line: 172, baseType: !22, size: 32, offset: 3200)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3635, file: !3636, line: 174, baseType: !3701, size: 64, offset: 3264)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3636, line: 174, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3635, file: !3636, line: 185, baseType: !3704, size: 64, offset: 3328)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !444, line: 860, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 853, size: 64, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3705, file: !444, line: 858, baseType: !1127, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3705, file: !444, line: 859, baseType: !59, size: 32, offset: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3635, file: !3636, line: 186, baseType: !325, size: 64, offset: 3392)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3635, file: !3636, line: 186, baseType: !325, size: 64, offset: 3456)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3635, file: !3636, line: 186, baseType: !325, size: 64, offset: 3520)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3635, file: !3636, line: 186, baseType: !325, size: 64, offset: 3584)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3635, file: !3636, line: 187, baseType: !325, size: 64, offset: 3648)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3635, file: !3636, line: 188, baseType: !325, size: 64, offset: 3712)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3635, file: !3636, line: 189, baseType: !3548, size: 192, offset: 3776)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3635, file: !3636, line: 190, baseType: !39, size: 64, offset: 3968)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3635, file: !3636, line: 190, baseType: !39, size: 64, offset: 4032)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3635, file: !3636, line: 190, baseType: !39, size: 64, offset: 4096)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3635, file: !3636, line: 190, baseType: !39, size: 64, offset: 4160)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3635, file: !3636, line: 191, baseType: !39, size: 64, offset: 4224)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3635, file: !3636, line: 191, baseType: !39, size: 64, offset: 4288)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3635, file: !3636, line: 191, baseType: !39, size: 64, offset: 4352)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3635, file: !3636, line: 191, baseType: !39, size: 64, offset: 4416)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3635, file: !3636, line: 192, baseType: !39, size: 64, offset: 4480)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3635, file: !3636, line: 192, baseType: !39, size: 64, offset: 4544)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3635, file: !3636, line: 192, baseType: !39, size: 64, offset: 4608)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3635, file: !3636, line: 192, baseType: !39, size: 64, offset: 4672)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3635, file: !3636, line: 193, baseType: !39, size: 64, offset: 4736)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3635, file: !3636, line: 193, baseType: !39, size: 64, offset: 4800)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3635, file: !3636, line: 194, baseType: !3731, size: 448, offset: 4864)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3732, line: 12, size: 448, elements: !3733)
!3732 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3731, file: !3732, line: 15, baseType: !325, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3731, file: !3732, line: 17, baseType: !325, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3731, file: !3732, line: 19, baseType: !325, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3731, file: !3732, line: 21, baseType: !325, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3731, file: !3732, line: 29, baseType: !325, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3731, file: !3732, line: 35, baseType: !325, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3731, file: !3732, line: 44, baseType: !325, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3635, file: !3636, line: 202, baseType: !327, size: 64, offset: 5312)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3635, file: !3636, line: 213, baseType: !3743, size: 2048, offset: 5376)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3744, size: 2048, elements: !2978)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3745, line: 43, size: 128, elements: !3746)
!3745 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3746 = !{!3747, !3748}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3744, file: !3745, line: 44, baseType: !38, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3744, file: !3745, line: 45, baseType: !38, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3635, file: !3636, line: 216, baseType: !3750, size: 448, offset: 7424)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3636, line: 30, size: 448, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3750, file: !3636, line: 31, baseType: !22, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3750, file: !3636, line: 32, baseType: !1011, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3750, file: !3636, line: 33, baseType: !39, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3750, file: !3636, line: 34, baseType: !325, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3750, file: !3636, line: 34, baseType: !325, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3750, file: !3636, line: 35, baseType: !39, size: 64, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3750, file: !3636, line: 35, baseType: !39, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3635, file: !3636, line: 219, baseType: !3760, size: 64, offset: 7872)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3636, line: 219, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3635, file: !3636, line: 222, baseType: !7, size: 32, offset: 7936)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3635, file: !3636, line: 223, baseType: !3764, size: 64, offset: 8000)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3636, line: 223, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3635, file: !3636, line: 230, baseType: !786, size: 8, offset: 8064)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3635, file: !3636, line: 231, baseType: !834, size: 16, offset: 8080)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3635, file: !3636, line: 232, baseType: !834, size: 16, offset: 8096)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3635, file: !3636, line: 234, baseType: !574, size: 64, offset: 8128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3635, file: !3636, line: 237, baseType: !630, size: 256, offset: 8192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3635, file: !3636, line: 243, baseType: !806, size: 320, offset: 8448)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !258, file: !259, line: 1111, baseType: !3773, size: 64, offset: 15424)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3636, line: 20, size: 16640, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3774, file: !3636, line: 21, baseType: !59, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3774, file: !3636, line: 22, baseType: !274, size: 32, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3774, file: !3636, line: 23, baseType: !54, size: 192, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3774, file: !3636, line: 24, baseType: !3780, size: 16384, offset: 256)
!3780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3781, size: 16384, elements: !1447)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3647, line: 51, size: 256, elements: !3782)
!3782 = !{!3783}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3781, file: !3647, line: 52, baseType: !3784, size: 256)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3647, line: 37, size: 256, elements: !3785)
!3785 = !{!3786, !3793, !3794, !3798}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3784, file: !3647, line: 39, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3788, line: 83, baseType: !3789)
!3788 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3788, line: 82, baseType: !3791)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !22}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3784, file: !3647, line: 40, baseType: !39, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3784, file: !3647, line: 46, baseType: !3795, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3788, line: 86, baseType: !3796)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3788, line: 85, baseType: !2568)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3784, file: !3647, line: 48, baseType: !3651, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !258, file: !259, line: 1112, baseType: !3651, size: 64, offset: 15488)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !258, file: !259, line: 1113, baseType: !3651, size: 64, offset: 15552)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !258, file: !259, line: 1115, baseType: !3651, size: 64, offset: 15616)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !258, file: !259, line: 1116, baseType: !3646, size: 192, offset: 15680)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !258, file: !259, line: 1117, baseType: !39, size: 64, offset: 15872)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !258, file: !259, line: 1118, baseType: !35, size: 64, offset: 15936)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !258, file: !259, line: 1119, baseType: !7, size: 32, offset: 16000)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !258, file: !259, line: 1121, baseType: !613, size: 64, offset: 16064)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !258, file: !259, line: 1125, baseType: !3808, size: 64, offset: 16128)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !259, line: 43, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !258, file: !259, line: 1127, baseType: !759, size: 32, offset: 16192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !258, file: !259, line: 1128, baseType: !7, size: 32, offset: 16224)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !258, file: !259, line: 1130, baseType: !3813, size: 128, offset: 16256)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3814, line: 37, size: 128, elements: !3815)
!3814 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3815 = !{!3816, !3817, !3818}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3813, file: !3814, line: 38, baseType: !22, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3813, file: !3814, line: 39, baseType: !49, size: 32, offset: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3813, file: !3814, line: 40, baseType: !3819, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3814, line: 24, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !258, file: !259, line: 1131, baseType: !3822, size: 256, offset: 16384)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3823, line: 12, size: 256, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3824 = !{!3825, !3826, !3827, !3828}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3822, file: !3823, line: 13, baseType: !874, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3822, file: !3823, line: 14, baseType: !39, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3822, file: !3823, line: 15, baseType: !39, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3822, file: !3823, line: 16, baseType: !786, size: 8, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !258, file: !259, line: 1134, baseType: !325, size: 64, offset: 16640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !258, file: !259, line: 1135, baseType: !325, size: 64, offset: 16704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !258, file: !259, line: 1138, baseType: !59, size: 32, offset: 16768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !258, file: !259, line: 1141, baseType: !417, size: 32, offset: 16800)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !258, file: !259, line: 1143, baseType: !3834, size: 64, offset: 16832)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !259, line: 735, size: 64, elements: !3835)
!3835 = !{!3836}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3834, file: !259, line: 736, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !258, file: !259, line: 1147, baseType: !457, size: 128, offset: 16896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !258, file: !259, line: 1149, baseType: !257, size: 64, offset: 17024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !258, file: !259, line: 1151, baseType: !3841, size: 64, offset: 17088)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !259, line: 1151, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !258, file: !259, line: 1188, baseType: !20, size: 64, offset: 17152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !258, file: !259, line: 1191, baseType: !3845, size: 64, offset: 17216)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !259, line: 44, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !258, file: !259, line: 1194, baseType: !3848, size: 64, offset: 17280)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !259, line: 45, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !258, file: !259, line: 1197, baseType: !3851, size: 64, offset: 17344)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !259, line: 61, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !258, file: !259, line: 1199, baseType: !3854, size: 64, offset: 17408)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3856, line: 99, size: 128, elements: !3857)
!3856 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3857 = !{!3858, !3859, !3860}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3855, file: !3856, line: 100, baseType: !623, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3855, file: !3856, line: 101, baseType: !49, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3855, file: !3856, line: 103, baseType: !26, size: 16, offset: 96)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !258, file: !259, line: 1202, baseType: !3862, size: 64, offset: 17472)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !259, line: 48, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !258, file: !259, line: 1205, baseType: !39, size: 64, offset: 17536)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !258, file: !259, line: 1206, baseType: !3866, size: 64, offset: 17600)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3647, line: 14, baseType: !3868)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3647, line: 12, size: 384, elements: !3869)
!3869 = !{!3870}
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3647, line: 13, baseType: !3871, size: 384)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3868, file: !3647, line: 13, size: 384, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3871, file: !3647, line: 13, baseType: !22, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3871, file: !3647, line: 13, baseType: !22, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3871, file: !3647, line: 13, baseType: !22, size: 32, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3871, file: !3647, line: 13, baseType: !3877, size: 256, offset: 128)
!3877 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3878, line: 37, size: 256, elements: !3879)
!3878 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3879 = !{!3880, !3885, !3898, !3904, !3913, !3940, !3945}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3877, file: !3878, line: 42, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 39, size: 64, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3881, file: !3878, line: 40, baseType: !3525, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3881, file: !3878, line: 41, baseType: !765, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3877, file: !3878, line: 50, baseType: !3886, size: 192)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 45, size: 192, elements: !3887)
!3887 = !{!3888, !3890, !3891, !3897}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3886, file: !3878, line: 46, baseType: !3889, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3886, file: !3878, line: 47, baseType: !22, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3886, file: !3878, line: 48, baseType: !3892, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3878, line: 11, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3878, line: 8, size: 64, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3893, file: !3878, line: 9, baseType: !22, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3893, file: !3878, line: 10, baseType: !20, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3886, file: !3878, line: 49, baseType: !22, size: 32, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3877, file: !3878, line: 57, baseType: !3899, size: 128)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 53, size: 128, elements: !3900)
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3899, file: !3878, line: 54, baseType: !3525, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3899, file: !3878, line: 55, baseType: !765, size: 32, offset: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3899, file: !3878, line: 56, baseType: !3892, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3877, file: !3878, line: 66, baseType: !3905, size: 256)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 60, size: 256, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3912}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3905, file: !3878, line: 61, baseType: !3525, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3905, file: !3878, line: 62, baseType: !765, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3905, file: !3878, line: 63, baseType: !22, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3905, file: !3878, line: 64, baseType: !3911, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1310)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3905, file: !3878, line: 65, baseType: !3911, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3877, file: !3878, line: 105, baseType: !3914, size: 256)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 69, size: 256, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3914, file: !3878, line: 70, baseType: !20, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3914, file: !3878, line: 79, baseType: !3918, size: 192, offset: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3914, file: !3878, line: 79, size: 192, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3929, !3934}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3918, file: !3878, line: 81, baseType: !22, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3918, file: !3878, line: 86, baseType: !834, size: 16)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3918, file: !3878, line: 92, baseType: !3923, size: 192)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3878, line: 88, size: 192, elements: !3924)
!3924 = !{!3925, !3927, !3928}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3923, file: !3878, line: 89, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !436)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3923, file: !3878, line: 90, baseType: !20, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3923, file: !3878, line: 91, baseType: !20, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3918, file: !3878, line: 97, baseType: !3930, size: 96)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3878, line: 94, size: 96, elements: !3931)
!3931 = !{!3932, !3933}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3930, file: !3878, line: 95, baseType: !3926, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3930, file: !3878, line: 96, baseType: !269, size: 32, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3918, file: !3878, line: 103, baseType: !3935, size: 128)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3878, line: 99, size: 128, elements: !3936)
!3936 = !{!3937, !3938, !3939}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3935, file: !3878, line: 100, baseType: !39, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3935, file: !3878, line: 101, baseType: !269, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3935, file: !3878, line: 102, baseType: !269, size: 32, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3877, file: !3878, line: 111, baseType: !3941, size: 128)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 108, size: 128, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3941, file: !3878, line: 109, baseType: !1011, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3941, file: !3878, line: 110, baseType: !22, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3877, file: !3878, line: 118, baseType: !3946, size: 128)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3877, file: !3878, line: 114, size: 128, elements: !3947)
!3947 = !{!3948, !3949, !3950}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3946, file: !3878, line: 115, baseType: !20, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3946, file: !3878, line: 116, baseType: !22, size: 32, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3946, file: !3878, line: 117, baseType: !7, size: 32, offset: 96)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !258, file: !259, line: 1208, baseType: !3731, size: 448, offset: 17664)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !258, file: !259, line: 1215, baseType: !325, size: 64, offset: 18112)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !258, file: !259, line: 1217, baseType: !325, size: 64, offset: 18176)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !258, file: !259, line: 1219, baseType: !325, size: 64, offset: 18240)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !258, file: !259, line: 1223, baseType: !3956, size: 64, offset: 18304)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3957, line: 99, baseType: !3958)
!3957 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3957, line: 99, size: 64, elements: !3959)
!3959 = !{!3960}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3958, file: !3957, line: 99, baseType: !525, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !258, file: !259, line: 1225, baseType: !1127, size: 32, offset: 18368)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !258, file: !259, line: 1226, baseType: !22, size: 32, offset: 18400)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !258, file: !259, line: 1227, baseType: !22, size: 32, offset: 18432)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !258, file: !259, line: 1231, baseType: !3965, size: 64, offset: 18496)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !259, line: 1231, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !258, file: !259, line: 1233, baseType: !97, size: 128, offset: 18560)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !258, file: !259, line: 1240, baseType: !3969, size: 64, offset: 18688)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !259, line: 62, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !258, file: !259, line: 1242, baseType: !3972, size: 64, offset: 18752)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !259, line: 1242, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !258, file: !259, line: 1244, baseType: !97, size: 128, offset: 18816)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !258, file: !259, line: 1245, baseType: !3976, size: 64, offset: 18944)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !259, line: 51, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !258, file: !259, line: 1246, baseType: !630, size: 256, offset: 19008)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !258, file: !259, line: 1247, baseType: !7, size: 32, offset: 19264)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !258, file: !259, line: 1250, baseType: !3981, size: 64, offset: 19328)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !259, line: 57, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !258, file: !259, line: 1251, baseType: !630, size: 256, offset: 19392)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !258, file: !259, line: 1252, baseType: !97, size: 128, offset: 19648)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !258, file: !259, line: 1259, baseType: !1731, size: 64, offset: 19776)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !258, file: !259, line: 1260, baseType: !834, size: 16, offset: 19840)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !258, file: !259, line: 1261, baseType: !834, size: 16, offset: 19856)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !258, file: !259, line: 1314, baseType: !3989, size: 64, offset: 19904)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3991, line: 62, size: 256, align: 256, elements: !3992)
!3991 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3990, file: !3991, line: 75, baseType: !269, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3990, file: !3991, line: 90, baseType: !269, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3990, file: !3991, line: 112, baseType: !326, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3990, file: !3991, line: 132, baseType: !269, size: 32, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3990, file: !3991, line: 140, baseType: !269, size: 32, offset: 160)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3990, file: !3991, line: 149, baseType: !269, size: 32, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3990, file: !3991, line: 154, baseType: !4000, offset: 224)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1018)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !258, file: !259, line: 1315, baseType: !268, size: 32, offset: 19968)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !258, file: !259, line: 1316, baseType: !268, size: 32, offset: 20000)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !258, file: !259, line: 1321, baseType: !39, size: 64, offset: 20032)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !258, file: !259, line: 1325, baseType: !22, size: 32, offset: 20096)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !258, file: !259, line: 1326, baseType: !22, size: 32, offset: 20128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !258, file: !259, line: 1327, baseType: !22, size: 32, offset: 20160)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !258, file: !259, line: 1328, baseType: !22, size: 32, offset: 20192)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !258, file: !259, line: 1329, baseType: !610, size: 128, align: 64, offset: 20224)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !258, file: !259, line: 1332, baseType: !4010, size: 128, offset: 20352)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4011, line: 51, size: 128, elements: !4012)
!4011 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4012 = !{!4013, !4018, !4019}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4010, file: !4011, line: 60, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4015, line: 7, size: 64, elements: !4016)
!4015 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4016 = !{!4017}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4014, file: !4015, line: 12, baseType: !522, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4010, file: !4011, line: 63, baseType: !786, size: 8, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4010, file: !4011, line: 70, baseType: !786, size: 8, offset: 72)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !258, file: !259, line: 1335, baseType: !3216, size: 64, offset: 20480)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !258, file: !259, line: 1337, baseType: !4022, size: 128, offset: 20544)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4011, line: 39, size: 128, elements: !4023)
!4023 = !{!4024, !4025, !4026}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4022, file: !4011, line: 40, baseType: !1528, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4022, file: !4011, line: 42, baseType: !269, size: 32, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4022, file: !4011, line: 43, baseType: !269, size: 32, offset: 96)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !258, file: !259, line: 1340, baseType: !4028, size: 64, offset: 20672)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !259, line: 69, flags: DIFlagFwdDecl)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !258, file: !259, line: 1351, baseType: !22, size: 32, offset: 20736)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !258, file: !259, line: 1352, baseType: !22, size: 32, offset: 20768)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !258, file: !259, line: 1354, baseType: !39, size: 64, offset: 20800)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !258, file: !259, line: 1364, baseType: !325, size: 64, offset: 20864)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !258, file: !259, line: 1365, baseType: !325, size: 64, offset: 20928)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !258, file: !259, line: 1412, baseType: !39, size: 64, offset: 20992)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !258, file: !259, line: 1453, baseType: !4037, size: 64, offset: 21056)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !259, line: 1453, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !258, file: !259, line: 1457, baseType: !4040, size: 64, offset: 21120)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !145, line: 61, size: 576, elements: !4042)
!4042 = !{!4043, !4044, !4063, !4066, !4067, !4100, !4110}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4041, file: !145, line: 62, baseType: !144, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !145, line: 64, baseType: !4045, size: 192, offset: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !145, line: 64, size: 192, elements: !4046)
!4046 = !{!4047, !4058}
!4047 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !145, line: 65, baseType: !4048, size: 192)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4045, file: !145, line: 65, size: 192, elements: !4049)
!4049 = !{!4050, !4057}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4048, file: !145, line: 66, baseType: !4051, size: 128)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4052, line: 50, size: 128, elements: !4053)
!4052 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4053 = !{!4054, !4055, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4051, file: !4052, line: 52, baseType: !39, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4051, file: !4052, line: 54, baseType: !7, size: 32, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4051, file: !4052, line: 55, baseType: !7, size: 32, offset: 96)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4048, file: !145, line: 67, baseType: !39, size: 64, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !145, line: 70, baseType: !4059, size: 192)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4045, file: !145, line: 70, size: 192, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4059, file: !145, line: 71, baseType: !610, size: 128, align: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4059, file: !145, line: 72, baseType: !39, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4041, file: !145, line: 76, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !145, line: 76, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4041, file: !145, line: 77, baseType: !39, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4041, file: !145, line: 79, baseType: !4068, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4052, line: 25, size: 256, elements: !4070)
!4070 = !{!4071, !4077, !4081}
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !4052, line: 26, baseType: !4072, size: 128)
!4072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4069, file: !4052, line: 26, size: 128, elements: !4073)
!4073 = !{!4074, !4076}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4072, file: !4052, line: 27, baseType: !4075, size: 128)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !2978)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4072, file: !4052, line: 28, baseType: !4075, size: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4069, file: !4052, line: 31, baseType: !4078, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4080)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4052, line: 23, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !4052, line: 33, baseType: !4082, size: 64, offset: 192)
!4082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4069, file: !4052, line: 33, size: 64, elements: !4083)
!4083 = !{!4084, !4090, !4095}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4082, file: !4052, line: 38, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4082, file: !4052, line: 34, size: 64, elements: !4086)
!4086 = !{!4087, !4088, !4089}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4085, file: !4052, line: 35, baseType: !798, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4085, file: !4052, line: 36, baseType: !83, size: 8, offset: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4085, file: !4052, line: 37, baseType: !83, size: 8, offset: 40)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4082, file: !4052, line: 42, baseType: !4091, size: 16)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4082, file: !4052, line: 39, size: 16, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4091, file: !4052, line: 40, baseType: !83, size: 8)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4091, file: !4052, line: 41, baseType: !83, size: 8, offset: 8)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4082, file: !4052, line: 46, baseType: !4096, size: 16)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4082, file: !4052, line: 43, size: 16, elements: !4097)
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4096, file: !4052, line: 44, baseType: !83, size: 8)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4096, file: !4052, line: 45, baseType: !83, size: 8, offset: 8)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4041, file: !145, line: 81, baseType: !4101, size: 64, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !145, line: 85, size: 384, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4102, file: !145, line: 86, baseType: !4064, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4102, file: !145, line: 87, baseType: !39, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4102, file: !145, line: 88, baseType: !39, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4102, file: !145, line: 89, baseType: !39, size: 64, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4102, file: !145, line: 90, baseType: !786, size: 8, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4102, file: !145, line: 92, baseType: !4101, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4041, file: !145, line: 82, baseType: !7, size: 32, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !258, file: !259, line: 1463, baseType: !4112, offset: 21184)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !259, line: 739, elements: !595)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !258, file: !259, line: 1470, baseType: !610, size: 128, align: 64, offset: 21184)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !258, file: !259, line: 1471, baseType: !274, size: 32, offset: 21312)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !258, file: !259, line: 1472, baseType: !22, size: 32, offset: 21344)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !258, file: !259, line: 1474, baseType: !257, size: 64, offset: 21376)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !258, file: !259, line: 1475, baseType: !2463, size: 320, offset: 21440)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !258, file: !259, line: 1478, baseType: !4119, size: 64, offset: 21760)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !259, line: 1478, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !258, file: !259, line: 1482, baseType: !274, size: 32, offset: 21824)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !258, file: !259, line: 1489, baseType: !20, size: 64, offset: 21888)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !258, file: !259, line: 1504, baseType: !20, size: 64, offset: 21952)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !258, file: !259, line: 1505, baseType: !326, size: 64, offset: 22016)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !258, file: !259, line: 1506, baseType: !325, size: 64, offset: 22080)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !258, file: !259, line: 1507, baseType: !326, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !258, file: !259, line: 1508, baseType: !326, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !258, file: !259, line: 1509, baseType: !326, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !258, file: !259, line: 1510, baseType: !610, size: 128, align: 64, offset: 22208)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !258, file: !259, line: 1511, baseType: !22, size: 32, offset: 22336)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !258, file: !259, line: 1515, baseType: !4132, size: 64, offset: 22400)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !287, line: 56, size: 64, elements: !4133)
!4133 = !{!4134}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4132, file: !287, line: 57, baseType: !290, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !258, file: !259, line: 1518, baseType: !4132, size: 64, offset: 22464)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !258, file: !259, line: 1528, baseType: !610, size: 128, align: 64, offset: 22528)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !258, file: !259, line: 1552, baseType: !4138, size: 35328, offset: 23040)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4139, line: 430, size: 35328, elements: !4140)
!4139 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4140 = !{!4141, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4170, !4171, !4172, !4173, !4174, !4175, !4178, !4179, !4180, !4181}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4138, file: !4139, line: 432, baseType: !4142, size: 192)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4143, size: 192, elements: !666)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4144, line: 16, size: 64, elements: !4145)
!4144 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4143, file: !4144, line: 17, baseType: !93, size: 16)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4143, file: !4144, line: 18, baseType: !93, size: 16, offset: 16)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4143, file: !4144, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4143, file: !4144, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4143, file: !4144, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4143, file: !4144, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4143, file: !4144, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4143, file: !4144, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4143, file: !4144, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4143, file: !4144, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4143, file: !4144, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4143, file: !4144, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4143, file: !4144, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4138, file: !4139, line: 436, baseType: !39, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4138, file: !4139, line: 440, baseType: !26, size: 16, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4138, file: !4139, line: 441, baseType: !26, size: 16, offset: 272)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4138, file: !4139, line: 442, baseType: !26, size: 16, offset: 288)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4138, file: !4139, line: 443, baseType: !26, size: 16, offset: 304)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4138, file: !4139, line: 447, baseType: !39, size: 64, offset: 320)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4138, file: !4139, line: 448, baseType: !39, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4138, file: !4139, line: 459, baseType: !4167, size: 256, offset: 448)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4168, size: 256, elements: !687)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4139, line: 428, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4138, file: !4139, line: 461, baseType: !39, size: 64, offset: 704)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4138, file: !4139, line: 463, baseType: !39, size: 64, offset: 768)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4138, file: !4139, line: 465, baseType: !39, size: 64, offset: 832)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4138, file: !4139, line: 466, baseType: !39, size: 64, offset: 896)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4138, file: !4139, line: 467, baseType: !39, size: 64, offset: 960)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4138, file: !4139, line: 473, baseType: !4176, size: 64, offset: 1024)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4139, line: 10, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4138, file: !4139, line: 480, baseType: !39, size: 64, offset: 1088)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4138, file: !4139, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4138, file: !4139, line: 491, baseType: !268, size: 32, offset: 1184)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4138, file: !4139, line: 501, baseType: !4182, size: 33792, offset: 1536)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4183, line: 448, size: 33792, elements: !4184)
!4183 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4184 = !{!4185, !4186, !4187, !4349, !4350, !4356, !4357}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4182, file: !4183, line: 461, baseType: !7, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4182, file: !4183, line: 468, baseType: !39, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4182, file: !4183, line: 476, baseType: !4188, size: 64, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4183, line: 356, size: 33280, align: 512, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4189, file: !4183, line: 358, baseType: !7, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4189, file: !4183, line: 361, baseType: !7, size: 32, offset: 32)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4189, file: !4183, line: 364, baseType: !325, size: 64, offset: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4189, file: !4183, line: 367, baseType: !325, size: 64, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4189, file: !4183, line: 370, baseType: !325, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4189, file: !4183, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4189, file: !4183, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4189, file: !4183, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4189, file: !4183, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4189, file: !4183, line: 397, baseType: !4201, size: 32768, offset: 512)
!4201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4183, line: 348, size: 32768, elements: !4202)
!4202 = !{!4203, !4218, !4255, !4332, !4345}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4201, file: !4183, line: 349, baseType: !4204, size: 896)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4183, line: 12, size: 896, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4217}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4204, file: !4183, line: 13, baseType: !268, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4204, file: !4183, line: 14, baseType: !268, size: 32, offset: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4204, file: !4183, line: 15, baseType: !268, size: 32, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4204, file: !4183, line: 16, baseType: !268, size: 32, offset: 96)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4204, file: !4183, line: 17, baseType: !268, size: 32, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4204, file: !4183, line: 18, baseType: !268, size: 32, offset: 160)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4204, file: !4183, line: 19, baseType: !268, size: 32, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4204, file: !4183, line: 22, baseType: !4214, size: 640, offset: 224)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 640, elements: !4215)
!4215 = !{!4216}
!4216 = !DISubrange(count: 20)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4204, file: !4183, line: 25, baseType: !268, size: 32, offset: 864)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4201, file: !4183, line: 350, baseType: !4219, size: 4096, align: 128)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4183, line: 34, size: 4096, align: 128, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4224, !4225, !4240, !4241, !4242, !4244, !4246, !4250}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4219, file: !4183, line: 35, baseType: !93, size: 16)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4219, file: !4183, line: 36, baseType: !93, size: 16, offset: 16)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4219, file: !4183, line: 37, baseType: !93, size: 16, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4219, file: !4183, line: 38, baseType: !93, size: 16, offset: 48)
!4225 = !DIDerivedType(tag: DW_TAG_member, scope: !4219, file: !4183, line: 39, baseType: !4226, size: 128, offset: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !4183, line: 39, size: 128, elements: !4227)
!4227 = !{!4228, !4233}
!4228 = !DIDerivedType(tag: DW_TAG_member, scope: !4226, file: !4183, line: 40, baseType: !4229, size: 128)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4183, line: 40, size: 128, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4229, file: !4183, line: 41, baseType: !325, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4229, file: !4183, line: 42, baseType: !325, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4226, file: !4183, line: 44, baseType: !4234, size: 128)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4183, line: 44, size: 128, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4234, file: !4183, line: 45, baseType: !268, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4234, file: !4183, line: 46, baseType: !268, size: 32, offset: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4234, file: !4183, line: 47, baseType: !268, size: 32, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4234, file: !4183, line: 48, baseType: !268, size: 32, offset: 96)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4219, file: !4183, line: 51, baseType: !268, size: 32, offset: 192)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4219, file: !4183, line: 52, baseType: !268, size: 32, offset: 224)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4219, file: !4183, line: 55, baseType: !4243, size: 1024, offset: 256)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 1024, elements: !2969)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4219, file: !4183, line: 58, baseType: !4245, size: 2048, offset: 1280)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 2048, elements: !1447)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4219, file: !4183, line: 60, baseType: !4247, size: 384, offset: 3328)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 384, elements: !4248)
!4248 = !{!4249}
!4249 = !DISubrange(count: 12)
!4250 = !DIDerivedType(tag: DW_TAG_member, scope: !4219, file: !4183, line: 62, baseType: !4251, size: 384, offset: 3712)
!4251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !4183, line: 62, size: 384, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4251, file: !4183, line: 63, baseType: !4247, size: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4251, file: !4183, line: 64, baseType: !4247, size: 384)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4201, file: !4183, line: 351, baseType: !4256, size: 1088)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4183, line: 79, size: 1088, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4331}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4256, file: !4183, line: 80, baseType: !268, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4256, file: !4183, line: 81, baseType: !268, size: 32, offset: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4256, file: !4183, line: 82, baseType: !268, size: 32, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4256, file: !4183, line: 83, baseType: !268, size: 32, offset: 96)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4256, file: !4183, line: 84, baseType: !268, size: 32, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4256, file: !4183, line: 85, baseType: !268, size: 32, offset: 160)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4256, file: !4183, line: 86, baseType: !268, size: 32, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4256, file: !4183, line: 88, baseType: !4214, size: 640, offset: 224)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4256, file: !4183, line: 89, baseType: !83, size: 8, offset: 864)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4256, file: !4183, line: 90, baseType: !83, size: 8, offset: 872)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4256, file: !4183, line: 91, baseType: !83, size: 8, offset: 880)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4256, file: !4183, line: 92, baseType: !83, size: 8, offset: 888)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4256, file: !4183, line: 93, baseType: !83, size: 8, offset: 896)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4256, file: !4183, line: 94, baseType: !83, size: 8, offset: 904)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4256, file: !4183, line: 95, baseType: !4273, size: 64, offset: 960)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4275, line: 11, size: 128, elements: !4276)
!4275 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4274, file: !4275, line: 12, baseType: !1011, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4274, file: !4275, line: 13, baseType: !4279, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4281, line: 103, size: 1344, elements: !4282)
!4281 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4311, !4312, !4313}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4280, file: !4281, line: 109, baseType: !39, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4280, file: !4281, line: 110, baseType: !39, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4280, file: !4281, line: 111, baseType: !39, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4280, file: !4281, line: 112, baseType: !39, size: 64, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4280, file: !4281, line: 113, baseType: !39, size: 64, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4280, file: !4281, line: 114, baseType: !39, size: 64, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4280, file: !4281, line: 117, baseType: !39, size: 64, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4280, file: !4281, line: 118, baseType: !39, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4280, file: !4281, line: 119, baseType: !39, size: 64, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4280, file: !4281, line: 120, baseType: !39, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4280, file: !4281, line: 121, baseType: !39, size: 64, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4280, file: !4281, line: 122, baseType: !39, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4280, file: !4281, line: 123, baseType: !39, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4280, file: !4281, line: 124, baseType: !39, size: 64, offset: 832)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4280, file: !4281, line: 125, baseType: !39, size: 64, offset: 896)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4280, file: !4281, line: 139, baseType: !39, size: 64, offset: 960)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4280, file: !4281, line: 142, baseType: !39, size: 64, offset: 1024)
!4300 = !DIDerivedType(tag: DW_TAG_member, scope: !4280, file: !4281, line: 144, baseType: !4301, size: 64, offset: 1088)
!4301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4280, file: !4281, line: 144, size: 64, elements: !4302)
!4302 = !{!4303, !4304, !4305}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4301, file: !4281, line: 146, baseType: !93, size: 16)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4301, file: !4281, line: 148, baseType: !325, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4301, file: !4281, line: 150, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4281, line: 59, size: 64, elements: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4306, file: !4281, line: 61, baseType: !325, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4306, file: !4281, line: 63, baseType: !325, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4306, file: !4281, line: 65, baseType: !325, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4280, file: !4281, line: 153, baseType: !39, size: 64, offset: 1152)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4280, file: !4281, line: 154, baseType: !39, size: 64, offset: 1216)
!4313 = !DIDerivedType(tag: DW_TAG_member, scope: !4280, file: !4281, line: 156, baseType: !4314, size: 64, offset: 1280)
!4314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4280, file: !4281, line: 156, size: 64, elements: !4315)
!4315 = !{!4316, !4317, !4318}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4314, file: !4281, line: 158, baseType: !93, size: 16)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4314, file: !4281, line: 160, baseType: !325, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4314, file: !4281, line: 162, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4281, line: 69, size: 64, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4319, file: !4281, line: 71, baseType: !325, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4319, file: !4281, line: 73, baseType: !325, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4319, file: !4281, line: 75, baseType: !325, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4319, file: !4281, line: 77, baseType: !325, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4319, file: !4281, line: 80, baseType: !325, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4319, file: !4281, line: 83, baseType: !325, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4319, file: !4281, line: 86, baseType: !325, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4319, file: !4281, line: 88, baseType: !325, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4319, file: !4281, line: 93, baseType: !325, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4319, file: !4281, line: 100, baseType: !325, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4256, file: !4183, line: 96, baseType: !268, size: 32, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4201, file: !4183, line: 352, baseType: !4333, size: 4608, align: 512)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4183, line: 333, size: 4608, align: 512, elements: !4334)
!4334 = !{!4335, !4336, !4343}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4333, file: !4183, line: 334, baseType: !4219, size: 4096, align: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4333, file: !4183, line: 335, baseType: !4337, size: 512, offset: 4096)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4183, line: 312, size: 512, elements: !4338)
!4338 = !{!4339, !4340, !4341}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4337, file: !4183, line: 313, baseType: !325, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4337, file: !4183, line: 314, baseType: !325, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4337, file: !4183, line: 315, baseType: !4342, size: 384, offset: 128)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 384, elements: !852)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4333, file: !4183, line: 336, baseType: !4344, offset: 4608)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1018)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4201, file: !4183, line: 353, baseType: !4346, size: 32768)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !4347)
!4347 = !{!4348}
!4348 = !DISubrange(count: 4096)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4182, file: !4183, line: 484, baseType: !4188, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4182, file: !4183, line: 491, baseType: !4351, size: 128, offset: 256)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4183, line: 404, size: 128, elements: !4352)
!4352 = !{!4353, !4354, !4355}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4351, file: !4183, line: 424, baseType: !325, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4351, file: !4183, line: 432, baseType: !7, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4351, file: !4183, line: 440, baseType: !7, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4182, file: !4183, line: 498, baseType: !4351, size: 128, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4182, file: !4183, line: 508, baseType: !4189, size: 33280, align: 512, offset: 512)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4363)
!4363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!4364 = !{!0, !4365, !4367, !4369, !4371, !4373, !4376, !4378, !4380, !4382, !4387, !4389, !4391, !4393, !4395, !4397, !4408, !4410, !4412, !4414, !4416, !4421, !4426, !4428, !4433, !4438, !4443, !4445, !4447, !4452, !4454, !4456, !4458, !4461, !4490, !4493, !4496, !4498, !4500, !4509, !4511, !4513, !4515, !4520, !4522, !4525, !4528, !4530, !4533}
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_lookup333", scope: !2, file: !3, line: 339, type: !20, isLocal: true, isDefinition: true)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_file334", scope: !2, file: !3, line: 493, type: !20, isLocal: true, isDefinition: true)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_file_unsafe335", scope: !2, file: !3, line: 532, type: !20, isLocal: true, isDefinition: true)
!4371 = !DIGlobalVariableExpression(var: !4372, expr: !DIExpression())
!4372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_file_size336", scope: !2, file: !3, line: 563, type: !20, isLocal: true, isDefinition: true)
!4373 = !DIGlobalVariableExpression(var: !4374, expr: !DIExpression())
!4374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 604, type: !4375, isLocal: true, isDefinition: true)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1447)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_dir337", scope: !2, file: !3, line: 620, type: !20, isLocal: true, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !4375, isLocal: true, isDefinition: true)
!4380 = !DIGlobalVariableExpression(var: !4381, expr: !DIExpression())
!4381 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_automount338", scope: !2, file: !3, line: 678, type: !20, isLocal: true, isDefinition: true)
!4382 = !DIGlobalVariableExpression(var: !4383, expr: !DIExpression())
!4383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 720, type: !4384, isLocal: true, isDefinition: true)
!4384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 496, elements: !4385)
!4385 = !{!4386}
!4386 = !DISubrange(count: 62)
!4387 = !DIGlobalVariableExpression(var: !4388, expr: !DIExpression())
!4388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_create_symlink339", scope: !2, file: !3, line: 731, type: !20, isLocal: true, isDefinition: true)
!4389 = !DIGlobalVariableExpression(var: !4390, expr: !DIExpression())
!4390 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_remove341", scope: !2, file: !3, line: 780, type: !20, isLocal: true, isDefinition: true)
!4391 = !DIGlobalVariableExpression(var: !4392, expr: !DIExpression())
!4392 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_lookup_and_remove342", scope: !2, file: !3, line: 802, type: !20, isLocal: true, isDefinition: true)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_rename343", scope: !2, file: !3, line: 874, type: !20, isLocal: true, isDefinition: true)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debugfs_initialized344", scope: !2, file: !3, line: 883, type: !20, isLocal: true, isDefinition: true)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "__setup_debugfs_kernel", scope: !2, file: !3, line: 898, type: !4399, isLocal: true, isDefinition: true, align: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4400, line: 324, size: 192, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4401 = !{!4402, !4403, !4407}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4399, file: !4400, line: 325, baseType: !16, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4399, file: !4400, line: 326, baseType: !4404, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!22, !874}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4399, file: !4400, line: 327, baseType: !22, size: 32, offset: 128)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_debugfs__345_918_debugfs_init1346", scope: !2, file: !3, line: 918, type: !20, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(name: "debugfs_mount", scope: !2, file: !3, line: 35, type: !1116, isLocal: true, isDefinition: true)
!4412 = !DIGlobalVariableExpression(var: !4413, expr: !DIExpression())
!4413 = distinct !DIGlobalVariable(name: "debugfs_mount_count", scope: !2, file: !3, line: 36, type: !22, isLocal: true, isDefinition: true)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(name: "debugfs_registered", scope: !2, file: !3, line: 37, type: !786, isLocal: true, isDefinition: true)
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !4418, isLocal: true, isDefinition: true)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 152, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 19)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !4423, isLocal: true, isDefinition: true)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 472, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 59)
!4426 = !DIGlobalVariableExpression(var: !4427, expr: !DIExpression())
!4427 = distinct !DIGlobalVariable(name: "debugfs_file_inode_operations", scope: !2, file: !3, line: 58, type: !1171, isLocal: true, isDefinition: true)
!4428 = !DIGlobalVariableExpression(var: !4429, expr: !DIExpression())
!4429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 360, type: !4430, isLocal: true, isDefinition: true)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 408, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 51)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !4435, isLocal: true, isDefinition: true)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 488, elements: !4436)
!4436 = !{!4437}
!4437 = !DISubrange(count: 61)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 382, type: !4440, isLocal: true, isDefinition: true)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 456, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 57)
!4443 = !DIGlobalVariableExpression(var: !4444, expr: !DIExpression())
!4444 = distinct !DIGlobalVariable(name: "debugfs_allow", scope: !2, file: !3, line: 38, type: !7, isLocal: true, isDefinition: true)
!4445 = !DIGlobalVariableExpression(var: !4446, expr: !DIExpression())
!4446 = distinct !DIGlobalVariable(name: "debugfs_dir_inode_operations", scope: !2, file: !3, line: 61, type: !1171, isLocal: true, isDefinition: true)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(scope: null, file: !230, line: 480, type: !4449, isLocal: true, isDefinition: true)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !4450)
!4450 = !{!4451}
!4451 = !DISubrange(count: 21)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(name: "debugfs_symlink_inode_operations", scope: !2, file: !3, line: 65, type: !1171, isLocal: true, isDefinition: true)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !3926, isLocal: true, isDefinition: true)
!4456 = !DIGlobalVariableExpression(var: !4457, expr: !DIExpression())
!4457 = distinct !DIGlobalVariable(name: "debug_fs_type", scope: !2, file: !3, line: 304, type: !1367, isLocal: true, isDefinition: true)
!4458 = !DIGlobalVariableExpression(var: !4459, expr: !DIExpression())
!4459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !4460, isLocal: true, isDefinition: true)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !526)
!4461 = !DIGlobalVariableExpression(var: !4462, expr: !DIExpression())
!4462 = distinct !DIGlobalVariable(name: "debug_files", scope: !4463, file: !3, line: 262, type: !4483, isLocal: true, isDefinition: true)
!4463 = distinct !DISubprogram(name: "debug_fill_super", scope: !3, file: !3, line: 260, type: !4464, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!22, !1357, !20, !22}
!4466 = !{!4467, !4468, !4469, !4470, !4481, !4482}
!4467 = !DILocalVariable(name: "sb", arg: 1, scope: !4463, file: !3, line: 260, type: !1357)
!4468 = !DILocalVariable(name: "data", arg: 2, scope: !4463, file: !3, line: 260, type: !20)
!4469 = !DILocalVariable(name: "silent", arg: 3, scope: !4463, file: !3, line: 260, type: !22)
!4470 = !DILocalVariable(name: "fsi", scope: !4463, file: !3, line: 263, type: !4471)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_fs_info", file: !3, line: 102, size: 128, elements: !4473)
!4473 = !{!4474}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mount_opts", scope: !4472, file: !3, line: 103, baseType: !4475, size: 128)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_mount_opts", file: !3, line: 80, size: 128, elements: !4476)
!4476 = !{!4477, !4478, !4479, !4480}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4475, file: !3, line: 81, baseType: !759, size: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4475, file: !3, line: 82, baseType: !767, size: 32, offset: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4475, file: !3, line: 83, baseType: !24, size: 16, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !4475, file: !3, line: 85, baseType: !7, size: 32, offset: 96)
!4481 = !DILocalVariable(name: "err", scope: !4463, file: !3, line: 264, type: !22)
!4482 = !DILabel(scope: !4463, name: "fail", file: !3, line: 288)
!4483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4484, size: 192, elements: !526)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_descr", file: !173, line: 3180, size: 192, elements: !4486)
!4486 = !{!4487, !4488, !4489}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4485, file: !173, line: 3180, baseType: !16, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4485, file: !173, line: 3180, baseType: !3130, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4485, file: !173, line: 3180, baseType: !22, size: 32, offset: 128)
!4490 = !DIGlobalVariableExpression(var: !4491, expr: !DIExpression())
!4491 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !4492, isLocal: true, isDefinition: true)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16, elements: !2353)
!4493 = !DIGlobalVariableExpression(var: !4494, expr: !DIExpression())
!4494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !4495, isLocal: true, isDefinition: true)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !2355)
!4496 = !DIGlobalVariableExpression(var: !4497, expr: !DIExpression())
!4497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !4495, isLocal: true, isDefinition: true)
!4498 = !DIGlobalVariableExpression(var: !4499, expr: !DIExpression())
!4499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !3926, isLocal: true, isDefinition: true)
!4500 = !DIGlobalVariableExpression(var: !4501, expr: !DIExpression())
!4501 = distinct !DIGlobalVariable(name: "tokens", scope: !2, file: !3, line: 95, type: !4502, isLocal: true, isDefinition: true)
!4502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4503, size: 512, elements: !687)
!4503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !4505, line: 14, size: 128, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!4506 = !{!4507, !4508}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !4504, file: !4505, line: 15, baseType: !22, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !4504, file: !4505, line: 16, baseType: !16, size: 64, offset: 64)
!4509 = !DIGlobalVariableExpression(var: !4510, expr: !DIExpression())
!4510 = distinct !DIGlobalVariable(name: "debugfs_super_operations", scope: !2, file: !3, line: 230, type: !2585, isLocal: true, isDefinition: true)
!4511 = !DIGlobalVariableExpression(var: !4512, expr: !DIExpression())
!4512 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !3926, isLocal: true, isDefinition: true)
!4513 = !DIGlobalVariableExpression(var: !4514, expr: !DIExpression())
!4514 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !3926, isLocal: true, isDefinition: true)
!4515 = !DIGlobalVariableExpression(var: !4516, expr: !DIExpression())
!4516 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !4517, isLocal: true, isDefinition: true)
!4517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, elements: !4518)
!4518 = !{!4519}
!4519 = !DISubrange(count: 9)
!4520 = !DIGlobalVariableExpression(var: !4521, expr: !DIExpression())
!4521 = distinct !DIGlobalVariable(name: "debugfs_dops", scope: !2, file: !3, line: 254, type: !2985, isLocal: true, isDefinition: true)
!4522 = !DIGlobalVariableExpression(var: !4523, expr: !DIExpression())
!4523 = distinct !DIGlobalVariable(name: "__setup_str_debugfs_kernel", scope: !2, file: !3, line: 898, type: !4524, isLocal: true, isDefinition: true, align: 8)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !436)
!4525 = !DIGlobalVariableExpression(var: !4526, expr: !DIExpression())
!4526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !4527, isLocal: true, isDefinition: true)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !666)
!4528 = !DIGlobalVariableExpression(var: !4529, expr: !DIExpression())
!4529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 890, type: !4517, isLocal: true, isDefinition: true)
!4530 = !DIGlobalVariableExpression(var: !4531, expr: !DIExpression())
!4531 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !4532, isLocal: true, isDefinition: true)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !687)
!4533 = !DIGlobalVariableExpression(var: !4534, expr: !DIExpression())
!4534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 906, type: !851, isLocal: true, isDefinition: true)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 200, elements: !4536)
!4536 = !{!4537}
!4537 = !DISubrange(count: 25)
!4538 = !{i32 7, !"Dwarf Version", i32 5}
!4539 = !{i32 2, !"Debug Info Version", i32 3}
!4540 = !{i32 1, !"wchar_size", i32 2}
!4541 = !{i32 8, !"cf-protection-branch", i32 1}
!4542 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4543 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4544 = !{i32 1, !"Code Model", i32 2}
!4545 = !{i32 1, !"override-stack-alignment", i32 8}
!4546 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4547 = distinct !DISubprogram(name: "debugfs_lookup", scope: !3, file: !3, line: 324, type: !4548, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!1121, !16, !1121}
!4550 = !{!4551, !4552, !4553}
!4551 = !DILocalVariable(name: "name", arg: 1, scope: !4547, file: !3, line: 324, type: !16)
!4552 = !DILocalVariable(name: "parent", arg: 2, scope: !4547, file: !3, line: 324, type: !1121)
!4553 = !DILocalVariable(name: "dentry", scope: !4547, file: !3, line: 326, type: !1121)
!4554 = !DILocation(line: 324, column: 43, scope: !4547)
!4555 = !DILocation(line: 324, column: 64, scope: !4547)
!4556 = !DILocation(line: 326, column: 2, scope: !4547)
!4557 = !DILocation(line: 326, column: 17, scope: !4547)
!4558 = !DILocation(line: 328, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 328, column: 6)
!4560 = !DILocation(line: 328, column: 29, scope: !4559)
!4561 = !DILocation(line: 328, column: 47, scope: !4559)
!4562 = !DILocation(line: 328, column: 32, scope: !4559)
!4563 = !DILocation(line: 328, column: 53, scope: !4559)
!4564 = !DILocation(line: 328, column: 63, scope: !4559)
!4565 = !DILocation(line: 328, column: 56, scope: !4559)
!4566 = !DILocation(line: 328, column: 6, scope: !4547)
!4567 = !DILocation(line: 329, column: 3, scope: !4559)
!4568 = !DILocation(line: 331, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 331, column: 6)
!4570 = !DILocation(line: 331, column: 6, scope: !4547)
!4571 = !DILocation(line: 332, column: 12, scope: !4569)
!4572 = !DILocation(line: 332, column: 27, scope: !4569)
!4573 = !DILocation(line: 332, column: 10, scope: !4569)
!4574 = !DILocation(line: 332, column: 3, scope: !4569)
!4575 = !DILocation(line: 334, column: 36, scope: !4547)
!4576 = !DILocation(line: 334, column: 42, scope: !4547)
!4577 = !DILocation(line: 334, column: 57, scope: !4547)
!4578 = !DILocation(line: 334, column: 50, scope: !4547)
!4579 = !DILocation(line: 334, column: 11, scope: !4547)
!4580 = !DILocation(line: 334, column: 9, scope: !4547)
!4581 = !DILocation(line: 335, column: 13, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 335, column: 6)
!4583 = !DILocation(line: 335, column: 6, scope: !4582)
!4584 = !DILocation(line: 335, column: 6, scope: !4547)
!4585 = !DILocation(line: 336, column: 3, scope: !4582)
!4586 = !DILocation(line: 337, column: 9, scope: !4547)
!4587 = !DILocation(line: 337, column: 2, scope: !4547)
!4588 = !DILocation(line: 338, column: 1, scope: !4547)
!4589 = distinct !DISubprogram(name: "debugfs_initialized", scope: !3, file: !3, line: 879, type: !2051, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4590 = !DILocation(line: 881, column: 9, scope: !4589)
!4591 = !{i8 0, i8 2}
!4592 = !DILocation(line: 881, column: 2, scope: !4589)
!4593 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !4594, file: !4594, line: 70, type: !4595, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4597)
!4594 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!786, !2061}
!4597 = !{!4598}
!4598 = !DILocalVariable(name: "ptr", arg: 1, scope: !4593, file: !4594, line: 70, type: !2061)
!4599 = !DILocation(line: 70, column: 68, scope: !4593)
!4600 = !DILocation(line: 72, column: 9, scope: !4593)
!4601 = !DILocation(line: 72, column: 24, scope: !4593)
!4602 = !DILocation(line: 72, column: 27, scope: !4593)
!4603 = !DILocation(line: 72, column: 2, scope: !4593)
!4604 = distinct !DISubprogram(name: "IS_ERR", scope: !4594, file: !4594, line: 59, type: !4595, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4605)
!4605 = !{!4606}
!4606 = !DILocalVariable(name: "ptr", arg: 1, scope: !4604, file: !4594, line: 59, type: !2061)
!4607 = !DILocation(line: 59, column: 60, scope: !4604)
!4608 = !DILocation(line: 61, column: 9, scope: !4604)
!4609 = !DILocation(line: 61, column: 2, scope: !4604)
!4610 = !DISubprogram(name: "lookup_positive_unlocked", scope: !4611, file: !4611, line: 78, type: !4612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4611 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!1121, !16, !1121, !22}
!4614 = !DISubprogram(name: "strlen", scope: !4615, file: !4615, line: 128, type: !4616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4615 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!39, !16}
!4618 = distinct !DISubprogram(name: "debugfs_create_file", scope: !3, file: !3, line: 483, type: !4619, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4621)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!1121, !16, !24, !1121, !20, !3130}
!4621 = !{!4622, !4623, !4624, !4625, !4626}
!4622 = !DILocalVariable(name: "name", arg: 1, scope: !4618, file: !3, line: 483, type: !16)
!4623 = !DILocalVariable(name: "mode", arg: 2, scope: !4618, file: !3, line: 483, type: !24)
!4624 = !DILocalVariable(name: "parent", arg: 3, scope: !4618, file: !3, line: 484, type: !1121)
!4625 = !DILocalVariable(name: "data", arg: 4, scope: !4618, file: !3, line: 484, type: !20)
!4626 = !DILocalVariable(name: "fops", arg: 5, scope: !4618, file: !3, line: 485, type: !3130)
!4627 = !DILocation(line: 483, column: 48, scope: !4618)
!4628 = !DILocation(line: 483, column: 62, scope: !4618)
!4629 = !DILocation(line: 484, column: 23, scope: !4618)
!4630 = !DILocation(line: 484, column: 37, scope: !4618)
!4631 = !DILocation(line: 485, column: 38, scope: !4618)
!4632 = !DILocation(line: 488, column: 31, scope: !4618)
!4633 = !DILocation(line: 488, column: 37, scope: !4618)
!4634 = !DILocation(line: 488, column: 43, scope: !4618)
!4635 = !DILocation(line: 488, column: 51, scope: !4618)
!4636 = !DILocation(line: 489, column: 5, scope: !4618)
!4637 = !DILocation(line: 491, column: 5, scope: !4618)
!4638 = !DILocation(line: 488, column: 9, scope: !4618)
!4639 = !DILocation(line: 488, column: 2, scope: !4618)
!4640 = distinct !DISubprogram(name: "__debugfs_create_file", scope: !3, file: !3, line: 410, type: !4641, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!1121, !16, !24, !1121, !20, !3130, !3130}
!4643 = !{!4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651}
!4644 = !DILocalVariable(name: "name", arg: 1, scope: !4640, file: !3, line: 410, type: !16)
!4645 = !DILocalVariable(name: "mode", arg: 2, scope: !4640, file: !3, line: 410, type: !24)
!4646 = !DILocalVariable(name: "parent", arg: 3, scope: !4640, file: !3, line: 411, type: !1121)
!4647 = !DILocalVariable(name: "data", arg: 4, scope: !4640, file: !3, line: 411, type: !20)
!4648 = !DILocalVariable(name: "proxy_fops", arg: 5, scope: !4640, file: !3, line: 412, type: !3130)
!4649 = !DILocalVariable(name: "real_fops", arg: 6, scope: !4640, file: !3, line: 413, type: !3130)
!4650 = !DILocalVariable(name: "dentry", scope: !4640, file: !3, line: 415, type: !1121)
!4651 = !DILocalVariable(name: "inode", scope: !4640, file: !3, line: 416, type: !1156)
!4652 = !DILocation(line: 410, column: 57, scope: !4640)
!4653 = !DILocation(line: 410, column: 71, scope: !4640)
!4654 = !DILocation(line: 411, column: 20, scope: !4640)
!4655 = !DILocation(line: 411, column: 34, scope: !4640)
!4656 = !DILocation(line: 412, column: 35, scope: !4640)
!4657 = !DILocation(line: 413, column: 35, scope: !4640)
!4658 = !DILocation(line: 415, column: 2, scope: !4640)
!4659 = !DILocation(line: 415, column: 17, scope: !4640)
!4660 = !DILocation(line: 416, column: 2, scope: !4640)
!4661 = !DILocation(line: 416, column: 16, scope: !4640)
!4662 = !DILocation(line: 418, column: 8, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 418, column: 6)
!4664 = !DILocation(line: 418, column: 13, scope: !4663)
!4665 = !DILocation(line: 418, column: 6, scope: !4640)
!4666 = !DILocation(line: 419, column: 8, scope: !4663)
!4667 = !DILocation(line: 419, column: 3, scope: !4663)
!4668 = !DILocation(line: 420, column: 2, scope: !4640)
!4669 = !DILocation(line: 420, column: 2, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 420, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 420, column: 2)
!4672 = !DILocation(line: 420, column: 2, scope: !4671)
!4673 = !DILocation(line: 420, column: 2, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 420, column: 2)
!4675 = !DILocation(line: 420, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 420, column: 2)
!4677 = !DILocation(line: 420, column: 2, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 420, column: 2)
!4679 = !{i64 2154895548, i64 2154895577, i64 2154895623, i64 2154895681, i64 2154895735, i64 2154895789, i64 2154895844, i64 2154895875}
!4680 = !DILocation(line: 421, column: 26, scope: !4640)
!4681 = !DILocation(line: 421, column: 32, scope: !4640)
!4682 = !DILocation(line: 421, column: 11, scope: !4640)
!4683 = !DILocation(line: 421, column: 9, scope: !4640)
!4684 = !DILocation(line: 423, column: 13, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 423, column: 6)
!4686 = !DILocation(line: 423, column: 6, scope: !4685)
!4687 = !DILocation(line: 423, column: 6, scope: !4640)
!4688 = !DILocation(line: 424, column: 10, scope: !4685)
!4689 = !DILocation(line: 424, column: 3, scope: !4685)
!4690 = !DILocation(line: 426, column: 8, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 426, column: 6)
!4692 = !DILocation(line: 426, column: 22, scope: !4691)
!4693 = !DILocation(line: 426, column: 6, scope: !4640)
!4694 = !DILocation(line: 427, column: 19, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 426, column: 44)
!4696 = !DILocation(line: 427, column: 3, scope: !4695)
!4697 = !DILocation(line: 428, column: 10, scope: !4695)
!4698 = !DILocation(line: 428, column: 3, scope: !4695)
!4699 = !DILocation(line: 431, column: 28, scope: !4640)
!4700 = !DILocation(line: 431, column: 36, scope: !4640)
!4701 = !DILocation(line: 431, column: 10, scope: !4640)
!4702 = !DILocation(line: 431, column: 8, scope: !4640)
!4703 = !DILocation(line: 432, column: 6, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 432, column: 6)
!4705 = !DILocation(line: 432, column: 6, scope: !4640)
!4706 = !DILocation(line: 433, column: 3, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 433, column: 3)
!4708 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 432, column: 24)
!4709 = !DILocation(line: 433, column: 3, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 433, column: 3)
!4711 = !DILocation(line: 435, column: 26, scope: !4708)
!4712 = !DILocation(line: 435, column: 10, scope: !4708)
!4713 = !DILocation(line: 435, column: 3, scope: !4708)
!4714 = !DILocation(line: 438, column: 18, scope: !4640)
!4715 = !DILocation(line: 438, column: 2, scope: !4640)
!4716 = !DILocation(line: 438, column: 9, scope: !4640)
!4717 = !DILocation(line: 438, column: 16, scope: !4640)
!4718 = !DILocation(line: 439, column: 21, scope: !4640)
!4719 = !DILocation(line: 439, column: 2, scope: !4640)
!4720 = !DILocation(line: 439, column: 9, scope: !4640)
!4721 = !DILocation(line: 439, column: 19, scope: !4640)
!4722 = !DILocation(line: 441, column: 2, scope: !4640)
!4723 = !DILocation(line: 441, column: 9, scope: !4640)
!4724 = !DILocation(line: 441, column: 14, scope: !4640)
!4725 = !DILocation(line: 442, column: 17, scope: !4640)
!4726 = !DILocation(line: 442, column: 2, scope: !4640)
!4727 = !DILocation(line: 442, column: 9, scope: !4640)
!4728 = !DILocation(line: 442, column: 15, scope: !4640)
!4729 = !DILocation(line: 443, column: 45, scope: !4640)
!4730 = !DILocation(line: 443, column: 30, scope: !4640)
!4731 = !DILocation(line: 443, column: 55, scope: !4640)
!4732 = !DILocation(line: 443, column: 21, scope: !4640)
!4733 = !DILocation(line: 443, column: 2, scope: !4640)
!4734 = !DILocation(line: 443, column: 10, scope: !4640)
!4735 = !DILocation(line: 443, column: 19, scope: !4640)
!4736 = !DILocation(line: 446, column: 16, scope: !4640)
!4737 = !DILocation(line: 446, column: 24, scope: !4640)
!4738 = !DILocation(line: 446, column: 2, scope: !4640)
!4739 = !DILocation(line: 447, column: 26, scope: !4640)
!4740 = !DILocation(line: 447, column: 34, scope: !4640)
!4741 = !DILocation(line: 447, column: 18, scope: !4640)
!4742 = !DILocation(line: 447, column: 45, scope: !4640)
!4743 = !DILocation(line: 447, column: 2, scope: !4640)
!4744 = !DILocation(line: 448, column: 22, scope: !4640)
!4745 = !DILocation(line: 448, column: 9, scope: !4640)
!4746 = !DILocation(line: 448, column: 2, scope: !4640)
!4747 = !DILocation(line: 449, column: 1, scope: !4640)
!4748 = distinct !DISubprogram(name: "debugfs_create_file_unsafe", scope: !3, file: !3, line: 522, type: !4619, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754}
!4750 = !DILocalVariable(name: "name", arg: 1, scope: !4748, file: !3, line: 522, type: !16)
!4751 = !DILocalVariable(name: "mode", arg: 2, scope: !4748, file: !3, line: 522, type: !24)
!4752 = !DILocalVariable(name: "parent", arg: 3, scope: !4748, file: !3, line: 523, type: !1121)
!4753 = !DILocalVariable(name: "data", arg: 4, scope: !4748, file: !3, line: 523, type: !20)
!4754 = !DILocalVariable(name: "fops", arg: 5, scope: !4748, file: !3, line: 524, type: !3130)
!4755 = !DILocation(line: 522, column: 55, scope: !4748)
!4756 = !DILocation(line: 522, column: 69, scope: !4748)
!4757 = !DILocation(line: 523, column: 23, scope: !4748)
!4758 = !DILocation(line: 523, column: 37, scope: !4748)
!4759 = !DILocation(line: 524, column: 38, scope: !4748)
!4760 = !DILocation(line: 527, column: 31, scope: !4748)
!4761 = !DILocation(line: 527, column: 37, scope: !4748)
!4762 = !DILocation(line: 527, column: 43, scope: !4748)
!4763 = !DILocation(line: 527, column: 51, scope: !4748)
!4764 = !DILocation(line: 528, column: 5, scope: !4748)
!4765 = !DILocation(line: 530, column: 5, scope: !4748)
!4766 = !DILocation(line: 527, column: 9, scope: !4748)
!4767 = !DILocation(line: 527, column: 2, scope: !4748)
!4768 = distinct !DISubprogram(name: "debugfs_create_file_size", scope: !3, file: !3, line: 553, type: !4769, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4771)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !16, !24, !1121, !20, !3130, !41}
!4771 = !{!4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4772 = !DILocalVariable(name: "name", arg: 1, scope: !4768, file: !3, line: 553, type: !16)
!4773 = !DILocalVariable(name: "mode", arg: 2, scope: !4768, file: !3, line: 553, type: !24)
!4774 = !DILocalVariable(name: "parent", arg: 3, scope: !4768, file: !3, line: 554, type: !1121)
!4775 = !DILocalVariable(name: "data", arg: 4, scope: !4768, file: !3, line: 554, type: !20)
!4776 = !DILocalVariable(name: "fops", arg: 5, scope: !4768, file: !3, line: 555, type: !3130)
!4777 = !DILocalVariable(name: "file_size", arg: 6, scope: !4768, file: !3, line: 556, type: !41)
!4778 = !DILocalVariable(name: "de", scope: !4768, file: !3, line: 558, type: !1121)
!4779 = !DILocation(line: 553, column: 43, scope: !4768)
!4780 = !DILocation(line: 553, column: 57, scope: !4768)
!4781 = !DILocation(line: 554, column: 25, scope: !4768)
!4782 = !DILocation(line: 554, column: 39, scope: !4768)
!4783 = !DILocation(line: 555, column: 40, scope: !4768)
!4784 = !DILocation(line: 556, column: 17, scope: !4768)
!4785 = !DILocation(line: 558, column: 2, scope: !4768)
!4786 = !DILocation(line: 558, column: 17, scope: !4768)
!4787 = !DILocation(line: 558, column: 42, scope: !4768)
!4788 = !DILocation(line: 558, column: 48, scope: !4768)
!4789 = !DILocation(line: 558, column: 54, scope: !4768)
!4790 = !DILocation(line: 558, column: 62, scope: !4768)
!4791 = !DILocation(line: 558, column: 68, scope: !4768)
!4792 = !DILocation(line: 558, column: 22, scope: !4768)
!4793 = !DILocation(line: 560, column: 14, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 560, column: 6)
!4795 = !DILocation(line: 560, column: 7, scope: !4794)
!4796 = !DILocation(line: 560, column: 6, scope: !4768)
!4797 = !DILocation(line: 561, column: 25, scope: !4794)
!4798 = !DILocation(line: 561, column: 11, scope: !4794)
!4799 = !DILocation(line: 561, column: 3, scope: !4794)
!4800 = !DILocation(line: 561, column: 16, scope: !4794)
!4801 = !DILocation(line: 561, column: 23, scope: !4794)
!4802 = !DILocation(line: 562, column: 1, scope: !4768)
!4803 = distinct !DISubprogram(name: "d_inode", scope: !1123, file: !1123, line: 514, type: !4804, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4806)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!1156, !2997}
!4806 = !{!4807}
!4807 = !DILocalVariable(name: "dentry", arg: 1, scope: !4803, file: !1123, line: 514, type: !2997)
!4808 = !DILocation(line: 514, column: 58, scope: !4803)
!4809 = !DILocation(line: 516, column: 9, scope: !4803)
!4810 = !DILocation(line: 516, column: 17, scope: !4803)
!4811 = !DILocation(line: 516, column: 2, scope: !4803)
!4812 = distinct !DISubprogram(name: "debugfs_create_dir", scope: !3, file: !3, line: 589, type: !4548, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4813)
!4813 = !{!4814, !4815, !4816, !4817}
!4814 = !DILocalVariable(name: "name", arg: 1, scope: !4812, file: !3, line: 589, type: !16)
!4815 = !DILocalVariable(name: "parent", arg: 2, scope: !4812, file: !3, line: 589, type: !1121)
!4816 = !DILocalVariable(name: "dentry", scope: !4812, file: !3, line: 591, type: !1121)
!4817 = !DILocalVariable(name: "inode", scope: !4812, file: !3, line: 592, type: !1156)
!4818 = !DILocation(line: 589, column: 47, scope: !4812)
!4819 = !DILocation(line: 589, column: 68, scope: !4812)
!4820 = !DILocation(line: 591, column: 2, scope: !4812)
!4821 = !DILocation(line: 591, column: 17, scope: !4812)
!4822 = !DILocation(line: 591, column: 41, scope: !4812)
!4823 = !DILocation(line: 591, column: 47, scope: !4812)
!4824 = !DILocation(line: 591, column: 26, scope: !4812)
!4825 = !DILocation(line: 592, column: 2, scope: !4812)
!4826 = !DILocation(line: 592, column: 16, scope: !4812)
!4827 = !DILocation(line: 594, column: 13, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 594, column: 6)
!4829 = !DILocation(line: 594, column: 6, scope: !4828)
!4830 = !DILocation(line: 594, column: 6, scope: !4812)
!4831 = !DILocation(line: 595, column: 10, scope: !4828)
!4832 = !DILocation(line: 595, column: 3, scope: !4828)
!4833 = !DILocation(line: 597, column: 8, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 597, column: 6)
!4835 = !DILocation(line: 597, column: 22, scope: !4834)
!4836 = !DILocation(line: 597, column: 6, scope: !4812)
!4837 = !DILocation(line: 598, column: 19, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 597, column: 44)
!4839 = !DILocation(line: 598, column: 3, scope: !4838)
!4840 = !DILocation(line: 599, column: 10, scope: !4838)
!4841 = !DILocation(line: 599, column: 3, scope: !4838)
!4842 = !DILocation(line: 602, column: 28, scope: !4812)
!4843 = !DILocation(line: 602, column: 36, scope: !4812)
!4844 = !DILocation(line: 602, column: 10, scope: !4812)
!4845 = !DILocation(line: 602, column: 8, scope: !4812)
!4846 = !DILocation(line: 603, column: 6, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 603, column: 6)
!4848 = !DILocation(line: 603, column: 6, scope: !4812)
!4849 = !DILocation(line: 604, column: 3, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 604, column: 3)
!4851 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 603, column: 24)
!4852 = !DILocation(line: 604, column: 3, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 604, column: 3)
!4854 = !DILocation(line: 606, column: 26, scope: !4851)
!4855 = !DILocation(line: 606, column: 10, scope: !4851)
!4856 = !DILocation(line: 606, column: 3, scope: !4851)
!4857 = !DILocation(line: 609, column: 2, scope: !4812)
!4858 = !DILocation(line: 609, column: 9, scope: !4812)
!4859 = !DILocation(line: 609, column: 16, scope: !4812)
!4860 = !DILocation(line: 610, column: 2, scope: !4812)
!4861 = !DILocation(line: 610, column: 9, scope: !4812)
!4862 = !DILocation(line: 610, column: 14, scope: !4812)
!4863 = !DILocation(line: 611, column: 2, scope: !4812)
!4864 = !DILocation(line: 611, column: 9, scope: !4812)
!4865 = !DILocation(line: 611, column: 15, scope: !4812)
!4866 = !DILocation(line: 614, column: 12, scope: !4812)
!4867 = !DILocation(line: 614, column: 2, scope: !4812)
!4868 = !DILocation(line: 615, column: 16, scope: !4812)
!4869 = !DILocation(line: 615, column: 24, scope: !4812)
!4870 = !DILocation(line: 615, column: 2, scope: !4812)
!4871 = !DILocation(line: 616, column: 20, scope: !4812)
!4872 = !DILocation(line: 616, column: 28, scope: !4812)
!4873 = !DILocation(line: 616, column: 12, scope: !4812)
!4874 = !DILocation(line: 616, column: 2, scope: !4812)
!4875 = !DILocation(line: 617, column: 25, scope: !4812)
!4876 = !DILocation(line: 617, column: 33, scope: !4812)
!4877 = !DILocation(line: 617, column: 17, scope: !4812)
!4878 = !DILocation(line: 617, column: 44, scope: !4812)
!4879 = !DILocation(line: 617, column: 2, scope: !4812)
!4880 = !DILocation(line: 618, column: 22, scope: !4812)
!4881 = !DILocation(line: 618, column: 9, scope: !4812)
!4882 = !DILocation(line: 618, column: 2, scope: !4812)
!4883 = !DILocation(line: 619, column: 1, scope: !4812)
!4884 = distinct !DISubprogram(name: "start_creating", scope: !3, file: !3, line: 341, type: !4548, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4885 = !{!4886, !4887, !4888, !4889}
!4886 = !DILocalVariable(name: "name", arg: 1, scope: !4884, file: !3, line: 341, type: !16)
!4887 = !DILocalVariable(name: "parent", arg: 2, scope: !4884, file: !3, line: 341, type: !1121)
!4888 = !DILocalVariable(name: "dentry", scope: !4884, file: !3, line: 343, type: !1121)
!4889 = !DILocalVariable(name: "error", scope: !4884, file: !3, line: 344, type: !22)
!4890 = !DILocation(line: 341, column: 50, scope: !4884)
!4891 = !DILocation(line: 341, column: 71, scope: !4884)
!4892 = !DILocation(line: 343, column: 2, scope: !4884)
!4893 = !DILocation(line: 343, column: 17, scope: !4884)
!4894 = !DILocation(line: 344, column: 2, scope: !4884)
!4895 = !DILocation(line: 344, column: 6, scope: !4884)
!4896 = !DILocation(line: 346, column: 8, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 346, column: 6)
!4898 = !DILocation(line: 346, column: 22, scope: !4897)
!4899 = !DILocation(line: 346, column: 6, scope: !4884)
!4900 = !DILocation(line: 347, column: 10, scope: !4897)
!4901 = !DILocation(line: 347, column: 3, scope: !4897)
!4902 = !DILocation(line: 349, column: 7, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 349, column: 6)
!4904 = !DILocation(line: 349, column: 6, scope: !4884)
!4905 = !DILocation(line: 350, column: 10, scope: !4903)
!4906 = !DILocation(line: 350, column: 3, scope: !4903)
!4907 = !DILocation(line: 352, column: 2, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 352, column: 2)
!4909 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 352, column: 2)
!4910 = !DILocation(line: 352, column: 2, scope: !4909)
!4911 = !DILocation(line: 354, column: 13, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 354, column: 6)
!4913 = !DILocation(line: 354, column: 6, scope: !4912)
!4914 = !DILocation(line: 354, column: 6, scope: !4884)
!4915 = !DILocation(line: 355, column: 10, scope: !4912)
!4916 = !DILocation(line: 355, column: 3, scope: !4912)
!4917 = !DILocation(line: 357, column: 10, scope: !4884)
!4918 = !DILocation(line: 357, column: 8, scope: !4884)
!4919 = !DILocation(line: 359, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 359, column: 6)
!4921 = !DILocation(line: 359, column: 6, scope: !4884)
!4922 = !DILocation(line: 360, column: 3, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 360, column: 3)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 359, column: 13)
!4925 = !DILocation(line: 360, column: 3, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 360, column: 3)
!4927 = !DILocation(line: 361, column: 18, scope: !4924)
!4928 = !DILocation(line: 361, column: 10, scope: !4924)
!4929 = !DILocation(line: 361, column: 3, scope: !4924)
!4930 = !DILocation(line: 369, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 369, column: 6)
!4932 = !DILocation(line: 369, column: 6, scope: !4884)
!4933 = !DILocation(line: 370, column: 12, scope: !4931)
!4934 = !DILocation(line: 370, column: 27, scope: !4931)
!4935 = !DILocation(line: 370, column: 10, scope: !4931)
!4936 = !DILocation(line: 370, column: 3, scope: !4931)
!4937 = !DILocation(line: 372, column: 21, scope: !4884)
!4938 = !DILocation(line: 372, column: 13, scope: !4884)
!4939 = !DILocation(line: 372, column: 2, scope: !4884)
!4940 = !DILocation(line: 373, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 373, column: 6)
!4942 = !DILocation(line: 373, column: 6, scope: !4884)
!4943 = !DILocation(line: 374, column: 12, scope: !4941)
!4944 = !DILocation(line: 374, column: 10, scope: !4941)
!4945 = !DILocation(line: 374, column: 3, scope: !4941)
!4946 = !DILocation(line: 376, column: 27, scope: !4941)
!4947 = !DILocation(line: 376, column: 33, scope: !4941)
!4948 = !DILocation(line: 376, column: 48, scope: !4941)
!4949 = !DILocation(line: 376, column: 41, scope: !4941)
!4950 = !DILocation(line: 376, column: 12, scope: !4941)
!4951 = !DILocation(line: 376, column: 10, scope: !4941)
!4952 = !DILocation(line: 377, column: 14, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 377, column: 6)
!4954 = !DILocation(line: 377, column: 7, scope: !4953)
!4955 = !DILocation(line: 377, column: 22, scope: !4953)
!4956 = !DILocation(line: 377, column: 46, scope: !4953)
!4957 = !DILocation(line: 377, column: 25, scope: !4953)
!4958 = !DILocation(line: 377, column: 6, scope: !4884)
!4959 = !DILocation(line: 378, column: 16, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 378, column: 7)
!4961 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 377, column: 55)
!4962 = !DILocation(line: 378, column: 7, scope: !4960)
!4963 = !DILocation(line: 378, column: 7, scope: !4961)
!4964 = !DILocation(line: 379, column: 4, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 379, column: 4)
!4966 = !DILocation(line: 379, column: 4, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 379, column: 4)
!4968 = !DILocation(line: 379, column: 4, scope: !4960)
!4969 = !DILocation(line: 382, column: 4, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 382, column: 4)
!4971 = !DILocation(line: 382, column: 4, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 382, column: 4)
!4973 = !DILocation(line: 384, column: 8, scope: !4961)
!4974 = !DILocation(line: 384, column: 3, scope: !4961)
!4975 = !DILocation(line: 385, column: 12, scope: !4961)
!4976 = !DILocation(line: 385, column: 10, scope: !4961)
!4977 = !DILocation(line: 386, column: 2, scope: !4961)
!4978 = !DILocation(line: 388, column: 13, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 388, column: 6)
!4980 = !DILocation(line: 388, column: 6, scope: !4979)
!4981 = !DILocation(line: 388, column: 6, scope: !4884)
!4982 = !DILocation(line: 389, column: 24, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 388, column: 22)
!4984 = !DILocation(line: 389, column: 16, scope: !4983)
!4985 = !DILocation(line: 389, column: 3, scope: !4983)
!4986 = !DILocation(line: 390, column: 3, scope: !4983)
!4987 = !DILocation(line: 391, column: 2, scope: !4983)
!4988 = !DILocation(line: 393, column: 9, scope: !4884)
!4989 = !DILocation(line: 393, column: 2, scope: !4884)
!4990 = !DILocation(line: 394, column: 1, scope: !4884)
!4991 = distinct !DISubprogram(name: "failed_creating", scope: !3, file: !3, line: 396, type: !4992, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!1121, !1121}
!4994 = !{!4995}
!4995 = !DILocalVariable(name: "dentry", arg: 1, scope: !4991, file: !3, line: 396, type: !1121)
!4996 = !DILocation(line: 396, column: 54, scope: !4991)
!4997 = !DILocation(line: 398, column: 23, scope: !4991)
!4998 = !DILocation(line: 398, column: 31, scope: !4991)
!4999 = !DILocation(line: 398, column: 15, scope: !4991)
!5000 = !DILocation(line: 398, column: 2, scope: !4991)
!5001 = !DILocation(line: 399, column: 7, scope: !4991)
!5002 = !DILocation(line: 399, column: 2, scope: !4991)
!5003 = !DILocation(line: 400, column: 2, scope: !4991)
!5004 = !DILocation(line: 401, column: 9, scope: !4991)
!5005 = !DILocation(line: 401, column: 2, scope: !4991)
!5006 = distinct !DISubprogram(name: "ERR_PTR", scope: !4594, file: !4594, line: 39, type: !5007, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!20, !1011}
!5009 = !{!5010}
!5010 = !DILocalVariable(name: "error", arg: 1, scope: !5006, file: !4594, line: 39, type: !1011)
!5011 = !DILocation(line: 39, column: 48, scope: !5006)
!5012 = !DILocation(line: 41, column: 18, scope: !5006)
!5013 = !DILocation(line: 41, column: 9, scope: !5006)
!5014 = !DILocation(line: 41, column: 2, scope: !5006)
!5015 = distinct !DISubprogram(name: "debugfs_get_inode", scope: !3, file: !3, line: 70, type: !2590, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5016 = !{!5017, !5018}
!5017 = !DILocalVariable(name: "sb", arg: 1, scope: !5015, file: !3, line: 70, type: !1357)
!5018 = !DILocalVariable(name: "inode", scope: !5015, file: !3, line: 72, type: !1156)
!5019 = !DILocation(line: 70, column: 60, scope: !5015)
!5020 = !DILocation(line: 72, column: 2, scope: !5015)
!5021 = !DILocation(line: 72, column: 16, scope: !5015)
!5022 = !DILocation(line: 72, column: 34, scope: !5015)
!5023 = !DILocation(line: 72, column: 24, scope: !5015)
!5024 = !DILocation(line: 73, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 73, column: 6)
!5026 = !DILocation(line: 73, column: 6, scope: !5015)
!5027 = !DILocation(line: 74, column: 18, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 73, column: 13)
!5029 = !DILocation(line: 74, column: 3, scope: !5028)
!5030 = !DILocation(line: 74, column: 10, scope: !5028)
!5031 = !DILocation(line: 74, column: 16, scope: !5028)
!5032 = !DILocation(line: 75, column: 3, scope: !5028)
!5033 = !DILocation(line: 75, column: 10, scope: !5028)
!5034 = !DILocation(line: 75, column: 20, scope: !5028)
!5035 = !DILocation(line: 75, column: 27, scope: !5028)
!5036 = !DILocation(line: 75, column: 37, scope: !5028)
!5037 = !DILocation(line: 75, column: 61, scope: !5028)
!5038 = !DILocation(line: 75, column: 35, scope: !5028)
!5039 = !DILocation(line: 76, column: 2, scope: !5028)
!5040 = !DILocation(line: 77, column: 9, scope: !5015)
!5041 = !DILocation(line: 78, column: 1, scope: !5015)
!5042 = !DILocation(line: 77, column: 2, scope: !5015)
!5043 = !DISubprogram(name: "_printk", scope: !5044, file: !5044, line: 153, type: !5045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!22, !16, null}
!5047 = !DISubprogram(name: "inc_nlink", scope: !173, file: !173, line: 2327, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = !DISubprogram(name: "d_instantiate", scope: !1123, file: !1123, line: 221, type: !3021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5049 = distinct !DISubprogram(name: "fsnotify_mkdir", scope: !5050, file: !5050, line: 292, type: !5051, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5050 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !1156, !1121}
!5053 = !{!5054, !5055}
!5054 = !DILocalVariable(name: "dir", arg: 1, scope: !5049, file: !5050, line: 292, type: !1156)
!5055 = !DILocalVariable(name: "dentry", arg: 2, scope: !5049, file: !5050, line: 292, type: !1121)
!5056 = !DILocation(line: 292, column: 49, scope: !5049)
!5057 = !DILocation(line: 292, column: 69, scope: !5049)
!5058 = !DILocation(line: 294, column: 20, scope: !5049)
!5059 = !DILocation(line: 294, column: 25, scope: !5049)
!5060 = !DILocation(line: 294, column: 2, scope: !5049)
!5061 = !DILocation(line: 296, column: 18, scope: !5049)
!5062 = !DILocation(line: 296, column: 23, scope: !5049)
!5063 = !DILocation(line: 296, column: 2, scope: !5049)
!5064 = !DILocation(line: 297, column: 1, scope: !5049)
!5065 = distinct !DISubprogram(name: "end_creating", scope: !3, file: !3, line: 404, type: !4992, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5066 = !{!5067}
!5067 = !DILocalVariable(name: "dentry", arg: 1, scope: !5065, file: !3, line: 404, type: !1121)
!5068 = !DILocation(line: 404, column: 51, scope: !5065)
!5069 = !DILocation(line: 406, column: 23, scope: !5065)
!5070 = !DILocation(line: 406, column: 31, scope: !5065)
!5071 = !DILocation(line: 406, column: 15, scope: !5065)
!5072 = !DILocation(line: 406, column: 2, scope: !5065)
!5073 = !DILocation(line: 407, column: 9, scope: !5065)
!5074 = !DILocation(line: 407, column: 2, scope: !5065)
!5075 = distinct !DISubprogram(name: "debugfs_create_automount", scope: !3, file: !3, line: 633, type: !5076, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5083)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!1121, !16, !1121, !5078, !20}
!5078 = !DIDerivedType(tag: DW_TAG_typedef, name: "debugfs_automount_t", file: !5079, line: 69, baseType: !5080)
!5079 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!1116, !1121, !20}
!5083 = !{!5084, !5085, !5086, !5087, !5088, !5089, !5104}
!5084 = !DILocalVariable(name: "name", arg: 1, scope: !5075, file: !3, line: 633, type: !16)
!5085 = !DILocalVariable(name: "parent", arg: 2, scope: !5075, file: !3, line: 634, type: !1121)
!5086 = !DILocalVariable(name: "f", arg: 3, scope: !5075, file: !3, line: 635, type: !5078)
!5087 = !DILocalVariable(name: "data", arg: 4, scope: !5075, file: !3, line: 636, type: !20)
!5088 = !DILocalVariable(name: "dentry", scope: !5075, file: !3, line: 638, type: !1121)
!5089 = !DILocalVariable(name: "fsd", scope: !5075, file: !3, line: 639, type: !5090)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_fsdata", file: !5092, line: 18, size: 384, elements: !5093)
!5092 = !DIFile(filename: "fs/debugfs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d77455b24a667e262650af9654533da8")
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "real_fops", scope: !5091, file: !5092, line: 19, baseType: !3130, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, scope: !5091, file: !5092, line: 20, baseType: !5096, size: 320, offset: 64)
!5096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5091, file: !5092, line: 20, size: 320, elements: !5097)
!5097 = !{!5098, !5099}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "automount", scope: !5096, file: !5092, line: 22, baseType: !5078, size: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, scope: !5096, file: !5092, line: 23, baseType: !5100, size: 320)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5096, file: !5092, line: 23, size: 320, elements: !5101)
!5101 = !{!5102, !5103}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "active_users", scope: !5100, file: !5092, line: 24, baseType: !274, size: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "active_users_drained", scope: !5100, file: !5092, line: 25, baseType: !952, size: 256, offset: 64)
!5104 = !DILocalVariable(name: "inode", scope: !5075, file: !3, line: 640, type: !1156)
!5105 = !DILocation(line: 633, column: 53, scope: !5075)
!5106 = !DILocation(line: 634, column: 21, scope: !5075)
!5107 = !DILocation(line: 635, column: 26, scope: !5075)
!5108 = !DILocation(line: 636, column: 12, scope: !5075)
!5109 = !DILocation(line: 638, column: 2, scope: !5075)
!5110 = !DILocation(line: 638, column: 17, scope: !5075)
!5111 = !DILocation(line: 638, column: 41, scope: !5075)
!5112 = !DILocation(line: 638, column: 47, scope: !5075)
!5113 = !DILocation(line: 638, column: 26, scope: !5075)
!5114 = !DILocation(line: 639, column: 2, scope: !5075)
!5115 = !DILocation(line: 639, column: 25, scope: !5075)
!5116 = !DILocation(line: 640, column: 2, scope: !5075)
!5117 = !DILocation(line: 640, column: 16, scope: !5075)
!5118 = !DILocation(line: 642, column: 13, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 642, column: 6)
!5120 = !DILocation(line: 642, column: 6, scope: !5119)
!5121 = !DILocation(line: 642, column: 6, scope: !5075)
!5122 = !DILocation(line: 643, column: 10, scope: !5119)
!5123 = !DILocation(line: 643, column: 3, scope: !5119)
!5124 = !DILocation(line: 645, column: 8, scope: !5075)
!5125 = !DILocation(line: 645, column: 6, scope: !5075)
!5126 = !DILocation(line: 646, column: 7, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 646, column: 6)
!5128 = !DILocation(line: 646, column: 6, scope: !5075)
!5129 = !DILocation(line: 647, column: 19, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 646, column: 12)
!5131 = !DILocation(line: 647, column: 3, scope: !5130)
!5132 = !DILocation(line: 648, column: 10, scope: !5130)
!5133 = !DILocation(line: 648, column: 3, scope: !5130)
!5134 = !DILocation(line: 651, column: 19, scope: !5075)
!5135 = !DILocation(line: 651, column: 2, scope: !5075)
!5136 = !DILocation(line: 651, column: 7, scope: !5075)
!5137 = !DILocation(line: 651, column: 17, scope: !5075)
!5138 = !DILocation(line: 653, column: 8, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 653, column: 6)
!5140 = !DILocation(line: 653, column: 22, scope: !5139)
!5141 = !DILocation(line: 653, column: 6, scope: !5075)
!5142 = !DILocation(line: 654, column: 19, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 653, column: 44)
!5144 = !DILocation(line: 654, column: 3, scope: !5143)
!5145 = !DILocation(line: 655, column: 9, scope: !5143)
!5146 = !DILocation(line: 655, column: 3, scope: !5143)
!5147 = !DILocation(line: 656, column: 10, scope: !5143)
!5148 = !DILocation(line: 656, column: 3, scope: !5143)
!5149 = !DILocation(line: 659, column: 28, scope: !5075)
!5150 = !DILocation(line: 659, column: 36, scope: !5075)
!5151 = !DILocation(line: 659, column: 10, scope: !5075)
!5152 = !DILocation(line: 659, column: 8, scope: !5075)
!5153 = !DILocation(line: 660, column: 6, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 660, column: 6)
!5155 = !DILocation(line: 660, column: 6, scope: !5075)
!5156 = !DILocation(line: 661, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 661, column: 3)
!5158 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 660, column: 24)
!5159 = !DILocation(line: 661, column: 3, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 661, column: 3)
!5161 = !DILocation(line: 663, column: 9, scope: !5158)
!5162 = !DILocation(line: 663, column: 3, scope: !5158)
!5163 = !DILocation(line: 664, column: 26, scope: !5158)
!5164 = !DILocation(line: 664, column: 10, scope: !5158)
!5165 = !DILocation(line: 664, column: 3, scope: !5158)
!5166 = !DILocation(line: 667, column: 23, scope: !5075)
!5167 = !DILocation(line: 667, column: 2, scope: !5075)
!5168 = !DILocation(line: 668, column: 2, scope: !5075)
!5169 = !DILocation(line: 668, column: 9, scope: !5075)
!5170 = !DILocation(line: 668, column: 17, scope: !5075)
!5171 = !DILocation(line: 669, column: 21, scope: !5075)
!5172 = !DILocation(line: 669, column: 2, scope: !5075)
!5173 = !DILocation(line: 669, column: 9, scope: !5075)
!5174 = !DILocation(line: 669, column: 19, scope: !5075)
!5175 = !DILocation(line: 670, column: 21, scope: !5075)
!5176 = !DILocation(line: 670, column: 2, scope: !5075)
!5177 = !DILocation(line: 670, column: 10, scope: !5075)
!5178 = !DILocation(line: 670, column: 19, scope: !5075)
!5179 = !DILocation(line: 672, column: 12, scope: !5075)
!5180 = !DILocation(line: 672, column: 2, scope: !5075)
!5181 = !DILocation(line: 673, column: 16, scope: !5075)
!5182 = !DILocation(line: 673, column: 24, scope: !5075)
!5183 = !DILocation(line: 673, column: 2, scope: !5075)
!5184 = !DILocation(line: 674, column: 20, scope: !5075)
!5185 = !DILocation(line: 674, column: 28, scope: !5075)
!5186 = !DILocation(line: 674, column: 12, scope: !5075)
!5187 = !DILocation(line: 674, column: 2, scope: !5075)
!5188 = !DILocation(line: 675, column: 25, scope: !5075)
!5189 = !DILocation(line: 675, column: 33, scope: !5075)
!5190 = !DILocation(line: 675, column: 17, scope: !5075)
!5191 = !DILocation(line: 675, column: 44, scope: !5075)
!5192 = !DILocation(line: 675, column: 2, scope: !5075)
!5193 = !DILocation(line: 676, column: 22, scope: !5075)
!5194 = !DILocation(line: 676, column: 9, scope: !5075)
!5195 = !DILocation(line: 676, column: 2, scope: !5075)
!5196 = !DILocation(line: 677, column: 1, scope: !5075)
!5197 = distinct !DISubprogram(name: "kzalloc", scope: !230, file: !230, line: 719, type: !5198, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!20, !35, !254}
!5200 = !{!5201, !5202}
!5201 = !DILocalVariable(name: "size", arg: 1, scope: !5197, file: !230, line: 719, type: !35)
!5202 = !DILocalVariable(name: "flags", arg: 2, scope: !5197, file: !230, line: 719, type: !254)
!5203 = !DILocation(line: 719, column: 52, scope: !5197)
!5204 = !DILocation(line: 719, column: 64, scope: !5197)
!5205 = !DILocation(line: 721, column: 17, scope: !5197)
!5206 = !DILocation(line: 721, column: 23, scope: !5197)
!5207 = !DILocation(line: 721, column: 29, scope: !5197)
!5208 = !DILocation(line: 721, column: 9, scope: !5197)
!5209 = !DILocation(line: 721, column: 2, scope: !5197)
!5210 = !DISubprogram(name: "kfree", scope: !230, file: !230, line: 227, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !2061}
!5213 = !DISubprogram(name: "make_empty_dir_inode", scope: !173, file: !173, line: 3178, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5214 = distinct !DISubprogram(name: "debugfs_create_symlink", scope: !3, file: !3, line: 703, type: !5215, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!1121, !16, !1121, !16}
!5217 = !{!5218, !5219, !5220, !5221, !5222, !5223}
!5218 = !DILocalVariable(name: "name", arg: 1, scope: !5214, file: !3, line: 703, type: !16)
!5219 = !DILocalVariable(name: "parent", arg: 2, scope: !5214, file: !3, line: 703, type: !1121)
!5220 = !DILocalVariable(name: "target", arg: 3, scope: !5214, file: !3, line: 704, type: !16)
!5221 = !DILocalVariable(name: "dentry", scope: !5214, file: !3, line: 706, type: !1121)
!5222 = !DILocalVariable(name: "inode", scope: !5214, file: !3, line: 707, type: !1156)
!5223 = !DILocalVariable(name: "link", scope: !5214, file: !3, line: 708, type: !874)
!5224 = !DILocation(line: 703, column: 51, scope: !5214)
!5225 = !DILocation(line: 703, column: 72, scope: !5214)
!5226 = !DILocation(line: 704, column: 23, scope: !5214)
!5227 = !DILocation(line: 706, column: 2, scope: !5214)
!5228 = !DILocation(line: 706, column: 17, scope: !5214)
!5229 = !DILocation(line: 707, column: 2, scope: !5214)
!5230 = !DILocation(line: 707, column: 16, scope: !5214)
!5231 = !DILocation(line: 708, column: 2, scope: !5214)
!5232 = !DILocation(line: 708, column: 8, scope: !5214)
!5233 = !DILocation(line: 708, column: 23, scope: !5214)
!5234 = !DILocation(line: 708, column: 15, scope: !5214)
!5235 = !DILocation(line: 709, column: 7, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 709, column: 6)
!5237 = !DILocation(line: 709, column: 6, scope: !5214)
!5238 = !DILocation(line: 710, column: 10, scope: !5236)
!5239 = !DILocation(line: 710, column: 3, scope: !5236)
!5240 = !DILocation(line: 712, column: 26, scope: !5214)
!5241 = !DILocation(line: 712, column: 32, scope: !5214)
!5242 = !DILocation(line: 712, column: 11, scope: !5214)
!5243 = !DILocation(line: 712, column: 9, scope: !5214)
!5244 = !DILocation(line: 713, column: 13, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 713, column: 6)
!5246 = !DILocation(line: 713, column: 6, scope: !5245)
!5247 = !DILocation(line: 713, column: 6, scope: !5214)
!5248 = !DILocation(line: 714, column: 9, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 713, column: 22)
!5250 = !DILocation(line: 714, column: 3, scope: !5249)
!5251 = !DILocation(line: 715, column: 10, scope: !5249)
!5252 = !DILocation(line: 715, column: 3, scope: !5249)
!5253 = !DILocation(line: 718, column: 28, scope: !5214)
!5254 = !DILocation(line: 718, column: 36, scope: !5214)
!5255 = !DILocation(line: 718, column: 10, scope: !5214)
!5256 = !DILocation(line: 718, column: 8, scope: !5214)
!5257 = !DILocation(line: 719, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 719, column: 6)
!5259 = !DILocation(line: 719, column: 6, scope: !5214)
!5260 = !DILocation(line: 720, column: 3, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 720, column: 3)
!5262 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 719, column: 24)
!5263 = !DILocation(line: 720, column: 3, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 720, column: 3)
!5265 = !DILocation(line: 722, column: 9, scope: !5262)
!5266 = !DILocation(line: 722, column: 3, scope: !5262)
!5267 = !DILocation(line: 723, column: 26, scope: !5262)
!5268 = !DILocation(line: 723, column: 10, scope: !5262)
!5269 = !DILocation(line: 723, column: 3, scope: !5262)
!5270 = !DILocation(line: 725, column: 2, scope: !5214)
!5271 = !DILocation(line: 725, column: 9, scope: !5214)
!5272 = !DILocation(line: 725, column: 16, scope: !5214)
!5273 = !DILocation(line: 726, column: 2, scope: !5214)
!5274 = !DILocation(line: 726, column: 9, scope: !5214)
!5275 = !DILocation(line: 726, column: 14, scope: !5214)
!5276 = !DILocation(line: 727, column: 18, scope: !5214)
!5277 = !DILocation(line: 727, column: 2, scope: !5214)
!5278 = !DILocation(line: 727, column: 9, scope: !5214)
!5279 = !DILocation(line: 727, column: 16, scope: !5214)
!5280 = !DILocation(line: 728, column: 16, scope: !5214)
!5281 = !DILocation(line: 728, column: 24, scope: !5214)
!5282 = !DILocation(line: 728, column: 2, scope: !5214)
!5283 = !DILocation(line: 729, column: 22, scope: !5214)
!5284 = !DILocation(line: 729, column: 9, scope: !5214)
!5285 = !DILocation(line: 729, column: 2, scope: !5214)
!5286 = !DILocation(line: 730, column: 1, scope: !5214)
!5287 = !DISubprogram(name: "kstrdup", scope: !4615, file: !4615, line: 216, type: !5288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!874, !16, !254}
!5290 = distinct !DISubprogram(name: "debugfs_remove", scope: !3, file: !3, line: 771, type: !3016, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5291 = !{!5292}
!5292 = !DILocalVariable(name: "dentry", arg: 1, scope: !5290, file: !3, line: 771, type: !1121)
!5293 = !DILocation(line: 771, column: 36, scope: !5290)
!5294 = !DILocation(line: 773, column: 21, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 773, column: 6)
!5296 = !DILocation(line: 773, column: 6, scope: !5295)
!5297 = !DILocation(line: 773, column: 6, scope: !5290)
!5298 = !DILocation(line: 774, column: 3, scope: !5295)
!5299 = !DILocation(line: 776, column: 2, scope: !5290)
!5300 = !DILocation(line: 777, column: 27, scope: !5290)
!5301 = !DILocation(line: 777, column: 2, scope: !5290)
!5302 = !DILocation(line: 778, column: 2, scope: !5290)
!5303 = !DILocation(line: 779, column: 1, scope: !5290)
!5304 = !DISubprogram(name: "simple_pin_fs", scope: !173, file: !173, line: 3184, type: !5305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!22, !1366, !5307, !255}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!5308 = !DISubprogram(name: "simple_recursive_removal", scope: !173, file: !173, line: 3160, type: !5309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{null, !1121, !3015}
!5311 = distinct !DISubprogram(name: "remove_one", scope: !3, file: !3, line: 751, type: !3016, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5312)
!5312 = !{!5313}
!5313 = !DILocalVariable(name: "victim", arg: 1, scope: !5311, file: !3, line: 751, type: !1121)
!5314 = !DILocation(line: 751, column: 39, scope: !5311)
!5315 = !DILocation(line: 753, column: 22, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 753, column: 13)
!5317 = !DILocation(line: 753, column: 13, scope: !5316)
!5318 = !DILocation(line: 753, column: 13, scope: !5311)
!5319 = !DILocation(line: 754, column: 26, scope: !5316)
!5320 = !DILocation(line: 754, column: 3, scope: !5316)
!5321 = !DILocation(line: 755, column: 2, scope: !5311)
!5322 = !DILocation(line: 756, column: 1, scope: !5311)
!5323 = !DISubprogram(name: "simple_release_fs", scope: !173, file: !173, line: 3185, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !5307, !255}
!5326 = distinct !DISubprogram(name: "debugfs_lookup_and_remove", scope: !3, file: !3, line: 791, type: !5327, scopeLine: 792, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{null, !16, !1121}
!5329 = !{!5330, !5331, !5332}
!5330 = !DILocalVariable(name: "name", arg: 1, scope: !5326, file: !3, line: 791, type: !16)
!5331 = !DILocalVariable(name: "parent", arg: 2, scope: !5326, file: !3, line: 791, type: !1121)
!5332 = !DILocalVariable(name: "dentry", scope: !5326, file: !3, line: 793, type: !1121)
!5333 = !DILocation(line: 791, column: 44, scope: !5326)
!5334 = !DILocation(line: 791, column: 65, scope: !5326)
!5335 = !DILocation(line: 793, column: 2, scope: !5326)
!5336 = !DILocation(line: 793, column: 17, scope: !5326)
!5337 = !DILocation(line: 795, column: 26, scope: !5326)
!5338 = !DILocation(line: 795, column: 32, scope: !5326)
!5339 = !DILocation(line: 795, column: 11, scope: !5326)
!5340 = !DILocation(line: 795, column: 9, scope: !5326)
!5341 = !DILocation(line: 796, column: 7, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 796, column: 6)
!5343 = !DILocation(line: 796, column: 6, scope: !5326)
!5344 = !DILocation(line: 797, column: 3, scope: !5342)
!5345 = !DILocation(line: 799, column: 17, scope: !5326)
!5346 = !DILocation(line: 799, column: 2, scope: !5326)
!5347 = !DILocation(line: 800, column: 7, scope: !5326)
!5348 = !DILocation(line: 800, column: 2, scope: !5326)
!5349 = !DILocation(line: 801, column: 1, scope: !5326)
!5350 = !DISubprogram(name: "dput", scope: !1123, file: !1123, line: 368, type: !3016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5351 = distinct !DISubprogram(name: "debugfs_rename", scope: !3, file: !3, line: 823, type: !5352, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!1121, !1121, !1121, !1121, !16}
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5367}
!5355 = !DILocalVariable(name: "old_dir", arg: 1, scope: !5351, file: !3, line: 823, type: !1121)
!5356 = !DILocalVariable(name: "old_dentry", arg: 2, scope: !5351, file: !3, line: 823, type: !1121)
!5357 = !DILocalVariable(name: "new_dir", arg: 3, scope: !5351, file: !3, line: 824, type: !1121)
!5358 = !DILocalVariable(name: "new_name", arg: 4, scope: !5351, file: !3, line: 824, type: !16)
!5359 = !DILocalVariable(name: "error", scope: !5351, file: !3, line: 826, type: !22)
!5360 = !DILocalVariable(name: "dentry", scope: !5351, file: !3, line: 827, type: !1121)
!5361 = !DILocalVariable(name: "trap", scope: !5351, file: !3, line: 827, type: !1121)
!5362 = !DILocalVariable(name: "old_name", scope: !5351, file: !3, line: 828, type: !5363)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name_snapshot", file: !1123, line: 595, size: 384, elements: !5364)
!5364 = !{!5365, !5366}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5363, file: !1123, line: 596, baseType: !1141, size: 128)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !5363, file: !1123, line: 597, baseType: !3275, size: 256, offset: 128)
!5367 = !DILabel(scope: !5351, name: "exit", file: !3, line: 866)
!5368 = !DILocation(line: 823, column: 46, scope: !5351)
!5369 = !DILocation(line: 823, column: 70, scope: !5351)
!5370 = !DILocation(line: 824, column: 18, scope: !5351)
!5371 = !DILocation(line: 824, column: 39, scope: !5351)
!5372 = !DILocation(line: 826, column: 2, scope: !5351)
!5373 = !DILocation(line: 826, column: 6, scope: !5351)
!5374 = !DILocation(line: 827, column: 2, scope: !5351)
!5375 = !DILocation(line: 827, column: 17, scope: !5351)
!5376 = !DILocation(line: 827, column: 33, scope: !5351)
!5377 = !DILocation(line: 828, column: 2, scope: !5351)
!5378 = !DILocation(line: 828, column: 23, scope: !5351)
!5379 = !DILocation(line: 830, column: 13, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 830, column: 6)
!5381 = !DILocation(line: 830, column: 6, scope: !5380)
!5382 = !DILocation(line: 830, column: 6, scope: !5351)
!5383 = !DILocation(line: 831, column: 10, scope: !5380)
!5384 = !DILocation(line: 831, column: 3, scope: !5380)
!5385 = !DILocation(line: 832, column: 13, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 832, column: 6)
!5387 = !DILocation(line: 832, column: 6, scope: !5386)
!5388 = !DILocation(line: 832, column: 6, scope: !5351)
!5389 = !DILocation(line: 833, column: 10, scope: !5386)
!5390 = !DILocation(line: 833, column: 3, scope: !5386)
!5391 = !DILocation(line: 834, column: 21, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 834, column: 6)
!5393 = !DILocation(line: 834, column: 6, scope: !5392)
!5394 = !DILocation(line: 834, column: 6, scope: !5351)
!5395 = !DILocation(line: 835, column: 10, scope: !5392)
!5396 = !DILocation(line: 835, column: 3, scope: !5392)
!5397 = !DILocation(line: 837, column: 21, scope: !5351)
!5398 = !DILocation(line: 837, column: 30, scope: !5351)
!5399 = !DILocation(line: 837, column: 9, scope: !5351)
!5400 = !DILocation(line: 837, column: 7, scope: !5351)
!5401 = !DILocation(line: 839, column: 27, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 839, column: 6)
!5403 = !DILocation(line: 839, column: 6, scope: !5402)
!5404 = !DILocation(line: 839, column: 36, scope: !5402)
!5405 = !DILocation(line: 839, column: 60, scope: !5402)
!5406 = !DILocation(line: 839, column: 39, scope: !5402)
!5407 = !DILocation(line: 839, column: 6, scope: !5351)
!5408 = !DILocation(line: 840, column: 3, scope: !5402)
!5409 = !DILocation(line: 842, column: 27, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 842, column: 6)
!5411 = !DILocation(line: 842, column: 6, scope: !5410)
!5412 = !DILocation(line: 842, column: 39, scope: !5410)
!5413 = !DILocation(line: 842, column: 42, scope: !5410)
!5414 = !DILocation(line: 842, column: 56, scope: !5410)
!5415 = !DILocation(line: 842, column: 53, scope: !5410)
!5416 = !DILocation(line: 842, column: 61, scope: !5410)
!5417 = !DILocation(line: 843, column: 19, scope: !5410)
!5418 = !DILocation(line: 843, column: 6, scope: !5410)
!5419 = !DILocation(line: 842, column: 6, scope: !5351)
!5420 = !DILocation(line: 844, column: 3, scope: !5410)
!5421 = !DILocation(line: 845, column: 26, scope: !5351)
!5422 = !DILocation(line: 845, column: 36, scope: !5351)
!5423 = !DILocation(line: 845, column: 52, scope: !5351)
!5424 = !DILocation(line: 845, column: 45, scope: !5351)
!5425 = !DILocation(line: 845, column: 11, scope: !5351)
!5426 = !DILocation(line: 845, column: 9, scope: !5351)
!5427 = !DILocation(line: 847, column: 13, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 847, column: 6)
!5429 = !DILocation(line: 847, column: 6, scope: !5428)
!5430 = !DILocation(line: 847, column: 21, scope: !5428)
!5431 = !DILocation(line: 847, column: 24, scope: !5428)
!5432 = !DILocation(line: 847, column: 34, scope: !5428)
!5433 = !DILocation(line: 847, column: 31, scope: !5428)
!5434 = !DILocation(line: 847, column: 39, scope: !5428)
!5435 = !DILocation(line: 847, column: 63, scope: !5428)
!5436 = !DILocation(line: 847, column: 42, scope: !5428)
!5437 = !DILocation(line: 847, column: 6, scope: !5351)
!5438 = !DILocation(line: 848, column: 3, scope: !5428)
!5439 = !DILocation(line: 850, column: 39, scope: !5351)
!5440 = !DILocation(line: 850, column: 2, scope: !5351)
!5441 = !DILocation(line: 852, column: 48, scope: !5351)
!5442 = !DILocation(line: 852, column: 40, scope: !5351)
!5443 = !DILocation(line: 852, column: 58, scope: !5351)
!5444 = !DILocation(line: 853, column: 18, scope: !5351)
!5445 = !DILocation(line: 853, column: 10, scope: !5351)
!5446 = !DILocation(line: 853, column: 28, scope: !5351)
!5447 = !DILocation(line: 852, column: 10, scope: !5351)
!5448 = !DILocation(line: 852, column: 8, scope: !5351)
!5449 = !DILocation(line: 854, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 854, column: 6)
!5451 = !DILocation(line: 854, column: 6, scope: !5351)
!5452 = !DILocation(line: 855, column: 3, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 854, column: 13)
!5454 = !DILocation(line: 856, column: 3, scope: !5453)
!5455 = !DILocation(line: 858, column: 9, scope: !5351)
!5456 = !DILocation(line: 858, column: 21, scope: !5351)
!5457 = !DILocation(line: 858, column: 2, scope: !5351)
!5458 = !DILocation(line: 859, column: 24, scope: !5351)
!5459 = !DILocation(line: 859, column: 16, scope: !5351)
!5460 = !DILocation(line: 859, column: 42, scope: !5351)
!5461 = !DILocation(line: 859, column: 34, scope: !5351)
!5462 = !DILocation(line: 859, column: 62, scope: !5351)
!5463 = !DILocation(line: 860, column: 12, scope: !5351)
!5464 = !DILocation(line: 860, column: 3, scope: !5351)
!5465 = !DILocation(line: 861, column: 9, scope: !5351)
!5466 = !DILocation(line: 859, column: 2, scope: !5351)
!5467 = !DILocation(line: 862, column: 2, scope: !5351)
!5468 = !DILocation(line: 863, column: 16, scope: !5351)
!5469 = !DILocation(line: 863, column: 25, scope: !5351)
!5470 = !DILocation(line: 863, column: 2, scope: !5351)
!5471 = !DILocation(line: 864, column: 7, scope: !5351)
!5472 = !DILocation(line: 864, column: 2, scope: !5351)
!5473 = !DILocation(line: 865, column: 9, scope: !5351)
!5474 = !DILocation(line: 865, column: 2, scope: !5351)
!5475 = !DILocation(line: 866, column: 1, scope: !5351)
!5476 = !DILocation(line: 867, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 867, column: 6)
!5478 = !DILocation(line: 867, column: 13, scope: !5477)
!5479 = !DILocation(line: 867, column: 24, scope: !5477)
!5480 = !DILocation(line: 867, column: 17, scope: !5477)
!5481 = !DILocation(line: 867, column: 6, scope: !5351)
!5482 = !DILocation(line: 868, column: 8, scope: !5477)
!5483 = !DILocation(line: 868, column: 3, scope: !5477)
!5484 = !DILocation(line: 869, column: 16, scope: !5351)
!5485 = !DILocation(line: 869, column: 25, scope: !5351)
!5486 = !DILocation(line: 869, column: 2, scope: !5351)
!5487 = !DILocation(line: 870, column: 13, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 870, column: 6)
!5489 = !DILocation(line: 870, column: 6, scope: !5488)
!5490 = !DILocation(line: 870, column: 6, scope: !5351)
!5491 = !DILocation(line: 871, column: 10, scope: !5488)
!5492 = !DILocation(line: 871, column: 3, scope: !5488)
!5493 = !DILocation(line: 872, column: 9, scope: !5351)
!5494 = !DILocation(line: 872, column: 2, scope: !5351)
!5495 = !DILocation(line: 873, column: 1, scope: !5351)
!5496 = !DISubprogram(name: "lock_rename", scope: !4611, file: !4611, line: 91, type: !5497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!1121, !1121, !1121}
!5499 = distinct !DISubprogram(name: "d_really_is_negative", scope: !1123, file: !1123, line: 464, type: !5500, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!786, !2997}
!5502 = !{!5503}
!5503 = !DILocalVariable(name: "dentry", arg: 1, scope: !5499, file: !1123, line: 464, type: !2997)
!5504 = !DILocation(line: 464, column: 62, scope: !5499)
!5505 = !DILocation(line: 466, column: 9, scope: !5499)
!5506 = !DILocation(line: 466, column: 17, scope: !5499)
!5507 = !DILocation(line: 466, column: 25, scope: !5499)
!5508 = !DILocation(line: 466, column: 2, scope: !5499)
!5509 = distinct !DISubprogram(name: "d_mountpoint", scope: !1123, file: !1123, line: 375, type: !5500, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "dentry", arg: 1, scope: !5509, file: !1123, line: 375, type: !2997)
!5512 = !DILocation(line: 375, column: 54, scope: !5509)
!5513 = !DILocation(line: 377, column: 9, scope: !5509)
!5514 = !DILocation(line: 377, column: 17, scope: !5509)
!5515 = !DILocation(line: 377, column: 25, scope: !5509)
!5516 = !DILocation(line: 377, column: 2, scope: !5509)
!5517 = !DISubprogram(name: "lookup_one_len", scope: !4611, file: !4611, line: 76, type: !4612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5518 = distinct !DISubprogram(name: "d_really_is_positive", scope: !1123, file: !1123, line: 482, type: !5500, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5519 = !{!5520}
!5520 = !DILocalVariable(name: "dentry", arg: 1, scope: !5518, file: !1123, line: 482, type: !2997)
!5521 = !DILocation(line: 482, column: 62, scope: !5518)
!5522 = !DILocation(line: 484, column: 9, scope: !5518)
!5523 = !DILocation(line: 484, column: 17, scope: !5518)
!5524 = !DILocation(line: 484, column: 25, scope: !5518)
!5525 = !DILocation(line: 484, column: 2, scope: !5518)
!5526 = !DISubprogram(name: "take_dentry_name_snapshot", scope: !1123, file: !1123, line: 599, type: !5527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{null, !5529, !1121}
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5530 = !DISubprogram(name: "simple_rename", scope: !173, file: !173, line: 3157, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5531 = !DISubprogram(name: "release_dentry_name_snapshot", scope: !1123, file: !1123, line: 600, type: !5532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{null, !5529}
!5534 = !DISubprogram(name: "d_move", scope: !1123, file: !1123, line: 272, type: !5535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{null, !1121, !1121}
!5537 = distinct !DISubprogram(name: "fsnotify_move", scope: !5050, file: !5050, line: 146, type: !5538, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{null, !1156, !1156, !3004, !22, !1156, !1121}
!5540 = !{!5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552}
!5541 = !DILocalVariable(name: "old_dir", arg: 1, scope: !5537, file: !5050, line: 146, type: !1156)
!5542 = !DILocalVariable(name: "new_dir", arg: 2, scope: !5537, file: !5050, line: 146, type: !1156)
!5543 = !DILocalVariable(name: "old_name", arg: 3, scope: !5537, file: !5050, line: 147, type: !3004)
!5544 = !DILocalVariable(name: "isdir", arg: 4, scope: !5537, file: !5050, line: 148, type: !22)
!5545 = !DILocalVariable(name: "target", arg: 5, scope: !5537, file: !5050, line: 148, type: !1156)
!5546 = !DILocalVariable(name: "moved", arg: 6, scope: !5537, file: !5050, line: 149, type: !1121)
!5547 = !DILocalVariable(name: "source", scope: !5537, file: !5050, line: 151, type: !1156)
!5548 = !DILocalVariable(name: "fs_cookie", scope: !5537, file: !5050, line: 152, type: !268)
!5549 = !DILocalVariable(name: "old_dir_mask", scope: !5537, file: !5050, line: 153, type: !269)
!5550 = !DILocalVariable(name: "new_dir_mask", scope: !5537, file: !5050, line: 154, type: !269)
!5551 = !DILocalVariable(name: "rename_mask", scope: !5537, file: !5050, line: 155, type: !269)
!5552 = !DILocalVariable(name: "new_name", scope: !5537, file: !5050, line: 156, type: !3004)
!5553 = !DILocation(line: 146, column: 48, scope: !5537)
!5554 = !DILocation(line: 146, column: 71, scope: !5537)
!5555 = !DILocation(line: 147, column: 25, scope: !5537)
!5556 = !DILocation(line: 148, column: 10, scope: !5537)
!5557 = !DILocation(line: 148, column: 31, scope: !5537)
!5558 = !DILocation(line: 149, column: 21, scope: !5537)
!5559 = !DILocation(line: 151, column: 2, scope: !5537)
!5560 = !DILocation(line: 151, column: 16, scope: !5537)
!5561 = !DILocation(line: 151, column: 25, scope: !5537)
!5562 = !DILocation(line: 151, column: 32, scope: !5537)
!5563 = !DILocation(line: 152, column: 2, scope: !5537)
!5564 = !DILocation(line: 152, column: 6, scope: !5537)
!5565 = !DILocation(line: 152, column: 18, scope: !5537)
!5566 = !DILocation(line: 153, column: 2, scope: !5537)
!5567 = !DILocation(line: 153, column: 8, scope: !5537)
!5568 = !DILocation(line: 154, column: 2, scope: !5537)
!5569 = !DILocation(line: 154, column: 8, scope: !5537)
!5570 = !DILocation(line: 155, column: 2, scope: !5537)
!5571 = !DILocation(line: 155, column: 8, scope: !5537)
!5572 = !DILocation(line: 156, column: 2, scope: !5537)
!5573 = !DILocation(line: 156, column: 21, scope: !5537)
!5574 = !DILocation(line: 156, column: 33, scope: !5537)
!5575 = !DILocation(line: 156, column: 40, scope: !5537)
!5576 = !DILocation(line: 158, column: 6, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5537, file: !5050, line: 158, column: 6)
!5578 = !DILocation(line: 158, column: 6, scope: !5537)
!5579 = !DILocation(line: 159, column: 16, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5577, file: !5050, line: 158, column: 13)
!5581 = !DILocation(line: 160, column: 16, scope: !5580)
!5582 = !DILocation(line: 161, column: 15, scope: !5580)
!5583 = !DILocation(line: 162, column: 2, scope: !5580)
!5584 = !DILocation(line: 165, column: 16, scope: !5537)
!5585 = !DILocation(line: 165, column: 29, scope: !5537)
!5586 = !DILocation(line: 166, column: 9, scope: !5537)
!5587 = !DILocation(line: 166, column: 18, scope: !5537)
!5588 = !DILocation(line: 165, column: 2, scope: !5537)
!5589 = !DILocation(line: 168, column: 16, scope: !5537)
!5590 = !DILocation(line: 168, column: 30, scope: !5537)
!5591 = !DILocation(line: 169, column: 9, scope: !5537)
!5592 = !DILocation(line: 169, column: 18, scope: !5537)
!5593 = !DILocation(line: 169, column: 28, scope: !5537)
!5594 = !DILocation(line: 168, column: 2, scope: !5537)
!5595 = !DILocation(line: 170, column: 16, scope: !5537)
!5596 = !DILocation(line: 170, column: 30, scope: !5537)
!5597 = !DILocation(line: 171, column: 9, scope: !5537)
!5598 = !DILocation(line: 171, column: 18, scope: !5537)
!5599 = !DILocation(line: 171, column: 28, scope: !5537)
!5600 = !DILocation(line: 170, column: 2, scope: !5537)
!5601 = !DILocation(line: 173, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5537, file: !5050, line: 173, column: 6)
!5603 = !DILocation(line: 173, column: 6, scope: !5537)
!5604 = !DILocation(line: 174, column: 23, scope: !5602)
!5605 = !DILocation(line: 174, column: 3, scope: !5602)
!5606 = !DILocation(line: 175, column: 17, scope: !5537)
!5607 = !DILocation(line: 175, column: 2, scope: !5537)
!5608 = !DILocation(line: 176, column: 20, scope: !5537)
!5609 = !DILocation(line: 176, column: 29, scope: !5537)
!5610 = !DILocation(line: 176, column: 2, scope: !5537)
!5611 = !DILocation(line: 177, column: 1, scope: !5537)
!5612 = distinct !DISubprogram(name: "d_is_dir", scope: !1123, file: !1123, line: 408, type: !5500, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5613 = !{!5614}
!5614 = !DILocalVariable(name: "dentry", arg: 1, scope: !5612, file: !1123, line: 408, type: !2997)
!5615 = !DILocation(line: 408, column: 50, scope: !5612)
!5616 = !DILocation(line: 410, column: 22, scope: !5612)
!5617 = !DILocation(line: 410, column: 9, scope: !5612)
!5618 = !DILocation(line: 410, column: 30, scope: !5612)
!5619 = !DILocation(line: 410, column: 46, scope: !5612)
!5620 = !DILocation(line: 410, column: 33, scope: !5612)
!5621 = !DILocation(line: 410, column: 2, scope: !5612)
!5622 = !DISubprogram(name: "unlock_rename", scope: !4611, file: !4611, line: 93, type: !5535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5623 = distinct !DISubprogram(name: "debugfs_kernel", scope: !3, file: !3, line: 885, type: !4405, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5624)
!5624 = !{!5625}
!5625 = !DILocalVariable(name: "str", arg: 1, scope: !5623, file: !3, line: 885, type: !874)
!5626 = !DILocation(line: 885, column: 40, scope: !5623)
!5627 = !DILocation(line: 887, column: 6, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 887, column: 6)
!5629 = !DILocation(line: 887, column: 6, scope: !5623)
!5630 = !DILocation(line: 888, column: 15, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 888, column: 7)
!5632 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 887, column: 11)
!5633 = !DILocation(line: 888, column: 8, scope: !5631)
!5634 = !DILocation(line: 888, column: 7, scope: !5632)
!5635 = !DILocation(line: 889, column: 18, scope: !5631)
!5636 = !DILocation(line: 889, column: 4, scope: !5631)
!5637 = !DILocation(line: 890, column: 20, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 890, column: 12)
!5639 = !DILocation(line: 890, column: 13, scope: !5638)
!5640 = !DILocation(line: 890, column: 12, scope: !5631)
!5641 = !DILocation(line: 891, column: 18, scope: !5638)
!5642 = !DILocation(line: 891, column: 4, scope: !5638)
!5643 = !DILocation(line: 892, column: 20, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 892, column: 12)
!5645 = !DILocation(line: 892, column: 13, scope: !5644)
!5646 = !DILocation(line: 892, column: 12, scope: !5638)
!5647 = !DILocation(line: 893, column: 18, scope: !5644)
!5648 = !DILocation(line: 893, column: 4, scope: !5644)
!5649 = !DILocation(line: 894, column: 2, scope: !5632)
!5650 = !DILocation(line: 896, column: 2, scope: !5623)
!5651 = distinct !DISubprogram(name: "__initstub__kmod_debugfs__345_918_debugfs_init1", scope: !3, file: !3, line: 918, type: !2335, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5652 = !DILocation(line: 918, column: 1, scope: !5651)
!5653 = distinct !DISubprogram(name: "debugfs_init", scope: !3, file: !3, line: 899, type: !2335, scopeLine: 900, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5654)
!5654 = !{!5655}
!5655 = !DILocalVariable(name: "retval", scope: !5653, file: !3, line: 901, type: !22)
!5656 = !DILocation(line: 901, column: 2, scope: !5653)
!5657 = !DILocation(line: 901, column: 6, scope: !5653)
!5658 = !DILocation(line: 903, column: 8, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 903, column: 6)
!5660 = !DILocation(line: 903, column: 22, scope: !5659)
!5661 = !DILocation(line: 903, column: 6, scope: !5653)
!5662 = !DILocation(line: 904, column: 3, scope: !5659)
!5663 = !DILocation(line: 906, column: 36, scope: !5653)
!5664 = !DILocation(line: 906, column: 11, scope: !5653)
!5665 = !DILocation(line: 906, column: 9, scope: !5653)
!5666 = !DILocation(line: 907, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 907, column: 6)
!5668 = !DILocation(line: 907, column: 6, scope: !5653)
!5669 = !DILocation(line: 908, column: 10, scope: !5667)
!5670 = !DILocation(line: 908, column: 3, scope: !5667)
!5671 = !DILocation(line: 910, column: 11, scope: !5653)
!5672 = !DILocation(line: 910, column: 9, scope: !5653)
!5673 = !DILocation(line: 911, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 911, column: 6)
!5675 = !DILocation(line: 911, column: 6, scope: !5653)
!5676 = !DILocation(line: 912, column: 28, scope: !5674)
!5677 = !DILocation(line: 912, column: 3, scope: !5674)
!5678 = !DILocation(line: 914, column: 22, scope: !5674)
!5679 = !DILocation(line: 916, column: 9, scope: !5653)
!5680 = !DILocation(line: 916, column: 2, scope: !5653)
!5681 = !DILocation(line: 917, column: 1, scope: !5653)
!5682 = distinct !DISubprogram(name: "fsnotify_create", scope: !5050, file: !5050, line: 211, type: !5051, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5683 = !{!5684, !5685}
!5684 = !DILocalVariable(name: "dir", arg: 1, scope: !5682, file: !5050, line: 211, type: !1156)
!5685 = !DILocalVariable(name: "dentry", arg: 2, scope: !5682, file: !5050, line: 211, type: !1121)
!5686 = !DILocation(line: 211, column: 50, scope: !5682)
!5687 = !DILocation(line: 211, column: 70, scope: !5682)
!5688 = !DILocation(line: 213, column: 20, scope: !5682)
!5689 = !DILocation(line: 213, column: 25, scope: !5682)
!5690 = !DILocation(line: 213, column: 2, scope: !5682)
!5691 = !DILocation(line: 215, column: 18, scope: !5682)
!5692 = !DILocation(line: 215, column: 23, scope: !5682)
!5693 = !DILocation(line: 215, column: 2, scope: !5682)
!5694 = !DILocation(line: 216, column: 1, scope: !5682)
!5695 = distinct !DISubprogram(name: "debugfs_setattr", scope: !3, file: !3, line: 45, type: !1238, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5696)
!5696 = !{!5697, !5698, !5699, !5700}
!5697 = !DILocalVariable(name: "idmap", arg: 1, scope: !5695, file: !3, line: 45, type: !1195)
!5698 = !DILocalVariable(name: "dentry", arg: 2, scope: !5695, file: !3, line: 46, type: !1121)
!5699 = !DILocalVariable(name: "ia", arg: 3, scope: !5695, file: !3, line: 46, type: !1240)
!5700 = !DILocalVariable(name: "ret", scope: !5695, file: !3, line: 48, type: !22)
!5701 = !DILocation(line: 45, column: 46, scope: !5695)
!5702 = !DILocation(line: 46, column: 22, scope: !5695)
!5703 = !DILocation(line: 46, column: 44, scope: !5695)
!5704 = !DILocation(line: 48, column: 2, scope: !5695)
!5705 = !DILocation(line: 48, column: 6, scope: !5695)
!5706 = !DILocation(line: 50, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 50, column: 6)
!5708 = !DILocation(line: 50, column: 10, scope: !5707)
!5709 = !DILocation(line: 50, column: 19, scope: !5707)
!5710 = !DILocation(line: 50, column: 6, scope: !5695)
!5711 = !DILocation(line: 51, column: 9, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 50, column: 56)
!5713 = !DILocation(line: 51, column: 7, scope: !5712)
!5714 = !DILocation(line: 52, column: 7, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 52, column: 7)
!5716 = !DILocation(line: 52, column: 7, scope: !5712)
!5717 = !DILocation(line: 53, column: 11, scope: !5715)
!5718 = !DILocation(line: 53, column: 4, scope: !5715)
!5719 = !DILocation(line: 54, column: 2, scope: !5712)
!5720 = !DILocation(line: 55, column: 40, scope: !5695)
!5721 = !DILocation(line: 55, column: 48, scope: !5695)
!5722 = !DILocation(line: 55, column: 9, scope: !5695)
!5723 = !DILocation(line: 55, column: 2, scope: !5695)
!5724 = !DILocation(line: 56, column: 1, scope: !5695)
!5725 = !DISubprogram(name: "security_locked_down", scope: !184, file: !184, line: 488, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!22, !183}
!5728 = !DISubprogram(name: "simple_setattr", scope: !173, file: !173, line: 3144, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = distinct !DISubprogram(name: "audit_inode_child", scope: !5730, file: !5730, line: 388, type: !5731, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5733)
!5730 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !1156, !2997, !1154}
!5733 = !{!5734, !5735, !5736}
!5734 = !DILocalVariable(name: "parent", arg: 1, scope: !5729, file: !5730, line: 388, type: !1156)
!5735 = !DILocalVariable(name: "dentry", arg: 2, scope: !5729, file: !5730, line: 389, type: !2997)
!5736 = !DILocalVariable(name: "type", arg: 3, scope: !5729, file: !5730, line: 390, type: !1154)
!5737 = !DILocation(line: 388, column: 52, scope: !5729)
!5738 = !DILocation(line: 389, column: 31, scope: !5729)
!5739 = !DILocation(line: 390, column: 30, scope: !5729)
!5740 = !DILocation(line: 391, column: 6, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5729, file: !5730, line: 391, column: 6)
!5742 = !DILocation(line: 391, column: 6, scope: !5729)
!5743 = !DILocation(line: 392, column: 23, scope: !5741)
!5744 = !DILocation(line: 392, column: 31, scope: !5741)
!5745 = !DILocation(line: 392, column: 39, scope: !5741)
!5746 = !DILocation(line: 392, column: 3, scope: !5741)
!5747 = !DILocation(line: 393, column: 1, scope: !5729)
!5748 = distinct !DISubprogram(name: "fsnotify_dirent", scope: !5050, file: !5050, line: 39, type: !5749, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5751)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{null, !1156, !1121, !269}
!5751 = !{!5752, !5753, !5754}
!5752 = !DILocalVariable(name: "dir", arg: 1, scope: !5748, file: !5050, line: 39, type: !1156)
!5753 = !DILocalVariable(name: "dentry", arg: 2, scope: !5748, file: !5050, line: 39, type: !1121)
!5754 = !DILocalVariable(name: "mask", arg: 3, scope: !5748, file: !5050, line: 40, type: !269)
!5755 = !DILocation(line: 39, column: 50, scope: !5748)
!5756 = !DILocation(line: 39, column: 70, scope: !5748)
!5757 = !DILocation(line: 40, column: 14, scope: !5748)
!5758 = !DILocation(line: 42, column: 16, scope: !5748)
!5759 = !DILocation(line: 42, column: 22, scope: !5748)
!5760 = !DILocation(line: 42, column: 53, scope: !5748)
!5761 = !DILocation(line: 42, column: 59, scope: !5748)
!5762 = !DILocation(line: 42, column: 67, scope: !5748)
!5763 = !DILocation(line: 42, column: 2, scope: !5748)
!5764 = !DILocation(line: 43, column: 1, scope: !5748)
!5765 = distinct !DISubprogram(name: "audit_dummy_context", scope: !5730, file: !5730, line: 318, type: !2051, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5766)
!5766 = !{!5767}
!5767 = !DILocalVariable(name: "p", scope: !5765, file: !5730, line: 320, type: !20)
!5768 = !DILocation(line: 320, column: 2, scope: !5765)
!5769 = !DILocation(line: 320, column: 8, scope: !5765)
!5770 = !DILocation(line: 320, column: 12, scope: !5765)
!5771 = !DILocation(line: 321, column: 10, scope: !5765)
!5772 = !DILocation(line: 321, column: 12, scope: !5765)
!5773 = !DILocation(line: 321, column: 23, scope: !5765)
!5774 = !DILocation(line: 321, column: 15, scope: !5765)
!5775 = !DILocation(line: 322, column: 1, scope: !5765)
!5776 = !DILocation(line: 321, column: 2, scope: !5765)
!5777 = !DISubprogram(name: "__audit_inode_child", scope: !5730, file: !5730, line: 300, type: !5731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5778 = distinct !DISubprogram(name: "audit_context", scope: !5730, file: !5730, line: 313, type: !5779, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!3808}
!5781 = !DILocation(line: 315, column: 9, scope: !5778)
!5782 = !DILocation(line: 315, column: 18, scope: !5778)
!5783 = !DILocation(line: 315, column: 2, scope: !5778)
!5784 = distinct !DISubprogram(name: "get_current", scope: !5785, file: !5785, line: 39, type: !5786, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5785 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!257}
!5788 = !{!5789, !5791, !5793}
!5789 = !DILocalVariable(name: "pscr_ret__", scope: !5790, file: !5785, line: 41, type: !257)
!5790 = distinct !DILexicalBlock(scope: !5784, file: !5785, line: 41, column: 9)
!5791 = !DILocalVariable(name: "__vpp_verify", scope: !5792, file: !5785, line: 41, type: !2061)
!5792 = distinct !DILexicalBlock(scope: !5790, file: !5785, line: 41, column: 9)
!5793 = !DILocalVariable(name: "pfo_val__", scope: !5794, file: !5785, line: 41, type: !325)
!5794 = distinct !DILexicalBlock(scope: !5790, file: !5785, line: 41, column: 9)
!5795 = !DILocation(line: 41, column: 9, scope: !5790)
!5796 = !DILocation(line: 41, column: 9, scope: !5792)
!5797 = !DILocation(line: 41, column: 9, scope: !5794)
!5798 = !{i64 2148557753}
!5799 = !DILocation(line: 41, column: 9, scope: !5784)
!5800 = !DILocation(line: 41, column: 2, scope: !5784)
!5801 = distinct !DISubprogram(name: "fsnotify_name", scope: !5050, file: !5050, line: 29, type: !5802, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5804)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!22, !269, !2061, !22, !1156, !3004, !268}
!5804 = !{!5805, !5806, !5807, !5808, !5809, !5810}
!5805 = !DILocalVariable(name: "mask", arg: 1, scope: !5801, file: !5050, line: 29, type: !269)
!5806 = !DILocalVariable(name: "data", arg: 2, scope: !5801, file: !5050, line: 29, type: !2061)
!5807 = !DILocalVariable(name: "data_type", arg: 3, scope: !5801, file: !5050, line: 29, type: !22)
!5808 = !DILocalVariable(name: "dir", arg: 4, scope: !5801, file: !5050, line: 30, type: !1156)
!5809 = !DILocalVariable(name: "name", arg: 5, scope: !5801, file: !5050, line: 30, type: !3004)
!5810 = !DILocalVariable(name: "cookie", arg: 6, scope: !5801, file: !5050, line: 31, type: !268)
!5811 = !DILocation(line: 29, column: 39, scope: !5801)
!5812 = !DILocation(line: 29, column: 57, scope: !5801)
!5813 = !DILocation(line: 29, column: 67, scope: !5801)
!5814 = !DILocation(line: 30, column: 19, scope: !5801)
!5815 = !DILocation(line: 30, column: 43, scope: !5801)
!5816 = !DILocation(line: 31, column: 9, scope: !5801)
!5817 = !DILocation(line: 33, column: 24, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5801, file: !5050, line: 33, column: 6)
!5819 = !DILocation(line: 33, column: 29, scope: !5818)
!5820 = !DILocation(line: 33, column: 35, scope: !5818)
!5821 = !DILocation(line: 33, column: 6, scope: !5818)
!5822 = !DILocation(line: 33, column: 58, scope: !5818)
!5823 = !DILocation(line: 33, column: 6, scope: !5801)
!5824 = !DILocation(line: 34, column: 3, scope: !5818)
!5825 = !DILocation(line: 36, column: 18, scope: !5801)
!5826 = !DILocation(line: 36, column: 24, scope: !5801)
!5827 = !DILocation(line: 36, column: 30, scope: !5801)
!5828 = !DILocation(line: 36, column: 41, scope: !5801)
!5829 = !DILocation(line: 36, column: 46, scope: !5801)
!5830 = !DILocation(line: 36, column: 58, scope: !5801)
!5831 = !DILocation(line: 36, column: 9, scope: !5801)
!5832 = !DILocation(line: 36, column: 2, scope: !5801)
!5833 = !DILocation(line: 37, column: 1, scope: !5801)
!5834 = distinct !DISubprogram(name: "atomic_long_read", scope: !5835, file: !5835, line: 3158, type: !5836, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5840)
!5835 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5836 = !DISubroutineType(types: !5837)
!5837 = !{!1011, !5838}
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!5840 = !{!5841}
!5841 = !DILocalVariable(name: "v", arg: 1, scope: !5834, file: !5835, line: 3158, type: !5838)
!5842 = !DILocation(line: 3158, column: 39, scope: !5834)
!5843 = !DILocation(line: 3160, column: 25, scope: !5834)
!5844 = !DILocation(line: 3160, column: 2, scope: !5834)
!5845 = !DILocation(line: 3161, column: 30, scope: !5834)
!5846 = !DILocation(line: 3161, column: 9, scope: !5834)
!5847 = !DILocation(line: 3161, column: 2, scope: !5834)
!5848 = !DISubprogram(name: "fsnotify", scope: !217, file: !217, line: 541, type: !5849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!22, !269, !2061, !22, !1156, !3004, !1156, !268}
!5851 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5852, file: !5852, line: 66, type: !5853, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5852 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5853 = !DISubroutineType(types: !5854)
!5854 = !{null, !5855, !35}
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5857)
!5857 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5858 = !{!5859, !5860}
!5859 = !DILocalVariable(name: "v", arg: 1, scope: !5851, file: !5852, line: 66, type: !5855)
!5860 = !DILocalVariable(name: "size", arg: 2, scope: !5851, file: !5852, line: 66, type: !35)
!5861 = !DILocation(line: 66, column: 73, scope: !5851)
!5862 = !DILocation(line: 66, column: 83, scope: !5851)
!5863 = !DILocation(line: 68, column: 19, scope: !5851)
!5864 = !DILocation(line: 68, column: 22, scope: !5851)
!5865 = !DILocation(line: 68, column: 2, scope: !5851)
!5866 = !DILocation(line: 69, column: 2, scope: !5851)
!5867 = !DILocation(line: 70, column: 1, scope: !5851)
!5868 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !624, file: !624, line: 35, type: !5836, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5869)
!5869 = !{!5870}
!5870 = !DILocalVariable(name: "v", arg: 1, scope: !5868, file: !624, line: 35, type: !5838)
!5871 = !DILocation(line: 35, column: 43, scope: !5868)
!5872 = !DILocation(line: 38, column: 27, scope: !5868)
!5873 = !DILocation(line: 38, column: 9, scope: !5868)
!5874 = !DILocation(line: 38, column: 2, scope: !5868)
!5875 = distinct !DISubprogram(name: "kasan_check_read", scope: !5876, file: !5876, line: 40, type: !5877, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5876 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!786, !5855, !7}
!5879 = !{!5880, !5881}
!5880 = !DILocalVariable(name: "p", arg: 1, scope: !5875, file: !5876, line: 40, type: !5855)
!5881 = !DILocalVariable(name: "size", arg: 2, scope: !5875, file: !5876, line: 40, type: !7)
!5882 = !DILocation(line: 40, column: 58, scope: !5875)
!5883 = !DILocation(line: 40, column: 74, scope: !5875)
!5884 = !DILocation(line: 42, column: 2, scope: !5875)
!5885 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5886, file: !5886, line: 229, type: !5887, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5889)
!5886 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5887 = !DISubroutineType(types: !5888)
!5888 = !{null, !5855, !35, !22}
!5889 = !{!5890, !5891, !5892}
!5890 = !DILocalVariable(name: "ptr", arg: 1, scope: !5885, file: !5886, line: 229, type: !5855)
!5891 = !DILocalVariable(name: "size", arg: 2, scope: !5885, file: !5886, line: 229, type: !35)
!5892 = !DILocalVariable(name: "type", arg: 3, scope: !5885, file: !5886, line: 230, type: !22)
!5893 = !DILocation(line: 229, column: 60, scope: !5885)
!5894 = !DILocation(line: 229, column: 72, scope: !5885)
!5895 = !DILocation(line: 230, column: 15, scope: !5885)
!5896 = !DILocation(line: 230, column: 23, scope: !5885)
!5897 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5898, file: !5898, line: 2554, type: !5899, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5903)
!5898 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!336, !5901}
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5902, size: 64)
!5902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!5903 = !{!5904}
!5904 = !DILocalVariable(name: "v", arg: 1, scope: !5897, file: !5898, line: 2554, type: !5901)
!5905 = !DILocation(line: 2554, column: 37, scope: !5897)
!5906 = !DILocation(line: 2556, column: 28, scope: !5897)
!5907 = !DILocation(line: 2556, column: 9, scope: !5897)
!5908 = !DILocation(line: 2556, column: 2, scope: !5897)
!5909 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5910, file: !5910, line: 13, type: !5899, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5910 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5911 = !{!5912}
!5912 = !DILocalVariable(name: "v", arg: 1, scope: !5909, file: !5910, line: 13, type: !5901)
!5913 = !DILocation(line: 13, column: 65, scope: !5909)
!5914 = !DILocation(line: 15, column: 9, scope: !5909)
!5915 = !DILocation(line: 15, column: 2, scope: !5909)
!5916 = distinct !DISubprogram(name: "inode_lock", scope: !173, file: !173, line: 802, type: !2594, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5917)
!5917 = !{!5918}
!5918 = !DILocalVariable(name: "inode", arg: 1, scope: !5916, file: !173, line: 802, type: !1156)
!5919 = !DILocation(line: 802, column: 45, scope: !5916)
!5920 = !DILocation(line: 804, column: 14, scope: !5916)
!5921 = !DILocation(line: 804, column: 21, scope: !5916)
!5922 = !DILocation(line: 804, column: 2, scope: !5916)
!5923 = !DILocation(line: 805, column: 1, scope: !5916)
!5924 = distinct !DISubprogram(name: "inode_unlock", scope: !173, file: !173, line: 807, type: !2594, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5925)
!5925 = !{!5926}
!5926 = !DILocalVariable(name: "inode", arg: 1, scope: !5924, file: !173, line: 807, type: !1156)
!5927 = !DILocation(line: 807, column: 47, scope: !5924)
!5928 = !DILocation(line: 809, column: 12, scope: !5924)
!5929 = !DILocation(line: 809, column: 19, scope: !5924)
!5930 = !DILocation(line: 809, column: 2, scope: !5924)
!5931 = !DILocation(line: 810, column: 1, scope: !5924)
!5932 = !DISubprogram(name: "down_write", scope: !807, file: !807, line: 187, type: !5933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !5935}
!5935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!5936 = !DISubprogram(name: "up_write", scope: !807, file: !807, line: 203, type: !5933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5937 = !DISubprogram(name: "new_inode", scope: !173, file: !173, line: 2932, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = !DISubprogram(name: "get_next_ino", scope: !173, file: !173, line: 2908, type: !5939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = !DISubroutineType(types: !5940)
!5940 = !{!7}
!5941 = !DISubprogram(name: "inode_set_ctime_current", scope: !173, file: !173, line: 1515, type: !5942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!1266, !1156}
!5944 = distinct !DISubprogram(name: "kmalloc", scope: !230, file: !230, line: 591, type: !5198, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948}
!5946 = !DILocalVariable(name: "size", arg: 1, scope: !5944, file: !230, line: 591, type: !35)
!5947 = !DILocalVariable(name: "flags", arg: 2, scope: !5944, file: !230, line: 591, type: !254)
!5948 = !DILocalVariable(name: "index", scope: !5949, file: !230, line: 594, type: !7)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !230, line: 593, column: 42)
!5950 = distinct !DILexicalBlock(scope: !5944, file: !230, line: 593, column: 6)
!5951 = !DILocation(line: 591, column: 61, scope: !5944)
!5952 = !DILocation(line: 591, column: 73, scope: !5944)
!5953 = !DILocation(line: 593, column: 27, scope: !5950)
!5954 = !DILocation(line: 593, column: 6, scope: !5950)
!5955 = !DILocation(line: 593, column: 33, scope: !5950)
!5956 = !DILocation(line: 593, column: 36, scope: !5950)
!5957 = !DILocation(line: 593, column: 6, scope: !5944)
!5958 = !DILocation(line: 594, column: 3, scope: !5949)
!5959 = !DILocation(line: 594, column: 16, scope: !5949)
!5960 = !DILocation(line: 596, column: 7, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5949, file: !230, line: 596, column: 7)
!5962 = !DILocation(line: 596, column: 12, scope: !5961)
!5963 = !DILocation(line: 596, column: 7, scope: !5949)
!5964 = !DILocation(line: 597, column: 25, scope: !5961)
!5965 = !DILocation(line: 597, column: 31, scope: !5961)
!5966 = !DILocation(line: 597, column: 11, scope: !5961)
!5967 = !DILocation(line: 597, column: 4, scope: !5961)
!5968 = !DILocation(line: 599, column: 11, scope: !5949)
!5969 = !DILocation(line: 599, column: 9, scope: !5949)
!5970 = !DILocation(line: 601, column: 33, scope: !5949)
!5971 = !DILocation(line: 601, column: 40, scope: !5949)
!5972 = !DILocation(line: 601, column: 20, scope: !5949)
!5973 = !DILocation(line: 601, column: 5, scope: !5949)
!5974 = !DILocation(line: 601, column: 51, scope: !5949)
!5975 = !DILocation(line: 602, column: 5, scope: !5949)
!5976 = !DILocation(line: 602, column: 12, scope: !5949)
!5977 = !DILocation(line: 600, column: 10, scope: !5949)
!5978 = !DILocation(line: 600, column: 3, scope: !5949)
!5979 = !DILocation(line: 603, column: 2, scope: !5950)
!5980 = !DILocation(line: 604, column: 19, scope: !5944)
!5981 = !DILocation(line: 604, column: 25, scope: !5944)
!5982 = !DILocation(line: 604, column: 9, scope: !5944)
!5983 = !DILocation(line: 604, column: 2, scope: !5944)
!5984 = !DILocation(line: 605, column: 1, scope: !5944)
!5985 = !DISubprogram(name: "kmalloc_large", scope: !230, file: !230, line: 531, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = distinct !DISubprogram(name: "__kmalloc_index", scope: !230, file: !230, line: 444, type: !5987, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5989)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!7, !35, !786}
!5989 = !{!5990, !5991}
!5990 = !DILocalVariable(name: "size", arg: 1, scope: !5986, file: !230, line: 444, type: !35)
!5991 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5986, file: !230, line: 445, type: !786)
!5992 = !DILocation(line: 444, column: 60, scope: !5986)
!5993 = !DILocation(line: 445, column: 16, scope: !5986)
!5994 = !DILocation(line: 447, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 447, column: 6)
!5996 = !DILocation(line: 447, column: 6, scope: !5986)
!5997 = !DILocation(line: 448, column: 3, scope: !5995)
!5998 = !DILocation(line: 450, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 450, column: 6)
!6000 = !DILocation(line: 450, column: 11, scope: !5999)
!6001 = !DILocation(line: 450, column: 6, scope: !5986)
!6002 = !DILocation(line: 451, column: 3, scope: !5999)
!6003 = !DILocation(line: 453, column: 32, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 453, column: 6)
!6005 = !DILocation(line: 453, column: 37, scope: !6004)
!6006 = !DILocation(line: 453, column: 42, scope: !6004)
!6007 = !DILocation(line: 453, column: 45, scope: !6004)
!6008 = !DILocation(line: 453, column: 50, scope: !6004)
!6009 = !DILocation(line: 453, column: 6, scope: !5986)
!6010 = !DILocation(line: 454, column: 3, scope: !6004)
!6011 = !DILocation(line: 455, column: 32, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 455, column: 6)
!6013 = !DILocation(line: 455, column: 37, scope: !6012)
!6014 = !DILocation(line: 455, column: 43, scope: !6012)
!6015 = !DILocation(line: 455, column: 46, scope: !6012)
!6016 = !DILocation(line: 455, column: 51, scope: !6012)
!6017 = !DILocation(line: 455, column: 6, scope: !5986)
!6018 = !DILocation(line: 456, column: 3, scope: !6012)
!6019 = !DILocation(line: 457, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 457, column: 6)
!6021 = !DILocation(line: 457, column: 11, scope: !6020)
!6022 = !DILocation(line: 457, column: 6, scope: !5986)
!6023 = !DILocation(line: 457, column: 26, scope: !6020)
!6024 = !DILocation(line: 458, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 458, column: 6)
!6026 = !DILocation(line: 458, column: 11, scope: !6025)
!6027 = !DILocation(line: 458, column: 6, scope: !5986)
!6028 = !DILocation(line: 458, column: 26, scope: !6025)
!6029 = !DILocation(line: 459, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 459, column: 6)
!6031 = !DILocation(line: 459, column: 11, scope: !6030)
!6032 = !DILocation(line: 459, column: 6, scope: !5986)
!6033 = !DILocation(line: 459, column: 26, scope: !6030)
!6034 = !DILocation(line: 460, column: 6, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 460, column: 6)
!6036 = !DILocation(line: 460, column: 11, scope: !6035)
!6037 = !DILocation(line: 460, column: 6, scope: !5986)
!6038 = !DILocation(line: 460, column: 26, scope: !6035)
!6039 = !DILocation(line: 461, column: 6, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 461, column: 6)
!6041 = !DILocation(line: 461, column: 11, scope: !6040)
!6042 = !DILocation(line: 461, column: 6, scope: !5986)
!6043 = !DILocation(line: 461, column: 26, scope: !6040)
!6044 = !DILocation(line: 462, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 462, column: 6)
!6046 = !DILocation(line: 462, column: 11, scope: !6045)
!6047 = !DILocation(line: 462, column: 6, scope: !5986)
!6048 = !DILocation(line: 462, column: 26, scope: !6045)
!6049 = !DILocation(line: 463, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 463, column: 6)
!6051 = !DILocation(line: 463, column: 11, scope: !6050)
!6052 = !DILocation(line: 463, column: 6, scope: !5986)
!6053 = !DILocation(line: 463, column: 26, scope: !6050)
!6054 = !DILocation(line: 464, column: 6, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 464, column: 6)
!6056 = !DILocation(line: 464, column: 11, scope: !6055)
!6057 = !DILocation(line: 464, column: 6, scope: !5986)
!6058 = !DILocation(line: 464, column: 26, scope: !6055)
!6059 = !DILocation(line: 465, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 465, column: 6)
!6061 = !DILocation(line: 465, column: 11, scope: !6060)
!6062 = !DILocation(line: 465, column: 6, scope: !5986)
!6063 = !DILocation(line: 465, column: 26, scope: !6060)
!6064 = !DILocation(line: 466, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 466, column: 6)
!6066 = !DILocation(line: 466, column: 11, scope: !6065)
!6067 = !DILocation(line: 466, column: 6, scope: !5986)
!6068 = !DILocation(line: 466, column: 26, scope: !6065)
!6069 = !DILocation(line: 467, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 467, column: 6)
!6071 = !DILocation(line: 467, column: 11, scope: !6070)
!6072 = !DILocation(line: 467, column: 6, scope: !5986)
!6073 = !DILocation(line: 467, column: 26, scope: !6070)
!6074 = !DILocation(line: 468, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 468, column: 6)
!6076 = !DILocation(line: 468, column: 11, scope: !6075)
!6077 = !DILocation(line: 468, column: 6, scope: !5986)
!6078 = !DILocation(line: 468, column: 26, scope: !6075)
!6079 = !DILocation(line: 469, column: 6, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 469, column: 6)
!6081 = !DILocation(line: 469, column: 11, scope: !6080)
!6082 = !DILocation(line: 469, column: 6, scope: !5986)
!6083 = !DILocation(line: 469, column: 26, scope: !6080)
!6084 = !DILocation(line: 470, column: 6, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 470, column: 6)
!6086 = !DILocation(line: 470, column: 11, scope: !6085)
!6087 = !DILocation(line: 470, column: 6, scope: !5986)
!6088 = !DILocation(line: 470, column: 26, scope: !6085)
!6089 = !DILocation(line: 471, column: 6, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 471, column: 6)
!6091 = !DILocation(line: 471, column: 11, scope: !6090)
!6092 = !DILocation(line: 471, column: 6, scope: !5986)
!6093 = !DILocation(line: 471, column: 26, scope: !6090)
!6094 = !DILocation(line: 472, column: 6, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 472, column: 6)
!6096 = !DILocation(line: 472, column: 11, scope: !6095)
!6097 = !DILocation(line: 472, column: 6, scope: !5986)
!6098 = !DILocation(line: 472, column: 26, scope: !6095)
!6099 = !DILocation(line: 473, column: 6, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 473, column: 6)
!6101 = !DILocation(line: 473, column: 11, scope: !6100)
!6102 = !DILocation(line: 473, column: 6, scope: !5986)
!6103 = !DILocation(line: 473, column: 26, scope: !6100)
!6104 = !DILocation(line: 474, column: 6, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 474, column: 6)
!6106 = !DILocation(line: 474, column: 11, scope: !6105)
!6107 = !DILocation(line: 474, column: 6, scope: !5986)
!6108 = !DILocation(line: 474, column: 27, scope: !6105)
!6109 = !DILocation(line: 475, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 475, column: 6)
!6111 = !DILocation(line: 475, column: 11, scope: !6110)
!6112 = !DILocation(line: 475, column: 6, scope: !5986)
!6113 = !DILocation(line: 475, column: 32, scope: !6110)
!6114 = !DILocation(line: 477, column: 50, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !5986, file: !230, line: 477, column: 6)
!6116 = !DILocation(line: 477, column: 6, scope: !5986)
!6117 = !DILocation(line: 478, column: 3, scope: !6115)
!6118 = !DILocation(line: 478, column: 3, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6120, file: !230, line: 478, column: 3)
!6120 = distinct !DILexicalBlock(scope: !6115, file: !230, line: 478, column: 3)
!6121 = !{i32 -2141455835}
!6122 = !DILocation(line: 478, column: 3, scope: !6120)
!6123 = !DILocation(line: 480, column: 3, scope: !6115)
!6124 = !DILocation(line: 480, column: 3, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6115, file: !230, line: 480, column: 3)
!6126 = !DILocation(line: 480, column: 3, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6125, file: !230, line: 480, column: 3)
!6128 = !DILocation(line: 480, column: 3, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6125, file: !230, line: 480, column: 3)
!6130 = !{i64 2153511664, i64 2153511693, i64 2153511739, i64 2153511797, i64 2153511851, i64 2153511905, i64 2153511960, i64 2153511991}
!6131 = !DILocation(line: 483, column: 2, scope: !5986)
!6132 = !DILocation(line: 484, column: 1, scope: !5986)
!6133 = !DISubprogram(name: "kmalloc_trace", scope: !230, file: !230, line: 525, type: !6134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!20, !719, !254, !35}
!6136 = distinct !DISubprogram(name: "kmalloc_type", scope: !230, file: !230, line: 401, type: !6137, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6139)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!229, !254, !39}
!6139 = !{!6140, !6141}
!6140 = !DILocalVariable(name: "flags", arg: 1, scope: !6136, file: !230, line: 401, type: !254)
!6141 = !DILocalVariable(name: "caller", arg: 2, scope: !6136, file: !230, line: 401, type: !39)
!6142 = !DILocation(line: 401, column: 67, scope: !6136)
!6143 = !DILocation(line: 401, column: 88, scope: !6136)
!6144 = !DILocation(line: 407, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6136, file: !230, line: 407, column: 6)
!6146 = !DILocation(line: 407, column: 6, scope: !6136)
!6147 = !DILocation(line: 413, column: 3, scope: !6145)
!6148 = !DILocation(line: 423, column: 38, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6136, file: !230, line: 423, column: 6)
!6150 = !DILocation(line: 423, column: 44, scope: !6149)
!6151 = !DILocation(line: 423, column: 6, scope: !6136)
!6152 = !DILocation(line: 424, column: 3, scope: !6149)
!6153 = !DILocation(line: 426, column: 3, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6136, file: !230, line: 425, column: 6)
!6155 = !DILocation(line: 429, column: 1, scope: !6136)
!6156 = !DISubprogram(name: "__kmalloc", scope: !230, file: !230, line: 488, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6157 = !DISubprogram(name: "__compiletime_assert_255", scope: !230, file: !230, line: 478, type: !2568, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6158 = distinct !DISubprogram(name: "debug_mount", scope: !3, file: !3, line: 294, type: !1384, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6159 = !{!6160, !6161, !6162, !6163}
!6160 = !DILocalVariable(name: "fs_type", arg: 1, scope: !6158, file: !3, line: 294, type: !1366)
!6161 = !DILocalVariable(name: "flags", arg: 2, scope: !6158, file: !3, line: 295, type: !22)
!6162 = !DILocalVariable(name: "dev_name", arg: 3, scope: !6158, file: !3, line: 295, type: !16)
!6163 = !DILocalVariable(name: "data", arg: 4, scope: !6158, file: !3, line: 296, type: !20)
!6164 = !DILocation(line: 294, column: 60, scope: !6158)
!6165 = !DILocation(line: 295, column: 8, scope: !6158)
!6166 = !DILocation(line: 295, column: 27, scope: !6158)
!6167 = !DILocation(line: 296, column: 10, scope: !6158)
!6168 = !DILocation(line: 298, column: 8, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 298, column: 6)
!6170 = !DILocation(line: 298, column: 22, scope: !6169)
!6171 = !DILocation(line: 298, column: 6, scope: !6158)
!6172 = !DILocation(line: 299, column: 10, scope: !6169)
!6173 = !DILocation(line: 299, column: 3, scope: !6169)
!6174 = !DILocation(line: 301, column: 22, scope: !6158)
!6175 = !DILocation(line: 301, column: 31, scope: !6158)
!6176 = !DILocation(line: 301, column: 38, scope: !6158)
!6177 = !DILocation(line: 301, column: 9, scope: !6158)
!6178 = !DILocation(line: 301, column: 2, scope: !6158)
!6179 = !DILocation(line: 302, column: 1, scope: !6158)
!6180 = !DISubprogram(name: "mount_single", scope: !173, file: !173, line: 2401, type: !6181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!1121, !1366, !22, !20, !6183}
!6183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!6184 = !DILocation(line: 260, column: 49, scope: !4463)
!6185 = !DILocation(line: 260, column: 59, scope: !4463)
!6186 = !DILocation(line: 260, column: 69, scope: !4463)
!6187 = !DILocation(line: 263, column: 2, scope: !4463)
!6188 = !DILocation(line: 263, column: 26, scope: !4463)
!6189 = !DILocation(line: 264, column: 2, scope: !4463)
!6190 = !DILocation(line: 264, column: 6, scope: !4463)
!6191 = !DILocation(line: 266, column: 8, scope: !4463)
!6192 = !DILocation(line: 266, column: 6, scope: !4463)
!6193 = !DILocation(line: 267, column: 18, scope: !4463)
!6194 = !DILocation(line: 267, column: 2, scope: !4463)
!6195 = !DILocation(line: 267, column: 6, scope: !4463)
!6196 = !DILocation(line: 267, column: 16, scope: !4463)
!6197 = !DILocation(line: 268, column: 7, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 268, column: 6)
!6199 = !DILocation(line: 268, column: 6, scope: !4463)
!6200 = !DILocation(line: 269, column: 7, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6198, file: !3, line: 268, column: 12)
!6202 = !DILocation(line: 270, column: 3, scope: !6201)
!6203 = !DILocation(line: 273, column: 30, scope: !4463)
!6204 = !DILocation(line: 273, column: 37, scope: !4463)
!6205 = !DILocation(line: 273, column: 42, scope: !4463)
!6206 = !DILocation(line: 273, column: 8, scope: !4463)
!6207 = !DILocation(line: 273, column: 6, scope: !4463)
!6208 = !DILocation(line: 274, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 274, column: 6)
!6210 = !DILocation(line: 274, column: 6, scope: !4463)
!6211 = !DILocation(line: 275, column: 3, scope: !6209)
!6212 = !DILocation(line: 277, column: 28, scope: !4463)
!6213 = !DILocation(line: 277, column: 10, scope: !4463)
!6214 = !DILocation(line: 277, column: 7, scope: !4463)
!6215 = !DILocation(line: 278, column: 6, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 278, column: 6)
!6217 = !DILocation(line: 278, column: 6, scope: !4463)
!6218 = !DILocation(line: 279, column: 3, scope: !6216)
!6219 = !DILocation(line: 281, column: 2, scope: !4463)
!6220 = !DILocation(line: 281, column: 6, scope: !4463)
!6221 = !DILocation(line: 281, column: 11, scope: !4463)
!6222 = !DILocation(line: 282, column: 2, scope: !4463)
!6223 = !DILocation(line: 282, column: 6, scope: !4463)
!6224 = !DILocation(line: 282, column: 13, scope: !4463)
!6225 = !DILocation(line: 284, column: 24, scope: !4463)
!6226 = !DILocation(line: 284, column: 2, scope: !4463)
!6227 = !DILocation(line: 286, column: 2, scope: !4463)
!6228 = !DILocation(line: 288, column: 1, scope: !4463)
!6229 = !DILocation(line: 289, column: 8, scope: !4463)
!6230 = !DILocation(line: 289, column: 2, scope: !4463)
!6231 = !DILocation(line: 290, column: 2, scope: !4463)
!6232 = !DILocation(line: 290, column: 6, scope: !4463)
!6233 = !DILocation(line: 290, column: 16, scope: !4463)
!6234 = !DILocation(line: 291, column: 9, scope: !4463)
!6235 = !DILocation(line: 291, column: 2, scope: !4463)
!6236 = !DILocation(line: 292, column: 1, scope: !4463)
!6237 = distinct !DISubprogram(name: "debugfs_parse_options", scope: !3, file: !3, line: 106, type: !6238, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6241)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!22, !874, !6240}
!6240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!6241 = !{!6242, !6243, !6244, !6251, !6252, !6253, !6254, !6255}
!6242 = !DILocalVariable(name: "data", arg: 1, scope: !6237, file: !3, line: 106, type: !874)
!6243 = !DILocalVariable(name: "opts", arg: 2, scope: !6237, file: !3, line: 106, type: !6240)
!6244 = !DILocalVariable(name: "args", scope: !6237, file: !3, line: 108, type: !6245)
!6245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6246, size: 384, elements: !666)
!6246 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !4505, line: 28, baseType: !6247)
!6247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4505, line: 25, size: 128, elements: !6248)
!6248 = !{!6249, !6250}
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !6247, file: !4505, line: 26, baseType: !874, size: 64)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !6247, file: !4505, line: 27, baseType: !874, size: 64, offset: 64)
!6251 = !DILocalVariable(name: "option", scope: !6237, file: !3, line: 109, type: !22)
!6252 = !DILocalVariable(name: "token", scope: !6237, file: !3, line: 110, type: !22)
!6253 = !DILocalVariable(name: "uid", scope: !6237, file: !3, line: 111, type: !759)
!6254 = !DILocalVariable(name: "gid", scope: !6237, file: !3, line: 112, type: !767)
!6255 = !DILocalVariable(name: "p", scope: !6237, file: !3, line: 113, type: !874)
!6256 = !DILocation(line: 106, column: 40, scope: !6237)
!6257 = !DILocation(line: 106, column: 73, scope: !6237)
!6258 = !DILocation(line: 108, column: 2, scope: !6237)
!6259 = !DILocation(line: 108, column: 14, scope: !6237)
!6260 = !DILocation(line: 109, column: 2, scope: !6237)
!6261 = !DILocation(line: 109, column: 6, scope: !6237)
!6262 = !DILocation(line: 110, column: 2, scope: !6237)
!6263 = !DILocation(line: 110, column: 6, scope: !6237)
!6264 = !DILocation(line: 111, column: 2, scope: !6237)
!6265 = !DILocation(line: 111, column: 9, scope: !6237)
!6266 = !DILocation(line: 112, column: 2, scope: !6237)
!6267 = !DILocation(line: 112, column: 9, scope: !6237)
!6268 = !DILocation(line: 113, column: 2, scope: !6237)
!6269 = !DILocation(line: 113, column: 8, scope: !6237)
!6270 = !DILocation(line: 115, column: 2, scope: !6237)
!6271 = !DILocation(line: 115, column: 8, scope: !6237)
!6272 = !DILocation(line: 115, column: 13, scope: !6237)
!6273 = !DILocation(line: 116, column: 2, scope: !6237)
!6274 = !DILocation(line: 116, column: 8, scope: !6237)
!6275 = !DILocation(line: 116, column: 13, scope: !6237)
!6276 = !DILocation(line: 118, column: 2, scope: !6237)
!6277 = !DILocation(line: 118, column: 14, scope: !6237)
!6278 = !DILocation(line: 118, column: 12, scope: !6237)
!6279 = !DILocation(line: 118, column: 34, scope: !6237)
!6280 = !DILocation(line: 119, column: 9, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 119, column: 7)
!6282 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 118, column: 43)
!6283 = !DILocation(line: 119, column: 8, scope: !6281)
!6284 = !DILocation(line: 119, column: 7, scope: !6282)
!6285 = !DILocation(line: 120, column: 4, scope: !6281)
!6286 = distinct !{!6286, !6276, !6287, !6288, !6289}
!6287 = !DILocation(line: 152, column: 2, scope: !6237)
!6288 = !{!"llvm.loop.mustprogress"}
!6289 = !{!"llvm.loop.unroll.disable"}
!6290 = !DILocation(line: 122, column: 23, scope: !6282)
!6291 = !DILocation(line: 122, column: 34, scope: !6282)
!6292 = !DILocation(line: 122, column: 11, scope: !6282)
!6293 = !DILocation(line: 122, column: 9, scope: !6282)
!6294 = !DILocation(line: 123, column: 11, scope: !6282)
!6295 = !DILocation(line: 123, column: 3, scope: !6282)
!6296 = !DILocation(line: 125, column: 19, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 125, column: 8)
!6298 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 123, column: 18)
!6299 = !DILocation(line: 125, column: 8, scope: !6297)
!6300 = !DILocation(line: 125, column: 8, scope: !6298)
!6301 = !DILocation(line: 126, column: 5, scope: !6297)
!6302 = !DILocation(line: 127, column: 10, scope: !6298)
!6303 = !DILocation(line: 127, column: 20, scope: !6298)
!6304 = !DILocation(line: 127, column: 39, scope: !6298)
!6305 = !DILocation(line: 128, column: 9, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 128, column: 8)
!6307 = !DILocation(line: 128, column: 8, scope: !6298)
!6308 = !DILocation(line: 129, column: 5, scope: !6306)
!6309 = !DILocation(line: 130, column: 4, scope: !6298)
!6310 = !DILocation(line: 130, column: 10, scope: !6298)
!6311 = !DILocation(line: 130, column: 16, scope: !6298)
!6312 = !DILocation(line: 131, column: 4, scope: !6298)
!6313 = !DILocation(line: 133, column: 19, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 133, column: 8)
!6315 = !DILocation(line: 133, column: 8, scope: !6314)
!6316 = !DILocation(line: 133, column: 8, scope: !6298)
!6317 = !DILocation(line: 134, column: 5, scope: !6314)
!6318 = !DILocation(line: 135, column: 10, scope: !6298)
!6319 = !DILocation(line: 135, column: 20, scope: !6298)
!6320 = !DILocation(line: 135, column: 39, scope: !6298)
!6321 = !DILocation(line: 136, column: 9, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 136, column: 8)
!6323 = !DILocation(line: 136, column: 8, scope: !6298)
!6324 = !DILocation(line: 137, column: 5, scope: !6322)
!6325 = !DILocation(line: 138, column: 4, scope: !6298)
!6326 = !DILocation(line: 138, column: 10, scope: !6298)
!6327 = !DILocation(line: 138, column: 16, scope: !6298)
!6328 = !DILocation(line: 139, column: 4, scope: !6298)
!6329 = !DILocation(line: 141, column: 21, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 141, column: 8)
!6331 = !DILocation(line: 141, column: 8, scope: !6330)
!6332 = !DILocation(line: 141, column: 8, scope: !6298)
!6333 = !DILocation(line: 142, column: 5, scope: !6330)
!6334 = !DILocation(line: 143, column: 17, scope: !6298)
!6335 = !DILocation(line: 143, column: 24, scope: !6298)
!6336 = !DILocation(line: 143, column: 4, scope: !6298)
!6337 = !DILocation(line: 143, column: 10, scope: !6298)
!6338 = !DILocation(line: 143, column: 15, scope: !6298)
!6339 = !DILocation(line: 144, column: 4, scope: !6298)
!6340 = !DILocation(line: 151, column: 17, scope: !6282)
!6341 = !DILocation(line: 151, column: 3, scope: !6282)
!6342 = !DILocation(line: 151, column: 9, scope: !6282)
!6343 = !DILocation(line: 151, column: 14, scope: !6282)
!6344 = !DILocation(line: 154, column: 2, scope: !6237)
!6345 = !DILocation(line: 155, column: 1, scope: !6237)
!6346 = !DISubprogram(name: "simple_fill_super", scope: !173, file: !173, line: 3182, type: !6347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!22, !1357, !39, !6349}
!6349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!6350 = distinct !DISubprogram(name: "debugfs_apply_options", scope: !3, file: !3, line: 180, type: !1388, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6351)
!6351 = !{!6352}
!6352 = !DILocalVariable(name: "sb", arg: 1, scope: !6350, file: !3, line: 180, type: !1357)
!6353 = !DILocation(line: 180, column: 55, scope: !6350)
!6354 = !DILocation(line: 182, column: 25, scope: !6350)
!6355 = !DILocation(line: 182, column: 2, scope: !6350)
!6356 = !DILocation(line: 183, column: 1, scope: !6350)
!6357 = !DISubprogram(name: "strsep", scope: !4615, file: !4615, line: 137, type: !6358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{!874, !6360, !16}
!6360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!6361 = !DISubprogram(name: "match_token", scope: !4505, file: !4505, line: 30, type: !6362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!22, !874, !6364, !6365}
!6364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!6365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6246, size: 64)
!6366 = !DISubprogram(name: "match_int", scope: !4505, file: !4505, line: 31, type: !6367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!22, !6365, !255}
!6369 = distinct !DISubprogram(name: "make_kuid", scope: !760, file: !760, line: 143, type: !6370, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6372)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!759, !728, !764}
!6372 = !{!6373, !6374}
!6373 = !DILocalVariable(name: "from", arg: 1, scope: !6369, file: !760, line: 143, type: !728)
!6374 = !DILocalVariable(name: "uid", arg: 2, scope: !6369, file: !760, line: 143, type: !764)
!6375 = !DILocation(line: 143, column: 55, scope: !6369)
!6376 = !DILocation(line: 143, column: 67, scope: !6369)
!6377 = !DILocation(line: 145, column: 9, scope: !6369)
!6378 = !DILocation(line: 145, column: 2, scope: !6369)
!6379 = distinct !DISubprogram(name: "current_user_ns", scope: !1028, file: !1028, line: 346, type: !6380, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!728}
!6382 = !DILocation(line: 348, column: 2, scope: !6379)
!6383 = distinct !DISubprogram(name: "uid_valid", scope: !760, file: !760, line: 111, type: !6384, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!786, !759}
!6386 = !{!6387}
!6387 = !DILocalVariable(name: "uid", arg: 1, scope: !6383, file: !760, line: 111, type: !759)
!6388 = !DILocation(line: 111, column: 37, scope: !6383)
!6389 = !DILocation(line: 113, column: 9, scope: !6383)
!6390 = !DILocation(line: 113, column: 25, scope: !6383)
!6391 = !DILocation(line: 113, column: 2, scope: !6383)
!6392 = distinct !DISubprogram(name: "make_kgid", scope: !760, file: !760, line: 148, type: !6393, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6395)
!6393 = !DISubroutineType(types: !6394)
!6394 = !{!767, !728, !771}
!6395 = !{!6396, !6397}
!6396 = !DILocalVariable(name: "from", arg: 1, scope: !6392, file: !760, line: 148, type: !728)
!6397 = !DILocalVariable(name: "gid", arg: 2, scope: !6392, file: !760, line: 148, type: !771)
!6398 = !DILocation(line: 148, column: 55, scope: !6392)
!6399 = !DILocation(line: 148, column: 67, scope: !6392)
!6400 = !DILocation(line: 150, column: 9, scope: !6392)
!6401 = !DILocation(line: 150, column: 2, scope: !6392)
!6402 = distinct !DISubprogram(name: "gid_valid", scope: !760, file: !760, line: 116, type: !6403, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!786, !767}
!6405 = !{!6406}
!6406 = !DILocalVariable(name: "gid", arg: 1, scope: !6402, file: !760, line: 116, type: !767)
!6407 = !DILocation(line: 116, column: 37, scope: !6402)
!6408 = !DILocation(line: 118, column: 9, scope: !6402)
!6409 = !DILocation(line: 118, column: 25, scope: !6402)
!6410 = !DILocation(line: 118, column: 2, scope: !6402)
!6411 = !DISubprogram(name: "match_octal", scope: !4505, file: !4505, line: 34, type: !6367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6412 = distinct !DISubprogram(name: "__kuid_val", scope: !760, file: !760, line: 34, type: !6413, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6415)
!6413 = !DISubroutineType(types: !6414)
!6414 = !{!764, !759}
!6415 = !{!6416}
!6416 = !DILocalVariable(name: "uid", arg: 1, scope: !6412, file: !760, line: 34, type: !759)
!6417 = !DILocation(line: 34, column: 39, scope: !6412)
!6418 = !DILocation(line: 36, column: 13, scope: !6412)
!6419 = !DILocation(line: 36, column: 2, scope: !6412)
!6420 = distinct !DISubprogram(name: "__kgid_val", scope: !760, file: !760, line: 39, type: !6421, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6423)
!6421 = !DISubroutineType(types: !6422)
!6422 = !{!771, !767}
!6423 = !{!6424}
!6424 = !DILocalVariable(name: "gid", arg: 1, scope: !6420, file: !760, line: 39, type: !767)
!6425 = !DILocation(line: 39, column: 39, scope: !6420)
!6426 = !DILocation(line: 41, column: 13, scope: !6420)
!6427 = !DILocation(line: 41, column: 2, scope: !6420)
!6428 = distinct !DISubprogram(name: "debugfs_free_inode", scope: !3, file: !3, line: 223, type: !2594, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6429)
!6429 = !{!6430}
!6430 = !DILocalVariable(name: "inode", arg: 1, scope: !6428, file: !3, line: 223, type: !1156)
!6431 = !DILocation(line: 223, column: 46, scope: !6428)
!6432 = !DILocation(line: 225, column: 6, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 225, column: 6)
!6434 = !DILocation(line: 225, column: 6, scope: !6428)
!6435 = !DILocation(line: 226, column: 9, scope: !6433)
!6436 = !DILocation(line: 226, column: 16, scope: !6433)
!6437 = !DILocation(line: 226, column: 3, scope: !6433)
!6438 = !DILocation(line: 227, column: 20, scope: !6428)
!6439 = !DILocation(line: 227, column: 2, scope: !6428)
!6440 = !DILocation(line: 228, column: 1, scope: !6428)
!6441 = distinct !DISubprogram(name: "debugfs_remount", scope: !3, file: !3, line: 190, type: !2633, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6442)
!6442 = !{!6443, !6444, !6445, !6446, !6447, !6448}
!6443 = !DILocalVariable(name: "sb", arg: 1, scope: !6441, file: !3, line: 190, type: !1357)
!6444 = !DILocalVariable(name: "flags", arg: 2, scope: !6441, file: !3, line: 190, type: !255)
!6445 = !DILocalVariable(name: "data", arg: 3, scope: !6441, file: !3, line: 190, type: !874)
!6446 = !DILocalVariable(name: "err", scope: !6441, file: !3, line: 192, type: !22)
!6447 = !DILocalVariable(name: "fsi", scope: !6441, file: !3, line: 193, type: !4471)
!6448 = !DILabel(scope: !6441, name: "fail", file: !3, line: 202)
!6449 = !DILocation(line: 190, column: 48, scope: !6441)
!6450 = !DILocation(line: 190, column: 57, scope: !6441)
!6451 = !DILocation(line: 190, column: 70, scope: !6441)
!6452 = !DILocation(line: 192, column: 2, scope: !6441)
!6453 = !DILocation(line: 192, column: 6, scope: !6441)
!6454 = !DILocation(line: 193, column: 2, scope: !6441)
!6455 = !DILocation(line: 193, column: 26, scope: !6441)
!6456 = !DILocation(line: 193, column: 32, scope: !6441)
!6457 = !DILocation(line: 193, column: 36, scope: !6441)
!6458 = !DILocation(line: 195, column: 18, scope: !6441)
!6459 = !DILocation(line: 195, column: 2, scope: !6441)
!6460 = !DILocation(line: 196, column: 30, scope: !6441)
!6461 = !DILocation(line: 196, column: 37, scope: !6441)
!6462 = !DILocation(line: 196, column: 42, scope: !6441)
!6463 = !DILocation(line: 196, column: 8, scope: !6441)
!6464 = !DILocation(line: 196, column: 6, scope: !6441)
!6465 = !DILocation(line: 197, column: 6, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 197, column: 6)
!6467 = !DILocation(line: 197, column: 6, scope: !6441)
!6468 = !DILocation(line: 198, column: 3, scope: !6466)
!6469 = !DILocation(line: 200, column: 32, scope: !6441)
!6470 = !DILocation(line: 200, column: 2, scope: !6441)
!6471 = !DILocation(line: 202, column: 1, scope: !6441)
!6472 = !DILocation(line: 203, column: 9, scope: !6441)
!6473 = !DILocation(line: 204, column: 1, scope: !6441)
!6474 = !DILocation(line: 203, column: 2, scope: !6441)
!6475 = distinct !DISubprogram(name: "debugfs_show_options", scope: !3, file: !3, line: 206, type: !2638, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6476)
!6476 = !{!6477, !6478, !6479, !6480}
!6477 = !DILocalVariable(name: "m", arg: 1, scope: !6475, file: !3, line: 206, type: !2123)
!6478 = !DILocalVariable(name: "root", arg: 2, scope: !6475, file: !3, line: 206, type: !1121)
!6479 = !DILocalVariable(name: "fsi", scope: !6475, file: !3, line: 208, type: !4471)
!6480 = !DILocalVariable(name: "opts", scope: !6475, file: !3, line: 209, type: !6240)
!6481 = !DILocation(line: 206, column: 50, scope: !6475)
!6482 = !DILocation(line: 206, column: 68, scope: !6475)
!6483 = !DILocation(line: 208, column: 2, scope: !6475)
!6484 = !DILocation(line: 208, column: 26, scope: !6475)
!6485 = !DILocation(line: 208, column: 32, scope: !6475)
!6486 = !DILocation(line: 208, column: 38, scope: !6475)
!6487 = !DILocation(line: 208, column: 44, scope: !6475)
!6488 = !DILocation(line: 209, column: 2, scope: !6475)
!6489 = !DILocation(line: 209, column: 29, scope: !6475)
!6490 = !DILocation(line: 209, column: 37, scope: !6475)
!6491 = !DILocation(line: 209, column: 42, scope: !6475)
!6492 = !DILocation(line: 211, column: 14, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 211, column: 6)
!6494 = !DILocation(line: 211, column: 20, scope: !6493)
!6495 = !DILocation(line: 211, column: 25, scope: !6493)
!6496 = !DILocation(line: 211, column: 7, scope: !6493)
!6497 = !DILocation(line: 211, column: 6, scope: !6475)
!6498 = !DILocation(line: 212, column: 14, scope: !6493)
!6499 = !DILocation(line: 213, column: 39, scope: !6493)
!6500 = !DILocation(line: 213, column: 45, scope: !6493)
!6501 = !DILocation(line: 213, column: 7, scope: !6493)
!6502 = !DILocation(line: 212, column: 3, scope: !6493)
!6503 = !DILocation(line: 214, column: 14, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 214, column: 6)
!6505 = !DILocation(line: 214, column: 20, scope: !6504)
!6506 = !DILocation(line: 214, column: 25, scope: !6504)
!6507 = !DILocation(line: 214, column: 7, scope: !6504)
!6508 = !DILocation(line: 214, column: 6, scope: !6475)
!6509 = !DILocation(line: 215, column: 14, scope: !6504)
!6510 = !DILocation(line: 216, column: 39, scope: !6504)
!6511 = !DILocation(line: 216, column: 45, scope: !6504)
!6512 = !DILocation(line: 216, column: 7, scope: !6504)
!6513 = !DILocation(line: 215, column: 3, scope: !6504)
!6514 = !DILocation(line: 217, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 217, column: 6)
!6516 = !DILocation(line: 217, column: 12, scope: !6515)
!6517 = !DILocation(line: 217, column: 17, scope: !6515)
!6518 = !DILocation(line: 217, column: 6, scope: !6475)
!6519 = !DILocation(line: 218, column: 14, scope: !6515)
!6520 = !DILocation(line: 218, column: 29, scope: !6515)
!6521 = !DILocation(line: 218, column: 35, scope: !6515)
!6522 = !DILocation(line: 218, column: 3, scope: !6515)
!6523 = !DILocation(line: 221, column: 1, scope: !6475)
!6524 = !DILocation(line: 220, column: 2, scope: !6475)
!6525 = !DISubprogram(name: "free_inode_nonrcu", scope: !173, file: !173, line: 2933, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6526 = !DISubprogram(name: "sync_filesystem", scope: !173, file: !173, line: 2580, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = distinct !DISubprogram(name: "debugfs_apply_options_remount", scope: !3, file: !3, line: 185, type: !1388, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6528)
!6528 = !{!6529}
!6529 = !DILocalVariable(name: "sb", arg: 1, scope: !6527, file: !3, line: 185, type: !1357)
!6530 = !DILocation(line: 185, column: 63, scope: !6527)
!6531 = !DILocation(line: 187, column: 25, scope: !6527)
!6532 = !DILocation(line: 187, column: 2, scope: !6527)
!6533 = !DILocation(line: 188, column: 1, scope: !6527)
!6534 = distinct !DISubprogram(name: "_debugfs_apply_options", scope: !3, file: !3, line: 157, type: !6535, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6537)
!6535 = !DISubroutineType(types: !6536)
!6536 = !{null, !1357, !786}
!6537 = !{!6538, !6539, !6540, !6541, !6542}
!6538 = !DILocalVariable(name: "sb", arg: 1, scope: !6534, file: !3, line: 157, type: !1357)
!6539 = !DILocalVariable(name: "remount", arg: 2, scope: !6534, file: !3, line: 157, type: !786)
!6540 = !DILocalVariable(name: "fsi", scope: !6534, file: !3, line: 159, type: !4471)
!6541 = !DILocalVariable(name: "inode", scope: !6534, file: !3, line: 160, type: !1156)
!6542 = !DILocalVariable(name: "opts", scope: !6534, file: !3, line: 161, type: !6240)
!6543 = !DILocation(line: 157, column: 56, scope: !6534)
!6544 = !DILocation(line: 157, column: 65, scope: !6534)
!6545 = !DILocation(line: 159, column: 2, scope: !6534)
!6546 = !DILocation(line: 159, column: 26, scope: !6534)
!6547 = !DILocation(line: 159, column: 32, scope: !6534)
!6548 = !DILocation(line: 159, column: 36, scope: !6534)
!6549 = !DILocation(line: 160, column: 2, scope: !6534)
!6550 = !DILocation(line: 160, column: 16, scope: !6534)
!6551 = !DILocation(line: 160, column: 32, scope: !6534)
!6552 = !DILocation(line: 160, column: 36, scope: !6534)
!6553 = !DILocation(line: 160, column: 24, scope: !6534)
!6554 = !DILocation(line: 161, column: 2, scope: !6534)
!6555 = !DILocation(line: 161, column: 29, scope: !6534)
!6556 = !DILocation(line: 161, column: 37, scope: !6534)
!6557 = !DILocation(line: 161, column: 42, scope: !6534)
!6558 = !DILocation(line: 168, column: 7, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 168, column: 6)
!6560 = !DILocation(line: 168, column: 15, scope: !6559)
!6561 = !DILocation(line: 168, column: 18, scope: !6559)
!6562 = !DILocation(line: 168, column: 24, scope: !6559)
!6563 = !DILocation(line: 168, column: 29, scope: !6559)
!6564 = !DILocation(line: 168, column: 6, scope: !6534)
!6565 = !DILocation(line: 169, column: 3, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 168, column: 46)
!6567 = !DILocation(line: 169, column: 10, scope: !6566)
!6568 = !DILocation(line: 169, column: 17, scope: !6566)
!6569 = !DILocation(line: 170, column: 20, scope: !6566)
!6570 = !DILocation(line: 170, column: 26, scope: !6566)
!6571 = !DILocation(line: 170, column: 3, scope: !6566)
!6572 = !DILocation(line: 170, column: 10, scope: !6566)
!6573 = !DILocation(line: 170, column: 17, scope: !6566)
!6574 = !DILocation(line: 171, column: 2, scope: !6566)
!6575 = !DILocation(line: 173, column: 7, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 173, column: 6)
!6577 = !DILocation(line: 173, column: 15, scope: !6576)
!6578 = !DILocation(line: 173, column: 18, scope: !6576)
!6579 = !DILocation(line: 173, column: 24, scope: !6576)
!6580 = !DILocation(line: 173, column: 29, scope: !6576)
!6581 = !DILocation(line: 173, column: 6, scope: !6534)
!6582 = !DILocation(line: 174, column: 3, scope: !6576)
!6583 = !DILocation(line: 174, column: 10, scope: !6576)
!6584 = !DILocation(line: 174, column: 18, scope: !6576)
!6585 = !DILocation(line: 174, column: 24, scope: !6576)
!6586 = !DILocation(line: 176, column: 7, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 176, column: 6)
!6588 = !DILocation(line: 176, column: 15, scope: !6587)
!6589 = !DILocation(line: 176, column: 18, scope: !6587)
!6590 = !DILocation(line: 176, column: 24, scope: !6587)
!6591 = !DILocation(line: 176, column: 29, scope: !6587)
!6592 = !DILocation(line: 176, column: 6, scope: !6534)
!6593 = !DILocation(line: 177, column: 3, scope: !6587)
!6594 = !DILocation(line: 177, column: 10, scope: !6587)
!6595 = !DILocation(line: 177, column: 18, scope: !6587)
!6596 = !DILocation(line: 177, column: 24, scope: !6587)
!6597 = !DILocation(line: 178, column: 1, scope: !6534)
!6598 = distinct !DISubprogram(name: "uid_eq", scope: !760, file: !760, line: 61, type: !6599, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6601)
!6599 = !DISubroutineType(types: !6600)
!6600 = !{!786, !759, !759}
!6601 = !{!6602, !6603}
!6602 = !DILocalVariable(name: "left", arg: 1, scope: !6598, file: !760, line: 61, type: !759)
!6603 = !DILocalVariable(name: "right", arg: 2, scope: !6598, file: !760, line: 61, type: !759)
!6604 = !DILocation(line: 61, column: 34, scope: !6598)
!6605 = !DILocation(line: 61, column: 47, scope: !6598)
!6606 = !DILocation(line: 63, column: 9, scope: !6598)
!6607 = !DILocation(line: 63, column: 29, scope: !6598)
!6608 = !DILocation(line: 63, column: 26, scope: !6598)
!6609 = !DILocation(line: 63, column: 2, scope: !6598)
!6610 = !DISubprogram(name: "seq_printf", scope: !2125, file: !2125, line: 119, type: !6611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{null, !2123, !16, null}
!6613 = distinct !DISubprogram(name: "from_kuid_munged", scope: !760, file: !760, line: 163, type: !6614, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6616)
!6614 = !DISubroutineType(types: !6615)
!6615 = !{!764, !728, !759}
!6616 = !{!6617, !6618, !6619}
!6617 = !DILocalVariable(name: "to", arg: 1, scope: !6613, file: !760, line: 163, type: !728)
!6618 = !DILocalVariable(name: "kuid", arg: 2, scope: !6613, file: !760, line: 163, type: !759)
!6619 = !DILocalVariable(name: "uid", scope: !6613, file: !760, line: 165, type: !764)
!6620 = !DILocation(line: 163, column: 61, scope: !6613)
!6621 = !DILocation(line: 163, column: 72, scope: !6613)
!6622 = !DILocation(line: 165, column: 2, scope: !6613)
!6623 = !DILocation(line: 165, column: 8, scope: !6613)
!6624 = !DILocation(line: 165, column: 24, scope: !6613)
!6625 = !DILocation(line: 165, column: 14, scope: !6613)
!6626 = !DILocation(line: 166, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6613, file: !760, line: 166, column: 6)
!6628 = !DILocation(line: 166, column: 10, scope: !6627)
!6629 = !DILocation(line: 166, column: 6, scope: !6613)
!6630 = !DILocation(line: 167, column: 9, scope: !6627)
!6631 = !DILocation(line: 167, column: 7, scope: !6627)
!6632 = !DILocation(line: 167, column: 3, scope: !6627)
!6633 = !DILocation(line: 168, column: 9, scope: !6613)
!6634 = !DILocation(line: 169, column: 1, scope: !6613)
!6635 = !DILocation(line: 168, column: 2, scope: !6613)
!6636 = distinct !DISubprogram(name: "gid_eq", scope: !760, file: !760, line: 66, type: !6637, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6639)
!6637 = !DISubroutineType(types: !6638)
!6638 = !{!786, !767, !767}
!6639 = !{!6640, !6641}
!6640 = !DILocalVariable(name: "left", arg: 1, scope: !6636, file: !760, line: 66, type: !767)
!6641 = !DILocalVariable(name: "right", arg: 2, scope: !6636, file: !760, line: 66, type: !767)
!6642 = !DILocation(line: 66, column: 34, scope: !6636)
!6643 = !DILocation(line: 66, column: 47, scope: !6636)
!6644 = !DILocation(line: 68, column: 9, scope: !6636)
!6645 = !DILocation(line: 68, column: 29, scope: !6636)
!6646 = !DILocation(line: 68, column: 26, scope: !6636)
!6647 = !DILocation(line: 68, column: 2, scope: !6636)
!6648 = distinct !DISubprogram(name: "from_kgid_munged", scope: !760, file: !760, line: 171, type: !6649, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6651)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!771, !728, !767}
!6651 = !{!6652, !6653, !6654}
!6652 = !DILocalVariable(name: "to", arg: 1, scope: !6648, file: !760, line: 171, type: !728)
!6653 = !DILocalVariable(name: "kgid", arg: 2, scope: !6648, file: !760, line: 171, type: !767)
!6654 = !DILocalVariable(name: "gid", scope: !6648, file: !760, line: 173, type: !771)
!6655 = !DILocation(line: 171, column: 61, scope: !6648)
!6656 = !DILocation(line: 171, column: 72, scope: !6648)
!6657 = !DILocation(line: 173, column: 2, scope: !6648)
!6658 = !DILocation(line: 173, column: 8, scope: !6648)
!6659 = !DILocation(line: 173, column: 24, scope: !6648)
!6660 = !DILocation(line: 173, column: 14, scope: !6648)
!6661 = !DILocation(line: 174, column: 6, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6648, file: !760, line: 174, column: 6)
!6663 = !DILocation(line: 174, column: 10, scope: !6662)
!6664 = !DILocation(line: 174, column: 6, scope: !6648)
!6665 = !DILocation(line: 175, column: 9, scope: !6662)
!6666 = !DILocation(line: 175, column: 7, scope: !6662)
!6667 = !DILocation(line: 175, column: 3, scope: !6662)
!6668 = !DILocation(line: 176, column: 9, scope: !6648)
!6669 = !DILocation(line: 177, column: 1, scope: !6648)
!6670 = !DILocation(line: 176, column: 2, scope: !6648)
!6671 = distinct !DISubprogram(name: "from_kuid", scope: !760, file: !760, line: 153, type: !6614, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6672)
!6672 = !{!6673, !6674}
!6673 = !DILocalVariable(name: "to", arg: 1, scope: !6671, file: !760, line: 153, type: !728)
!6674 = !DILocalVariable(name: "kuid", arg: 2, scope: !6671, file: !760, line: 153, type: !759)
!6675 = !DILocation(line: 153, column: 54, scope: !6671)
!6676 = !DILocation(line: 153, column: 65, scope: !6671)
!6677 = !DILocation(line: 155, column: 9, scope: !6671)
!6678 = !DILocation(line: 155, column: 2, scope: !6671)
!6679 = distinct !DISubprogram(name: "from_kgid", scope: !760, file: !760, line: 158, type: !6649, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6680)
!6680 = !{!6681, !6682}
!6681 = !DILocalVariable(name: "to", arg: 1, scope: !6679, file: !760, line: 158, type: !728)
!6682 = !DILocalVariable(name: "kgid", arg: 2, scope: !6679, file: !760, line: 158, type: !767)
!6683 = !DILocation(line: 158, column: 54, scope: !6679)
!6684 = !DILocation(line: 158, column: 65, scope: !6679)
!6685 = !DILocation(line: 160, column: 9, scope: !6679)
!6686 = !DILocation(line: 160, column: 2, scope: !6679)
!6687 = distinct !DISubprogram(name: "debugfs_release_dentry", scope: !3, file: !3, line: 237, type: !3016, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6688)
!6688 = !{!6689, !6690}
!6689 = !DILocalVariable(name: "dentry", arg: 1, scope: !6687, file: !3, line: 237, type: !1121)
!6690 = !DILocalVariable(name: "fsd", scope: !6687, file: !3, line: 239, type: !5090)
!6691 = !DILocation(line: 237, column: 51, scope: !6687)
!6692 = !DILocation(line: 239, column: 2, scope: !6687)
!6693 = !DILocation(line: 239, column: 25, scope: !6687)
!6694 = !DILocation(line: 239, column: 31, scope: !6687)
!6695 = !DILocation(line: 239, column: 39, scope: !6687)
!6696 = !DILocation(line: 241, column: 21, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6687, file: !3, line: 241, column: 6)
!6698 = !DILocation(line: 241, column: 6, scope: !6697)
!6699 = !DILocation(line: 241, column: 25, scope: !6697)
!6700 = !DILocation(line: 241, column: 6, scope: !6687)
!6701 = !DILocation(line: 242, column: 3, scope: !6697)
!6702 = !DILocation(line: 244, column: 8, scope: !6687)
!6703 = !DILocation(line: 244, column: 2, scope: !6687)
!6704 = !DILocation(line: 245, column: 1, scope: !6687)
!6705 = distinct !DISubprogram(name: "debugfs_automount", scope: !3, file: !3, line: 247, type: !3029, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6706)
!6706 = !{!6707, !6708}
!6707 = !DILocalVariable(name: "path", arg: 1, scope: !6705, file: !3, line: 247, type: !3031)
!6708 = !DILocalVariable(name: "fsd", scope: !6705, file: !3, line: 249, type: !5090)
!6709 = !DILocation(line: 247, column: 56, scope: !6705)
!6710 = !DILocation(line: 249, column: 2, scope: !6705)
!6711 = !DILocation(line: 249, column: 25, scope: !6705)
!6712 = !DILocation(line: 249, column: 31, scope: !6705)
!6713 = !DILocation(line: 249, column: 37, scope: !6705)
!6714 = !DILocation(line: 249, column: 45, scope: !6705)
!6715 = !DILocation(line: 251, column: 9, scope: !6705)
!6716 = !DILocation(line: 251, column: 14, scope: !6705)
!6717 = !DILocation(line: 251, column: 24, scope: !6705)
!6718 = !DILocation(line: 251, column: 30, scope: !6705)
!6719 = !DILocation(line: 251, column: 46, scope: !6705)
!6720 = !DILocation(line: 251, column: 52, scope: !6705)
!6721 = !DILocation(line: 251, column: 38, scope: !6705)
!6722 = !DILocation(line: 251, column: 61, scope: !6705)
!6723 = !DILocation(line: 252, column: 1, scope: !6705)
!6724 = !DILocation(line: 251, column: 2, scope: !6705)
!6725 = distinct !DISubprogram(name: "d_is_reg", scope: !1123, file: !1123, line: 418, type: !5500, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6726)
!6726 = !{!6727}
!6727 = !DILocalVariable(name: "dentry", arg: 1, scope: !6725, file: !1123, line: 418, type: !2997)
!6728 = !DILocation(line: 418, column: 50, scope: !6725)
!6729 = !DILocation(line: 420, column: 24, scope: !6725)
!6730 = !DILocation(line: 420, column: 9, scope: !6725)
!6731 = !DILocation(line: 420, column: 32, scope: !6725)
!6732 = !DILocation(line: 420, column: 2, scope: !6725)
!6733 = distinct !DISubprogram(name: "__debugfs_file_removed", scope: !3, file: !3, line: 733, type: !3016, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6734)
!6734 = !{!6735, !6736}
!6735 = !DILocalVariable(name: "dentry", arg: 1, scope: !6733, file: !3, line: 733, type: !1121)
!6736 = !DILocalVariable(name: "fsd", scope: !6733, file: !3, line: 735, type: !5090)
!6737 = !DILocation(line: 733, column: 51, scope: !6733)
!6738 = !DILocation(line: 735, column: 2, scope: !6733)
!6739 = !DILocation(line: 735, column: 25, scope: !6733)
!6740 = !DILocation(line: 743, column: 2, scope: !6733)
!6741 = !DILocation(line: 743, column: 2, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 743, column: 2)
!6743 = !DILocation(line: 743, column: 2, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6742, file: !3, line: 743, column: 2)
!6745 = !{i64 2154911322}
!6746 = !DILocation(line: 744, column: 8, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 744, column: 8)
!6748 = !DILocation(line: 744, column: 8, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 744, column: 8)
!6750 = !DILocation(line: 744, column: 6, scope: !6733)
!6751 = !DILocation(line: 745, column: 21, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 745, column: 6)
!6753 = !DILocation(line: 745, column: 6, scope: !6752)
!6754 = !DILocation(line: 745, column: 25, scope: !6752)
!6755 = !DILocation(line: 745, column: 6, scope: !6733)
!6756 = !DILocation(line: 746, column: 3, scope: !6752)
!6757 = !DILocation(line: 747, column: 30, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6733, file: !3, line: 747, column: 6)
!6759 = !DILocation(line: 747, column: 35, scope: !6758)
!6760 = !DILocation(line: 747, column: 7, scope: !6758)
!6761 = !DILocation(line: 747, column: 6, scope: !6733)
!6762 = !DILocation(line: 748, column: 24, scope: !6758)
!6763 = !DILocation(line: 748, column: 29, scope: !6758)
!6764 = !DILocation(line: 748, column: 3, scope: !6758)
!6765 = !DILocation(line: 749, column: 1, scope: !6733)
!6766 = distinct !DISubprogram(name: "__d_entry_type", scope: !1123, file: !1123, line: 383, type: !6767, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6769)
!6767 = !DISubroutineType(types: !6768)
!6768 = !{!7, !2997}
!6769 = !{!6770}
!6770 = !DILocalVariable(name: "dentry", arg: 1, scope: !6766, file: !1123, line: 383, type: !2997)
!6771 = !DILocation(line: 383, column: 60, scope: !6766)
!6772 = !DILocation(line: 385, column: 9, scope: !6766)
!6773 = !DILocation(line: 385, column: 17, scope: !6766)
!6774 = !DILocation(line: 385, column: 25, scope: !6766)
!6775 = !DILocation(line: 385, column: 2, scope: !6766)
!6776 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !246, file: !246, line: 331, type: !6777, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6780)
!6777 = !DISubroutineType(types: !6778)
!6778 = !{!786, !6779}
!6779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!6780 = !{!6781}
!6781 = !DILocalVariable(name: "r", arg: 1, scope: !6776, file: !246, line: 331, type: !6779)
!6782 = !DILocation(line: 331, column: 67, scope: !6776)
!6783 = !DILocation(line: 333, column: 33, scope: !6776)
!6784 = !DILocation(line: 333, column: 9, scope: !6776)
!6785 = !DILocation(line: 333, column: 2, scope: !6776)
!6786 = !DISubprogram(name: "wait_for_completion", scope: !953, file: !953, line: 102, type: !6787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = !DISubroutineType(types: !6788)
!6788 = !{null, !951}
!6789 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !246, file: !246, line: 313, type: !6790, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6792)
!6790 = !DISubroutineType(types: !6791)
!6791 = !{!786, !6779, !255}
!6792 = !{!6793, !6794}
!6793 = !DILocalVariable(name: "r", arg: 1, scope: !6789, file: !246, line: 313, type: !6779)
!6794 = !DILocalVariable(name: "oldp", arg: 2, scope: !6789, file: !246, line: 313, type: !255)
!6795 = !DILocation(line: 313, column: 69, scope: !6789)
!6796 = !DILocation(line: 313, column: 77, scope: !6789)
!6797 = !DILocation(line: 315, column: 36, scope: !6789)
!6798 = !DILocation(line: 315, column: 39, scope: !6789)
!6799 = !DILocation(line: 315, column: 9, scope: !6789)
!6800 = !DILocation(line: 315, column: 2, scope: !6789)
!6801 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !246, file: !246, line: 270, type: !6802, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6804)
!6802 = !DISubroutineType(types: !6803)
!6803 = !{!786, !22, !6779, !255}
!6804 = !{!6805, !6806, !6807, !6808}
!6805 = !DILocalVariable(name: "i", arg: 1, scope: !6801, file: !246, line: 270, type: !22)
!6806 = !DILocalVariable(name: "r", arg: 2, scope: !6801, file: !246, line: 270, type: !6779)
!6807 = !DILocalVariable(name: "oldp", arg: 3, scope: !6801, file: !246, line: 270, type: !255)
!6808 = !DILocalVariable(name: "old", scope: !6801, file: !246, line: 272, type: !22)
!6809 = !DILocation(line: 270, column: 61, scope: !6801)
!6810 = !DILocation(line: 270, column: 76, scope: !6801)
!6811 = !DILocation(line: 270, column: 84, scope: !6801)
!6812 = !DILocation(line: 272, column: 2, scope: !6801)
!6813 = !DILocation(line: 272, column: 6, scope: !6801)
!6814 = !DILocation(line: 272, column: 37, scope: !6801)
!6815 = !DILocation(line: 272, column: 41, scope: !6801)
!6816 = !DILocation(line: 272, column: 44, scope: !6801)
!6817 = !DILocation(line: 272, column: 12, scope: !6801)
!6818 = !DILocation(line: 274, column: 6, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6801, file: !246, line: 274, column: 6)
!6820 = !DILocation(line: 274, column: 6, scope: !6801)
!6821 = !DILocation(line: 275, column: 11, scope: !6819)
!6822 = !DILocation(line: 275, column: 4, scope: !6819)
!6823 = !DILocation(line: 275, column: 9, scope: !6819)
!6824 = !DILocation(line: 275, column: 3, scope: !6819)
!6825 = !DILocation(line: 277, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6801, file: !246, line: 277, column: 6)
!6827 = !DILocation(line: 277, column: 13, scope: !6826)
!6828 = !DILocation(line: 277, column: 10, scope: !6826)
!6829 = !DILocation(line: 277, column: 6, scope: !6801)
!6830 = !DILocation(line: 278, column: 3, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6826, file: !246, line: 277, column: 16)
!6832 = !DILocation(line: 278, column: 3, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6831, file: !246, line: 278, column: 3)
!6834 = !DILocation(line: 278, column: 3, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6833, file: !246, line: 278, column: 3)
!6836 = !DILocation(line: 278, column: 3, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6833, file: !246, line: 278, column: 3)
!6838 = !DILocation(line: 278, column: 3, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6837, file: !246, line: 278, column: 3)
!6840 = !{i64 2149942809}
!6841 = !DILocation(line: 279, column: 3, scope: !6831)
!6842 = !DILocation(line: 282, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6801, file: !246, line: 282, column: 6)
!6844 = !DILocation(line: 282, column: 6, scope: !6801)
!6845 = !DILocation(line: 283, column: 26, scope: !6843)
!6846 = !DILocation(line: 283, column: 3, scope: !6843)
!6847 = !DILocation(line: 285, column: 2, scope: !6801)
!6848 = !DILocation(line: 286, column: 1, scope: !6801)
!6849 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5835, file: !5835, line: 397, type: !6850, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6853)
!6850 = !DISubroutineType(types: !6851)
!6851 = !{!22, !22, !6852}
!6852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!6853 = !{!6854, !6855}
!6854 = !DILocalVariable(name: "i", arg: 1, scope: !6849, file: !5835, line: 397, type: !22)
!6855 = !DILocalVariable(name: "v", arg: 2, scope: !6849, file: !5835, line: 397, type: !6852)
!6856 = !DILocation(line: 397, column: 30, scope: !6849)
!6857 = !DILocation(line: 397, column: 43, scope: !6849)
!6858 = !DILocation(line: 399, column: 2, scope: !6849)
!6859 = !DILocation(line: 399, column: 2, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6849, file: !5835, line: 399, column: 2)
!6861 = !DILocation(line: 400, column: 31, scope: !6849)
!6862 = !DILocation(line: 400, column: 2, scope: !6849)
!6863 = !DILocation(line: 401, column: 38, scope: !6849)
!6864 = !DILocation(line: 401, column: 41, scope: !6849)
!6865 = !DILocation(line: 401, column: 9, scope: !6849)
!6866 = !DILocation(line: 401, column: 2, scope: !6849)
!6867 = !DISubprogram(name: "refcount_warn_saturate", scope: !246, file: !246, line: 127, type: !6868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{null, !6779, !245}
!6870 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5852, file: !5852, line: 94, type: !5853, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6871)
!6871 = !{!6872, !6873}
!6872 = !DILocalVariable(name: "v", arg: 1, scope: !6870, file: !5852, line: 94, type: !5855)
!6873 = !DILocalVariable(name: "size", arg: 2, scope: !6870, file: !5852, line: 94, type: !35)
!6874 = !DILocation(line: 94, column: 79, scope: !6870)
!6875 = !DILocation(line: 94, column: 89, scope: !6870)
!6876 = !DILocation(line: 96, column: 20, scope: !6870)
!6877 = !DILocation(line: 96, column: 23, scope: !6870)
!6878 = !DILocation(line: 96, column: 2, scope: !6870)
!6879 = !DILocation(line: 97, column: 2, scope: !6870)
!6880 = !DILocation(line: 98, column: 1, scope: !6870)
!6881 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5898, file: !5898, line: 928, type: !6850, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884}
!6883 = !DILocalVariable(name: "i", arg: 1, scope: !6881, file: !5898, line: 928, type: !22)
!6884 = !DILocalVariable(name: "v", arg: 2, scope: !6881, file: !5898, line: 928, type: !6852)
!6885 = !DILocation(line: 928, column: 34, scope: !6881)
!6886 = !DILocation(line: 928, column: 47, scope: !6881)
!6887 = !DILocation(line: 936, column: 31, scope: !6881)
!6888 = !DILocation(line: 936, column: 34, scope: !6881)
!6889 = !DILocation(line: 936, column: 9, scope: !6881)
!6890 = !DILocation(line: 936, column: 2, scope: !6881)
!6891 = distinct !DISubprogram(name: "kasan_check_write", scope: !5876, file: !5876, line: 44, type: !5877, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6892 = !{!6893, !6894}
!6893 = !DILocalVariable(name: "p", arg: 1, scope: !6891, file: !5876, line: 44, type: !5855)
!6894 = !DILocalVariable(name: "size", arg: 2, scope: !6891, file: !5876, line: 44, type: !7)
!6895 = !DILocation(line: 44, column: 59, scope: !6891)
!6896 = !DILocation(line: 44, column: 75, scope: !6891)
!6897 = !DILocation(line: 46, column: 2, scope: !6891)
!6898 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6899, file: !6899, line: 101, type: !6850, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6899 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6900 = !{!6901, !6902, !6903}
!6901 = !DILocalVariable(name: "i", arg: 1, scope: !6898, file: !6899, line: 101, type: !22)
!6902 = !DILocalVariable(name: "v", arg: 2, scope: !6898, file: !6899, line: 101, type: !6852)
!6903 = !DILocalVariable(name: "__ret", scope: !6904, file: !6899, line: 103, type: !22)
!6904 = distinct !DILexicalBlock(scope: !6898, file: !6899, line: 103, column: 9)
!6905 = !DILocation(line: 101, column: 54, scope: !6898)
!6906 = !DILocation(line: 101, column: 67, scope: !6898)
!6907 = !DILocation(line: 103, column: 9, scope: !6904)
!6908 = !{i64 2148819731, i64 2148819770, i64 2148819791, i64 2148819828, i64 2148819851, i64 2148819860}
!6909 = !DILocation(line: 103, column: 9, scope: !6898)
!6910 = !DILocation(line: 103, column: 2, scope: !6898)
!6911 = !DISubprogram(name: "fsnotify_get_cookie", scope: !217, file: !217, line: 549, type: !6912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6912 = !DISubroutineType(types: !6913)
!6913 = !{!268}
!6914 = distinct !DISubprogram(name: "fsnotify_link_count", scope: !5050, file: !5050, line: 138, type: !2594, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6915 = !{!6916}
!6916 = !DILocalVariable(name: "inode", arg: 1, scope: !6914, file: !5050, line: 138, type: !1156)
!6917 = !DILocation(line: 138, column: 54, scope: !6914)
!6918 = !DILocation(line: 140, column: 17, scope: !6914)
!6919 = !DILocation(line: 140, column: 2, scope: !6914)
!6920 = !DILocation(line: 141, column: 1, scope: !6914)
!6921 = distinct !DISubprogram(name: "fsnotify_inode", scope: !5050, file: !5050, line: 45, type: !6922, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6924)
!6922 = !DISubroutineType(types: !6923)
!6923 = !{null, !1156, !269}
!6924 = !{!6925, !6926}
!6925 = !DILocalVariable(name: "inode", arg: 1, scope: !6921, file: !5050, line: 45, type: !1156)
!6926 = !DILocalVariable(name: "mask", arg: 2, scope: !6921, file: !5050, line: 45, type: !269)
!6927 = !DILocation(line: 45, column: 49, scope: !6921)
!6928 = !DILocation(line: 45, column: 62, scope: !6921)
!6929 = !DILocation(line: 47, column: 24, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6921, file: !5050, line: 47, column: 6)
!6931 = !DILocation(line: 47, column: 31, scope: !6930)
!6932 = !DILocation(line: 47, column: 37, scope: !6930)
!6933 = !DILocation(line: 47, column: 6, scope: !6930)
!6934 = !DILocation(line: 47, column: 60, scope: !6930)
!6935 = !DILocation(line: 47, column: 6, scope: !6921)
!6936 = !DILocation(line: 48, column: 3, scope: !6930)
!6937 = !DILocation(line: 50, column: 6, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6921, file: !5050, line: 50, column: 6)
!6939 = !DILocation(line: 50, column: 6, scope: !6921)
!6940 = !DILocation(line: 51, column: 8, scope: !6938)
!6941 = !DILocation(line: 51, column: 3, scope: !6938)
!6942 = !DILocation(line: 53, column: 11, scope: !6921)
!6943 = !DILocation(line: 53, column: 17, scope: !6921)
!6944 = !DILocation(line: 53, column: 58, scope: !6921)
!6945 = !DILocation(line: 53, column: 2, scope: !6921)
!6946 = !DILocation(line: 54, column: 1, scope: !6921)
!6947 = distinct !DISubprogram(name: "d_can_lookup", scope: !1123, file: !1123, line: 398, type: !5500, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6948 = !{!6949}
!6949 = !DILocalVariable(name: "dentry", arg: 1, scope: !6947, file: !1123, line: 398, type: !2997)
!6950 = !DILocation(line: 398, column: 54, scope: !6947)
!6951 = !DILocation(line: 400, column: 24, scope: !6947)
!6952 = !DILocation(line: 400, column: 9, scope: !6947)
!6953 = !DILocation(line: 400, column: 32, scope: !6947)
!6954 = !DILocation(line: 400, column: 2, scope: !6947)
!6955 = distinct !DISubprogram(name: "d_is_autodir", scope: !1123, file: !1123, line: 403, type: !5500, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6956)
!6956 = !{!6957}
!6957 = !DILocalVariable(name: "dentry", arg: 1, scope: !6955, file: !1123, line: 403, type: !2997)
!6958 = !DILocation(line: 403, column: 54, scope: !6955)
!6959 = !DILocation(line: 405, column: 24, scope: !6955)
!6960 = !DILocation(line: 405, column: 9, scope: !6955)
!6961 = !DILocation(line: 405, column: 32, scope: !6955)
!6962 = !DILocation(line: 405, column: 2, scope: !6955)
!6963 = !DISubprogram(name: "strcmp", scope: !4615, file: !4615, line: 88, type: !6964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6964 = !DISubroutineType(types: !6965)
!6965 = !{!22, !16, !16}
!6966 = !DISubprogram(name: "sysfs_create_mount_point", scope: !1468, file: !1468, line: 268, type: !6967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6967 = !DISubroutineType(types: !6968)
!6968 = !{!22, !1410, !16}
!6969 = !DISubprogram(name: "register_filesystem", scope: !173, file: !173, line: 2445, type: !6970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6970 = !DISubroutineType(types: !6971)
!6971 = !{!22, !1366}
!6972 = !DISubprogram(name: "sysfs_remove_mount_point", scope: !1468, file: !1468, line: 270, type: !6973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6973 = !DISubroutineType(types: !6974)
!6974 = !{null, !1410, !16}
