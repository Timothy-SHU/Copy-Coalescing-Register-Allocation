; ModuleID = 'drivers/base/devtmpfs.c'
source_filename = "drivers/base/devtmpfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.mnt_idmap = type opaque
%struct.pcpu_hot = type { %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [16 x i8] }
%struct.anon.33 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.req = type { ptr, %struct.completion, i32, ptr, i16, %struct.kuid_t, %struct.kgid_t, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.24, %struct.list_head, %struct.list_head, %union.anon.25 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.20, ptr }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
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
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.10, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.13 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i64, i64 }
%union.anon.13 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.path = type { ptr, ptr }
%struct.iattr = type { i32, i16, %union.anon.26, %union.anon.27, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.26 = type { %struct.kuid_t }
%union.anon.27 = type { %struct.kgid_t }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.28, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.29, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.30, ptr, %struct.address_space, %struct.list_head, %union.anon.31, i32, i32, ptr, ptr }
%union.anon.28 = type { i32 }
%union.anon.29 = type { %struct.callback_head }
%union.anon.30 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.31 = type { ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i64 }

@__setup_str_mount_param = internal constant [16 x i8] c"devtmpfs.mount=\00", section ".init.rodata", align 1, !dbg !0
@__setup_mount_param = internal global %struct.obs_kernel_param { ptr @__setup_str_mount_param, ptr @mount_param, i32 0 }, section ".init.setup", align 8, !dbg !6623
@thread = internal global ptr null, align 8, !dbg !6675
@mount_dev = internal global i32 1, section ".init.data", align 4, !dbg !6703
@.str = private unnamed_addr constant [9 x i8] c"devtmpfs\00", align 1, !dbg !6634
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1, !dbg !6639
@.str.2 = private unnamed_addr constant [31 x i8] c"\016devtmpfs: error mounting %d\0A\00", align 1, !dbg !6642
@.str.3 = private unnamed_addr constant [21 x i8] c"\016devtmpfs: mounted\0A\00", align 1, !dbg !6647
@__const.devtmpfs_init.opts = private unnamed_addr constant [10 x i8] c"mode=0755\00", align 1
@internal_fs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr @shmem_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !6705
@mnt = internal global ptr null, align 8, !dbg !6677
@.str.4 = private unnamed_addr constant [43 x i8] c"\013devtmpfs: unable to create devtmpfs %ld\0A\00", align 1, !dbg !6652
@dev_fs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @public_dev_mount, ptr null, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !6707
@.str.5 = private unnamed_addr constant [49 x i8] c"\013devtmpfs: unable to register devtmpfs type %d\0A\00", align 1, !dbg !6657
@.str.6 = private unnamed_addr constant [10 x i8] c"kdevtmpfs\00", align 1, !dbg !6662
@setup_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @setup_done, i64 16), ptr getelementptr (i8, ptr @setup_done, i64 16) } } }, section ".init.data", align 8, !dbg !6716
@.str.7 = private unnamed_addr constant [42 x i8] c"\013devtmpfs: unable to create devtmpfs %d\0A\00", align 1, !dbg !6665
@.str.8 = private unnamed_addr constant [25 x i8] c"\016devtmpfs: initialized\0A\00", align 1, !dbg !6670
@block_class = external dso_local global %struct.class, align 8
@req_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !6688
@requests = internal global ptr null, align 8, !dbg !6690
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !6679
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !6686
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !6709
@.str.11 = private unnamed_addr constant [4 x i8] c"/..\00", align 1, !dbg !6712
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !6714
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_mount_param], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mount_param(ptr noundef %str) #0 section ".init.text" align 16 !dbg !6728 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  %0 = load ptr, ptr %str.addr, align 8, !dbg !6732
  %call = call i64 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #13, !dbg !6733
  %conv = trunc i64 %call to i32, !dbg !6733
  store i32 %conv, ptr @mount_dev, align 4, !dbg !6734
  ret i32 1, !dbg !6735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devtmpfs_create_node(ptr noundef %dev) #1 align 16 !dbg !6736 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %req = alloca %struct.req, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral1 = alloca %struct.kgid_t, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6738, metadata !DIExpression()), !dbg !6741
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6742
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6739, metadata !DIExpression()), !dbg !6743
  store ptr null, ptr %tmp, align 8, !dbg !6743
  call void @llvm.lifetime.start.p0(i64 80, ptr %req) #14, !dbg !6744
  call void @llvm.dbg.declare(metadata ptr %req, metadata !6740, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr @thread, align 8, !dbg !6746
  %tobool = icmp ne ptr %0, null, !dbg !6746
  br i1 %tobool, label %if.end, label %if.then, !dbg !6748

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6749

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6750
  store i16 0, ptr %mode, align 8, !dbg !6751
  %uid = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 5, !dbg !6752
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6753
  store i32 0, ptr %val, align 4, !dbg !6753
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6753
  %gid = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 6, !dbg !6754
  %val2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !6755
  store i32 0, ptr %val2, align 4, !dbg !6755
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid, ptr align 4 %.compoundliteral1, i64 4, i1 false), !dbg !6755
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6756
  %mode3 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6757
  %uid4 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 5, !dbg !6758
  %gid5 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 6, !dbg !6759
  %call = call ptr @device_get_devnode(ptr noundef %1, ptr noundef %mode3, ptr noundef %uid4, ptr noundef %gid5, ptr noundef %tmp) #13, !dbg !6760
  %name = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3, !dbg !6761
  store ptr %call, ptr %name, align 8, !dbg !6762
  %name6 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3, !dbg !6763
  %2 = load ptr, ptr %name6, align 8, !dbg !6763
  %tobool7 = icmp ne ptr %2, null, !dbg !6765
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6766

if.then8:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6767

if.end9:                                          ; preds = %if.end
  %mode10 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6768
  %3 = load i16, ptr %mode10, align 8, !dbg !6768
  %conv = zext i16 %3 to i32, !dbg !6770
  %cmp = icmp eq i32 %conv, 0, !dbg !6771
  br i1 %cmp, label %if.then12, label %if.end14, !dbg !6772

if.then12:                                        ; preds = %if.end9
  %mode13 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6773
  store i16 384, ptr %mode13, align 8, !dbg !6774
  br label %if.end14, !dbg !6775

if.end14:                                         ; preds = %if.then12, %if.end9
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6776
  %call15 = call zeroext i1 @is_blockdev(ptr noundef %4) #13, !dbg !6778
  br i1 %call15, label %if.then16, label %if.else, !dbg !6779

if.then16:                                        ; preds = %if.end14
  %mode17 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6780
  %5 = load i16, ptr %mode17, align 8, !dbg !6781
  %conv18 = zext i16 %5 to i32, !dbg !6781
  %or = or i32 %conv18, 24576, !dbg !6781
  %conv19 = trunc i32 %or to i16, !dbg !6781
  store i16 %conv19, ptr %mode17, align 8, !dbg !6781
  br label %if.end24, !dbg !6782

if.else:                                          ; preds = %if.end14
  %mode20 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6783
  %6 = load i16, ptr %mode20, align 8, !dbg !6784
  %conv21 = zext i16 %6 to i32, !dbg !6784
  %or22 = or i32 %conv21, 8192, !dbg !6784
  %conv23 = trunc i32 %or22 to i16, !dbg !6784
  store i16 %conv23, ptr %mode20, align 8, !dbg !6784
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6785
  %dev25 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 7, !dbg !6786
  store ptr %7, ptr %dev25, align 8, !dbg !6787
  %8 = load ptr, ptr %tmp, align 8, !dbg !6788
  %call26 = call i32 @devtmpfs_submit_req(ptr noundef %req, ptr noundef %8) #13, !dbg !6789
  store i32 %call26, ptr %retval, align 4, !dbg !6790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6790

cleanup:                                          ; preds = %if.end24, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr %req) #14, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6791
  %9 = load i32, ptr %retval, align 4, !dbg !6791
  ret i32 %9, !dbg !6791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6792 dso_local ptr @device_get_devnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_blockdev(ptr noundef %dev) #6 align 16 !dbg !6795 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6799, metadata !DIExpression()), !dbg !6800
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6801
  %class = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, !dbg !6802
  %1 = load ptr, ptr %class, align 8, !dbg !6802
  %cmp = icmp eq ptr %1, @block_class, !dbg !6803
  ret i1 %cmp, !dbg !6804
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devtmpfs_submit_req(ptr noundef %req, ptr noundef %tmp) #1 align 16 !dbg !6805 {
entry:
  %req.addr = alloca ptr, align 8
  %tmp.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6809, metadata !DIExpression()), !dbg !6811
  store ptr %tmp, ptr %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmp.addr, metadata !6810, metadata !DIExpression()), !dbg !6812
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6813
  %done = getelementptr inbounds %struct.req, ptr %0, i32 0, i32 1, !dbg !6814
  call void @init_completion(ptr noundef %done) #13, !dbg !6815
  call void @spin_lock(ptr noundef @req_lock) #13, !dbg !6816
  %1 = load ptr, ptr @requests, align 8, !dbg !6817
  %2 = load ptr, ptr %req.addr, align 8, !dbg !6818
  %next = getelementptr inbounds %struct.req, ptr %2, i32 0, i32 0, !dbg !6819
  store ptr %1, ptr %next, align 8, !dbg !6820
  %3 = load ptr, ptr %req.addr, align 8, !dbg !6821
  store ptr %3, ptr @requests, align 8, !dbg !6822
  call void @spin_unlock(ptr noundef @req_lock) #13, !dbg !6823
  %4 = load ptr, ptr @thread, align 8, !dbg !6824
  %call = call i32 @wake_up_process(ptr noundef %4) #13, !dbg !6825
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6826
  %done1 = getelementptr inbounds %struct.req, ptr %5, i32 0, i32 1, !dbg !6827
  call void @wait_for_completion(ptr noundef %done1) #13, !dbg !6828
  %6 = load ptr, ptr %tmp.addr, align 8, !dbg !6829
  call void @kfree(ptr noundef %6) #13, !dbg !6830
  %7 = load ptr, ptr %req.addr, align 8, !dbg !6831
  %err = getelementptr inbounds %struct.req, ptr %7, i32 0, i32 2, !dbg !6832
  %8 = load i32, ptr %err, align 8, !dbg !6832
  ret i32 %8, !dbg !6833
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devtmpfs_delete_node(ptr noundef %dev) #1 align 16 !dbg !6834 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %req = alloca %struct.req, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6836, metadata !DIExpression()), !dbg !6839
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !6840
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6837, metadata !DIExpression()), !dbg !6841
  store ptr null, ptr %tmp, align 8, !dbg !6841
  call void @llvm.lifetime.start.p0(i64 80, ptr %req) #14, !dbg !6842
  call void @llvm.dbg.declare(metadata ptr %req, metadata !6838, metadata !DIExpression()), !dbg !6843
  %0 = load ptr, ptr @thread, align 8, !dbg !6844
  %tobool = icmp ne ptr %0, null, !dbg !6844
  br i1 %tobool, label %if.end, label %if.then, !dbg !6846

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6847

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6848
  %call = call ptr @device_get_devnode(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %tmp) #13, !dbg !6849
  %name = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3, !dbg !6850
  store ptr %call, ptr %name, align 8, !dbg !6851
  %name1 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3, !dbg !6852
  %2 = load ptr, ptr %name1, align 8, !dbg !6852
  %tobool2 = icmp ne ptr %2, null, !dbg !6854
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6855

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6856

if.end4:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4, !dbg !6857
  store i16 0, ptr %mode, align 8, !dbg !6858
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6859
  %dev5 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 7, !dbg !6860
  store ptr %3, ptr %dev5, align 8, !dbg !6861
  %4 = load ptr, ptr %tmp, align 8, !dbg !6862
  %call6 = call i32 @devtmpfs_submit_req(ptr noundef %req, ptr noundef %4) #13, !dbg !6863
  store i32 %call6, ptr %retval, align 4, !dbg !6864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6864

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr %req) #14, !dbg !6865
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !6865
  %5 = load i32, ptr %retval, align 4, !dbg !6865
  ret i32 %5, !dbg !6865
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @devtmpfs_mount() #0 section ".init.text" align 16 !dbg !6866 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6869
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6868, metadata !DIExpression()), !dbg !6870
  %0 = load i32, ptr @mount_dev, align 4, !dbg !6871
  %tobool = icmp ne i32 %0, 0, !dbg !6871
  br i1 %tobool, label %if.end, label %if.then, !dbg !6873

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6874

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @thread, align 8, !dbg !6875
  %tobool1 = icmp ne ptr %1, null, !dbg !6875
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6877

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6878

if.end3:                                          ; preds = %if.end
  %call = call i32 @init_mount(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str, i64 noundef 32768, ptr noundef null) #15, !dbg !6879
  store i32 %call, ptr %err, align 4, !dbg !6880
  %2 = load i32, ptr %err, align 4, !dbg !6881
  %tobool4 = icmp ne i32 %2, 0, !dbg !6881
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6883

if.then5:                                         ; preds = %if.end3
  br label %do.body, !dbg !6884

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !6886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6886

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %err, align 4, !dbg !6884
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %3) #15, !dbg !6884
  store i32 %call6, ptr %tmp, align 4, !dbg !6886
  %4 = load i32, ptr %tmp, align 4, !dbg !6884
  br label %if.end12, !dbg !6888

if.else:                                          ; preds = %if.end3
  br label %do.body7, !dbg !6889

do.body7:                                         ; preds = %if.else
  br label %do.cond8, !dbg !6891

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6891

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #15, !dbg !6889
  store i32 %call11, ptr %tmp10, align 4, !dbg !6891
  %5 = load i32, ptr %tmp10, align 4, !dbg !6889
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %do.end
  %6 = load i32, ptr %err, align 4, !dbg !6893
  store i32 %6, ptr %retval, align 4, !dbg !6894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6894

cleanup:                                          ; preds = %if.end12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6895
  %7 = load i32, ptr %retval, align 4, !dbg !6895
  ret i32 %7, !dbg !6895
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6896 dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #7 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6900 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @devtmpfs_init() #0 section ".init.text" align 16 !dbg !6904 {
entry:
  %retval = alloca i32, align 4
  %opts = alloca [10 x i8], align 1
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %__k = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp29 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr %opts) #14, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !6906, metadata !DIExpression()), !dbg !6911
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %opts, ptr align 1 @__const.devtmpfs_init.opts, i64 10, i1 false), !dbg !6911
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6907, metadata !DIExpression()), !dbg !6913
  %arraydecay = getelementptr inbounds [10 x i8], ptr %opts, i64 0, i64 0, !dbg !6914
  %call = call ptr @vfs_kern_mount(ptr noundef @internal_fs_type, i32 noundef 0, ptr noundef @.str, ptr noundef %arraydecay) #13, !dbg !6915
  store ptr %call, ptr @mnt, align 8, !dbg !6916
  %0 = load ptr, ptr @mnt, align 8, !dbg !6917
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #13, !dbg !6919
  br i1 %call1, label %if.then, label %if.end, !dbg !6920

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6921

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6924

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6924

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr @mnt, align 8, !dbg !6921
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #13, !dbg !6921
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %call2) #15, !dbg !6921
  store i32 %call3, ptr %tmp, align 4, !dbg !6924
  %2 = load i32, ptr %tmp, align 4, !dbg !6921
  %3 = load ptr, ptr @mnt, align 8, !dbg !6926
  %call4 = call i64 @PTR_ERR(ptr noundef %3) #13, !dbg !6927
  %conv = trunc i64 %call4 to i32, !dbg !6927
  store i32 %conv, ptr %retval, align 4, !dbg !6928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6928

if.end:                                           ; preds = %entry
  %call5 = call i32 @register_filesystem(ptr noundef @dev_fs_type) #13, !dbg !6929
  store i32 %call5, ptr %err, align 4, !dbg !6930
  %4 = load i32, ptr %err, align 4, !dbg !6931
  %tobool = icmp ne i32 %4, 0, !dbg !6931
  br i1 %tobool, label %if.then6, label %if.end12, !dbg !6933

if.then6:                                         ; preds = %if.end
  br label %do.body7, !dbg !6934

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !6937

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6937

do.end9:                                          ; preds = %do.cond8
  %5 = load i32, ptr %err, align 4, !dbg !6934
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %5) #15, !dbg !6934
  store i32 %call11, ptr %tmp10, align 4, !dbg !6937
  %6 = load i32, ptr %tmp10, align 4, !dbg !6934
  %7 = load i32, ptr %err, align 4, !dbg !6939
  store i32 %7, ptr %retval, align 4, !dbg !6940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6940

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__k) #14, !dbg !6941
  call void @llvm.dbg.declare(metadata ptr %__k, metadata !6908, metadata !DIExpression()), !dbg !6941
  %call13 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @devtmpfsd, ptr noundef %err, i32 noundef -1, ptr noundef @.str.6) #13, !dbg !6941
  store ptr %call13, ptr %__k, align 8, !dbg !6941
  %8 = load ptr, ptr %__k, align 8, !dbg !6942
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %8) #13, !dbg !6942
  br i1 %call14, label %if.end17, label %if.then15, !dbg !6941

if.then15:                                        ; preds = %if.end12
  %9 = load ptr, ptr %__k, align 8, !dbg !6942
  %call16 = call i32 @wake_up_process(ptr noundef %9) #13, !dbg !6942
  br label %if.end17, !dbg !6942

if.end17:                                         ; preds = %if.then15, %if.end12
  %10 = load ptr, ptr %__k, align 8, !dbg !6941
  store ptr %10, ptr %tmp18, align 8, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__k) #14, !dbg !6944
  %11 = load ptr, ptr %tmp18, align 8, !dbg !6941
  store ptr %11, ptr @thread, align 8, !dbg !6945
  %12 = load ptr, ptr @thread, align 8, !dbg !6946
  %call19 = call zeroext i1 @IS_ERR(ptr noundef %12) #13, !dbg !6948
  br i1 %call19, label %if.else, label %if.then20, !dbg !6949

if.then20:                                        ; preds = %if.end17
  call void @wait_for_completion(ptr noundef @setup_done) #13, !dbg !6950
  br label %if.end23, !dbg !6952

if.else:                                          ; preds = %if.end17
  %13 = load ptr, ptr @thread, align 8, !dbg !6953
  %call21 = call i64 @PTR_ERR(ptr noundef %13) #13, !dbg !6955
  %conv22 = trunc i64 %call21 to i32, !dbg !6955
  store i32 %conv22, ptr %err, align 4, !dbg !6956
  store ptr null, ptr @thread, align 8, !dbg !6957
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %14 = load i32, ptr %err, align 4, !dbg !6958
  %tobool24 = icmp ne i32 %14, 0, !dbg !6958
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !6960

if.then25:                                        ; preds = %if.end23
  br label %do.body26, !dbg !6961

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !6964

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6964

do.end28:                                         ; preds = %do.cond27
  %15 = load i32, ptr %err, align 4, !dbg !6961
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %15) #15, !dbg !6961
  store i32 %call30, ptr %tmp29, align 4, !dbg !6964
  %16 = load i32, ptr %tmp29, align 4, !dbg !6961
  %call31 = call i32 @unregister_filesystem(ptr noundef @dev_fs_type) #13, !dbg !6966
  store ptr null, ptr @thread, align 8, !dbg !6967
  %17 = load i32, ptr %err, align 4, !dbg !6968
  store i32 %17, ptr %retval, align 4, !dbg !6969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6969

if.end32:                                         ; preds = %if.end23
  br label %do.body33, !dbg !6970

do.body33:                                        ; preds = %if.end32
  br label %do.cond34, !dbg !6972

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6972

do.end35:                                         ; preds = %do.cond34
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #15, !dbg !6970
  store i32 %call37, ptr %tmp36, align 4, !dbg !6972
  %18 = load i32, ptr %tmp36, align 4, !dbg !6970
  store i32 0, ptr %retval, align 4, !dbg !6974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6974

cleanup:                                          ; preds = %do.end35, %do.end28, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6975
  call void @llvm.lifetime.end.p0(i64 10, ptr %opts) #14, !dbg !6975
  %19 = load i32, ptr %retval, align 4, !dbg !6975
  ret i32 %19, !dbg !6975
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6976 dso_local ptr @vfs_kern_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !6979 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6984, metadata !DIExpression()), !dbg !6985
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6986
  %1 = ptrtoint ptr %0 to i64, !dbg !6986
  %2 = inttoptr i64 %1 to ptr, !dbg !6986
  %3 = ptrtoint ptr %2 to i64, !dbg !6986
  %cmp = icmp uge i64 %3, -4095, !dbg !6986
  %lnot = xor i1 %cmp, true, !dbg !6986
  %lnot1 = xor i1 %lnot, true, !dbg !6986
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6986
  %conv = sext i32 %lnot.ext to i64, !dbg !6986
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6986
  %tobool = icmp ne i64 %expval, 0, !dbg !6986
  ret i1 %tobool, !dbg !6987
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !6988 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6992, metadata !DIExpression()), !dbg !6993
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6994
  %1 = ptrtoint ptr %0 to i64, !dbg !6995
  ret i64 %1, !dbg !6996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6997 dso_local i32 @register_filesystem(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7000 dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devtmpfsd(ptr noundef %p) #8 section ".ref.text" align 16 !dbg !7007 {
entry:
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7009, metadata !DIExpression()), !dbg !7011
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7012
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7010, metadata !DIExpression()), !dbg !7013
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7014
  %call = call i32 @devtmpfs_setup(ptr noundef %0) #15, !dbg !7015
  store i32 %call, ptr %err, align 4, !dbg !7013
  call void @complete(ptr noundef @setup_done) #13, !dbg !7016
  %1 = load i32, ptr %err, align 4, !dbg !7017
  %tobool = icmp ne i32 %1, 0, !dbg !7017
  br i1 %tobool, label %if.then, label %if.end, !dbg !7019

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7020
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7021
  ret i32 %2, !dbg !7022

if.end:                                           ; preds = %entry
  call void @devtmpfs_work_loop() #16, !dbg !7023
  unreachable, !dbg !7023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7024 dso_local i32 @wake_up_process(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7027 dso_local void @wait_for_completion(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7028 dso_local i32 @unregister_filesystem(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7029 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #6 align 16 !dbg !6681 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6685, metadata !DIExpression()), !dbg !7034
  %0 = load ptr, ptr %x.addr, align 8, !dbg !7035
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !7036
  store i32 0, ptr %done, align 8, !dbg !7037
  br label %do.body, !dbg !7038

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !7039
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !7039
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.9, ptr noundef @init_completion.__key) #13, !dbg !7039
  br label %do.end, !dbg !7039

do.end:                                           ; preds = %do.body
  ret void, !dbg !7041
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #9 align 16 !dbg !7042 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7047, metadata !DIExpression()), !dbg !7048
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7049
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7049
  call void @_raw_spin_lock(ptr noundef %1) #13, !dbg !7049
  ret void, !dbg !7050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #9 align 16 !dbg !7051 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7053, metadata !DIExpression()), !dbg !7054
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7055
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7055
  call void @_raw_spin_unlock(ptr noundef %1) #13, !dbg !7055
  ret void, !dbg !7056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7057 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7061 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7066 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7071 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shmem_init_fs_context(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @public_dev_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #1 align 16 !dbg !7072 {
entry:
  %retval = alloca ptr, align 8
  %fs_type.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dev_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fs_type, ptr %fs_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs_type.addr, metadata !7074, metadata !DIExpression()), !dbg !7080
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7075, metadata !DIExpression()), !dbg !7081
  store ptr %dev_name, ptr %dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_name.addr, metadata !7076, metadata !DIExpression()), !dbg !7082
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7077, metadata !DIExpression()), !dbg !7083
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !7084
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7078, metadata !DIExpression()), !dbg !7085
  %0 = load ptr, ptr @mnt, align 8, !dbg !7086
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1, !dbg !7087
  %1 = load ptr, ptr %mnt_sb, align 8, !dbg !7087
  store ptr %1, ptr %s, align 8, !dbg !7085
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7088
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7079, metadata !DIExpression()), !dbg !7089
  %2 = load ptr, ptr %s, align 8, !dbg !7090
  %s_active = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 16, !dbg !7091
  call void @atomic_inc(ptr noundef %s_active) #13, !dbg !7092
  %3 = load ptr, ptr %s, align 8, !dbg !7093
  %s_umount = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 14, !dbg !7094
  call void @down_write(ptr noundef %s_umount) #13, !dbg !7095
  %4 = load ptr, ptr %s, align 8, !dbg !7096
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7097
  %6 = load ptr, ptr %data.addr, align 8, !dbg !7098
  %call = call i32 @reconfigure_single(ptr noundef %4, i32 noundef %5, ptr noundef %6) #13, !dbg !7099
  store i32 %call, ptr %err, align 4, !dbg !7100
  %7 = load i32, ptr %err, align 4, !dbg !7101
  %cmp = icmp slt i32 %7, 0, !dbg !7103
  br i1 %cmp, label %if.then, label %if.end, !dbg !7104

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %s, align 8, !dbg !7105
  call void @deactivate_locked_super(ptr noundef %8) #13, !dbg !7107
  %9 = load i32, ptr %err, align 4, !dbg !7108
  %conv = sext i32 %9 to i64, !dbg !7108
  %call1 = call ptr @ERR_PTR(i64 noundef %conv) #13, !dbg !7109
  store ptr %call1, ptr %retval, align 8, !dbg !7110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7110

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %s, align 8, !dbg !7111
  %s_root = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 13, !dbg !7112
  %11 = load ptr, ptr %s_root, align 8, !dbg !7112
  %call2 = call ptr @dget(ptr noundef %11) #13, !dbg !7113
  store ptr %call2, ptr %retval, align 8, !dbg !7114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7114

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7115
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !7115
  %12 = load ptr, ptr %retval, align 8, !dbg !7115
  ret ptr %12, !dbg !7115
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #9 align 16 !dbg !7116 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7122, metadata !DIExpression()), !dbg !7123
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7124
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !7125
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7126
  call void @raw_atomic_inc(ptr noundef %1) #13, !dbg !7127
  ret void, !dbg !7128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7129 dso_local void @down_write(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7133 dso_local i32 @reconfigure_single(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7136 dso_local void @deactivate_locked_super(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !7137 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7141, metadata !DIExpression()), !dbg !7142
  %0 = load i64, ptr %error.addr, align 8, !dbg !7143
  %1 = inttoptr i64 %0 to ptr, !dbg !7144
  ret ptr %1, !dbg !7145
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #6 align 16 !dbg !7146 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7150, metadata !DIExpression()), !dbg !7151
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7152
  %tobool = icmp ne ptr %0, null, !dbg !7152
  br i1 %tobool, label %if.then, label %if.end, !dbg !7154

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !7155
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !7156
  call void @lockref_get(ptr noundef %d_lockref) #13, !dbg !7157
  br label %if.end, !dbg !7157

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !7158
  ret ptr %2, !dbg !7159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7160 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7168, metadata !DIExpression()), !dbg !7170
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7169, metadata !DIExpression()), !dbg !7171
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7172
  %1 = load i64, ptr %size.addr, align 8, !dbg !7173
  %conv = trunc i64 %1 to i32, !dbg !7173
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !7174
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7175
  %3 = load i64, ptr %size.addr, align 8, !dbg !7175
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !7175
  ret void, !dbg !7176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #9 align 16 !dbg !7177 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7180, metadata !DIExpression()), !dbg !7181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7182
  call void @arch_atomic_inc(ptr noundef %0) #13, !dbg !7183
  ret void, !dbg !7184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7185 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7190, metadata !DIExpression()), !dbg !7192
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7191, metadata !DIExpression()), !dbg !7193
  ret i1 true, !dbg !7194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7195 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7200, metadata !DIExpression()), !dbg !7203
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7201, metadata !DIExpression()), !dbg !7204
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7202, metadata !DIExpression()), !dbg !7205
  ret void, !dbg !7206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #9 align 16 !dbg !7207 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7210, metadata !DIExpression()), !dbg !7211
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7212
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7213
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #14, !dbg !7214, !srcloc !7215
  ret void, !dbg !7216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7217 dso_local void @lockref_get(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @devtmpfs_setup(ptr noundef %p) #11 section ".init.text" align 16 !dbg !7221 {
entry:
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7223, metadata !DIExpression()), !dbg !7226
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7227
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7224, metadata !DIExpression()), !dbg !7228
  %call = call i32 @ksys_unshare(i64 noundef 131072) #13, !dbg !7229
  store i32 %call, ptr %err, align 4, !dbg !7230
  %0 = load i32, ptr %err, align 4, !dbg !7231
  %tobool = icmp ne i32 %0, 0, !dbg !7231
  br i1 %tobool, label %if.then, label %if.end, !dbg !7233

if.then:                                          ; preds = %entry
  br label %out, !dbg !7234

if.end:                                           ; preds = %entry
  %call1 = call i32 @init_mount(ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str, i64 noundef 32768, ptr noundef null) #15, !dbg !7235
  store i32 %call1, ptr %err, align 4, !dbg !7236
  %1 = load i32, ptr %err, align 4, !dbg !7237
  %tobool2 = icmp ne i32 %1, 0, !dbg !7237
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7239

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !7240

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @init_chdir(ptr noundef @.str.11) #15, !dbg !7241
  %call6 = call i32 @init_chroot(ptr noundef @.str.12) #15, !dbg !7242
  br label %out, !dbg !7242

out:                                              ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !7225), !dbg !7243
  %2 = load i32, ptr %err, align 4, !dbg !7244
  %3 = load ptr, ptr %p.addr, align 8, !dbg !7245
  store i32 %2, ptr %3, align 4, !dbg !7246
  %4 = load i32, ptr %err, align 4, !dbg !7247
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7248
  ret i32 %4, !dbg !7249
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7250 dso_local void @complete(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong
define internal void @devtmpfs_work_loop() #12 align 16 !dbg !7251 {
entry:
  %req = alloca ptr, align 8
  %next = alloca ptr, align 8
  br label %while.body, !dbg !7258

while.body:                                       ; preds = %entry, %do.end17
  call void @spin_lock(ptr noundef @req_lock) #13, !dbg !7259
  br label %while.cond1, !dbg !7260

while.cond1:                                      ; preds = %while.end, %while.body
  %0 = load ptr, ptr @requests, align 8, !dbg !7261
  %tobool = icmp ne ptr %0, null, !dbg !7260
  br i1 %tobool, label %while.body2, label %while.end8, !dbg !7260

while.body2:                                      ; preds = %while.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #14, !dbg !7262
  call void @llvm.dbg.declare(metadata ptr %req, metadata !7253, metadata !DIExpression()), !dbg !7263
  %1 = load ptr, ptr @requests, align 8, !dbg !7264
  store ptr %1, ptr %req, align 8, !dbg !7263
  store ptr null, ptr @requests, align 8, !dbg !7265
  call void @spin_unlock(ptr noundef @req_lock) #13, !dbg !7266
  br label %while.cond3, !dbg !7267

while.cond3:                                      ; preds = %while.body5, %while.body2
  %2 = load ptr, ptr %req, align 8, !dbg !7268
  %tobool4 = icmp ne ptr %2, null, !dbg !7267
  br i1 %tobool4, label %while.body5, label %while.end, !dbg !7267

while.body5:                                      ; preds = %while.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #14, !dbg !7269
  call void @llvm.dbg.declare(metadata ptr %next, metadata !7256, metadata !DIExpression()), !dbg !7270
  %3 = load ptr, ptr %req, align 8, !dbg !7271
  %next6 = getelementptr inbounds %struct.req, ptr %3, i32 0, i32 0, !dbg !7272
  %4 = load ptr, ptr %next6, align 8, !dbg !7272
  store ptr %4, ptr %next, align 8, !dbg !7270
  %5 = load ptr, ptr %req, align 8, !dbg !7273
  %name = getelementptr inbounds %struct.req, ptr %5, i32 0, i32 3, !dbg !7274
  %6 = load ptr, ptr %name, align 8, !dbg !7274
  %7 = load ptr, ptr %req, align 8, !dbg !7275
  %mode = getelementptr inbounds %struct.req, ptr %7, i32 0, i32 4, !dbg !7276
  %8 = load i16, ptr %mode, align 8, !dbg !7276
  %9 = load ptr, ptr %req, align 8, !dbg !7277
  %uid = getelementptr inbounds %struct.req, ptr %9, i32 0, i32 5, !dbg !7278
  %10 = load ptr, ptr %req, align 8, !dbg !7279
  %gid = getelementptr inbounds %struct.req, ptr %10, i32 0, i32 6, !dbg !7280
  %11 = load ptr, ptr %req, align 8, !dbg !7281
  %dev = getelementptr inbounds %struct.req, ptr %11, i32 0, i32 7, !dbg !7282
  %12 = load ptr, ptr %dev, align 8, !dbg !7282
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7283
  %13 = load i32, ptr %coerce.dive, align 4, !dbg !7283
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7283
  %14 = load i32, ptr %coerce.dive7, align 8, !dbg !7283
  %call = call i32 @handle(ptr noundef %6, i16 noundef zeroext %8, i32 %13, i32 %14, ptr noundef %12) #13, !dbg !7283
  %15 = load ptr, ptr %req, align 8, !dbg !7284
  %err = getelementptr inbounds %struct.req, ptr %15, i32 0, i32 2, !dbg !7285
  store i32 %call, ptr %err, align 8, !dbg !7286
  %16 = load ptr, ptr %req, align 8, !dbg !7287
  %done = getelementptr inbounds %struct.req, ptr %16, i32 0, i32 1, !dbg !7288
  call void @complete(ptr noundef %done) #13, !dbg !7289
  %17 = load ptr, ptr %next, align 8, !dbg !7290
  store ptr %17, ptr %req, align 8, !dbg !7291
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #14, !dbg !7292
  br label %while.cond3, !dbg !7267, !llvm.loop !7293

while.end:                                        ; preds = %while.cond3
  call void @spin_lock(ptr noundef @req_lock) #13, !dbg !7296
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #14, !dbg !7297
  br label %while.cond1, !dbg !7260, !llvm.loop !7298

while.end8:                                       ; preds = %while.cond1
  br label %do.body, !dbg !7299

do.body:                                          ; preds = %while.end8
  br label %do.body9, !dbg !7300

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !7302

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !7300

do.body10:                                        ; preds = %do.end
  br label %do.body11, !dbg !7304

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !7306

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !7304

do.body13:                                        ; preds = %do.end12
  %call14 = call ptr @get_current() #13, !dbg !7308
  %__state = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 1, !dbg !7308
  store volatile i32 1, ptr %__state, align 8, !dbg !7308
  br label %do.end15, !dbg !7308

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !7304

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !7300

do.end17:                                         ; preds = %do.end16
  call void @spin_unlock(ptr noundef @req_lock) #13, !dbg !7310
  call void @schedule() #13, !dbg !7311
  br label %while.body, !dbg !7258, !llvm.loop !7312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7314 dso_local i32 @ksys_unshare(i64 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7317 dso_local i32 @init_chdir(ptr noundef) #7 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7320 dso_local i32 @init_chroot(ptr noundef) #7 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle(ptr noundef %name, i16 noundef zeroext %mode, i32 %uid.coerce, i32 %gid.coerce, ptr noundef %dev) #1 align 16 !dbg !7321 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7325, metadata !DIExpression()), !dbg !7330
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7326, metadata !DIExpression()), !dbg !7331
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7327, metadata !DIExpression()), !dbg !7332
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7328, metadata !DIExpression()), !dbg !7333
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7329, metadata !DIExpression()), !dbg !7334
  %0 = load i16, ptr %mode.addr, align 2, !dbg !7335
  %tobool = icmp ne i16 %0, 0, !dbg !7335
  br i1 %tobool, label %if.then, label %if.else, !dbg !7337

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !7338
  %2 = load i16, ptr %mode.addr, align 2, !dbg !7339
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7340
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !7341
  %4 = load i32, ptr %coerce.dive2, align 4, !dbg !7341
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !7341
  %5 = load i32, ptr %coerce.dive3, align 4, !dbg !7341
  %call = call i32 @handle_create(ptr noundef %1, i16 noundef zeroext %2, i32 %4, i32 %5, ptr noundef %3) #13, !dbg !7341
  store i32 %call, ptr %retval, align 4, !dbg !7342
  br label %return, !dbg !7342

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %name.addr, align 8, !dbg !7343
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !7344
  %call4 = call i32 @handle_remove(ptr noundef %6, ptr noundef %7) #13, !dbg !7345
  store i32 %call4, ptr %retval, align 4, !dbg !7346
  br label %return, !dbg !7346

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !7347
  ret i32 %8, !dbg !7347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #9 align 16 !dbg !7348 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !7359
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7353, metadata !DIExpression()), !dbg !7359
  br label %do.body, !dbg !7359

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !7360
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7355, metadata !DIExpression()), !dbg !7360
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7360
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !7359
  br label %do.cond, !dbg !7360

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7360

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !7361
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7357, metadata !DIExpression()), !dbg !7361
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !7361, !srcloc !7362
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7361
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7361
  %3 = inttoptr i64 %2 to ptr, !dbg !7361
  store ptr %3, ptr %tmp, align 8, !dbg !7361
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !7359
  %4 = load ptr, ptr %tmp, align 8, !dbg !7361
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7359
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7359
  store ptr %5, ptr %tmp1, align 8, !dbg !7359
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !7363
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7359
  ret ptr %6, !dbg !7364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7365 dso_local void @schedule() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_create(ptr noundef %nodename, i16 noundef zeroext %mode, i32 %uid.coerce, i32 %gid.coerce, ptr noundef %dev) #1 align 16 !dbg !7366 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %nodename.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dev.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %newattrs = alloca %struct.iattr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %nodename, ptr %nodename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodename.addr, metadata !7368, metadata !DIExpression()), !dbg !7379
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7369, metadata !DIExpression()), !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !7370, metadata !DIExpression()), !dbg !7381
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !7371, metadata !DIExpression()), !dbg !7382
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7372, metadata !DIExpression()), !dbg !7383
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !7384
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !7373, metadata !DIExpression()), !dbg !7385
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #14, !dbg !7386
  call void @llvm.dbg.declare(metadata ptr %path, metadata !7374, metadata !DIExpression()), !dbg !7387
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7388
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7375, metadata !DIExpression()), !dbg !7389
  %0 = load ptr, ptr %nodename.addr, align 8, !dbg !7390
  %call = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef %path, i32 noundef 0) #13, !dbg !7391
  store ptr %call, ptr %dentry, align 8, !dbg !7392
  %1 = load ptr, ptr %dentry, align 8, !dbg !7393
  %call2 = call ptr @ERR_PTR(i64 noundef -2) #13, !dbg !7395
  %cmp = icmp eq ptr %1, %call2, !dbg !7396
  br i1 %cmp, label %if.then, label %if.end, !dbg !7397

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %nodename.addr, align 8, !dbg !7398
  %call3 = call i32 @create_path(ptr noundef %2) #13, !dbg !7400
  %3 = load ptr, ptr %nodename.addr, align 8, !dbg !7401
  %call4 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %3, ptr noundef %path, i32 noundef 0) #13, !dbg !7402
  store ptr %call4, ptr %dentry, align 8, !dbg !7403
  br label %if.end, !dbg !7404

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %dentry, align 8, !dbg !7405
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %4) #13, !dbg !7407
  br i1 %call5, label %if.then6, label %if.end8, !dbg !7408

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %dentry, align 8, !dbg !7409
  %call7 = call i64 @PTR_ERR(ptr noundef %5) #13, !dbg !7410
  %conv = trunc i64 %call7 to i32, !dbg !7410
  store i32 %conv, ptr %retval, align 4, !dbg !7411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7411

if.end8:                                          ; preds = %if.end
  %dentry9 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !7412
  %6 = load ptr, ptr %dentry9, align 8, !dbg !7412
  %call10 = call ptr @d_inode(ptr noundef %6) #13, !dbg !7413
  %7 = load ptr, ptr %dentry, align 8, !dbg !7414
  %8 = load i16, ptr %mode.addr, align 2, !dbg !7415
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7416
  %devt = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 26, !dbg !7417
  %10 = load i32, ptr %devt, align 4, !dbg !7417
  %call11 = call i32 @vfs_mknod(ptr noundef @nop_mnt_idmap, ptr noundef %call10, ptr noundef %7, i16 noundef zeroext %8, i32 noundef %10) #13, !dbg !7418
  store i32 %call11, ptr %err, align 4, !dbg !7419
  %11 = load i32, ptr %err, align 4, !dbg !7420
  %tobool = icmp ne i32 %11, 0, !dbg !7420
  br i1 %tobool, label %if.end17, label %if.then12, !dbg !7421

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 80, ptr %newattrs) #14, !dbg !7422
  call void @llvm.dbg.declare(metadata ptr %newattrs, metadata !7376, metadata !DIExpression()), !dbg !7423
  %12 = load i16, ptr %mode.addr, align 2, !dbg !7424
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1, !dbg !7425
  store i16 %12, ptr %ia_mode, align 4, !dbg !7426
  %13 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2, !dbg !7427
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 4 %uid, i64 4, i1 false), !dbg !7428
  %14 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3, !dbg !7429
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %gid, i64 4, i1 false), !dbg !7430
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 0, !dbg !7431
  store i32 7, ptr %ia_valid, align 8, !dbg !7432
  %15 = load ptr, ptr %dentry, align 8, !dbg !7433
  %call13 = call ptr @d_inode(ptr noundef %15) #13, !dbg !7434
  call void @inode_lock(ptr noundef %call13) #13, !dbg !7435
  %16 = load ptr, ptr %dentry, align 8, !dbg !7436
  %call14 = call i32 @notify_change(ptr noundef @nop_mnt_idmap, ptr noundef %16, ptr noundef %newattrs, ptr noundef null) #13, !dbg !7437
  %17 = load ptr, ptr %dentry, align 8, !dbg !7438
  %call15 = call ptr @d_inode(ptr noundef %17) #13, !dbg !7439
  call void @inode_unlock(ptr noundef %call15) #13, !dbg !7440
  %18 = load ptr, ptr %dentry, align 8, !dbg !7441
  %call16 = call ptr @d_inode(ptr noundef %18) #13, !dbg !7442
  %i_private = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 47, !dbg !7443
  store ptr @thread, ptr %i_private, align 8, !dbg !7444
  call void @llvm.lifetime.end.p0(i64 80, ptr %newattrs) #14, !dbg !7445
  br label %if.end17, !dbg !7446

if.end17:                                         ; preds = %if.then12, %if.end8
  %19 = load ptr, ptr %dentry, align 8, !dbg !7447
  call void @done_path_create(ptr noundef %path, ptr noundef %19) #13, !dbg !7448
  %20 = load i32, ptr %err, align 4, !dbg !7449
  store i32 %20, ptr %retval, align 4, !dbg !7450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7450

cleanup:                                          ; preds = %if.end17, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7451
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #14, !dbg !7451
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !7451
  %21 = load i32, ptr %retval, align 4, !dbg !7451
  ret i32 %21, !dbg !7451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_remove(ptr noundef %nodename, ptr noundef %dev) #1 align 16 !dbg !7452 {
entry:
  %retval = alloca i32, align 4
  %nodename.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %parent = alloca %struct.path, align 8
  %dentry = alloca ptr, align 8
  %deleted = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %stat = alloca %struct.kstat, align 8
  %p = alloca %struct.path, align 8
  %newattrs = alloca %struct.iattr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral12 = alloca %struct.kgid_t, align 4
  store ptr %nodename, ptr %nodename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodename.addr, metadata !7456, metadata !DIExpression()), !dbg !7469
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7457, metadata !DIExpression()), !dbg !7470
  call void @llvm.lifetime.start.p0(i64 16, ptr %parent) #14, !dbg !7471
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !7458, metadata !DIExpression()), !dbg !7472
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !7473
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !7459, metadata !DIExpression()), !dbg !7474
  call void @llvm.lifetime.start.p0(i64 4, ptr %deleted) #14, !dbg !7475
  call void @llvm.dbg.declare(metadata ptr %deleted, metadata !7460, metadata !DIExpression()), !dbg !7476
  store i32 0, ptr %deleted, align 4, !dbg !7476
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7477
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7461, metadata !DIExpression()), !dbg !7478
  %0 = load ptr, ptr %nodename.addr, align 8, !dbg !7479
  %call = call ptr @kern_path_locked(ptr noundef %0, ptr noundef %parent) #13, !dbg !7480
  store ptr %call, ptr %dentry, align 8, !dbg !7481
  %1 = load ptr, ptr %dentry, align 8, !dbg !7482
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #13, !dbg !7484
  br i1 %call1, label %if.then, label %if.end, !dbg !7485

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !7486
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #13, !dbg !7487
  %conv = trunc i64 %call2 to i32, !dbg !7487
  store i32 %conv, ptr %retval, align 4, !dbg !7488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7488

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !7489
  %call3 = call zeroext i1 @d_really_is_positive(ptr noundef %3) #13, !dbg !7490
  br i1 %call3, label %if.then4, label %if.else, !dbg !7491

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 160, ptr %stat) #14, !dbg !7492
  call void @llvm.dbg.declare(metadata ptr %stat, metadata !7462, metadata !DIExpression()), !dbg !7493
  call void @llvm.lifetime.start.p0(i64 16, ptr %p) #14, !dbg !7494
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7465, metadata !DIExpression()), !dbg !7495
  %mnt = getelementptr inbounds %struct.path, ptr %p, i32 0, i32 0, !dbg !7496
  %mnt5 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 0, !dbg !7497
  %4 = load ptr, ptr %mnt5, align 8, !dbg !7497
  store ptr %4, ptr %mnt, align 8, !dbg !7496
  %dentry6 = getelementptr inbounds %struct.path, ptr %p, i32 0, i32 1, !dbg !7496
  %5 = load ptr, ptr %dentry, align 8, !dbg !7498
  store ptr %5, ptr %dentry6, align 8, !dbg !7496
  %call7 = call i32 @vfs_getattr(ptr noundef %p, ptr noundef %stat, i32 noundef 3, i32 noundef 0) #13, !dbg !7499
  store i32 %call7, ptr %err, align 4, !dbg !7500
  %6 = load i32, ptr %err, align 4, !dbg !7501
  %tobool = icmp ne i32 %6, 0, !dbg !7501
  br i1 %tobool, label %if.end26, label %land.lhs.true, !dbg !7502

land.lhs.true:                                    ; preds = %if.then4
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !7503
  %8 = load ptr, ptr %dentry, align 8, !dbg !7504
  %call8 = call ptr @d_inode(ptr noundef %8) #13, !dbg !7505
  %call9 = call i32 @dev_mynode(ptr noundef %7, ptr noundef %call8, ptr noundef %stat) #13, !dbg !7506
  %tobool10 = icmp ne i32 %call9, 0, !dbg !7506
  br i1 %tobool10, label %if.then11, label %if.end26, !dbg !7507

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 80, ptr %newattrs) #14, !dbg !7508
  call void @llvm.dbg.declare(metadata ptr %newattrs, metadata !7466, metadata !DIExpression()), !dbg !7509
  %9 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2, !dbg !7510
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !7511
  store i32 0, ptr %val, align 4, !dbg !7511
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !7511
  %10 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3, !dbg !7512
  %val13 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral12, i32 0, i32 0, !dbg !7513
  store i32 0, ptr %val13, align 4, !dbg !7513
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %.compoundliteral12, i64 4, i1 false), !dbg !7513
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1, !dbg !7514
  %11 = load i16, ptr %mode, align 4, !dbg !7514
  %conv14 = zext i16 %11 to i32, !dbg !7515
  %and = and i32 %conv14, -512, !dbg !7516
  %conv15 = trunc i32 %and to i16, !dbg !7515
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1, !dbg !7517
  store i16 %conv15, ptr %ia_mode, align 4, !dbg !7518
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 0, !dbg !7519
  store i32 7, ptr %ia_valid, align 8, !dbg !7520
  %12 = load ptr, ptr %dentry, align 8, !dbg !7521
  %call16 = call ptr @d_inode(ptr noundef %12) #13, !dbg !7522
  call void @inode_lock(ptr noundef %call16) #13, !dbg !7523
  %13 = load ptr, ptr %dentry, align 8, !dbg !7524
  %call17 = call i32 @notify_change(ptr noundef @nop_mnt_idmap, ptr noundef %13, ptr noundef %newattrs, ptr noundef null) #13, !dbg !7525
  %14 = load ptr, ptr %dentry, align 8, !dbg !7526
  %call18 = call ptr @d_inode(ptr noundef %14) #13, !dbg !7527
  call void @inode_unlock(ptr noundef %call18) #13, !dbg !7528
  %dentry19 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 1, !dbg !7529
  %15 = load ptr, ptr %dentry19, align 8, !dbg !7529
  %call20 = call ptr @d_inode(ptr noundef %15) #13, !dbg !7530
  %16 = load ptr, ptr %dentry, align 8, !dbg !7531
  %call21 = call i32 @vfs_unlink(ptr noundef @nop_mnt_idmap, ptr noundef %call20, ptr noundef %16, ptr noundef null) #13, !dbg !7532
  store i32 %call21, ptr %err, align 4, !dbg !7533
  %17 = load i32, ptr %err, align 4, !dbg !7534
  %tobool22 = icmp ne i32 %17, 0, !dbg !7534
  br i1 %tobool22, label %lor.lhs.false, label %if.then24, !dbg !7536

lor.lhs.false:                                    ; preds = %if.then11
  %18 = load i32, ptr %err, align 4, !dbg !7537
  %cmp = icmp eq i32 %18, -2, !dbg !7538
  br i1 %cmp, label %if.then24, label %if.end25, !dbg !7539

if.then24:                                        ; preds = %lor.lhs.false, %if.then11
  store i32 1, ptr %deleted, align 4, !dbg !7540
  br label %if.end25, !dbg !7541

if.end25:                                         ; preds = %if.then24, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 80, ptr %newattrs) #14, !dbg !7542
  br label %if.end26, !dbg !7543

if.end26:                                         ; preds = %if.end25, %land.lhs.true, %if.then4
  call void @llvm.lifetime.end.p0(i64 16, ptr %p) #14, !dbg !7544
  call void @llvm.lifetime.end.p0(i64 160, ptr %stat) #14, !dbg !7544
  br label %if.end27, !dbg !7545

if.else:                                          ; preds = %if.end
  store i32 -2, ptr %err, align 4, !dbg !7546
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end26
  %19 = load ptr, ptr %dentry, align 8, !dbg !7548
  call void @dput(ptr noundef %19) #13, !dbg !7549
  %dentry28 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 1, !dbg !7550
  %20 = load ptr, ptr %dentry28, align 8, !dbg !7550
  %call29 = call ptr @d_inode(ptr noundef %20) #13, !dbg !7551
  call void @inode_unlock(ptr noundef %call29) #13, !dbg !7552
  call void @path_put(ptr noundef %parent) #13, !dbg !7553
  %21 = load i32, ptr %deleted, align 4, !dbg !7554
  %tobool30 = icmp ne i32 %21, 0, !dbg !7554
  br i1 %tobool30, label %land.lhs.true31, label %if.end36, !dbg !7556

land.lhs.true31:                                  ; preds = %if.end27
  %22 = load ptr, ptr %nodename.addr, align 8, !dbg !7557
  %call32 = call ptr @strchr(ptr noundef %22, i32 noundef 47) #13, !dbg !7558
  %tobool33 = icmp ne ptr %call32, null, !dbg !7558
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !7559

if.then34:                                        ; preds = %land.lhs.true31
  %23 = load ptr, ptr %nodename.addr, align 8, !dbg !7560
  %call35 = call i32 @delete_path(ptr noundef %23) #13, !dbg !7561
  br label %if.end36, !dbg !7561

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %if.end27
  %24 = load i32, ptr %err, align 4, !dbg !7562
  store i32 %24, ptr %retval, align 4, !dbg !7563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7563

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7564
  call void @llvm.lifetime.end.p0(i64 4, ptr %deleted) #14, !dbg !7564
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !7564
  call void @llvm.lifetime.end.p0(i64 16, ptr %parent) #14, !dbg !7564
  %25 = load i32, ptr %retval, align 4, !dbg !7564
  ret i32 %25, !dbg !7564
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7565 dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_path(ptr noundef %nodepath) #1 align 16 !dbg !7569 {
entry:
  %retval = alloca i32, align 4
  %nodepath.addr = alloca ptr, align 8
  %path = alloca ptr, align 8
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nodepath, ptr %nodepath.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodepath.addr, metadata !7571, metadata !DIExpression()), !dbg !7575
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #14, !dbg !7576
  call void @llvm.dbg.declare(metadata ptr %path, metadata !7572, metadata !DIExpression()), !dbg !7577
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !7578
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7573, metadata !DIExpression()), !dbg !7579
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7580
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7574, metadata !DIExpression()), !dbg !7581
  store i32 0, ptr %err, align 4, !dbg !7581
  %0 = load ptr, ptr %nodepath.addr, align 8, !dbg !7582
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #13, !dbg !7583
  store ptr %call, ptr %path, align 8, !dbg !7584
  %1 = load ptr, ptr %path, align 8, !dbg !7585
  %tobool = icmp ne ptr %1, null, !dbg !7585
  br i1 %tobool, label %if.end, label %if.then, !dbg !7587

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !7588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7588

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %path, align 8, !dbg !7589
  store ptr %2, ptr %s, align 8, !dbg !7590
  br label %for.cond, !dbg !7591

for.cond:                                         ; preds = %if.end8, %if.end
  %3 = load ptr, ptr %s, align 8, !dbg !7592
  %call1 = call ptr @strchr(ptr noundef %3, i32 noundef 47) #13, !dbg !7596
  store ptr %call1, ptr %s, align 8, !dbg !7597
  %4 = load ptr, ptr %s, align 8, !dbg !7598
  %tobool2 = icmp ne ptr %4, null, !dbg !7598
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !7600

if.then3:                                         ; preds = %for.cond
  br label %for.end, !dbg !7601

if.end4:                                          ; preds = %for.cond
  %5 = load ptr, ptr %s, align 8, !dbg !7602
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !7602
  store i8 0, ptr %arrayidx, align 1, !dbg !7603
  %6 = load ptr, ptr %path, align 8, !dbg !7604
  %call5 = call i32 @dev_mkdir(ptr noundef %6, i16 noundef zeroext 493) #13, !dbg !7605
  store i32 %call5, ptr %err, align 4, !dbg !7606
  %7 = load i32, ptr %err, align 4, !dbg !7607
  %tobool6 = icmp ne i32 %7, 0, !dbg !7607
  br i1 %tobool6, label %land.lhs.true, label %if.end8, !dbg !7609

land.lhs.true:                                    ; preds = %if.end4
  %8 = load i32, ptr %err, align 4, !dbg !7610
  %cmp = icmp ne i32 %8, -17, !dbg !7611
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !7612

if.then7:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !7613

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  %9 = load ptr, ptr %s, align 8, !dbg !7614
  %arrayidx9 = getelementptr i8, ptr %9, i64 0, !dbg !7614
  store i8 47, ptr %arrayidx9, align 1, !dbg !7615
  %10 = load ptr, ptr %s, align 8, !dbg !7616
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !7616
  store ptr %incdec.ptr, ptr %s, align 8, !dbg !7616
  br label %for.cond, !dbg !7617, !llvm.loop !7618

for.end:                                          ; preds = %if.then7, %if.then3
  %11 = load ptr, ptr %path, align 8, !dbg !7621
  call void @kfree(ptr noundef %11) #13, !dbg !7622
  %12 = load i32, ptr %err, align 4, !dbg !7623
  store i32 %12, ptr %retval, align 4, !dbg !7624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7624

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7625
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !7625
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #14, !dbg !7625
  %13 = load i32, ptr %retval, align 4, !dbg !7625
  ret i32 %13, !dbg !7625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7626 dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #6 align 16 !dbg !7627 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7631, metadata !DIExpression()), !dbg !7632
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7633
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !7634
  %1 = load ptr, ptr %d_inode, align 8, !dbg !7634
  ret ptr %1, !dbg !7635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #6 align 16 !dbg !7636 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7638, metadata !DIExpression()), !dbg !7639
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7640
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !7641
  call void @down_write(ptr noundef %i_rwsem) #13, !dbg !7642
  ret void, !dbg !7643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7644 dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #6 align 16 !dbg !7648 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7650, metadata !DIExpression()), !dbg !7651
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7652
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !7653
  call void @up_write(ptr noundef %i_rwsem) #13, !dbg !7654
  ret void, !dbg !7655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7656 dso_local void @done_path_create(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7659 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7663 dso_local ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_mkdir(ptr noundef %name, i16 noundef zeroext %mode) #1 align 16 !dbg !7666 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %dentry = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7670, metadata !DIExpression()), !dbg !7675
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !7671, metadata !DIExpression()), !dbg !7676
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !7677
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !7672, metadata !DIExpression()), !dbg !7678
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #14, !dbg !7679
  call void @llvm.dbg.declare(metadata ptr %path, metadata !7673, metadata !DIExpression()), !dbg !7680
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7681
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7674, metadata !DIExpression()), !dbg !7682
  %0 = load ptr, ptr %name.addr, align 8, !dbg !7683
  %call = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef %path, i32 noundef 2) #13, !dbg !7684
  store ptr %call, ptr %dentry, align 8, !dbg !7685
  %1 = load ptr, ptr %dentry, align 8, !dbg !7686
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #13, !dbg !7688
  br i1 %call1, label %if.then, label %if.end, !dbg !7689

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !7690
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #13, !dbg !7691
  %conv = trunc i64 %call2 to i32, !dbg !7691
  store i32 %conv, ptr %retval, align 4, !dbg !7692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7692

if.end:                                           ; preds = %entry
  %dentry3 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !7693
  %3 = load ptr, ptr %dentry3, align 8, !dbg !7693
  %call4 = call ptr @d_inode(ptr noundef %3) #13, !dbg !7694
  %4 = load ptr, ptr %dentry, align 8, !dbg !7695
  %5 = load i16, ptr %mode.addr, align 2, !dbg !7696
  %call5 = call i32 @vfs_mkdir(ptr noundef @nop_mnt_idmap, ptr noundef %call4, ptr noundef %4, i16 noundef zeroext %5) #13, !dbg !7697
  store i32 %call5, ptr %err, align 4, !dbg !7698
  %6 = load i32, ptr %err, align 4, !dbg !7699
  %tobool = icmp ne i32 %6, 0, !dbg !7699
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !7701

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %dentry, align 8, !dbg !7702
  %call7 = call ptr @d_inode(ptr noundef %7) #13, !dbg !7703
  %i_private = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 47, !dbg !7704
  store ptr @thread, ptr %i_private, align 8, !dbg !7705
  br label %if.end8, !dbg !7703

if.end8:                                          ; preds = %if.then6, %if.end
  %8 = load ptr, ptr %dentry, align 8, !dbg !7706
  call void @done_path_create(ptr noundef %path, ptr noundef %8) #13, !dbg !7707
  %9 = load i32, ptr %err, align 4, !dbg !7708
  store i32 %9, ptr %retval, align 4, !dbg !7709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7709

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7710
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #14, !dbg !7710
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !7710
  %10 = load i32, ptr %retval, align 4, !dbg !7710
  ret i32 %10, !dbg !7710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7711 dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7712 dso_local void @up_write(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7713 dso_local ptr @kern_path_locked(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_positive(ptr noundef %dentry) #6 align 16 !dbg !7716 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7720, metadata !DIExpression()), !dbg !7721
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !7722
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !7723
  %1 = load ptr, ptr %d_inode, align 8, !dbg !7723
  %cmp = icmp ne ptr %1, null, !dbg !7724
  ret i1 %cmp, !dbg !7725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7726 dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_mynode(ptr noundef %dev, ptr noundef %inode, ptr noundef %stat) #1 align 16 !dbg !7729 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7733, metadata !DIExpression()), !dbg !7736
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7734, metadata !DIExpression()), !dbg !7737
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !7735, metadata !DIExpression()), !dbg !7738
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !7739
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !7741
  %1 = load ptr, ptr %i_private, align 8, !dbg !7741
  %cmp = icmp ne ptr %1, @thread, !dbg !7742
  br i1 %cmp, label %if.then, label %if.end, !dbg !7743

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7744
  br label %return, !dbg !7744

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7745
  %call = call zeroext i1 @is_blockdev(ptr noundef %2) #13, !dbg !7747
  br i1 %call, label %if.then1, label %if.else, !dbg !7748

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %stat.addr, align 8, !dbg !7749
  %mode = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 1, !dbg !7749
  %4 = load i16, ptr %mode, align 4, !dbg !7749
  %conv = zext i16 %4 to i32, !dbg !7749
  %and = and i32 %conv, 61440, !dbg !7749
  %cmp2 = icmp eq i32 %and, 24576, !dbg !7749
  br i1 %cmp2, label %if.end5, label %if.then4, !dbg !7752

if.then4:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4, !dbg !7753
  br label %return, !dbg !7753

if.end5:                                          ; preds = %if.then1
  br label %if.end13, !dbg !7754

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %stat.addr, align 8, !dbg !7755
  %mode6 = getelementptr inbounds %struct.kstat, ptr %5, i32 0, i32 1, !dbg !7755
  %6 = load i16, ptr %mode6, align 4, !dbg !7755
  %conv7 = zext i16 %6 to i32, !dbg !7755
  %and8 = and i32 %conv7, 61440, !dbg !7755
  %cmp9 = icmp eq i32 %and8, 8192, !dbg !7755
  br i1 %cmp9, label %if.end12, label %if.then11, !dbg !7758

if.then11:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !7759
  br label %return, !dbg !7759

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5
  %7 = load ptr, ptr %stat.addr, align 8, !dbg !7760
  %rdev = getelementptr inbounds %struct.kstat, ptr %7, i32 0, i32 8, !dbg !7762
  %8 = load i32, ptr %rdev, align 4, !dbg !7762
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !7763
  %devt = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 26, !dbg !7764
  %10 = load i32, ptr %devt, align 4, !dbg !7764
  %cmp14 = icmp ne i32 %8, %10, !dbg !7765
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !7766

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !7767
  br label %return, !dbg !7767

if.end17:                                         ; preds = %if.end13
  store i32 1, ptr %retval, align 4, !dbg !7768
  br label %return, !dbg !7768

return:                                           ; preds = %if.end17, %if.then16, %if.then11, %if.then4, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !7769
  ret i32 %11, !dbg !7769
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7770 dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7773 dso_local void @dput(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7774 dso_local void @path_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @delete_path(ptr noundef %nodepath) #1 align 16 !dbg !7777 {
entry:
  %retval = alloca i32, align 4
  %nodepath.addr = alloca ptr, align 8
  %path = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %base = alloca ptr, align 8
  store ptr %nodepath, ptr %nodepath.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodepath.addr, metadata !7779, metadata !DIExpression()), !dbg !7786
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #14, !dbg !7787
  call void @llvm.dbg.declare(metadata ptr %path, metadata !7780, metadata !DIExpression()), !dbg !7788
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7789
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7781, metadata !DIExpression()), !dbg !7790
  store i32 0, ptr %err, align 4, !dbg !7790
  %0 = load ptr, ptr %nodepath.addr, align 8, !dbg !7791
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #13, !dbg !7792
  store ptr %call, ptr %path, align 8, !dbg !7793
  %1 = load ptr, ptr %path, align 8, !dbg !7794
  %tobool = icmp ne ptr %1, null, !dbg !7794
  br i1 %tobool, label %if.end, label %if.then, !dbg !7796

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !7797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !7797

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !7798

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !7799
  call void @llvm.dbg.declare(metadata ptr %base, metadata !7782, metadata !DIExpression()), !dbg !7800
  %2 = load ptr, ptr %path, align 8, !dbg !7801
  %call1 = call ptr @strrchr(ptr noundef %2, i32 noundef 47) #13, !dbg !7802
  store ptr %call1, ptr %base, align 8, !dbg !7803
  %3 = load ptr, ptr %base, align 8, !dbg !7804
  %tobool2 = icmp ne ptr %3, null, !dbg !7804
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !7806

if.then3:                                         ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7807

if.end4:                                          ; preds = %for.cond
  %4 = load ptr, ptr %base, align 8, !dbg !7808
  %arrayidx = getelementptr i8, ptr %4, i64 0, !dbg !7808
  store i8 0, ptr %arrayidx, align 1, !dbg !7809
  %5 = load ptr, ptr %path, align 8, !dbg !7810
  %call5 = call i32 @dev_rmdir(ptr noundef %5) #13, !dbg !7811
  store i32 %call5, ptr %err, align 4, !dbg !7812
  %6 = load i32, ptr %err, align 4, !dbg !7813
  %tobool6 = icmp ne i32 %6, 0, !dbg !7813
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !7815

if.then7:                                         ; preds = %if.end4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7816

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7817
  br label %cleanup, !dbg !7817

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !7817
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !7818, !llvm.loop !7819

for.end:                                          ; preds = %cleanup
  %7 = load ptr, ptr %path, align 8, !dbg !7822
  call void @kfree(ptr noundef %7) #13, !dbg !7823
  %8 = load i32, ptr %err, align 4, !dbg !7824
  store i32 %8, ptr %retval, align 4, !dbg !7825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !7825

cleanup9:                                         ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7826
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #14, !dbg !7826
  %9 = load i32, ptr %retval, align 4, !dbg !7826
  ret i32 %9, !dbg !7826

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7827 dso_local ptr @strrchr(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_rmdir(ptr noundef %name) #1 align 16 !dbg !7828 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %parent = alloca %struct.path, align 8
  %dentry = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7830, metadata !DIExpression()), !dbg !7834
  call void @llvm.lifetime.start.p0(i64 16, ptr %parent) #14, !dbg !7835
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !7831, metadata !DIExpression()), !dbg !7836
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !7837
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !7832, metadata !DIExpression()), !dbg !7838
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7839
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7833, metadata !DIExpression()), !dbg !7840
  %0 = load ptr, ptr %name.addr, align 8, !dbg !7841
  %call = call ptr @kern_path_locked(ptr noundef %0, ptr noundef %parent) #13, !dbg !7842
  store ptr %call, ptr %dentry, align 8, !dbg !7843
  %1 = load ptr, ptr %dentry, align 8, !dbg !7844
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #13, !dbg !7846
  br i1 %call1, label %if.then, label %if.end, !dbg !7847

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dentry, align 8, !dbg !7848
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #13, !dbg !7849
  %conv = trunc i64 %call2 to i32, !dbg !7849
  store i32 %conv, ptr %retval, align 4, !dbg !7850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7850

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry, align 8, !dbg !7851
  %call3 = call zeroext i1 @d_really_is_positive(ptr noundef %3) #13, !dbg !7853
  br i1 %call3, label %if.then4, label %if.else12, !dbg !7854

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %dentry, align 8, !dbg !7855
  %call5 = call ptr @d_inode(ptr noundef %4) #13, !dbg !7858
  %i_private = getelementptr inbounds %struct.inode, ptr %call5, i32 0, i32 47, !dbg !7859
  %5 = load ptr, ptr %i_private, align 8, !dbg !7859
  %cmp = icmp eq ptr %5, @thread, !dbg !7860
  br i1 %cmp, label %if.then7, label %if.else, !dbg !7861

if.then7:                                         ; preds = %if.then4
  %dentry8 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 1, !dbg !7862
  %6 = load ptr, ptr %dentry8, align 8, !dbg !7862
  %call9 = call ptr @d_inode(ptr noundef %6) #13, !dbg !7863
  %7 = load ptr, ptr %dentry, align 8, !dbg !7864
  %call10 = call i32 @vfs_rmdir(ptr noundef @nop_mnt_idmap, ptr noundef %call9, ptr noundef %7) #13, !dbg !7865
  store i32 %call10, ptr %err, align 4, !dbg !7866
  br label %if.end11, !dbg !7867

if.else:                                          ; preds = %if.then4
  store i32 -1, ptr %err, align 4, !dbg !7868
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  br label %if.end13, !dbg !7869

if.else12:                                        ; preds = %if.end
  store i32 -2, ptr %err, align 4, !dbg !7870
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end11
  %8 = load ptr, ptr %dentry, align 8, !dbg !7872
  call void @dput(ptr noundef %8) #13, !dbg !7873
  %dentry14 = getelementptr inbounds %struct.path, ptr %parent, i32 0, i32 1, !dbg !7874
  %9 = load ptr, ptr %dentry14, align 8, !dbg !7874
  %call15 = call ptr @d_inode(ptr noundef %9) #13, !dbg !7875
  call void @inode_unlock(ptr noundef %call15) #13, !dbg !7876
  call void @path_put(ptr noundef %parent) #13, !dbg !7877
  %10 = load i32, ptr %err, align 4, !dbg !7878
  store i32 %10, ptr %retval, align 4, !dbg !7879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7879

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7880
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !7880
  call void @llvm.lifetime.end.p0(i64 16, ptr %parent) #14, !dbg !7880
  %11 = load i32, ptr %retval, align 4, !dbg !7880
  ret i32 %11, !dbg !7880
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7881 dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { cold fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone }
attributes #16 = { noredzone noreturn }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6719, !6720, !6721, !6722, !6723, !6724, !6725, !6726}
!llvm.ident = !{!6727}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_mount_param", scope: !2, file: !3, line: 62, type: !6718, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.devtmpfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/devtmpfs\22 -D KBUILD_BASENAME=\22devtmpfs\22 -D KBUILD_MODNAME=\22devtmpfs\22 -D __KBUILD_MODNAME=kmod_devtmpfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/devtmpfs.ll drivers/base/devtmpfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !322, globals: !6622, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/devtmpfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35cbf23845767569bdafaf4f8516b519")
!4 = !{!5, !15, !20, !116, !122, !138, !146, !152, !159, !170, !176, !185, !193, !197, !202, !214, !221, !229, !234, !243, !248, !253, !259, !266, !272, !278, !285, !292, !301, !306, !311, !317}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !6, line: 51, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!10 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!11 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!12 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!13 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!14 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !16, line: 65, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!19 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !21, line: 147, baseType: !7, size: 32, elements: !113)
!21 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !21, line: 135, size: 512, elements: !23)
!23 = !{!24, !28, !30, !32, !36, !37, !53, !111, !112}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !22, file: !21, line: 136, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !21, line: 137, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !22, file: !21, line: 138, baseType: !31, size: 32, offset: 128)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !22, file: !21, line: 139, baseType: !33, size: 16, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !21, line: 150, baseType: !20, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !22, file: !21, line: 151, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !21, line: 64, baseType: !40)
!40 = !DISubroutineType(types: !41)
!41 = !{!31, !42, !31, !29, !43, !49}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !46, line: 72, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !46, line: 16, baseType: !48)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !34, line: 52, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !46, line: 88, baseType: !52)
!52 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !22, file: !21, line: 152, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !21, line: 117, size: 256, elements: !56)
!56 = !{!57, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !21, line: 118, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !34, line: 174, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 172, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !59, file: !34, line: 173, baseType: !31, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !55, file: !21, line: 119, baseType: !63, size: 192, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !64, line: 41, baseType: !65)
!64 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !64, line: 37, size: 192, elements: !66)
!66 = !{!67, !105}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !65, file: !64, line: 38, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !69, line: 17, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !69, line: 18, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !69, line: 18, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !73, file: !69, line: 19, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !77, line: 14, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !76, file: !77, line: 15, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !81, line: 44, baseType: !82)
!81 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !81, line: 14, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 15, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 15, size: 32, elements: !86)
!86 = !{!87, !88, !98}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !81, line: 16, baseType: !58, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 24, baseType: !89, size: 16)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 24, size: 16, elements: !90)
!90 = !{!91, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !89, file: !81, line: 25, baseType: !92, size: 8)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !95, line: 21, baseType: !96)
!95 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !89, file: !81, line: 26, baseType: !92, size: 8, offset: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !81, line: 28, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !81, line: 28, size: 32, elements: !100)
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !99, file: !81, line: 29, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !95, line: 24, baseType: !35)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !99, file: !81, line: 30, baseType: !102, size: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !65, file: !64, line: 39, baseType: !106, size: 128, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !34, line: 190, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !34, line: 191, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !34, line: 191, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !22, file: !21, line: 153, baseType: !29, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !22, file: !21, line: 154, baseType: !29, size: 64, offset: 448)
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!115 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !117, line: 16, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "TT_NONE", value: 0)
!120 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!121 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !123, line: 1325, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!125 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!126 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!127 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!128 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!129 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!130 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!131 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!132 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!133 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!134 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!135 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!136 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!137 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !139, line: 68, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!142 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!143 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!144 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !147, line: 1381, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!150 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!151 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !153, line: 312, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!156 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!157 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!158 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !160, line: 253, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!163 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!164 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!165 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!166 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!167 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!168 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!169 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !160, line: 158, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!173 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!174 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!175 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !177, line: 593, baseType: !31, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!178 = !{!179, !180, !181, !182, !183, !184}
!179 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!180 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!181 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!182 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!183 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!184 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !186, line: 597, baseType: !31, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!189 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!190 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!191 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!192 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !147, line: 295, baseType: !7, size: 32, elements: !194)
!194 = !{!195, !196}
!195 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!196 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !147, line: 285, baseType: !7, size: 32, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!200 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!201 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !203, line: 44, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213}
!205 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!206 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!207 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!208 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!209 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!210 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!211 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!212 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!213 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !215, line: 51, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!218 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!219 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!220 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !222, line: 9, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!225 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!226 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!227 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!228 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !6, line: 29, baseType: !7, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!232 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!233 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !6, line: 38, baseType: !7, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242}
!236 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!237 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!238 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!239 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!240 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!241 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!242 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !244, line: 32, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!247 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !249, line: 2052, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!250 = !{!251, !252}
!251 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!252 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !254, line: 54, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "USRQUOTA", value: 0)
!257 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!258 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !260, line: 15, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!263 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!264 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!265 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !267, line: 26, baseType: !7, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!270 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!271 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !273, line: 45, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!276 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!277 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !279, line: 487, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!280 = !{!281, !282, !283, !284}
!281 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!282 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!283 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!284 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !186, line: 620, baseType: !7, size: 32, elements: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!288 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!289 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!290 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!291 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !279, line: 547, baseType: !7, size: 32, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300}
!294 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!295 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!296 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!297 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!298 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!299 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!300 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !279, line: 564, baseType: !7, size: 32, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!304 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!305 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !279, line: 577, baseType: !7, size: 32, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!309 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!310 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !279, line: 503, baseType: !7, size: 32, elements: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!314 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!315 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!316 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 10, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!319 = !{!320, !321}
!320 = !DIEnumerator(name: "false", value: 0)
!321 = !DIEnumerator(name: "true", value: 1)
!322 = !{!29, !48, !323, !324, !325, !327, !328, !329}
!323 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !331, line: 746, size: 58368, elements: !332)
!331 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!332 = !{!333, !343, !344, !345, !351, !352, !353, !354, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !437, !448, !549, !553, !556, !587, !588, !589, !590, !601, !603, !604, !605, !606, !607, !608, !619, !620, !623, !624, !625, !626, !627, !628, !629, !630, !637, !638, !645, !646, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5786, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5829, !5835, !5836, !5837, !5838, !5839, !5841, !5844, !5851, !5856, !5859, !5862, !5865, !5895, !6093, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6131, !6132, !6133, !6142, !6150, !6151, !6152, !6153, !6154, !6159, !6160, !6161, !6164, !6165, !6167, !6178, !6183, !6191, !6194, !6195, !6281, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289, !6290, !6291, !6295, !6298, !6299, !6302, !6303, !6304, !6305, !6306, !6307, !6308, !6309, !6310, !6323, !6324, !6325, !6326, !6327, !6328, !6329, !6330, !6331, !6342, !6343, !6349, !6352, !6353, !6354, !6355, !6356, !6357, !6358, !6359, !6431, !6433, !6434, !6435, !6436, !6437, !6438, !6441, !6442, !6443, !6444, !6445, !6446, !6447, !6448, !6449, !6450, !6451, !6455, !6456, !6457}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !330, file: !331, line: 752, baseType: !334, size: 192)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !335, line: 56, size: 192, elements: !336)
!335 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!336 = !{!337, !338, !339, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !335, line: 57, baseType: !48, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !334, file: !335, line: 58, baseType: !48, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !334, file: !335, line: 59, baseType: !340, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !95, line: 27, baseType: !7)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !334, file: !335, line: 61, baseType: !340, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !330, file: !331, line: 754, baseType: !7, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !330, file: !331, line: 767, baseType: !29, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !330, file: !331, line: 768, baseType: !346, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !347, line: 113, baseType: !348)
!347 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !347, line: 111, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !348, file: !347, line: 112, baseType: !58, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !331, line: 770, baseType: !7, size: 32, offset: 352)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !330, file: !331, line: 771, baseType: !7, size: 32, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !330, file: !331, line: 774, baseType: !31, size: 32, offset: 416)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !330, file: !331, line: 775, baseType: !355, size: 128, offset: 448)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !356, line: 58, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!357 = !{!358, !364, !369, !370}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !355, file: !356, line: 59, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !360, line: 60, size: 64, elements: !361)
!360 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !360, line: 61, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !356, line: 60, baseType: !365, size: 32, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !356, line: 60, size: 32, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !365, file: !356, line: 61, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !365, file: !356, line: 62, baseType: !58, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !355, file: !356, line: 65, baseType: !102, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !355, file: !356, line: 65, baseType: !102, size: 16, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !330, file: !331, line: 776, baseType: !7, size: 32, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !330, file: !331, line: 777, baseType: !48, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !330, file: !331, line: 778, baseType: !329, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !330, file: !331, line: 787, baseType: !31, size: 32, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !330, file: !331, line: 788, baseType: !31, size: 32, offset: 800)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !330, file: !331, line: 790, baseType: !31, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !330, file: !331, line: 792, baseType: !31, size: 32, offset: 864)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !330, file: !331, line: 793, baseType: !31, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !330, file: !331, line: 794, baseType: !31, size: 32, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !330, file: !331, line: 795, baseType: !7, size: 32, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !330, file: !331, line: 797, baseType: !382, size: 2048, offset: 1024)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !331, line: 551, size: 2048, elements: !383)
!383 = !{!384, !389, !397, !401, !402, !403, !404, !405, !406, !407, !408, !411, !412, !413, !414, !416, !419, !420, !421}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !382, file: !331, line: 553, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !331, line: 411, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !385, file: !331, line: 412, baseType: !48, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !385, file: !331, line: 413, baseType: !340, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !382, file: !331, line: 554, baseType: !390, size: 192, align: 64, offset: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !391, line: 5, size: 192, align: 64, elements: !392)
!391 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!392 = !{!393, !394, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !390, file: !391, line: 6, baseType: !48, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !390, file: !391, line: 7, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !390, file: !391, line: 8, baseType: !395, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !382, file: !331, line: 555, baseType: !398, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !93, line: 23, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !95, line: 31, baseType: !400)
!400 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !382, file: !331, line: 556, baseType: !398, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !382, file: !331, line: 558, baseType: !106, size: 128, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !382, file: !331, line: 559, baseType: !7, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !382, file: !331, line: 561, baseType: !398, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !382, file: !331, line: 562, baseType: !398, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !382, file: !331, line: 563, baseType: !398, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !382, file: !331, line: 564, baseType: !398, size: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !382, file: !331, line: 565, baseType: !409, size: 64, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !93, line: 22, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 30, baseType: !52)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !382, file: !331, line: 566, baseType: !398, size: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !382, file: !331, line: 568, baseType: !398, size: 64, offset: 1024)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !382, file: !331, line: 571, baseType: !31, size: 32, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !382, file: !331, line: 572, baseType: !415, size: 64, offset: 1152)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !382, file: !331, line: 574, baseType: !417, size: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !331, line: 49, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !382, file: !331, line: 576, baseType: !417, size: 64, offset: 1280)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !382, file: !331, line: 578, baseType: !48, size: 64, offset: 1344)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !382, file: !331, line: 588, baseType: !422, size: 512, align: 512, offset: 1536)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !331, line: 497, size: 512, align: 512, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !422, file: !331, line: 498, baseType: !398, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !422, file: !331, line: 499, baseType: !398, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !422, file: !331, line: 500, baseType: !398, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !422, file: !331, line: 501, baseType: !340, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !422, file: !331, line: 502, baseType: !340, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !422, file: !331, line: 503, baseType: !48, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !422, file: !331, line: 504, baseType: !48, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !422, file: !331, line: 505, baseType: !48, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !422, file: !331, line: 506, baseType: !433, size: 64, align: 64, offset: 448)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !331, line: 445, size: 64, align: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !433, file: !331, line: 446, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !433, file: !331, line: 447, baseType: !7, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !330, file: !331, line: 798, baseType: !438, size: 384, offset: 3072)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !331, line: 592, size: 384, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !438, file: !331, line: 593, baseType: !106, size: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !438, file: !331, line: 594, baseType: !48, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !438, file: !331, line: 595, baseType: !48, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !438, file: !331, line: 596, baseType: !7, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !438, file: !331, line: 597, baseType: !35, size: 16, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !438, file: !331, line: 598, baseType: !35, size: 16, offset: 304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !438, file: !331, line: 600, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !330, file: !331, line: 799, baseType: !449, size: 1792, offset: 3456)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !331, line: 610, size: 1792, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !546, !547}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !449, file: !331, line: 611, baseType: !390, size: 192, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !449, file: !331, line: 618, baseType: !398, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !449, file: !331, line: 619, baseType: !398, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !449, file: !331, line: 620, baseType: !398, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !449, file: !331, line: 621, baseType: !398, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !449, file: !331, line: 622, baseType: !398, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !449, file: !331, line: 629, baseType: !409, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !449, file: !331, line: 630, baseType: !398, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !331, line: 631, baseType: !7, size: 32, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !449, file: !331, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !449, file: !331, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !449, file: !331, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !449, file: !331, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !449, file: !331, line: 662, baseType: !465, size: 512, offset: 704)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !16, line: 118, size: 512, elements: !466)
!466 = !{!467, !475, !476, !481, !542, !543, !544, !545}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !16, line: 119, baseType: !468, size: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !469, line: 9, size: 256, elements: !470)
!469 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !469, line: 10, baseType: !390, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !468, file: !469, line: 11, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !474, line: 29, baseType: !409)
!474 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !465, file: !16, line: 120, baseType: !473, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !465, file: !16, line: 121, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!15, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !465, file: !16, line: 122, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !16, line: 159, size: 512, align: 512, elements: !484)
!484 = !{!485, !511, !512, !515, !525, !526, !537, !541}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !483, file: !16, line: 160, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !16, line: 215, size: 4608, align: 512, elements: !488)
!488 = !{!489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !16, line: 216, baseType: !490, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !77, line: 23, baseType: !76)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !487, file: !16, line: 217, baseType: !7, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !487, file: !16, line: 218, baseType: !7, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !487, file: !16, line: 219, baseType: !7, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !487, file: !16, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !487, file: !16, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !487, file: !16, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !487, file: !16, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !487, file: !16, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !487, file: !16, line: 226, baseType: !7, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !487, file: !16, line: 227, baseType: !35, size: 16, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !487, file: !16, line: 228, baseType: !35, size: 16, offset: 208)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !487, file: !16, line: 229, baseType: !7, size: 32, offset: 224)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !487, file: !16, line: 235, baseType: !473, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !487, file: !16, line: 236, baseType: !480, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !487, file: !16, line: 237, baseType: !473, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !487, file: !16, line: 238, baseType: !480, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !487, file: !16, line: 239, baseType: !508, size: 4096, align: 512, offset: 512)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 4096, align: 512, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !483, file: !16, line: 161, baseType: !7, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !483, file: !16, line: 162, baseType: !513, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !34, line: 32, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !46, line: 96, baseType: !31)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !483, file: !16, line: 163, baseType: !516, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !517, line: 274, baseType: !518)
!517 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !517, line: 274, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !518, file: !517, line: 274, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !517, line: 69, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !517, line: 64, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !522, file: !517, line: 65, baseType: !7, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !483, file: !16, line: 164, baseType: !480, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !483, file: !16, line: 165, baseType: !527, size: 128, offset: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !469, line: 14, size: 128, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !527, file: !469, line: 15, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !391, line: 26, size: 128, elements: !531)
!531 = !{!532, !536}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !530, file: !391, line: 27, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !391, line: 12, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !533, file: !391, line: 13, baseType: !395, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !530, file: !391, line: 28, baseType: !395, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !483, file: !16, line: 166, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!473}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !483, file: !16, line: 167, baseType: !473, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !465, file: !16, line: 123, baseType: !92, size: 8, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !465, file: !16, line: 124, baseType: !92, size: 8, offset: 456)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !465, file: !16, line: 125, baseType: !92, size: 8, offset: 464)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !465, file: !16, line: 126, baseType: !92, size: 8, offset: 472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !449, file: !331, line: 671, baseType: !465, size: 512, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !449, file: !331, line: 679, baseType: !548, size: 64, offset: 1728)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !330, file: !331, line: 800, baseType: !550, size: 64, offset: 5248)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !331, line: 800, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !330, file: !331, line: 809, baseType: !554, size: 64, offset: 5312)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !331, line: 70, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !330, file: !331, line: 825, baseType: !557, size: 2048, align: 512, offset: 5632)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !331, line: 509, size: 2048, align: 512, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !557, file: !331, line: 511, baseType: !398, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !557, file: !331, line: 512, baseType: !398, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !557, file: !331, line: 513, baseType: !398, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !557, file: !331, line: 514, baseType: !398, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !557, file: !331, line: 515, baseType: !398, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !557, file: !331, line: 516, baseType: !398, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !557, file: !331, line: 518, baseType: !398, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !557, file: !331, line: 519, baseType: !398, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !557, file: !331, line: 520, baseType: !409, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !557, file: !331, line: 522, baseType: !398, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !557, file: !331, line: 523, baseType: !398, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !557, file: !331, line: 524, baseType: !409, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !557, file: !331, line: 526, baseType: !409, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !557, file: !331, line: 527, baseType: !398, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !557, file: !331, line: 529, baseType: !398, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !557, file: !331, line: 530, baseType: !398, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !557, file: !331, line: 531, baseType: !398, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !557, file: !331, line: 532, baseType: !398, size: 64, offset: 1088)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !557, file: !331, line: 533, baseType: !398, size: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !557, file: !331, line: 535, baseType: !398, size: 64, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !557, file: !331, line: 536, baseType: !398, size: 64, offset: 1280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !557, file: !331, line: 537, baseType: !398, size: 64, offset: 1344)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !557, file: !331, line: 538, baseType: !398, size: 64, offset: 1408)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !557, file: !331, line: 539, baseType: !398, size: 64, offset: 1472)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !557, file: !331, line: 540, baseType: !398, size: 64, offset: 1536)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !557, file: !331, line: 541, baseType: !398, size: 64, offset: 1600)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !557, file: !331, line: 542, baseType: !398, size: 64, offset: 1664)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !557, file: !331, line: 543, baseType: !398, size: 64, offset: 1728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !330, file: !331, line: 833, baseType: !7, size: 32, offset: 7680)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !330, file: !331, line: 836, baseType: !7, size: 32, offset: 7712)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !330, file: !331, line: 837, baseType: !31, size: 32, offset: 7744)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !330, file: !331, line: 838, baseType: !591, size: 64, offset: 7808)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !594, line: 19, baseType: !595)
!594 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !594, line: 19, size: 64, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !595, file: !594, line: 19, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 1)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !330, file: !331, line: 839, baseType: !602, size: 64, offset: 7872)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !330, file: !331, line: 840, baseType: !593, size: 64, offset: 7936)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !330, file: !331, line: 841, baseType: !29, size: 64, offset: 8000)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !330, file: !331, line: 843, baseType: !35, size: 16, offset: 8064)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !330, file: !331, line: 845, baseType: !35, size: 16, offset: 8080)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !330, file: !331, line: 848, baseType: !31, size: 32, offset: 8096)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !330, file: !331, line: 849, baseType: !609, size: 32, offset: 8128)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !331, line: 718, size: 32, elements: !610)
!610 = !{!611, !618}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !609, file: !331, line: 724, baseType: !612, size: 32)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !331, line: 719, size: 32, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !612, file: !331, line: 720, baseType: !92, size: 8)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !612, file: !331, line: 721, baseType: !92, size: 8, offset: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !612, file: !331, line: 722, baseType: !92, size: 8, offset: 16)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !612, file: !331, line: 723, baseType: !92, size: 8, offset: 24)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !609, file: !331, line: 725, baseType: !340, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !330, file: !331, line: 850, baseType: !106, size: 128, offset: 8192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !330, file: !331, line: 851, baseType: !621, size: 64, offset: 8320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !331, line: 60, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !330, file: !331, line: 855, baseType: !48, size: 64, offset: 8384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !330, file: !331, line: 856, baseType: !92, size: 8, offset: 8448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !330, file: !331, line: 857, baseType: !92, size: 8, offset: 8456)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !330, file: !331, line: 858, baseType: !31, size: 32, offset: 8480)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !330, file: !331, line: 859, baseType: !106, size: 128, offset: 8512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !330, file: !331, line: 860, baseType: !31, size: 32, offset: 8640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !330, file: !331, line: 861, baseType: !106, size: 128, offset: 8704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !330, file: !331, line: 873, baseType: !631, size: 256, offset: 8832)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !331, line: 376, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !631, file: !331, line: 381, baseType: !48, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !631, file: !331, line: 384, baseType: !400, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !631, file: !331, line: 389, baseType: !400, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !631, file: !331, line: 392, baseType: !400, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !330, file: !331, line: 875, baseType: !106, size: 128, offset: 9088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !330, file: !331, line: 877, baseType: !639, size: 320, offset: 9216)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !640, line: 86, size: 320, elements: !641)
!640 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !639, file: !640, line: 87, baseType: !31, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !639, file: !640, line: 88, baseType: !106, size: 128, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !639, file: !640, line: 89, baseType: !106, size: 128, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !330, file: !331, line: 878, baseType: !390, size: 192, align: 64, offset: 9536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !330, file: !331, line: 881, baseType: !647, size: 64, offset: 9728)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !123, line: 733, size: 10240, elements: !649)
!649 = !{!650, !5700}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !123, line: 734, baseType: !651, size: 10240)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !123, line: 734, size: 10240, elements: !652)
!652 = !{!653, !657, !671, !5580, !5581, !5582, !5583, !5584, !5585, !5592, !5593, !5594, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5633, !5634, !5637, !5680, !5681, !5682, !5685, !5686, !5687, !5690, !5691, !5692, !5698, !5699}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !123, line: 739, baseType: !654, size: 512, align: 512)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !123, line: 739, size: 512, align: 512, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !654, file: !123, line: 747, baseType: !58, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !651, file: !123, line: 750, baseType: !658, size: 128, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !659, line: 218, size: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!660 = !{!661, !669, !670}
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 219, baseType: !662, size: 32)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 219, size: 32, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !662, file: !659, line: 220, baseType: !68, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !662, file: !659, line: 221, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !659, line: 197, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 197, elements: !668)
!668 = !{}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !658, file: !659, line: 223, baseType: !7, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !658, file: !659, line: 224, baseType: !29, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !651, file: !123, line: 752, baseType: !672, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!48, !675, !48, !48, !48, !48}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !249, line: 994, size: 1856, align: 64, elements: !677)
!677 = !{!678, !692, !693, !695, !702, !714, !715, !716, !1096, !1174, !1183, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !249, line: 995, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !249, line: 995, size: 128, elements: !680)
!680 = !{!681, !682, !691}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !679, file: !249, line: 996, baseType: !359, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !679, file: !249, line: 997, baseType: !683, size: 128, align: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !34, line: 232, size: 128, align: 64, elements: !684)
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !34, line: 233, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !683, file: !34, line: 234, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !686}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !679, file: !249, line: 998, baseType: !7, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !676, file: !249, line: 1005, baseType: !68, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !676, file: !249, line: 1006, baseType: !694, size: 32, offset: 160)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !34, line: 156, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !676, file: !249, line: 1007, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !697, line: 13, baseType: !698)
!697 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !34, line: 181, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 179, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !34, line: 180, baseType: !409, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !676, file: !249, line: 1008, baseType: !703, size: 256, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !704, line: 66, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!705 = !{!706, !707, !708, !713}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 67, baseType: !696, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 68, baseType: !490, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !703, file: !704, line: 70, baseType: !709, size: 32, offset: 96)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !710, line: 15, size: 32, elements: !711)
!710 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !709, file: !710, line: 20, baseType: !58, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 72, baseType: !106, size: 128, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !676, file: !249, line: 1009, baseType: !50, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !676, file: !249, line: 1010, baseType: !7, size: 32, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !676, file: !249, line: 1011, baseType: !717, size: 256, offset: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !249, line: 948, size: 256, elements: !718)
!718 = !{!719, !742, !1092, !1093, !1094, !1095}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !249, line: 949, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !721, line: 34, baseType: !722)
!721 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 25, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !722, file: !721, line: 26, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !726, line: 27, baseType: !727)
!726 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !726, line: 13, size: 64, elements: !728)
!728 = !{!729, !741}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !726, line: 14, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !726, line: 14, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !730, file: !726, line: 15, baseType: !58, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 16, baseType: !734, size: 32)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 16, size: 32, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !734, file: !726, line: 18, baseType: !92, size: 8)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !734, file: !726, line: 19, baseType: !738, size: 24, offset: 8)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 24, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 3)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !726, line: 26, baseType: !80, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !717, file: !249, line: 950, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !222, line: 59, size: 768, elements: !745)
!745 = !{!746, !747, !748, !749, !762, !763, !764, !765}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !222, line: 61, baseType: !346, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !744, file: !222, line: 62, baseType: !7, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !222, line: 63, baseType: !68, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !744, file: !222, line: 65, baseType: !750, size: 256, offset: 128)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 256, elements: !760)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !34, line: 194, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !751, file: !34, line: 195, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !34, line: 198, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !34, line: 199, baseType: !754, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !755, file: !34, line: 199, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!760 = !{!761}
!761 = !DISubrange(count: 4)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !744, file: !222, line: 66, baseType: !751, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !744, file: !222, line: 68, baseType: !63, size: 192, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !222, line: 69, baseType: !683, size: 128, align: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !744, file: !222, line: 70, baseType: !766, offset: 768)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, elements: !1090)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !222, line: 54, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !767, file: !222, line: 55, baseType: !31, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !222, line: 56, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !773, line: 26, size: 1152, elements: !774)
!773 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!774 = !{!775, !788, !789, !790, !791, !795, !796, !797, !800, !1086, !1087, !1088, !1089}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !772, file: !773, line: 27, baseType: !776, size: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !777, line: 19, size: 192, elements: !778)
!777 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!778 = !{!779, !786, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !776, file: !777, line: 20, baseType: !780, size: 128)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !781, line: 296, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !780, file: !781, line: 297, baseType: !68, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !780, file: !781, line: 299, baseType: !327, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !780, file: !781, line: 300, baseType: !29, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !776, file: !777, line: 21, baseType: !7, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !776, file: !777, line: 22, baseType: !7, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !772, file: !773, line: 28, baseType: !683, size: 128, align: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !772, file: !773, line: 29, baseType: !7, size: 32, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !772, file: !773, line: 30, baseType: !329, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !772, file: !773, line: 31, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !794, line: 325, flags: DIFlagFwdDecl)
!794 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !772, file: !773, line: 32, baseType: !7, size: 32, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !772, file: !773, line: 33, baseType: !771, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !772, file: !773, line: 35, baseType: !798, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !773, line: 17, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !772, file: !773, line: 37, baseType: !801, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !803, line: 68, size: 4800, elements: !804)
!803 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!804 = !{!805, !827, !828, !829, !830, !831, !839, !846, !857, !858, !861, !862, !984, !985, !997, !1067, !1068, !1082, !1084}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !802, file: !803, line: 69, baseType: !806, size: 576)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !803, line: 23, size: 576, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !806, file: !803, line: 24, baseType: !340, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !803, line: 25, baseType: !810, size: 512, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !803, line: 25, size: 512, elements: !811)
!811 = !{!812, !821}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !810, file: !803, line: 26, baseType: !813, size: 480)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 480, elements: !819)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !803, line: 17, size: 96, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !814, file: !803, line: 18, baseType: !340, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !814, file: !803, line: 19, baseType: !340, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !814, file: !803, line: 20, baseType: !340, size: 32, offset: 64)
!819 = !{!820}
!820 = !DISubrange(count: 5)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !803, line: 27, baseType: !822, size: 128)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !803, line: 27, size: 128, elements: !823)
!823 = !{!824, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !822, file: !803, line: 28, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !822, file: !803, line: 29, baseType: !825, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !802, file: !803, line: 70, baseType: !806, size: 576, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !802, file: !803, line: 71, baseType: !806, size: 576, offset: 1152)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !802, file: !803, line: 72, baseType: !801, size: 64, offset: 1728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !802, file: !803, line: 73, baseType: !31, size: 32, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 74, baseType: !832, size: 32, offset: 1824)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !833, line: 23, baseType: !834)
!833 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 21, size: 32, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !833, line: 22, baseType: !837, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !34, line: 37, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !46, line: 49, baseType: !7)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !802, file: !803, line: 75, baseType: !840, size: 32, offset: 1856)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !833, line: 28, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 26, size: 32, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !841, file: !833, line: 27, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !34, line: 38, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !46, line: 50, baseType: !7)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !802, file: !803, line: 76, baseType: !847, size: 192, offset: 1920)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !848, line: 9, size: 192, elements: !849)
!848 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!849 = !{!850, !851, !855, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !847, file: !848, line: 10, baseType: !696, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !847, file: !848, line: 11, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !848, line: 7, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !847, file: !848, line: 12, baseType: !7, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !847, file: !848, line: 13, baseType: !346, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !803, line: 77, baseType: !48, size: 64, offset: 2112)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !802, file: !803, line: 80, baseType: !859, size: 8, offset: 2176)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !860)
!860 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !802, file: !803, line: 88, baseType: !106, size: 128, offset: 2240)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !802, file: !803, line: 89, baseType: !863, size: 64, offset: 2368)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !865, line: 195, size: 1728, elements: !866)
!865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!866 = !{!867, !868, !873, !878, !887, !890, !891, !898, !899, !900, !901, !904, !905, !906, !908, !909, !948, !969}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !865, line: 196, baseType: !346, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !864, file: !865, line: 197, baseType: !869, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !865, line: 28, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !34, line: 104, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !93, line: 20, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !95, line: 26, baseType: !31)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 198, baseType: !874, size: 192, offset: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 198, size: 192, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !874, file: !865, line: 199, baseType: !106, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !874, file: !865, line: 200, baseType: !390, size: 192, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !864, file: !865, line: 205, baseType: !879, size: 320, offset: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !880, line: 48, size: 320, elements: !881)
!880 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!881 = !{!882, !883, !884, !885, !886}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !879, file: !880, line: 49, baseType: !696, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !880, line: 55, baseType: !696, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !879, file: !880, line: 57, baseType: !709, size: 32, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !879, file: !880, line: 59, baseType: !490, size: 32, offset: 160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !879, file: !880, line: 60, baseType: !106, size: 128, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !864, file: !865, line: 206, baseType: !888, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !865, line: 206, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !864, file: !865, line: 207, baseType: !29, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 208, baseType: !892, size: 64, offset: 704)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 208, size: 64, elements: !893)
!893 = !{!894, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !892, file: !865, line: 209, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !896, line: 8, baseType: !410)
!896 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !892, file: !865, line: 210, baseType: !895, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !864, file: !865, line: 212, baseType: !895, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !864, file: !865, line: 213, baseType: !832, size: 32, offset: 832)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !864, file: !865, line: 214, baseType: !840, size: 32, offset: 864)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !864, file: !865, line: 215, baseType: !902, size: 32, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !865, line: 31, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 110, baseType: !340)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !864, file: !865, line: 216, baseType: !35, size: 16, offset: 928)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !864, file: !865, line: 217, baseType: !35, size: 16, offset: 944)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !865, line: 221, baseType: !907, size: 16, offset: 960)
!907 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 228, baseType: !48, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 245, baseType: !910, size: 320, offset: 1088)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 245, size: 320, elements: !911)
!911 = !{!912, !939}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !910, file: !865, line: 246, baseType: !913, size: 320)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !865, line: 114, size: 320, elements: !914)
!914 = !{!915, !916, !928, !931, !938}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !913, file: !865, line: 116, baseType: !48, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !865, line: 117, baseType: !917, size: 64, offset: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !865, line: 117, size: 64, elements: !918)
!918 = !{!919, !927}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !865, line: 118, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !865, line: 118, size: 64, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !920, file: !865, line: 120, baseType: !102, size: 16)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !920, file: !865, line: 121, baseType: !924, size: 48, offset: 16)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 6)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !917, file: !865, line: 127, baseType: !48, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !913, file: !865, line: 129, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !865, line: 102, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !913, file: !865, line: 130, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !865, line: 108, size: 192, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !933, file: !865, line: 109, baseType: !683, size: 128, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !933, file: !865, line: 110, baseType: !346, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !933, file: !865, line: 111, baseType: !859, size: 8, offset: 160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !913, file: !865, line: 131, baseType: !25, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !865, line: 247, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !865, line: 247, size: 320, elements: !941)
!941 = !{!942, !943, !944, !945, !946}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !940, file: !865, line: 248, baseType: !48, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !940, file: !865, line: 249, baseType: !48, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !865, line: 250, baseType: !929, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !940, file: !865, line: 251, baseType: !932, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !940, file: !865, line: 252, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 260, baseType: !949, size: 256, offset: 1408)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 260, size: 256, elements: !950)
!950 = !{!951, !957}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !949, file: !865, line: 261, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !865, line: 134, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !952, file: !865, line: 135, baseType: !29, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !865, line: 136, baseType: !956, size: 256)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !760)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !865, line: 262, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !865, line: 262, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !958, file: !865, line: 264, baseType: !106, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !958, file: !865, line: 265, baseType: !962, size: 128, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !963, line: 22, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!964 = !{!965, !968}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !962, file: !963, line: 23, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !963, line: 23, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !962, file: !963, line: 24, baseType: !48, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !864, file: !865, line: 280, baseType: !970, size: 64, offset: 1664)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !865, line: 176, size: 192, elements: !972)
!972 = !{!973, !982, !983}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !971, file: !865, line: 177, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !865, line: 171, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!31, !863, !978, !980, !863}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !971, file: !865, line: 178, baseType: !863, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !971, file: !865, line: 179, baseType: !929, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !802, file: !803, line: 90, baseType: !879, size: 320, offset: 2432)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !802, file: !803, line: 97, baseType: !986, size: 256, offset: 2752)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !987, line: 98, size: 256, elements: !988)
!987 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !986, file: !987, line: 99, baseType: !696, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !986, file: !987, line: 100, baseType: !106, size: 128, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !986, file: !987, line: 101, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !987, line: 21, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !802, file: !803, line: 99, baseType: !998, size: 768, offset: 3008)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !21, line: 199, size: 768, elements: !999)
!999 = !{!1000, !1005}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !998, file: !21, line: 200, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!31, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !998, file: !21, line: 201, baseType: !1006, size: 704, offset: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !21, line: 193, size: 704, elements: !1007)
!1007 = !{!1008, !1066}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1006, file: !21, line: 195, baseType: !1009, size: 640)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !21, line: 173, size: 640, elements: !1010)
!1010 = !{!1011, !1023, !1035, !1036, !1056, !1057, !1059, !1065}
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !21, line: 174, baseType: !1012, size: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !21, line: 174, size: 192, elements: !1013)
!1013 = !{!1014, !1022}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !21, line: 175, baseType: !1015, size: 192)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !21, line: 175, size: 192, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1015, file: !21, line: 176, baseType: !42, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1015, file: !21, line: 177, baseType: !31, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1015, file: !21, line: 178, baseType: !31, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1015, file: !21, line: 179, baseType: !31, size: 32, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1015, file: !21, line: 180, baseType: !31, size: 32, offset: 160)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1012, file: !21, line: 182, baseType: !683, size: 128, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1009, file: !21, line: 184, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1026, line: 26, size: 256, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1025, file: !1026, line: 27, baseType: !7, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1025, file: !1026, line: 28, baseType: !1030, size: 192, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1031, line: 43, size: 192, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1030, file: !1031, line: 44, baseType: !490, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1030, file: !1031, line: 45, baseType: !106, size: 128, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1009, file: !21, line: 185, baseType: !42, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1009, file: !21, line: 186, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !21, line: 204, size: 960, elements: !1039)
!1039 = !{!1040, !1041, !1045, !1052}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1038, file: !21, line: 205, baseType: !998, size: 768)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1038, file: !21, line: 206, baseType: !1042, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1004, !1037}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1038, file: !21, line: 207, baseType: !1046, size: 64, offset: 832)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1038, file: !21, line: 209, baseType: !1053, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!31, !1049, !42}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1009, file: !21, line: 187, baseType: !1004, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1009, file: !21, line: 188, baseType: !1058, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1009, file: !21, line: 189, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !21, line: 157, size: 256, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !21, line: 158, baseType: !390, size: 192, align: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1061, file: !21, line: 159, baseType: !1049, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1009, file: !21, line: 190, baseType: !751, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1006, file: !21, line: 196, baseType: !533, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !802, file: !803, line: 100, baseType: !1049, size: 64, offset: 3776)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !802, file: !803, line: 102, baseType: !1069, size: 64, offset: 3840)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !803, line: 107, size: 1152, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1080}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1070, file: !803, line: 108, baseType: !755, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1070, file: !803, line: 109, baseType: !801, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1070, file: !803, line: 110, baseType: !832, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1070, file: !803, line: 111, baseType: !58, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1070, file: !803, line: 112, baseType: !1077, size: 640, offset: 256)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 640, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 10)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1070, file: !803, line: 113, baseType: !1081, size: 256, offset: 896)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !760)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !802, file: !803, line: 103, baseType: !1083, size: 640, offset: 3904)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 640, elements: !1078)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !802, file: !803, line: 104, baseType: !1085, size: 256, offset: 4544)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 256, elements: !760)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !772, file: !773, line: 38, baseType: !1069, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !772, file: !773, line: 39, baseType: !31, size: 32, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !772, file: !773, line: 40, baseType: !847, size: 192, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !772, file: !773, line: 42, baseType: !31, size: 32, offset: 1088)
!1090 = !{!1091}
!1091 = !DISubrange(count: -1)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !717, file: !249, line: 951, baseType: !221, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !249, line: 952, baseType: !832, size: 32, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !717, file: !249, line: 952, baseType: !832, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !717, file: !249, line: 953, baseType: !31, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !676, file: !249, line: 1012, baseType: !1097, size: 64, offset: 896)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1100, line: 110, size: 1472, elements: !1101)
!1100 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1159, !1160, !1161, !1169}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1099, file: !1100, line: 111, baseType: !696, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !1100, line: 112, baseType: !832, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1099, file: !1100, line: 113, baseType: !840, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1099, file: !1100, line: 114, baseType: !832, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1099, file: !1100, line: 115, baseType: !840, size: 32, offset: 160)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1099, file: !1100, line: 116, baseType: !832, size: 32, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1099, file: !1100, line: 117, baseType: !840, size: 32, offset: 224)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1099, file: !1100, line: 118, baseType: !832, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1099, file: !1100, line: 119, baseType: !840, size: 32, offset: 288)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1099, file: !1100, line: 120, baseType: !7, size: 32, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1099, file: !1100, line: 121, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1114, line: 24, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 24, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1115, file: !1114, line: 24, baseType: !398, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1099, file: !1100, line: 122, baseType: !1113, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1099, file: !1100, line: 123, baseType: !1113, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1099, file: !1100, line: 124, baseType: !1113, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1099, file: !1100, line: 125, baseType: !1113, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1099, file: !1100, line: 127, baseType: !96, size: 8, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1099, file: !1100, line: 129, baseType: !863, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1099, file: !1100, line: 130, baseType: !863, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1099, file: !1100, line: 131, baseType: !863, size: 64, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1099, file: !1100, line: 132, baseType: !863, size: 64, offset: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1099, file: !1100, line: 135, baseType: !29, size: 64, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1099, file: !1100, line: 137, baseType: !1129, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1131, line: 14, size: 1088, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1132 = !{!1133, !1134, !1143, !1144, !1145, !1146, !1147, !1148}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1130, file: !1131, line: 15, baseType: !346, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1130, file: !1131, line: 17, baseType: !1135, size: 320, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1136, line: 22, size: 320, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1136, line: 23, baseType: !490, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1135, file: !1136, line: 24, baseType: !409, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1135, file: !1136, line: 26, baseType: !106, size: 128, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1135, file: !1136, line: 28, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1130, file: !1131, line: 19, baseType: !48, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1130, file: !1131, line: 20, baseType: !696, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1130, file: !1131, line: 23, baseType: !755, size: 128, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1130, file: !1131, line: 24, baseType: !832, size: 32, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1130, file: !1131, line: 29, baseType: !696, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1130, file: !1131, line: 36, baseType: !1149, size: 320, offset: 768)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1150, line: 15, size: 320, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !1150, line: 16, baseType: !490, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1149, file: !1150, line: 18, baseType: !31, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1149, file: !1150, line: 19, baseType: !31, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1149, file: !1150, line: 20, baseType: !31, size: 32, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1149, file: !1150, line: 21, baseType: !31, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1149, file: !1150, line: 22, baseType: !48, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !1150, line: 23, baseType: !48, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1099, file: !1100, line: 138, baseType: !801, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1099, file: !1100, line: 139, baseType: !1069, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1099, file: !1100, line: 140, baseType: !1162, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1100, line: 25, size: 64, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1163, file: !1100, line: 26, baseType: !58, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1163, file: !1100, line: 27, baseType: !31, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1163, file: !1100, line: 28, baseType: !1168, offset: 64)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, elements: !1090)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !1100, line: 142, baseType: !1170, size: 128, offset: 1344)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !1100, line: 142, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1170, file: !1100, line: 143, baseType: !31, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1170, file: !1100, line: 144, baseType: !683, size: 128, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !676, file: !249, line: 1013, baseType: !1175, size: 256, offset: 960)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !249, line: 970, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1175, file: !249, line: 971, baseType: !48, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1175, file: !249, line: 972, baseType: !7, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1175, file: !249, line: 973, baseType: !7, size: 32, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1175, file: !249, line: 974, baseType: !7, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1175, file: !249, line: 975, baseType: !7, size: 32, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1175, file: !249, line: 976, baseType: !50, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !676, file: !249, line: 1014, baseType: !1184, size: 128, offset: 1216)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1185, line: 8, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1186 = !{!1187, !5570}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1184, file: !1185, line: 9, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1190, line: 70, size: 256, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1191 = !{!1192, !5567, !5568, !5569}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1189, file: !1190, line: 71, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1195, line: 82, size: 1536, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1196 = !{!1197, !1198, !1203, !1211, !1212, !1227, !5535, !5537, !5550, !5551, !5552, !5553, !5554, !5559, !5560, !5561}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1194, file: !1195, line: 84, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1194, file: !1195, line: 85, baseType: !1199, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !517, line: 275, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !517, line: 275, size: 32, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1200, file: !517, line: 275, baseType: !521, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1194, file: !1195, line: 86, baseType: !1204, size: 128, offset: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1205, line: 38, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1206 = !{!1207, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1204, file: !1205, line: 39, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1204, file: !1205, line: 39, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1194, file: !1195, line: 87, baseType: !1193, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1194, file: !1195, line: 88, baseType: !1213, size: 128, offset: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1195, line: 49, size: 128, elements: !1214)
!1214 = !{!1215, !1224}
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1195, line: 50, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1195, line: 50, size: 64, elements: !1217)
!1217 = !{!1218, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1195, line: 51, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1195, line: 51, size: 64, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1219, file: !1195, line: 52, baseType: !340, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1219, file: !1195, line: 52, baseType: !340, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1216, file: !1195, line: 54, baseType: !398, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1195, line: 56, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1194, file: !1195, line: 89, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !249, line: 641, size: 4800, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1240, !1241, !1428, !5352, !5353, !5354, !5355, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5517, !5520, !5521, !5522, !5531, !5532, !5533, !5534}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1229, file: !249, line: 642, baseType: !33, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1229, file: !249, line: 643, baseType: !35, size: 16, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1229, file: !249, line: 644, baseType: !832, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1229, file: !249, line: 645, baseType: !106, size: 128, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1229, file: !249, line: 646, baseType: !840, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1229, file: !249, line: 647, baseType: !7, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1229, file: !249, line: 650, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !249, line: 607, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1229, file: !249, line: 651, baseType: !1238, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1229, file: !249, line: 654, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !249, line: 1966, size: 2048, align: 512, elements: !1245)
!1245 = !{!1246, !1250, !1263, !1269, !1273, !1277, !1281, !1285, !1289, !1293, !1297, !1298, !1304, !1308, !1345, !1376, !1383, !1389, !1393, !1397, !1401, !1405, !1409, !1415, !1419}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1244, file: !249, line: 1967, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1193, !1228, !1193, !7}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1244, file: !249, line: 1968, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!25, !1193, !1228, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1256, line: 10, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1257 = !{!1258, !1262}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1255, file: !1256, line: 11, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !29}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1255, file: !1256, line: 12, baseType: !29, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1244, file: !249, line: 1969, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!31, !1267, !1228, !31}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1114, line: 42, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1244, file: !249, line: 1970, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1238, !1228, !31, !859}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1244, file: !249, line: 1972, baseType: !1274, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!31, !1193, !947, !31}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1244, file: !249, line: 1974, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!31, !1267, !1228, !1193, !33, !859}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1244, file: !249, line: 1976, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!31, !1193, !1228, !1193}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1244, file: !249, line: 1977, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!31, !1228, !1193}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1244, file: !249, line: 1978, baseType: !1290, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!31, !1267, !1228, !1193, !25}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1244, file: !249, line: 1980, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!31, !1267, !1228, !1193, !33}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1244, file: !249, line: 1982, baseType: !1286, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1244, file: !249, line: 1983, baseType: !1299, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!31, !1267, !1228, !1193, !33, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 21, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !34, line: 18, baseType: !340)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1244, file: !249, line: 1985, baseType: !1305, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!31, !1267, !1228, !1193, !1228, !1193, !7}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1244, file: !249, line: 1987, baseType: !1309, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!31, !1267, !1193, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !249, line: 226, size: 640, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1327, !1336, !1337, !1342, !1343, !1344}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1313, file: !249, line: 227, baseType: !7, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1313, file: !249, line: 228, baseType: !33, size: 16, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !249, line: 241, baseType: !1318, size: 32, offset: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !249, line: 241, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1318, file: !249, line: 242, baseType: !832, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1318, file: !249, line: 243, baseType: !1322, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1323, line: 16, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 14, size: 32, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1324, file: !1323, line: 15, baseType: !837, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !249, line: 245, baseType: !1328, size: 32, offset: 96)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !249, line: 245, size: 32, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1328, file: !249, line: 246, baseType: !840, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1328, file: !249, line: 247, baseType: !1332, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1323, line: 20, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 18, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1333, file: !1323, line: 19, baseType: !844, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1313, file: !249, line: 249, baseType: !50, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1313, file: !249, line: 250, baseType: !1338, size: 128, offset: 192)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !896, line: 13, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1338, file: !896, line: 14, baseType: !895, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1338, file: !896, line: 15, baseType: !323, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1313, file: !249, line: 251, baseType: !1338, size: 128, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1313, file: !249, line: 252, baseType: !1338, size: 128, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1313, file: !249, line: 259, baseType: !675, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1244, file: !249, line: 1988, baseType: !1346, size: 64, offset: 896)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!31, !1267, !1349, !1351, !340, !7}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1353, line: 22, size: 1280, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1352, file: !1353, line: 23, baseType: !340, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1352, file: !1353, line: 24, baseType: !33, size: 16, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1352, file: !1353, line: 25, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1352, file: !1353, line: 26, baseType: !903, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1352, file: !1353, line: 27, baseType: !398, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1352, file: !1353, line: 28, baseType: !398, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1352, file: !1353, line: 41, baseType: !398, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1352, file: !1353, line: 42, baseType: !1302, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1352, file: !1353, line: 43, baseType: !1302, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1352, file: !1353, line: 44, baseType: !832, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1352, file: !1353, line: 45, baseType: !840, size: 32, offset: 416)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !1353, line: 46, baseType: !50, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1352, file: !1353, line: 47, baseType: !1338, size: 128, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1352, file: !1353, line: 48, baseType: !1338, size: 128, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1352, file: !1353, line: 49, baseType: !1338, size: 128, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1352, file: !1353, line: 50, baseType: !1338, size: 128, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1352, file: !1353, line: 51, baseType: !398, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1352, file: !1353, line: 52, baseType: !398, size: 64, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1352, file: !1353, line: 53, baseType: !340, size: 32, offset: 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1352, file: !1353, line: 54, baseType: !340, size: 32, offset: 1184)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1352, file: !1353, line: 55, baseType: !398, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1244, file: !249, line: 1990, baseType: !1377, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1193, !947, !44}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 66, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !46, line: 73, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !46, line: 15, baseType: !323)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1244, file: !249, line: 1991, baseType: !1384, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!31, !1228, !1387, !398, !398}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !249, line: 55, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1244, file: !249, line: 1993, baseType: !1390, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!31, !1228, !31}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1244, file: !249, line: 1994, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!31, !1228, !1193, !675, !7, !33}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1244, file: !249, line: 1997, baseType: !1398, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!31, !1267, !1228, !675, !33}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1244, file: !249, line: 1999, baseType: !1402, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1238, !1267, !1193, !31}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1244, file: !249, line: 2001, baseType: !1406, size: 64, offset: 1344)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!31, !1267, !1193, !1238, !31}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1244, file: !249, line: 2003, baseType: !1410, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!31, !1267, !1193, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !249, line: 76, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1244, file: !249, line: 2005, baseType: !1416, size: 64, offset: 1472)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!31, !1193, !1413}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1244, file: !249, line: 2006, baseType: !1420, size: 64, offset: 1536)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1423, !1228}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !249, line: 3192, size: 192, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1424, file: !249, line: 3193, baseType: !780, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1424, file: !249, line: 3194, baseType: !340, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1229, file: !249, line: 655, baseType: !1429, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !249, line: 1190, size: 10752, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !4856, !4988, !5028, !5111, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5145, !5149, !5150, !5151, !5157, !5158, !5161, !5162, !5163, !5204, !5226, !5227, !5228, !5229, !5230, !5231, !5234, !5235, !5244, !5245, !5246, !5247, !5306, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1430, file: !249, line: 1191, baseType: !106, size: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1430, file: !249, line: 1192, baseType: !1302, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1430, file: !249, line: 1193, baseType: !96, size: 8, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1430, file: !249, line: 1194, baseType: !48, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1430, file: !249, line: 1195, baseType: !50, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1430, file: !249, line: 1196, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !249, line: 2366, size: 576, elements: !1440)
!1440 = !{!1441, !1442, !1443, !4808, !4835, !4839, !4843, !4844, !4845, !4846, !4848, !4849, !4850, !4852, !4853, !4854, !4855}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1439, file: !249, line: 2367, baseType: !25, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1439, file: !249, line: 2368, baseType: !31, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1439, file: !249, line: 2376, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!31, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !6, line: 90, size: 1216, elements: !1449)
!1449 = !{!1450, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1507, !1508, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1448, file: !6, line: 91, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !6, line: 115, size: 384, elements: !1454)
!1454 = !{!1455, !1459, !1463, !1492, !1496, !1497}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1453, file: !6, line: 116, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1447}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1453, file: !6, line: 117, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!31, !1447, !1447}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1453, file: !6, line: 118, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!31, !1447, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !6, line: 63, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1490, !1491}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1468, file: !6, line: 64, baseType: !25, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !6, line: 65, baseType: !5, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !6, line: 66, baseType: !1473, size: 64, offset: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !6, line: 66, size: 64, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1489}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1473, file: !6, line: 67, baseType: !947, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1473, file: !6, line: 68, baseType: !29, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1473, file: !6, line: 69, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !249, line: 2470, size: 256, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1487}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1479, file: !249, line: 2471, baseType: !25, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1479, file: !249, line: 2472, baseType: !25, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1479, file: !249, line: 2473, baseType: !58, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1479, file: !249, line: 2474, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !249, line: 2469, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1479, file: !249, line: 2475, baseType: !1488, offset: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !1090)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1473, file: !6, line: 70, baseType: !675, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1468, file: !6, line: 72, baseType: !44, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1468, file: !6, line: 73, baseType: !31, size: 32, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1453, file: !6, line: 119, baseType: !1493, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!31, !1447, !29}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1453, file: !6, line: 120, baseType: !1444, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1453, file: !6, line: 121, baseType: !1444, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1448, file: !6, line: 92, baseType: !703, size: 256, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1448, file: !6, line: 93, baseType: !1438, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1448, file: !6, line: 94, baseType: !29, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1448, file: !6, line: 95, baseType: !29, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1448, file: !6, line: 96, baseType: !1193, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1448, file: !6, line: 97, baseType: !801, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1448, file: !6, line: 98, baseType: !1505, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !865, line: 34, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1448, file: !6, line: 99, baseType: !1097, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1448, file: !6, line: 100, baseType: !1509, size: 128, offset: 768)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !6, line: 76, size: 128, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1509, file: !6, line: 77, baseType: !25, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1509, file: !6, line: 78, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !6, line: 173, size: 640, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !4794}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1514, file: !6, line: 174, baseType: !346, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1514, file: !6, line: 175, baseType: !92, size: 8, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1514, file: !6, line: 176, baseType: !92, size: 8, offset: 40)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1514, file: !6, line: 177, baseType: !92, size: 8, offset: 48)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1514, file: !6, line: 178, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !153, line: 402, size: 9216, align: 512, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1530, !3375, !3400, !3401, !3402, !3403, !3407, !3410, !3411, !3412, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3478, !3482, !3502, !3521, !3522, !3523, !3524, !3533, !3556, !3557, !3560, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3574, !3575, !3653, !3661, !3662, !3663, !3665, !4772, !4773, !4782, !4783, !4784, !4785, !4787, !4788, !4789, !4790, !4791, !4792, !4793}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1522, file: !153, line: 403, baseType: !152, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1522, file: !153, line: 406, baseType: !106, size: 128, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1522, file: !153, line: 409, baseType: !1527, size: 448, offset: 192)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 448, elements: !1528)
!1528 = !{!1529}
!1529 = !DISubrange(count: 56)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1522, file: !153, line: 417, baseType: !1531, size: 768, offset: 640)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !153, line: 45, size: 768, elements: !1532)
!1532 = !{!1533, !3369, !3370, !3371, !3374}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1531, file: !153, line: 46, baseType: !1534, size: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1535, line: 64, size: 512, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1536 = !{!1537, !1538, !1539, !1541, !1585, !3220, !3363, !3364, !3365, !3366, !3367, !3368}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1534, file: !1535, line: 65, baseType: !25, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1534, file: !1535, line: 66, baseType: !106, size: 128, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1534, file: !1535, line: 67, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1534, file: !1535, line: 68, baseType: !1542, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1535, line: 168, size: 768, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1543, file: !1535, line: 169, baseType: !106, size: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1543, file: !1535, line: 170, baseType: !68, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1543, file: !1535, line: 171, baseType: !1534, size: 512, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1543, file: !1535, line: 172, baseType: !1549, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1535, line: 133, size: 192, elements: !1552)
!1552 = !{!1553, !1560, !1565}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1551, file: !1535, line: 134, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!31, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1551, file: !1535, line: 135, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!25, !1558}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1551, file: !1535, line: 136, baseType: !1566, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!31, !1558, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1535, line: 125, size: 20736, elements: !1572)
!1572 = !{!1573, !1575, !1579, !1580, !1584}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1571, file: !1535, line: 126, baseType: !1574, size: 192)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 192, elements: !739)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1571, file: !1535, line: 127, baseType: !1576, size: 4096, offset: 192)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 4096, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1571, file: !1535, line: 128, baseType: !31, size: 32, offset: 4288)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1571, file: !1535, line: 129, baseType: !1581, size: 16384, offset: 4320)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16384, elements: !1582)
!1582 = !{!1583}
!1583 = !DISubrange(count: 2048)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1571, file: !1535, line: 130, baseType: !31, size: 32, offset: 20704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1534, file: !1535, line: 69, baseType: !1586, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1535, line: 116, size: 384, elements: !1589)
!1589 = !{!1590, !1594, !1613, !3208, !3212, !3216}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1588, file: !1535, line: 117, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1540}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1588, file: !1535, line: 118, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1598, line: 254, size: 128, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1599 = !{!1600, !1609}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1597, file: !1598, line: 255, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1380, !1540, !1604, !947}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1598, line: 30, size: 128, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !1598, line: 31, baseType: !25, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1605, file: !1598, line: 32, baseType: !33, size: 16, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1597, file: !1598, line: 256, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1380, !1540, !1604, !25, !44}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1588, file: !1535, line: 119, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1598, line: 84, size: 320, elements: !1618)
!1618 = !{!1619, !1620, !1624, !3204, !3206}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1617, file: !1598, line: 85, baseType: !25, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1617, file: !1598, line: 86, baseType: !1621, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!33, !1540, !1604, !31}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1617, file: !1598, line: 88, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!33, !1540, !1628, !31}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1598, line: 175, size: 512, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !3195, !3199, !3200}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1629, file: !1598, line: 176, baseType: !1605, size: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1629, file: !1598, line: 177, baseType: !44, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1629, file: !1598, line: 178, baseType: !29, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1629, file: !1598, line: 179, baseType: !1635, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !249, line: 472, size: 1536, align: 64, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !3187, !3188, !3189, !3192, !3193, !3194}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1639, file: !249, line: 473, baseType: !1228, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1639, file: !249, line: 474, baseType: !780, size: 128, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1639, file: !249, line: 475, baseType: !879, size: 320, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1639, file: !249, line: 476, baseType: !327, size: 32, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1639, file: !249, line: 477, baseType: !58, size: 32, offset: 544)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1639, file: !249, line: 482, baseType: !530, size: 128, offset: 576)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1639, file: !249, line: 483, baseType: !48, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1639, file: !249, line: 484, baseType: !48, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1639, file: !249, line: 485, baseType: !1650, size: 64, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !249, line: 404, size: 1280, elements: !1653)
!1653 = !{!1654, !1982, !2052, !2056, !2060, !2077, !2083, !2087, !2092, !2096, !2100, !2104, !2203, !2207, !2211, !2215, !2220, !2224, !3179, !3183}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1652, file: !249, line: 405, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!31, !1658, !1962}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !123, line: 74, size: 512, align: 128, elements: !1660)
!1660 = !{!1661, !1662, !1956, !1961}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !123, line: 75, baseType: !48, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !123, line: 83, baseType: !1663, size: 320, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !123, line: 83, size: 320, elements: !1664)
!1664 = !{!1665, !1686, !1700, !1704, !1955}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !123, line: 84, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !123, line: 84, size: 320, elements: !1667)
!1667 = !{!1668, !1679, !1680, !1685}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !123, line: 90, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !123, line: 90, size: 128, elements: !1670)
!1670 = !{!1671, !1672, !1677, !1678}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1669, file: !123, line: 91, baseType: !106, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !123, line: 94, baseType: !1673, size: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !123, line: 94, size: 128, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1673, file: !123, line: 96, baseType: !29, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1673, file: !123, line: 98, baseType: !7, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1669, file: !123, line: 102, baseType: !106, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1669, file: !123, line: 103, baseType: !106, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1666, file: !123, line: 106, baseType: !1638, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !123, line: 107, baseType: !1681, size: 64, offset: 192)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !123, line: 107, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1681, file: !123, line: 108, baseType: !48, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1681, file: !123, line: 109, baseType: !48, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1666, file: !123, line: 117, baseType: !48, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !123, line: 119, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !123, line: 119, size: 320, elements: !1688)
!1688 = !{!1689, !1690, !1693, !1694, !1695}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1687, file: !123, line: 124, baseType: !48, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1687, file: !123, line: 125, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !123, line: 125, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1687, file: !123, line: 126, baseType: !48, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1687, file: !123, line: 127, baseType: !48, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !123, line: 128, baseType: !1696, size: 64, offset: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !123, line: 128, size: 64, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1696, file: !123, line: 133, baseType: !48, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1696, file: !123, line: 138, baseType: !696, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !123, line: 141, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !123, line: 141, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1701, file: !123, line: 142, baseType: !48, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !123, line: 144, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !123, line: 144, size: 128, elements: !1706)
!1706 = !{!1707, !1954}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1705, file: !123, line: 146, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !139, line: 126, size: 1216, elements: !1710)
!1710 = !{!1711, !1721, !1742, !1743, !1744, !1745, !1746, !1936, !1937, !1938}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1709, file: !139, line: 127, baseType: !1712, size: 384)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !139, line: 21, size: 384, elements: !1713)
!1713 = !{!1714, !1715, !1717, !1718, !1719, !1720}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1712, file: !139, line: 22, baseType: !48, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1712, file: !139, line: 23, baseType: !1716, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1712, file: !139, line: 24, baseType: !1716, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1712, file: !139, line: 25, baseType: !48, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1712, file: !139, line: 26, baseType: !48, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1712, file: !139, line: 27, baseType: !48, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1709, file: !139, line: 128, baseType: !1722, size: 128, offset: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1723, line: 105, size: 128, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1722, file: !1723, line: 110, baseType: !48, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1722, file: !1723, line: 118, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1723, line: 95, size: 448, elements: !1729)
!1729 = !{!1730, !1731, !1737, !1738, !1739, !1740, !1741}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1728, file: !1723, line: 96, baseType: !696, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1728, file: !1723, line: 97, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1723, line: 60, baseType: !1734)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1728, file: !1723, line: 98, baseType: !1732, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1728, file: !1723, line: 99, baseType: !859, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1728, file: !1723, line: 100, baseType: !859, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1728, file: !1723, line: 101, baseType: !683, size: 128, align: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1728, file: !1723, line: 102, baseType: !1736, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1709, file: !139, line: 129, baseType: !1025, size: 256, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !139, line: 130, baseType: !138, size: 32, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !139, line: 131, baseType: !7, size: 32, offset: 800)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1709, file: !139, line: 132, baseType: !48, size: 64, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1709, file: !139, line: 133, baseType: !1747, size: 64, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !139, line: 77, size: 192, elements: !1750)
!1750 = !{!1751, !1755, !1932}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1749, file: !139, line: 83, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1658}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1749, file: !139, line: 89, baseType: !1756, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !123, line: 1184, baseType: !7)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1762, line: 512, size: 896, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1763 = !{!1764, !1899, !1900, !1907, !1914, !1924, !1925, !1926, !1928, !1930}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !1762, line: 513, baseType: !1765, size: 320)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !1762, line: 513, size: 320, elements: !1766)
!1766 = !{!1767, !1895, !1896, !1897, !1898}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1765, file: !1762, line: 514, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !123, line: 625, size: 1344, elements: !1770)
!1770 = !{!1771, !1780, !1781, !1789, !1796, !1797, !1802, !1803, !1808, !1809, !1812, !1888, !1889, !1890, !1891, !1892, !1893}
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !123, line: 628, baseType: !1772, size: 128)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !123, line: 628, size: 128, elements: !1773)
!1773 = !{!1774, !1779}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !123, line: 629, baseType: !1775, size: 128)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1772, file: !123, line: 629, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1775, file: !123, line: 631, baseType: !48, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1775, file: !123, line: 632, baseType: !48, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1772, file: !123, line: 635, baseType: !683, size: 128, align: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1769, file: !123, line: 639, baseType: !647, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1769, file: !123, line: 640, baseType: !1782, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1783, line: 297, baseType: !1784)
!1783 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1783, line: 297, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1784, file: !1783, line: 297, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1788, line: 19, baseType: !48)
!1788 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !123, line: 646, baseType: !1790, size: 64, offset: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !123, line: 646, size: 64, elements: !1791)
!1791 = !{!1792, !1795}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1790, file: !123, line: 647, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !123, line: 542, baseType: !48)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1790, file: !123, line: 648, baseType: !1794, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1769, file: !123, line: 666, baseType: !31, size: 32, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1769, file: !123, line: 667, baseType: !1798, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !123, line: 579, size: 320, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1799, file: !123, line: 580, baseType: !879, size: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1769, file: !123, line: 670, baseType: !859, size: 8, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1769, file: !123, line: 681, baseType: !1804, size: 256, offset: 512)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !123, line: 678, size: 256, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1804, file: !123, line: 679, baseType: !390, size: 192, align: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1804, file: !123, line: 680, baseType: !48, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1769, file: !123, line: 689, baseType: !106, size: 128, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1769, file: !123, line: 691, baseType: !1810, size: 64, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !123, line: 691, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1769, file: !123, line: 694, baseType: !1813, size: 64, offset: 960)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1762, line: 563, size: 1024, elements: !1816)
!1816 = !{!1817, !1821, !1822, !1826, !1830, !1834, !1835, !1839, !1843, !1847, !1848, !1849, !1853, !1857, !1880, !1884}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1815, file: !1762, line: 564, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1768}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1815, file: !1762, line: 569, baseType: !1818, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1815, file: !1762, line: 571, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!31, !1768, !48}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1815, file: !1762, line: 572, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!31, !1768}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1815, file: !1762, line: 578, baseType: !1831, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!31, !1768, !48, !48, !48}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1815, file: !1762, line: 580, baseType: !1756, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1815, file: !1762, line: 581, baseType: !1836, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1759, !1760, !7}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1815, file: !1762, line: 582, baseType: !1840, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1759, !1760, !48, !48}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1815, file: !1762, line: 584, baseType: !1844, size: 64, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!48, !1768}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1815, file: !1762, line: 588, baseType: !1756, size: 64, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1815, file: !1762, line: 591, baseType: !1756, size: 64, offset: 640)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1815, file: !1762, line: 597, baseType: !1850, size: 64, offset: 704)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!31, !1768, !48, !29, !31, !31}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1815, file: !1762, line: 603, baseType: !1854, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!25, !1768}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1815, file: !1762, line: 613, baseType: !1858, size: 64, offset: 832)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!31, !1768, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1863, line: 44, size: 256, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1864 = !{!1865, !1866, !1867, !1868, !1874, !1875}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1862, file: !1863, line: 45, baseType: !58, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1862, file: !1863, line: 46, baseType: !35, size: 16, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !1863, line: 47, baseType: !35, size: 16, offset: 48)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1862, file: !1863, line: 48, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1870, line: 99, baseType: !1871)
!1870 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1870, line: 99, size: 64, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1871, file: !1870, line: 99, baseType: !598, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1862, file: !1863, line: 49, baseType: !31, size: 32, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1862, file: !1863, line: 54, baseType: !1876, size: 64, offset: 192)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1863, line: 51, size: 64, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1876, file: !1863, line: 52, baseType: !1869, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1876, file: !1863, line: 53, baseType: !1869, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1815, file: !1762, line: 625, baseType: !1881, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1861, !1768, !48}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1815, file: !1762, line: 633, baseType: !1885, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1658, !1768, !48}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1769, file: !123, line: 697, baseType: !48, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1769, file: !123, line: 699, baseType: !675, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1769, file: !123, line: 700, baseType: !29, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1769, file: !123, line: 711, baseType: !696, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1769, file: !123, line: 717, baseType: !1861, size: 64, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1769, file: !123, line: 722, baseType: !1894, offset: 1344)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !123, line: 570, elements: !668)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1765, file: !1762, line: 515, baseType: !327, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1765, file: !1762, line: 516, baseType: !48, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1765, file: !1762, line: 517, baseType: !48, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1765, file: !1762, line: 518, baseType: !48, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 520, baseType: !122, size: 32, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1761, file: !1762, line: 522, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1788, line: 22, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 22, size: 64, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1903, file: !1788, line: 22, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1788, line: 15, baseType: !48)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1761, file: !1762, line: 524, baseType: !1908, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1783, line: 372, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1783, line: 372, size: 64, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1910, file: !1783, line: 372, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1788, line: 16, baseType: !48)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !1762, line: 527, baseType: !1915, size: 64, offset: 512)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !1762, line: 527, size: 64, elements: !1916)
!1916 = !{!1917, !1923}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1915, file: !1762, line: 528, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1788, line: 21, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 21, size: 64, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1919, file: !1788, line: 21, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1788, line: 14, baseType: !48)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1915, file: !1762, line: 529, baseType: !1902, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1761, file: !1762, line: 534, baseType: !1658, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1761, file: !1762, line: 535, baseType: !1658, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1761, file: !1762, line: 541, baseType: !1927, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1761, file: !1762, line: 545, baseType: !1929, size: 64, offset: 768)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1761, file: !1762, line: 549, baseType: !1931, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1783, line: 520, baseType: !1658)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1749, file: !139, line: 100, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!31, !1708, !48, !48, !31}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1709, file: !139, line: 134, baseType: !29, size: 64, offset: 960)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1709, file: !139, line: 135, baseType: !31, size: 32, offset: 1024)
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !139, line: 136, baseType: !1939, size: 128, offset: 1088)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !139, line: 136, size: 128, elements: !1940)
!1940 = !{!1941, !1947}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1939, file: !139, line: 137, baseType: !1942, size: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1943, line: 6, size: 128, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1942, file: !1943, line: 7, baseType: !398, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1942, file: !1943, line: 8, baseType: !398, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1939, file: !139, line: 138, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1939, file: !139, line: 138, elements: !1949)
!1949 = !{!1950, !1952}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1948, file: !139, line: 138, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1948, file: !139, line: 138, elements: !668)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1948, file: !139, line: 138, baseType: !1953)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1942, elements: !1090)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1705, file: !123, line: 147, baseType: !29, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1663, file: !123, line: 161, baseType: !683, size: 128, align: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !123, line: 164, baseType: !1957, size: 32, offset: 384)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !123, line: 164, size: 32, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1957, file: !123, line: 169, baseType: !58, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1957, file: !123, line: 177, baseType: !7, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1659, file: !123, line: 181, baseType: !58, size: 32, offset: 416)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !244, line: 42, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1963, file: !244, line: 43, baseType: !323, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1963, file: !244, line: 45, baseType: !323, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1963, file: !244, line: 52, baseType: !50, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1963, file: !244, line: 53, baseType: !50, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1963, file: !244, line: 55, baseType: !243, size: 32, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1963, file: !244, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1963, file: !244, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1963, file: !244, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1963, file: !244, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1963, file: !244, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1963, file: !244, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1963, file: !244, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1963, file: !244, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1963, file: !244, line: 78, baseType: !1979, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !244, line: 78, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1652, file: !249, line: 406, baseType: !1983, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!31, !675, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !123, line: 293, size: 1536, elements: !1988)
!1988 = !{!1989, !2019, !2033}
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !123, line: 295, baseType: !1990, size: 512)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !123, line: 295, size: 512, elements: !1991)
!1991 = !{!1992, !2018}
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !123, line: 296, baseType: !1993, size: 448)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !123, line: 296, size: 448, elements: !1994)
!1994 = !{!1995, !1996, !2005, !2006, !2007, !2016, !2017}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1993, file: !123, line: 298, baseType: !48, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !123, line: 299, baseType: !1997, size: 128, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !123, line: 299, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1997, file: !123, line: 300, baseType: !106, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !123, line: 302, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !123, line: 302, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2001, file: !123, line: 303, baseType: !29, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2001, file: !123, line: 305, baseType: !7, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1993, file: !123, line: 310, baseType: !1638, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1993, file: !123, line: 311, baseType: !48, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !123, line: 312, baseType: !2008, size: 64, offset: 320)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !123, line: 312, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2008, file: !123, line: 313, baseType: !29, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2008, file: !123, line: 314, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !123, line: 257, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 255, size: 64, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2013, file: !123, line: 256, baseType: !48, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1993, file: !123, line: 316, baseType: !58, size: 32, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1993, file: !123, line: 317, baseType: !58, size: 32, offset: 416)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1990, file: !123, line: 323, baseType: !1659, size: 512, align: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !123, line: 325, baseType: !2020, size: 512, offset: 512)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !123, line: 325, size: 512, elements: !2021)
!2021 = !{!2022, !2032}
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !123, line: 326, baseType: !2023, size: 320)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !123, line: 326, size: 320, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2023, file: !123, line: 327, baseType: !48, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2023, file: !123, line: 328, baseType: !48, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2023, file: !123, line: 329, baseType: !48, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2023, file: !123, line: 331, baseType: !58, size: 32, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2023, file: !123, line: 332, baseType: !58, size: 32, offset: 224)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2023, file: !123, line: 333, baseType: !58, size: 32, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2023, file: !123, line: 335, baseType: !7, size: 32, offset: 288)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2020, file: !123, line: 339, baseType: !1659, size: 512, align: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !123, line: 341, baseType: !2034, size: 512, offset: 1024)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !123, line: 341, size: 512, elements: !2035)
!2035 = !{!2036, !2045, !2051}
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !123, line: 342, baseType: !2037, size: 384)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !123, line: 342, size: 384, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2037, file: !123, line: 343, baseType: !48, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2037, file: !123, line: 344, baseType: !48, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2037, file: !123, line: 346, baseType: !29, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2037, file: !123, line: 347, baseType: !29, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2037, file: !123, line: 348, baseType: !29, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2037, file: !123, line: 349, baseType: !29, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !123, line: 352, baseType: !2046, size: 256)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !123, line: 352, size: 256, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2046, file: !123, line: 353, baseType: !48, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2046, file: !123, line: 354, baseType: !48, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2046, file: !123, line: 356, baseType: !106, size: 128, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2034, file: !123, line: 359, baseType: !1659, size: 512, align: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1652, file: !249, line: 409, baseType: !2053, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!31, !1638, !1962}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1652, file: !249, line: 412, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!859, !1638, !1986}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1652, file: !249, line: 414, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2066, line: 1276, size: 448, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2067 = !{!2068, !2069, !2070, !2072, !2073, !2074, !2075, !2076}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2065, file: !2066, line: 1277, baseType: !675, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2065, file: !2066, line: 1278, baseType: !1638, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !2065, file: !2066, line: 1279, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !2065, file: !2066, line: 1281, baseType: !48, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !2065, file: !2066, line: 1282, baseType: !7, size: 32, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !2065, file: !2066, line: 1283, baseType: !7, size: 32, offset: 288)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !2065, file: !2066, line: 1284, baseType: !859, size: 8, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !2065, file: !2066, line: 1285, baseType: !48, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1652, file: !249, line: 416, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!31, !675, !1638, !50, !7, !2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1652, file: !249, line: 419, baseType: !2084, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!31, !675, !1638, !50, !7, !7, !1658, !29}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1652, file: !249, line: 424, baseType: !2088, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!2091, !1638, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !34, line: 131, baseType: !398)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1652, file: !249, line: 425, baseType: !2093, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !1986, !44, !44}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1652, file: !249, line: 426, baseType: !2097, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!859, !1986, !327}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1652, file: !249, line: 427, baseType: !2101, size: 64, offset: 640)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !1986}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1652, file: !249, line: 428, baseType: !2105, size: 64, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!1380, !2108, !2146}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !249, line: 373, size: 384, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2117, !2118, !2119, !2120}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2109, file: !249, line: 374, baseType: !675, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2109, file: !249, line: 375, baseType: !50, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2109, file: !249, line: 376, baseType: !2114, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2108, !323}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2109, file: !249, line: 377, baseType: !29, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2109, file: !249, line: 378, baseType: !31, size: 32, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2109, file: !249, line: 379, baseType: !102, size: 16, offset: 288)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !249, line: 380, baseType: !2121, size: 64, offset: 320)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2109, file: !249, line: 380, size: 64, elements: !2122)
!2122 = !{!2123, !2142}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2121, file: !249, line: 386, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2066, line: 998, size: 448, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2125, file: !2066, line: 999, baseType: !1986, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2125, file: !2066, line: 1000, baseType: !31, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2125, file: !2066, line: 1001, baseType: !2130, size: 320, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !64, line: 14, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !64, line: 30, size: 320, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2141}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2131, file: !64, line: 31, baseType: !7, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2131, file: !64, line: 32, baseType: !29, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2131, file: !64, line: 33, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !64, line: 16, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!31, !2140, !7, !31, !29}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2131, file: !64, line: 34, baseType: !106, size: 128, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2121, file: !249, line: 395, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!1380, !29}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2148, line: 41, size: 320, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2160, !2198}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2147, file: !2148, line: 42, baseType: !92, size: 8)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2147, file: !2148, line: 43, baseType: !859, size: 8, offset: 8)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2147, file: !2148, line: 44, baseType: !859, size: 8, offset: 16)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2147, file: !2148, line: 45, baseType: !859, size: 8, offset: 24)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2147, file: !2148, line: 46, baseType: !859, size: 8, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2148, line: 47, baseType: !2156, size: 64, offset: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2148, line: 47, size: 64, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2156, file: !2148, line: 48, baseType: !44, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2156, file: !2148, line: 49, baseType: !31, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2148, line: 61, baseType: !2161, size: 128, offset: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2148, line: 61, size: 128, elements: !2162)
!2162 = !{!2163, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2161, file: !2148, line: 67, baseType: !2164, size: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2165, line: 17, size: 128, elements: !2166)
!2165 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2164, file: !2165, line: 19, baseType: !29, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2164, file: !2165, line: 20, baseType: !45, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, scope: !2161, file: !2148, line: 68, baseType: !2170, size: 128)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2148, line: 68, size: 128, elements: !2171)
!2171 = !{!2172, !2197}
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2170, file: !2148, line: 69, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2170, file: !2148, line: 69, size: 64, elements: !2174)
!2174 = !{!2175, !2178, !2185, !2194, !2196}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2173, file: !2148, line: 71, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2173, file: !2148, line: 72, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2148, line: 17, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2181, file: !2148, line: 18, baseType: !29, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2181, file: !2148, line: 19, baseType: !44, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2173, file: !2148, line: 73, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2189, line: 31, size: 128, elements: !2190)
!2189 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2188, file: !2189, line: 32, baseType: !1658, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2188, file: !2189, line: 33, baseType: !7, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2188, file: !2189, line: 34, baseType: !7, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2173, file: !2148, line: 74, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2173, file: !2148, line: 75, baseType: !29, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2170, file: !2148, line: 77, baseType: !44, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2148, line: 80, baseType: !2199, size: 64, offset: 256)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !2148, line: 80, size: 64, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2199, file: !2148, line: 81, baseType: !48, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2199, file: !2148, line: 82, baseType: !50, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1652, file: !249, line: 433, baseType: !2204, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!31, !1638, !1986, !1986, !259}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1652, file: !249, line: 435, baseType: !2208, size: 64, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!31, !1986}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1652, file: !249, line: 436, baseType: !2212, size: 64, offset: 896)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!859, !1986, !44, !44}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1652, file: !249, line: 438, baseType: !2216, size: 64, offset: 960)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !1986, !2219, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1652, file: !249, line: 439, baseType: !2221, size: 64, offset: 1024)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!31, !1638, !1658}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1652, file: !249, line: 442, baseType: !2225, size: 64, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!31, !2228, !675, !2479}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2230, line: 282, size: 2176, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2238, !2239, !2241, !2248, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2261, !2267, !2268, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2229, file: !2230, line: 283, baseType: !1722, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2229, file: !2230, line: 284, baseType: !48, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2229, file: !2230, line: 285, baseType: !907, size: 16, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2229, file: !2230, line: 286, baseType: !639, size: 320, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !2230, line: 287, baseType: !2237, size: 8, offset: 576)
!2237 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2229, file: !2230, line: 288, baseType: !7, size: 32, offset: 608)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2229, file: !2230, line: 289, baseType: !2240, size: 64, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2229, file: !2230, line: 290, baseType: !2242, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2230, line: 250, size: 64, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2243, file: !2230, line: 251, baseType: !68, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2243, file: !2230, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2243, file: !2230, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2229, file: !2230, line: 291, baseType: !2249, size: 128, offset: 768)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2230, line: 274, size: 128, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2249, file: !2230, line: 275, baseType: !2243, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2249, file: !2230, line: 276, baseType: !2243, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2229, file: !2230, line: 292, baseType: !7, size: 32, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2229, file: !2230, line: 293, baseType: !7, size: 32, offset: 928)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2229, file: !2230, line: 294, baseType: !7, size: 32, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2229, file: !2230, line: 295, baseType: !7, size: 32, offset: 992)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2229, file: !2230, line: 296, baseType: !7, size: 32, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2229, file: !2230, line: 297, baseType: !7, size: 32, offset: 1056)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2229, file: !2230, line: 298, baseType: !2260, size: 64, offset: 1088)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2229, file: !2230, line: 299, baseType: !2262, size: 64, offset: 1152)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2230, line: 269, size: 96, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2263, file: !2230, line: 270, baseType: !2243, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2263, file: !2230, line: 271, baseType: !7, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2229, file: !2230, line: 300, baseType: !533, size: 64, offset: 1216)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2229, file: !2230, line: 301, baseType: !2269, size: 64, offset: 1280)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2271, line: 40, size: 7424, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2272 = !{!2273, !2274, !2275, !3124, !3125, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3168, !3169}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2270, file: !2271, line: 41, baseType: !2091, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2270, file: !2271, line: 42, baseType: !2091, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2270, file: !2271, line: 43, baseType: !2276, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !147, line: 128, size: 4544, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2286, !2287, !2288, !2289, !2290, !2480, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3088, !3089, !3090, !3091, !3094, !3095, !3098, !3101, !3102, !3105, !3108, !3109, !3110}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2277, file: !147, line: 133, baseType: !31, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2277, file: !147, line: 134, baseType: !31, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2277, file: !147, line: 135, baseType: !31, size: 32, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2277, file: !147, line: 137, baseType: !2283, size: 256, offset: 96)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2277, file: !147, line: 139, baseType: !35, size: 16, offset: 352)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2277, file: !147, line: 140, baseType: !35, size: 16, offset: 368)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2277, file: !147, line: 142, baseType: !780, size: 128, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2277, file: !147, line: 143, baseType: !2269, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2277, file: !147, line: 145, baseType: !2291, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !147, line: 1388, size: 1152, elements: !2294)
!2294 = !{!2295, !2385, !2400, !2405, !2409, !2413, !2414, !2418, !2419, !2425, !2429, !2430, !2434, !2460, !2465, !2470, !2471, !2475}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2293, file: !147, line: 1389, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2271, line: 265, size: 960, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2306, !2307, !2308, !2310, !2311, !2318, !2320, !2323, !2324, !2327, !2331, !2332, !2334, !2335, !2336, !2337, !2339, !2383}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2300, file: !2271, line: 266, baseType: !2299, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2300, file: !2271, line: 267, baseType: !2269, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2300, file: !2271, line: 268, baseType: !2305, size: 32, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2271, line: 256, baseType: !341)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2300, file: !2271, line: 271, baseType: !35, size: 16, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2300, file: !2271, line: 272, baseType: !35, size: 16, offset: 176)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2300, file: !2271, line: 273, baseType: !2309, size: 8, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2271, line: 97, baseType: !92)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2300, file: !2271, line: 274, baseType: !58, size: 32, offset: 224)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2300, file: !2271, line: 276, baseType: !2312, size: 160, align: 32, offset: 256)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2189, line: 77, size: 160, align: 32, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2312, file: !2189, line: 78, baseType: !2091, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2312, file: !2189, line: 80, baseType: !7, size: 32, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2312, file: !2189, line: 82, baseType: !7, size: 32, offset: 96)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2312, file: !2189, line: 84, baseType: !7, size: 32, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2300, file: !2271, line: 278, baseType: !2319, size: 32, offset: 416)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2271, line: 258, baseType: !7)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2300, file: !2271, line: 279, baseType: !2321, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2271, line: 20, baseType: !2297)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2300, file: !2271, line: 280, baseType: !29, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2300, file: !2271, line: 288, baseType: !2325, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2271, line: 288, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2300, file: !2271, line: 289, baseType: !2328, size: 64, offset: 640)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2271, line: 228, size: 64, elements: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2328, file: !2271, line: 229, baseType: !398, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2300, file: !2271, line: 291, baseType: !398, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2271, line: 299, baseType: !2333, offset: 768)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !2271, line: 299, elements: !668)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2300, file: !2271, line: 305, baseType: !35, size: 16, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2300, file: !2271, line: 311, baseType: !35, size: 16, offset: 784)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2300, file: !2271, line: 313, baseType: !58, size: 32, offset: 800)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2300, file: !2271, line: 315, baseType: !2338, size: 64, offset: 832)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2300, file: !2271, line: 317, baseType: !2340, size: 64, offset: 896)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2342, line: 678, size: 1984, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2343 = !{!2344, !2345, !2346, !2349, !2370, !2371, !2372, !2373, !2378, !2379, !2382}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2341, file: !2342, line: 679, baseType: !792, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2341, file: !2342, line: 680, baseType: !7, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2341, file: !2342, line: 685, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2342, line: 685, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2341, file: !2342, line: 687, baseType: !2350, size: 576, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2351, line: 26, baseType: !2352)
!2351 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2351, line: 16, size: 576, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2364, !2369}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2352, file: !2351, line: 17, baseType: !68, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2352, file: !2351, line: 18, baseType: !31, size: 32, offset: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2352, file: !2351, line: 19, baseType: !31, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2352, file: !2351, line: 20, baseType: !2082, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2352, file: !2351, line: 22, baseType: !29, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2352, file: !2351, line: 23, baseType: !2360, size: 64, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2351, line: 13, baseType: !2362)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!29, !327, !29}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2352, file: !2351, line: 24, baseType: !2365, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2351, line: 14, baseType: !2367)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !29, !29}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2352, file: !2351, line: 25, baseType: !63, size: 192, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2341, file: !2342, line: 688, baseType: !2350, size: 576, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2341, file: !2342, line: 694, baseType: !7, size: 32, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2341, file: !2342, line: 699, baseType: !68, size: 32, offset: 1376)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2341, file: !2342, line: 700, baseType: !2374, size: 128, offset: 1408)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2342, line: 550, size: 128, elements: !2375)
!2375 = !{!2376, !2377}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2374, file: !2342, line: 551, baseType: !2299, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2374, file: !2342, line: 552, baseType: !2299, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2341, file: !2342, line: 701, baseType: !986, size: 256, offset: 1536)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2341, file: !2342, line: 702, baseType: !2380, size: 64, offset: 1792)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !987, line: 18, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2341, file: !2342, line: 707, baseType: !755, size: 128, offset: 1856)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2300, file: !2271, line: 324, baseType: !2384, offset: 960)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, elements: !1090)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2293, file: !147, line: 1390, baseType: !2386, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!31, !2299, !2389, !7}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !147, line: 1559, size: 192, elements: !2391)
!2391 = !{!2392, !2395, !2396}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2390, file: !147, line: 1560, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !147, line: 32, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2390, file: !147, line: 1561, baseType: !859, size: 8, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2390, file: !147, line: 1562, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !2389}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2293, file: !147, line: 1392, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!31, !2276, !2404}
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !147, line: 115, baseType: !7)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2293, file: !147, line: 1393, baseType: !2406, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2276}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2293, file: !147, line: 1394, baseType: !2410, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!31, !2269, !2404, !7, !48}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2293, file: !147, line: 1396, baseType: !2410, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2293, file: !147, line: 1398, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!7, !2276, !7}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2293, file: !147, line: 1400, baseType: !2406, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2293, file: !147, line: 1401, baseType: !2420, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!31, !2269, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !249, line: 56, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2293, file: !147, line: 1402, baseType: !2426, size: 64, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!31, !2269, !859}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2293, file: !147, line: 1403, baseType: !2406, size: 64, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2293, file: !147, line: 1405, baseType: !2431, size: 64, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !2269, !48}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2293, file: !147, line: 1406, baseType: !2435, size: 64, offset: 768)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!31, !2276, !2091, !7, !2438, !29}
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !147, line: 342, baseType: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!31, !2442, !7, !29}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2444, line: 106, size: 512, elements: !2445)
!2444 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2455, !2456}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2443, file: !2444, line: 107, baseType: !399, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2443, file: !2444, line: 108, baseType: !399, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2443, file: !2444, line: 109, baseType: !399, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !2444, line: 110, baseType: !94, size: 8, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2443, file: !2444, line: 111, baseType: !94, size: 8, offset: 200)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2443, file: !2444, line: 112, baseType: !94, size: 8, offset: 208)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2443, file: !2444, line: 113, baseType: !94, size: 8, offset: 216)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2443, file: !2444, line: 114, baseType: !2454, size: 32, offset: 224)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 32, elements: !760)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2443, file: !2444, line: 115, baseType: !399, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2443, file: !2444, line: 116, baseType: !2457, size: 192, offset: 320)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 192, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 24)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2293, file: !147, line: 1408, baseType: !2461, size: 64, offset: 832)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!947, !2276, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2293, file: !147, line: 1410, baseType: !2466, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!31, !2276, !2469, !146}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2293, file: !147, line: 1412, baseType: !1521, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2293, file: !147, line: 1413, baseType: !2472, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2474)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !147, line: 37, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2293, file: !147, line: 1420, baseType: !2476, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!31, !2276, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2277, file: !147, line: 146, baseType: !2481, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !147, line: 391, size: 7296, elements: !2483)
!2483 = !{!2484, !2485, !2488, !2489, !2492, !2495, !2496, !2500, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2949, !2950, !2951, !2952, !2953, !2954, !2987, !2988, !2989, !2992, !2995, !2996, !2997, !2998, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3017, !3018, !3019, !3020, !3021, !3022}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2482, file: !147, line: 392, baseType: !2393, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2482, file: !147, line: 393, baseType: !2486, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !147, line: 30, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2482, file: !147, line: 395, baseType: !1722, size: 128, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2482, file: !147, line: 397, baseType: !2490, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !147, line: 39, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2482, file: !147, line: 398, baseType: !2493, size: 64, offset: 320)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !147, line: 38, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2482, file: !147, line: 399, baseType: !703, size: 256, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2482, file: !147, line: 401, baseType: !2497, size: 64, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2499)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !147, line: 401, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2482, file: !147, line: 404, baseType: !2501, size: 64, offset: 704)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !147, line: 404, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2482, file: !147, line: 406, baseType: !7, size: 32, offset: 768)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2482, file: !147, line: 409, baseType: !780, size: 128, offset: 832)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2482, file: !147, line: 410, baseType: !7, size: 32, offset: 960)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2482, file: !147, line: 416, baseType: !29, size: 64, offset: 1024)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2482, file: !147, line: 421, baseType: !48, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2482, file: !147, line: 426, baseType: !58, size: 32, offset: 1152)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2482, file: !147, line: 432, baseType: !31, size: 32, offset: 1184)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2482, file: !147, line: 434, baseType: !68, size: 32, offset: 1216)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2482, file: !147, line: 436, baseType: !2276, size: 64, offset: 1280)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2482, file: !147, line: 438, baseType: !346, size: 32, offset: 1344)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2482, file: !147, line: 443, baseType: !1540, size: 64, offset: 1408)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2482, file: !147, line: 450, baseType: !2515, size: 64, offset: 1472)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !279, line: 705, size: 5824, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2669, !2670, !2684, !2685, !2686, !2687, !2688, !2689, !2696, !2799, !2812, !2822, !2826, !2828, !2829, !2830, !2834, !2841, !2842, !2845, !2848, !2852, !2855, !2856, !2857, !2858, !2859, !2860, !2916, !2917, !2918, !2921, !2924, !2933, !2934, !2935, !2936, !2937, !2938}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2516, file: !279, line: 706, baseType: !1534, size: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2516, file: !279, line: 707, baseType: !2515, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2516, file: !279, line: 709, baseType: !2521, size: 64, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2523, line: 108, size: 1728, elements: !2524)
!2523 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!2524 = !{!2525, !2546, !2547, !2548, !2549, !2550, !2551, !2666, !2667, !2668}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !2522, file: !2523, line: 109, baseType: !2526, size: 320, align: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !2527, line: 18, size: 320, align: 64, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!2528 = !{!2529, !2530, !2531, !2545}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !2526, file: !2527, line: 19, baseType: !68, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !2526, file: !2527, line: 20, baseType: !106, size: 128, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2526, file: !2527, line: 21, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !2527, line: 37, size: 256, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !2536, file: !2527, line: 38, baseType: !29, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !2536, file: !2527, line: 39, baseType: !106, size: 128, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !2536, file: !2527, line: 40, baseType: !2541, size: 32, offset: 192)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2542, line: 19, size: 32, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2541, file: !2542, line: 20, baseType: !346, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2526, file: !2527, line: 22, baseType: !2532, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !2522, file: !2523, line: 110, baseType: !2536, size: 256, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !2522, file: !2523, line: 111, baseType: !2536, size: 256, offset: 576)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2522, file: !2523, line: 112, baseType: !2536, size: 256, offset: 832)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !2522, file: !2523, line: 113, baseType: !2536, size: 256, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !2522, file: !2523, line: 114, baseType: !106, size: 128, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !2522, file: !2523, line: 115, baseType: !2552, size: 64, offset: 1472)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !273, line: 96, size: 1152, elements: !2554)
!2554 = !{!2555, !2556, !2634, !2635, !2636, !2637, !2638, !2642, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2553, file: !273, line: 97, baseType: !25, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2553, file: !273, line: 98, baseType: !2557, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2560, line: 80, size: 1344, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2571, !2577, !2581, !2585, !2586, !2587, !2588, !2589, !2597, !2598, !2599, !2600, !2601, !2629, !2633}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2559, file: !2560, line: 81, baseType: !25, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2559, file: !2560, line: 82, baseType: !25, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2559, file: !2560, line: 83, baseType: !1614, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2559, file: !2560, line: 84, baseType: !1614, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2559, file: !2560, line: 85, baseType: !1614, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2559, file: !2560, line: 87, baseType: !2568, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!31, !2515, !2552}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2559, file: !2560, line: 88, baseType: !2572, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!31, !2575, !1570}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2559, file: !2560, line: 89, baseType: !2578, size: 64, offset: 448)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!31, !2515}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2559, file: !2560, line: 90, baseType: !2582, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2515}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2559, file: !2560, line: 91, baseType: !2582, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2559, file: !2560, line: 92, baseType: !2582, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2559, file: !2560, line: 94, baseType: !2578, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2559, file: !2560, line: 95, baseType: !2578, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2559, file: !2560, line: 97, baseType: !2590, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!31, !2515, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !186, line: 60, baseType: !2594)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !186, line: 58, size: 32, elements: !2595)
!2595 = !{!2596}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2594, file: !186, line: 59, baseType: !31, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2559, file: !2560, line: 98, baseType: !2578, size: 64, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2559, file: !2560, line: 100, baseType: !2578, size: 64, offset: 960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2559, file: !2560, line: 102, baseType: !2578, size: 64, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2559, file: !2560, line: 103, baseType: !2582, size: 64, offset: 1088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2559, file: !2560, line: 105, baseType: !2602, size: 64, offset: 1152)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !186, line: 286, size: 1472, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2604, file: !186, line: 287, baseType: !2578, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2604, file: !186, line: 288, baseType: !2582, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2604, file: !186, line: 289, baseType: !2578, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2604, file: !186, line: 290, baseType: !2578, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2604, file: !186, line: 291, baseType: !2578, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2604, file: !186, line: 292, baseType: !2578, size: 64, offset: 320)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2604, file: !186, line: 293, baseType: !2578, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2604, file: !186, line: 294, baseType: !2578, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2604, file: !186, line: 295, baseType: !2578, size: 64, offset: 512)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2604, file: !186, line: 296, baseType: !2578, size: 64, offset: 576)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2604, file: !186, line: 297, baseType: !2578, size: 64, offset: 640)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2604, file: !186, line: 298, baseType: !2578, size: 64, offset: 704)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2604, file: !186, line: 299, baseType: !2578, size: 64, offset: 768)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2604, file: !186, line: 300, baseType: !2578, size: 64, offset: 832)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2604, file: !186, line: 301, baseType: !2578, size: 64, offset: 896)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2604, file: !186, line: 302, baseType: !2578, size: 64, offset: 960)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2604, file: !186, line: 303, baseType: !2578, size: 64, offset: 1024)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2604, file: !186, line: 304, baseType: !2578, size: 64, offset: 1088)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2604, file: !186, line: 305, baseType: !2578, size: 64, offset: 1152)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2604, file: !186, line: 306, baseType: !2578, size: 64, offset: 1216)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2604, file: !186, line: 307, baseType: !2578, size: 64, offset: 1280)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2604, file: !186, line: 308, baseType: !2578, size: 64, offset: 1344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2604, file: !186, line: 309, baseType: !2578, size: 64, offset: 1408)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2559, file: !2560, line: 107, baseType: !2630, size: 64, offset: 1216)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2560, line: 107, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2559, file: !2560, line: 109, baseType: !859, size: 8, offset: 1280)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2553, file: !273, line: 100, baseType: !1521, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2553, file: !273, line: 101, baseType: !25, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2553, file: !273, line: 103, baseType: !859, size: 8, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2553, file: !273, line: 104, baseType: !272, size: 32, offset: 288)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2553, file: !273, line: 106, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2641)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !273, line: 106, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2553, file: !273, line: 107, baseType: !2643, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2645)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !273, line: 107, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2553, file: !273, line: 109, baseType: !2578, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2553, file: !273, line: 110, baseType: !2582, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2553, file: !273, line: 111, baseType: !2578, size: 64, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2553, file: !273, line: 112, baseType: !2582, size: 64, offset: 640)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2553, file: !273, line: 113, baseType: !2590, size: 64, offset: 704)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2553, file: !273, line: 114, baseType: !2578, size: 64, offset: 768)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2553, file: !273, line: 115, baseType: !1614, size: 64, offset: 832)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2553, file: !273, line: 116, baseType: !1614, size: 64, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2553, file: !273, line: 118, baseType: !2602, size: 64, offset: 960)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2553, file: !273, line: 119, baseType: !2582, size: 64, offset: 1024)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2553, file: !273, line: 121, baseType: !2657, size: 64, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2523, line: 78, size: 1216, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2663, !2665}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2658, file: !2523, line: 79, baseType: !1534, size: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !2658, file: !2523, line: 80, baseType: !2526, size: 320, align: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !2658, file: !2523, line: 81, baseType: !2536, size: 256, offset: 832)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2658, file: !2523, line: 82, baseType: !2664, size: 64, offset: 1088)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2658, file: !2523, line: 83, baseType: !2552, size: 64, offset: 1152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !2522, file: !2523, line: 116, baseType: !947, size: 64, offset: 1536)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2522, file: !2523, line: 117, baseType: !2515, size: 64, offset: 1600)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2522, file: !2523, line: 118, baseType: !92, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2516, file: !279, line: 711, baseType: !25, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2516, file: !279, line: 712, baseType: !2671, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !279, line: 89, size: 384, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2682, !2683}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2673, file: !279, line: 90, baseType: !25, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2673, file: !279, line: 91, baseType: !1614, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2673, file: !279, line: 92, baseType: !2572, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2673, file: !279, line: 93, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!947, !2575, !2464, !1050, !1051}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2673, file: !279, line: 95, baseType: !2582, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2673, file: !279, line: 97, baseType: !2602, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2516, file: !279, line: 714, baseType: !2557, size: 64, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2516, file: !279, line: 715, baseType: !2552, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2516, file: !279, line: 717, baseType: !29, size: 64, offset: 896)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2516, file: !279, line: 719, baseType: !29, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2516, file: !279, line: 721, baseType: !703, size: 256, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2516, file: !279, line: 725, baseType: !2690, size: 448, offset: 1280)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !279, line: 517, size: 448, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2690, file: !279, line: 518, baseType: !106, size: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2690, file: !279, line: 519, baseType: !106, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2690, file: !279, line: 520, baseType: !106, size: 128, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2690, file: !279, line: 521, baseType: !278, size: 32, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2516, file: !279, line: 726, baseType: !2697, size: 2496, offset: 1728)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !186, line: 663, size: 2496, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2792, !2796}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2697, file: !186, line: 664, baseType: !2593, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2697, file: !186, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2697, file: !186, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2697, file: !186, line: 667, baseType: !859, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2697, file: !186, line: 668, baseType: !859, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2697, file: !186, line: 669, baseType: !859, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2697, file: !186, line: 670, baseType: !859, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2697, file: !186, line: 671, baseType: !859, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2697, file: !186, line: 672, baseType: !859, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2697, file: !186, line: 673, baseType: !859, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2697, file: !186, line: 674, baseType: !859, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2697, file: !186, line: 675, baseType: !340, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2697, file: !186, line: 676, baseType: !68, size: 32, offset: 96)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2697, file: !186, line: 678, baseType: !106, size: 128, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2697, file: !186, line: 679, baseType: !1025, size: 256, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2697, file: !186, line: 680, baseType: !2715, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2717, line: 43, size: 1536, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2726, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2716, file: !2717, line: 44, baseType: !25, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2716, file: !2717, line: 45, baseType: !31, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2716, file: !2717, line: 46, baseType: !106, size: 128, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2716, file: !2717, line: 47, baseType: !68, size: 32, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2716, file: !2717, line: 48, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !186, line: 629, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2716, file: !2717, line: 49, baseType: !2727, size: 320, offset: 384)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2728, line: 11, size: 320, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2729 = !{!2730, !2731, !2732, !2737}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2727, file: !2728, line: 16, baseType: !755, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2727, file: !2728, line: 17, baseType: !48, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2727, file: !2728, line: 18, baseType: !2733, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2727, file: !2728, line: 19, baseType: !340, size: 32, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2716, file: !2717, line: 50, baseType: !48, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2716, file: !2717, line: 51, baseType: !473, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2716, file: !2717, line: 52, baseType: !473, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2716, file: !2717, line: 53, baseType: !473, size: 64, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2716, file: !2717, line: 54, baseType: !473, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2716, file: !2717, line: 55, baseType: !473, size: 64, offset: 1024)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2716, file: !2717, line: 56, baseType: !48, size: 64, offset: 1088)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2716, file: !2717, line: 57, baseType: !48, size: 64, offset: 1152)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2716, file: !2717, line: 58, baseType: !48, size: 64, offset: 1216)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2716, file: !2717, line: 59, baseType: !48, size: 64, offset: 1280)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2716, file: !2717, line: 60, baseType: !48, size: 64, offset: 1344)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2716, file: !2717, line: 61, baseType: !2515, size: 64, offset: 1408)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2716, file: !2717, line: 62, baseType: !859, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2716, file: !2717, line: 63, baseType: !859, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2697, file: !186, line: 681, baseType: !859, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2697, file: !186, line: 682, baseType: !859, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2697, file: !186, line: 683, baseType: !859, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2697, file: !186, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2697, file: !186, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2697, file: !186, line: 690, baseType: !465, size: 512, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2697, file: !186, line: 691, baseType: !398, size: 64, offset: 1152)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2697, file: !186, line: 692, baseType: !986, size: 256, offset: 1216)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2697, file: !186, line: 693, baseType: !63, size: 192, offset: 1472)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2697, file: !186, line: 694, baseType: !2724, size: 64, offset: 1664)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2697, file: !186, line: 695, baseType: !58, size: 32, offset: 1728)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2697, file: !186, line: 696, baseType: !58, size: 32, offset: 1760)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2697, file: !186, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2697, file: !186, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2697, file: !186, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2697, file: !186, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2697, file: !186, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2697, file: !186, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2697, file: !186, line: 703, baseType: !859, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2697, file: !186, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2697, file: !186, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2697, file: !186, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2697, file: !186, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2697, file: !186, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2697, file: !186, line: 709, baseType: !7, size: 32, offset: 1824)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2697, file: !186, line: 710, baseType: !285, size: 32, offset: 1856)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2697, file: !186, line: 711, baseType: !185, size: 32, offset: 1888)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2697, file: !186, line: 712, baseType: !185, size: 32, offset: 1920)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2697, file: !186, line: 713, baseType: !31, size: 32, offset: 1952)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2697, file: !186, line: 714, baseType: !31, size: 32, offset: 1984)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2697, file: !186, line: 715, baseType: !398, size: 64, offset: 2048)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2697, file: !186, line: 716, baseType: !398, size: 64, offset: 2112)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2697, file: !186, line: 717, baseType: !398, size: 64, offset: 2176)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2697, file: !186, line: 718, baseType: !398, size: 64, offset: 2240)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2697, file: !186, line: 720, baseType: !2787, size: 64, offset: 2304)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !186, line: 632, size: 64, elements: !2789)
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2788, file: !186, line: 633, baseType: !68, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2788, file: !186, line: 634, baseType: !7, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2697, file: !186, line: 721, baseType: !2793, size: 64, offset: 2368)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2515, !871}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2697, file: !186, line: 722, baseType: !2797, size: 64, offset: 2432)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !186, line: 722, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2516, file: !279, line: 727, baseType: !2800, size: 64, offset: 4224)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !186, line: 742, size: 1792, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2809, !2810, !2811}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2801, file: !186, line: 743, baseType: !2604, size: 1472)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2801, file: !186, line: 744, baseType: !2578, size: 64, offset: 1472)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2801, file: !186, line: 745, baseType: !2806, size: 64, offset: 1536)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2515, !859}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2801, file: !186, line: 746, baseType: !2578, size: 64, offset: 1600)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2801, file: !186, line: 747, baseType: !2582, size: 64, offset: 1664)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2801, file: !186, line: 748, baseType: !2582, size: 64, offset: 1728)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2516, file: !279, line: 736, baseType: !2813, size: 128, offset: 4288)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !279, line: 529, size: 128, elements: !2814)
!2814 = !{!2815, !2819}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2813, file: !279, line: 531, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2818, line: 13, flags: DIFlagFwdDecl)
!2818 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2813, file: !279, line: 532, baseType: !2820, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !279, line: 49, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2516, file: !279, line: 738, baseType: !2823, size: 64, offset: 4416)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !279, line: 738, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2516, file: !279, line: 740, baseType: !2827, size: 64, offset: 4480)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2516, file: !279, line: 741, baseType: !398, size: 64, offset: 4544)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2516, file: !279, line: 746, baseType: !398, size: 64, offset: 4608)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2516, file: !279, line: 747, baseType: !2831, size: 64, offset: 4672)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !279, line: 747, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2516, file: !279, line: 749, baseType: !2835, size: 64, offset: 4736)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !279, line: 428, size: 128, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2836, file: !279, line: 433, baseType: !7, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2836, file: !279, line: 434, baseType: !7, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2836, file: !279, line: 435, baseType: !48, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2516, file: !279, line: 751, baseType: !106, size: 128, offset: 4800)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2516, file: !279, line: 762, baseType: !2843, size: 64, offset: 4928)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !279, line: 762, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2516, file: !279, line: 770, baseType: !2846, offset: 4992)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2847, line: 5, elements: !668)
!2847 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2516, file: !279, line: 772, baseType: !2849, size: 64, offset: 4992)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2851, line: 18, flags: DIFlagFwdDecl)
!2851 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2516, file: !279, line: 773, baseType: !2853, size: 64, offset: 5056)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2560, line: 22, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2516, file: !279, line: 776, baseType: !31, size: 32, offset: 5120)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2516, file: !279, line: 778, baseType: !1302, size: 32, offset: 5152)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2516, file: !279, line: 779, baseType: !340, size: 32, offset: 5184)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2516, file: !279, line: 781, baseType: !68, size: 32, offset: 5216)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2516, file: !279, line: 782, baseType: !106, size: 128, offset: 5248)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2516, file: !279, line: 784, baseType: !2861, size: 64, offset: 5376)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2864, line: 52, size: 768, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2874, !2878, !2879, !2880, !2907, !2911, !2915}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2863, file: !2864, line: 53, baseType: !25, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2863, file: !2864, line: 55, baseType: !1614, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2863, file: !2864, line: 56, baseType: !1614, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2863, file: !2864, line: 58, baseType: !2572, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2863, file: !2864, line: 59, baseType: !2871, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!947, !2575, !2464}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2863, file: !2864, line: 61, baseType: !2875, size: 64, offset: 320)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2861}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2863, file: !2864, line: 62, baseType: !2582, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2863, file: !2864, line: 64, baseType: !2578, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2863, file: !2864, line: 66, baseType: !2881, size: 64, offset: 512)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !267, line: 39, size: 384, elements: !2884)
!2884 = !{!2885, !2886, !2890, !2894, !2902, !2906}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2883, file: !267, line: 40, baseType: !266, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2883, file: !267, line: 41, baseType: !2887, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!859}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2883, file: !267, line: 42, baseType: !2891, size: 64, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!29}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2883, file: !267, line: 43, baseType: !2895, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!2898, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !267, line: 19, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2883, file: !267, line: 44, baseType: !2903, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!2898}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2883, file: !267, line: 45, baseType: !1259, size: 64, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2863, file: !2864, line: 67, baseType: !2908, size: 64, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2898, !2575}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2863, file: !2864, line: 69, baseType: !2912, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2575, !1050, !1051}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2863, file: !2864, line: 71, baseType: !2602, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2516, file: !279, line: 785, baseType: !1614, size: 64, offset: 5440)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2516, file: !279, line: 787, baseType: !2582, size: 64, offset: 5504)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2516, file: !279, line: 788, baseType: !2919, size: 64, offset: 5568)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !279, line: 46, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2516, file: !279, line: 789, baseType: !2922, size: 64, offset: 5632)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !279, line: 48, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2516, file: !279, line: 791, baseType: !2925, size: 64, offset: 5696)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !279, line: 597, size: 128, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2926, file: !279, line: 598, baseType: !292, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2926, file: !279, line: 599, baseType: !301, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2926, file: !279, line: 600, baseType: !306, size: 32, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2926, file: !279, line: 601, baseType: !859, size: 8, offset: 96)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2926, file: !279, line: 602, baseType: !859, size: 8, offset: 104)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2516, file: !279, line: 793, baseType: !311, size: 32, offset: 5760)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2516, file: !279, line: 795, baseType: !859, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2516, file: !279, line: 796, baseType: !859, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2516, file: !279, line: 797, baseType: !859, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2516, file: !279, line: 798, baseType: !859, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2516, file: !279, line: 799, baseType: !859, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2482, file: !147, line: 451, baseType: !185, size: 32, offset: 1536)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2482, file: !147, line: 457, baseType: !48, size: 64, offset: 1600)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2482, file: !147, line: 459, baseType: !7, size: 32, offset: 1664)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2482, file: !147, line: 466, baseType: !7, size: 32, offset: 1696)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2482, file: !147, line: 468, baseType: !2727, size: 320, offset: 1728)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2482, file: !147, line: 469, baseType: !986, size: 256, offset: 2048)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2482, file: !147, line: 471, baseType: !58, size: 32, offset: 2304)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2482, file: !147, line: 473, baseType: !2947, size: 64, offset: 2368)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !147, line: 473, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2482, file: !147, line: 475, baseType: !106, size: 128, offset: 2432)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2482, file: !147, line: 477, baseType: !598, size: 64, offset: 2560)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2482, file: !147, line: 478, baseType: !2325, size: 64, offset: 2624)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2482, file: !147, line: 479, baseType: !106, size: 128, offset: 2688)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2482, file: !147, line: 480, baseType: !703, size: 256, offset: 2816)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2482, file: !147, line: 483, baseType: !2955, size: 960, offset: 3072)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !147, line: 300, size: 960, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2955, file: !147, line: 301, baseType: !193, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2955, file: !147, line: 302, baseType: !48, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2955, file: !147, line: 303, baseType: !48, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2955, file: !147, line: 305, baseType: !7, size: 32, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2955, file: !147, line: 306, baseType: !7, size: 32, offset: 224)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2955, file: !147, line: 307, baseType: !7, size: 32, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2955, file: !147, line: 308, baseType: !7, size: 32, offset: 288)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2955, file: !147, line: 309, baseType: !7, size: 32, offset: 320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2955, file: !147, line: 310, baseType: !7, size: 32, offset: 352)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2955, file: !147, line: 311, baseType: !7, size: 32, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2955, file: !147, line: 312, baseType: !7, size: 32, offset: 416)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2955, file: !147, line: 313, baseType: !7, size: 32, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2955, file: !147, line: 314, baseType: !7, size: 32, offset: 480)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2955, file: !147, line: 315, baseType: !7, size: 32, offset: 512)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2955, file: !147, line: 316, baseType: !7, size: 32, offset: 544)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2955, file: !147, line: 317, baseType: !7, size: 32, offset: 576)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2955, file: !147, line: 318, baseType: !7, size: 32, offset: 608)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2955, file: !147, line: 319, baseType: !7, size: 32, offset: 640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2955, file: !147, line: 320, baseType: !7, size: 32, offset: 672)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2955, file: !147, line: 321, baseType: !7, size: 32, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2955, file: !147, line: 322, baseType: !7, size: 32, offset: 736)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2955, file: !147, line: 323, baseType: !7, size: 32, offset: 768)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2955, file: !147, line: 325, baseType: !35, size: 16, offset: 800)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2955, file: !147, line: 326, baseType: !35, size: 16, offset: 816)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2955, file: !147, line: 327, baseType: !35, size: 16, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2955, file: !147, line: 329, baseType: !96, size: 8, offset: 848)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2955, file: !147, line: 330, baseType: !96, size: 8, offset: 856)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2955, file: !147, line: 331, baseType: !96, size: 8, offset: 864)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2955, file: !147, line: 332, baseType: !197, size: 32, offset: 896)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2955, file: !147, line: 339, baseType: !7, size: 32, offset: 928)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2482, file: !147, line: 485, baseType: !7, size: 32, offset: 4032)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2482, file: !147, line: 487, baseType: !31, size: 32, offset: 4064)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2482, file: !147, line: 489, baseType: !2990, size: 64, offset: 4096)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !147, line: 31, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2482, file: !147, line: 494, baseType: !2993, size: 64, offset: 4160)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !147, line: 35, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2482, file: !147, line: 495, baseType: !106, size: 128, offset: 4224)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2482, file: !147, line: 497, baseType: !106, size: 128, offset: 4352)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2482, file: !147, line: 498, baseType: !68, size: 32, offset: 4480)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2482, file: !147, line: 499, baseType: !2999, size: 704, offset: 4544)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !987, line: 111, size: 704, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2999, file: !987, line: 112, baseType: !986, size: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2999, file: !987, line: 113, baseType: !2727, size: 320, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2999, file: !987, line: 116, baseType: !2380, size: 64, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2999, file: !987, line: 117, baseType: !31, size: 32, offset: 640)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2482, file: !147, line: 501, baseType: !703, size: 256, offset: 5248)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2482, file: !147, line: 502, baseType: !703, size: 256, offset: 5504)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2482, file: !147, line: 508, baseType: !106, size: 128, offset: 5760)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2482, file: !147, line: 509, baseType: !68, size: 32, offset: 5888)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2482, file: !147, line: 511, baseType: !31, size: 32, offset: 5920)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2482, file: !147, line: 517, baseType: !683, size: 128, align: 64, offset: 5952)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2482, file: !147, line: 518, baseType: !63, size: 192, offset: 6080)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2482, file: !147, line: 523, baseType: !703, size: 256, offset: 6272)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2482, file: !147, line: 525, baseType: !31, size: 32, offset: 6528)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2482, file: !147, line: 527, baseType: !3015, size: 64, offset: 6592)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !147, line: 527, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2482, file: !147, line: 528, baseType: !106, size: 128, offset: 6656)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2482, file: !147, line: 530, baseType: !1193, size: 64, offset: 6784)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2482, file: !147, line: 531, baseType: !1193, size: 64, offset: 6848)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2482, file: !147, line: 532, baseType: !1193, size: 64, offset: 6912)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2482, file: !147, line: 536, baseType: !703, size: 256, offset: 6976)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2482, file: !147, line: 538, baseType: !859, size: 8, offset: 7232)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2277, file: !147, line: 147, baseType: !29, size: 64, offset: 704)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2277, file: !147, line: 149, baseType: !2341, size: 1984, offset: 768)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !147, line: 151, baseType: !31, size: 32, offset: 2752)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2277, file: !147, line: 152, baseType: !48, size: 64, offset: 2816)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2277, file: !147, line: 161, baseType: !703, size: 256, offset: 2880)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2277, file: !147, line: 162, baseType: !7, size: 32, offset: 3136)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2277, file: !147, line: 164, baseType: !3030, size: 64, offset: 3200)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !203, line: 163, size: 6848, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3080, !3081, !3082, !3083, !3085, !3086, !3087}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3031, file: !203, line: 164, baseType: !398, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3031, file: !203, line: 165, baseType: !390, size: 192, align: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3031, file: !203, line: 166, baseType: !106, size: 128, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3031, file: !203, line: 167, baseType: !48, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3031, file: !203, line: 168, baseType: !48, size: 64, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3031, file: !203, line: 170, baseType: !2541, size: 32, offset: 512)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3031, file: !203, line: 171, baseType: !7, size: 32, offset: 544)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3031, file: !203, line: 172, baseType: !7, size: 32, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3031, file: !203, line: 173, baseType: !7, size: 32, offset: 608)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3031, file: !203, line: 173, baseType: !7, size: 32, offset: 640)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3031, file: !203, line: 179, baseType: !696, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3031, file: !203, line: 184, baseType: !48, size: 64, offset: 768)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3031, file: !203, line: 186, baseType: !3046, size: 4672, offset: 832)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !203, line: 105, size: 4672, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3073, !3074, !3075, !3076, !3077, !3078, !3079}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3046, file: !203, line: 106, baseType: !3030, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3046, file: !203, line: 108, baseType: !48, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3046, file: !203, line: 109, baseType: !48, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3046, file: !203, line: 111, baseType: !106, size: 128, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3046, file: !203, line: 112, baseType: !106, size: 128, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3046, file: !203, line: 113, baseType: !106, size: 128, offset: 448)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3046, file: !203, line: 114, baseType: !106, size: 128, offset: 576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3046, file: !203, line: 115, baseType: !68, size: 32, offset: 704)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3046, file: !203, line: 117, baseType: !58, size: 32, offset: 736)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3046, file: !203, line: 118, baseType: !3058, size: 1280, offset: 768)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 1280, elements: !760)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3046, file: !203, line: 120, baseType: !48, size: 64, offset: 2048)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3046, file: !203, line: 121, baseType: !48, size: 64, offset: 2112)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3046, file: !203, line: 122, baseType: !48, size: 64, offset: 2176)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3046, file: !203, line: 123, baseType: !48, size: 64, offset: 2240)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3046, file: !203, line: 124, baseType: !48, size: 64, offset: 2304)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3046, file: !203, line: 132, baseType: !48, size: 64, offset: 2368)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3046, file: !203, line: 133, baseType: !48, size: 64, offset: 2432)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3046, file: !203, line: 135, baseType: !3067, size: 384, offset: 2496)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3068, line: 76, size: 384, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3067, file: !3068, line: 78, baseType: !1135, size: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3067, file: !3068, line: 80, baseType: !7, size: 32, offset: 320)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3067, file: !3068, line: 81, baseType: !490, size: 32, offset: 352)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3046, file: !203, line: 136, baseType: !31, size: 32, offset: 2880)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3046, file: !203, line: 137, baseType: !202, size: 32, offset: 2912)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3046, file: !203, line: 139, baseType: !68, size: 32, offset: 2944)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3046, file: !203, line: 140, baseType: !106, size: 128, offset: 3008)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3046, file: !203, line: 141, baseType: !2999, size: 704, offset: 3136)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3046, file: !203, line: 142, baseType: !2999, size: 704, offset: 3840)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3046, file: !203, line: 144, baseType: !106, size: 128, offset: 4544)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3031, file: !203, line: 187, baseType: !106, size: 128, offset: 5504)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3031, file: !203, line: 193, baseType: !63, size: 192, offset: 5632)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3031, file: !203, line: 195, baseType: !2515, size: 64, offset: 5824)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3031, file: !203, line: 196, baseType: !3084, size: 512, offset: 5888)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 512, elements: !1577)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3031, file: !203, line: 197, baseType: !2515, size: 64, offset: 6400)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3031, file: !203, line: 199, baseType: !2727, size: 320, offset: 6464)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3031, file: !203, line: 202, baseType: !1193, size: 64, offset: 6784)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2277, file: !147, line: 165, baseType: !1534, size: 512, offset: 3264)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2277, file: !147, line: 166, baseType: !1540, size: 64, offset: 3776)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2277, file: !147, line: 168, baseType: !106, size: 128, offset: 3840)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2277, file: !147, line: 170, baseType: !3092, size: 64, offset: 3968)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !147, line: 170, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2277, file: !147, line: 171, baseType: !58, size: 32, offset: 4032)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2277, file: !147, line: 172, baseType: !3096, size: 64, offset: 4096)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !147, line: 104, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2277, file: !147, line: 197, baseType: !3099, size: 64, offset: 4160)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !147, line: 197, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2277, file: !147, line: 199, baseType: !31, size: 32, offset: 4224)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2277, file: !147, line: 200, baseType: !3103, size: 64, offset: 4288)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !147, line: 105, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2277, file: !147, line: 201, baseType: !3106, offset: 4352)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3107, line: 211, elements: !668)
!3107 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2277, file: !147, line: 202, baseType: !398, size: 64, offset: 4352)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2277, file: !147, line: 203, baseType: !2404, size: 32, offset: 4416)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2277, file: !147, line: 209, baseType: !3111, size: 64, offset: 4480)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !147, line: 384, size: 576, elements: !3113)
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3112, file: !147, line: 385, baseType: !1534, size: 512)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3112, file: !147, line: 386, baseType: !859, size: 8, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3112, file: !147, line: 387, baseType: !7, size: 32, offset: 544)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3112, file: !147, line: 388, baseType: !3118, offset: 576)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3119, elements: !1090)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !147, line: 378, size: 640, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3119, file: !147, line: 379, baseType: !1534, size: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3119, file: !147, line: 380, baseType: !2091, size: 64, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3119, file: !147, line: 381, baseType: !2091, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2270, file: !2271, line: 44, baseType: !2481, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2270, file: !2271, line: 45, baseType: !3126, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2271, line: 45, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2270, file: !2271, line: 46, baseType: !48, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2270, file: !2271, line: 47, baseType: !859, size: 8, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2270, file: !2271, line: 48, baseType: !92, size: 8, offset: 392)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2270, file: !2271, line: 49, baseType: !859, size: 8, offset: 400)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2270, file: !2271, line: 50, baseType: !859, size: 8, offset: 408)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2270, file: !2271, line: 51, baseType: !1302, size: 32, offset: 416)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2270, file: !2271, line: 52, baseType: !58, size: 32, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2270, file: !2271, line: 53, baseType: !68, size: 32, offset: 480)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2270, file: !2271, line: 54, baseType: !1228, size: 64, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2270, file: !2271, line: 55, baseType: !29, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2270, file: !2271, line: 56, baseType: !29, size: 64, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2270, file: !2271, line: 57, baseType: !3140, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !147, line: 1477, size: 128, elements: !3143)
!3143 = !{!3144, !3148}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3142, file: !147, line: 1478, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2269, !859}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3142, file: !147, line: 1483, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !2269}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2270, file: !2271, line: 58, baseType: !703, size: 256, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2270, file: !2271, line: 60, baseType: !31, size: 32, offset: 1024)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2270, file: !2271, line: 61, baseType: !31, size: 32, offset: 1056)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2270, file: !2271, line: 62, baseType: !1540, size: 64, offset: 1088)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2270, file: !2271, line: 65, baseType: !703, size: 256, offset: 1152)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2270, file: !2271, line: 66, baseType: !1429, size: 64, offset: 1408)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2270, file: !2271, line: 68, baseType: !3159, size: 64, offset: 1472)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !147, line: 63, size: 808, elements: !3161)
!3161 = !{!3162, !3166}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3160, file: !147, line: 64, baseType: !3163, size: 296)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 296, elements: !3164)
!3164 = !{!3165}
!3165 = !DISubrange(count: 37)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3160, file: !147, line: 65, baseType: !3167, size: 512, offset: 296)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !1577)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2270, file: !2271, line: 72, baseType: !859, size: 8, offset: 1536)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2270, file: !2271, line: 77, baseType: !2516, size: 5824, offset: 1600)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2229, file: !2230, line: 302, baseType: !675, size: 64, offset: 1344)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2229, file: !2230, line: 303, baseType: !7, size: 32, offset: 1408)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2229, file: !2230, line: 304, baseType: !1025, size: 256, offset: 1472)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2229, file: !2230, line: 305, baseType: !68, size: 32, offset: 1728)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2229, file: !2230, line: 318, baseType: !68, size: 32, offset: 1760)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2229, file: !2230, line: 322, baseType: !986, size: 256, offset: 1792)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2229, file: !2230, line: 323, baseType: !2249, size: 128, offset: 2048)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2229, file: !2230, line: 324, baseType: !3178, offset: 2176)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, elements: !1090)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1652, file: !249, line: 444, baseType: !3180, size: 64, offset: 1152)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !675}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1652, file: !249, line: 445, baseType: !3184, size: 64, offset: 1216)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!31, !2108, !2146}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1639, file: !249, line: 486, baseType: !48, size: 64, offset: 896)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1639, file: !249, line: 487, baseType: !879, size: 320, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1639, file: !249, line: 488, baseType: !3190, size: 32, offset: 1280)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3191, line: 8, baseType: !340)
!3191 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1639, file: !249, line: 489, baseType: !68, size: 32, offset: 1312)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1639, file: !249, line: 490, baseType: !106, size: 128, offset: 1344)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1639, file: !249, line: 491, baseType: !29, size: 64, offset: 1472)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1629, file: !1598, line: 180, baseType: !3196, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!1380, !675, !1540, !1628, !947, !50, !44}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1629, file: !1598, line: 182, baseType: !3196, size: 64, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1629, file: !1598, line: 184, baseType: !3201, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!31, !675, !1540, !1628, !1768}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1617, file: !1598, line: 90, baseType: !3205, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1617, file: !1598, line: 91, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1588, file: !1535, line: 120, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2881, !1558}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1588, file: !1535, line: 121, baseType: !3213, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!2898, !1558}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1588, file: !1535, line: 122, baseType: !3217, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !1558, !1050, !1051}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1534, file: !1535, line: 70, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3223, line: 190, size: 1152, elements: !3224)
!3223 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3355, !3356, !3357, !3358, !3359, !3362}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3222, file: !3223, line: 191, baseType: !58, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3222, file: !3223, line: 192, baseType: !58, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3222, file: !3223, line: 202, baseType: !3221, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3222, file: !3223, line: 203, baseType: !25, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3222, file: !3223, line: 205, baseType: !390, size: 192, align: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3222, file: !3223, line: 207, baseType: !2898, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3222, file: !3223, line: 208, baseType: !7, size: 32, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3223, line: 209, baseType: !3233, size: 256, offset: 512)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !3223, line: 209, size: 256, elements: !3234)
!3234 = !{!3235, !3244, !3248}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3233, file: !3223, line: 210, baseType: !3236, size: 256)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3223, line: 153, size: 256, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3243}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3236, file: !3223, line: 154, baseType: !48, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3236, file: !3223, line: 156, baseType: !533, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3236, file: !3223, line: 162, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3223, line: 162, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3236, file: !3223, line: 167, baseType: !48, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3233, file: !3223, line: 211, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3223, line: 170, size: 64, elements: !3246)
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3245, file: !3223, line: 171, baseType: !3221, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3233, file: !3223, line: 212, baseType: !3249, size: 256)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3223, line: 174, size: 256, elements: !3250)
!3250 = !{!3251, !3350, !3353, !3354}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3249, file: !3223, line: 175, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3223, line: 271, size: 768, elements: !3255)
!3255 = !{!3256, !3314, !3318, !3319, !3320, !3321, !3322, !3326, !3327, !3328, !3329, !3346}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3254, file: !3223, line: 276, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!31, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3223, line: 251, size: 1216, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3261, file: !3223, line: 253, baseType: !3221, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3261, file: !3223, line: 254, baseType: !675, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3261, file: !3223, line: 255, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !3268, line: 17, size: 960, elements: !3269)
!3268 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3299, !3300, !3303}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3267, file: !3268, line: 18, baseType: !947, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3267, file: !3268, line: 19, baseType: !44, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3267, file: !3268, line: 20, baseType: !44, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3267, file: !3268, line: 21, baseType: !44, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !3267, file: !3268, line: 22, baseType: !44, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3267, file: !3268, line: 23, baseType: !50, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !3267, file: !3268, line: 24, baseType: !50, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3267, file: !3268, line: 25, baseType: !703, size: 256, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3267, file: !3268, line: 26, baseType: !3279, size: 64, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !3268, line: 32, size: 256, elements: !3282)
!3282 = !{!3283, !3287, !3291, !3295}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3281, file: !3268, line: 33, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!29, !3266, !49}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3281, file: !3268, line: 34, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3266, !29}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3281, file: !3268, line: 35, baseType: !3292, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!29, !3266, !29, !49}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3281, file: !3268, line: 36, baseType: !3296, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!31, !3266, !29}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !3267, file: !3268, line: 27, baseType: !31, size: 32, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3267, file: !3268, line: 28, baseType: !3301, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3267, file: !3268, line: 29, baseType: !29, size: 64, offset: 896)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3261, file: !3223, line: 256, baseType: !29, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3261, file: !3223, line: 259, baseType: !703, size: 256, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3261, file: !3223, line: 260, baseType: !703, size: 256, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3261, file: !3223, line: 261, baseType: !31, size: 32, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3261, file: !3223, line: 262, baseType: !106, size: 128, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3261, file: !3223, line: 263, baseType: !947, size: 64, offset: 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3261, file: !3223, line: 265, baseType: !44, size: 64, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3261, file: !3223, line: 266, baseType: !859, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3261, file: !3223, line: 267, baseType: !859, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3261, file: !3223, line: 268, baseType: !1813, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3254, file: !3223, line: 277, baseType: !3315, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !3260}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3254, file: !3223, line: 290, baseType: !3296, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3254, file: !3223, line: 292, baseType: !3284, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3254, file: !3223, line: 293, baseType: !3292, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3254, file: !3223, line: 294, baseType: !3288, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3254, file: !3223, line: 296, baseType: !3323, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!1380, !3260, !947, !44, !50}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3254, file: !3223, line: 306, baseType: !44, size: 64, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3254, file: !3223, line: 313, baseType: !859, size: 8, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3254, file: !3223, line: 314, baseType: !3323, size: 64, offset: 576)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3254, file: !3223, line: 317, baseType: !3330, size: 64, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3333, !3260, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3334, line: 59, baseType: !7)
!3334 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3337, line: 37, size: 128, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3338 = !{!3339, !3345}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3336, file: !3337, line: 38, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3337, line: 31, baseType: !3341)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !675, !3344, !3335}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3336, file: !3337, line: 39, baseType: !3333, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3254, file: !3223, line: 320, baseType: !3347, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!31, !3260, !1768}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3249, file: !3223, line: 176, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3223, line: 35, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3249, file: !3223, line: 177, baseType: !50, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3249, file: !3223, line: 178, baseType: !3221, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3222, file: !3223, line: 215, baseType: !29, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3222, file: !3223, line: 221, baseType: !398, size: 64, offset: 832)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3222, file: !3223, line: 223, baseType: !35, size: 16, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3222, file: !3223, line: 224, baseType: !33, size: 16, offset: 912)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3222, file: !3223, line: 225, baseType: !3360, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3223, line: 36, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3222, file: !3223, line: 227, baseType: !683, size: 128, align: 64, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1534, file: !1535, line: 71, baseType: !2541, size: 32, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1534, file: !1535, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1534, file: !1535, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1534, file: !1535, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1534, file: !1535, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1534, file: !1535, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1531, file: !153, line: 47, baseType: !1521, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1531, file: !153, line: 48, baseType: !1540, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1531, file: !153, line: 49, baseType: !3372, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !153, line: 49, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1531, file: !153, line: 50, baseType: !1024, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1522, file: !153, line: 418, baseType: !3376, size: 64, offset: 1408)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !153, line: 53, size: 448, elements: !3378)
!3378 = !{!3379, !3380, !3384, !3388, !3392, !3396}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3377, file: !153, line: 54, baseType: !1605, size: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3377, file: !153, line: 55, baseType: !3381, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!1380, !3376, !2664, !947}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3377, file: !153, line: 57, baseType: !3385, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!1380, !3376, !2664, !25, !44}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3377, file: !153, line: 59, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !1521, !25}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3377, file: !153, line: 60, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!31, !1521}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3377, file: !153, line: 61, baseType: !3397, size: 64, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !1521}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1522, file: !153, line: 419, baseType: !25, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1522, file: !153, line: 420, baseType: !25, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1522, file: !153, line: 421, baseType: !1540, size: 64, offset: 1600)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1522, file: !153, line: 424, baseType: !3404, size: 64, offset: 1664)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !153, line: 424, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1522, file: !153, line: 425, baseType: !3408, size: 64, offset: 1728)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1522, file: !153, line: 426, baseType: !7, size: 32, offset: 1792)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1522, file: !153, line: 435, baseType: !703, size: 256, offset: 1856)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1522, file: !153, line: 437, baseType: !3413, size: 64, offset: 2112)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3415, line: 69, size: 320, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3416 = !{!3417, !3418, !3419, !3436, !3438, !3441, !3442}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 70, baseType: !25, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3414, file: !3415, line: 71, baseType: !1521, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3414, file: !3415, line: 72, baseType: !3420, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3422)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3415, line: 47, size: 256, elements: !3423)
!3423 = !{!3424, !3425, !3431, !3435}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !3415, line: 49, baseType: !7, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3422, file: !3415, line: 51, baseType: !3426, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!31, !25, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3422, file: !3415, line: 53, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!31, !947, !3429}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3422, file: !3415, line: 55, baseType: !1259, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3414, file: !3415, line: 73, baseType: !3437, size: 16, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3414, file: !3415, line: 74, baseType: !3439, size: 8, offset: 208)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !93, line: 16, baseType: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !95, line: 20, baseType: !2237)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3414, file: !3415, line: 75, baseType: !92, size: 8, offset: 216)
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !3414, file: !3415, line: 76, baseType: !3443, size: 64, offset: 256)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3414, file: !3415, line: 76, size: 64, elements: !3444)
!3444 = !{!3445, !3446, !3453}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3443, file: !3415, line: 77, baseType: !29, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3443, file: !3415, line: 78, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3415, line: 86, size: 128, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3449, file: !3415, line: 87, baseType: !7, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3449, file: !3415, line: 88, baseType: !947, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3443, file: !3415, line: 79, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3415, line: 92, size: 256, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3456, file: !3415, line: 94, baseType: !7, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3456, file: !3415, line: 95, baseType: !7, size: 32, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3456, file: !3415, line: 96, baseType: !2260, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3456, file: !3415, line: 97, baseType: !3420, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3456, file: !3415, line: 98, baseType: !29, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1522, file: !153, line: 438, baseType: !7, size: 32, offset: 2176)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1522, file: !153, line: 441, baseType: !7, size: 32, offset: 2208)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1522, file: !153, line: 442, baseType: !3404, size: 64, offset: 2240)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1522, file: !153, line: 443, baseType: !3408, size: 64, offset: 2304)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1522, file: !153, line: 444, baseType: !859, size: 8, offset: 2368)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1522, file: !153, line: 451, baseType: !859, size: 8, offset: 2376)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1522, file: !153, line: 454, baseType: !7, size: 32, offset: 2400)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1522, file: !153, line: 455, baseType: !3471, size: 64, offset: 2432)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3473, line: 23, size: 96, elements: !3474)
!3473 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3474 = !{!3475, !3476, !3477}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3472, file: !3473, line: 24, baseType: !31, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3472, file: !3473, line: 24, baseType: !31, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3472, file: !3473, line: 24, baseType: !31, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1522, file: !153, line: 458, baseType: !3479, size: 64, offset: 2496)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!31}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1522, file: !153, line: 460, baseType: !3483, size: 4032, align: 512, offset: 2560)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3484, size: 4032, elements: !3500)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !153, line: 362, size: 576, elements: !3485)
!3485 = !{!3486, !3487, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3484, file: !153, line: 363, baseType: !29, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3484, file: !153, line: 364, baseType: !7, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3484, file: !153, line: 367, baseType: !3489, size: 448, offset: 128)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !153, line: 319, size: 448, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3489, file: !153, line: 320, baseType: !1521, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3489, file: !153, line: 321, baseType: !3493, size: 384, offset: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3494, line: 40, size: 384, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3493, file: !3494, line: 41, baseType: !3497, size: 384, align: 64)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, align: 64, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 2)
!3500 = !{!3501}
!3501 = !DISubrange(count: 7)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1522, file: !153, line: 463, baseType: !3503, size: 192, offset: 6592)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3504, line: 8, size: 192, elements: !3505)
!3504 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3503, file: !3504, line: 10, baseType: !7, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3503, file: !3504, line: 11, baseType: !324, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3503, file: !3504, line: 12, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3511, line: 59, size: 48, elements: !3512)
!3511 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3512 = !{!3513, !3516, !3517, !3518, !3519, !3520}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3510, file: !3511, line: 60, baseType: !3514, size: 16)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !93, line: 18, baseType: !3515)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !95, line: 23, baseType: !907)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3510, file: !3511, line: 61, baseType: !3514, size: 16, offset: 16)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3510, file: !3511, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3510, file: !3511, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3510, file: !3511, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3510, file: !3511, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1522, file: !153, line: 465, baseType: !48, size: 64, offset: 6784)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1522, file: !153, line: 469, baseType: !7, size: 32, offset: 6848)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1522, file: !153, line: 470, baseType: !106, size: 128, offset: 6912)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1522, file: !153, line: 471, baseType: !3525, size: 64, offset: 7040)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3527, line: 33, size: 96, elements: !3528)
!3527 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3526, file: !3527, line: 37, baseType: !31, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3526, file: !3527, line: 43, baseType: !31, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3526, file: !3527, line: 45, baseType: !35, size: 16, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3526, file: !3527, line: 47, baseType: !35, size: 16, offset: 80)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1522, file: !153, line: 476, baseType: !3534, size: 64, offset: 7104)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !153, line: 378, size: 256, elements: !3536)
!3536 = !{!3537, !3553, !3554, !3555}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3535, file: !153, line: 379, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3540, line: 204, baseType: !3541)
!3540 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3540, line: 197, size: 192, elements: !3542)
!3542 = !{!3543, !3545, !3546, !3547, !3549, !3551}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3541, file: !3540, line: 198, baseType: !3544, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3540, line: 21, baseType: !341)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3541, file: !3540, line: 199, baseType: !96, size: 8, offset: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3541, file: !3540, line: 200, baseType: !96, size: 8, offset: 40)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3541, file: !3540, line: 201, baseType: !3548, size: 16, offset: 48)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3540, line: 17, baseType: !103)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3541, file: !3540, line: 202, baseType: !3550, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3540, line: 16, baseType: !399)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3541, file: !3540, line: 203, baseType: !3552, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3540, line: 22, baseType: !399)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3535, file: !153, line: 380, baseType: !7, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3535, file: !153, line: 381, baseType: !947, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3535, file: !153, line: 382, baseType: !947, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1522, file: !153, line: 477, baseType: !3535, size: 256, offset: 7168)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1522, file: !153, line: 480, baseType: !3558, size: 64, offset: 7424)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !153, line: 480, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1522, file: !153, line: 483, baseType: !3561, size: 64, offset: 7488)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !153, line: 483, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1522, file: !153, line: 488, baseType: !947, size: 64, offset: 7552)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1522, file: !153, line: 492, baseType: !29, size: 64, offset: 7616)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1522, file: !153, line: 493, baseType: !7, size: 32, offset: 7680)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1522, file: !153, line: 495, baseType: !29, size: 64, offset: 7744)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1522, file: !153, line: 496, baseType: !7, size: 32, offset: 7808)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1522, file: !153, line: 499, baseType: !7, size: 32, offset: 7840)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1522, file: !153, line: 500, baseType: !3570, size: 64, offset: 7872)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3572, line: 45, baseType: !3573)
!3572 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1522, file: !153, line: 503, baseType: !7, size: 32, offset: 7936)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1522, file: !153, line: 504, baseType: !3576, size: 64, offset: 8000)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3579, line: 96, size: 192, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3580 = !{!3581, !3582, !3624, !3625}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3578, file: !3579, line: 97, baseType: !7, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3578, file: !3579, line: 98, baseType: !3583, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3579, line: 24, size: 3072, elements: !3585)
!3585 = !{!3586, !3588, !3589, !3590, !3591, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3621, !3622, !3623}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3584, file: !3579, line: 26, baseType: !3587, size: 128)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 128, elements: !3498)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3584, file: !3579, line: 27, baseType: !3587, size: 128, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3584, file: !3579, line: 28, baseType: !31, size: 32, offset: 256)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !3579, line: 31, baseType: !68, size: 32, align: 512, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3584, file: !3579, line: 32, baseType: !3592, size: 960, offset: 576)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3593, line: 206, size: 960, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3594 = !{!3595, !3596, !3599, !3601, !3602, !3603}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3592, file: !3593, line: 207, baseType: !686, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3592, file: !3593, line: 208, baseType: !3597, size: 256, offset: 64)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3598, size: 256, elements: !760)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3592, file: !3593, line: 209, baseType: !3600, size: 256, offset: 320)
!3600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !760)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3592, file: !3593, line: 213, baseType: !323, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3592, file: !3593, line: 215, baseType: !1085, size: 256, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !3593, line: 216, baseType: !92, size: 8, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3584, file: !3579, line: 33, baseType: !48, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3584, file: !3579, line: 34, baseType: !48, size: 64, offset: 1600)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3584, file: !3579, line: 35, baseType: !859, size: 8, offset: 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3584, file: !3579, line: 36, baseType: !2727, size: 320, offset: 1728)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3584, file: !3579, line: 37, baseType: !986, size: 256, offset: 2048)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3584, file: !3579, line: 38, baseType: !683, size: 128, align: 64, offset: 2304)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3584, file: !3579, line: 39, baseType: !3611, size: 64, offset: 2432)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3579, line: 49, size: 768, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3612, file: !3579, line: 50, baseType: !68, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3612, file: !3579, line: 51, baseType: !3600, size: 256, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3612, file: !3579, line: 53, baseType: !3600, size: 256, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3612, file: !3579, line: 54, baseType: !48, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3612, file: !3579, line: 55, baseType: !3611, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3612, file: !3579, line: 56, baseType: !31, size: 32, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3612, file: !3579, line: 57, baseType: !31, size: 32, offset: 736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3584, file: !3579, line: 40, baseType: !48, size: 64, offset: 2496)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3584, file: !3579, line: 42, baseType: !31, size: 32, offset: 2560)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3584, file: !3579, line: 43, baseType: !3577, size: 64, offset: 2624)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3578, file: !3579, line: 99, baseType: !3106, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3578, file: !3579, line: 100, baseType: !3626, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3579, line: 63, size: 3008, elements: !3628)
!3628 = !{!3629, !3630, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3627, file: !3579, line: 64, baseType: !3611, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3627, file: !3579, line: 65, baseType: !3631, size: 192, offset: 64)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3611, size: 192, elements: !739)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3627, file: !3579, line: 67, baseType: !31, size: 32, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3627, file: !3579, line: 68, baseType: !703, size: 256, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3627, file: !3579, line: 69, baseType: !68, size: 32, offset: 576)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3627, file: !3579, line: 70, baseType: !703, size: 256, offset: 640)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3627, file: !3579, line: 71, baseType: !48, size: 64, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3627, file: !3579, line: 72, baseType: !48, size: 64, offset: 960)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3627, file: !3579, line: 73, baseType: !48, size: 64, offset: 1024)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3627, file: !3579, line: 74, baseType: !48, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3627, file: !3579, line: 75, baseType: !48, size: 64, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3627, file: !3579, line: 76, baseType: !48, size: 64, offset: 1216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3627, file: !3579, line: 77, baseType: !48, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3627, file: !3579, line: 78, baseType: !48, size: 64, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3627, file: !3579, line: 79, baseType: !859, size: 8, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3627, file: !3579, line: 80, baseType: !48, size: 64, offset: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3627, file: !3579, line: 81, baseType: !703, size: 256, offset: 1536)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3627, file: !3579, line: 82, baseType: !1025, size: 256, offset: 1792)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3627, file: !3579, line: 84, baseType: !58, size: 32, offset: 2048)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3627, file: !3579, line: 87, baseType: !48, size: 64, offset: 2112)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3627, file: !3579, line: 88, baseType: !48, size: 64, offset: 2176)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3627, file: !3579, line: 89, baseType: !2999, size: 704, offset: 2240)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3627, file: !3579, line: 90, baseType: !3577, size: 64, offset: 2944)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1522, file: !153, line: 515, baseType: !3654, size: 64, offset: 8064)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3656, line: 117, size: 128, elements: !3657)
!3656 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3655, file: !3656, line: 118, baseType: !871, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3655, file: !3656, line: 119, baseType: !871, size: 32, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3655, file: !3656, line: 120, baseType: !323, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1522, file: !153, line: 516, baseType: !7, size: 32, offset: 8128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1522, file: !153, line: 519, baseType: !7, size: 32, offset: 8160)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1522, file: !153, line: 520, baseType: !3664, size: 64, offset: 8192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1522, file: !153, line: 523, baseType: !3666, size: 64, offset: 8256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !160, line: 372, size: 1024, elements: !3669)
!3669 = !{!3670, !3671, !3711, !3771, !3852, !3853, !3856, !3861, !3862, !3863, !3864, !3866, !3869}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3668, file: !160, line: 373, baseType: !106, size: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3668, file: !160, line: 374, baseType: !3672, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !160, line: 291, size: 576, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3682, !3705, !3709, !3710}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3673, file: !160, line: 292, baseType: !25, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3673, file: !160, line: 293, baseType: !29, size: 64, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3673, file: !160, line: 295, baseType: !29, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3673, file: !160, line: 297, baseType: !3679, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!31, !3667, !159, !29}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3673, file: !160, line: 299, baseType: !3683, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !160, line: 275, size: 320, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3684, file: !160, line: 276, baseType: !25, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3684, file: !160, line: 277, baseType: !3688, size: 256, offset: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3684, file: !160, line: 277, size: 256, elements: !3689)
!3689 = !{!3690, !3701}
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !160, line: 278, baseType: !3691, size: 256)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !160, line: 278, size: 256, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3698, !3699, !3700}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3691, file: !160, line: 279, baseType: !25, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3691, file: !160, line: 280, baseType: !3573, size: 32, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3691, file: !160, line: 281, baseType: !3573, size: 32, offset: 96)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3691, file: !160, line: 282, baseType: !3697, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3691, file: !160, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3691, file: !160, line: 284, baseType: !3573, size: 32, offset: 160)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3691, file: !160, line: 285, baseType: !3573, size: 32, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3688, file: !160, line: 287, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!31, !3667}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3673, file: !160, line: 300, baseType: !3706, size: 64, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!109, !3667}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3673, file: !160, line: 301, baseType: !106, size: 128, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3673, file: !160, line: 302, baseType: !3702, size: 64, offset: 512)
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !160, line: 375, baseType: !3712, size: 64, offset: 192)
!3712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3668, file: !160, line: 375, size: 64, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !160, line: 376, baseType: !25, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3712, file: !160, line: 378, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !3572, line: 32, size: 640, elements: !3718)
!3718 = !{!3719, !3720, !3732, !3756, !3757, !3758, !3759, !3760, !3764}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3717, file: !3572, line: 33, baseType: !25, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3717, file: !3572, line: 34, baseType: !3721, size: 128, offset: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3656, line: 85, size: 128, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3721, file: !3656, line: 86, baseType: !58, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !3721, file: !3656, line: 101, baseType: !3725, size: 64, offset: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3721, file: !3656, line: 101, size: 64, elements: !3726)
!3726 = !{!3727, !3728, !3729}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3725, file: !3656, line: 102, baseType: !48, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3725, file: !3656, line: 103, baseType: !3654, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3725, file: !3656, line: 104, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3656, line: 104, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3717, file: !3572, line: 35, baseType: !3733, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3735, line: 61, size: 128, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3734, file: !3735, line: 62, baseType: !29, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, scope: !3734, file: !3735, line: 63, baseType: !3739, size: 64, offset: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3734, file: !3735, line: 63, size: 64, elements: !3740)
!3740 = !{!3741, !3742, !3755}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3739, file: !3735, line: 65, baseType: !48, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3739, file: !3735, line: 66, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3745, line: 169, size: 192, elements: !3746)
!3745 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3744, file: !3745, line: 170, baseType: !3743, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3744, file: !3745, line: 171, baseType: !1521, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3744, file: !3745, line: 172, baseType: !3750, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3735, line: 32, size: 64, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3751, file: !3735, line: 33, baseType: !871, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3751, file: !3735, line: 34, baseType: !871, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3739, file: !3735, line: 67, baseType: !3750, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3717, file: !3572, line: 36, baseType: !29, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3717, file: !3572, line: 37, baseType: !29, size: 64, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3717, file: !3572, line: 38, baseType: !29, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3717, file: !3572, line: 39, baseType: !3479, size: 64, offset: 448)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3717, file: !3572, line: 40, baseType: !3761, size: 64, offset: 512)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3717, file: !3572, line: 41, baseType: !3765, size: 64, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !3572, line: 26, size: 192, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3766, file: !3572, line: 27, baseType: !29, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3766, file: !3572, line: 28, baseType: !29, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3766, file: !3572, line: 29, baseType: !31, size: 32, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3668, file: !160, line: 380, baseType: !3772, size: 256, offset: 256)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !160, line: 148, size: 256, elements: !3773)
!3773 = !{!3774, !3775, !3776}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3772, file: !160, line: 149, baseType: !755, size: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3772, file: !160, line: 150, baseType: !31, size: 32, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3772, file: !160, line: 151, baseType: !3777, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !160, line: 141, size: 256, elements: !3779)
!3779 = !{!3780, !3849, !3850, !3851}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3778, file: !160, line: 142, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !160, line: 138, baseType: !3782)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!170, !3785, !31, !3848}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !160, line: 93, size: 67776, elements: !3787)
!3787 = !{!3788, !3791, !3794, !3797, !3798, !3799, !3800, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3828, !3831, !3832, !3833, !3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3786, file: !160, line: 94, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !160, line: 13, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3786, file: !160, line: 95, baseType: !3792, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !160, line: 15, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3786, file: !160, line: 96, baseType: !3795, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !160, line: 14, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3786, file: !160, line: 97, baseType: !29, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3786, file: !160, line: 98, baseType: !31, size: 32, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3786, file: !160, line: 99, baseType: !703, size: 256, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3786, file: !160, line: 100, baseType: !3801, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3804, line: 10, flags: DIFlagFwdDecl)
!3804 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3786, file: !160, line: 101, baseType: !48, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3786, file: !160, line: 102, baseType: !29, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3786, file: !160, line: 103, baseType: !7, size: 32, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3786, file: !160, line: 104, baseType: !947, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3786, file: !160, line: 105, baseType: !7, size: 32, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3786, file: !160, line: 106, baseType: !323, size: 64, offset: 960)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3786, file: !160, line: 109, baseType: !3812, size: 33088, offset: 1024)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3813, line: 14, size: 33088, elements: !3814)
!3813 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3814 = !{!3815, !3819, !3826, !3827}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3812, file: !3813, line: 15, baseType: !3816, size: 32768)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32768, elements: !3817)
!3817 = !{!3818}
!3818 = !DISubrange(count: 4096)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3812, file: !3813, line: 16, baseType: !3820, size: 192, offset: 32768)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3821, line: 18, size: 192, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3820, file: !3821, line: 19, baseType: !947, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3820, file: !3821, line: 20, baseType: !44, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3820, file: !3821, line: 21, baseType: !44, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3812, file: !3813, line: 17, baseType: !44, size: 64, offset: 32960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3812, file: !3813, line: 18, baseType: !31, size: 32, offset: 33024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3786, file: !160, line: 111, baseType: !3829, size: 64, offset: 34112)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !594, line: 913, baseType: !3830)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 64, elements: !599)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3786, file: !160, line: 114, baseType: !859, size: 8, offset: 34176)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3786, file: !160, line: 117, baseType: !3812, size: 33088, offset: 34240)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3786, file: !160, line: 118, baseType: !3834, size: 64, offset: 67328)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !160, line: 79, size: 64, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3835, file: !160, line: 80, baseType: !35, size: 16)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3835, file: !160, line: 81, baseType: !96, size: 8, offset: 16)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3835, file: !160, line: 82, baseType: !96, size: 8, offset: 24)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3835, file: !160, line: 83, baseType: !31, size: 32, offset: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3786, file: !160, line: 119, baseType: !48, size: 64, offset: 67392)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3786, file: !160, line: 120, baseType: !31, size: 32, offset: 67456)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3786, file: !160, line: 121, baseType: !31, size: 32, offset: 67488)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3786, file: !160, line: 122, baseType: !31, size: 32, offset: 67520)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3786, file: !160, line: 123, baseType: !398, size: 64, offset: 67584)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3786, file: !160, line: 125, baseType: !50, size: 64, offset: 67648)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3786, file: !160, line: 126, baseType: !323, size: 64, offset: 67712)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3778, file: !160, line: 143, baseType: !3781, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3778, file: !160, line: 144, baseType: !3781, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3778, file: !160, line: 145, baseType: !3781, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3668, file: !160, line: 381, baseType: !947, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3668, file: !160, line: 382, baseType: !3854, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !177, line: 821, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, scope: !3668, file: !160, line: 387, baseType: !3857, size: 64, offset: 640)
!3857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3668, file: !160, line: 387, size: 64, elements: !3858)
!3858 = !{!3859, !3860}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3857, file: !160, line: 388, baseType: !29, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3857, file: !160, line: 389, baseType: !58, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3668, file: !160, line: 391, baseType: !29, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3668, file: !160, line: 394, baseType: !31, size: 32, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3668, file: !160, line: 397, baseType: !31, size: 32, offset: 800)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3668, file: !160, line: 398, baseType: !3865, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3668, file: !160, line: 399, baseType: !3867, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !160, line: 399, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3668, file: !160, line: 401, baseType: !3870, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!31, !3667, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !177, line: 671, size: 8512, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !4059, !4060, !4061, !4062, !4068, !4069, !4070, !4071, !4072, !4156, !4157, !4158, !4159, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4279, !4280, !4281, !4282, !4283, !4284, !4299, !4300, !4301, !4302, !4303, !4309, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4326, !4497, !4498, !4499, !4500, !4769, !4770, !4771}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3874, file: !177, line: 678, baseType: !106, size: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3874, file: !177, line: 684, baseType: !106, size: 128, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3874, file: !177, line: 685, baseType: !106, size: 128, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3874, file: !177, line: 689, baseType: !390, size: 192, align: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3874, file: !177, line: 690, baseType: !398, size: 64, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3874, file: !177, line: 696, baseType: !106, size: 128, offset: 640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3874, file: !177, line: 698, baseType: !755, size: 128, offset: 768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3874, file: !177, line: 699, baseType: !106, size: 128, offset: 896)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3874, file: !177, line: 700, baseType: !31, size: 32, offset: 1024)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3874, file: !177, line: 703, baseType: !31, size: 32, offset: 1056)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3874, file: !177, line: 705, baseType: !31, size: 32, offset: 1088)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3874, file: !177, line: 707, baseType: !7, size: 32, offset: 1120)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3874, file: !177, line: 708, baseType: !3873, size: 64, offset: 1152)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3874, file: !177, line: 714, baseType: !3890, size: 64, offset: 1216)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !177, line: 302, size: 2432, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3969, !3970, !3971, !3972, !3973, !3977, !3978, !3982, !3986, !3987, !3991, !3995, !3996, !3997, !4001, !4005, !4009, !4010, !4011, !4015, !4016, !4020, !4024, !4025, !4045, !4049, !4050, !4051, !4055}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3891, file: !177, line: 303, baseType: !106, size: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3891, file: !177, line: 305, baseType: !1521, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3891, file: !177, line: 306, baseType: !2515, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3891, file: !177, line: 307, baseType: !2515, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3891, file: !177, line: 308, baseType: !1614, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3891, file: !177, line: 309, baseType: !1614, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3891, file: !177, line: 310, baseType: !25, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3891, file: !177, line: 311, baseType: !31, size: 32, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3891, file: !177, line: 316, baseType: !31, size: 32, offset: 544)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3891, file: !177, line: 318, baseType: !324, size: 64, offset: 576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3891, file: !177, line: 319, baseType: !3904, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !177, line: 977, size: 1856, elements: !3906)
!3906 = !{!3907, !3959, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3905, file: !177, line: 978, baseType: !3908, size: 896)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !177, line: 873, size: 896, elements: !3909)
!3909 = !{!3910, !3911, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3908, file: !177, line: 874, baseType: !3890, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3908, file: !177, line: 875, baseType: !3912, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !177, line: 912, size: 1792, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3913, file: !177, line: 917, baseType: !490, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3913, file: !177, line: 923, baseType: !703, size: 256, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3913, file: !177, line: 925, baseType: !106, size: 128, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3913, file: !177, line: 926, baseType: !3919, size: 128, offset: 448)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !177, line: 901, size: 128, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3919, file: !177, line: 902, baseType: !533, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3919, file: !177, line: 903, baseType: !398, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3913, file: !177, line: 927, baseType: !3919, size: 128, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3913, file: !177, line: 928, baseType: !106, size: 128, offset: 704)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3913, file: !177, line: 930, baseType: !31, size: 32, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3913, file: !177, line: 931, baseType: !31, size: 32, offset: 864)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3913, file: !177, line: 932, baseType: !31, size: 32, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3913, file: !177, line: 934, baseType: !31, size: 32, offset: 928)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3913, file: !177, line: 935, baseType: !31, size: 32, offset: 960)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3913, file: !177, line: 936, baseType: !31, size: 32, offset: 992)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3913, file: !177, line: 937, baseType: !31, size: 32, offset: 1024)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3913, file: !177, line: 939, baseType: !346, size: 32, offset: 1056)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3913, file: !177, line: 940, baseType: !329, size: 64, offset: 1088)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3913, file: !177, line: 945, baseType: !398, size: 64, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3913, file: !177, line: 946, baseType: !398, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3913, file: !177, line: 947, baseType: !398, size: 64, offset: 1280)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3913, file: !177, line: 953, baseType: !3912, size: 64, offset: 1344)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3913, file: !177, line: 954, baseType: !398, size: 64, offset: 1408)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3913, file: !177, line: 955, baseType: !398, size: 64, offset: 1472)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3913, file: !177, line: 956, baseType: !31, size: 32, offset: 1536)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3913, file: !177, line: 958, baseType: !31, size: 32, offset: 1568)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3913, file: !177, line: 960, baseType: !683, size: 128, align: 64, offset: 1600)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3913, file: !177, line: 968, baseType: !3944, size: 64, offset: 1728)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3945, line: 12, baseType: !3946)
!3945 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3945, line: 10, size: 64, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3946, file: !3945, line: 11, baseType: !696, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3908, file: !177, line: 877, baseType: !106, size: 128, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3908, file: !177, line: 879, baseType: !106, size: 128, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3908, file: !177, line: 880, baseType: !106, size: 128, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3908, file: !177, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3908, file: !177, line: 885, baseType: !7, size: 32, offset: 544)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3908, file: !177, line: 886, baseType: !7, size: 32, offset: 576)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3908, file: !177, line: 888, baseType: !58, size: 32, offset: 608)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3908, file: !177, line: 889, baseType: !683, size: 128, align: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3908, file: !177, line: 891, baseType: !29, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3908, file: !177, line: 898, baseType: !31, size: 32, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3905, file: !177, line: 979, baseType: !3960, size: 64, offset: 896)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3905, file: !177, line: 981, baseType: !106, size: 128, offset: 960)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3905, file: !177, line: 982, baseType: !31, size: 32, offset: 1088)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3905, file: !177, line: 984, baseType: !31, size: 32, offset: 1120)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3905, file: !177, line: 985, baseType: !31, size: 32, offset: 1152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3905, file: !177, line: 987, baseType: !490, size: 32, offset: 1184)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3905, file: !177, line: 988, baseType: !465, size: 512, offset: 1216)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3905, file: !177, line: 989, baseType: !473, size: 64, offset: 1728)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3905, file: !177, line: 990, baseType: !7, size: 32, offset: 1792)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3891, file: !177, line: 320, baseType: !58, size: 32, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3891, file: !177, line: 321, baseType: !31, size: 32, offset: 736)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3891, file: !177, line: 322, baseType: !31, size: 32, offset: 768)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3891, file: !177, line: 325, baseType: !7, size: 32, offset: 800)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3891, file: !177, line: 331, baseType: !3974, size: 64, offset: 832)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !3890}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3891, file: !177, line: 332, baseType: !3974, size: 64, offset: 896)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3891, file: !177, line: 350, baseType: !3979, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!31, !3873}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3891, file: !177, line: 356, baseType: !3983, size: 64, offset: 1024)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !3873, !647}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3891, file: !177, line: 357, baseType: !3983, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3891, file: !177, line: 385, baseType: !3988, size: 64, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!31, !3873, !31}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3891, file: !177, line: 386, baseType: !3992, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3873, !31}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3891, file: !177, line: 406, baseType: !3992, size: 64, offset: 1280)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3891, file: !177, line: 407, baseType: !3992, size: 64, offset: 1344)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3891, file: !177, line: 415, baseType: !3998, size: 64, offset: 1408)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !3873}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3891, file: !177, line: 427, baseType: !4002, size: 64, offset: 1472)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !3890, !7}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3891, file: !177, line: 436, baseType: !4006, size: 64, offset: 1536)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!31, !3890}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3891, file: !177, line: 443, baseType: !3974, size: 64, offset: 1600)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3891, file: !177, line: 450, baseType: !3979, size: 64, offset: 1664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3891, file: !177, line: 455, baseType: !4012, size: 64, offset: 1728)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3960, !859}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3891, file: !177, line: 461, baseType: !792, size: 64, offset: 1792)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3891, file: !177, line: 469, baseType: !4017, size: 64, offset: 1856)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{null, !3960, !3960}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3891, file: !177, line: 476, baseType: !4021, size: 64, offset: 1920)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!29, !3873, !2082, !31, !859}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3891, file: !177, line: 483, baseType: !1259, size: 64, offset: 1984)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3891, file: !177, line: 494, baseType: !4026, size: 64, offset: 2048)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!323, !3873, !4029, !48}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !177, line: 1014, size: 448, elements: !4031)
!4031 = !{!4032, !4033, !4036, !4037, !4038, !4039, !4044}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4030, file: !177, line: 1015, baseType: !3873, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4030, file: !177, line: 1016, baseType: !4034, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !177, line: 641, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4030, file: !177, line: 1017, baseType: !48, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4030, file: !177, line: 1018, baseType: !48, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !4030, file: !177, line: 1019, baseType: !398, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4030, file: !177, line: 1020, baseType: !4040, size: 64, offset: 320)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4030, file: !177, line: 1020, size: 64, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4040, file: !177, line: 1021, baseType: !29, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4040, file: !177, line: 1022, baseType: !48, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4030, file: !177, line: 1024, baseType: !31, size: 32, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3891, file: !177, line: 506, baseType: !4046, size: 64, offset: 2112)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!31, !109}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3891, file: !177, line: 520, baseType: !3998, size: 64, offset: 2176)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3891, file: !177, line: 530, baseType: !3979, size: 64, offset: 2240)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3891, file: !177, line: 537, baseType: !4052, size: 64, offset: 2304)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!859, !3890, !31}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3891, file: !177, line: 542, baseType: !4056, size: 64, offset: 2368)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!31, !3873, !398}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3874, file: !177, line: 715, baseType: !29, size: 64, offset: 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3874, file: !177, line: 717, baseType: !176, size: 32, offset: 1344)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3874, file: !177, line: 718, baseType: !7, size: 32, offset: 1376)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3874, file: !177, line: 719, baseType: !4063, size: 64, offset: 1408)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4064, line: 26, baseType: !4065)
!4064 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4064, line: 24, size: 64, elements: !4066)
!4066 = !{!4067}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4065, file: !4064, line: 25, baseType: !3944, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3874, file: !177, line: 720, baseType: !698, size: 64, offset: 1472)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3874, file: !177, line: 728, baseType: !398, size: 64, offset: 1536)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3874, file: !177, line: 729, baseType: !398, size: 64, offset: 1600)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3874, file: !177, line: 730, baseType: !398, size: 64, offset: 1664)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3874, file: !177, line: 732, baseType: !4073, size: 1088, offset: 1728)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !4074, line: 385, size: 1088, elements: !4075)
!4074 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!4075 = !{!4076, !4077, !4078, !4079, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4129, !4130, !4137, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4073, file: !4074, line: 390, baseType: !341, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4073, file: !4074, line: 395, baseType: !341, size: 32, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4073, file: !4074, line: 400, baseType: !399, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 402, baseType: !4080, size: 64, offset: 128)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 402, size: 64, elements: !4081)
!4081 = !{!4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4080, file: !4074, line: 403, baseType: !399, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4080, file: !4074, line: 404, baseType: !399, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !4073, file: !4074, line: 407, baseType: !399, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !4073, file: !4074, line: 408, baseType: !399, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !4073, file: !4074, line: 410, baseType: !399, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !4073, file: !4074, line: 411, baseType: !399, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !4073, file: !4074, line: 412, baseType: !399, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !4073, file: !4074, line: 413, baseType: !399, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !4073, file: !4074, line: 414, baseType: !399, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !4073, file: !4074, line: 415, baseType: !399, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !4073, file: !4074, line: 416, baseType: !399, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !4073, file: !4074, line: 417, baseType: !399, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4073, file: !4074, line: 418, baseType: !399, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4073, file: !4074, line: 419, baseType: !399, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4073, file: !4074, line: 420, baseType: !399, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !4073, file: !4074, line: 421, baseType: !399, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !4073, file: !4074, line: 422, baseType: !399, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4073, file: !4074, line: 423, baseType: !399, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !4073, file: !4074, line: 424, baseType: !399, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !4073, file: !4074, line: 435, baseType: !399, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !4073, file: !4074, line: 436, baseType: !399, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !4073, file: !4074, line: 437, baseType: !399, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !4073, file: !4074, line: 439, baseType: !399, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !4073, file: !4074, line: 440, baseType: !399, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !4073, file: !4074, line: 442, baseType: !399, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !4073, file: !4074, line: 443, baseType: !399, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !4073, file: !4074, line: 444, baseType: !399, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !4073, file: !4074, line: 445, baseType: !399, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !4073, file: !4074, line: 446, baseType: !399, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !4073, file: !4074, line: 447, baseType: !399, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !4073, file: !4074, line: 448, baseType: !399, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !4073, file: !4074, line: 449, baseType: !399, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !4073, file: !4074, line: 450, baseType: !399, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !4073, file: !4074, line: 451, baseType: !399, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !4073, file: !4074, line: 452, baseType: !399, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4073, file: !4074, line: 453, baseType: !399, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !4073, file: !4074, line: 454, baseType: !399, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !4073, file: !4074, line: 455, baseType: !399, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !4073, file: !4074, line: 456, baseType: !399, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !4073, file: !4074, line: 457, baseType: !399, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !4073, file: !4074, line: 458, baseType: !399, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !4073, file: !4074, line: 459, baseType: !399, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 461, baseType: !4125, size: 32, offset: 384)
!4125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 461, size: 32, elements: !4126)
!4126 = !{!4127, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4125, file: !4074, line: 462, baseType: !341, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4125, file: !4074, line: 463, baseType: !341, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !4073, file: !4074, line: 466, baseType: !341, size: 32, offset: 416)
!4130 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 467, baseType: !4131, size: 64, offset: 448)
!4131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 467, size: 64, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4131, file: !4074, line: 468, baseType: !399, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4131, file: !4074, line: 469, baseType: !399, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4131, file: !4074, line: 470, baseType: !399, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4131, file: !4074, line: 471, baseType: !399, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4073, file: !4074, line: 473, baseType: !4138, size: 64, offset: 512)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4073, file: !4074, line: 473, size: 64, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4138, file: !4074, line: 474, baseType: !399, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4138, file: !4074, line: 475, baseType: !399, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4138, file: !4074, line: 476, baseType: !399, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4138, file: !4074, line: 477, baseType: !399, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !4073, file: !4074, line: 479, baseType: !399, size: 64, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !4073, file: !4074, line: 485, baseType: !399, size: 64, offset: 640)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !4073, file: !4074, line: 490, baseType: !341, size: 32, offset: 704)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4073, file: !4074, line: 492, baseType: !872, size: 32, offset: 736)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !4073, file: !4074, line: 501, baseType: !399, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !4073, file: !4074, line: 506, baseType: !341, size: 32, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !4073, file: !4074, line: 507, baseType: !103, size: 16, offset: 864)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !4073, file: !4074, line: 508, baseType: !103, size: 16, offset: 880)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !4073, file: !4074, line: 509, baseType: !341, size: 32, offset: 896)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !4073, file: !4074, line: 510, baseType: !341, size: 32, offset: 928)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !4073, file: !4074, line: 518, baseType: !399, size: 64, offset: 960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !4073, file: !4074, line: 520, baseType: !399, size: 64, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3874, file: !177, line: 733, baseType: !102, size: 16, offset: 2816)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3874, file: !177, line: 734, baseType: !102, size: 16, offset: 2832)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3874, file: !177, line: 735, baseType: !102, size: 16, offset: 2848)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3874, file: !177, line: 736, baseType: !4160, size: 1536, offset: 2880)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !177, line: 155, size: 1536, elements: !4161)
!4161 = !{!4162, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4246, !4247, !4248, !4249}
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !177, line: 157, baseType: !4163, size: 768)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !177, line: 157, size: 768, elements: !4164)
!4164 = !{!4165, !4184, !4188, !4192, !4197, !4219}
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 158, baseType: !4166, size: 768)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 158, size: 768, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4183}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4166, file: !177, line: 159, baseType: !398, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4166, file: !177, line: 160, baseType: !398, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4166, file: !177, line: 161, baseType: !48, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4166, file: !177, line: 162, baseType: !48, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4166, file: !177, line: 163, baseType: !31, size: 32, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4166, file: !177, line: 164, baseType: !31, size: 32, offset: 288)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4166, file: !177, line: 165, baseType: !31, size: 32, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4166, file: !177, line: 166, baseType: !31, size: 32, offset: 352)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4166, file: !177, line: 168, baseType: !4177, size: 192, offset: 384)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !177, line: 134, size: 192, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4182}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4177, file: !177, line: 135, baseType: !398, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4177, file: !177, line: 136, baseType: !7, size: 32, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4177, file: !177, line: 137, baseType: !31, size: 32, offset: 96)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4177, file: !177, line: 138, baseType: !31, size: 32, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4166, file: !177, line: 169, baseType: !4177, size: 192, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 171, baseType: !4185, size: 512)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 171, size: 512, elements: !4186)
!4186 = !{!4187}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4185, file: !177, line: 172, baseType: !465, size: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 174, baseType: !4189, size: 128)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 174, size: 128, elements: !4190)
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4189, file: !177, line: 176, baseType: !106, size: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 178, baseType: !4193, size: 128)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 178, size: 128, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4193, file: !177, line: 179, baseType: !398, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4193, file: !177, line: 180, baseType: !398, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 183, baseType: !4198, size: 320)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 183, size: 320, elements: !4199)
!4199 = !{!4200, !4208}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4198, file: !177, line: 189, baseType: !4201, size: 192)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4202, line: 14, size: 192, elements: !4203)
!4202 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4203 = !{!4204, !4205, !4206, !4207}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4201, file: !4202, line: 15, baseType: !48, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4201, file: !4202, line: 16, baseType: !48, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4201, file: !4202, line: 17, baseType: !92, size: 8, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4201, file: !4202, line: 18, baseType: !92, size: 8, offset: 136)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4198, file: !177, line: 190, baseType: !4209, size: 128, offset: 192)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4210, line: 21, size: 128, elements: !4211)
!4210 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4211 = !{!4212, !4217}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4209, file: !4210, line: 22, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4210, line: 17, size: 64, elements: !4214)
!4214 = !{!4215}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4213, file: !4210, line: 18, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4209, file: !4210, line: 23, baseType: !4218, size: 64, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !177, line: 193, baseType: !4220, size: 192)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !177, line: 193, size: 192, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4226}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4220, file: !177, line: 194, baseType: !92, size: 8)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4220, file: !177, line: 195, baseType: !92, size: 8, offset: 8)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4220, file: !177, line: 196, baseType: !102, size: 16, offset: 16)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4220, file: !177, line: 197, baseType: !398, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4220, file: !177, line: 198, baseType: !398, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4160, file: !177, line: 205, baseType: !329, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4160, file: !177, line: 211, baseType: !29, size: 64, offset: 832)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4160, file: !177, line: 214, baseType: !48, size: 64, offset: 896)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4160, file: !177, line: 223, baseType: !31, size: 32, offset: 960)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4160, file: !177, line: 229, baseType: !4063, size: 64, offset: 1024)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4160, file: !177, line: 234, baseType: !398, size: 64, offset: 1088)
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !177, line: 236, baseType: !4234, size: 128, offset: 1152)
!4234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !177, line: 236, size: 128, elements: !4235)
!4235 = !{!4236, !4241}
!4236 = !DIDerivedType(tag: DW_TAG_member, scope: !4234, file: !177, line: 237, baseType: !4237, size: 128)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4234, file: !177, line: 237, size: 128, elements: !4238)
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4237, file: !177, line: 241, baseType: !398, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4237, file: !177, line: 249, baseType: !4063, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4234, file: !177, line: 251, baseType: !4242, size: 128)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4234, file: !177, line: 251, size: 128, elements: !4243)
!4243 = !{!4244, !4245}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4242, file: !177, line: 252, baseType: !398, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4242, file: !177, line: 253, baseType: !398, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4160, file: !177, line: 261, baseType: !398, size: 64, offset: 1280)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4160, file: !177, line: 262, baseType: !398, size: 64, offset: 1344)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4160, file: !177, line: 268, baseType: !398, size: 64, offset: 1408)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4160, file: !177, line: 269, baseType: !398, size: 64, offset: 1472)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3874, file: !177, line: 738, baseType: !3912, size: 64, offset: 4416)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3874, file: !177, line: 744, baseType: !3960, size: 64, offset: 4480)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3874, file: !177, line: 745, baseType: !696, size: 64, offset: 4544)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3874, file: !177, line: 751, baseType: !698, size: 64, offset: 4608)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3874, file: !177, line: 752, baseType: !698, size: 64, offset: 4672)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3874, file: !177, line: 757, baseType: !703, size: 256, offset: 4736)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3874, file: !177, line: 758, baseType: !106, size: 128, offset: 4992)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3874, file: !177, line: 759, baseType: !3873, size: 64, offset: 5120)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3874, file: !177, line: 761, baseType: !31, size: 32, offset: 5184)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3874, file: !177, line: 762, baseType: !31, size: 32, offset: 5216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3874, file: !177, line: 764, baseType: !106, size: 128, offset: 5248)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3874, file: !177, line: 765, baseType: !329, size: 64, offset: 5376)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3874, file: !177, line: 768, baseType: !703, size: 256, offset: 5440)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3874, file: !177, line: 769, baseType: !58, size: 32, offset: 5696)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3874, file: !177, line: 771, baseType: !4034, size: 64, offset: 5760)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3874, file: !177, line: 772, baseType: !106, size: 128, offset: 5824)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3874, file: !177, line: 773, baseType: !48, size: 64, offset: 5952)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3874, file: !177, line: 774, baseType: !31, size: 32, offset: 6016)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3874, file: !177, line: 777, baseType: !63, size: 192, offset: 6080)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3874, file: !177, line: 778, baseType: !4270, size: 64, offset: 6272)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !249, line: 1083, size: 384, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4271, file: !249, line: 1084, baseType: !720, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4271, file: !249, line: 1085, baseType: !31, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4271, file: !249, line: 1086, baseType: !31, size: 32, offset: 96)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4271, file: !249, line: 1087, baseType: !4270, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4271, file: !249, line: 1088, baseType: !675, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4271, file: !249, line: 1089, baseType: !683, size: 128, align: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3874, file: !177, line: 781, baseType: !7, size: 32, offset: 6336)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3874, file: !177, line: 782, baseType: !7, size: 32, offset: 6368)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3874, file: !177, line: 783, baseType: !7, size: 32, offset: 6400)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3874, file: !177, line: 784, baseType: !7, size: 32, offset: 6432)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3874, file: !177, line: 785, baseType: !48, size: 64, offset: 6464)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3874, file: !177, line: 786, baseType: !4285, size: 256, offset: 6528)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4286, line: 17, size: 256, elements: !4287)
!4286 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4287 = !{!4288, !4289, !4294}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4285, file: !4286, line: 18, baseType: !355, size: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4285, file: !4286, line: 19, baseType: !4290, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !4293}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4285, file: !4286, line: 20, baseType: !4295, size: 64, offset: 192)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4296, line: 16, size: 64, elements: !4297)
!4296 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4297 = !{!4298}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4295, file: !4296, line: 17, baseType: !329, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3874, file: !177, line: 787, baseType: !683, size: 128, align: 64, offset: 6784)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3874, file: !177, line: 788, baseType: !7, size: 32, offset: 6912)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3874, file: !177, line: 789, baseType: !4295, size: 64, offset: 6976)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3874, file: !177, line: 791, baseType: !58, size: 32, offset: 7040)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3874, file: !177, line: 794, baseType: !4304, size: 192, offset: 7104)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !177, line: 579, size: 192, elements: !4305)
!4305 = !{!4306, !4307, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4304, file: !177, line: 580, baseType: !106, size: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4304, file: !177, line: 581, baseType: !490, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4304, file: !177, line: 582, baseType: !7, size: 32, offset: 160)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3874, file: !177, line: 796, baseType: !4310, size: 64, offset: 7296)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !177, line: 585, size: 128, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4311, file: !177, line: 586, baseType: !48, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4311, file: !177, line: 587, baseType: !48, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3874, file: !177, line: 797, baseType: !48, size: 64, offset: 7360)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3874, file: !177, line: 800, baseType: !3873, size: 64, offset: 7424)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3874, file: !177, line: 802, baseType: !3998, size: 64, offset: 7488)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3874, file: !177, line: 803, baseType: !683, size: 128, align: 64, offset: 7552)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3874, file: !177, line: 805, baseType: !771, size: 64, offset: 7680)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3874, file: !177, line: 806, baseType: !398, size: 64, offset: 7744)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3874, file: !177, line: 808, baseType: !698, size: 64, offset: 7808)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3874, file: !177, line: 810, baseType: !4323, size: 64, offset: 7872)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!398}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3874, file: !177, line: 811, baseType: !4327, size: 64, offset: 7936)
!4327 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !177, line: 605, baseType: !4328)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !3873, !4331, !4436}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !177, line: 1148, size: 2048, align: 512, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4343, !4344, !4345, !4350, !4351, !4358, !4379, !4401, !4411, !4429, !4430, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4332, file: !177, line: 1153, baseType: !398, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4332, file: !177, line: 1154, baseType: !398, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4332, file: !177, line: 1155, baseType: !398, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4332, file: !177, line: 1161, baseType: !398, size: 64, offset: 192)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4332, file: !177, line: 1165, baseType: !4339, size: 64, offset: 256)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4332, file: !177, line: 1162, size: 64, elements: !4340)
!4340 = !{!4341, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4339, file: !177, line: 1163, baseType: !340, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4339, file: !177, line: 1164, baseType: !340, size: 32, offset: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4332, file: !177, line: 1166, baseType: !398, size: 64, offset: 320)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4332, file: !177, line: 1167, baseType: !398, size: 64, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4332, file: !177, line: 1171, baseType: !4346, size: 64, offset: 448)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4332, file: !177, line: 1168, size: 64, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4346, file: !177, line: 1169, baseType: !340, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4346, file: !177, line: 1170, baseType: !340, size: 32, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4332, file: !177, line: 1177, baseType: !398, size: 64, offset: 512)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4332, file: !177, line: 1178, baseType: !4352, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !177, line: 67, size: 64, elements: !4354)
!4354 = !{!4355, !4356}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4353, file: !177, line: 68, baseType: !399, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4353, file: !177, line: 69, baseType: !4357, offset: 64)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !1090)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4332, file: !177, line: 1179, baseType: !4359, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !177, line: 93, size: 256, elements: !4361)
!4361 = !{!4362, !4378}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4360, file: !177, line: 94, baseType: !4363, size: 224)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !177, line: 83, size: 224, elements: !4364)
!4364 = !{!4365, !4371, !4376, !4377}
!4365 = !DIDerivedType(tag: DW_TAG_member, scope: !4363, file: !177, line: 84, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4363, file: !177, line: 84, size: 64, elements: !4367)
!4367 = !{!4368, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4366, file: !177, line: 85, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4366, file: !177, line: 86, baseType: !48, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4363, file: !177, line: 88, baseType: !4372, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !177, line: 80, baseType: !4373)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!48, !29, !2898, !48, !48}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4363, file: !177, line: 89, baseType: !29, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4363, file: !177, line: 90, baseType: !340, size: 32, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4360, file: !177, line: 95, baseType: !340, size: 32, offset: 224)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4332, file: !177, line: 1180, baseType: !4380, size: 64, offset: 704)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !177, line: 123, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4381, file: !177, line: 124, baseType: !399, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4381, file: !177, line: 125, baseType: !399, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4381, file: !177, line: 126, baseType: !4386, offset: 128)
!4386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4387, elements: !1090)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !4074, line: 1415, size: 192, elements: !4388)
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4387, file: !4074, line: 1416, baseType: !399, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4387, file: !4074, line: 1417, baseType: !399, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4387, file: !4074, line: 1418, baseType: !399, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4387, file: !4074, line: 1419, baseType: !399, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4387, file: !4074, line: 1420, baseType: !399, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4387, file: !4074, line: 1421, baseType: !399, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4387, file: !4074, line: 1422, baseType: !399, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4387, file: !4074, line: 1423, baseType: !399, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4387, file: !4074, line: 1424, baseType: !399, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4387, file: !4074, line: 1425, baseType: !399, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4387, file: !4074, line: 1426, baseType: !399, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4387, file: !4074, line: 1427, baseType: !399, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4332, file: !177, line: 1181, baseType: !4402, size: 64, offset: 768)
!4402 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !4074, line: 1430, size: 64, elements: !4403)
!4403 = !{!4404, !4405}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4402, file: !4074, line: 1431, baseType: !399, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, scope: !4402, file: !4074, line: 1433, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4402, file: !4074, line: 1433, size: 64, elements: !4407)
!4407 = !{!4408, !4409, !4410}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4406, file: !4074, line: 1434, baseType: !341, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4406, file: !4074, line: 1435, baseType: !103, size: 16, offset: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4406, file: !4074, line: 1436, baseType: !103, size: 16, offset: 48)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4332, file: !177, line: 1182, baseType: !4412, size: 64, offset: 832)
!4412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !4074, line: 1267, size: 64, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4412, file: !4074, line: 1268, baseType: !399, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, scope: !4412, file: !4074, line: 1269, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4412, file: !4074, line: 1269, size: 64, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4416, file: !4074, line: 1270, baseType: !399, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4416, file: !4074, line: 1271, baseType: !399, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4416, file: !4074, line: 1272, baseType: !399, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4416, file: !4074, line: 1273, baseType: !399, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4416, file: !4074, line: 1274, baseType: !399, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4416, file: !4074, line: 1275, baseType: !399, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4416, file: !4074, line: 1276, baseType: !399, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4416, file: !4074, line: 1277, baseType: !399, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4416, file: !4074, line: 1278, baseType: !399, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4416, file: !4074, line: 1279, baseType: !399, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4416, file: !4074, line: 1280, baseType: !399, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4332, file: !177, line: 1183, baseType: !398, size: 64, offset: 896)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4332, file: !177, line: 1185, baseType: !4431, size: 128, offset: 960)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4432, line: 7, size: 128, elements: !4433)
!4432 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4431, file: !4432, line: 8, baseType: !399, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4431, file: !4432, line: 9, baseType: !4436, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4438, line: 103, size: 1344, elements: !4439)
!4438 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4468, !4469, !4470}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4437, file: !4438, line: 109, baseType: !48, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4437, file: !4438, line: 110, baseType: !48, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4437, file: !4438, line: 111, baseType: !48, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4437, file: !4438, line: 112, baseType: !48, size: 64, offset: 192)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4437, file: !4438, line: 113, baseType: !48, size: 64, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4437, file: !4438, line: 114, baseType: !48, size: 64, offset: 320)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4437, file: !4438, line: 117, baseType: !48, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4437, file: !4438, line: 118, baseType: !48, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4437, file: !4438, line: 119, baseType: !48, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4437, file: !4438, line: 120, baseType: !48, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4437, file: !4438, line: 121, baseType: !48, size: 64, offset: 640)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4437, file: !4438, line: 122, baseType: !48, size: 64, offset: 704)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4437, file: !4438, line: 123, baseType: !48, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4437, file: !4438, line: 124, baseType: !48, size: 64, offset: 832)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4437, file: !4438, line: 125, baseType: !48, size: 64, offset: 896)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4437, file: !4438, line: 139, baseType: !48, size: 64, offset: 960)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4437, file: !4438, line: 142, baseType: !48, size: 64, offset: 1024)
!4457 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4438, line: 144, baseType: !4458, size: 64, offset: 1088)
!4458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4437, file: !4438, line: 144, size: 64, elements: !4459)
!4459 = !{!4460, !4461, !4462}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4458, file: !4438, line: 146, baseType: !102, size: 16)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4458, file: !4438, line: 148, baseType: !398, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4458, file: !4438, line: 150, baseType: !4463, size: 64)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4438, line: 59, size: 64, elements: !4464)
!4464 = !{!4465, !4466, !4467}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4463, file: !4438, line: 61, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4463, file: !4438, line: 63, baseType: !398, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4463, file: !4438, line: 65, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4437, file: !4438, line: 153, baseType: !48, size: 64, offset: 1152)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4437, file: !4438, line: 154, baseType: !48, size: 64, offset: 1216)
!4470 = !DIDerivedType(tag: DW_TAG_member, scope: !4437, file: !4438, line: 156, baseType: !4471, size: 64, offset: 1280)
!4471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4437, file: !4438, line: 156, size: 64, elements: !4472)
!4472 = !{!4473, !4474, !4475}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4471, file: !4438, line: 158, baseType: !102, size: 16)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4471, file: !4438, line: 160, baseType: !398, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4471, file: !4438, line: 162, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4438, line: 69, size: 64, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4476, file: !4438, line: 71, baseType: !398, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4476, file: !4438, line: 73, baseType: !398, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4476, file: !4438, line: 75, baseType: !398, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4476, file: !4438, line: 77, baseType: !398, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4476, file: !4438, line: 80, baseType: !398, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4476, file: !4438, line: 83, baseType: !398, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4476, file: !4438, line: 86, baseType: !398, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4476, file: !4438, line: 88, baseType: !398, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4476, file: !4438, line: 93, baseType: !398, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4476, file: !4438, line: 100, baseType: !398, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4332, file: !177, line: 1186, baseType: !4431, size: 128, offset: 1088)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4332, file: !177, line: 1187, baseType: !398, size: 64, offset: 1216)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4332, file: !177, line: 1189, baseType: !398, size: 64, offset: 1280)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4332, file: !177, line: 1190, baseType: !398, size: 64, offset: 1344)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4332, file: !177, line: 1191, baseType: !398, size: 64, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4332, file: !177, line: 1192, baseType: !398, size: 64, offset: 1472)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4332, file: !177, line: 1193, baseType: !398, size: 64, offset: 1536)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4332, file: !177, line: 1194, baseType: !398, size: 64, offset: 1600)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4332, file: !177, line: 1195, baseType: !398, size: 64, offset: 1664)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3874, file: !177, line: 812, baseType: !29, size: 64, offset: 8000)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3874, file: !177, line: 820, baseType: !3667, size: 64, offset: 8064)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3874, file: !177, line: 821, baseType: !3854, size: 64, offset: 8128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3874, file: !177, line: 828, baseType: !4501, size: 64, offset: 8192)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !177, line: 1046, size: 1664, elements: !4503)
!4503 = !{!4504, !4761}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4502, file: !177, line: 1047, baseType: !4505, size: 1600)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4506, line: 152, size: 1600, elements: !4507)
!4506 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4507 = !{!4508, !4617, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4760}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4505, file: !4506, line: 154, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4506, line: 389, size: 7872, elements: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4531, !4532, !4536, !4537, !4538, !4539, !4540, !4545, !4560, !4561, !4563, !4564, !4565, !4587, !4588, !4589, !4590, !4596, !4597, !4598, !4599, !4600, !4604, !4607, !4608, !4615}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4510, file: !4506, line: 391, baseType: !4505, size: 1600)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4510, file: !4506, line: 393, baseType: !48, size: 64, offset: 1600)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4510, file: !4506, line: 401, baseType: !31, size: 32, offset: 1664)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4510, file: !4506, line: 404, baseType: !31, size: 32, offset: 1696)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4510, file: !4506, line: 417, baseType: !31, size: 32, offset: 1728)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4510, file: !4506, line: 418, baseType: !31, size: 32, offset: 1760)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4510, file: !4506, line: 419, baseType: !31, size: 32, offset: 1792)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4510, file: !4506, line: 432, baseType: !31, size: 32, offset: 1824)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4510, file: !4506, line: 433, baseType: !31, size: 32, offset: 1856)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4510, file: !4506, line: 434, baseType: !31, size: 32, offset: 1888)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4510, file: !4506, line: 436, baseType: !31, size: 32, offset: 1920)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4510, file: !4506, line: 439, baseType: !7, size: 32, offset: 1952)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4510, file: !4506, line: 441, baseType: !3221, size: 64, offset: 1984)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4510, file: !4506, line: 442, baseType: !4526, size: 448, offset: 2048)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4506, line: 138, size: 448, elements: !4527)
!4527 = !{!4528, !4529, !4530}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4526, file: !4506, line: 140, baseType: !3221, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4526, file: !4506, line: 141, baseType: !48, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4526, file: !4506, line: 142, baseType: !2727, size: 320, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4510, file: !4506, line: 443, baseType: !4526, size: 448, offset: 2496)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4510, file: !4506, line: 446, baseType: !4533, offset: 2944)
!4533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4526, elements: !4534)
!4534 = !{!4535}
!4535 = !DISubrange(count: 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4510, file: !4506, line: 455, baseType: !102, size: 16, offset: 2944)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4510, file: !4506, line: 456, baseType: !102, size: 16, offset: 2960)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4510, file: !4506, line: 457, baseType: !102, size: 16, offset: 2976)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4510, file: !4506, line: 458, baseType: !102, size: 16, offset: 2992)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4510, file: !4506, line: 461, baseType: !4541, size: 896, offset: 3008)
!4541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4542, size: 896, elements: !4543)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4543 = !{!4544}
!4544 = !DISubrange(count: 14)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4510, file: !4506, line: 463, baseType: !4546, size: 64, offset: 3904)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4506, line: 537, size: 41664, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4547, file: !4506, line: 538, baseType: !3241, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4547, file: !4506, line: 541, baseType: !7, size: 32, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4547, file: !4506, line: 544, baseType: !31, size: 32, offset: 96)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4547, file: !4506, line: 547, baseType: !106, size: 128, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4547, file: !4506, line: 548, baseType: !683, size: 128, align: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4547, file: !4506, line: 555, baseType: !4510, size: 7872, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4547, file: !4506, line: 558, baseType: !4509, size: 64, offset: 8256)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4547, file: !4506, line: 561, baseType: !58, size: 32, offset: 8320)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4547, file: !4506, line: 564, baseType: !7, size: 32, offset: 8352)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4547, file: !4506, line: 567, baseType: !3816, size: 32768, offset: 8384)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4547, file: !4506, line: 570, baseType: !3084, size: 512, offset: 41152)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4510, file: !4506, line: 469, baseType: !106, size: 128, offset: 3968)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4510, file: !4506, line: 478, baseType: !4562, size: 1792, offset: 4096)
!4562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1792, elements: !4543)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4510, file: !4506, line: 487, baseType: !4509, size: 64, offset: 5888)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4510, file: !4506, line: 488, baseType: !4509, size: 64, offset: 5952)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4510, file: !4506, line: 491, baseType: !4566, size: 64, offset: 6016)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4506, line: 327, size: 896, elements: !4568)
!4568 = !{!4569, !4572, !4582, !4583, !4584, !4585, !4586}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4567, file: !4506, line: 332, baseType: !4570)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4571, line: 64, elements: !668)
!4571 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4567, file: !4506, line: 333, baseType: !4573, size: 192)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4506, line: 299, size: 192, elements: !4574)
!4574 = !{!4575}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4573, file: !4506, line: 300, baseType: !4576, size: 192)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4577, line: 17, size: 192, elements: !4578)
!4577 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4578 = !{!4579, !4580, !4581}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4576, file: !4577, line: 18, baseType: !398, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4576, file: !4577, line: 19, baseType: !398, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4576, file: !4577, line: 20, baseType: !400, size: 64, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4567, file: !4506, line: 339, baseType: !4573, size: 192, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4567, file: !4506, line: 347, baseType: !4573, size: 192, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4567, file: !4506, line: 353, baseType: !4573, size: 192, offset: 576)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4567, file: !4506, line: 366, baseType: !4509, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4567, file: !4506, line: 367, baseType: !4509, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4510, file: !4506, line: 492, baseType: !106, size: 128, offset: 6080)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4510, file: !4506, line: 495, baseType: !4573, size: 192, offset: 6208)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4510, file: !4506, line: 496, baseType: !4573, size: 192, offset: 6400)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4510, file: !4506, line: 497, baseType: !4591, size: 192, offset: 6592)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !331, line: 324, size: 192, elements: !4592)
!4592 = !{!4593, !4594, !4595}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4591, file: !331, line: 326, baseType: !398, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4591, file: !331, line: 327, baseType: !398, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4591, file: !331, line: 328, baseType: !490, size: 32, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4510, file: !4506, line: 503, baseType: !106, size: 128, offset: 6784)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4510, file: !4506, line: 504, baseType: !703, size: 256, offset: 6912)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4510, file: !4506, line: 507, baseType: !63, size: 192, offset: 7168)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4510, file: !4506, line: 510, baseType: !986, size: 256, offset: 7360)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4510, file: !4506, line: 513, baseType: !4601, size: 64, offset: 7616)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4603, line: 214, elements: !668)
!4603 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4510, file: !4506, line: 516, baseType: !4605, offset: 7680)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4606, line: 76, elements: !668)
!4606 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4510, file: !4506, line: 519, baseType: !58, size: 32, offset: 7680)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4510, file: !4506, line: 522, baseType: !4609, size: 128, offset: 7712)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4506, line: 370, size: 128, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4609, file: !4506, line: 372, baseType: !859, size: 8)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4609, file: !4506, line: 375, baseType: !31, size: 32, offset: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4609, file: !4506, line: 380, baseType: !31, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4609, file: !4506, line: 386, baseType: !31, size: 32, offset: 96)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4510, file: !4506, line: 529, baseType: !4616, offset: 7872)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4509, elements: !1090)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4505, file: !4506, line: 157, baseType: !4618, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4506, line: 669, size: 1984, elements: !4620)
!4620 = !{!4621, !4625, !4629, !4633, !4634, !4635, !4636, !4640, !4644, !4645, !4651, !4655, !4656, !4657, !4686, !4690, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4743, !4744}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4619, file: !4506, line: 670, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!4542, !4542}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4619, file: !4506, line: 671, baseType: !4626, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!31, !4542}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4619, file: !4506, line: 672, baseType: !4630, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !4542}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4619, file: !4506, line: 673, baseType: !4630, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4619, file: !4506, line: 674, baseType: !4630, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4619, file: !4506, line: 675, baseType: !4630, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4619, file: !4506, line: 676, baseType: !4637, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4542, !31}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4619, file: !4506, line: 677, baseType: !4641, size: 64, offset: 448)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!31, !3266, !4542}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4619, file: !4506, line: 679, baseType: !4641, size: 64, offset: 512)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4619, file: !4506, line: 682, baseType: !4646, size: 64, offset: 576)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!31, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4506, line: 30, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4619, file: !4506, line: 683, baseType: !4652, size: 64, offset: 640)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4649}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4619, file: !4506, line: 684, baseType: !4652, size: 64, offset: 704)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4619, file: !4506, line: 685, baseType: !3761, size: 64, offset: 768)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4619, file: !4506, line: 686, baseType: !4658, size: 64, offset: 832)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!31, !329, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4506, line: 209, size: 4736, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4662, file: !4506, line: 215, baseType: !4541, size: 896)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4662, file: !4506, line: 218, baseType: !346, size: 32, offset: 896)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4662, file: !4506, line: 226, baseType: !4661, size: 64, offset: 960)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4662, file: !4506, line: 229, baseType: !4509, size: 64, offset: 1024)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4662, file: !4506, line: 232, baseType: !31, size: 32, offset: 1088)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4662, file: !4506, line: 241, baseType: !106, size: 128, offset: 1152)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4662, file: !4506, line: 242, baseType: !106, size: 128, offset: 1280)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4662, file: !4506, line: 243, baseType: !106, size: 128, offset: 1408)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4662, file: !4506, line: 246, baseType: !106, size: 128, offset: 1536)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4662, file: !4506, line: 255, baseType: !4562, size: 1792, offset: 1664)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4662, file: !4506, line: 258, baseType: !106, size: 128, offset: 3456)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4662, file: !4506, line: 259, baseType: !106, size: 128, offset: 3584)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4662, file: !4506, line: 265, baseType: !755, size: 128, offset: 3712)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4662, file: !4506, line: 271, baseType: !106, size: 128, offset: 3840)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4662, file: !4506, line: 277, baseType: !106, size: 128, offset: 3968)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4662, file: !4506, line: 278, baseType: !106, size: 128, offset: 4096)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4662, file: !4506, line: 279, baseType: !106, size: 128, offset: 4224)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4662, file: !4506, line: 288, baseType: !4509, size: 64, offset: 4352)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4662, file: !4506, line: 289, baseType: !4509, size: 64, offset: 4416)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4662, file: !4506, line: 290, baseType: !4661, size: 64, offset: 4480)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4662, file: !4506, line: 293, baseType: !859, size: 8, offset: 4544)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4662, file: !4506, line: 296, baseType: !683, size: 128, align: 64, offset: 4608)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4619, file: !4506, line: 688, baseType: !4687, size: 64, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !329, !4661}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4619, file: !4506, line: 689, baseType: !4691, size: 64, offset: 960)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !329}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4619, file: !4506, line: 690, baseType: !4691, size: 64, offset: 1024)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4619, file: !4506, line: 691, baseType: !4691, size: 64, offset: 1088)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4619, file: !4506, line: 692, baseType: !4630, size: 64, offset: 1152)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4619, file: !4506, line: 694, baseType: !859, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4619, file: !4506, line: 707, baseType: !859, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4619, file: !4506, line: 719, baseType: !859, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4619, file: !4506, line: 722, baseType: !31, size: 32, offset: 1248)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4619, file: !4506, line: 723, baseType: !25, size: 64, offset: 1280)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4619, file: !4506, line: 726, baseType: !25, size: 64, offset: 1344)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4619, file: !4506, line: 729, baseType: !4546, size: 64, offset: 1408)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4619, file: !4506, line: 732, baseType: !776, size: 192, offset: 1472)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4619, file: !4506, line: 738, baseType: !106, size: 128, offset: 1664)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4619, file: !4506, line: 744, baseType: !4707, size: 64, offset: 1792)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4506, line: 580, size: 1728, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4719, !4720, !4721, !4725, !4729, !4730, !4731, !4732, !4733, !4737, !4741, !4742}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4708, file: !4506, line: 586, baseType: !3084, size: 512)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4708, file: !4506, line: 587, baseType: !48, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4708, file: !4506, line: 593, baseType: !44, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4708, file: !4506, line: 596, baseType: !7, size: 32, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4708, file: !4506, line: 604, baseType: !7, size: 32, offset: 672)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4708, file: !4506, line: 610, baseType: !4618, size: 64, offset: 704)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4708, file: !4506, line: 611, baseType: !106, size: 128, offset: 768)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4708, file: !4506, line: 612, baseType: !4718, size: 64, offset: 896)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4708, file: !4506, line: 614, baseType: !3257, size: 64, offset: 960)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4708, file: !4506, line: 615, baseType: !3315, size: 64, offset: 1024)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4708, file: !4506, line: 621, baseType: !4722, size: 64, offset: 1088)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!398, !4542, !4707}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4708, file: !4506, line: 625, baseType: !4726, size: 64, offset: 1152)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!409, !4542, !4707}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4708, file: !4506, line: 628, baseType: !3296, size: 64, offset: 1216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4708, file: !4506, line: 631, baseType: !3284, size: 64, offset: 1280)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4708, file: !4506, line: 632, baseType: !3292, size: 64, offset: 1344)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4708, file: !4506, line: 633, baseType: !3288, size: 64, offset: 1408)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4708, file: !4506, line: 640, baseType: !4734, size: 64, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!31, !4542, !4707, !398}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4708, file: !4506, line: 645, baseType: !4738, size: 64, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!31, !4542, !4707, !409}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4708, file: !4506, line: 654, baseType: !3323, size: 64, offset: 1600)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4708, file: !4506, line: 657, baseType: !3330, size: 64, offset: 1664)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4619, file: !4506, line: 745, baseType: !4707, size: 64, offset: 1856)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4619, file: !4506, line: 754, baseType: !7, size: 32, offset: 1920)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4505, file: !4506, line: 160, baseType: !1722, size: 128, offset: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4505, file: !4506, line: 163, baseType: !106, size: 128, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4505, file: !4506, line: 164, baseType: !106, size: 128, offset: 384)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4505, file: !4506, line: 167, baseType: !106, size: 128, offset: 512)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4505, file: !4506, line: 173, baseType: !31, size: 32, offset: 640)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4505, file: !4506, line: 175, baseType: !7, size: 32, offset: 672)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4505, file: !4506, line: 183, baseType: !398, size: 64, offset: 704)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4505, file: !4506, line: 189, baseType: !58, size: 32, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4505, file: !4506, line: 192, baseType: !986, size: 256, offset: 832)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4505, file: !4506, line: 193, baseType: !4755, size: 448, offset: 1088)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !987, line: 120, size: 448, elements: !4756)
!4756 = !{!4757, !4758, !4759}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4755, file: !987, line: 121, baseType: !986, size: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4755, file: !987, line: 122, baseType: !683, size: 128, align: 64, offset: 256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4755, file: !987, line: 125, baseType: !2380, size: 64, offset: 384)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4505, file: !4506, line: 199, baseType: !4542, size: 64, offset: 1536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4502, file: !177, line: 1048, baseType: !4762, size: 64, offset: 1600)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !177, line: 1039, size: 256, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4768}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4763, file: !177, line: 1040, baseType: !398, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4763, file: !177, line: 1041, baseType: !398, size: 64, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4763, file: !177, line: 1042, baseType: !398, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4763, file: !177, line: 1043, baseType: !31, size: 32, offset: 192)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3874, file: !177, line: 832, baseType: !29, size: 64, offset: 8256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3874, file: !177, line: 834, baseType: !106, size: 128, offset: 8320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3874, file: !177, line: 842, baseType: !341, size: 32, offset: 8448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1522, file: !153, line: 524, baseType: !7, size: 32, offset: 8320)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1522, file: !153, line: 525, baseType: !4774, size: 64, offset: 8384)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4777, line: 28, size: 192, elements: !4778)
!4777 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4776, file: !4777, line: 29, baseType: !25, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4776, file: !4777, line: 30, baseType: !25, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4776, file: !4777, line: 31, baseType: !48, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1522, file: !153, line: 526, baseType: !7, size: 32, offset: 8448)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1522, file: !153, line: 533, baseType: !29, size: 64, offset: 8512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1522, file: !153, line: 534, baseType: !7, size: 32, offset: 8576)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1522, file: !153, line: 535, baseType: !4786, size: 64, offset: 8640)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1522, file: !153, line: 536, baseType: !7, size: 32, offset: 8704)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1522, file: !153, line: 539, baseType: !31, size: 32, offset: 8736)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1522, file: !153, line: 540, baseType: !3750, size: 64, offset: 8768)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1522, file: !153, line: 563, baseType: !106, size: 128, offset: 8832)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1522, file: !153, line: 565, baseType: !106, size: 128, offset: 8960)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1522, file: !153, line: 568, baseType: !3761, size: 64, offset: 9088)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1522, file: !153, line: 570, baseType: !58, size: 32, offset: 9152)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1514, file: !6, line: 179, baseType: !4795, size: 512, offset: 128)
!4795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 512, elements: !509)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1448, file: !6, line: 101, baseType: !25, size: 64, offset: 896)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1448, file: !6, line: 102, baseType: !29, size: 64, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1448, file: !6, line: 103, baseType: !29, size: 64, offset: 1024)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1448, file: !6, line: 104, baseType: !7, size: 32, offset: 1088)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1448, file: !6, line: 105, baseType: !7, size: 32, offset: 1120)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1448, file: !6, line: 106, baseType: !7, size: 32, offset: 1152)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1448, file: !6, line: 107, baseType: !229, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1448, file: !6, line: 108, baseType: !234, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1448, file: !6, line: 109, baseType: !859, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1448, file: !6, line: 110, baseType: !859, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1448, file: !6, line: 111, baseType: !859, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1448, file: !6, line: 112, baseType: !859, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1439, file: !249, line: 2377, baseType: !4809, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4811)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !4812, line: 39, size: 256, elements: !4813)
!4812 = !DIFile(filename: "./include/linux/fs_parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e6f8b2e05f10a6300994e1bfb8d6d3")
!4813 = !{!4814, !4815, !4832, !4833, !4834}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4811, file: !4812, line: 40, baseType: !25, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4811, file: !4812, line: 41, baseType: !4816, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_param_type", file: !4812, line: 22, baseType: !4818)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!31, !4820, !4809, !1467, !4821}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parse_result", file: !4812, line: 53, size: 128, elements: !4823)
!4823 = !{!4824, !4825}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "negated", scope: !4822, file: !4812, line: 54, baseType: !859, size: 8)
!4825 = !DIDerivedType(tag: DW_TAG_member, scope: !4822, file: !4812, line: 55, baseType: !4826, size: 64, offset: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4822, file: !4812, line: 55, size: 64, elements: !4827)
!4827 = !{!4828, !4829, !4830, !4831}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !4826, file: !4812, line: 56, baseType: !859, size: 8)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "int_32", scope: !4826, file: !4812, line: 57, baseType: !31, size: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "uint_32", scope: !4826, file: !4812, line: 58, baseType: !7, size: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "uint_64", scope: !4826, file: !4812, line: 59, baseType: !398, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !4811, file: !4812, line: 42, baseType: !92, size: 8, offset: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4811, file: !4812, line: 43, baseType: !35, size: 16, offset: 144)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4811, file: !4812, line: 47, baseType: !2898, size: 64, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1439, file: !249, line: 2378, baseType: !4836, size: 64, offset: 256)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!1193, !1438, !31, !25, !29}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1439, file: !249, line: 2380, baseType: !4840, size: 64, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{null, !1429}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1439, file: !249, line: 2381, baseType: !1521, size: 64, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1439, file: !249, line: 2382, baseType: !1438, size: 64, offset: 448)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1439, file: !249, line: 2383, baseType: !751, size: 64, offset: 512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1439, file: !249, line: 2385, baseType: !4847, offset: 576)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3107, line: 206, elements: !668)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1439, file: !249, line: 2386, baseType: !4847, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1439, file: !249, line: 2387, baseType: !4847, offset: 576)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1439, file: !249, line: 2388, baseType: !4851, offset: 576)
!4851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4847, elements: !739)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1439, file: !249, line: 2390, baseType: !4847, offset: 576)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1439, file: !249, line: 2391, baseType: !4847, offset: 576)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1439, file: !249, line: 2392, baseType: !4847, offset: 576)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1439, file: !249, line: 2393, baseType: !4847, offset: 576)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1430, file: !249, line: 1197, baseType: !4857, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !249, line: 2057, size: 1664, elements: !4860)
!4860 = !{!4861, !4865, !4869, !4870, !4874, !4878, !4882, !4883, !4884, !4888, !4892, !4896, !4897, !4898, !4904, !4908, !4909, !4913, !4914, !4915, !4916, !4920, !4924, !4971, !4986, !4987}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4859, file: !249, line: 2058, baseType: !4862, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!1228, !1429}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4859, file: !249, line: 2059, baseType: !4866, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !1228}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4859, file: !249, line: 2060, baseType: !4866, size: 64, offset: 128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4859, file: !249, line: 2062, baseType: !4871, size: 64, offset: 192)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{null, !1228, !31}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4859, file: !249, line: 2063, baseType: !4875, size: 64, offset: 256)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!31, !1228, !1962}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4859, file: !249, line: 2064, baseType: !4879, size: 64, offset: 320)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!31, !1228}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4859, file: !249, line: 2065, baseType: !4866, size: 64, offset: 384)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4859, file: !249, line: 2066, baseType: !4840, size: 64, offset: 448)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4859, file: !249, line: 2067, baseType: !4885, size: 64, offset: 512)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!31, !1429, !31}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4859, file: !249, line: 2068, baseType: !4889, size: 64, offset: 576)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!31, !1429, !248}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4859, file: !249, line: 2069, baseType: !4893, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!31, !1429}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4859, file: !249, line: 2070, baseType: !4889, size: 64, offset: 704)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4859, file: !249, line: 2071, baseType: !4893, size: 64, offset: 768)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4859, file: !249, line: 2072, baseType: !4899, size: 64, offset: 832)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!31, !1193, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !249, line: 62, flags: DIFlagFwdDecl)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4859, file: !249, line: 2073, baseType: !4905, size: 64, offset: 896)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!31, !1429, !324, !947}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4859, file: !249, line: 2074, baseType: !4840, size: 64, offset: 960)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4859, file: !249, line: 2076, baseType: !4910, size: 64, offset: 1024)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!31, !3266, !1193}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4859, file: !249, line: 2077, baseType: !4910, size: 64, offset: 1088)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4859, file: !249, line: 2078, baseType: !4910, size: 64, offset: 1152)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4859, file: !249, line: 2079, baseType: !4910, size: 64, offset: 1216)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4859, file: !249, line: 2081, baseType: !4917, size: 64, offset: 1280)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!1380, !1429, !31, !947, !44, !50}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4859, file: !249, line: 2082, baseType: !4921, size: 64, offset: 1344)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!1380, !1429, !31, !25, !44, !50}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4859, file: !249, line: 2083, baseType: !4925, size: 64, offset: 1408)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!4928, !1228}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !254, line: 296, size: 1664, elements: !4931)
!4931 = !{!4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4956, !4957, !4958}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4930, file: !254, line: 297, baseType: !755, size: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4930, file: !254, line: 298, baseType: !106, size: 128, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4930, file: !254, line: 299, baseType: !106, size: 128, offset: 256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4930, file: !254, line: 300, baseType: !106, size: 128, offset: 384)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4930, file: !254, line: 301, baseType: !703, size: 256, offset: 512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4930, file: !254, line: 302, baseType: !68, size: 32, offset: 768)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4930, file: !254, line: 303, baseType: !58, size: 32, offset: 800)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4930, file: !254, line: 304, baseType: !1429, size: 64, offset: 832)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4930, file: !254, line: 305, baseType: !4941, size: 64, offset: 896)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !254, line: 68, size: 64, elements: !4942)
!4942 = !{!4943, !4955}
!4943 = !DIDerivedType(tag: DW_TAG_member, scope: !4941, file: !254, line: 69, baseType: !4944, size: 32)
!4944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4941, file: !254, line: 69, size: 32, elements: !4945)
!4945 = !{!4946, !4947, !4948}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4944, file: !254, line: 70, baseType: !832, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4944, file: !254, line: 71, baseType: !840, size: 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4944, file: !254, line: 72, baseType: !4949, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4950, line: 24, baseType: !4951)
!4950 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4950, line: 22, size: 32, elements: !4952)
!4952 = !{!4953}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4951, file: !4950, line: 23, baseType: !4954, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4950, line: 20, baseType: !838)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4941, file: !254, line: 74, baseType: !253, size: 32, offset: 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4930, file: !254, line: 306, baseType: !50, size: 64, offset: 960)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4930, file: !254, line: 307, baseType: !48, size: 64, offset: 1024)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4930, file: !254, line: 308, baseType: !4959, size: 576, offset: 1088)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !254, line: 205, size: 576, elements: !4960)
!4960 = !{!4961, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4959, file: !254, line: 206, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !254, line: 66, baseType: !52)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4959, file: !254, line: 207, baseType: !4962, size: 64, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4959, file: !254, line: 208, baseType: !4962, size: 64, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4959, file: !254, line: 209, baseType: !4962, size: 64, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4959, file: !254, line: 210, baseType: !4962, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4959, file: !254, line: 211, baseType: !4962, size: 64, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4959, file: !254, line: 212, baseType: !4962, size: 64, offset: 384)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4959, file: !254, line: 213, baseType: !895, size: 64, offset: 448)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4959, file: !254, line: 214, baseType: !895, size: 64, offset: 512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4859, file: !249, line: 2085, baseType: !4972, size: 64, offset: 1472)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!323, !1429, !4975}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4977, line: 15, size: 256, elements: !4978)
!4977 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4978 = !{!4979, !4980, !4981, !4982, !4983}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4976, file: !4977, line: 16, baseType: !327, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4976, file: !4977, line: 19, baseType: !31, size: 32, offset: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4976, file: !4977, line: 26, baseType: !48, size: 64, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4976, file: !4977, line: 33, baseType: !48, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4976, file: !4977, line: 36, baseType: !4984, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4977, line: 36, flags: DIFlagFwdDecl)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4859, file: !249, line: 2087, baseType: !4972, size: 64, offset: 1536)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4859, file: !249, line: 2089, baseType: !4840, size: 64, offset: 1600)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1430, file: !249, line: 1198, baseType: !4989, size: 64, offset: 448)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4991)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !254, line: 324, size: 704, elements: !4992)
!4992 = !{!4993, !4997, !5001, !5005, !5006, !5007, !5008, !5009, !5014, !5019, !5023}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4991, file: !254, line: 325, baseType: !4994, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!31, !4929}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4991, file: !254, line: 326, baseType: !4998, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!4929, !1429, !31}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4991, file: !254, line: 327, baseType: !5002, size: 64, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{null, !4929}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4991, file: !254, line: 328, baseType: !4994, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4991, file: !254, line: 329, baseType: !4994, size: 64, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4991, file: !254, line: 330, baseType: !4994, size: 64, offset: 320)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4991, file: !254, line: 331, baseType: !4885, size: 64, offset: 384)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4991, file: !254, line: 334, baseType: !5010, size: 64, offset: 448)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!5013, !1228}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4991, file: !254, line: 335, baseType: !5015, size: 64, offset: 512)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!31, !1228, !5018}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4991, file: !254, line: 337, baseType: !5020, size: 64, offset: 576)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!31, !1228, !5013}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4991, file: !254, line: 339, baseType: !5024, size: 64, offset: 640)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!31, !1429, !5027}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1430, file: !249, line: 1199, baseType: !5029, size: 64, offset: 512)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5031)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !254, line: 430, size: 704, elements: !5032)
!5032 = !{!5033, !5037, !5038, !5042, !5043, !5044, !5059, !5082, !5086, !5087, !5110}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !5031, file: !254, line: 431, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!31, !1429, !31, !31, !1349}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !5031, file: !254, line: 432, baseType: !4885, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !5031, file: !254, line: 433, baseType: !5039, size: 64, offset: 128)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!31, !1429, !7}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !5031, file: !254, line: 434, baseType: !5039, size: 64, offset: 192)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !5031, file: !254, line: 435, baseType: !4885, size: 64, offset: 256)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !5031, file: !254, line: 436, baseType: !5045, size: 64, offset: 320)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!31, !1429, !31, !5048}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !254, line: 417, size: 256, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !5049, file: !254, line: 418, baseType: !31, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5049, file: !254, line: 419, baseType: !7, size: 32, offset: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !5049, file: !254, line: 420, baseType: !7, size: 32, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !5049, file: !254, line: 422, baseType: !7, size: 32, offset: 96)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !5049, file: !254, line: 423, baseType: !7, size: 32, offset: 128)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !5049, file: !254, line: 424, baseType: !7, size: 32, offset: 160)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !5049, file: !254, line: 425, baseType: !7, size: 32, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !5049, file: !254, line: 426, baseType: !7, size: 32, offset: 224)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !5031, file: !254, line: 437, baseType: !5060, size: 64, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!31, !1429, !4941, !5063}
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !254, line: 345, size: 960, elements: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !5064, file: !254, line: 346, baseType: !31, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !5064, file: !254, line: 347, baseType: !398, size: 64, offset: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !5064, file: !254, line: 348, baseType: !398, size: 64, offset: 128)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !5064, file: !254, line: 349, baseType: !398, size: 64, offset: 192)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !5064, file: !254, line: 350, baseType: !398, size: 64, offset: 256)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !5064, file: !254, line: 351, baseType: !398, size: 64, offset: 320)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !5064, file: !254, line: 352, baseType: !398, size: 64, offset: 384)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !5064, file: !254, line: 353, baseType: !409, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !5064, file: !254, line: 355, baseType: !409, size: 64, offset: 512)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !5064, file: !254, line: 356, baseType: !31, size: 32, offset: 576)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !5064, file: !254, line: 357, baseType: !31, size: 32, offset: 608)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !5064, file: !254, line: 358, baseType: !398, size: 64, offset: 640)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !5064, file: !254, line: 359, baseType: !398, size: 64, offset: 704)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !5064, file: !254, line: 360, baseType: !398, size: 64, offset: 768)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !5064, file: !254, line: 361, baseType: !409, size: 64, offset: 832)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !5064, file: !254, line: 362, baseType: !31, size: 32, offset: 896)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !5031, file: !254, line: 438, baseType: !5083, size: 64, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!31, !1429, !5027, !5063}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !5031, file: !254, line: 440, baseType: !5060, size: 64, offset: 512)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !5031, file: !254, line: 441, baseType: !5088, size: 64, offset: 576)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!31, !1429, !5091}
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !254, line: 411, size: 1408, elements: !5093)
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !5092, file: !254, line: 412, baseType: !7, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5092, file: !254, line: 413, baseType: !5096, size: 1344, offset: 64)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5097, size: 1344, elements: !739)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !254, line: 397, size: 448, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5109}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5097, file: !254, line: 398, baseType: !7, size: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !5097, file: !254, line: 399, baseType: !7, size: 32, offset: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !5097, file: !254, line: 401, baseType: !7, size: 32, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !5097, file: !254, line: 402, baseType: !7, size: 32, offset: 96)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !5097, file: !254, line: 403, baseType: !7, size: 32, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !5097, file: !254, line: 404, baseType: !7, size: 32, offset: 160)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !5097, file: !254, line: 405, baseType: !7, size: 32, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5097, file: !254, line: 406, baseType: !400, size: 64, offset: 256)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5097, file: !254, line: 407, baseType: !5108, size: 64, offset: 320)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !34, line: 132, baseType: !398)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !5097, file: !254, line: 408, baseType: !5108, size: 64, offset: 384)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !5031, file: !254, line: 442, baseType: !5039, size: 64, offset: 640)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1430, file: !249, line: 1200, baseType: !5112, size: 64, offset: 576)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5114)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !249, line: 54, flags: DIFlagFwdDecl)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1430, file: !249, line: 1201, baseType: !48, size: 64, offset: 640)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1430, file: !249, line: 1202, baseType: !48, size: 64, offset: 704)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1430, file: !249, line: 1203, baseType: !48, size: 64, offset: 768)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1430, file: !249, line: 1204, baseType: !1193, size: 64, offset: 832)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1430, file: !249, line: 1205, baseType: !879, size: 320, offset: 896)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1430, file: !249, line: 1206, baseType: !31, size: 32, offset: 1216)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1430, file: !249, line: 1207, baseType: !58, size: 32, offset: 1248)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1430, file: !249, line: 1209, baseType: !29, size: 64, offset: 1280)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1430, file: !249, line: 1211, baseType: !5124, size: 64, offset: 1344)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5127)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !5128, line: 36, size: 384, elements: !5129)
!5128 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!5129 = !{!5130, !5131, !5132, !5133, !5137, !5141}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5127, file: !5128, line: 37, baseType: !25, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5127, file: !5128, line: 38, baseType: !25, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5127, file: !5128, line: 39, baseType: !31, size: 32, offset: 128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5127, file: !5128, line: 40, baseType: !5134, size: 64, offset: 192)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!859, !1193}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5127, file: !5128, line: 41, baseType: !5138, size: 64, offset: 256)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!31, !5125, !1193, !1228, !25, !29, !44}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5127, file: !5128, line: 44, baseType: !5142, size: 64, offset: 320)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!31, !5125, !1267, !1193, !1228, !25, !2898, !44, !31}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1430, file: !249, line: 1223, baseType: !5146, size: 64, offset: 1408)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1205, line: 34, size: 64, elements: !5147)
!5147 = !{!5148}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5146, file: !1205, line: 35, baseType: !1208, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1430, file: !249, line: 1224, baseType: !106, size: 128, offset: 1472)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1430, file: !249, line: 1225, baseType: !2269, size: 64, offset: 1600)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1430, file: !249, line: 1226, baseType: !5152, size: 64, offset: 1664)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !147, line: 1495, size: 128, elements: !5154)
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5153, file: !147, line: 1496, baseType: !2269, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !5153, file: !147, line: 1497, baseType: !29, size: 64, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1430, file: !249, line: 1227, baseType: !3030, size: 64, offset: 1728)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1430, file: !249, line: 1228, baseType: !5159, size: 64, offset: 1792)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !249, line: 1228, flags: DIFlagFwdDecl)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1430, file: !249, line: 1229, baseType: !755, size: 128, offset: 1856)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1430, file: !249, line: 1230, baseType: !7, size: 32, offset: 1984)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1430, file: !249, line: 1231, baseType: !5164, size: 2496, offset: 2048)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !254, line: 521, size: 2496, elements: !5165)
!5165 = !{!5166, !5167, !5168, !5170, !5202}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5164, file: !254, line: 522, baseType: !7, size: 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5164, file: !254, line: 523, baseType: !879, size: 320, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5164, file: !254, line: 524, baseType: !5169, size: 192, offset: 384)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 192, elements: !739)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5164, file: !254, line: 525, baseType: !5171, size: 1728, offset: 576)
!5171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5172, size: 1728, elements: !739)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !254, line: 222, size: 576, elements: !5173)
!5173 = !{!5174, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5172, file: !254, line: 223, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !254, line: 445, size: 256, elements: !5177)
!5177 = !{!5178, !5179, !5192, !5193}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5176, file: !254, line: 446, baseType: !31, size: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5176, file: !254, line: 447, baseType: !5180, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5182)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !254, line: 312, size: 512, elements: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5182, file: !254, line: 313, baseType: !4885, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5182, file: !254, line: 314, baseType: !4885, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5182, file: !254, line: 315, baseType: !4885, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5182, file: !254, line: 316, baseType: !4885, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5182, file: !254, line: 317, baseType: !4994, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5182, file: !254, line: 318, baseType: !4994, size: 64, offset: 320)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5182, file: !254, line: 319, baseType: !4994, size: 64, offset: 384)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5182, file: !254, line: 320, baseType: !5024, size: 64, offset: 448)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5176, file: !254, line: 448, baseType: !1521, size: 64, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5176, file: !254, line: 449, baseType: !5175, size: 64, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5172, file: !254, line: 224, baseType: !31, size: 32, offset: 64)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5172, file: !254, line: 226, baseType: !106, size: 128, offset: 128)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5172, file: !254, line: 227, baseType: !48, size: 64, offset: 256)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5172, file: !254, line: 228, baseType: !7, size: 32, offset: 320)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5172, file: !254, line: 229, baseType: !7, size: 32, offset: 352)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5172, file: !254, line: 230, baseType: !4962, size: 64, offset: 384)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5172, file: !254, line: 231, baseType: !4962, size: 64, offset: 448)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5172, file: !254, line: 232, baseType: !29, size: 64, offset: 512)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5164, file: !254, line: 526, baseType: !5203, size: 192, offset: 2304)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5180, size: 192, elements: !739)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1430, file: !249, line: 1233, baseType: !5205, size: 2368, offset: 4544)
!5205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !249, line: 1184, size: 2368, elements: !5206)
!5206 = !{!5207, !5208, !5209}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5205, file: !249, line: 1185, baseType: !35, size: 16)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5205, file: !249, line: 1186, baseType: !35, size: 16, offset: 16)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5205, file: !249, line: 1187, baseType: !5210, size: 2304, offset: 64)
!5210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5211, size: 2304, elements: !739)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5212, line: 12, size: 768, elements: !5213)
!5212 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5213 = !{!5214, !5222, !5223, !5224, !5225}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5211, file: !5212, line: 13, baseType: !5215, size: 384)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5216, line: 17, size: 384, elements: !5217)
!5216 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5217 = !{!5218, !5219, !5220, !5221}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5215, file: !5216, line: 18, baseType: !31, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5215, file: !5216, line: 19, baseType: !31, size: 32, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5215, file: !5216, line: 20, baseType: !63, size: 192, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5215, file: !5216, line: 22, baseType: !683, size: 128, align: 64, offset: 256)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5211, file: !5212, line: 14, baseType: !2260, size: 64, offset: 384)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5211, file: !5212, line: 15, baseType: !4295, size: 64, offset: 448)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5211, file: !5212, line: 16, baseType: !63, size: 192, offset: 512)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5211, file: !5212, line: 17, baseType: !58, size: 32, offset: 704)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1430, file: !249, line: 1240, baseType: !29, size: 64, offset: 6912)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1430, file: !249, line: 1243, baseType: !340, size: 32, offset: 6976)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1430, file: !249, line: 1245, baseType: !895, size: 64, offset: 7040)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1430, file: !249, line: 1246, baseType: !895, size: 64, offset: 7104)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1430, file: !249, line: 1248, baseType: !341, size: 32, offset: 7168)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1430, file: !249, line: 1249, baseType: !5232, size: 64, offset: 7232)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !249, line: 634, flags: DIFlagFwdDecl)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1430, file: !249, line: 1252, baseType: !2283, size: 256, offset: 7296)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1430, file: !249, line: 1253, baseType: !5236, size: 128, offset: 7552)
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5237, line: 21, baseType: !5238)
!5237 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5237, line: 19, size: 128, elements: !5239)
!5239 = !{!5240}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5238, file: !5237, line: 20, baseType: !5241, size: 128)
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !5242)
!5242 = !{!5243}
!5243 = !DISubrange(count: 16)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1430, file: !249, line: 1255, baseType: !7, size: 32, offset: 7680)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1430, file: !249, line: 1261, baseType: !703, size: 256, offset: 7744)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1430, file: !249, line: 1267, baseType: !25, size: 64, offset: 8000)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1430, file: !249, line: 1269, baseType: !5248, size: 64, offset: 8064)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5250)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1195, line: 128, size: 1024, align: 512, elements: !5251)
!5251 = !{!5252, !5256, !5257, !5264, !5270, !5274, !5278, !5282, !5283, !5287, !5291, !5296, !5300}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !5250, file: !1195, line: 129, baseType: !5253, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!31, !1193, !7}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !5250, file: !1195, line: 130, baseType: !5253, size: 64, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !5250, file: !1195, line: 131, baseType: !5258, size: 64, offset: 128)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!31, !5261, !5263}
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !5250, file: !1195, line: 132, baseType: !5265, size: 64, offset: 192)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!31, !5261, !7, !25, !5268}
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !5250, file: !1195, line: 134, baseType: !5271, size: 64, offset: 256)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!31, !5261}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !5250, file: !1195, line: 135, baseType: !5275, size: 64, offset: 320)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!31, !1193}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !5250, file: !1195, line: 136, baseType: !5279, size: 64, offset: 384)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{null, !1193}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !5250, file: !1195, line: 137, baseType: !5279, size: 64, offset: 448)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !5250, file: !1195, line: 138, baseType: !5284, size: 64, offset: 512)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !1193, !1228}
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !5250, file: !1195, line: 139, baseType: !5288, size: 64, offset: 576)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!947, !1193, !947, !31}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !5250, file: !1195, line: 140, baseType: !5292, size: 64, offset: 640)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!1188, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !5250, file: !1195, line: 141, baseType: !5297, size: 64, offset: 704)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!31, !1349, !859}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !5250, file: !1195, line: 142, baseType: !5301, size: 64, offset: 768)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!1193, !1193, !5304}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1430, file: !249, line: 1271, baseType: !5307, size: 448, offset: 8128)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4977, line: 63, size: 448, elements: !5308)
!5308 = !{!5309, !5314, !5315, !5316, !5317, !5318, !5319}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5307, file: !4977, line: 64, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!48, !5313, !4975}
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5307, file: !4977, line: 66, baseType: !5310, size: 64, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5307, file: !4977, line: 69, baseType: !323, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5307, file: !4977, line: 70, baseType: !31, size: 32, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5307, file: !4977, line: 71, baseType: !7, size: 32, offset: 224)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5307, file: !4977, line: 74, baseType: !106, size: 128, offset: 256)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5307, file: !4977, line: 85, baseType: !5320, size: 64, offset: 384)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1430, file: !249, line: 1274, baseType: !696, size: 64, offset: 8576)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1430, file: !249, line: 1280, baseType: !696, size: 64, offset: 8640)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1430, file: !249, line: 1283, baseType: !31, size: 32, offset: 8704)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1430, file: !249, line: 1286, baseType: !3190, size: 32, offset: 8736)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1430, file: !249, line: 1289, baseType: !2380, size: 64, offset: 8768)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1430, file: !249, line: 1290, baseType: !751, size: 64, offset: 8832)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1430, file: !249, line: 1297, baseType: !801, size: 64, offset: 8896)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1430, file: !249, line: 1304, baseType: !5329, size: 64, offset: 8960)
!5329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5330, line: 49, size: 64, elements: !5331)
!5330 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5331 = !{!5332}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5329, file: !5330, line: 50, baseType: !5333, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5330, line: 41, size: 512, align: 512, elements: !5335)
!5335 = !{!5336, !5337, !5342}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5334, file: !5330, line: 43, baseType: !68, size: 32)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5334, file: !5330, line: 45, baseType: !5338, size: 192, offset: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5330, line: 29, size: 192, elements: !5339)
!5339 = !{!5340, !5341}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5338, file: !5330, line: 30, baseType: !106, size: 128)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5338, file: !5330, line: 32, baseType: !323, size: 64, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5334, file: !5330, line: 46, baseType: !323, size: 64, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1430, file: !249, line: 1305, baseType: !5329, size: 64, offset: 9024)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1430, file: !249, line: 1306, baseType: !683, size: 128, align: 64, offset: 9088)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1430, file: !249, line: 1307, baseType: !986, size: 256, offset: 9216)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1430, file: !249, line: 1309, baseType: !703, size: 256, offset: 9472)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1430, file: !249, line: 1314, baseType: !31, size: 32, offset: 9728)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1430, file: !249, line: 1317, baseType: !68, size: 32, align: 512, offset: 10240)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1430, file: !249, line: 1318, baseType: !106, size: 128, offset: 10304)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1430, file: !249, line: 1320, baseType: !68, size: 32, offset: 10432)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1430, file: !249, line: 1321, baseType: !106, size: 128, offset: 10496)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1229, file: !249, line: 656, baseType: !1638, size: 64, offset: 512)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1229, file: !249, line: 659, baseType: !29, size: 64, offset: 576)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1229, file: !249, line: 663, baseType: !48, size: 64, offset: 640)
!5355 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !249, line: 671, baseType: !5356, size: 32, offset: 704)
!5356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !249, line: 671, size: 32, elements: !5357)
!5357 = !{!5358, !5359}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5356, file: !249, line: 672, baseType: !3697, size: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5356, file: !249, line: 673, baseType: !7, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1229, file: !249, line: 675, baseType: !1302, size: 32, offset: 736)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1229, file: !249, line: 676, baseType: !50, size: 64, offset: 768)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1229, file: !249, line: 677, baseType: !1338, size: 128, offset: 832)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1229, file: !249, line: 678, baseType: !1338, size: 128, offset: 960)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1229, file: !249, line: 679, baseType: !1338, size: 128, offset: 1088)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1229, file: !249, line: 680, baseType: !68, size: 32, offset: 1216)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1229, file: !249, line: 681, baseType: !35, size: 16, offset: 1248)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1229, file: !249, line: 682, baseType: !92, size: 8, offset: 1264)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1229, file: !249, line: 683, baseType: !92, size: 8, offset: 1272)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1229, file: !249, line: 684, baseType: !5108, size: 64, offset: 1280)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1229, file: !249, line: 691, baseType: !48, size: 64, offset: 1344)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1229, file: !249, line: 692, baseType: !879, size: 320, offset: 1408)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1229, file: !249, line: 694, baseType: !48, size: 64, offset: 1728)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1229, file: !249, line: 695, baseType: !48, size: 64, offset: 1792)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1229, file: !249, line: 697, baseType: !755, size: 128, offset: 1856)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1229, file: !249, line: 698, baseType: !106, size: 128, offset: 1984)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1229, file: !249, line: 707, baseType: !106, size: 128, offset: 2112)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1229, file: !249, line: 708, baseType: !106, size: 128, offset: 2240)
!5378 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !249, line: 709, baseType: !5379, size: 128, offset: 2368)
!5379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !249, line: 709, size: 128, elements: !5380)
!5380 = !{!5381, !5382}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5379, file: !249, line: 710, baseType: !751, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5379, file: !249, line: 711, baseType: !683, size: 128, align: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1229, file: !249, line: 713, baseType: !698, size: 64, offset: 2496)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1229, file: !249, line: 714, baseType: !698, size: 64, offset: 2560)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1229, file: !249, line: 715, baseType: !58, size: 32, offset: 2624)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1229, file: !249, line: 716, baseType: !58, size: 32, offset: 2656)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1229, file: !249, line: 717, baseType: !58, size: 32, offset: 2688)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1229, file: !249, line: 719, baseType: !58, size: 32, offset: 2720)
!5389 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !249, line: 721, baseType: !5390, size: 64, offset: 2752)
!5390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !249, line: 721, size: 64, elements: !5391)
!5391 = !{!5392, !5516}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5390, file: !249, line: 722, baseType: !5393, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5395)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !249, line: 1914, size: 2112, elements: !5396)
!5396 = !{!5397, !5398, !5402, !5406, !5410, !5411, !5412, !5416, !5429, !5433, !5437, !5438, !5442, !5443, !5447, !5452, !5453, !5457, !5461, !5467, !5468, !5472, !5473, !5479, !5483, !5484, !5489, !5493, !5497, !5501, !5505, !5506, !5512}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5395, file: !249, line: 1915, baseType: !1521, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5395, file: !249, line: 1916, baseType: !5399, size: 64, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!50, !675, !50, !31}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5395, file: !249, line: 1917, baseType: !5403, size: 64, offset: 128)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!1380, !675, !947, !44, !49}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5395, file: !249, line: 1918, baseType: !5407, size: 64, offset: 192)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!1380, !675, !25, !44, !49}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5395, file: !249, line: 1919, baseType: !2105, size: 64, offset: 256)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5395, file: !249, line: 1920, baseType: !2105, size: 64, offset: 320)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5395, file: !249, line: 1921, baseType: !5413, size: 64, offset: 384)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!31, !2108, !2389, !7}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5395, file: !249, line: 1923, baseType: !5417, size: 64, offset: 448)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!31, !675, !5420}
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !249, line: 1858, size: 128, elements: !5422)
!5422 = !{!5423, !5428}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5421, file: !249, line: 1859, baseType: !5424, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !249, line: 1855, baseType: !5425)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{!859, !5420, !25, !31, !50, !398, !7}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5421, file: !249, line: 1860, baseType: !50, size: 64, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5395, file: !249, line: 1924, baseType: !5430, size: 64, offset: 512)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!3333, !675, !3335}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5395, file: !249, line: 1925, baseType: !5434, size: 64, offset: 576)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!323, !675, !7, !48}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5395, file: !249, line: 1926, baseType: !5434, size: 64, offset: 640)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5395, file: !249, line: 1927, baseType: !5439, size: 64, offset: 704)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!31, !675, !1768}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5395, file: !249, line: 1928, baseType: !48, size: 64, offset: 768)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5395, file: !249, line: 1929, baseType: !5444, size: 64, offset: 832)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!31, !1228, !675}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5395, file: !249, line: 1930, baseType: !5448, size: 64, offset: 896)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!31, !675, !5451}
!5451 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !249, line: 1061, baseType: !29)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5395, file: !249, line: 1931, baseType: !5444, size: 64, offset: 960)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5395, file: !249, line: 1932, baseType: !5454, size: 64, offset: 1024)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!31, !675, !50, !50, !31}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5395, file: !249, line: 1933, baseType: !5458, size: 64, offset: 1088)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!31, !31, !675, !31}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5395, file: !249, line: 1934, baseType: !5462, size: 64, offset: 1152)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!31, !675, !31, !5465}
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !249, line: 1063, flags: DIFlagFwdDecl)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5395, file: !249, line: 1935, baseType: !672, size: 64, offset: 1216)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5395, file: !249, line: 1936, baseType: !5469, size: 64, offset: 1280)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!31, !31}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5395, file: !249, line: 1937, baseType: !5462, size: 64, offset: 1344)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5395, file: !249, line: 1938, baseType: !5474, size: 64, offset: 1408)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!1380, !5477, !675, !49, !44, !7}
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !331, line: 59, flags: DIFlagFwdDecl)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5395, file: !249, line: 1939, baseType: !5480, size: 64, offset: 1472)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!1380, !675, !49, !5477, !44, !7}
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5395, file: !249, line: 1940, baseType: !3180, size: 64, offset: 1536)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5395, file: !249, line: 1941, baseType: !5485, size: 64, offset: 1600)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!31, !675, !31, !5488, !2082}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5395, file: !249, line: 1942, baseType: !5490, size: 64, offset: 1664)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!323, !675, !31, !50, !50}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5395, file: !249, line: 1944, baseType: !5494, size: 64, offset: 1728)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{null, !3266, !675}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5395, file: !249, line: 1948, baseType: !5498, size: 64, offset: 1792)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!1380, !675, !50, !675, !50, !44, !7}
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5395, file: !249, line: 1950, baseType: !5502, size: 64, offset: 1856)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!50, !675, !50, !675, !50, !50, !7}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5395, file: !249, line: 1953, baseType: !5454, size: 64, offset: 1920)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5395, file: !249, line: 1954, baseType: !5507, size: 64, offset: 1984)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!31, !5510, !7}
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !249, line: 1911, flags: DIFlagFwdDecl)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5395, file: !249, line: 1955, baseType: !5513, size: 64, offset: 2048)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!31, !5510, !2389, !7}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5390, file: !249, line: 723, baseType: !4866, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1229, file: !249, line: 725, baseType: !5518, size: 64, offset: 2816)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !249, line: 725, flags: DIFlagFwdDecl)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1229, file: !249, line: 726, baseType: !1639, size: 1536, align: 64, offset: 2880)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1229, file: !249, line: 727, baseType: !106, size: 128, offset: 4416)
!5522 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !249, line: 728, baseType: !5523, size: 64, offset: 4544)
!5523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !249, line: 728, size: 64, elements: !5524)
!5524 = !{!5525, !5526, !5529, !5530}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5523, file: !249, line: 729, baseType: !5477, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5523, file: !249, line: 730, baseType: !5527, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !249, line: 730, flags: DIFlagFwdDecl)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5523, file: !249, line: 731, baseType: !947, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5523, file: !249, line: 732, baseType: !7, size: 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1229, file: !249, line: 735, baseType: !341, size: 32, offset: 4608)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1229, file: !249, line: 738, baseType: !341, size: 32, offset: 4640)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1229, file: !249, line: 739, baseType: !5232, size: 64, offset: 4672)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1229, file: !249, line: 750, baseType: !29, size: 64, offset: 4736)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1194, file: !1195, line: 91, baseType: !5536, size: 256, offset: 448)
!5536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !2284)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1194, file: !1195, line: 94, baseType: !5538, size: 64, offset: 704)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5539, line: 25, size: 64, elements: !5540)
!5539 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5540 = !{!5541}
!5541 = !DIDerivedType(tag: DW_TAG_member, scope: !5538, file: !5539, line: 26, baseType: !5542, size: 64)
!5542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5538, file: !5539, line: 26, size: 64, elements: !5543)
!5543 = !{!5544, !5545}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5542, file: !5539, line: 28, baseType: !399, size: 64, align: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, scope: !5542, file: !5539, line: 30, baseType: !5546, size: 64)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5542, file: !5539, line: 30, size: 64, elements: !5547)
!5547 = !{!5548, !5549}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5546, file: !5539, line: 31, baseType: !68, size: 32)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5546, file: !5539, line: 32, baseType: !31, size: 32, offset: 32)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1194, file: !1195, line: 95, baseType: !5248, size: 64, offset: 768)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1194, file: !1195, line: 96, baseType: !1429, size: 64, offset: 832)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1194, file: !1195, line: 97, baseType: !48, size: 64, offset: 896)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1194, file: !1195, line: 98, baseType: !29, size: 64, offset: 960)
!5554 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 100, baseType: !5555, size: 128, offset: 1024)
!5555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 100, size: 128, elements: !5556)
!5556 = !{!5557, !5558}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5555, file: !1195, line: 101, baseType: !106, size: 128)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5555, file: !1195, line: 102, baseType: !3344, size: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1194, file: !1195, line: 104, baseType: !106, size: 128, offset: 1152)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1194, file: !1195, line: 105, baseType: !106, size: 128, offset: 1280)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1194, file: !1195, line: 113, baseType: !5562, size: 128, offset: 1408)
!5562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 109, size: 128, elements: !5563)
!5563 = !{!5564, !5565, !5566}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5562, file: !1195, line: 110, baseType: !755, size: 128)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5562, file: !1195, line: 111, baseType: !1204, size: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5562, file: !1195, line: 112, baseType: !683, size: 128, align: 64)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1189, file: !1190, line: 72, baseType: !1429, size: 64, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1189, file: !1190, line: 73, baseType: !31, size: 32, offset: 128)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1189, file: !1190, line: 74, baseType: !1267, size: 64, offset: 192)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1184, file: !1185, line: 10, baseType: !1193, size: 64, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !676, file: !249, line: 1015, baseType: !1228, size: 64, offset: 1344)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !676, file: !249, line: 1016, baseType: !5393, size: 64, offset: 1408)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !676, file: !249, line: 1018, baseType: !398, size: 64, offset: 1472)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !676, file: !249, line: 1020, baseType: !29, size: 64, offset: 1536)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !676, file: !249, line: 1023, baseType: !29, size: 64, offset: 1600)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !676, file: !249, line: 1027, baseType: !3865, size: 64, offset: 1664)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !676, file: !249, line: 1029, baseType: !1638, size: 64, offset: 1728)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !676, file: !249, line: 1030, baseType: !3190, size: 32, offset: 1792)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !676, file: !249, line: 1031, baseType: !3190, size: 32, offset: 1824)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !651, file: !123, line: 756, baseType: !48, size: 64, offset: 704)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !651, file: !123, line: 757, baseType: !48, size: 64, offset: 768)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !651, file: !123, line: 760, baseType: !48, size: 64, offset: 832)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !651, file: !123, line: 761, baseType: !48, size: 64, offset: 896)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !651, file: !123, line: 763, baseType: !48, size: 64, offset: 960)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !651, file: !123, line: 764, baseType: !5586, size: 64, offset: 1024)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1783, line: 299, baseType: !5588)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1783, line: 299, size: 64, elements: !5589)
!5589 = !{!5590}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5588, file: !1783, line: 299, baseType: !5591, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1788, line: 18, baseType: !48)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !651, file: !123, line: 773, baseType: !58, size: 32, offset: 1088)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !651, file: !123, line: 785, baseType: !58, size: 32, offset: 1120)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !651, file: !123, line: 795, baseType: !5595, size: 64, offset: 1152)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !123, line: 726, size: 128, elements: !5597)
!5597 = !{!5598, !5599}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5596, file: !123, line: 727, baseType: !398, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5596, file: !123, line: 728, baseType: !31, size: 32, offset: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !651, file: !123, line: 801, baseType: !48, size: 64, offset: 1216)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !651, file: !123, line: 804, baseType: !696, size: 64, offset: 1280)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !651, file: !123, line: 806, baseType: !31, size: 32, offset: 1344)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !651, file: !123, line: 808, baseType: !68, size: 32, offset: 1376)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !651, file: !123, line: 823, baseType: !879, size: 320, offset: 1408)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !651, file: !123, line: 825, baseType: !106, size: 128, offset: 1728)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !651, file: !123, line: 845, baseType: !31, size: 32, offset: 1856)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !651, file: !123, line: 849, baseType: !48, size: 64, offset: 1920)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !651, file: !123, line: 850, baseType: !48, size: 64, offset: 1984)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !651, file: !123, line: 852, baseType: !48, size: 64, offset: 2048)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !651, file: !123, line: 853, baseType: !48, size: 64, offset: 2112)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !651, file: !123, line: 854, baseType: !698, size: 64, offset: 2176)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !651, file: !123, line: 855, baseType: !48, size: 64, offset: 2240)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !651, file: !123, line: 856, baseType: !48, size: 64, offset: 2304)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !651, file: !123, line: 857, baseType: !48, size: 64, offset: 2368)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !651, file: !123, line: 858, baseType: !48, size: 64, offset: 2432)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !651, file: !123, line: 865, baseType: !521, size: 32, offset: 2496)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !651, file: !123, line: 867, baseType: !68, size: 32, offset: 2528)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !651, file: !123, line: 869, baseType: !48, size: 64, offset: 2560)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !651, file: !123, line: 869, baseType: !48, size: 64, offset: 2624)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !651, file: !123, line: 869, baseType: !48, size: 64, offset: 2688)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !651, file: !123, line: 869, baseType: !48, size: 64, offset: 2752)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !651, file: !123, line: 870, baseType: !48, size: 64, offset: 2816)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !651, file: !123, line: 870, baseType: !48, size: 64, offset: 2880)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !651, file: !123, line: 870, baseType: !48, size: 64, offset: 2944)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !651, file: !123, line: 871, baseType: !48, size: 64, offset: 3008)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !651, file: !123, line: 871, baseType: !48, size: 64, offset: 3072)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !651, file: !123, line: 871, baseType: !48, size: 64, offset: 3136)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !651, file: !123, line: 871, baseType: !48, size: 64, offset: 3200)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !651, file: !123, line: 873, baseType: !5630, size: 3328, offset: 3264)
!5630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3328, elements: !5631)
!5631 = !{!5632}
!5632 = !DISubrange(count: 52)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !651, file: !123, line: 875, baseType: !3058, size: 1280, offset: 6592)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !651, file: !123, line: 877, baseType: !5635, size: 64, offset: 7872)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !123, line: 877, flags: DIFlagFwdDecl)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !651, file: !123, line: 880, baseType: !5638, size: 1088, offset: 7936)
!5638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5639, line: 72, baseType: !5640)
!5639 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5639, line: 23, size: 1088, elements: !5641)
!5641 = !{!5642, !5643, !5644, !5645, !5646, !5649, !5650, !5651, !5652, !5677, !5678, !5679}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5640, file: !5639, line: 28, baseType: !398, size: 64)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5640, file: !5639, line: 38, baseType: !698, size: 64, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5640, file: !5639, line: 40, baseType: !48, size: 64, offset: 128)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5640, file: !5639, line: 43, baseType: !879, size: 320, offset: 192)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5640, file: !5639, line: 44, baseType: !5647, size: 64, offset: 512)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5639, line: 44, flags: DIFlagFwdDecl)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5640, file: !5639, line: 48, baseType: !48, size: 64, offset: 576)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5640, file: !5639, line: 59, baseType: !703, size: 256, offset: 640)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5640, file: !5639, line: 60, baseType: !29, size: 64, offset: 896)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5640, file: !5639, line: 61, baseType: !5653, size: 64, offset: 960)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5655)
!5655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5656, line: 13, size: 1216, elements: !5657)
!5656 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5657 = !{!5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5655, file: !5656, line: 14, baseType: !29, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5655, file: !5656, line: 15, baseType: !48, size: 64, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5655, file: !5656, line: 17, baseType: !48, size: 64, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5655, file: !5656, line: 17, baseType: !48, size: 64, offset: 192)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5655, file: !5656, line: 18, baseType: !48, size: 64, offset: 256)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5655, file: !5656, line: 18, baseType: !48, size: 64, offset: 320)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5655, file: !5656, line: 19, baseType: !2898, size: 64, offset: 384)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5655, file: !5656, line: 21, baseType: !323, size: 64, offset: 448)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5655, file: !5656, line: 23, baseType: !323, size: 64, offset: 512)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5655, file: !5656, line: 24, baseType: !323, size: 64, offset: 576)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5655, file: !5656, line: 25, baseType: !323, size: 64, offset: 640)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5655, file: !5656, line: 26, baseType: !323, size: 64, offset: 704)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5655, file: !5656, line: 27, baseType: !323, size: 64, offset: 768)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5655, file: !5656, line: 28, baseType: !323, size: 64, offset: 832)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5655, file: !5656, line: 29, baseType: !323, size: 64, offset: 896)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5655, file: !5656, line: 30, baseType: !323, size: 64, offset: 960)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5655, file: !5656, line: 31, baseType: !323, size: 64, offset: 1024)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5655, file: !5656, line: 32, baseType: !323, size: 64, offset: 1088)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5655, file: !5656, line: 33, baseType: !323, size: 64, offset: 1152)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5640, file: !5639, line: 63, baseType: !58, size: 32, offset: 1024)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5640, file: !5639, line: 69, baseType: !102, size: 16, offset: 1056)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5640, file: !5639, line: 70, baseType: !3514, size: 16, offset: 1072)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !123, line: 882, baseType: !48, size: 64, offset: 9024)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !651, file: !123, line: 885, baseType: !68, size: 32, offset: 9088)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !651, file: !123, line: 886, baseType: !5683, size: 64, offset: 9152)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !123, line: 732, flags: DIFlagFwdDecl)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !651, file: !123, line: 901, baseType: !801, size: 64, offset: 9216)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !651, file: !123, line: 904, baseType: !675, size: 64, offset: 9280)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !651, file: !123, line: 906, baseType: !5688, size: 64, offset: 9344)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !123, line: 906, flags: DIFlagFwdDecl)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !651, file: !123, line: 930, baseType: !58, size: 32, offset: 9408)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !651, file: !123, line: 933, baseType: !58, size: 32, offset: 9440)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !651, file: !123, line: 935, baseType: !5693, size: 64, offset: 9472)
!5693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !215, line: 103, size: 64, elements: !5694)
!5694 = !{!5695}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5693, file: !215, line: 104, baseType: !5696, size: 64)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !215, line: 101, flags: DIFlagFwdDecl)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !651, file: !123, line: 940, baseType: !696, size: 64, offset: 9536)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !651, file: !123, line: 942, baseType: !986, size: 256, offset: 9600)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !648, file: !123, line: 986, baseType: !5701, offset: 10240)
!5701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, elements: !1090)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !330, file: !331, line: 882, baseType: !647, size: 64, offset: 9792)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !330, file: !331, line: 884, baseType: !31, size: 32, offset: 9856)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !330, file: !331, line: 885, baseType: !31, size: 32, offset: 9888)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !330, file: !331, line: 886, baseType: !31, size: 32, offset: 9920)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !330, file: !331, line: 888, baseType: !31, size: 32, offset: 9952)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !330, file: !331, line: 890, baseType: !48, size: 64, offset: 9984)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !330, file: !331, line: 893, baseType: !7, size: 32, offset: 10048)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !330, file: !331, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !330, file: !331, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !330, file: !331, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !330, file: !331, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !330, file: !331, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !330, file: !331, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !330, file: !331, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !330, file: !331, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !330, file: !331, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !330, file: !331, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !330, file: !331, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !330, file: !331, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !330, file: !331, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !330, file: !331, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !330, file: !331, line: 969, baseType: !48, size: 64, offset: 10176)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !330, file: !331, line: 971, baseType: !5725, size: 448, offset: 10240)
!5725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !117, line: 25, size: 448, elements: !5726)
!5726 = !{!5727, !5728, !5733}
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5725, file: !117, line: 26, baseType: !48, size: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5725, file: !117, line: 27, baseType: !5729, size: 64, offset: 64)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!323, !5732}
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_member, scope: !5725, file: !117, line: 28, baseType: !5734, size: 320, offset: 128)
!5734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5725, file: !117, line: 28, size: 320, elements: !5735)
!5735 = !{!5736, !5746, !5771}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5734, file: !117, line: 37, baseType: !5737, size: 320)
!5737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5734, file: !117, line: 30, size: 320, elements: !5738)
!5738 = !{!5739, !5741, !5742, !5743, !5744, !5745}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5737, file: !117, line: 31, baseType: !5740, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5737, file: !117, line: 32, baseType: !340, size: 32, offset: 64)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5737, file: !117, line: 33, baseType: !340, size: 32, offset: 96)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5737, file: !117, line: 34, baseType: !340, size: 32, offset: 128)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5737, file: !117, line: 35, baseType: !398, size: 64, offset: 192)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5737, file: !117, line: 36, baseType: !5740, size: 64, offset: 256)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5734, file: !117, line: 47, baseType: !5747, size: 192)
!5747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5734, file: !117, line: 39, size: 192, elements: !5748)
!5748 = !{!5749, !5750, !5751, !5770}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5747, file: !117, line: 40, baseType: !513, size: 32)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5747, file: !117, line: 41, baseType: !116, size: 32, offset: 32)
!5751 = !DIDerivedType(tag: DW_TAG_member, scope: !5747, file: !117, line: 42, baseType: !5752, size: 64, offset: 64)
!5752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5747, file: !117, line: 42, size: 64, elements: !5753)
!5753 = !{!5754, !5762}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5752, file: !117, line: 43, baseType: !5755, size: 64)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5757, line: 7, size: 128, elements: !5758)
!5757 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5758 = !{!5759, !5761}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5756, file: !5757, line: 8, baseType: !5760, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !46, line: 93, baseType: !52)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5756, file: !5757, line: 9, baseType: !52, size: 64, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5752, file: !117, line: 44, baseType: !5763, size: 64)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5765, line: 7, size: 64, elements: !5766)
!5765 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5766 = !{!5767, !5769}
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5764, file: !5765, line: 8, baseType: !5768, size: 32)
!5768 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5765, line: 5, baseType: !871)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5764, file: !5765, line: 9, baseType: !871, size: 32, offset: 32)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5747, file: !117, line: 46, baseType: !398, size: 64, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5734, file: !117, line: 55, baseType: !5772, size: 256)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5734, file: !117, line: 49, size: 256, elements: !5773)
!5773 = !{!5774, !5782, !5783, !5784, !5785}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5772, file: !117, line: 50, baseType: !5775, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5777, line: 36, size: 64, elements: !5778)
!5777 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5778 = !{!5779, !5780, !5781}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5776, file: !5777, line: 37, baseType: !31, size: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5776, file: !5777, line: 38, baseType: !907, size: 16, offset: 32)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5776, file: !5777, line: 39, baseType: !907, size: 16, offset: 48)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5772, file: !117, line: 51, baseType: !31, size: 32, offset: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5772, file: !117, line: 52, baseType: !31, size: 32, offset: 96)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5772, file: !117, line: 53, baseType: !48, size: 64, offset: 128)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5772, file: !117, line: 54, baseType: !48, size: 64, offset: 192)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !330, file: !331, line: 973, baseType: !5787, size: 32, offset: 10688)
!5787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !34, line: 27, baseType: !5788)
!5788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !46, line: 28, baseType: !31)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !330, file: !331, line: 974, baseType: !5787, size: 32, offset: 10720)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !330, file: !331, line: 978, baseType: !48, size: 64, offset: 10752)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !330, file: !331, line: 987, baseType: !329, size: 64, offset: 10816)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !330, file: !331, line: 990, baseType: !329, size: 64, offset: 10880)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !330, file: !331, line: 995, baseType: !106, size: 128, offset: 10944)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !330, file: !331, line: 996, baseType: !106, size: 128, offset: 11072)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !330, file: !331, line: 997, baseType: !329, size: 64, offset: 11200)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !330, file: !331, line: 1005, baseType: !106, size: 128, offset: 11264)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !330, file: !331, line: 1006, baseType: !106, size: 128, offset: 11392)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !330, file: !331, line: 1009, baseType: !743, size: 64, offset: 11520)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !330, file: !331, line: 1010, baseType: !5800, size: 512, offset: 11584)
!5800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 512, elements: !760)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !330, file: !331, line: 1011, baseType: !106, size: 128, offset: 12096)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !330, file: !331, line: 1012, baseType: !106, size: 128, offset: 12224)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !330, file: !331, line: 1014, baseType: !1024, size: 64, offset: 12352)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !330, file: !331, line: 1017, baseType: !324, size: 64, offset: 12416)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !330, file: !331, line: 1020, baseType: !324, size: 64, offset: 12480)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !330, file: !331, line: 1023, baseType: !29, size: 64, offset: 12544)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !330, file: !331, line: 1025, baseType: !398, size: 64, offset: 12608)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !330, file: !331, line: 1026, baseType: !398, size: 64, offset: 12672)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !330, file: !331, line: 1031, baseType: !398, size: 64, offset: 12736)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !330, file: !331, line: 1032, baseType: !4591, size: 192, offset: 12800)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !330, file: !331, line: 1041, baseType: !48, size: 64, offset: 12992)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !330, file: !331, line: 1042, baseType: !48, size: 64, offset: 13056)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !330, file: !331, line: 1045, baseType: !398, size: 64, offset: 13120)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !330, file: !331, line: 1048, baseType: !398, size: 64, offset: 13184)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !330, file: !331, line: 1051, baseType: !48, size: 64, offset: 13248)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !330, file: !331, line: 1052, baseType: !48, size: 64, offset: 13312)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !330, file: !331, line: 1055, baseType: !5818, size: 640, offset: 13376)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5819, line: 132, size: 640, elements: !5820)
!5819 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5820 = !{!5821, !5827, !5828}
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5818, file: !5819, line: 133, baseType: !5822, size: 576)
!5822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5823, size: 576, elements: !739)
!5823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5819, line: 117, size: 192, elements: !5824)
!5824 = !{!5825, !5826}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5823, file: !5819, line: 118, baseType: !398, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5823, file: !5819, line: 119, baseType: !527, size: 128, offset: 64)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5818, file: !5819, line: 134, baseType: !7, size: 32, offset: 576)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5818, file: !5819, line: 135, baseType: !7, size: 32, offset: 608)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !330, file: !331, line: 1058, baseType: !5830, size: 448, offset: 14016)
!5830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5819, line: 144, size: 448, elements: !5831)
!5831 = !{!5832, !5833, !5834}
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5830, file: !5819, line: 145, baseType: !683, size: 128, align: 64)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5830, file: !5819, line: 146, baseType: !703, size: 256, offset: 128)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5830, file: !5819, line: 147, baseType: !7, size: 32, offset: 384)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !330, file: !331, line: 1064, baseType: !1097, size: 64, offset: 14464)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !330, file: !331, line: 1067, baseType: !1097, size: 64, offset: 14528)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !330, file: !331, line: 1070, baseType: !1097, size: 64, offset: 14592)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !330, file: !331, line: 1074, baseType: !863, size: 64, offset: 14656)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !330, file: !331, line: 1084, baseType: !5840, size: 128, offset: 14720)
!5840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, elements: !5242)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !330, file: !331, line: 1086, baseType: !5842, size: 64, offset: 14848)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !331, line: 55, flags: DIFlagFwdDecl)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !330, file: !331, line: 1089, baseType: !5845, size: 64, offset: 14912)
!5845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5846, line: 12, size: 64, elements: !5847)
!5846 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5847 = !{!5848}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5845, file: !5846, line: 13, baseType: !5849, size: 64)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5846, line: 8, flags: DIFlagFwdDecl)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !330, file: !331, line: 1090, baseType: !5852, size: 128, offset: 14976)
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5853, line: 13, size: 128, elements: !5854)
!5853 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5854 = !{!5855}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5852, file: !5853, line: 14, baseType: !106, size: 128)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !330, file: !331, line: 1097, baseType: !5857, size: 64, offset: 15104)
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !331, line: 50, flags: DIFlagFwdDecl)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !330, file: !331, line: 1100, baseType: !5860, size: 64, offset: 15168)
!5860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5861, size: 64)
!5861 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !331, line: 1100, flags: DIFlagFwdDecl)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !330, file: !331, line: 1103, baseType: !5863, size: 64, offset: 15232)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !331, line: 53, flags: DIFlagFwdDecl)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !330, file: !331, line: 1107, baseType: !5866, size: 64, offset: 15296)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5868, line: 31, size: 576, elements: !5869)
!5868 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5869 = !{!5870, !5871, !5874, !5877, !5880, !5881, !5882, !5885, !5886}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5867, file: !5868, line: 32, baseType: !346, size: 32)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5867, file: !5868, line: 33, baseType: !5872, size: 64, offset: 64)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5868, line: 9, flags: DIFlagFwdDecl)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5867, file: !5868, line: 34, baseType: !5875, size: 64, offset: 128)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5868, line: 10, flags: DIFlagFwdDecl)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5867, file: !5868, line: 35, baseType: !5878, size: 64, offset: 192)
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5879, size: 64)
!5879 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5868, line: 8, flags: DIFlagFwdDecl)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5867, file: !5868, line: 36, baseType: !771, size: 64, offset: 256)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5867, file: !5868, line: 37, baseType: !1505, size: 64, offset: 320)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5867, file: !5868, line: 38, baseType: !5883, size: 64, offset: 384)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5868, line: 38, flags: DIFlagFwdDecl)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5867, file: !5868, line: 39, baseType: !5883, size: 64, offset: 448)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5867, file: !5868, line: 40, baseType: !5887, size: 64, offset: 512)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5889, line: 771, size: 384, elements: !5890)
!5889 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5890 = !{!5891, !5892, !5893, !5894}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5888, file: !5889, line: 772, baseType: !847, size: 192)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5888, file: !5889, line: 773, baseType: !801, size: 64, offset: 192)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5888, file: !5889, line: 774, baseType: !1069, size: 64, offset: 256)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5888, file: !5889, line: 775, baseType: !4661, size: 64, offset: 320)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !330, file: !331, line: 1110, baseType: !5896, size: 64, offset: 15360)
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5897, size: 64)
!5897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5898, line: 93, size: 8768, elements: !5899)
!5898 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5899 = !{!5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907, !5918, !5919, !5920, !5921, !5922, !5923, !5924, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5948, !5957, !5958, !5960, !5961, !5962, !5965, !5971, !5972, !5973, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !6003, !6004, !6011, !6021, !6083, !6084, !6087, !6088, !6089, !6090, !6091, !6092}
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5897, file: !5898, line: 94, baseType: !346, size: 32)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5897, file: !5898, line: 95, baseType: !58, size: 32, offset: 32)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5897, file: !5898, line: 96, baseType: !31, size: 32, offset: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5897, file: !5898, line: 97, baseType: !31, size: 32, offset: 96)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5897, file: !5898, line: 98, baseType: !106, size: 128, offset: 128)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5897, file: !5898, line: 100, baseType: !63, size: 192, offset: 256)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5897, file: !5898, line: 103, baseType: !329, size: 64, offset: 448)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5897, file: !5898, line: 106, baseType: !5908, size: 192, offset: 512)
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5909, line: 32, size: 192, elements: !5910)
!5909 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5910 = !{!5911, !5912}
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5908, file: !5909, line: 33, baseType: !106, size: 128)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5908, file: !5909, line: 34, baseType: !5913, size: 64, offset: 128)
!5913 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5914, line: 25, baseType: !5915)
!5914 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5914, line: 23, size: 64, elements: !5916)
!5916 = !{!5917}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5915, file: !5914, line: 24, baseType: !598, size: 64)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5897, file: !5898, line: 109, baseType: !751, size: 64, offset: 704)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5897, file: !5898, line: 112, baseType: !31, size: 32, offset: 768)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5897, file: !5898, line: 114, baseType: !31, size: 32, offset: 800)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5897, file: !5898, line: 115, baseType: !329, size: 64, offset: 832)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5897, file: !5898, line: 118, baseType: !31, size: 32, offset: 896)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5897, file: !5898, line: 119, baseType: !7, size: 32, offset: 928)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5897, file: !5898, line: 121, baseType: !5925, size: 64, offset: 960)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5898, line: 80, size: 448, elements: !5927)
!5927 = !{!5928, !5929, !5935}
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5926, file: !5898, line: 81, baseType: !58, size: 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5926, file: !5898, line: 82, baseType: !5930, size: 128, offset: 64)
!5930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5898, line: 75, size: 128, elements: !5931)
!5931 = !{!5932, !5933}
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5930, file: !5898, line: 76, baseType: !329, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5930, file: !5898, line: 77, baseType: !5934, size: 64, offset: 64)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5926, file: !5898, line: 83, baseType: !1025, size: 256, offset: 192)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5897, file: !5898, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5897, file: !5898, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5897, file: !5898, line: 138, baseType: !7, size: 32, offset: 1056)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5897, file: !5898, line: 139, baseType: !106, size: 128, offset: 1088)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5897, file: !5898, line: 142, baseType: !465, size: 512, offset: 1216)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5897, file: !5898, line: 143, baseType: !473, size: 64, offset: 1728)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5897, file: !5898, line: 150, baseType: !5943, size: 256, offset: 1792)
!5943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5944, size: 256, elements: !3498)
!5944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5898, line: 38, size: 128, elements: !5945)
!5945 = !{!5946, !5947}
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5944, file: !5898, line: 39, baseType: !398, size: 64)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5944, file: !5898, line: 40, baseType: !398, size: 64, offset: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5897, file: !5898, line: 156, baseType: !5949, size: 192, offset: 2048)
!5949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5898, line: 66, size: 192, elements: !5950)
!5950 = !{!5951}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5949, file: !5898, line: 67, baseType: !5952, size: 192)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5898, line: 47, size: 192, elements: !5953)
!5953 = !{!5954, !5955, !5956}
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5952, file: !5898, line: 48, baseType: !698, size: 64)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5952, file: !5898, line: 49, baseType: !698, size: 64, offset: 64)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5952, file: !5898, line: 50, baseType: !698, size: 64, offset: 128)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5897, file: !5898, line: 160, baseType: !5818, size: 640, offset: 2240)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5897, file: !5898, line: 163, baseType: !5959, size: 256, offset: 2880)
!5959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 256, elements: !760)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5897, file: !5898, line: 169, baseType: !743, size: 64, offset: 3136)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5897, file: !5898, line: 172, baseType: !31, size: 32, offset: 3200)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5897, file: !5898, line: 174, baseType: !5963, size: 64, offset: 3264)
!5963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5964, size: 64)
!5964 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5898, line: 174, flags: DIFlagFwdDecl)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5897, file: !5898, line: 185, baseType: !5966, size: 64, offset: 3328)
!5966 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !517, line: 860, baseType: !5967)
!5967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 853, size: 64, elements: !5968)
!5968 = !{!5969, !5970}
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5967, file: !517, line: 858, baseType: !1199, size: 32)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5967, file: !517, line: 859, baseType: !68, size: 32, offset: 32)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5897, file: !5898, line: 186, baseType: !398, size: 64, offset: 3392)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5897, file: !5898, line: 186, baseType: !398, size: 64, offset: 3456)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5897, file: !5898, line: 186, baseType: !398, size: 64, offset: 3520)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5897, file: !5898, line: 186, baseType: !398, size: 64, offset: 3584)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5897, file: !5898, line: 187, baseType: !398, size: 64, offset: 3648)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5897, file: !5898, line: 188, baseType: !398, size: 64, offset: 3712)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5897, file: !5898, line: 189, baseType: !4591, size: 192, offset: 3776)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5897, file: !5898, line: 190, baseType: !48, size: 64, offset: 3968)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5897, file: !5898, line: 190, baseType: !48, size: 64, offset: 4032)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5897, file: !5898, line: 190, baseType: !48, size: 64, offset: 4096)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5897, file: !5898, line: 190, baseType: !48, size: 64, offset: 4160)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5897, file: !5898, line: 191, baseType: !48, size: 64, offset: 4224)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5897, file: !5898, line: 191, baseType: !48, size: 64, offset: 4288)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5897, file: !5898, line: 191, baseType: !48, size: 64, offset: 4352)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5897, file: !5898, line: 191, baseType: !48, size: 64, offset: 4416)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5897, file: !5898, line: 192, baseType: !48, size: 64, offset: 4480)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5897, file: !5898, line: 192, baseType: !48, size: 64, offset: 4544)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5897, file: !5898, line: 192, baseType: !48, size: 64, offset: 4608)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5897, file: !5898, line: 192, baseType: !48, size: 64, offset: 4672)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5897, file: !5898, line: 193, baseType: !48, size: 64, offset: 4736)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5897, file: !5898, line: 193, baseType: !48, size: 64, offset: 4800)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5897, file: !5898, line: 194, baseType: !5993, size: 448, offset: 4864)
!5993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5994, line: 12, size: 448, elements: !5995)
!5994 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001, !6002}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5993, file: !5994, line: 15, baseType: !398, size: 64)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5993, file: !5994, line: 17, baseType: !398, size: 64, offset: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5993, file: !5994, line: 19, baseType: !398, size: 64, offset: 128)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5993, file: !5994, line: 21, baseType: !398, size: 64, offset: 192)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5993, file: !5994, line: 29, baseType: !398, size: 64, offset: 256)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5993, file: !5994, line: 35, baseType: !398, size: 64, offset: 320)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5993, file: !5994, line: 44, baseType: !398, size: 64, offset: 384)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5897, file: !5898, line: 202, baseType: !400, size: 64, offset: 5312)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5897, file: !5898, line: 213, baseType: !6005, size: 2048, offset: 5376)
!6005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6006, size: 2048, elements: !5242)
!6006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !6007, line: 43, size: 128, elements: !6008)
!6007 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!6008 = !{!6009, !6010}
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !6006, file: !6007, line: 44, baseType: !47, size: 64)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !6006, file: !6007, line: 45, baseType: !47, size: 64, offset: 64)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5897, file: !5898, line: 216, baseType: !6012, size: 448, offset: 7424)
!6012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5898, line: 30, size: 448, elements: !6013)
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !6012, file: !5898, line: 31, baseType: !31, size: 32)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !6012, file: !5898, line: 32, baseType: !323, size: 64, offset: 64)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !6012, file: !5898, line: 33, baseType: !48, size: 64, offset: 128)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !6012, file: !5898, line: 34, baseType: !398, size: 64, offset: 192)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !6012, file: !5898, line: 34, baseType: !398, size: 64, offset: 256)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !6012, file: !5898, line: 35, baseType: !48, size: 64, offset: 320)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !6012, file: !5898, line: 35, baseType: !48, size: 64, offset: 384)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5897, file: !5898, line: 219, baseType: !6022, size: 64, offset: 7872)
!6022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6023, size: 64)
!6023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !6024, line: 41, size: 3456, elements: !6025)
!6024 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6023, file: !6024, line: 47, baseType: !103, size: 16)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !6023, file: !6024, line: 48, baseType: !341, size: 32, offset: 32)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !6023, file: !6024, line: 54, baseType: !94, size: 8, offset: 64)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !6023, file: !6024, line: 55, baseType: !94, size: 8, offset: 72)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !6023, file: !6024, line: 73, baseType: !399, size: 64, align: 64, offset: 128)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !6023, file: !6024, line: 74, baseType: !399, size: 64, offset: 192)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !6023, file: !6024, line: 81, baseType: !399, size: 64, offset: 256)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !6023, file: !6024, line: 82, baseType: !399, size: 64, offset: 320)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !6023, file: !6024, line: 85, baseType: !399, size: 64, offset: 384)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !6023, file: !6024, line: 86, baseType: !399, size: 64, offset: 448)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !6023, file: !6024, line: 94, baseType: !399, size: 64, offset: 512)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !6023, file: !6024, line: 102, baseType: !399, size: 64, offset: 576)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !6023, file: !6024, line: 107, baseType: !2283, size: 256, offset: 640)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !6023, file: !6024, line: 108, baseType: !94, size: 8, align: 64, offset: 896)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !6023, file: !6024, line: 110, baseType: !6041, size: 24, offset: 904)
!6041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !739)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !6023, file: !6024, line: 111, baseType: !341, size: 32, align: 64, offset: 960)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !6023, file: !6024, line: 113, baseType: !341, size: 32, offset: 992)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !6023, file: !6024, line: 114, baseType: !341, size: 32, offset: 1024)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !6023, file: !6024, line: 115, baseType: !341, size: 32, offset: 1056)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !6023, file: !6024, line: 117, baseType: !341, size: 32, offset: 1088)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !6023, file: !6024, line: 118, baseType: !399, size: 64, align: 64, offset: 1152)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !6023, file: !6024, line: 120, baseType: !399, size: 64, offset: 1216)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !6023, file: !6024, line: 121, baseType: !399, size: 64, offset: 1280)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !6023, file: !6024, line: 122, baseType: !399, size: 64, offset: 1344)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !6023, file: !6024, line: 123, baseType: !399, size: 64, offset: 1408)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !6023, file: !6024, line: 133, baseType: !399, size: 64, offset: 1472)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !6023, file: !6024, line: 137, baseType: !399, size: 64, offset: 1536)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !6023, file: !6024, line: 142, baseType: !399, size: 64, offset: 1600)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !6023, file: !6024, line: 143, baseType: !399, size: 64, offset: 1664)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !6023, file: !6024, line: 146, baseType: !399, size: 64, offset: 1728)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !6023, file: !6024, line: 147, baseType: !399, size: 64, offset: 1792)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !6023, file: !6024, line: 148, baseType: !399, size: 64, offset: 1856)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !6023, file: !6024, line: 149, baseType: !399, size: 64, offset: 1920)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !6023, file: !6024, line: 154, baseType: !399, size: 64, offset: 1984)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !6023, file: !6024, line: 155, baseType: !399, size: 64, offset: 2048)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !6023, file: !6024, line: 156, baseType: !399, size: 64, offset: 2112)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !6023, file: !6024, line: 158, baseType: !399, size: 64, offset: 2176)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !6023, file: !6024, line: 159, baseType: !399, size: 64, offset: 2240)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !6023, file: !6024, line: 162, baseType: !399, size: 64, offset: 2304)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !6023, file: !6024, line: 163, baseType: !399, size: 64, offset: 2368)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !6023, file: !6024, line: 164, baseType: !399, size: 64, offset: 2432)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !6023, file: !6024, line: 167, baseType: !399, size: 64, offset: 2496)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !6023, file: !6024, line: 168, baseType: !399, size: 64, offset: 2560)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !6023, file: !6024, line: 171, baseType: !399, size: 64, offset: 2624)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !6023, file: !6024, line: 172, baseType: !399, size: 64, offset: 2688)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !6023, file: !6024, line: 175, baseType: !399, size: 64, offset: 2752)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !6023, file: !6024, line: 178, baseType: !399, size: 64, offset: 2816)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !6023, file: !6024, line: 179, baseType: !399, size: 64, offset: 2880)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !6023, file: !6024, line: 182, baseType: !341, size: 32, offset: 2944)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !6023, file: !6024, line: 186, baseType: !399, size: 64, align: 64, offset: 3008)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !6023, file: !6024, line: 194, baseType: !399, size: 64, offset: 3072)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !6023, file: !6024, line: 195, baseType: !399, size: 64, offset: 3136)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !6023, file: !6024, line: 199, baseType: !399, size: 64, offset: 3200)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !6023, file: !6024, line: 200, baseType: !399, size: 64, offset: 3264)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !6023, file: !6024, line: 203, baseType: !399, size: 64, offset: 3328)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !6023, file: !6024, line: 204, baseType: !399, size: 64, offset: 3392)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5897, file: !5898, line: 222, baseType: !7, size: 32, offset: 7936)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5897, file: !5898, line: 223, baseType: !6085, size: 64, offset: 8000)
!6085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6086, size: 64)
!6086 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5898, line: 223, flags: DIFlagFwdDecl)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5897, file: !5898, line: 230, baseType: !859, size: 8, offset: 8064)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5897, file: !5898, line: 231, baseType: !907, size: 16, offset: 8080)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5897, file: !5898, line: 232, baseType: !907, size: 16, offset: 8096)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5897, file: !5898, line: 234, baseType: !647, size: 64, offset: 8128)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5897, file: !5898, line: 237, baseType: !703, size: 256, offset: 8192)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5897, file: !5898, line: 243, baseType: !879, size: 320, offset: 8448)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !330, file: !331, line: 1111, baseType: !6094, size: 64, offset: 15424)
!6094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6095, size: 64)
!6095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5898, line: 20, size: 16640, elements: !6096)
!6096 = !{!6097, !6098, !6099, !6100}
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !6095, file: !5898, line: 21, baseType: !68, size: 32)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6095, file: !5898, line: 22, baseType: !346, size: 32, offset: 32)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !6095, file: !5898, line: 23, baseType: !63, size: 192, offset: 64)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !6095, file: !5898, line: 24, baseType: !6101, size: 16384, offset: 256)
!6101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6102, size: 16384, elements: !1577)
!6102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5909, line: 51, size: 256, elements: !6103)
!6103 = !{!6104}
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !6102, file: !5909, line: 52, baseType: !6105, size: 256)
!6105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5909, line: 37, size: 256, elements: !6106)
!6106 = !{!6107, !6114, !6115, !6119}
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !6105, file: !5909, line: 39, baseType: !6108, size: 64)
!6108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !6109, line: 83, baseType: !6110)
!6109 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !6109, line: 82, baseType: !6112)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{null, !31}
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !6105, file: !5909, line: 40, baseType: !48, size: 64, offset: 64)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !6105, file: !5909, line: 46, baseType: !6116, size: 64, offset: 128)
!6116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !6109, line: 86, baseType: !6117)
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !6109, line: 85, baseType: !3762)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !6105, file: !5909, line: 48, baseType: !5913, size: 64, offset: 192)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !330, file: !331, line: 1112, baseType: !5913, size: 64, offset: 15488)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !330, file: !331, line: 1113, baseType: !5913, size: 64, offset: 15552)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !330, file: !331, line: 1115, baseType: !5913, size: 64, offset: 15616)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !330, file: !331, line: 1116, baseType: !5908, size: 192, offset: 15680)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !330, file: !331, line: 1117, baseType: !48, size: 64, offset: 15872)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !330, file: !331, line: 1118, baseType: !44, size: 64, offset: 15936)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !330, file: !331, line: 1119, baseType: !7, size: 32, offset: 16000)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !330, file: !331, line: 1121, baseType: !686, size: 64, offset: 16064)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !330, file: !331, line: 1125, baseType: !6129, size: 64, offset: 16128)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !331, line: 43, flags: DIFlagFwdDecl)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !330, file: !331, line: 1127, baseType: !832, size: 32, offset: 16192)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !330, file: !331, line: 1128, baseType: !7, size: 32, offset: 16224)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !330, file: !331, line: 1130, baseType: !6134, size: 128, offset: 16256)
!6134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !6135, line: 37, size: 128, elements: !6136)
!6135 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!6136 = !{!6137, !6138, !6139}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6134, file: !6135, line: 38, baseType: !31, size: 32)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !6134, file: !6135, line: 39, baseType: !58, size: 32, offset: 32)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !6134, file: !6135, line: 40, baseType: !6140, size: 64, offset: 64)
!6140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6141, size: 64)
!6141 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !6135, line: 24, flags: DIFlagFwdDecl)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !330, file: !331, line: 1131, baseType: !6143, size: 256, offset: 16384)
!6143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !6144, line: 12, size: 256, elements: !6145)
!6144 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!6145 = !{!6146, !6147, !6148, !6149}
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !6143, file: !6144, line: 13, baseType: !947, size: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6143, file: !6144, line: 14, baseType: !48, size: 64, offset: 64)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6143, file: !6144, line: 15, baseType: !48, size: 64, offset: 128)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !6143, file: !6144, line: 16, baseType: !859, size: 8, offset: 192)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !330, file: !331, line: 1134, baseType: !398, size: 64, offset: 16640)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !330, file: !331, line: 1135, baseType: !398, size: 64, offset: 16704)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !330, file: !331, line: 1138, baseType: !68, size: 32, offset: 16768)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !330, file: !331, line: 1141, baseType: !490, size: 32, offset: 16800)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !330, file: !331, line: 1143, baseType: !6155, size: 64, offset: 16832)
!6155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !331, line: 735, size: 64, elements: !6156)
!6156 = !{!6157}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6155, file: !331, line: 736, baseType: !6158, size: 64)
!6158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6155, size: 64)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !330, file: !331, line: 1147, baseType: !530, size: 128, offset: 16896)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !330, file: !331, line: 1149, baseType: !329, size: 64, offset: 17024)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !330, file: !331, line: 1151, baseType: !6162, size: 64, offset: 17088)
!6162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6163, size: 64)
!6163 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !331, line: 1151, flags: DIFlagFwdDecl)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !330, file: !331, line: 1188, baseType: !29, size: 64, offset: 17152)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !330, file: !331, line: 1191, baseType: !6166, size: 64, offset: 17216)
!6166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !330, file: !331, line: 1194, baseType: !6168, size: 64, offset: 17280)
!6168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6169, size: 64)
!6169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !147, line: 976, size: 320, elements: !6170)
!6170 = !{!6171, !6172, !6173, !6174, !6175, !6176, !6177}
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !6169, file: !147, line: 977, baseType: !2393, size: 64)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !6169, file: !147, line: 980, baseType: !2393, size: 64, offset: 64)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !6169, file: !147, line: 981, baseType: !35, size: 16, offset: 128)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !6169, file: !147, line: 983, baseType: !35, size: 16, offset: 144)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !6169, file: !147, line: 985, baseType: !859, size: 8, offset: 160)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !6169, file: !147, line: 986, baseType: !859, size: 8, offset: 168)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !6169, file: !147, line: 988, baseType: !106, size: 128, offset: 192)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !330, file: !331, line: 1197, baseType: !6179, size: 64, offset: 17344)
!6179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6180, size: 64)
!6180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2230, line: 155, size: 64, elements: !6181)
!6181 = !{!6182}
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !6180, file: !2230, line: 157, baseType: !48, size: 64)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !330, file: !331, line: 1199, baseType: !6184, size: 64, offset: 17408)
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6185, size: 64)
!6185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !6186, line: 99, size: 128, elements: !6187)
!6186 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!6187 = !{!6188, !6189, !6190}
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6185, file: !6186, line: 100, baseType: !696, size: 64)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !6185, file: !6186, line: 101, baseType: !58, size: 32, offset: 64)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !6185, file: !6186, line: 103, baseType: !35, size: 16, offset: 96)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !330, file: !331, line: 1202, baseType: !6192, size: 64, offset: 17472)
!6192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6193, size: 64)
!6193 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !331, line: 48, flags: DIFlagFwdDecl)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !330, file: !331, line: 1205, baseType: !48, size: 64, offset: 17536)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !330, file: !331, line: 1206, baseType: !6196, size: 64, offset: 17600)
!6196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6197, size: 64)
!6197 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5909, line: 14, baseType: !6198)
!6198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5909, line: 12, size: 384, elements: !6199)
!6199 = !{!6200}
!6200 = !DIDerivedType(tag: DW_TAG_member, scope: !6198, file: !5909, line: 13, baseType: !6201, size: 384)
!6201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6198, file: !5909, line: 13, size: 384, elements: !6202)
!6202 = !{!6203, !6204, !6205, !6206}
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !6201, file: !5909, line: 13, baseType: !31, size: 32)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !6201, file: !5909, line: 13, baseType: !31, size: 32, offset: 32)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !6201, file: !5909, line: 13, baseType: !31, size: 32, offset: 64)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !6201, file: !5909, line: 13, baseType: !6207, size: 256, offset: 128)
!6207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !6208, line: 37, size: 256, elements: !6209)
!6208 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!6209 = !{!6210, !6215, !6228, !6234, !6243, !6270, !6275}
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !6207, file: !6208, line: 42, baseType: !6211, size: 64)
!6211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 39, size: 64, elements: !6212)
!6212 = !{!6213, !6214}
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !6211, file: !6208, line: 40, baseType: !5788, size: 32)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !6211, file: !6208, line: 41, baseType: !838, size: 32, offset: 32)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !6207, file: !6208, line: 50, baseType: !6216, size: 192)
!6216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 45, size: 192, elements: !6217)
!6217 = !{!6218, !6220, !6221, !6227}
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !6216, file: !6208, line: 46, baseType: !6219, size: 32)
!6219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !46, line: 95, baseType: !31)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !6216, file: !6208, line: 47, baseType: !31, size: 32, offset: 32)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !6216, file: !6208, line: 48, baseType: !6222, size: 64, offset: 64)
!6222 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !6208, line: 11, baseType: !6223)
!6223 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !6208, line: 8, size: 64, elements: !6224)
!6224 = !{!6225, !6226}
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !6223, file: !6208, line: 9, baseType: !31, size: 32)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !6223, file: !6208, line: 10, baseType: !29, size: 64)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !6216, file: !6208, line: 49, baseType: !31, size: 32, offset: 128)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !6207, file: !6208, line: 57, baseType: !6229, size: 128)
!6229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 53, size: 128, elements: !6230)
!6230 = !{!6231, !6232, !6233}
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !6229, file: !6208, line: 54, baseType: !5788, size: 32)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !6229, file: !6208, line: 55, baseType: !838, size: 32, offset: 32)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !6229, file: !6208, line: 56, baseType: !6222, size: 64, offset: 64)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !6207, file: !6208, line: 66, baseType: !6235, size: 256)
!6235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 60, size: 256, elements: !6236)
!6236 = !{!6237, !6238, !6239, !6240, !6242}
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !6235, file: !6208, line: 61, baseType: !5788, size: 32)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !6235, file: !6208, line: 62, baseType: !838, size: 32, offset: 32)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !6235, file: !6208, line: 63, baseType: !31, size: 32, offset: 64)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !6235, file: !6208, line: 64, baseType: !6241, size: 64, offset: 128)
!6241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !46, line: 94, baseType: !1382)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !6235, file: !6208, line: 65, baseType: !6241, size: 64, offset: 192)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !6207, file: !6208, line: 105, baseType: !6244, size: 256)
!6244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 69, size: 256, elements: !6245)
!6245 = !{!6246, !6247}
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !6244, file: !6208, line: 70, baseType: !29, size: 64)
!6247 = !DIDerivedType(tag: DW_TAG_member, scope: !6244, file: !6208, line: 79, baseType: !6248, size: 192, offset: 64)
!6248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6244, file: !6208, line: 79, size: 192, elements: !6249)
!6249 = !{!6250, !6251, !6252, !6259, !6264}
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !6248, file: !6208, line: 81, baseType: !31, size: 32)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !6248, file: !6208, line: 86, baseType: !907, size: 16)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !6248, file: !6208, line: 92, baseType: !6253, size: 192)
!6253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6248, file: !6208, line: 88, size: 192, elements: !6254)
!6254 = !{!6255, !6257, !6258}
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !6253, file: !6208, line: 89, baseType: !6256, size: 64)
!6256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !509)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !6253, file: !6208, line: 90, baseType: !29, size: 64, offset: 64)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !6253, file: !6208, line: 91, baseType: !29, size: 64, offset: 128)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !6248, file: !6208, line: 97, baseType: !6260, size: 96)
!6260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6248, file: !6208, line: 94, size: 96, elements: !6261)
!6261 = !{!6262, !6263}
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !6260, file: !6208, line: 95, baseType: !6256, size: 64)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !6260, file: !6208, line: 96, baseType: !341, size: 32, offset: 64)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !6248, file: !6208, line: 103, baseType: !6265, size: 128)
!6265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6248, file: !6208, line: 99, size: 128, elements: !6266)
!6266 = !{!6267, !6268, !6269}
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !6265, file: !6208, line: 100, baseType: !48, size: 64)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !6265, file: !6208, line: 101, baseType: !341, size: 32, offset: 64)
!6269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6265, file: !6208, line: 102, baseType: !341, size: 32, offset: 96)
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !6207, file: !6208, line: 111, baseType: !6271, size: 128)
!6271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 108, size: 128, elements: !6272)
!6272 = !{!6273, !6274}
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !6271, file: !6208, line: 109, baseType: !323, size: 64)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !6271, file: !6208, line: 110, baseType: !31, size: 32, offset: 64)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !6207, file: !6208, line: 118, baseType: !6276, size: 128)
!6276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6207, file: !6208, line: 114, size: 128, elements: !6277)
!6277 = !{!6278, !6279, !6280}
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !6276, file: !6208, line: 115, baseType: !29, size: 64)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !6276, file: !6208, line: 116, baseType: !31, size: 32, offset: 64)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !6276, file: !6208, line: 117, baseType: !7, size: 32, offset: 96)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !330, file: !331, line: 1208, baseType: !5993, size: 448, offset: 17664)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !330, file: !331, line: 1215, baseType: !398, size: 64, offset: 18112)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !330, file: !331, line: 1217, baseType: !398, size: 64, offset: 18176)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !330, file: !331, line: 1219, baseType: !398, size: 64, offset: 18240)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !330, file: !331, line: 1223, baseType: !1869, size: 64, offset: 18304)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !330, file: !331, line: 1225, baseType: !1199, size: 32, offset: 18368)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !330, file: !331, line: 1226, baseType: !31, size: 32, offset: 18400)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !330, file: !331, line: 1227, baseType: !31, size: 32, offset: 18432)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !330, file: !331, line: 1231, baseType: !4661, size: 64, offset: 18496)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !330, file: !331, line: 1233, baseType: !106, size: 128, offset: 18560)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !330, file: !331, line: 1240, baseType: !6292, size: 64, offset: 18688)
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6293, size: 64)
!6293 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !6294, line: 60, flags: DIFlagFwdDecl)
!6294 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !330, file: !331, line: 1242, baseType: !6296, size: 64, offset: 18752)
!6296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6297, size: 64)
!6297 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !331, line: 1242, flags: DIFlagFwdDecl)
!6298 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !330, file: !331, line: 1244, baseType: !106, size: 128, offset: 18816)
!6299 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !330, file: !331, line: 1245, baseType: !6300, size: 64, offset: 18944)
!6300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6301, size: 64)
!6301 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !331, line: 51, flags: DIFlagFwdDecl)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !330, file: !331, line: 1246, baseType: !703, size: 256, offset: 19008)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !330, file: !331, line: 1247, baseType: !7, size: 32, offset: 19264)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !330, file: !331, line: 1250, baseType: !3912, size: 64, offset: 19328)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !330, file: !331, line: 1251, baseType: !703, size: 256, offset: 19392)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !330, file: !331, line: 1252, baseType: !106, size: 128, offset: 19648)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !330, file: !331, line: 1259, baseType: !1861, size: 64, offset: 19776)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !330, file: !331, line: 1260, baseType: !907, size: 16, offset: 19840)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !330, file: !331, line: 1261, baseType: !907, size: 16, offset: 19856)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !330, file: !331, line: 1314, baseType: !6311, size: 64, offset: 19904)
!6311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6312, size: 64)
!6312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !6313, line: 62, size: 256, align: 256, elements: !6314)
!6313 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!6314 = !{!6315, !6316, !6317, !6318, !6319, !6320, !6321}
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !6312, file: !6313, line: 75, baseType: !341, size: 32)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !6312, file: !6313, line: 90, baseType: !341, size: 32, offset: 32)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !6312, file: !6313, line: 112, baseType: !399, size: 64, offset: 64)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6312, file: !6313, line: 132, baseType: !341, size: 32, offset: 128)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !6312, file: !6313, line: 140, baseType: !341, size: 32, offset: 160)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !6312, file: !6313, line: 149, baseType: !341, size: 32, offset: 192)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6312, file: !6313, line: 154, baseType: !6322, offset: 224)
!6322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, elements: !1090)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !330, file: !331, line: 1315, baseType: !340, size: 32, offset: 19968)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !330, file: !331, line: 1316, baseType: !340, size: 32, offset: 20000)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !330, file: !331, line: 1321, baseType: !48, size: 64, offset: 20032)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !330, file: !331, line: 1325, baseType: !31, size: 32, offset: 20096)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !330, file: !331, line: 1326, baseType: !31, size: 32, offset: 20128)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !330, file: !331, line: 1327, baseType: !31, size: 32, offset: 20160)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !330, file: !331, line: 1328, baseType: !31, size: 32, offset: 20192)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !330, file: !331, line: 1329, baseType: !683, size: 128, align: 64, offset: 20224)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !330, file: !331, line: 1332, baseType: !6332, size: 128, offset: 20352)
!6332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !6333, line: 51, size: 128, elements: !6334)
!6333 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!6334 = !{!6335, !6340, !6341}
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !6332, file: !6333, line: 60, baseType: !6336, size: 64)
!6336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !6337, line: 7, size: 64, elements: !6338)
!6337 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!6338 = !{!6339}
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !6336, file: !6337, line: 12, baseType: !595, size: 64)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !6332, file: !6333, line: 63, baseType: !859, size: 8, offset: 64)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !6332, file: !6333, line: 70, baseType: !859, size: 8, offset: 72)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !330, file: !331, line: 1335, baseType: !5477, size: 64, offset: 20480)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !330, file: !331, line: 1337, baseType: !6344, size: 128, offset: 20544)
!6344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !6333, line: 39, size: 128, elements: !6345)
!6345 = !{!6346, !6347, !6348}
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !6344, file: !6333, line: 40, baseType: !1658, size: 64)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6344, file: !6333, line: 42, baseType: !341, size: 32, offset: 64)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6344, file: !6333, line: 43, baseType: !341, size: 32, offset: 96)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !330, file: !331, line: 1340, baseType: !6350, size: 64, offset: 20672)
!6350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6351, size: 64)
!6351 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !331, line: 69, flags: DIFlagFwdDecl)
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !330, file: !331, line: 1351, baseType: !31, size: 32, offset: 20736)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !330, file: !331, line: 1352, baseType: !31, size: 32, offset: 20768)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !330, file: !331, line: 1354, baseType: !48, size: 64, offset: 20800)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !330, file: !331, line: 1364, baseType: !398, size: 64, offset: 20864)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !330, file: !331, line: 1365, baseType: !398, size: 64, offset: 20928)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !330, file: !331, line: 1412, baseType: !48, size: 64, offset: 20992)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !330, file: !331, line: 1453, baseType: !2276, size: 64, offset: 21056)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !330, file: !331, line: 1457, baseType: !6360, size: 64, offset: 21120)
!6360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6361, size: 64)
!6361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !215, line: 61, size: 576, elements: !6362)
!6362 = !{!6363, !6364, !6383, !6386, !6387, !6420, !6430}
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6361, file: !215, line: 62, baseType: !214, size: 32)
!6364 = !DIDerivedType(tag: DW_TAG_member, scope: !6361, file: !215, line: 64, baseType: !6365, size: 192, offset: 64)
!6365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6361, file: !215, line: 64, size: 192, elements: !6366)
!6366 = !{!6367, !6378}
!6367 = !DIDerivedType(tag: DW_TAG_member, scope: !6365, file: !215, line: 65, baseType: !6368, size: 192)
!6368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6365, file: !215, line: 65, size: 192, elements: !6369)
!6369 = !{!6370, !6377}
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !6368, file: !215, line: 66, baseType: !6371, size: 128)
!6371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !6372, line: 50, size: 128, elements: !6373)
!6372 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!6373 = !{!6374, !6375, !6376}
!6374 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !6371, file: !6372, line: 52, baseType: !48, size: 64)
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !6371, file: !6372, line: 54, baseType: !7, size: 32, offset: 64)
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !6371, file: !6372, line: 55, baseType: !7, size: 32, offset: 96)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !6368, file: !215, line: 67, baseType: !48, size: 64, offset: 128)
!6378 = !DIDerivedType(tag: DW_TAG_member, scope: !6365, file: !215, line: 70, baseType: !6379, size: 192)
!6379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6365, file: !215, line: 70, size: 192, elements: !6380)
!6380 = !{!6381, !6382}
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !6379, file: !215, line: 71, baseType: !683, size: 128, align: 64)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !6379, file: !215, line: 72, baseType: !48, size: 64, offset: 128)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !6361, file: !215, line: 76, baseType: !6384, size: 64, offset: 256)
!6384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6385, size: 64)
!6385 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !215, line: 76, flags: DIFlagFwdDecl)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !6361, file: !215, line: 77, baseType: !48, size: 64, offset: 320)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !6361, file: !215, line: 79, baseType: !6388, size: 64, offset: 384)
!6388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6389, size: 64)
!6389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !6372, line: 25, size: 256, elements: !6390)
!6390 = !{!6391, !6397, !6401}
!6391 = !DIDerivedType(tag: DW_TAG_member, scope: !6389, file: !6372, line: 26, baseType: !6392, size: 128)
!6392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6389, file: !6372, line: 26, size: 128, elements: !6393)
!6393 = !{!6394, !6396}
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !6392, file: !6372, line: 27, baseType: !6395, size: 128)
!6395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !5242)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !6392, file: !6372, line: 28, baseType: !6395, size: 128)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !6389, file: !6372, line: 31, baseType: !6398, size: 64, offset: 128)
!6398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6399, size: 64)
!6399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6400)
!6400 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !6372, line: 23, flags: DIFlagFwdDecl)
!6401 = !DIDerivedType(tag: DW_TAG_member, scope: !6389, file: !6372, line: 33, baseType: !6402, size: 64, offset: 192)
!6402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6389, file: !6372, line: 33, size: 64, elements: !6403)
!6403 = !{!6404, !6410, !6415}
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !6402, file: !6372, line: 38, baseType: !6405, size: 64)
!6405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6402, file: !6372, line: 34, size: 64, elements: !6406)
!6406 = !{!6407, !6408, !6409}
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !6405, file: !6372, line: 35, baseType: !871, size: 32)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6405, file: !6372, line: 36, baseType: !92, size: 8, offset: 32)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !6405, file: !6372, line: 37, baseType: !92, size: 8, offset: 40)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !6402, file: !6372, line: 42, baseType: !6411, size: 16)
!6411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6402, file: !6372, line: 39, size: 16, elements: !6412)
!6412 = !{!6413, !6414}
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !6411, file: !6372, line: 40, baseType: !92, size: 8)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6411, file: !6372, line: 41, baseType: !92, size: 8, offset: 8)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !6402, file: !6372, line: 46, baseType: !6416, size: 16)
!6416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6402, file: !6372, line: 43, size: 16, elements: !6417)
!6417 = !{!6418, !6419}
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !6416, file: !6372, line: 44, baseType: !92, size: 8)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !6416, file: !6372, line: 45, baseType: !92, size: 8, offset: 8)
!6420 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !6361, file: !215, line: 81, baseType: !6421, size: 64, offset: 448)
!6421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6422, size: 64)
!6422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !215, line: 85, size: 384, elements: !6423)
!6423 = !{!6424, !6425, !6426, !6427, !6428, !6429}
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !6422, file: !215, line: 86, baseType: !6384, size: 64)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6422, file: !215, line: 87, baseType: !48, size: 64, offset: 64)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !6422, file: !215, line: 88, baseType: !48, size: 64, offset: 128)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !6422, file: !215, line: 89, baseType: !48, size: 64, offset: 192)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !6422, file: !215, line: 90, baseType: !859, size: 8, offset: 256)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6422, file: !215, line: 92, baseType: !6421, size: 64, offset: 320)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !6361, file: !215, line: 82, baseType: !7, size: 32, offset: 512)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !330, file: !331, line: 1463, baseType: !6432, offset: 21184)
!6432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !331, line: 739, elements: !668)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !330, file: !331, line: 1470, baseType: !683, size: 128, align: 64, offset: 21184)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !330, file: !331, line: 1471, baseType: !346, size: 32, offset: 21312)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !330, file: !331, line: 1472, baseType: !31, size: 32, offset: 21344)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !330, file: !331, line: 1474, baseType: !329, size: 64, offset: 21376)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !330, file: !331, line: 1475, baseType: !2727, size: 320, offset: 21440)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !330, file: !331, line: 1478, baseType: !6439, size: 64, offset: 21760)
!6439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6440, size: 64)
!6440 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !331, line: 1478, flags: DIFlagFwdDecl)
!6441 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !330, file: !331, line: 1482, baseType: !346, size: 32, offset: 21824)
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !330, file: !331, line: 1489, baseType: !29, size: 64, offset: 21888)
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !330, file: !331, line: 1504, baseType: !29, size: 64, offset: 21952)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !330, file: !331, line: 1505, baseType: !399, size: 64, offset: 22016)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !330, file: !331, line: 1506, baseType: !398, size: 64, offset: 22080)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !330, file: !331, line: 1507, baseType: !399, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !330, file: !331, line: 1508, baseType: !399, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !330, file: !331, line: 1509, baseType: !399, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !330, file: !331, line: 1510, baseType: !683, size: 128, align: 64, offset: 22208)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !330, file: !331, line: 1511, baseType: !31, size: 32, offset: 22336)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !330, file: !331, line: 1515, baseType: !6452, size: 64, offset: 22400)
!6452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !360, line: 56, size: 64, elements: !6453)
!6453 = !{!6454}
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !6452, file: !360, line: 57, baseType: !363, size: 64)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !330, file: !331, line: 1518, baseType: !6452, size: 64, offset: 22464)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !330, file: !331, line: 1528, baseType: !683, size: 128, align: 64, offset: 22528)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !330, file: !331, line: 1552, baseType: !6458, size: 35328, offset: 23040)
!6458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !6459, line: 430, size: 35328, elements: !6460)
!6459 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!6460 = !{!6461, !6479, !6480, !6481, !6482, !6483, !6484, !6485, !6486, !6488, !6489, !6490, !6491, !6492, !6493, !6496, !6497, !6498, !6499}
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !6458, file: !6459, line: 432, baseType: !6462, size: 192)
!6462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6463, size: 192, elements: !739)
!6463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !6464, line: 16, size: 64, elements: !6465)
!6464 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!6465 = !{!6466, !6467, !6468, !6469, !6470, !6471, !6472, !6473, !6474, !6475, !6476, !6477, !6478}
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !6463, file: !6464, line: 17, baseType: !102, size: 16)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !6463, file: !6464, line: 18, baseType: !102, size: 16, offset: 16)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !6463, file: !6464, line: 19, baseType: !102, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6463, file: !6464, line: 19, baseType: !102, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !6463, file: !6464, line: 19, baseType: !102, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !6463, file: !6464, line: 19, baseType: !102, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6463, file: !6464, line: 19, baseType: !102, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !6463, file: !6464, line: 20, baseType: !102, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !6463, file: !6464, line: 20, baseType: !102, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !6463, file: !6464, line: 20, baseType: !102, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !6463, file: !6464, line: 20, baseType: !102, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !6463, file: !6464, line: 20, baseType: !102, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !6463, file: !6464, line: 20, baseType: !102, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!6479 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !6458, file: !6459, line: 436, baseType: !48, size: 64, offset: 192)
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !6458, file: !6459, line: 440, baseType: !35, size: 16, offset: 256)
!6481 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !6458, file: !6459, line: 441, baseType: !35, size: 16, offset: 272)
!6482 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !6458, file: !6459, line: 442, baseType: !35, size: 16, offset: 288)
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !6458, file: !6459, line: 443, baseType: !35, size: 16, offset: 304)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !6458, file: !6459, line: 447, baseType: !48, size: 64, offset: 320)
!6485 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !6458, file: !6459, line: 448, baseType: !48, size: 64, offset: 384)
!6486 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !6458, file: !6459, line: 459, baseType: !6487, size: 256, offset: 448)
!6487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3873, size: 256, elements: !760)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !6458, file: !6459, line: 461, baseType: !48, size: 64, offset: 704)
!6489 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !6458, file: !6459, line: 463, baseType: !48, size: 64, offset: 768)
!6490 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !6458, file: !6459, line: 465, baseType: !48, size: 64, offset: 832)
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !6458, file: !6459, line: 466, baseType: !48, size: 64, offset: 896)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !6458, file: !6459, line: 467, baseType: !48, size: 64, offset: 960)
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !6458, file: !6459, line: 473, baseType: !6494, size: 64, offset: 1024)
!6494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6495, size: 64)
!6495 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !6459, line: 10, flags: DIFlagFwdDecl)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !6458, file: !6459, line: 480, baseType: !48, size: 64, offset: 1088)
!6497 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !6458, file: !6459, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !6458, file: !6459, line: 491, baseType: !340, size: 32, offset: 1184)
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !6458, file: !6459, line: 501, baseType: !6500, size: 33792, offset: 1536)
!6500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !6501, line: 448, size: 33792, elements: !6502)
!6501 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!6502 = !{!6503, !6504, !6505, !6613, !6614, !6620, !6621}
!6503 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !6500, file: !6501, line: 461, baseType: !7, size: 32)
!6504 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !6500, file: !6501, line: 468, baseType: !48, size: 64, offset: 64)
!6505 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !6500, file: !6501, line: 476, baseType: !6506, size: 64, offset: 128)
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6507, size: 64)
!6507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !6501, line: 356, size: 33280, align: 512, elements: !6508)
!6508 = !{!6509, !6510, !6511, !6512, !6513, !6514, !6515, !6516, !6517, !6518}
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6507, file: !6501, line: 358, baseType: !7, size: 32)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !6507, file: !6501, line: 361, baseType: !7, size: 32, offset: 32)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6507, file: !6501, line: 364, baseType: !398, size: 64, offset: 64)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !6507, file: !6501, line: 367, baseType: !398, size: 64, offset: 128)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !6507, file: !6501, line: 370, baseType: !398, size: 64, offset: 192)
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !6507, file: !6501, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !6507, file: !6501, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !6507, file: !6501, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !6507, file: !6501, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6507, file: !6501, line: 397, baseType: !6519, size: 32768, offset: 512)
!6519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !6501, line: 348, size: 32768, elements: !6520)
!6520 = !{!6521, !6536, !6573, !6598, !6611}
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !6519, file: !6501, line: 349, baseType: !6522, size: 896)
!6522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !6501, line: 12, size: 896, elements: !6523)
!6523 = !{!6524, !6525, !6526, !6527, !6528, !6529, !6530, !6531, !6535}
!6524 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6522, file: !6501, line: 13, baseType: !340, size: 32)
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6522, file: !6501, line: 14, baseType: !340, size: 32, offset: 32)
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6522, file: !6501, line: 15, baseType: !340, size: 32, offset: 64)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6522, file: !6501, line: 16, baseType: !340, size: 32, offset: 96)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6522, file: !6501, line: 17, baseType: !340, size: 32, offset: 128)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6522, file: !6501, line: 18, baseType: !340, size: 32, offset: 160)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6522, file: !6501, line: 19, baseType: !340, size: 32, offset: 192)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6522, file: !6501, line: 22, baseType: !6532, size: 640, offset: 224)
!6532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !6533)
!6533 = !{!6534}
!6534 = !DISubrange(count: 20)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6522, file: !6501, line: 25, baseType: !340, size: 32, offset: 864)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !6519, file: !6501, line: 350, baseType: !6537, size: 4096, align: 128)
!6537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !6501, line: 34, size: 4096, align: 128, elements: !6538)
!6538 = !{!6539, !6540, !6541, !6542, !6543, !6558, !6559, !6560, !6562, !6564, !6568}
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6537, file: !6501, line: 35, baseType: !102, size: 16)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6537, file: !6501, line: 36, baseType: !102, size: 16, offset: 16)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6537, file: !6501, line: 37, baseType: !102, size: 16, offset: 32)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !6537, file: !6501, line: 38, baseType: !102, size: 16, offset: 48)
!6543 = !DIDerivedType(tag: DW_TAG_member, scope: !6537, file: !6501, line: 39, baseType: !6544, size: 128, offset: 64)
!6544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6537, file: !6501, line: 39, size: 128, elements: !6545)
!6545 = !{!6546, !6551}
!6546 = !DIDerivedType(tag: DW_TAG_member, scope: !6544, file: !6501, line: 40, baseType: !6547, size: 128)
!6547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6544, file: !6501, line: 40, size: 128, elements: !6548)
!6548 = !{!6549, !6550}
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6547, file: !6501, line: 41, baseType: !398, size: 64)
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6547, file: !6501, line: 42, baseType: !398, size: 64, offset: 64)
!6551 = !DIDerivedType(tag: DW_TAG_member, scope: !6544, file: !6501, line: 44, baseType: !6552, size: 128)
!6552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6544, file: !6501, line: 44, size: 128, elements: !6553)
!6553 = !{!6554, !6555, !6556, !6557}
!6554 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6552, file: !6501, line: 45, baseType: !340, size: 32)
!6555 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6552, file: !6501, line: 46, baseType: !340, size: 32, offset: 32)
!6556 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6552, file: !6501, line: 47, baseType: !340, size: 32, offset: 64)
!6557 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6552, file: !6501, line: 48, baseType: !340, size: 32, offset: 96)
!6558 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !6537, file: !6501, line: 51, baseType: !340, size: 32, offset: 192)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !6537, file: !6501, line: 52, baseType: !340, size: 32, offset: 224)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6537, file: !6501, line: 55, baseType: !6561, size: 1024, offset: 256)
!6561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !2284)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !6537, file: !6501, line: 58, baseType: !6563, size: 2048, offset: 1280)
!6563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !1577)
!6564 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !6537, file: !6501, line: 60, baseType: !6565, size: 384, offset: 3328)
!6565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !6566)
!6566 = !{!6567}
!6567 = !DISubrange(count: 12)
!6568 = !DIDerivedType(tag: DW_TAG_member, scope: !6537, file: !6501, line: 62, baseType: !6569, size: 384, offset: 3712)
!6569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6537, file: !6501, line: 62, size: 384, elements: !6570)
!6570 = !{!6571, !6572}
!6571 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6569, file: !6501, line: 63, baseType: !6565, size: 384)
!6572 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6569, file: !6501, line: 64, baseType: !6565, size: 384)
!6573 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !6519, file: !6501, line: 351, baseType: !6574, size: 1088)
!6574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !6501, line: 79, size: 1088, elements: !6575)
!6575 = !{!6576, !6577, !6578, !6579, !6580, !6581, !6582, !6583, !6584, !6585, !6586, !6587, !6588, !6589, !6590, !6597}
!6576 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6574, file: !6501, line: 80, baseType: !340, size: 32)
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6574, file: !6501, line: 81, baseType: !340, size: 32, offset: 32)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6574, file: !6501, line: 82, baseType: !340, size: 32, offset: 64)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6574, file: !6501, line: 83, baseType: !340, size: 32, offset: 96)
!6580 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6574, file: !6501, line: 84, baseType: !340, size: 32, offset: 128)
!6581 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6574, file: !6501, line: 85, baseType: !340, size: 32, offset: 160)
!6582 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6574, file: !6501, line: 86, baseType: !340, size: 32, offset: 192)
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6574, file: !6501, line: 88, baseType: !6532, size: 640, offset: 224)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6574, file: !6501, line: 89, baseType: !92, size: 8, offset: 864)
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6574, file: !6501, line: 90, baseType: !92, size: 8, offset: 872)
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6574, file: !6501, line: 91, baseType: !92, size: 8, offset: 880)
!6587 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6574, file: !6501, line: 92, baseType: !92, size: 8, offset: 888)
!6588 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6574, file: !6501, line: 93, baseType: !92, size: 8, offset: 896)
!6589 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6574, file: !6501, line: 94, baseType: !92, size: 8, offset: 904)
!6590 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6574, file: !6501, line: 95, baseType: !6591, size: 64, offset: 960)
!6591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6592, size: 64)
!6592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6593, line: 11, size: 128, elements: !6594)
!6593 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6594 = !{!6595, !6596}
!6595 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6592, file: !6593, line: 12, baseType: !323, size: 64)
!6596 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6592, file: !6593, line: 13, baseType: !4436, size: 64, offset: 64)
!6597 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6574, file: !6501, line: 96, baseType: !340, size: 32, offset: 1024)
!6598 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !6519, file: !6501, line: 352, baseType: !6599, size: 4608, align: 512)
!6599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !6501, line: 333, size: 4608, align: 512, elements: !6600)
!6600 = !{!6601, !6602, !6609}
!6601 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6599, file: !6501, line: 334, baseType: !6537, size: 4096, align: 128)
!6602 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6599, file: !6501, line: 335, baseType: !6603, size: 512, offset: 4096)
!6603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !6501, line: 312, size: 512, elements: !6604)
!6604 = !{!6605, !6606, !6607}
!6605 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6603, file: !6501, line: 313, baseType: !398, size: 64)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6603, file: !6501, line: 314, baseType: !398, size: 64, offset: 64)
!6607 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6603, file: !6501, line: 315, baseType: !6608, size: 384, offset: 128)
!6608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !925)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6599, file: !6501, line: 336, baseType: !6610, offset: 4608)
!6610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !1090)
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !6519, file: !6501, line: 353, baseType: !6612, size: 32768)
!6612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32768, elements: !3817)
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !6500, file: !6501, line: 484, baseType: !6506, size: 64, offset: 192)
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !6500, file: !6501, line: 491, baseType: !6615, size: 128, offset: 256)
!6615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !6501, line: 404, size: 128, elements: !6616)
!6616 = !{!6617, !6618, !6619}
!6617 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6615, file: !6501, line: 424, baseType: !398, size: 64)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6615, file: !6501, line: 432, baseType: !7, size: 32, offset: 64)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6615, file: !6501, line: 440, baseType: !7, size: 32, offset: 96)
!6620 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !6500, file: !6501, line: 498, baseType: !6615, size: 128, offset: 384)
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !6500, file: !6501, line: 508, baseType: !6507, size: 33280, align: 512, offset: 512)
!6622 = !{!6623, !6634, !6639, !6642, !6647, !6652, !6657, !6662, !6665, !6670, !6675, !6677, !0, !6679, !6686, !6688, !6690, !6703, !6705, !6707, !6709, !6712, !6714, !6716}
!6623 = !DIGlobalVariableExpression(var: !6624, expr: !DIExpression())
!6624 = distinct !DIGlobalVariable(name: "__setup_mount_param", scope: !2, file: !3, line: 62, type: !6625, isLocal: true, isDefinition: true, align: 64)
!6625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !6626, line: 324, size: 192, elements: !6627)
!6626 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!6627 = !{!6628, !6629, !6633}
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !6625, file: !6626, line: 325, baseType: !25, size: 64)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !6625, file: !6626, line: 326, baseType: !6630, size: 64, offset: 64)
!6630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6631, size: 64)
!6631 = !DISubroutineType(types: !6632)
!6632 = !{!31, !947}
!6633 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !6625, file: !6626, line: 327, baseType: !31, size: 32, offset: 128)
!6634 = !DIGlobalVariableExpression(var: !6635, expr: !DIExpression())
!6635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !6636, isLocal: true, isDefinition: true)
!6636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 72, elements: !6637)
!6637 = !{!6638}
!6638 = !DISubrange(count: 9)
!6639 = !DIGlobalVariableExpression(var: !6640, expr: !DIExpression())
!6640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !6641, isLocal: true, isDefinition: true)
!6641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !760)
!6642 = !DIGlobalVariableExpression(var: !6643, expr: !DIExpression())
!6643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 372, type: !6644, isLocal: true, isDefinition: true)
!6644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 248, elements: !6645)
!6645 = !{!6646}
!6646 = !DISubrange(count: 31)
!6647 = !DIGlobalVariableExpression(var: !6648, expr: !DIExpression())
!6648 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !6649, isLocal: true, isDefinition: true)
!6649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 168, elements: !6650)
!6650 = !{!6651}
!6651 = !DISubrange(count: 21)
!6652 = !DIGlobalVariableExpression(var: !6653, expr: !DIExpression())
!6653 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !6654, isLocal: true, isDefinition: true)
!6654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 344, elements: !6655)
!6655 = !{!6656}
!6656 = !DISubrange(count: 43)
!6657 = !DIGlobalVariableExpression(var: !6658, expr: !DIExpression())
!6658 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !6659, isLocal: true, isDefinition: true)
!6659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 392, elements: !6660)
!6660 = !{!6661}
!6661 = !DISubrange(count: 49)
!6662 = !DIGlobalVariableExpression(var: !6663, expr: !DIExpression())
!6663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !6664, isLocal: true, isDefinition: true)
!6664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 80, elements: !1078)
!6665 = !DIGlobalVariableExpression(var: !6666, expr: !DIExpression())
!6666 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !6667, isLocal: true, isDefinition: true)
!6667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 336, elements: !6668)
!6668 = !{!6669}
!6669 = !DISubrange(count: 42)
!6670 = !DIGlobalVariableExpression(var: !6671, expr: !DIExpression())
!6671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 480, type: !6672, isLocal: true, isDefinition: true)
!6672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 200, elements: !6673)
!6673 = !{!6674}
!6674 = !DISubrange(count: 25)
!6675 = !DIGlobalVariableExpression(var: !6676, expr: !DIExpression())
!6676 = distinct !DIGlobalVariable(name: "thread", scope: !2, file: !3, line: 40, type: !329, isLocal: true, isDefinition: true)
!6677 = !DIGlobalVariableExpression(var: !6678, expr: !DIExpression())
!6678 = distinct !DIGlobalVariable(name: "mnt", scope: !2, file: !3, line: 64, type: !1188, isLocal: true, isDefinition: true)
!6679 = !DIGlobalVariableExpression(var: !6680, expr: !DIExpression())
!6680 = distinct !DIGlobalVariable(name: "__key", scope: !6681, file: !1026, line: 87, type: !4847, isLocal: true, isDefinition: true)
!6681 = distinct !DISubprogram(name: "init_completion", scope: !1026, file: !1026, line: 84, type: !6682, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6684)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{null, !1024}
!6684 = !{!6685}
!6685 = !DILocalVariable(name: "x", arg: 1, scope: !6681, file: !1026, line: 84, type: !1024)
!6686 = !DIGlobalVariableExpression(var: !6687, expr: !DIExpression())
!6687 = distinct !DIGlobalVariable(scope: null, file: !1026, line: 87, type: !6636, isLocal: true, isDefinition: true)
!6688 = !DIGlobalVariableExpression(var: !6689, expr: !DIExpression())
!6689 = distinct !DIGlobalVariable(name: "req_lock", scope: !2, file: !3, line: 44, type: !68, isLocal: true, isDefinition: true)
!6690 = !DIGlobalVariableExpression(var: !6691, expr: !DIExpression())
!6691 = distinct !DIGlobalVariable(name: "requests", scope: !2, file: !3, line: 55, type: !6692, isLocal: true, isDefinition: true)
!6692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6693, size: 64)
!6693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "req", file: !3, line: 46, size: 640, elements: !6694)
!6694 = !{!6695, !6696, !6697, !6698, !6699, !6700, !6701, !6702}
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6693, file: !3, line: 47, baseType: !6692, size: 64)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !6693, file: !3, line: 48, baseType: !1025, size: 256, offset: 64)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !6693, file: !3, line: 49, baseType: !31, size: 32, offset: 320)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6693, file: !3, line: 50, baseType: !25, size: 64, offset: 384)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6693, file: !3, line: 51, baseType: !33, size: 16, offset: 448)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6693, file: !3, line: 52, baseType: !832, size: 32, offset: 480)
!6701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !6693, file: !3, line: 53, baseType: !840, size: 32, offset: 512)
!6702 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6693, file: !3, line: 54, baseType: !2515, size: 64, offset: 576)
!6703 = !DIGlobalVariableExpression(var: !6704, expr: !DIExpression())
!6704 = distinct !DIGlobalVariable(name: "mount_dev", scope: !2, file: !3, line: 42, type: !31, isLocal: true, isDefinition: true)
!6705 = !DIGlobalVariableExpression(var: !6706, expr: !DIExpression())
!6706 = distinct !DIGlobalVariable(name: "internal_fs_type", scope: !2, file: !3, line: 82, type: !1439, isLocal: true, isDefinition: true)
!6707 = !DIGlobalVariableExpression(var: !6708, expr: !DIExpression())
!6708 = distinct !DIGlobalVariable(name: "dev_fs_type", scope: !2, file: !3, line: 92, type: !1439, isLocal: true, isDefinition: true)
!6709 = !DIGlobalVariableExpression(var: !6710, expr: !DIExpression())
!6710 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !6711, isLocal: true, isDefinition: true)
!6711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16, elements: !3498)
!6712 = !DIGlobalVariableExpression(var: !6713, expr: !DIExpression())
!6713 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !6641, isLocal: true, isDefinition: true)
!6714 = !DIGlobalVariableExpression(var: !6715, expr: !DIExpression())
!6715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !6711, isLocal: true, isDefinition: true)
!6716 = !DIGlobalVariableExpression(var: !6717, expr: !DIExpression())
!6717 = distinct !DIGlobalVariable(name: "setup_done", scope: !2, file: !3, line: 378, type: !1025, isLocal: true, isDefinition: true)
!6718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !5242)
!6719 = !{i32 7, !"Dwarf Version", i32 5}
!6720 = !{i32 2, !"Debug Info Version", i32 3}
!6721 = !{i32 1, !"wchar_size", i32 2}
!6722 = !{i32 8, !"cf-protection-branch", i32 1}
!6723 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6724 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6725 = !{i32 1, !"Code Model", i32 2}
!6726 = !{i32 1, !"override-stack-alignment", i32 8}
!6727 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6728 = distinct !DISubprogram(name: "mount_param", scope: !3, file: !3, line: 57, type: !6631, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6729)
!6729 = !{!6730}
!6730 = !DILocalVariable(name: "str", arg: 1, scope: !6728, file: !3, line: 57, type: !947)
!6731 = !DILocation(line: 57, column: 37, scope: !6728)
!6732 = !DILocation(line: 59, column: 29, scope: !6728)
!6733 = !DILocation(line: 59, column: 14, scope: !6728)
!6734 = !DILocation(line: 59, column: 12, scope: !6728)
!6735 = !DILocation(line: 60, column: 2, scope: !6728)
!6736 = distinct !DISubprogram(name: "devtmpfs_create_node", scope: !3, file: !3, line: 114, type: !2579, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6737)
!6737 = !{!6738, !6739, !6740}
!6738 = !DILocalVariable(name: "dev", arg: 1, scope: !6736, file: !3, line: 114, type: !2515)
!6739 = !DILocalVariable(name: "tmp", scope: !6736, file: !3, line: 116, type: !25)
!6740 = !DILocalVariable(name: "req", scope: !6736, file: !3, line: 117, type: !6693)
!6741 = !DILocation(line: 114, column: 41, scope: !6736)
!6742 = !DILocation(line: 116, column: 2, scope: !6736)
!6743 = !DILocation(line: 116, column: 14, scope: !6736)
!6744 = !DILocation(line: 117, column: 2, scope: !6736)
!6745 = !DILocation(line: 117, column: 13, scope: !6736)
!6746 = !DILocation(line: 119, column: 7, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 119, column: 6)
!6748 = !DILocation(line: 119, column: 6, scope: !6736)
!6749 = !DILocation(line: 120, column: 3, scope: !6747)
!6750 = !DILocation(line: 122, column: 6, scope: !6736)
!6751 = !DILocation(line: 122, column: 11, scope: !6736)
!6752 = !DILocation(line: 123, column: 6, scope: !6736)
!6753 = !DILocation(line: 123, column: 12, scope: !6736)
!6754 = !DILocation(line: 124, column: 6, scope: !6736)
!6755 = !DILocation(line: 124, column: 12, scope: !6736)
!6756 = !DILocation(line: 125, column: 32, scope: !6736)
!6757 = !DILocation(line: 125, column: 42, scope: !6736)
!6758 = !DILocation(line: 125, column: 53, scope: !6736)
!6759 = !DILocation(line: 125, column: 63, scope: !6736)
!6760 = !DILocation(line: 125, column: 13, scope: !6736)
!6761 = !DILocation(line: 125, column: 6, scope: !6736)
!6762 = !DILocation(line: 125, column: 11, scope: !6736)
!6763 = !DILocation(line: 126, column: 11, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 126, column: 6)
!6765 = !DILocation(line: 126, column: 7, scope: !6764)
!6766 = !DILocation(line: 126, column: 6, scope: !6736)
!6767 = !DILocation(line: 127, column: 3, scope: !6764)
!6768 = !DILocation(line: 129, column: 10, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 129, column: 6)
!6770 = !DILocation(line: 129, column: 6, scope: !6769)
!6771 = !DILocation(line: 129, column: 15, scope: !6769)
!6772 = !DILocation(line: 129, column: 6, scope: !6736)
!6773 = !DILocation(line: 130, column: 7, scope: !6769)
!6774 = !DILocation(line: 130, column: 12, scope: !6769)
!6775 = !DILocation(line: 130, column: 3, scope: !6769)
!6776 = !DILocation(line: 131, column: 18, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6736, file: !3, line: 131, column: 6)
!6778 = !DILocation(line: 131, column: 6, scope: !6777)
!6779 = !DILocation(line: 131, column: 6, scope: !6736)
!6780 = !DILocation(line: 132, column: 7, scope: !6777)
!6781 = !DILocation(line: 132, column: 12, scope: !6777)
!6782 = !DILocation(line: 132, column: 3, scope: !6777)
!6783 = !DILocation(line: 134, column: 7, scope: !6777)
!6784 = !DILocation(line: 134, column: 12, scope: !6777)
!6785 = !DILocation(line: 136, column: 12, scope: !6736)
!6786 = !DILocation(line: 136, column: 6, scope: !6736)
!6787 = !DILocation(line: 136, column: 10, scope: !6736)
!6788 = !DILocation(line: 138, column: 35, scope: !6736)
!6789 = !DILocation(line: 138, column: 9, scope: !6736)
!6790 = !DILocation(line: 138, column: 2, scope: !6736)
!6791 = !DILocation(line: 139, column: 1, scope: !6736)
!6792 = !DISubprogram(name: "device_get_devnode", scope: !2523, file: !2523, line: 187, type: !6793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6793 = !DISubroutineType(types: !6794)
!6794 = !{!25, !2575, !2464, !1050, !1051, !3664}
!6795 = distinct !DISubprogram(name: "is_blockdev", scope: !2523, file: !2523, line: 214, type: !6796, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6798)
!6796 = !DISubroutineType(types: !6797)
!6797 = !{!859, !2515}
!6798 = !{!6799}
!6799 = !DILocalVariable(name: "dev", arg: 1, scope: !6795, file: !2523, line: 214, type: !2515)
!6800 = !DILocation(line: 214, column: 47, scope: !6795)
!6801 = !DILocation(line: 216, column: 9, scope: !6795)
!6802 = !DILocation(line: 216, column: 14, scope: !6795)
!6803 = !DILocation(line: 216, column: 20, scope: !6795)
!6804 = !DILocation(line: 216, column: 2, scope: !6795)
!6805 = distinct !DISubprogram(name: "devtmpfs_submit_req", scope: !3, file: !3, line: 97, type: !6806, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6808)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{!31, !6692, !25}
!6808 = !{!6809, !6810}
!6809 = !DILocalVariable(name: "req", arg: 1, scope: !6805, file: !3, line: 97, type: !6692)
!6810 = !DILocalVariable(name: "tmp", arg: 2, scope: !6805, file: !3, line: 97, type: !25)
!6811 = !DILocation(line: 97, column: 44, scope: !6805)
!6812 = !DILocation(line: 97, column: 61, scope: !6805)
!6813 = !DILocation(line: 99, column: 19, scope: !6805)
!6814 = !DILocation(line: 99, column: 24, scope: !6805)
!6815 = !DILocation(line: 99, column: 2, scope: !6805)
!6816 = !DILocation(line: 101, column: 2, scope: !6805)
!6817 = !DILocation(line: 102, column: 14, scope: !6805)
!6818 = !DILocation(line: 102, column: 2, scope: !6805)
!6819 = !DILocation(line: 102, column: 7, scope: !6805)
!6820 = !DILocation(line: 102, column: 12, scope: !6805)
!6821 = !DILocation(line: 103, column: 13, scope: !6805)
!6822 = !DILocation(line: 103, column: 11, scope: !6805)
!6823 = !DILocation(line: 104, column: 2, scope: !6805)
!6824 = !DILocation(line: 106, column: 18, scope: !6805)
!6825 = !DILocation(line: 106, column: 2, scope: !6805)
!6826 = !DILocation(line: 107, column: 23, scope: !6805)
!6827 = !DILocation(line: 107, column: 28, scope: !6805)
!6828 = !DILocation(line: 107, column: 2, scope: !6805)
!6829 = !DILocation(line: 109, column: 8, scope: !6805)
!6830 = !DILocation(line: 109, column: 2, scope: !6805)
!6831 = !DILocation(line: 111, column: 9, scope: !6805)
!6832 = !DILocation(line: 111, column: 14, scope: !6805)
!6833 = !DILocation(line: 111, column: 2, scope: !6805)
!6834 = distinct !DISubprogram(name: "devtmpfs_delete_node", scope: !3, file: !3, line: 141, type: !2579, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6835)
!6835 = !{!6836, !6837, !6838}
!6836 = !DILocalVariable(name: "dev", arg: 1, scope: !6834, file: !3, line: 141, type: !2515)
!6837 = !DILocalVariable(name: "tmp", scope: !6834, file: !3, line: 143, type: !25)
!6838 = !DILocalVariable(name: "req", scope: !6834, file: !3, line: 144, type: !6693)
!6839 = !DILocation(line: 141, column: 41, scope: !6834)
!6840 = !DILocation(line: 143, column: 2, scope: !6834)
!6841 = !DILocation(line: 143, column: 14, scope: !6834)
!6842 = !DILocation(line: 144, column: 2, scope: !6834)
!6843 = !DILocation(line: 144, column: 13, scope: !6834)
!6844 = !DILocation(line: 146, column: 7, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 146, column: 6)
!6846 = !DILocation(line: 146, column: 6, scope: !6834)
!6847 = !DILocation(line: 147, column: 3, scope: !6845)
!6848 = !DILocation(line: 149, column: 32, scope: !6834)
!6849 = !DILocation(line: 149, column: 13, scope: !6834)
!6850 = !DILocation(line: 149, column: 6, scope: !6834)
!6851 = !DILocation(line: 149, column: 11, scope: !6834)
!6852 = !DILocation(line: 150, column: 11, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 150, column: 6)
!6854 = !DILocation(line: 150, column: 7, scope: !6853)
!6855 = !DILocation(line: 150, column: 6, scope: !6834)
!6856 = !DILocation(line: 151, column: 3, scope: !6853)
!6857 = !DILocation(line: 153, column: 6, scope: !6834)
!6858 = !DILocation(line: 153, column: 11, scope: !6834)
!6859 = !DILocation(line: 154, column: 12, scope: !6834)
!6860 = !DILocation(line: 154, column: 6, scope: !6834)
!6861 = !DILocation(line: 154, column: 10, scope: !6834)
!6862 = !DILocation(line: 156, column: 35, scope: !6834)
!6863 = !DILocation(line: 156, column: 9, scope: !6834)
!6864 = !DILocation(line: 156, column: 2, scope: !6834)
!6865 = !DILocation(line: 157, column: 1, scope: !6834)
!6866 = distinct !DISubprogram(name: "devtmpfs_mount", scope: !3, file: !3, line: 360, type: !3480, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6867 = !{!6868}
!6868 = !DILocalVariable(name: "err", scope: !6866, file: !3, line: 362, type: !31)
!6869 = !DILocation(line: 362, column: 2, scope: !6866)
!6870 = !DILocation(line: 362, column: 6, scope: !6866)
!6871 = !DILocation(line: 364, column: 7, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6866, file: !3, line: 364, column: 6)
!6873 = !DILocation(line: 364, column: 6, scope: !6866)
!6874 = !DILocation(line: 365, column: 3, scope: !6872)
!6875 = !DILocation(line: 367, column: 7, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6866, file: !3, line: 367, column: 6)
!6877 = !DILocation(line: 367, column: 6, scope: !6866)
!6878 = !DILocation(line: 368, column: 3, scope: !6876)
!6879 = !DILocation(line: 370, column: 8, scope: !6866)
!6880 = !DILocation(line: 370, column: 6, scope: !6866)
!6881 = !DILocation(line: 371, column: 6, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6866, file: !3, line: 371, column: 6)
!6883 = !DILocation(line: 371, column: 6, scope: !6866)
!6884 = !DILocation(line: 372, column: 3, scope: !6885)
!6885 = distinct !DILexicalBlock(scope: !6882, file: !3, line: 372, column: 3)
!6886 = !DILocation(line: 372, column: 3, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6885, file: !3, line: 372, column: 3)
!6888 = !DILocation(line: 372, column: 3, scope: !6882)
!6889 = !DILocation(line: 374, column: 3, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6882, file: !3, line: 374, column: 3)
!6891 = !DILocation(line: 374, column: 3, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6890, file: !3, line: 374, column: 3)
!6893 = !DILocation(line: 375, column: 9, scope: !6866)
!6894 = !DILocation(line: 375, column: 2, scope: !6866)
!6895 = !DILocation(line: 376, column: 1, scope: !6866)
!6896 = !DISubprogram(name: "init_mount", scope: !6897, file: !6897, line: 3, type: !6898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6897 = !DIFile(filename: "./include/linux/init_syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c2ea3f10dbae0e95b95de60e2f54921")
!6898 = !DISubroutineType(types: !6899)
!6899 = !{!31, !25, !25, !25, !48, !29}
!6900 = !DISubprogram(name: "_printk", scope: !6901, file: !6901, line: 153, type: !6902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6901 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6902 = !DISubroutineType(types: !6903)
!6903 = !{!31, !25, null}
!6904 = distinct !DISubprogram(name: "devtmpfs_init", scope: !3, file: !3, line: 449, type: !3480, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6905 = !{!6906, !6907, !6908}
!6906 = !DILocalVariable(name: "opts", scope: !6904, file: !3, line: 451, type: !6664)
!6907 = !DILocalVariable(name: "err", scope: !6904, file: !3, line: 452, type: !31)
!6908 = !DILocalVariable(name: "__k", scope: !6909, file: !3, line: 465, type: !329)
!6909 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 465, column: 11)
!6910 = !DILocation(line: 451, column: 2, scope: !6904)
!6911 = !DILocation(line: 451, column: 7, scope: !6904)
!6912 = !DILocation(line: 452, column: 2, scope: !6904)
!6913 = !DILocation(line: 452, column: 6, scope: !6904)
!6914 = !DILocation(line: 454, column: 57, scope: !6904)
!6915 = !DILocation(line: 454, column: 8, scope: !6904)
!6916 = !DILocation(line: 454, column: 6, scope: !6904)
!6917 = !DILocation(line: 455, column: 13, scope: !6918)
!6918 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 455, column: 6)
!6919 = !DILocation(line: 455, column: 6, scope: !6918)
!6920 = !DILocation(line: 455, column: 6, scope: !6904)
!6921 = !DILocation(line: 456, column: 3, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6923, file: !3, line: 456, column: 3)
!6923 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 455, column: 19)
!6924 = !DILocation(line: 456, column: 3, scope: !6925)
!6925 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 456, column: 3)
!6926 = !DILocation(line: 457, column: 18, scope: !6923)
!6927 = !DILocation(line: 457, column: 10, scope: !6923)
!6928 = !DILocation(line: 457, column: 3, scope: !6923)
!6929 = !DILocation(line: 459, column: 8, scope: !6904)
!6930 = !DILocation(line: 459, column: 6, scope: !6904)
!6931 = !DILocation(line: 460, column: 6, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 460, column: 6)
!6933 = !DILocation(line: 460, column: 6, scope: !6904)
!6934 = !DILocation(line: 461, column: 3, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6936, file: !3, line: 461, column: 3)
!6936 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 460, column: 11)
!6937 = !DILocation(line: 461, column: 3, scope: !6938)
!6938 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 461, column: 3)
!6939 = !DILocation(line: 462, column: 10, scope: !6936)
!6940 = !DILocation(line: 462, column: 3, scope: !6936)
!6941 = !DILocation(line: 465, column: 11, scope: !6909)
!6942 = !DILocation(line: 465, column: 11, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 465, column: 11)
!6944 = !DILocation(line: 465, column: 11, scope: !6904)
!6945 = !DILocation(line: 465, column: 9, scope: !6904)
!6946 = !DILocation(line: 466, column: 14, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 466, column: 6)
!6948 = !DILocation(line: 466, column: 7, scope: !6947)
!6949 = !DILocation(line: 466, column: 6, scope: !6904)
!6950 = !DILocation(line: 467, column: 3, scope: !6951)
!6951 = distinct !DILexicalBlock(scope: !6947, file: !3, line: 466, column: 23)
!6952 = !DILocation(line: 468, column: 2, scope: !6951)
!6953 = !DILocation(line: 469, column: 17, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6947, file: !3, line: 468, column: 9)
!6955 = !DILocation(line: 469, column: 9, scope: !6954)
!6956 = !DILocation(line: 469, column: 7, scope: !6954)
!6957 = !DILocation(line: 470, column: 10, scope: !6954)
!6958 = !DILocation(line: 473, column: 6, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 473, column: 6)
!6960 = !DILocation(line: 473, column: 6, scope: !6904)
!6961 = !DILocation(line: 474, column: 3, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 474, column: 3)
!6963 = distinct !DILexicalBlock(scope: !6959, file: !3, line: 473, column: 11)
!6964 = !DILocation(line: 474, column: 3, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 474, column: 3)
!6966 = !DILocation(line: 475, column: 3, scope: !6963)
!6967 = !DILocation(line: 476, column: 10, scope: !6963)
!6968 = !DILocation(line: 477, column: 10, scope: !6963)
!6969 = !DILocation(line: 477, column: 3, scope: !6963)
!6970 = !DILocation(line: 480, column: 2, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 480, column: 2)
!6972 = !DILocation(line: 480, column: 2, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6971, file: !3, line: 480, column: 2)
!6974 = !DILocation(line: 481, column: 2, scope: !6904)
!6975 = !DILocation(line: 482, column: 1, scope: !6904)
!6976 = !DISubprogram(name: "vfs_kern_mount", scope: !1190, file: !1190, line: 100, type: !6977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6977 = !DISubroutineType(types: !6978)
!6978 = !{!1188, !1438, !31, !25, !29}
!6979 = distinct !DISubprogram(name: "IS_ERR", scope: !6980, file: !6980, line: 59, type: !6981, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6980 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6981 = !DISubroutineType(types: !6982)
!6982 = !{!859, !2898}
!6983 = !{!6984}
!6984 = !DILocalVariable(name: "ptr", arg: 1, scope: !6979, file: !6980, line: 59, type: !2898)
!6985 = !DILocation(line: 59, column: 60, scope: !6979)
!6986 = !DILocation(line: 61, column: 9, scope: !6979)
!6987 = !DILocation(line: 61, column: 2, scope: !6979)
!6988 = distinct !DISubprogram(name: "PTR_ERR", scope: !6980, file: !6980, line: 49, type: !6989, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6991)
!6989 = !DISubroutineType(types: !6990)
!6990 = !{!323, !2898}
!6991 = !{!6992}
!6992 = !DILocalVariable(name: "ptr", arg: 1, scope: !6988, file: !6980, line: 49, type: !2898)
!6993 = !DILocation(line: 49, column: 61, scope: !6988)
!6994 = !DILocation(line: 51, column: 16, scope: !6988)
!6995 = !DILocation(line: 51, column: 9, scope: !6988)
!6996 = !DILocation(line: 51, column: 2, scope: !6988)
!6997 = !DISubprogram(name: "register_filesystem", scope: !249, file: !249, line: 2445, type: !6998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6998 = !DISubroutineType(types: !6999)
!6999 = !{!31, !1438}
!7000 = !DISubprogram(name: "kthread_create_on_node", scope: !7001, file: !7001, line: 11, type: !7002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7001 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!7002 = !DISubroutineType(types: !7003)
!7003 = !{!329, !7004, !29, !31, !25, null}
!7004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7005, size: 64)
!7005 = !DISubroutineType(types: !7006)
!7006 = !{!31, !29}
!7007 = distinct !DISubprogram(name: "devtmpfsd", scope: !3, file: !3, line: 434, type: !7005, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7008)
!7008 = !{!7009, !7010}
!7009 = !DILocalVariable(name: "p", arg: 1, scope: !7007, file: !3, line: 434, type: !29)
!7010 = !DILocalVariable(name: "err", scope: !7007, file: !3, line: 436, type: !31)
!7011 = !DILocation(line: 434, column: 34, scope: !7007)
!7012 = !DILocation(line: 436, column: 2, scope: !7007)
!7013 = !DILocation(line: 436, column: 6, scope: !7007)
!7014 = !DILocation(line: 436, column: 27, scope: !7007)
!7015 = !DILocation(line: 436, column: 12, scope: !7007)
!7016 = !DILocation(line: 438, column: 2, scope: !7007)
!7017 = !DILocation(line: 439, column: 6, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !7007, file: !3, line: 439, column: 6)
!7019 = !DILocation(line: 439, column: 6, scope: !7007)
!7020 = !DILocation(line: 440, column: 10, scope: !7018)
!7021 = !DILocation(line: 443, column: 1, scope: !7007)
!7022 = !DILocation(line: 440, column: 3, scope: !7018)
!7023 = !DILocation(line: 441, column: 2, scope: !7007)
!7024 = !DISubprogram(name: "wake_up_process", scope: !331, file: !331, line: 1998, type: !7025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7025 = !DISubroutineType(types: !7026)
!7026 = !{!31, !329}
!7027 = !DISubprogram(name: "wait_for_completion", scope: !1026, file: !1026, line: 102, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7028 = !DISubprogram(name: "unregister_filesystem", scope: !249, file: !249, line: 2446, type: !6998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7029 = !DISubprogram(name: "simple_strtoul", scope: !7030, file: !7030, line: 145, type: !7031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7030 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!7031 = !DISubroutineType(types: !7032)
!7032 = !{!48, !25, !7033, !7}
!7033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!7034 = !DILocation(line: 84, column: 55, scope: !6681)
!7035 = !DILocation(line: 86, column: 2, scope: !6681)
!7036 = !DILocation(line: 86, column: 5, scope: !6681)
!7037 = !DILocation(line: 86, column: 10, scope: !6681)
!7038 = !DILocation(line: 87, column: 2, scope: !6681)
!7039 = !DILocation(line: 87, column: 2, scope: !7040)
!7040 = distinct !DILexicalBlock(scope: !6681, file: !1026, line: 87, column: 2)
!7041 = !DILocation(line: 88, column: 1, scope: !6681)
!7042 = distinct !DISubprogram(name: "spin_lock", scope: !7043, file: !7043, line: 349, type: !7044, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7046)
!7043 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7044 = !DISubroutineType(types: !7045)
!7045 = !{null, !1929}
!7046 = !{!7047}
!7047 = !DILocalVariable(name: "lock", arg: 1, scope: !7042, file: !7043, line: 349, type: !1929)
!7048 = !DILocation(line: 349, column: 51, scope: !7042)
!7049 = !DILocation(line: 351, column: 2, scope: !7042)
!7050 = !DILocation(line: 352, column: 1, scope: !7042)
!7051 = distinct !DISubprogram(name: "spin_unlock", scope: !7043, file: !7043, line: 389, type: !7044, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7052)
!7052 = !{!7053}
!7053 = !DILocalVariable(name: "lock", arg: 1, scope: !7051, file: !7043, line: 389, type: !1929)
!7054 = !DILocation(line: 389, column: 53, scope: !7051)
!7055 = !DILocation(line: 391, column: 2, scope: !7051)
!7056 = !DILocation(line: 392, column: 1, scope: !7051)
!7057 = !DISubprogram(name: "kfree", scope: !7058, file: !7058, line: 227, type: !7059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7058 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!7059 = !DISubroutineType(types: !7060)
!7060 = !{null, !2898}
!7061 = !DISubprogram(name: "__init_swait_queue_head", scope: !1031, file: !1031, line: 69, type: !7062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7062 = !DISubroutineType(types: !7063)
!7063 = !{null, !7064, !25, !7065}
!7064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!7065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!7066 = !DISubprogram(name: "_raw_spin_lock", scope: !7067, file: !7067, line: 22, type: !7068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7067 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7068 = !DISubroutineType(types: !7069)
!7069 = !{null, !7070}
!7070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!7071 = !DISubprogram(name: "_raw_spin_unlock", scope: !7067, file: !7067, line: 39, type: !7068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7072 = distinct !DISubprogram(name: "public_dev_mount", scope: !3, file: !3, line: 66, type: !4837, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7073)
!7073 = !{!7074, !7075, !7076, !7077, !7078, !7079}
!7074 = !DILocalVariable(name: "fs_type", arg: 1, scope: !7072, file: !3, line: 66, type: !1438)
!7075 = !DILocalVariable(name: "flags", arg: 2, scope: !7072, file: !3, line: 66, type: !31)
!7076 = !DILocalVariable(name: "dev_name", arg: 3, scope: !7072, file: !3, line: 67, type: !25)
!7077 = !DILocalVariable(name: "data", arg: 4, scope: !7072, file: !3, line: 67, type: !29)
!7078 = !DILocalVariable(name: "s", scope: !7072, file: !3, line: 69, type: !1429)
!7079 = !DILocalVariable(name: "err", scope: !7072, file: !3, line: 70, type: !31)
!7080 = !DILocation(line: 66, column: 65, scope: !7072)
!7081 = !DILocation(line: 66, column: 78, scope: !7072)
!7082 = !DILocation(line: 67, column: 21, scope: !7072)
!7083 = !DILocation(line: 67, column: 37, scope: !7072)
!7084 = !DILocation(line: 69, column: 2, scope: !7072)
!7085 = !DILocation(line: 69, column: 22, scope: !7072)
!7086 = !DILocation(line: 69, column: 26, scope: !7072)
!7087 = !DILocation(line: 69, column: 31, scope: !7072)
!7088 = !DILocation(line: 70, column: 2, scope: !7072)
!7089 = !DILocation(line: 70, column: 6, scope: !7072)
!7090 = !DILocation(line: 72, column: 14, scope: !7072)
!7091 = !DILocation(line: 72, column: 17, scope: !7072)
!7092 = !DILocation(line: 72, column: 2, scope: !7072)
!7093 = !DILocation(line: 73, column: 14, scope: !7072)
!7094 = !DILocation(line: 73, column: 17, scope: !7072)
!7095 = !DILocation(line: 73, column: 2, scope: !7072)
!7096 = !DILocation(line: 74, column: 27, scope: !7072)
!7097 = !DILocation(line: 74, column: 30, scope: !7072)
!7098 = !DILocation(line: 74, column: 37, scope: !7072)
!7099 = !DILocation(line: 74, column: 8, scope: !7072)
!7100 = !DILocation(line: 74, column: 6, scope: !7072)
!7101 = !DILocation(line: 75, column: 6, scope: !7102)
!7102 = distinct !DILexicalBlock(scope: !7072, file: !3, line: 75, column: 6)
!7103 = !DILocation(line: 75, column: 10, scope: !7102)
!7104 = !DILocation(line: 75, column: 6, scope: !7072)
!7105 = !DILocation(line: 76, column: 27, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7102, file: !3, line: 75, column: 15)
!7107 = !DILocation(line: 76, column: 3, scope: !7106)
!7108 = !DILocation(line: 77, column: 18, scope: !7106)
!7109 = !DILocation(line: 77, column: 10, scope: !7106)
!7110 = !DILocation(line: 77, column: 3, scope: !7106)
!7111 = !DILocation(line: 79, column: 14, scope: !7072)
!7112 = !DILocation(line: 79, column: 17, scope: !7072)
!7113 = !DILocation(line: 79, column: 9, scope: !7072)
!7114 = !DILocation(line: 79, column: 2, scope: !7072)
!7115 = !DILocation(line: 80, column: 1, scope: !7072)
!7116 = distinct !DISubprogram(name: "atomic_inc", scope: !7117, file: !7117, line: 433, type: !7118, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7121)
!7117 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7118 = !DISubroutineType(types: !7119)
!7119 = !{null, !7120}
!7120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!7121 = !{!7122}
!7122 = !DILocalVariable(name: "v", arg: 1, scope: !7116, file: !7117, line: 433, type: !7120)
!7123 = !DILocation(line: 433, column: 22, scope: !7116)
!7124 = !DILocation(line: 435, column: 31, scope: !7116)
!7125 = !DILocation(line: 435, column: 2, scope: !7116)
!7126 = !DILocation(line: 436, column: 17, scope: !7116)
!7127 = !DILocation(line: 436, column: 2, scope: !7116)
!7128 = !DILocation(line: 437, column: 1, scope: !7116)
!7129 = !DISubprogram(name: "down_write", scope: !880, file: !880, line: 187, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = !DISubroutineType(types: !7131)
!7131 = !{null, !7132}
!7132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!7133 = !DISubprogram(name: "reconfigure_single", scope: !6, file: !6, line: 147, type: !7134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7134 = !DISubroutineType(types: !7135)
!7135 = !{!31, !1429, !31, !29}
!7136 = !DISubprogram(name: "deactivate_locked_super", scope: !249, file: !249, line: 2414, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7137 = distinct !DISubprogram(name: "ERR_PTR", scope: !6980, file: !6980, line: 39, type: !7138, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7140)
!7138 = !DISubroutineType(types: !7139)
!7139 = !{!29, !323}
!7140 = !{!7141}
!7141 = !DILocalVariable(name: "error", arg: 1, scope: !7137, file: !6980, line: 39, type: !323)
!7142 = !DILocation(line: 39, column: 48, scope: !7137)
!7143 = !DILocation(line: 41, column: 18, scope: !7137)
!7144 = !DILocation(line: 41, column: 9, scope: !7137)
!7145 = !DILocation(line: 41, column: 2, scope: !7137)
!7146 = distinct !DISubprogram(name: "dget", scope: !1195, file: !1195, line: 317, type: !7147, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7149)
!7147 = !DISubroutineType(types: !7148)
!7148 = !{!1193, !1193}
!7149 = !{!7150}
!7150 = !DILocalVariable(name: "dentry", arg: 1, scope: !7146, file: !1195, line: 317, type: !1193)
!7151 = !DILocation(line: 317, column: 50, scope: !7146)
!7152 = !DILocation(line: 319, column: 6, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7146, file: !1195, line: 319, column: 6)
!7154 = !DILocation(line: 319, column: 6, scope: !7146)
!7155 = !DILocation(line: 320, column: 16, scope: !7153)
!7156 = !DILocation(line: 320, column: 24, scope: !7153)
!7157 = !DILocation(line: 320, column: 3, scope: !7153)
!7158 = !DILocation(line: 321, column: 9, scope: !7146)
!7159 = !DILocation(line: 321, column: 2, scope: !7146)
!7160 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7161, file: !7161, line: 94, type: !7162, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7167)
!7161 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7162 = !DISubroutineType(types: !7163)
!7163 = !{null, !7164, !44}
!7164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7165, size: 64)
!7165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7166)
!7166 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7167 = !{!7168, !7169}
!7168 = !DILocalVariable(name: "v", arg: 1, scope: !7160, file: !7161, line: 94, type: !7164)
!7169 = !DILocalVariable(name: "size", arg: 2, scope: !7160, file: !7161, line: 94, type: !44)
!7170 = !DILocation(line: 94, column: 79, scope: !7160)
!7171 = !DILocation(line: 94, column: 89, scope: !7160)
!7172 = !DILocation(line: 96, column: 20, scope: !7160)
!7173 = !DILocation(line: 96, column: 23, scope: !7160)
!7174 = !DILocation(line: 96, column: 2, scope: !7160)
!7175 = !DILocation(line: 97, column: 2, scope: !7160)
!7176 = !DILocation(line: 98, column: 1, scope: !7160)
!7177 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !7178, file: !7178, line: 976, type: !7118, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7179)
!7178 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7179 = !{!7180}
!7180 = !DILocalVariable(name: "v", arg: 1, scope: !7177, file: !7178, line: 976, type: !7120)
!7181 = !DILocation(line: 976, column: 26, scope: !7177)
!7182 = !DILocation(line: 979, column: 18, scope: !7177)
!7183 = !DILocation(line: 979, column: 2, scope: !7177)
!7184 = !DILocation(line: 983, column: 1, scope: !7177)
!7185 = distinct !DISubprogram(name: "kasan_check_write", scope: !7186, file: !7186, line: 44, type: !7187, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7189)
!7186 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7187 = !DISubroutineType(types: !7188)
!7188 = !{!859, !7164, !7}
!7189 = !{!7190, !7191}
!7190 = !DILocalVariable(name: "p", arg: 1, scope: !7185, file: !7186, line: 44, type: !7164)
!7191 = !DILocalVariable(name: "size", arg: 2, scope: !7185, file: !7186, line: 44, type: !7)
!7192 = !DILocation(line: 44, column: 59, scope: !7185)
!7193 = !DILocation(line: 44, column: 75, scope: !7185)
!7194 = !DILocation(line: 46, column: 2, scope: !7185)
!7195 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7196, file: !7196, line: 229, type: !7197, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7199)
!7196 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7197 = !DISubroutineType(types: !7198)
!7198 = !{null, !7164, !44, !31}
!7199 = !{!7200, !7201, !7202}
!7200 = !DILocalVariable(name: "ptr", arg: 1, scope: !7195, file: !7196, line: 229, type: !7164)
!7201 = !DILocalVariable(name: "size", arg: 2, scope: !7195, file: !7196, line: 229, type: !44)
!7202 = !DILocalVariable(name: "type", arg: 3, scope: !7195, file: !7196, line: 230, type: !31)
!7203 = !DILocation(line: 229, column: 60, scope: !7195)
!7204 = !DILocation(line: 229, column: 72, scope: !7195)
!7205 = !DILocation(line: 230, column: 15, scope: !7195)
!7206 = !DILocation(line: 230, column: 23, scope: !7195)
!7207 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7208, file: !7208, line: 51, type: !7118, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7209)
!7208 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7209 = !{!7210}
!7210 = !DILocalVariable(name: "v", arg: 1, scope: !7207, file: !7208, line: 51, type: !7120)
!7211 = !DILocation(line: 51, column: 55, scope: !7207)
!7212 = !DILocation(line: 54, column: 16, scope: !7207)
!7213 = !DILocation(line: 54, column: 19, scope: !7207)
!7214 = !DILocation(line: 53, column: 2, scope: !7207)
!7215 = !{i64 2149041253, i64 2149041292, i64 2149041313, i64 2149041350, i64 2149041373, i64 2149041243}
!7216 = !DILocation(line: 55, column: 1, scope: !7207)
!7217 = !DISubprogram(name: "lockref_get", scope: !5539, file: !5539, line: 37, type: !7218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7218 = !DISubroutineType(types: !7219)
!7219 = !{null, !7220}
!7220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!7221 = distinct !DISubprogram(name: "devtmpfs_setup", scope: !3, file: !3, line: 412, type: !7005, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7222)
!7222 = !{!7223, !7224, !7225}
!7223 = !DILocalVariable(name: "p", arg: 1, scope: !7221, file: !3, line: 412, type: !29)
!7224 = !DILocalVariable(name: "err", scope: !7221, file: !3, line: 414, type: !31)
!7225 = !DILabel(scope: !7221, name: "out", file: !3, line: 424)
!7226 = !DILocation(line: 412, column: 49, scope: !7221)
!7227 = !DILocation(line: 414, column: 2, scope: !7221)
!7228 = !DILocation(line: 414, column: 6, scope: !7221)
!7229 = !DILocation(line: 416, column: 8, scope: !7221)
!7230 = !DILocation(line: 416, column: 6, scope: !7221)
!7231 = !DILocation(line: 417, column: 6, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7221, file: !3, line: 417, column: 6)
!7233 = !DILocation(line: 417, column: 6, scope: !7221)
!7234 = !DILocation(line: 418, column: 3, scope: !7232)
!7235 = !DILocation(line: 419, column: 8, scope: !7221)
!7236 = !DILocation(line: 419, column: 6, scope: !7221)
!7237 = !DILocation(line: 420, column: 6, scope: !7238)
!7238 = distinct !DILexicalBlock(scope: !7221, file: !3, line: 420, column: 6)
!7239 = !DILocation(line: 420, column: 6, scope: !7221)
!7240 = !DILocation(line: 421, column: 3, scope: !7238)
!7241 = !DILocation(line: 422, column: 2, scope: !7221)
!7242 = !DILocation(line: 423, column: 2, scope: !7221)
!7243 = !DILocation(line: 424, column: 1, scope: !7221)
!7244 = !DILocation(line: 425, column: 14, scope: !7221)
!7245 = !DILocation(line: 425, column: 10, scope: !7221)
!7246 = !DILocation(line: 425, column: 12, scope: !7221)
!7247 = !DILocation(line: 426, column: 9, scope: !7221)
!7248 = !DILocation(line: 427, column: 1, scope: !7221)
!7249 = !DILocation(line: 426, column: 2, scope: !7221)
!7250 = !DISubprogram(name: "complete", scope: !1026, file: !1026, line: 118, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7251 = distinct !DISubprogram(name: "devtmpfs_work_loop", scope: !3, file: !3, line: 389, type: !3762, scopeLine: 390, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7252)
!7252 = !{!7253, !7256}
!7253 = !DILocalVariable(name: "req", scope: !7254, file: !3, line: 394, type: !6692)
!7254 = distinct !DILexicalBlock(scope: !7255, file: !3, line: 393, column: 20)
!7255 = distinct !DILexicalBlock(scope: !7251, file: !3, line: 391, column: 12)
!7256 = !DILocalVariable(name: "next", scope: !7257, file: !3, line: 398, type: !6692)
!7257 = distinct !DILexicalBlock(scope: !7254, file: !3, line: 397, column: 16)
!7258 = !DILocation(line: 391, column: 2, scope: !7251)
!7259 = !DILocation(line: 392, column: 3, scope: !7255)
!7260 = !DILocation(line: 393, column: 3, scope: !7255)
!7261 = !DILocation(line: 393, column: 10, scope: !7255)
!7262 = !DILocation(line: 394, column: 4, scope: !7254)
!7263 = !DILocation(line: 394, column: 16, scope: !7254)
!7264 = !DILocation(line: 394, column: 22, scope: !7254)
!7265 = !DILocation(line: 395, column: 13, scope: !7254)
!7266 = !DILocation(line: 396, column: 4, scope: !7254)
!7267 = !DILocation(line: 397, column: 4, scope: !7254)
!7268 = !DILocation(line: 397, column: 11, scope: !7254)
!7269 = !DILocation(line: 398, column: 5, scope: !7257)
!7270 = !DILocation(line: 398, column: 17, scope: !7257)
!7271 = !DILocation(line: 398, column: 24, scope: !7257)
!7272 = !DILocation(line: 398, column: 29, scope: !7257)
!7273 = !DILocation(line: 399, column: 23, scope: !7257)
!7274 = !DILocation(line: 399, column: 28, scope: !7257)
!7275 = !DILocation(line: 399, column: 34, scope: !7257)
!7276 = !DILocation(line: 399, column: 39, scope: !7257)
!7277 = !DILocation(line: 400, column: 9, scope: !7257)
!7278 = !DILocation(line: 400, column: 14, scope: !7257)
!7279 = !DILocation(line: 400, column: 19, scope: !7257)
!7280 = !DILocation(line: 400, column: 24, scope: !7257)
!7281 = !DILocation(line: 400, column: 29, scope: !7257)
!7282 = !DILocation(line: 400, column: 34, scope: !7257)
!7283 = !DILocation(line: 399, column: 16, scope: !7257)
!7284 = !DILocation(line: 399, column: 5, scope: !7257)
!7285 = !DILocation(line: 399, column: 10, scope: !7257)
!7286 = !DILocation(line: 399, column: 14, scope: !7257)
!7287 = !DILocation(line: 401, column: 15, scope: !7257)
!7288 = !DILocation(line: 401, column: 20, scope: !7257)
!7289 = !DILocation(line: 401, column: 5, scope: !7257)
!7290 = !DILocation(line: 402, column: 11, scope: !7257)
!7291 = !DILocation(line: 402, column: 9, scope: !7257)
!7292 = !DILocation(line: 403, column: 4, scope: !7254)
!7293 = distinct !{!7293, !7267, !7292, !7294, !7295}
!7294 = !{!"llvm.loop.mustprogress"}
!7295 = !{!"llvm.loop.unroll.disable"}
!7296 = !DILocation(line: 404, column: 4, scope: !7254)
!7297 = !DILocation(line: 405, column: 3, scope: !7255)
!7298 = distinct !{!7298, !7260, !7297, !7294, !7295}
!7299 = !DILocation(line: 406, column: 3, scope: !7255)
!7300 = !DILocation(line: 406, column: 3, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7255, file: !3, line: 406, column: 3)
!7302 = !DILocation(line: 406, column: 3, scope: !7303)
!7303 = distinct !DILexicalBlock(scope: !7301, file: !3, line: 406, column: 3)
!7304 = !DILocation(line: 406, column: 3, scope: !7305)
!7305 = distinct !DILexicalBlock(scope: !7301, file: !3, line: 406, column: 3)
!7306 = !DILocation(line: 406, column: 3, scope: !7307)
!7307 = distinct !DILexicalBlock(scope: !7305, file: !3, line: 406, column: 3)
!7308 = !DILocation(line: 406, column: 3, scope: !7309)
!7309 = distinct !DILexicalBlock(scope: !7305, file: !3, line: 406, column: 3)
!7310 = !DILocation(line: 407, column: 3, scope: !7255)
!7311 = !DILocation(line: 408, column: 3, scope: !7255)
!7312 = distinct !{!7312, !7258, !7313, !7295}
!7313 = !DILocation(line: 409, column: 2, scope: !7251)
!7314 = !DISubprogram(name: "ksys_unshare", scope: !6294, file: !6294, line: 1183, type: !7315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7315 = !DISubroutineType(types: !7316)
!7316 = !{!31, !48}
!7317 = !DISubprogram(name: "init_chdir", scope: !6897, file: !6897, line: 6, type: !7318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7318 = !DISubroutineType(types: !7319)
!7319 = !{!31, !25}
!7320 = !DISubprogram(name: "init_chroot", scope: !6897, file: !6897, line: 7, type: !7318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7321 = distinct !DISubprogram(name: "handle", scope: !3, file: !3, line: 380, type: !7322, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7324)
!7322 = !DISubroutineType(types: !7323)
!7323 = !{!31, !25, !33, !832, !840, !2515}
!7324 = !{!7325, !7326, !7327, !7328, !7329}
!7325 = !DILocalVariable(name: "name", arg: 1, scope: !7321, file: !3, line: 380, type: !25)
!7326 = !DILocalVariable(name: "mode", arg: 2, scope: !7321, file: !3, line: 380, type: !33)
!7327 = !DILocalVariable(name: "uid", arg: 3, scope: !7321, file: !3, line: 380, type: !832)
!7328 = !DILocalVariable(name: "gid", arg: 4, scope: !7321, file: !3, line: 380, type: !840)
!7329 = !DILocalVariable(name: "dev", arg: 5, scope: !7321, file: !3, line: 381, type: !2515)
!7330 = !DILocation(line: 380, column: 31, scope: !7321)
!7331 = !DILocation(line: 380, column: 45, scope: !7321)
!7332 = !DILocation(line: 380, column: 58, scope: !7321)
!7333 = !DILocation(line: 380, column: 70, scope: !7321)
!7334 = !DILocation(line: 381, column: 20, scope: !7321)
!7335 = !DILocation(line: 383, column: 6, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7321, file: !3, line: 383, column: 6)
!7337 = !DILocation(line: 383, column: 6, scope: !7321)
!7338 = !DILocation(line: 384, column: 24, scope: !7336)
!7339 = !DILocation(line: 384, column: 30, scope: !7336)
!7340 = !DILocation(line: 384, column: 46, scope: !7336)
!7341 = !DILocation(line: 384, column: 10, scope: !7336)
!7342 = !DILocation(line: 384, column: 3, scope: !7336)
!7343 = !DILocation(line: 386, column: 24, scope: !7336)
!7344 = !DILocation(line: 386, column: 30, scope: !7336)
!7345 = !DILocation(line: 386, column: 10, scope: !7336)
!7346 = !DILocation(line: 386, column: 3, scope: !7336)
!7347 = !DILocation(line: 387, column: 1, scope: !7321)
!7348 = distinct !DISubprogram(name: "get_current", scope: !7349, file: !7349, line: 39, type: !7350, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7352)
!7349 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7350 = !DISubroutineType(types: !7351)
!7351 = !{!329}
!7352 = !{!7353, !7355, !7357}
!7353 = !DILocalVariable(name: "pscr_ret__", scope: !7354, file: !7349, line: 41, type: !329)
!7354 = distinct !DILexicalBlock(scope: !7348, file: !7349, line: 41, column: 9)
!7355 = !DILocalVariable(name: "__vpp_verify", scope: !7356, file: !7349, line: 41, type: !2898)
!7356 = distinct !DILexicalBlock(scope: !7354, file: !7349, line: 41, column: 9)
!7357 = !DILocalVariable(name: "pfo_val__", scope: !7358, file: !7349, line: 41, type: !398)
!7358 = distinct !DILexicalBlock(scope: !7354, file: !7349, line: 41, column: 9)
!7359 = !DILocation(line: 41, column: 9, scope: !7354)
!7360 = !DILocation(line: 41, column: 9, scope: !7356)
!7361 = !DILocation(line: 41, column: 9, scope: !7358)
!7362 = !{i64 2148502799}
!7363 = !DILocation(line: 41, column: 9, scope: !7348)
!7364 = !DILocation(line: 41, column: 2, scope: !7348)
!7365 = !DISubprogram(name: "schedule", scope: !331, file: !331, line: 303, type: !3762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7366 = distinct !DISubprogram(name: "handle_create", scope: !3, file: !3, line: 204, type: !7322, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7367)
!7367 = !{!7368, !7369, !7370, !7371, !7372, !7373, !7374, !7375, !7376}
!7368 = !DILocalVariable(name: "nodename", arg: 1, scope: !7366, file: !3, line: 204, type: !25)
!7369 = !DILocalVariable(name: "mode", arg: 2, scope: !7366, file: !3, line: 204, type: !33)
!7370 = !DILocalVariable(name: "uid", arg: 3, scope: !7366, file: !3, line: 204, type: !832)
!7371 = !DILocalVariable(name: "gid", arg: 4, scope: !7366, file: !3, line: 205, type: !840)
!7372 = !DILocalVariable(name: "dev", arg: 5, scope: !7366, file: !3, line: 205, type: !2515)
!7373 = !DILocalVariable(name: "dentry", scope: !7366, file: !3, line: 207, type: !1193)
!7374 = !DILocalVariable(name: "path", scope: !7366, file: !3, line: 208, type: !1184)
!7375 = !DILocalVariable(name: "err", scope: !7366, file: !3, line: 209, type: !31)
!7376 = !DILocalVariable(name: "newattrs", scope: !7377, file: !3, line: 222, type: !1313)
!7377 = distinct !DILexicalBlock(scope: !7378, file: !3, line: 221, column: 12)
!7378 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 221, column: 6)
!7379 = !DILocation(line: 204, column: 38, scope: !7366)
!7380 = !DILocation(line: 204, column: 56, scope: !7366)
!7381 = !DILocation(line: 204, column: 69, scope: !7366)
!7382 = !DILocation(line: 205, column: 12, scope: !7366)
!7383 = !DILocation(line: 205, column: 32, scope: !7366)
!7384 = !DILocation(line: 207, column: 2, scope: !7366)
!7385 = !DILocation(line: 207, column: 17, scope: !7366)
!7386 = !DILocation(line: 208, column: 2, scope: !7366)
!7387 = !DILocation(line: 208, column: 14, scope: !7366)
!7388 = !DILocation(line: 209, column: 2, scope: !7366)
!7389 = !DILocation(line: 209, column: 6, scope: !7366)
!7390 = !DILocation(line: 211, column: 38, scope: !7366)
!7391 = !DILocation(line: 211, column: 11, scope: !7366)
!7392 = !DILocation(line: 211, column: 9, scope: !7366)
!7393 = !DILocation(line: 212, column: 6, scope: !7394)
!7394 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 212, column: 6)
!7395 = !DILocation(line: 212, column: 16, scope: !7394)
!7396 = !DILocation(line: 212, column: 13, scope: !7394)
!7397 = !DILocation(line: 212, column: 6, scope: !7366)
!7398 = !DILocation(line: 213, column: 15, scope: !7399)
!7399 = distinct !DILexicalBlock(scope: !7394, file: !3, line: 212, column: 34)
!7400 = !DILocation(line: 213, column: 3, scope: !7399)
!7401 = !DILocation(line: 214, column: 39, scope: !7399)
!7402 = !DILocation(line: 214, column: 12, scope: !7399)
!7403 = !DILocation(line: 214, column: 10, scope: !7399)
!7404 = !DILocation(line: 215, column: 2, scope: !7399)
!7405 = !DILocation(line: 216, column: 13, scope: !7406)
!7406 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 216, column: 6)
!7407 = !DILocation(line: 216, column: 6, scope: !7406)
!7408 = !DILocation(line: 216, column: 6, scope: !7366)
!7409 = !DILocation(line: 217, column: 18, scope: !7406)
!7410 = !DILocation(line: 217, column: 10, scope: !7406)
!7411 = !DILocation(line: 217, column: 3, scope: !7406)
!7412 = !DILocation(line: 219, column: 47, scope: !7366)
!7413 = !DILocation(line: 219, column: 34, scope: !7366)
!7414 = !DILocation(line: 219, column: 56, scope: !7366)
!7415 = !DILocation(line: 219, column: 64, scope: !7366)
!7416 = !DILocation(line: 220, column: 4, scope: !7366)
!7417 = !DILocation(line: 220, column: 9, scope: !7366)
!7418 = !DILocation(line: 219, column: 8, scope: !7366)
!7419 = !DILocation(line: 219, column: 6, scope: !7366)
!7420 = !DILocation(line: 221, column: 7, scope: !7378)
!7421 = !DILocation(line: 221, column: 6, scope: !7366)
!7422 = !DILocation(line: 222, column: 3, scope: !7377)
!7423 = !DILocation(line: 222, column: 16, scope: !7377)
!7424 = !DILocation(line: 224, column: 22, scope: !7377)
!7425 = !DILocation(line: 224, column: 12, scope: !7377)
!7426 = !DILocation(line: 224, column: 20, scope: !7377)
!7427 = !DILocation(line: 225, column: 12, scope: !7377)
!7428 = !DILocation(line: 225, column: 21, scope: !7377)
!7429 = !DILocation(line: 226, column: 12, scope: !7377)
!7430 = !DILocation(line: 226, column: 21, scope: !7377)
!7431 = !DILocation(line: 227, column: 12, scope: !7377)
!7432 = !DILocation(line: 227, column: 21, scope: !7377)
!7433 = !DILocation(line: 228, column: 22, scope: !7377)
!7434 = !DILocation(line: 228, column: 14, scope: !7377)
!7435 = !DILocation(line: 228, column: 3, scope: !7377)
!7436 = !DILocation(line: 229, column: 33, scope: !7377)
!7437 = !DILocation(line: 229, column: 3, scope: !7377)
!7438 = !DILocation(line: 230, column: 24, scope: !7377)
!7439 = !DILocation(line: 230, column: 16, scope: !7377)
!7440 = !DILocation(line: 230, column: 3, scope: !7377)
!7441 = !DILocation(line: 233, column: 11, scope: !7377)
!7442 = !DILocation(line: 233, column: 3, scope: !7377)
!7443 = !DILocation(line: 233, column: 20, scope: !7377)
!7444 = !DILocation(line: 233, column: 30, scope: !7377)
!7445 = !DILocation(line: 234, column: 2, scope: !7378)
!7446 = !DILocation(line: 234, column: 2, scope: !7377)
!7447 = !DILocation(line: 235, column: 26, scope: !7366)
!7448 = !DILocation(line: 235, column: 2, scope: !7366)
!7449 = !DILocation(line: 236, column: 9, scope: !7366)
!7450 = !DILocation(line: 236, column: 2, scope: !7366)
!7451 = !DILocation(line: 237, column: 1, scope: !7366)
!7452 = distinct !DISubprogram(name: "handle_remove", scope: !3, file: !3, line: 309, type: !7453, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7455)
!7453 = !DISubroutineType(types: !7454)
!7454 = !{!31, !25, !2515}
!7455 = !{!7456, !7457, !7458, !7459, !7460, !7461, !7462, !7465, !7466}
!7456 = !DILocalVariable(name: "nodename", arg: 1, scope: !7452, file: !3, line: 309, type: !25)
!7457 = !DILocalVariable(name: "dev", arg: 2, scope: !7452, file: !3, line: 309, type: !2515)
!7458 = !DILocalVariable(name: "parent", scope: !7452, file: !3, line: 311, type: !1184)
!7459 = !DILocalVariable(name: "dentry", scope: !7452, file: !3, line: 312, type: !1193)
!7460 = !DILocalVariable(name: "deleted", scope: !7452, file: !3, line: 313, type: !31)
!7461 = !DILocalVariable(name: "err", scope: !7452, file: !3, line: 314, type: !31)
!7462 = !DILocalVariable(name: "stat", scope: !7463, file: !3, line: 321, type: !1352)
!7463 = distinct !DILexicalBlock(scope: !7464, file: !3, line: 320, column: 36)
!7464 = distinct !DILexicalBlock(scope: !7452, file: !3, line: 320, column: 6)
!7465 = !DILocalVariable(name: "p", scope: !7463, file: !3, line: 322, type: !1184)
!7466 = !DILocalVariable(name: "newattrs", scope: !7467, file: !3, line: 326, type: !1313)
!7467 = distinct !DILexicalBlock(scope: !7468, file: !3, line: 325, column: 56)
!7468 = distinct !DILexicalBlock(scope: !7463, file: !3, line: 325, column: 7)
!7469 = !DILocation(line: 309, column: 38, scope: !7452)
!7470 = !DILocation(line: 309, column: 63, scope: !7452)
!7471 = !DILocation(line: 311, column: 2, scope: !7452)
!7472 = !DILocation(line: 311, column: 14, scope: !7452)
!7473 = !DILocation(line: 312, column: 2, scope: !7452)
!7474 = !DILocation(line: 312, column: 17, scope: !7452)
!7475 = !DILocation(line: 313, column: 2, scope: !7452)
!7476 = !DILocation(line: 313, column: 6, scope: !7452)
!7477 = !DILocation(line: 314, column: 2, scope: !7452)
!7478 = !DILocation(line: 314, column: 6, scope: !7452)
!7479 = !DILocation(line: 316, column: 28, scope: !7452)
!7480 = !DILocation(line: 316, column: 11, scope: !7452)
!7481 = !DILocation(line: 316, column: 9, scope: !7452)
!7482 = !DILocation(line: 317, column: 13, scope: !7483)
!7483 = distinct !DILexicalBlock(scope: !7452, file: !3, line: 317, column: 6)
!7484 = !DILocation(line: 317, column: 6, scope: !7483)
!7485 = !DILocation(line: 317, column: 6, scope: !7452)
!7486 = !DILocation(line: 318, column: 18, scope: !7483)
!7487 = !DILocation(line: 318, column: 10, scope: !7483)
!7488 = !DILocation(line: 318, column: 3, scope: !7483)
!7489 = !DILocation(line: 320, column: 27, scope: !7464)
!7490 = !DILocation(line: 320, column: 6, scope: !7464)
!7491 = !DILocation(line: 320, column: 6, scope: !7452)
!7492 = !DILocation(line: 321, column: 3, scope: !7463)
!7493 = !DILocation(line: 321, column: 16, scope: !7463)
!7494 = !DILocation(line: 322, column: 3, scope: !7463)
!7495 = !DILocation(line: 322, column: 15, scope: !7463)
!7496 = !DILocation(line: 322, column: 19, scope: !7463)
!7497 = !DILocation(line: 322, column: 34, scope: !7463)
!7498 = !DILocation(line: 322, column: 49, scope: !7463)
!7499 = !DILocation(line: 323, column: 9, scope: !7463)
!7500 = !DILocation(line: 323, column: 7, scope: !7463)
!7501 = !DILocation(line: 325, column: 8, scope: !7468)
!7502 = !DILocation(line: 325, column: 12, scope: !7468)
!7503 = !DILocation(line: 325, column: 26, scope: !7468)
!7504 = !DILocation(line: 325, column: 39, scope: !7468)
!7505 = !DILocation(line: 325, column: 31, scope: !7468)
!7506 = !DILocation(line: 325, column: 15, scope: !7468)
!7507 = !DILocation(line: 325, column: 7, scope: !7463)
!7508 = !DILocation(line: 326, column: 4, scope: !7467)
!7509 = !DILocation(line: 326, column: 17, scope: !7467)
!7510 = !DILocation(line: 331, column: 13, scope: !7467)
!7511 = !DILocation(line: 331, column: 22, scope: !7467)
!7512 = !DILocation(line: 332, column: 13, scope: !7467)
!7513 = !DILocation(line: 332, column: 22, scope: !7467)
!7514 = !DILocation(line: 333, column: 28, scope: !7467)
!7515 = !DILocation(line: 333, column: 23, scope: !7467)
!7516 = !DILocation(line: 333, column: 33, scope: !7467)
!7517 = !DILocation(line: 333, column: 13, scope: !7467)
!7518 = !DILocation(line: 333, column: 21, scope: !7467)
!7519 = !DILocation(line: 334, column: 13, scope: !7467)
!7520 = !DILocation(line: 334, column: 22, scope: !7467)
!7521 = !DILocation(line: 336, column: 23, scope: !7467)
!7522 = !DILocation(line: 336, column: 15, scope: !7467)
!7523 = !DILocation(line: 336, column: 4, scope: !7467)
!7524 = !DILocation(line: 337, column: 34, scope: !7467)
!7525 = !DILocation(line: 337, column: 4, scope: !7467)
!7526 = !DILocation(line: 338, column: 25, scope: !7467)
!7527 = !DILocation(line: 338, column: 17, scope: !7467)
!7528 = !DILocation(line: 338, column: 4, scope: !7467)
!7529 = !DILocation(line: 339, column: 52, scope: !7467)
!7530 = !DILocation(line: 339, column: 37, scope: !7467)
!7531 = !DILocation(line: 340, column: 7, scope: !7467)
!7532 = !DILocation(line: 339, column: 10, scope: !7467)
!7533 = !DILocation(line: 339, column: 8, scope: !7467)
!7534 = !DILocation(line: 341, column: 9, scope: !7535)
!7535 = distinct !DILexicalBlock(scope: !7467, file: !3, line: 341, column: 8)
!7536 = !DILocation(line: 341, column: 13, scope: !7535)
!7537 = !DILocation(line: 341, column: 16, scope: !7535)
!7538 = !DILocation(line: 341, column: 20, scope: !7535)
!7539 = !DILocation(line: 341, column: 8, scope: !7467)
!7540 = !DILocation(line: 342, column: 13, scope: !7535)
!7541 = !DILocation(line: 342, column: 5, scope: !7535)
!7542 = !DILocation(line: 343, column: 3, scope: !7468)
!7543 = !DILocation(line: 343, column: 3, scope: !7467)
!7544 = !DILocation(line: 344, column: 2, scope: !7464)
!7545 = !DILocation(line: 344, column: 2, scope: !7463)
!7546 = !DILocation(line: 345, column: 7, scope: !7547)
!7547 = distinct !DILexicalBlock(scope: !7464, file: !3, line: 344, column: 9)
!7548 = !DILocation(line: 347, column: 7, scope: !7452)
!7549 = !DILocation(line: 347, column: 2, scope: !7452)
!7550 = !DILocation(line: 348, column: 30, scope: !7452)
!7551 = !DILocation(line: 348, column: 15, scope: !7452)
!7552 = !DILocation(line: 348, column: 2, scope: !7452)
!7553 = !DILocation(line: 350, column: 2, scope: !7452)
!7554 = !DILocation(line: 351, column: 6, scope: !7555)
!7555 = distinct !DILexicalBlock(scope: !7452, file: !3, line: 351, column: 6)
!7556 = !DILocation(line: 351, column: 14, scope: !7555)
!7557 = !DILocation(line: 351, column: 24, scope: !7555)
!7558 = !DILocation(line: 351, column: 17, scope: !7555)
!7559 = !DILocation(line: 351, column: 6, scope: !7452)
!7560 = !DILocation(line: 352, column: 15, scope: !7555)
!7561 = !DILocation(line: 352, column: 3, scope: !7555)
!7562 = !DILocation(line: 353, column: 9, scope: !7452)
!7563 = !DILocation(line: 353, column: 2, scope: !7452)
!7564 = !DILocation(line: 354, column: 1, scope: !7452)
!7565 = !DISubprogram(name: "kern_path_create", scope: !7566, file: !7566, line: 65, type: !7567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7566 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!7567 = !DISubroutineType(types: !7568)
!7568 = !{!1193, !31, !25, !5295, !7}
!7569 = distinct !DISubprogram(name: "create_path", scope: !3, file: !3, line: 177, type: !7318, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7570)
!7570 = !{!7571, !7572, !7573, !7574}
!7571 = !DILocalVariable(name: "nodepath", arg: 1, scope: !7569, file: !3, line: 177, type: !25)
!7572 = !DILocalVariable(name: "path", scope: !7569, file: !3, line: 179, type: !947)
!7573 = !DILocalVariable(name: "s", scope: !7569, file: !3, line: 180, type: !947)
!7574 = !DILocalVariable(name: "err", scope: !7569, file: !3, line: 181, type: !31)
!7575 = !DILocation(line: 177, column: 36, scope: !7569)
!7576 = !DILocation(line: 179, column: 2, scope: !7569)
!7577 = !DILocation(line: 179, column: 8, scope: !7569)
!7578 = !DILocation(line: 180, column: 2, scope: !7569)
!7579 = !DILocation(line: 180, column: 8, scope: !7569)
!7580 = !DILocation(line: 181, column: 2, scope: !7569)
!7581 = !DILocation(line: 181, column: 6, scope: !7569)
!7582 = !DILocation(line: 184, column: 17, scope: !7569)
!7583 = !DILocation(line: 184, column: 9, scope: !7569)
!7584 = !DILocation(line: 184, column: 7, scope: !7569)
!7585 = !DILocation(line: 185, column: 7, scope: !7586)
!7586 = distinct !DILexicalBlock(scope: !7569, file: !3, line: 185, column: 6)
!7587 = !DILocation(line: 185, column: 6, scope: !7569)
!7588 = !DILocation(line: 186, column: 3, scope: !7586)
!7589 = !DILocation(line: 188, column: 6, scope: !7569)
!7590 = !DILocation(line: 188, column: 4, scope: !7569)
!7591 = !DILocation(line: 189, column: 2, scope: !7569)
!7592 = !DILocation(line: 190, column: 14, scope: !7593)
!7593 = distinct !DILexicalBlock(scope: !7594, file: !3, line: 189, column: 11)
!7594 = distinct !DILexicalBlock(scope: !7595, file: !3, line: 189, column: 2)
!7595 = distinct !DILexicalBlock(scope: !7569, file: !3, line: 189, column: 2)
!7596 = !DILocation(line: 190, column: 7, scope: !7593)
!7597 = !DILocation(line: 190, column: 5, scope: !7593)
!7598 = !DILocation(line: 191, column: 8, scope: !7599)
!7599 = distinct !DILexicalBlock(scope: !7593, file: !3, line: 191, column: 7)
!7600 = !DILocation(line: 191, column: 7, scope: !7593)
!7601 = !DILocation(line: 192, column: 4, scope: !7599)
!7602 = !DILocation(line: 193, column: 3, scope: !7593)
!7603 = !DILocation(line: 193, column: 8, scope: !7593)
!7604 = !DILocation(line: 194, column: 19, scope: !7593)
!7605 = !DILocation(line: 194, column: 9, scope: !7593)
!7606 = !DILocation(line: 194, column: 7, scope: !7593)
!7607 = !DILocation(line: 195, column: 7, scope: !7608)
!7608 = distinct !DILexicalBlock(scope: !7593, file: !3, line: 195, column: 7)
!7609 = !DILocation(line: 195, column: 11, scope: !7608)
!7610 = !DILocation(line: 195, column: 14, scope: !7608)
!7611 = !DILocation(line: 195, column: 18, scope: !7608)
!7612 = !DILocation(line: 195, column: 7, scope: !7593)
!7613 = !DILocation(line: 196, column: 4, scope: !7608)
!7614 = !DILocation(line: 197, column: 3, scope: !7593)
!7615 = !DILocation(line: 197, column: 8, scope: !7593)
!7616 = !DILocation(line: 198, column: 4, scope: !7593)
!7617 = !DILocation(line: 189, column: 2, scope: !7594)
!7618 = distinct !{!7618, !7619, !7620, !7295}
!7619 = !DILocation(line: 189, column: 2, scope: !7595)
!7620 = !DILocation(line: 199, column: 2, scope: !7595)
!7621 = !DILocation(line: 200, column: 8, scope: !7569)
!7622 = !DILocation(line: 200, column: 2, scope: !7569)
!7623 = !DILocation(line: 201, column: 9, scope: !7569)
!7624 = !DILocation(line: 201, column: 2, scope: !7569)
!7625 = !DILocation(line: 202, column: 1, scope: !7569)
!7626 = !DISubprogram(name: "vfs_mknod", scope: !249, file: !249, line: 1773, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7627 = distinct !DISubprogram(name: "d_inode", scope: !1195, file: !1195, line: 514, type: !7628, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7630)
!7628 = !DISubroutineType(types: !7629)
!7629 = !{!1228, !5261}
!7630 = !{!7631}
!7631 = !DILocalVariable(name: "dentry", arg: 1, scope: !7627, file: !1195, line: 514, type: !5261)
!7632 = !DILocation(line: 514, column: 58, scope: !7627)
!7633 = !DILocation(line: 516, column: 9, scope: !7627)
!7634 = !DILocation(line: 516, column: 17, scope: !7627)
!7635 = !DILocation(line: 516, column: 2, scope: !7627)
!7636 = distinct !DISubprogram(name: "inode_lock", scope: !249, file: !249, line: 802, type: !4867, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7637)
!7637 = !{!7638}
!7638 = !DILocalVariable(name: "inode", arg: 1, scope: !7636, file: !249, line: 802, type: !1228)
!7639 = !DILocation(line: 802, column: 45, scope: !7636)
!7640 = !DILocation(line: 804, column: 14, scope: !7636)
!7641 = !DILocation(line: 804, column: 21, scope: !7636)
!7642 = !DILocation(line: 804, column: 2, scope: !7636)
!7643 = !DILocation(line: 805, column: 1, scope: !7636)
!7644 = !DISubprogram(name: "notify_change", scope: !249, file: !249, line: 2673, type: !7645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7645 = !DISubroutineType(types: !7646)
!7646 = !{!31, !1267, !1193, !1312, !7647}
!7647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!7648 = distinct !DISubprogram(name: "inode_unlock", scope: !249, file: !249, line: 807, type: !4867, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7649)
!7649 = !{!7650}
!7650 = !DILocalVariable(name: "inode", arg: 1, scope: !7648, file: !249, line: 807, type: !1228)
!7651 = !DILocation(line: 807, column: 47, scope: !7648)
!7652 = !DILocation(line: 809, column: 12, scope: !7648)
!7653 = !DILocation(line: 809, column: 19, scope: !7648)
!7654 = !DILocation(line: 809, column: 2, scope: !7648)
!7655 = !DILocation(line: 810, column: 1, scope: !7648)
!7656 = !DISubprogram(name: "done_path_create", scope: !7566, file: !7566, line: 67, type: !7657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7657 = !DISubroutineType(types: !7658)
!7658 = !{null, !5295, !1193}
!7659 = !DISubprogram(name: "kstrdup", scope: !7660, file: !7660, line: 216, type: !7661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7660 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7661 = !DISubroutineType(types: !7662)
!7662 = !{!947, !25, !327}
!7663 = !DISubprogram(name: "strchr", scope: !7660, file: !7660, line: 100, type: !7664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7664 = !DISubroutineType(types: !7665)
!7665 = !{!947, !25, !31}
!7666 = distinct !DISubprogram(name: "dev_mkdir", scope: !3, file: !3, line: 159, type: !7667, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7669)
!7667 = !DISubroutineType(types: !7668)
!7668 = !{!31, !25, !33}
!7669 = !{!7670, !7671, !7672, !7673, !7674}
!7670 = !DILocalVariable(name: "name", arg: 1, scope: !7666, file: !3, line: 159, type: !25)
!7671 = !DILocalVariable(name: "mode", arg: 2, scope: !7666, file: !3, line: 159, type: !33)
!7672 = !DILocalVariable(name: "dentry", scope: !7666, file: !3, line: 161, type: !1193)
!7673 = !DILocalVariable(name: "path", scope: !7666, file: !3, line: 162, type: !1184)
!7674 = !DILocalVariable(name: "err", scope: !7666, file: !3, line: 163, type: !31)
!7675 = !DILocation(line: 159, column: 34, scope: !7666)
!7676 = !DILocation(line: 159, column: 48, scope: !7666)
!7677 = !DILocation(line: 161, column: 2, scope: !7666)
!7678 = !DILocation(line: 161, column: 17, scope: !7666)
!7679 = !DILocation(line: 162, column: 2, scope: !7666)
!7680 = !DILocation(line: 162, column: 14, scope: !7666)
!7681 = !DILocation(line: 163, column: 2, scope: !7666)
!7682 = !DILocation(line: 163, column: 6, scope: !7666)
!7683 = !DILocation(line: 165, column: 38, scope: !7666)
!7684 = !DILocation(line: 165, column: 11, scope: !7666)
!7685 = !DILocation(line: 165, column: 9, scope: !7666)
!7686 = !DILocation(line: 166, column: 13, scope: !7687)
!7687 = distinct !DILexicalBlock(scope: !7666, file: !3, line: 166, column: 6)
!7688 = !DILocation(line: 166, column: 6, scope: !7687)
!7689 = !DILocation(line: 166, column: 6, scope: !7666)
!7690 = !DILocation(line: 167, column: 18, scope: !7687)
!7691 = !DILocation(line: 167, column: 10, scope: !7687)
!7692 = !DILocation(line: 167, column: 3, scope: !7687)
!7693 = !DILocation(line: 169, column: 47, scope: !7666)
!7694 = !DILocation(line: 169, column: 34, scope: !7666)
!7695 = !DILocation(line: 169, column: 56, scope: !7666)
!7696 = !DILocation(line: 169, column: 64, scope: !7666)
!7697 = !DILocation(line: 169, column: 8, scope: !7666)
!7698 = !DILocation(line: 169, column: 6, scope: !7666)
!7699 = !DILocation(line: 170, column: 7, scope: !7700)
!7700 = distinct !DILexicalBlock(scope: !7666, file: !3, line: 170, column: 6)
!7701 = !DILocation(line: 170, column: 6, scope: !7666)
!7702 = !DILocation(line: 172, column: 11, scope: !7700)
!7703 = !DILocation(line: 172, column: 3, scope: !7700)
!7704 = !DILocation(line: 172, column: 20, scope: !7700)
!7705 = !DILocation(line: 172, column: 30, scope: !7700)
!7706 = !DILocation(line: 173, column: 26, scope: !7666)
!7707 = !DILocation(line: 173, column: 2, scope: !7666)
!7708 = !DILocation(line: 174, column: 9, scope: !7666)
!7709 = !DILocation(line: 174, column: 2, scope: !7666)
!7710 = !DILocation(line: 175, column: 1, scope: !7666)
!7711 = !DISubprogram(name: "vfs_mkdir", scope: !249, file: !249, line: 1771, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7712 = !DISubprogram(name: "up_write", scope: !880, file: !880, line: 203, type: !7130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7713 = !DISubprogram(name: "kern_path_locked", scope: !7566, file: !7566, line: 68, type: !7714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7714 = !DISubroutineType(types: !7715)
!7715 = !{!1193, !25, !5295}
!7716 = distinct !DISubprogram(name: "d_really_is_positive", scope: !1195, file: !1195, line: 482, type: !7717, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7719)
!7717 = !DISubroutineType(types: !7718)
!7718 = !{!859, !5261}
!7719 = !{!7720}
!7720 = !DILocalVariable(name: "dentry", arg: 1, scope: !7716, file: !1195, line: 482, type: !5261)
!7721 = !DILocation(line: 482, column: 62, scope: !7716)
!7722 = !DILocation(line: 484, column: 9, scope: !7716)
!7723 = !DILocation(line: 484, column: 17, scope: !7716)
!7724 = !DILocation(line: 484, column: 25, scope: !7716)
!7725 = !DILocation(line: 484, column: 2, scope: !7716)
!7726 = !DISubprogram(name: "vfs_getattr", scope: !249, file: !249, line: 3097, type: !7727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7727 = !DISubroutineType(types: !7728)
!7728 = !{!31, !1349, !1351, !340, !7}
!7729 = distinct !DISubprogram(name: "dev_mynode", scope: !3, file: !3, line: 288, type: !7730, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7732)
!7730 = !DISubroutineType(types: !7731)
!7731 = !{!31, !2515, !1228, !1351}
!7732 = !{!7733, !7734, !7735}
!7733 = !DILocalVariable(name: "dev", arg: 1, scope: !7729, file: !3, line: 288, type: !2515)
!7734 = !DILocalVariable(name: "inode", arg: 2, scope: !7729, file: !3, line: 288, type: !1228)
!7735 = !DILocalVariable(name: "stat", arg: 3, scope: !7729, file: !3, line: 288, type: !1351)
!7736 = !DILocation(line: 288, column: 38, scope: !7729)
!7737 = !DILocation(line: 288, column: 57, scope: !7729)
!7738 = !DILocation(line: 288, column: 78, scope: !7729)
!7739 = !DILocation(line: 291, column: 6, scope: !7740)
!7740 = distinct !DILexicalBlock(scope: !7729, file: !3, line: 291, column: 6)
!7741 = !DILocation(line: 291, column: 13, scope: !7740)
!7742 = !DILocation(line: 291, column: 23, scope: !7740)
!7743 = !DILocation(line: 291, column: 6, scope: !7729)
!7744 = !DILocation(line: 292, column: 3, scope: !7740)
!7745 = !DILocation(line: 295, column: 18, scope: !7746)
!7746 = distinct !DILexicalBlock(scope: !7729, file: !3, line: 295, column: 6)
!7747 = !DILocation(line: 295, column: 6, scope: !7746)
!7748 = !DILocation(line: 295, column: 6, scope: !7729)
!7749 = !DILocation(line: 296, column: 8, scope: !7750)
!7750 = distinct !DILexicalBlock(scope: !7751, file: !3, line: 296, column: 7)
!7751 = distinct !DILexicalBlock(scope: !7746, file: !3, line: 295, column: 24)
!7752 = !DILocation(line: 296, column: 7, scope: !7751)
!7753 = !DILocation(line: 297, column: 4, scope: !7750)
!7754 = !DILocation(line: 298, column: 2, scope: !7751)
!7755 = !DILocation(line: 299, column: 8, scope: !7756)
!7756 = distinct !DILexicalBlock(scope: !7757, file: !3, line: 299, column: 7)
!7757 = distinct !DILexicalBlock(scope: !7746, file: !3, line: 298, column: 9)
!7758 = !DILocation(line: 299, column: 7, scope: !7757)
!7759 = !DILocation(line: 300, column: 4, scope: !7756)
!7760 = !DILocation(line: 302, column: 6, scope: !7761)
!7761 = distinct !DILexicalBlock(scope: !7729, file: !3, line: 302, column: 6)
!7762 = !DILocation(line: 302, column: 12, scope: !7761)
!7763 = !DILocation(line: 302, column: 20, scope: !7761)
!7764 = !DILocation(line: 302, column: 25, scope: !7761)
!7765 = !DILocation(line: 302, column: 17, scope: !7761)
!7766 = !DILocation(line: 302, column: 6, scope: !7729)
!7767 = !DILocation(line: 303, column: 3, scope: !7761)
!7768 = !DILocation(line: 306, column: 2, scope: !7729)
!7769 = !DILocation(line: 307, column: 1, scope: !7729)
!7770 = !DISubprogram(name: "vfs_unlink", scope: !249, file: !249, line: 1780, type: !7771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7771 = !DISubroutineType(types: !7772)
!7772 = !{!31, !1267, !1228, !1193, !7647}
!7773 = !DISubprogram(name: "dput", scope: !1195, file: !1195, line: 368, type: !5280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7774 = !DISubprogram(name: "path_put", scope: !1185, file: !1185, line: 14, type: !7775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7775 = !DISubroutineType(types: !7776)
!7776 = !{null, !1349}
!7777 = distinct !DISubprogram(name: "delete_path", scope: !3, file: !3, line: 263, type: !7318, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7778)
!7778 = !{!7779, !7780, !7781, !7782}
!7779 = !DILocalVariable(name: "nodepath", arg: 1, scope: !7777, file: !3, line: 263, type: !25)
!7780 = !DILocalVariable(name: "path", scope: !7777, file: !3, line: 265, type: !947)
!7781 = !DILocalVariable(name: "err", scope: !7777, file: !3, line: 266, type: !31)
!7782 = !DILocalVariable(name: "base", scope: !7783, file: !3, line: 273, type: !947)
!7783 = distinct !DILexicalBlock(scope: !7784, file: !3, line: 272, column: 11)
!7784 = distinct !DILexicalBlock(scope: !7785, file: !3, line: 272, column: 2)
!7785 = distinct !DILexicalBlock(scope: !7777, file: !3, line: 272, column: 2)
!7786 = !DILocation(line: 263, column: 36, scope: !7777)
!7787 = !DILocation(line: 265, column: 2, scope: !7777)
!7788 = !DILocation(line: 265, column: 8, scope: !7777)
!7789 = !DILocation(line: 266, column: 2, scope: !7777)
!7790 = !DILocation(line: 266, column: 6, scope: !7777)
!7791 = !DILocation(line: 268, column: 17, scope: !7777)
!7792 = !DILocation(line: 268, column: 9, scope: !7777)
!7793 = !DILocation(line: 268, column: 7, scope: !7777)
!7794 = !DILocation(line: 269, column: 7, scope: !7795)
!7795 = distinct !DILexicalBlock(scope: !7777, file: !3, line: 269, column: 6)
!7796 = !DILocation(line: 269, column: 6, scope: !7777)
!7797 = !DILocation(line: 270, column: 3, scope: !7795)
!7798 = !DILocation(line: 272, column: 2, scope: !7777)
!7799 = !DILocation(line: 273, column: 3, scope: !7783)
!7800 = !DILocation(line: 273, column: 9, scope: !7783)
!7801 = !DILocation(line: 275, column: 18, scope: !7783)
!7802 = !DILocation(line: 275, column: 10, scope: !7783)
!7803 = !DILocation(line: 275, column: 8, scope: !7783)
!7804 = !DILocation(line: 276, column: 8, scope: !7805)
!7805 = distinct !DILexicalBlock(scope: !7783, file: !3, line: 276, column: 7)
!7806 = !DILocation(line: 276, column: 7, scope: !7783)
!7807 = !DILocation(line: 277, column: 4, scope: !7805)
!7808 = !DILocation(line: 278, column: 3, scope: !7783)
!7809 = !DILocation(line: 278, column: 11, scope: !7783)
!7810 = !DILocation(line: 279, column: 19, scope: !7783)
!7811 = !DILocation(line: 279, column: 9, scope: !7783)
!7812 = !DILocation(line: 279, column: 7, scope: !7783)
!7813 = !DILocation(line: 280, column: 7, scope: !7814)
!7814 = distinct !DILexicalBlock(scope: !7783, file: !3, line: 280, column: 7)
!7815 = !DILocation(line: 280, column: 7, scope: !7783)
!7816 = !DILocation(line: 281, column: 4, scope: !7814)
!7817 = !DILocation(line: 282, column: 2, scope: !7784)
!7818 = !DILocation(line: 272, column: 2, scope: !7784)
!7819 = distinct !{!7819, !7820, !7821, !7295}
!7820 = !DILocation(line: 272, column: 2, scope: !7785)
!7821 = !DILocation(line: 282, column: 2, scope: !7785)
!7822 = !DILocation(line: 284, column: 8, scope: !7777)
!7823 = !DILocation(line: 284, column: 2, scope: !7777)
!7824 = !DILocation(line: 285, column: 9, scope: !7777)
!7825 = !DILocation(line: 285, column: 2, scope: !7777)
!7826 = !DILocation(line: 286, column: 1, scope: !7777)
!7827 = !DISubprogram(name: "strrchr", scope: !7660, file: !7660, line: 110, type: !7664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7828 = distinct !DISubprogram(name: "dev_rmdir", scope: !3, file: !3, line: 239, type: !7318, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7829)
!7829 = !{!7830, !7831, !7832, !7833}
!7830 = !DILocalVariable(name: "name", arg: 1, scope: !7828, file: !3, line: 239, type: !25)
!7831 = !DILocalVariable(name: "parent", scope: !7828, file: !3, line: 241, type: !1184)
!7832 = !DILocalVariable(name: "dentry", scope: !7828, file: !3, line: 242, type: !1193)
!7833 = !DILocalVariable(name: "err", scope: !7828, file: !3, line: 243, type: !31)
!7834 = !DILocation(line: 239, column: 34, scope: !7828)
!7835 = !DILocation(line: 241, column: 2, scope: !7828)
!7836 = !DILocation(line: 241, column: 14, scope: !7828)
!7837 = !DILocation(line: 242, column: 2, scope: !7828)
!7838 = !DILocation(line: 242, column: 17, scope: !7828)
!7839 = !DILocation(line: 243, column: 2, scope: !7828)
!7840 = !DILocation(line: 243, column: 6, scope: !7828)
!7841 = !DILocation(line: 245, column: 28, scope: !7828)
!7842 = !DILocation(line: 245, column: 11, scope: !7828)
!7843 = !DILocation(line: 245, column: 9, scope: !7828)
!7844 = !DILocation(line: 246, column: 13, scope: !7845)
!7845 = distinct !DILexicalBlock(scope: !7828, file: !3, line: 246, column: 6)
!7846 = !DILocation(line: 246, column: 6, scope: !7845)
!7847 = !DILocation(line: 246, column: 6, scope: !7828)
!7848 = !DILocation(line: 247, column: 18, scope: !7845)
!7849 = !DILocation(line: 247, column: 10, scope: !7845)
!7850 = !DILocation(line: 247, column: 3, scope: !7845)
!7851 = !DILocation(line: 248, column: 27, scope: !7852)
!7852 = distinct !DILexicalBlock(scope: !7828, file: !3, line: 248, column: 6)
!7853 = !DILocation(line: 248, column: 6, scope: !7852)
!7854 = !DILocation(line: 248, column: 6, scope: !7828)
!7855 = !DILocation(line: 249, column: 15, scope: !7856)
!7856 = distinct !DILexicalBlock(scope: !7857, file: !3, line: 249, column: 7)
!7857 = distinct !DILexicalBlock(scope: !7852, file: !3, line: 248, column: 36)
!7858 = !DILocation(line: 249, column: 7, scope: !7856)
!7859 = !DILocation(line: 249, column: 24, scope: !7856)
!7860 = !DILocation(line: 249, column: 34, scope: !7856)
!7861 = !DILocation(line: 249, column: 7, scope: !7857)
!7862 = !DILocation(line: 250, column: 51, scope: !7856)
!7863 = !DILocation(line: 250, column: 36, scope: !7856)
!7864 = !DILocation(line: 251, column: 6, scope: !7856)
!7865 = !DILocation(line: 250, column: 10, scope: !7856)
!7866 = !DILocation(line: 250, column: 8, scope: !7856)
!7867 = !DILocation(line: 250, column: 4, scope: !7856)
!7868 = !DILocation(line: 253, column: 8, scope: !7856)
!7869 = !DILocation(line: 254, column: 2, scope: !7857)
!7870 = !DILocation(line: 255, column: 7, scope: !7871)
!7871 = distinct !DILexicalBlock(scope: !7852, file: !3, line: 254, column: 9)
!7872 = !DILocation(line: 257, column: 7, scope: !7828)
!7873 = !DILocation(line: 257, column: 2, scope: !7828)
!7874 = !DILocation(line: 258, column: 30, scope: !7828)
!7875 = !DILocation(line: 258, column: 15, scope: !7828)
!7876 = !DILocation(line: 258, column: 2, scope: !7828)
!7877 = !DILocation(line: 259, column: 2, scope: !7828)
!7878 = !DILocation(line: 260, column: 9, scope: !7828)
!7879 = !DILocation(line: 260, column: 2, scope: !7828)
!7880 = !DILocation(line: 261, column: 1, scope: !7828)
!7881 = !DISubprogram(name: "vfs_rmdir", scope: !249, file: !249, line: 1779, type: !7882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7882 = !DISubroutineType(types: !7883)
!7883 = !{!31, !1267, !1228, !1193}
