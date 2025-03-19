; ModuleID = 'fs/autofs/dev-ioctl.c'
source_filename = "fs/autofs/dev-ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.user_namespace = type opaque
%struct.pcpu_hot = type { %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [16 x i8] }
%struct.anon.29 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.autofs_dev_ioctl = type { i32, i32, i32, i32, %union.anon.13, [0 x i8] }
%union.anon.13 = type { %struct.args_timeout }
%struct.args_timeout = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.15, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.16, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.17, ptr, %struct.address_space, %struct.list_head, %union.anon.18, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.15 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.16 = type { %struct.callback_head }
%union.anon.17 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.18 = type { ptr }
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
%struct.file = type { %union.anon.25, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.25 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.args_protover = type { i32 }
%struct.args_protosubver = type { i32 }
%struct.args_openmount = type { i32 }
%struct.args_ready = type { i32 }
%struct.args_fail = type { i32, i32 }
%struct.args_setpipefd = type { i32 }
%struct.args_requester = type { i32, i32 }
%struct.autofs_info = type { ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.args_expire = type { i32 }
%struct.args_askumount = type { i32 }
%struct.args_ismountpoint = type { %union.anon.14 }
%union.anon.14 = type { %struct.args_out }
%struct.args_out = type { i32, i32 }
%struct.args_in = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.23, %struct.list_head, %struct.list_head, %union.anon.24 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [0 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_alias277 = internal constant [32 x i8] c"autofs4.alias=char-major-10-235\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_alias278 = internal constant [29 x i8] c"autofs4.alias=devname:autofs\00", section ".modinfo", align 1, !dbg !4118
@_autofs_dev_ioctl_misc = internal global %struct.miscdevice { i32 235, ptr @.str.1, ptr @_dev_ioctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 420 }, align 8, !dbg !4136
@.str = private unnamed_addr constant [62 x i8] c"\013autofs4:pid:%d:%s: misc_register failed for control device\0A\00", align 1, !dbg !4123
@__func__.autofs_dev_ioctl_init = private unnamed_addr constant [22 x i8] c"autofs_dev_ioctl_init\00", align 1, !dbg !4128
@.str.1 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1, !dbg !4133
@_dev_ioctl_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dev_ioctl, ptr @autofs_dev_ioctl_compat, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4499
@.str.2 = private unnamed_addr constant [45 x i8] c"\014autofs4:pid:%d:%s: unknown command 0x%08x\0A\00", align 1, !dbg !4501
@__func__._autofs_dev_ioctl = private unnamed_addr constant [18 x i8] c"_autofs_dev_ioctl\00", align 1, !dbg !4506
@autofs_fs_type = external dso_local global %struct.file_system_type, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4511
@.str.4 = private unnamed_addr constant [85 x i8] c"\014autofs4:pid:%d:%s: invalid device control module version supplied for cmd(0x%08x)\0A\00", align 1, !dbg !4517
@__func__.validate_dev_ioctl = private unnamed_addr constant [19 x i8] c"validate_dev_ioctl\00", align 1, !dbg !4522
@.str.5 = private unnamed_addr constant [69 x i8] c"\014autofs4:pid:%d:%s: path string terminator missing for cmd(0x%08x)\0A\00", align 1, !dbg !4527
@.str.6 = private unnamed_addr constant [60 x i8] c"\014autofs4:pid:%d:%s: invalid path supplied for cmd(0x%08x)\0A\00", align 1, !dbg !4532
@.str.7 = private unnamed_addr constant [104 x i8] c"\014autofs4:pid:%d:%s: ioctl control interface version mismatch: kernel(%u.%u), user(%u.%u), cmd(0x%08x)\0A\00", align 1, !dbg !4537
@__func__.check_dev_ioctl_version = private unnamed_addr constant [24 x i8] c"check_dev_ioctl_version\00", align 1, !dbg !4542
@lookup_dev_ioctl._ioctls = internal constant [14 x ptr] [ptr @autofs_dev_ioctl_version, ptr @autofs_dev_ioctl_protover, ptr @autofs_dev_ioctl_protosubver, ptr @autofs_dev_ioctl_openmount, ptr @autofs_dev_ioctl_closemount, ptr @autofs_dev_ioctl_ready, ptr @autofs_dev_ioctl_fail, ptr @autofs_dev_ioctl_setpipefd, ptr @autofs_dev_ioctl_catatonic, ptr @autofs_dev_ioctl_timeout, ptr @autofs_dev_ioctl_requester, ptr @autofs_dev_ioctl_expire, ptr @autofs_dev_ioctl_askumount, ptr @autofs_dev_ioctl_ismountpoint], align 16, !dbg !4547
@.str.8 = private unnamed_addr constant [58 x i8] c"\014autofs4:pid:%d:%s: not allowed to change PID namespace\0A\00", align 1, !dbg !4567
@__func__.autofs_dev_ioctl_setpipefd = private unnamed_addr constant [27 x i8] c"autofs_dev_ioctl_setpipefd\00", align 1, !dbg !4572
@overflowuid = external dso_local global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@overflowgid = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_alias278], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @autofs_dev_ioctl_init() #0 section ".init.text" align 16 !dbg !4587 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13, !dbg !4590
  call void @llvm.dbg.declare(metadata ptr %r, metadata !4589, metadata !DIExpression()), !dbg !4591
  %call = call i32 @misc_register(ptr noundef @_autofs_dev_ioctl_misc) #14, !dbg !4592
  store i32 %call, ptr %r, align 4, !dbg !4593
  %0 = load i32, ptr %r, align 4, !dbg !4594
  %tobool = icmp ne i32 %0, 0, !dbg !4594
  br i1 %tobool, label %if.then, label %if.end, !dbg !4596

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4597

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4600

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4600

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @get_current() #14, !dbg !4597
  %pid = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 62, !dbg !4597
  %1 = load i32, ptr %pid, align 8, !dbg !4597
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %1, ptr noundef @__func__.autofs_dev_ioctl_init) #15, !dbg !4597
  store i32 %call2, ptr %tmp, align 4, !dbg !4600
  %2 = load i32, ptr %tmp, align 4, !dbg !4597
  %3 = load i32, ptr %r, align 4, !dbg !4602
  store i32 %3, ptr %retval, align 4, !dbg !4603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4603

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4604

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13, !dbg !4605
  %4 = load i32, ptr %retval, align 4, !dbg !4605
  ret i32 %4, !dbg !4605
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4606 dso_local i32 @misc_register(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4610 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4614 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4625
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4619, metadata !DIExpression()), !dbg !4625
  br label %do.body, !dbg !4625

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4626
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4621, metadata !DIExpression()), !dbg !4626
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4626
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4625
  br label %do.cond, !dbg !4626

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4626

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !4627
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4623, metadata !DIExpression()), !dbg !4627
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !4627, !srcloc !4628
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4627
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4627
  %3 = inttoptr i64 %2 to ptr, !dbg !4627
  store ptr %3, ptr %tmp, align 8, !dbg !4627
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !4625
  %4 = load ptr, ptr %tmp, align 8, !dbg !4627
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4625
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4625
  store ptr %5, ptr %tmp1, align 8, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !4629
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4625
  ret ptr %6, !dbg !4630
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @autofs_dev_ioctl_exit() #6 align 16 !dbg !4631 {
entry:
  call void @misc_deregister(ptr noundef @_autofs_dev_ioctl_misc) #14, !dbg !4632
  ret void, !dbg !4633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4634 dso_local void @misc_deregister(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autofs_dev_ioctl(ptr noundef %file, i32 noundef %command, i64 noundef %u) #6 align 16 !dbg !4637 {
entry:
  %file.addr = alloca ptr, align 8
  %command.addr = alloca i32, align 4
  %u.addr = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4639, metadata !DIExpression()), !dbg !4643
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !4640, metadata !DIExpression()), !dbg !4644
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4641, metadata !DIExpression()), !dbg !4645
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4642, metadata !DIExpression()), !dbg !4647
  %0 = load i32, ptr %command.addr, align 4, !dbg !4648
  %1 = load i64, ptr %u.addr, align 8, !dbg !4649
  %2 = inttoptr i64 %1 to ptr, !dbg !4650
  %call = call i32 @_autofs_dev_ioctl(i32 noundef %0, ptr noundef %2) #14, !dbg !4651
  store i32 %call, ptr %err, align 4, !dbg !4652
  %3 = load i32, ptr %err, align 4, !dbg !4653
  %conv = sext i32 %3 to i64, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4655
  ret i64 %conv, !dbg !4656
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autofs_dev_ioctl_compat(ptr noundef %file, i32 noundef %command, i64 noundef %u) #6 align 16 !dbg !4657 {
entry:
  %file.addr = alloca ptr, align 8
  %command.addr = alloca i32, align 4
  %u.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4659, metadata !DIExpression()), !dbg !4662
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !4660, metadata !DIExpression()), !dbg !4663
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4661, metadata !DIExpression()), !dbg !4664
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4665
  %1 = load i32, ptr %command.addr, align 4, !dbg !4666
  %2 = load i64, ptr %u.addr, align 8, !dbg !4667
  %conv = trunc i64 %2 to i32, !dbg !4667
  %call = call ptr @compat_ptr(i32 noundef %conv) #14, !dbg !4668
  %3 = ptrtoint ptr %call to i64, !dbg !4669
  %call1 = call i64 @autofs_dev_ioctl(ptr noundef %0, i32 noundef %1, i64 noundef %3) #14, !dbg !4670
  ret i64 %call1, !dbg !4671
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_autofs_dev_ioctl(i32 noundef %command, ptr noundef %user) #6 align 16 !dbg !4672 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i32, align 4
  %user.addr = alloca ptr, align 8
  %param = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %cmd_first = alloca i32, align 4
  %cmd = alloca i32, align 4
  %fn = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sb = alloca ptr, align 8
  store i32 %command, ptr %command.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %command.addr, metadata !4676, metadata !DIExpression()), !dbg !4690
  store ptr %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !4677, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #13, !dbg !4692
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4678, metadata !DIExpression()), !dbg !4693
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #13, !dbg !4694
  call void @llvm.dbg.declare(metadata ptr %fp, metadata !4679, metadata !DIExpression()), !dbg !4695
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #13, !dbg !4696
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4680, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd_first) #13, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %cmd_first, metadata !4681, metadata !DIExpression()), !dbg !4699
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #13, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !4682, metadata !DIExpression()), !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn) #13, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %fn, metadata !4683, metadata !DIExpression()), !dbg !4702
  store ptr null, ptr %fn, align 8, !dbg !4702
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4684, metadata !DIExpression()), !dbg !4704
  store i32 0, ptr %err, align 4, !dbg !4704
  store i32 113, ptr %cmd_first, align 4, !dbg !4705
  %0 = load i32, ptr %command.addr, align 4, !dbg !4706
  %shr = lshr i32 %0, 0, !dbg !4706
  %and = and i32 %shr, 255, !dbg !4706
  store i32 %and, ptr %cmd, align 4, !dbg !4707
  %1 = load i32, ptr %command.addr, align 4, !dbg !4708
  %shr1 = lshr i32 %1, 8, !dbg !4708
  %and2 = and i32 %shr1, 255, !dbg !4708
  %conv = zext i32 %and2 to i64, !dbg !4708
  %cmp = icmp ne i64 %conv, 147, !dbg !4710
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4711

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %cmd, align 4, !dbg !4712
  %3 = load i32, ptr %cmd_first, align 4, !dbg !4713
  %sub = sub i32 %2, %3, !dbg !4714
  %cmp4 = icmp ugt i32 %sub, 13, !dbg !4715
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, ptr %retval, align 4, !dbg !4717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4717

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %cmd, align 4, !dbg !4719
  %cmp6 = icmp ne i32 %4, 113, !dbg !4721
  br i1 %cmp6, label %land.lhs.true, label %if.end12, !dbg !4722

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %cmd, align 4, !dbg !4723
  %cmp8 = icmp ne i32 %5, 126, !dbg !4724
  br i1 %cmp8, label %land.lhs.true10, label %if.end12, !dbg !4725

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call = call zeroext i1 @capable(i32 noundef 21) #14, !dbg !4726
  br i1 %call, label %if.end12, label %if.then11, !dbg !4727

if.then11:                                        ; preds = %land.lhs.true10
  store i32 -1, ptr %retval, align 4, !dbg !4728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4728

if.end12:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.end
  %6 = load ptr, ptr %user.addr, align 8, !dbg !4729
  %call13 = call ptr @copy_dev_ioctl(ptr noundef %6) #14, !dbg !4730
  store ptr %call13, ptr %param, align 8, !dbg !4731
  %7 = load ptr, ptr %param, align 8, !dbg !4732
  %call14 = call zeroext i1 @IS_ERR(ptr noundef %7) #14, !dbg !4734
  br i1 %call14, label %if.then15, label %if.end18, !dbg !4735

if.then15:                                        ; preds = %if.end12
  %8 = load ptr, ptr %param, align 8, !dbg !4736
  %call16 = call i64 @PTR_ERR(ptr noundef %8) #14, !dbg !4737
  %conv17 = trunc i64 %call16 to i32, !dbg !4737
  store i32 %conv17, ptr %retval, align 4, !dbg !4738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4738

if.end18:                                         ; preds = %if.end12
  %9 = load i32, ptr %command.addr, align 4, !dbg !4739
  %10 = load ptr, ptr %param, align 8, !dbg !4740
  %call19 = call i32 @validate_dev_ioctl(i32 noundef %9, ptr noundef %10) #14, !dbg !4741
  store i32 %call19, ptr %err, align 4, !dbg !4742
  %11 = load i32, ptr %err, align 4, !dbg !4743
  %tobool = icmp ne i32 %11, 0, !dbg !4743
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !4745

if.then20:                                        ; preds = %if.end18
  br label %out, !dbg !4746

if.end21:                                         ; preds = %if.end18
  %12 = load i32, ptr %cmd, align 4, !dbg !4747
  %call22 = call ptr @lookup_dev_ioctl(i32 noundef %12) #14, !dbg !4748
  store ptr %call22, ptr %fn, align 8, !dbg !4749
  %13 = load ptr, ptr %fn, align 8, !dbg !4750
  %tobool23 = icmp ne ptr %13, null, !dbg !4750
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !4752

if.then24:                                        ; preds = %if.end21
  br label %do.body, !dbg !4753

do.body:                                          ; preds = %if.then24
  br label %do.cond, !dbg !4756

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4756

do.end:                                           ; preds = %do.cond
  %call25 = call ptr @get_current() #14, !dbg !4753
  %pid = getelementptr inbounds %struct.task_struct, ptr %call25, i32 0, i32 62, !dbg !4753
  %14 = load i32, ptr %pid, align 8, !dbg !4753
  %15 = load i32, ptr %command.addr, align 4, !dbg !4753
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %14, ptr noundef @__func__._autofs_dev_ioctl, i32 noundef %15) #15, !dbg !4753
  store i32 %call26, ptr %tmp, align 4, !dbg !4756
  %16 = load i32, ptr %tmp, align 4, !dbg !4753
  store i32 -25, ptr %err, align 4, !dbg !4758
  br label %out, !dbg !4759

if.end27:                                         ; preds = %if.end21
  store ptr null, ptr %fp, align 8, !dbg !4760
  store ptr null, ptr %sbi, align 8, !dbg !4761
  %17 = load i32, ptr %cmd, align 4, !dbg !4762
  %cmp28 = icmp ne i32 %17, 113, !dbg !4763
  br i1 %cmp28, label %land.lhs.true30, label %if.end58, !dbg !4764

land.lhs.true30:                                  ; preds = %if.end27
  %18 = load i32, ptr %cmd, align 4, !dbg !4765
  %cmp31 = icmp ne i32 %18, 116, !dbg !4766
  br i1 %cmp31, label %land.lhs.true33, label %if.end58, !dbg !4767

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %19 = load i32, ptr %cmd, align 4, !dbg !4768
  %cmp34 = icmp ne i32 %19, 117, !dbg !4769
  br i1 %cmp34, label %if.then36, label %if.end58, !dbg !4770

if.then36:                                        ; preds = %land.lhs.true33
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #13, !dbg !4771
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4685, metadata !DIExpression()), !dbg !4772
  %20 = load ptr, ptr %param, align 8, !dbg !4773
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %20, i32 0, i32 3, !dbg !4774
  %21 = load i32, ptr %ioctlfd, align 4, !dbg !4774
  %call37 = call ptr @fget(i32 noundef %21) #14, !dbg !4775
  store ptr %call37, ptr %fp, align 8, !dbg !4776
  %22 = load ptr, ptr %fp, align 8, !dbg !4777
  %tobool38 = icmp ne ptr %22, null, !dbg !4777
  br i1 %tobool38, label %if.end44, label %if.then39, !dbg !4779

if.then39:                                        ; preds = %if.then36
  %23 = load i32, ptr %cmd, align 4, !dbg !4780
  %cmp40 = icmp eq i32 %23, 126, !dbg !4783
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !4784

if.then42:                                        ; preds = %if.then39
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4785

if.end43:                                         ; preds = %if.then39
  store i32 -9, ptr %err, align 4, !dbg !4786
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4787

if.end44:                                         ; preds = %if.then36
  %24 = load ptr, ptr %fp, align 8, !dbg !4788
  %call45 = call ptr @file_inode(ptr noundef %24) #14, !dbg !4789
  %i_sb = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 9, !dbg !4790
  %25 = load ptr, ptr %i_sb, align 8, !dbg !4790
  store ptr %25, ptr %sb, align 8, !dbg !4791
  %26 = load ptr, ptr %sb, align 8, !dbg !4792
  %s_type = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 5, !dbg !4794
  %27 = load ptr, ptr %s_type, align 8, !dbg !4794
  %cmp46 = icmp ne ptr %27, @autofs_fs_type, !dbg !4795
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !4796

if.then48:                                        ; preds = %if.end44
  store i32 -22, ptr %err, align 4, !dbg !4797
  %28 = load ptr, ptr %fp, align 8, !dbg !4799
  call void @fput(ptr noundef %28) #14, !dbg !4800
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4801

if.end49:                                         ; preds = %if.end44
  %29 = load ptr, ptr %sb, align 8, !dbg !4802
  %call50 = call ptr @autofs_sbi(ptr noundef %29) #14, !dbg !4803
  store ptr %call50, ptr %sbi, align 8, !dbg !4804
  %30 = load ptr, ptr %sbi, align 8, !dbg !4805
  %call51 = call i32 @autofs_oz_mode(ptr noundef %30) #14, !dbg !4807
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4807
  br i1 %tobool52, label %if.end57, label %land.lhs.true53, !dbg !4808

land.lhs.true53:                                  ; preds = %if.end49
  %31 = load i32, ptr %cmd, align 4, !dbg !4809
  %cmp54 = icmp ne i32 %31, 121, !dbg !4810
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !4811

if.then56:                                        ; preds = %land.lhs.true53
  store i32 -13, ptr %err, align 4, !dbg !4812
  %32 = load ptr, ptr %fp, align 8, !dbg !4814
  call void @fput(ptr noundef %32) #14, !dbg !4815
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4816

if.end57:                                         ; preds = %land.lhs.true53, %if.end49
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4817
  br label %cleanup, !dbg !4817

cleanup:                                          ; preds = %if.then56, %if.then48, %if.end43, %if.then42, %if.end57
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #13, !dbg !4817
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup70 [
    i32 0, label %cleanup.cont
    i32 5, label %cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end58, !dbg !4818

if.end58:                                         ; preds = %cleanup.cont, %land.lhs.true33, %land.lhs.true30, %if.end27
  br label %cont, !dbg !4819

cont:                                             ; preds = %if.end58, %cleanup
  call void @llvm.dbg.label(metadata !4688), !dbg !4820
  %33 = load ptr, ptr %fn, align 8, !dbg !4821
  %34 = load ptr, ptr %fp, align 8, !dbg !4822
  %35 = load ptr, ptr %sbi, align 8, !dbg !4823
  %36 = load ptr, ptr %param, align 8, !dbg !4824
  %call59 = call i32 %33(ptr noundef %34, ptr noundef %35, ptr noundef %36) #14, !dbg !4821
  store i32 %call59, ptr %err, align 4, !dbg !4825
  %37 = load ptr, ptr %fp, align 8, !dbg !4826
  %tobool60 = icmp ne ptr %37, null, !dbg !4826
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4828

if.then61:                                        ; preds = %cont
  %38 = load ptr, ptr %fp, align 8, !dbg !4829
  call void @fput(ptr noundef %38) #14, !dbg !4830
  br label %if.end62, !dbg !4830

if.end62:                                         ; preds = %if.then61, %cont
  %39 = load i32, ptr %err, align 4, !dbg !4831
  %cmp63 = icmp sge i32 %39, 0, !dbg !4833
  br i1 %cmp63, label %land.lhs.true65, label %if.end69, !dbg !4834

land.lhs.true65:                                  ; preds = %if.end62
  %40 = load ptr, ptr %user.addr, align 8, !dbg !4835
  %41 = load ptr, ptr %param, align 8, !dbg !4836
  %call66 = call i64 @copy_to_user(ptr noundef %40, ptr noundef %41, i64 noundef 24) #14, !dbg !4837
  %tobool67 = icmp ne i64 %call66, 0, !dbg !4837
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !4838

if.then68:                                        ; preds = %land.lhs.true65
  store i32 -14, ptr %err, align 4, !dbg !4839
  br label %if.end69, !dbg !4840

if.end69:                                         ; preds = %if.then68, %land.lhs.true65, %if.end62
  br label %out, !dbg !4841

out:                                              ; preds = %if.end69, %cleanup, %do.end, %if.then20
  call void @llvm.dbg.label(metadata !4689), !dbg !4842
  %42 = load ptr, ptr %param, align 8, !dbg !4843
  call void @free_dev_ioctl(ptr noundef %42) #14, !dbg !4844
  %43 = load i32, ptr %err, align 4, !dbg !4845
  store i32 %43, ptr %retval, align 4, !dbg !4846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !4846

cleanup70:                                        ; preds = %out, %cleanup, %if.then15, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd_first) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #13, !dbg !4847
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #13, !dbg !4847
  %44 = load i32, ptr %retval, align 4, !dbg !4847
  ret i32 %44, !dbg !4847
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4848 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @copy_dev_ioctl(ptr noundef %in) #6 align 16 !dbg !4851 {
entry:
  %retval = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %tmp = alloca %struct.autofs_dev_ioctl, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !4855, metadata !DIExpression()), !dbg !4858
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #13, !dbg !4859
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4856, metadata !DIExpression()), !dbg !4860
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #13, !dbg !4859
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4857, metadata !DIExpression()), !dbg !4861
  %0 = load ptr, ptr %in.addr, align 8, !dbg !4862
  %call = call i64 @copy_from_user(ptr noundef %tmp, ptr noundef %0, i64 noundef 24) #14, !dbg !4864
  %tobool = icmp ne i64 %call, 0, !dbg !4864
  br i1 %tobool, label %if.then, label %if.end, !dbg !4865

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -14) #14, !dbg !4866
  store ptr %call1, ptr %retval, align 8, !dbg !4867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4867

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %tmp, i32 0, i32 2, !dbg !4868
  %1 = load i32, ptr %size, align 8, !dbg !4868
  %conv = zext i32 %1 to i64, !dbg !4870
  %cmp = icmp ult i64 %conv, 24, !dbg !4871
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !4872

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -22) #14, !dbg !4873
  store ptr %call4, ptr %retval, align 8, !dbg !4874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4874

if.end5:                                          ; preds = %if.end
  %size6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %tmp, i32 0, i32 2, !dbg !4875
  %2 = load i32, ptr %size6, align 8, !dbg !4875
  %conv7 = zext i32 %2 to i64, !dbg !4877
  %cmp8 = icmp ugt i64 %conv7, 4120, !dbg !4878
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !4879

if.then10:                                        ; preds = %if.end5
  %call11 = call ptr @ERR_PTR(i64 noundef -36) #14, !dbg !4880
  store ptr %call11, ptr %retval, align 8, !dbg !4881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4881

if.end12:                                         ; preds = %if.end5
  %3 = load ptr, ptr %in.addr, align 8, !dbg !4882
  %size13 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %tmp, i32 0, i32 2, !dbg !4883
  %4 = load i32, ptr %size13, align 8, !dbg !4883
  %conv14 = zext i32 %4 to i64, !dbg !4884
  %call15 = call ptr @memdup_user(ptr noundef %3, i64 noundef %conv14) #14, !dbg !4885
  store ptr %call15, ptr %res, align 8, !dbg !4886
  %5 = load ptr, ptr %res, align 8, !dbg !4887
  %call16 = call zeroext i1 @IS_ERR(ptr noundef %5) #14, !dbg !4889
  br i1 %call16, label %if.end20, label %if.then17, !dbg !4890

if.then17:                                        ; preds = %if.end12
  %size18 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %tmp, i32 0, i32 2, !dbg !4891
  %6 = load i32, ptr %size18, align 8, !dbg !4891
  %7 = load ptr, ptr %res, align 8, !dbg !4892
  %size19 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %7, i32 0, i32 2, !dbg !4893
  store i32 %6, ptr %size19, align 8, !dbg !4894
  br label %if.end20, !dbg !4892

if.end20:                                         ; preds = %if.then17, %if.end12
  %8 = load ptr, ptr %res, align 8, !dbg !4895
  store ptr %8, ptr %retval, align 8, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

cleanup:                                          ; preds = %if.end20, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #13, !dbg !4897
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #13, !dbg !4897
  %9 = load ptr, ptr %retval, align 8, !dbg !4897
  ret ptr %9, !dbg !4897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !4898 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4905
  %1 = ptrtoint ptr %0 to i64, !dbg !4905
  %2 = inttoptr i64 %1 to ptr, !dbg !4905
  %3 = ptrtoint ptr %2 to i64, !dbg !4905
  %cmp = icmp uge i64 %3, -4095, !dbg !4905
  %lnot = xor i1 %cmp, true, !dbg !4905
  %lnot1 = xor i1 %lnot, true, !dbg !4905
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4905
  %conv = sext i32 %lnot.ext to i64, !dbg !4905
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4905
  %tobool = icmp ne i64 %expval, 0, !dbg !4905
  ret i1 %tobool, !dbg !4906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !4907 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4913
  %1 = ptrtoint ptr %0 to i64, !dbg !4914
  ret i64 %1, !dbg !4915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_dev_ioctl(i32 noundef %cmd, ptr noundef %param) #6 align 16 !dbg !4916 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %inr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4920, metadata !DIExpression()), !dbg !4927
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !4921, metadata !DIExpression()), !dbg !4928
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !4929
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4922, metadata !DIExpression()), !dbg !4930
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !4931
  %1 = load ptr, ptr %param.addr, align 8, !dbg !4932
  %call = call i32 @check_dev_ioctl_version(i32 noundef %0, ptr noundef %1) #14, !dbg !4933
  store i32 %call, ptr %err, align 4, !dbg !4934
  %2 = load i32, ptr %err, align 4, !dbg !4935
  %tobool = icmp ne i32 %2, 0, !dbg !4935
  br i1 %tobool, label %if.then, label %if.end, !dbg !4937

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4938

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4941

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4941

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @get_current() #14, !dbg !4938
  %pid = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 62, !dbg !4938
  %3 = load i32, ptr %pid, align 8, !dbg !4938
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !4938
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %3, ptr noundef @__func__.validate_dev_ioctl, i32 noundef %4) #15, !dbg !4938
  store i32 %call2, ptr %tmp, align 4, !dbg !4941
  %5 = load i32, ptr %tmp, align 4, !dbg !4938
  br label %out, !dbg !4943

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %param.addr, align 8, !dbg !4944
  %size = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %6, i32 0, i32 2, !dbg !4945
  %7 = load i32, ptr %size, align 8, !dbg !4945
  %conv = zext i32 %7 to i64, !dbg !4944
  %cmp = icmp ugt i64 %conv, 24, !dbg !4946
  br i1 %cmp, label %if.then4, label %if.else, !dbg !4947

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %param.addr, align 8, !dbg !4948
  %path = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %8, i32 0, i32 5, !dbg !4950
  %arraydecay = getelementptr inbounds [0 x i8], ptr %path, i64 0, i64 0, !dbg !4948
  %9 = load ptr, ptr %param.addr, align 8, !dbg !4951
  %size5 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %9, i32 0, i32 2, !dbg !4952
  %10 = load i32, ptr %size5, align 8, !dbg !4952
  %conv6 = zext i32 %10 to i64, !dbg !4951
  %sub = sub i64 %conv6, 24, !dbg !4953
  %call7 = call i32 @invalid_str(ptr noundef %arraydecay, i64 noundef %sub) #14, !dbg !4954
  store i32 %call7, ptr %err, align 4, !dbg !4955
  %11 = load i32, ptr %err, align 4, !dbg !4956
  %tobool8 = icmp ne i32 %11, 0, !dbg !4956
  br i1 %tobool8, label %if.then9, label %if.end17, !dbg !4958

if.then9:                                         ; preds = %if.then4
  br label %do.body10, !dbg !4959

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !4962

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4962

do.end12:                                         ; preds = %do.cond11
  %call14 = call ptr @get_current() #14, !dbg !4959
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 62, !dbg !4959
  %12 = load i32, ptr %pid15, align 8, !dbg !4959
  %13 = load i32, ptr %cmd.addr, align 4, !dbg !4959
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %12, ptr noundef @__func__.validate_dev_ioctl, i32 noundef %13) #15, !dbg !4959
  store i32 %call16, ptr %tmp13, align 4, !dbg !4962
  %14 = load i32, ptr %tmp13, align 4, !dbg !4959
  br label %out, !dbg !4964

if.end17:                                         ; preds = %if.then4
  %15 = load ptr, ptr %param.addr, align 8, !dbg !4965
  %path18 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %15, i32 0, i32 5, !dbg !4966
  %arraydecay19 = getelementptr inbounds [0 x i8], ptr %path18, i64 0, i64 0, !dbg !4965
  %call20 = call i32 @check_name(ptr noundef %arraydecay19) #14, !dbg !4967
  store i32 %call20, ptr %err, align 4, !dbg !4968
  %16 = load i32, ptr %err, align 4, !dbg !4969
  %tobool21 = icmp ne i32 %16, 0, !dbg !4969
  br i1 %tobool21, label %if.then22, label %if.end30, !dbg !4971

if.then22:                                        ; preds = %if.end17
  br label %do.body23, !dbg !4972

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !4975

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4975

do.end25:                                         ; preds = %do.cond24
  %call27 = call ptr @get_current() #14, !dbg !4972
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %call27, i32 0, i32 62, !dbg !4972
  %17 = load i32, ptr %pid28, align 8, !dbg !4972
  %18 = load i32, ptr %cmd.addr, align 4, !dbg !4972
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %17, ptr noundef @__func__.validate_dev_ioctl, i32 noundef %18) #15, !dbg !4972
  store i32 %call29, ptr %tmp26, align 4, !dbg !4975
  %19 = load i32, ptr %tmp26, align 4, !dbg !4972
  br label %out, !dbg !4977

if.end30:                                         ; preds = %if.end17
  br label %if.end40, !dbg !4978

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %inr) #13, !dbg !4979
  call void @llvm.dbg.declare(metadata ptr %inr, metadata !4923, metadata !DIExpression()), !dbg !4980
  %20 = load i32, ptr %cmd.addr, align 4, !dbg !4981
  %shr = ashr i32 %20, 0, !dbg !4981
  %and = and i32 %shr, 255, !dbg !4981
  store i32 %and, ptr %inr, align 4, !dbg !4980
  %21 = load i32, ptr %inr, align 4, !dbg !4982
  %cmp31 = icmp eq i32 %21, 116, !dbg !4984
  br i1 %cmp31, label %if.then38, label %lor.lhs.false, !dbg !4985

lor.lhs.false:                                    ; preds = %if.else
  %22 = load i32, ptr %inr, align 4, !dbg !4986
  %cmp33 = icmp eq i32 %22, 123, !dbg !4987
  br i1 %cmp33, label %if.then38, label %lor.lhs.false35, !dbg !4988

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %23 = load i32, ptr %inr, align 4, !dbg !4989
  %cmp36 = icmp eq i32 %23, 126, !dbg !4990
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4991

if.then38:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.else
  store i32 -22, ptr %err, align 4, !dbg !4992
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4994

if.end39:                                         ; preds = %lor.lhs.false35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4995
  br label %cleanup, !dbg !4995

cleanup:                                          ; preds = %if.then38, %if.end39
  call void @llvm.lifetime.end.p0(i64 4, ptr %inr) #13, !dbg !4995
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
    i32 4, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end40

if.end40:                                         ; preds = %cleanup.cont, %if.end30
  store i32 0, ptr %err, align 4, !dbg !4996
  br label %out, !dbg !4997

out:                                              ; preds = %if.end40, %cleanup, %do.end25, %do.end12, %do.end
  call void @llvm.dbg.label(metadata !4926), !dbg !4998
  %24 = load i32, ptr %err, align 4, !dbg !4999
  store i32 %24, ptr %retval, align 4, !dbg !5000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5000

cleanup41:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5001
  %25 = load i32, ptr %retval, align 4, !dbg !5001
  ret i32 %25, !dbg !5001
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_dev_ioctl(i32 noundef %cmd) #6 align 16 !dbg !4549 {
entry:
  %retval = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i32, align 4
  %_s = alloca i64, align 8
  %_mask = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4557, metadata !DIExpression()), !dbg !5002
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #13, !dbg !5003
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !4558, metadata !DIExpression()), !dbg !5004
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5005
  %conv = zext i32 %0 to i64, !dbg !5005
  %sub = sub i64 %conv, 113, !dbg !5005
  %conv1 = trunc i64 %sub to i32, !dbg !5005
  store i32 %conv1, ptr %idx, align 4, !dbg !5004
  %1 = load i32, ptr %idx, align 4, !dbg !5006
  %conv2 = zext i32 %1 to i64, !dbg !5006
  %cmp = icmp uge i64 %conv2, 14, !dbg !5008
  br i1 %cmp, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5010

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #13, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !4559, metadata !DIExpression()), !dbg !5011
  %2 = load i32, ptr %idx, align 4, !dbg !5011
  store i32 %2, ptr %_i, align 4, !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %_s) #13, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !4561, metadata !DIExpression()), !dbg !5011
  store i64 14, ptr %_s, align 8, !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #13, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !4562, metadata !DIExpression()), !dbg !5011
  %3 = load i32, ptr %_i, align 4, !dbg !5011
  %conv4 = zext i32 %3 to i64, !dbg !5011
  %4 = load i64, ptr %_s, align 8, !dbg !5011
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv4, i64 noundef %4) #14, !dbg !5011
  store i64 %call, ptr %_mask, align 8, !dbg !5011
  br label %do.body, !dbg !5011

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5012

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5012

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5011

do.body5:                                         ; preds = %do.end
  br label %do.cond6, !dbg !5014

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5014

do.end7:                                          ; preds = %do.cond6
  %5 = load i32, ptr %_i, align 4, !dbg !5011
  %conv8 = zext i32 %5 to i64, !dbg !5011
  %6 = load i64, ptr %_mask, align 8, !dbg !5011
  %and = and i64 %conv8, %6, !dbg !5011
  %conv9 = trunc i64 %and to i32, !dbg !5011
  store i32 %conv9, ptr %tmp, align 4, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #13, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 8, ptr %_s) #13, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #13, !dbg !5016
  %7 = load i32, ptr %tmp, align 4, !dbg !5011
  store i32 %7, ptr %idx, align 4, !dbg !5017
  %8 = load i32, ptr %idx, align 4, !dbg !5018
  %idxprom = zext i32 %8 to i64, !dbg !5019
  %arrayidx = getelementptr [14 x ptr], ptr @lookup_dev_ioctl._ioctls, i64 0, i64 %idxprom, !dbg !5019
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !5019
  store ptr %9, ptr %retval, align 8, !dbg !5020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5020

cleanup:                                          ; preds = %do.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #13, !dbg !5021
  %10 = load ptr, ptr %retval, align 8, !dbg !5021
  ret ptr %10, !dbg !5021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5022 dso_local ptr @fget(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #7 align 16 !dbg !5026 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5034
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5035
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5035
  ret ptr %1, !dbg !5036
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5037 dso_local void @fput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_sbi(ptr noundef %sb) #7 align 16 !dbg !5038 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !5044
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !5045
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !5045
  ret ptr %1, !dbg !5046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_oz_mode(ptr noundef %sbi) #7 align 16 !dbg !5047 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5053
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 8, !dbg !5054
  %1 = load i32, ptr %flags, align 8, !dbg !5054
  %and = and i32 %1, 1, !dbg !5055
  %tobool = icmp ne i32 %and, 0, !dbg !5055
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !5056

lor.rhs:                                          ; preds = %entry
  %call = call ptr @get_current() #14, !dbg !5057
  %call1 = call ptr @task_pgrp(ptr noundef %call) #14, !dbg !5058
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !5059
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %2, i32 0, i32 3, !dbg !5060
  %3 = load ptr, ptr %oz_pgrp, align 8, !dbg !5060
  %cmp = icmp eq ptr %call1, %3, !dbg !5061
  br label %lor.end, !dbg !5056

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !5056
  ret i32 %lor.ext, !dbg !5062
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !5063 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5068, metadata !DIExpression()), !dbg !5071
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5069, metadata !DIExpression()), !dbg !5072
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5070, metadata !DIExpression()), !dbg !5073
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5074
  %1 = load i64, ptr %n.addr, align 8, !dbg !5076
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #14, !dbg !5077
  br i1 %call, label %if.then, label %if.end, !dbg !5078

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5079
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5080
  %4 = load i64, ptr %n.addr, align 8, !dbg !5081
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !5082
  store i64 %call1, ptr %n.addr, align 8, !dbg !5083
  br label %if.end, !dbg !5084

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5085
  ret i64 %5, !dbg !5086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_dev_ioctl(ptr noundef %param) #7 align 16 !dbg !5087 {
entry:
  %param.addr = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5093
  call void @kfree(ptr noundef %0) #14, !dbg !5094
  ret void, !dbg !5095
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !5096 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5098, metadata !DIExpression()), !dbg !5101
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5104
  %1 = load i64, ptr %n.addr, align 8, !dbg !5106
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #14, !dbg !5107
  br i1 %call, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5109
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5110
  %4 = load i64, ptr %n.addr, align 8, !dbg !5111
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !5112
  store i64 %call1, ptr %n.addr, align 8, !dbg !5113
  br label %if.end, !dbg !5114

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5115
  ret i64 %5, !dbg !5116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #7 align 16 !dbg !5117 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load i64, ptr %error.addr, align 8, !dbg !5123
  %1 = inttoptr i64 %0 to ptr, !dbg !5124
  ret ptr %1, !dbg !5125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5126 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !5130 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5134, metadata !DIExpression()), !dbg !5144
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5135, metadata !DIExpression()), !dbg !5145
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5136, metadata !DIExpression()), !dbg !5146
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #13, !dbg !5147
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5137, metadata !DIExpression()), !dbg !5148
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5149
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5150
  %conv = trunc i64 %1 to i32, !dbg !5150
  store i32 %conv, ptr %sz, align 4, !dbg !5148
  %2 = load i32, ptr %sz, align 4, !dbg !5151
  %cmp = icmp sge i32 %2, 0, !dbg !5151
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5151

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5151
  %conv2 = sext i32 %3 to i64, !dbg !5151
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5151
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5153
  %lnot = xor i1 %5, true, !dbg !5151
  %lnot5 = xor i1 %lnot, true, !dbg !5151
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5151
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5151
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5151
  %tobool = icmp ne i64 %expval, 0, !dbg !5151
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5154

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5155
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5158
  br i1 %7, label %if.else, label %if.then7, !dbg !5159

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5160
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5161
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !5162
  br label %if.end11, !dbg !5162

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5163, !range !5165, !noundef !530
  %tobool8 = trunc i8 %10 to i1, !dbg !5163
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5166

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !5167, !srcloc !5168
  br label %if.end, !dbg !5167

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !5169, !srcloc !5170
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5171

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5138, metadata !DIExpression()), !dbg !5172
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5172
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5172
  %lnot15 = xor i1 %cmp13, true, !dbg !5172
  %lnot17 = xor i1 %lnot15, true, !dbg !5172
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5172
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5172
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5173
  %tobool19 = icmp ne i32 %12, 0, !dbg !5173
  %lnot20 = xor i1 %tobool19, true, !dbg !5173
  %lnot22 = xor i1 %lnot20, true, !dbg !5173
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5173
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5173
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5173
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5173
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5172

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5173

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5141, metadata !DIExpression()), !dbg !5174
  store i32 2307, ptr %__flags, align 4, !dbg !5174
  br label %do.body28, !dbg !5174

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5175

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5175

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5174

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5177
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #13, !dbg !5177, !srcloc !5179
  br label %do.cond30, !dbg !5177

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5177

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5174

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5180

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5180

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5173
  br label %do.cond35, !dbg !5174

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5174

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5174

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5172
  %tobool38 = icmp ne i32 %14, 0, !dbg !5172
  %lnot39 = xor i1 %tobool38, true, !dbg !5172
  %lnot41 = xor i1 %lnot39, true, !dbg !5172
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5172
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5172
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5172
  store i64 %expval44, ptr %tmp, align 8, !dbg !5173
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5182
  %15 = load i64, ptr %tmp, align 8, !dbg !5172
  %tobool45 = icmp ne i64 %15, 0, !dbg !5182
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5183

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5184

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5185
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5186
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5187, !range !5165, !noundef !530
  %tobool48 = trunc i8 %18 to i1, !dbg !5187
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !5188
  store i1 true, ptr %retval, align 1, !dbg !5189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5189

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #13, !dbg !5190
  %19 = load i1, ptr %retval, align 1, !dbg !5190
  ret i1 %19, !dbg !5190
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5191 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #7 align 16 !dbg !5192 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5196, metadata !DIExpression()), !dbg !5198
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5197, metadata !DIExpression()), !dbg !5199
  %0 = load i32, ptr %size.addr, align 4, !dbg !5200
  %1 = load i64, ptr %count.addr, align 8, !dbg !5202
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !5203
  ret void, !dbg !5204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5205 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5206 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #7 align 16 !dbg !5207 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5211, metadata !DIExpression()), !dbg !5214
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5212, metadata !DIExpression()), !dbg !5215
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5213, metadata !DIExpression()), !dbg !5216
  ret void, !dbg !5217
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5218 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_dev_ioctl_version(i32 noundef %cmd, ptr noundef %param) #6 align 16 !dbg !5219 {
entry:
  %cmd.addr = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5221, metadata !DIExpression()), !dbg !5224
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5222, metadata !DIExpression()), !dbg !5225
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5223, metadata !DIExpression()), !dbg !5227
  store i32 0, ptr %err, align 4, !dbg !5227
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5228
  %ver_major = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 0, !dbg !5230
  %1 = load i32, ptr %ver_major, align 8, !dbg !5230
  %cmp = icmp ne i32 %1, 1, !dbg !5231
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5232

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5233
  %ver_minor = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 1, !dbg !5234
  %3 = load i32, ptr %ver_minor, align 4, !dbg !5234
  %cmp1 = icmp ugt i32 %3, 1, !dbg !5235
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5236

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !5237

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5240

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5240

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #14, !dbg !5237
  %pid = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 62, !dbg !5237
  %4 = load i32, ptr %pid, align 8, !dbg !5237
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5237
  %ver_major2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %5, i32 0, i32 0, !dbg !5237
  %6 = load i32, ptr %ver_major2, align 8, !dbg !5237
  %7 = load ptr, ptr %param.addr, align 8, !dbg !5237
  %ver_minor3 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %7, i32 0, i32 1, !dbg !5237
  %8 = load i32, ptr %ver_minor3, align 4, !dbg !5237
  %9 = load i32, ptr %cmd.addr, align 4, !dbg !5237
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %4, ptr noundef @__func__.check_dev_ioctl_version, i32 noundef 1, i32 noundef 1, i32 noundef %6, i32 noundef %8, i32 noundef %9) #15, !dbg !5237
  store i32 %call4, ptr %tmp, align 4, !dbg !5240
  %10 = load i32, ptr %tmp, align 4, !dbg !5237
  store i32 -22, ptr %err, align 4, !dbg !5242
  br label %if.end, !dbg !5243

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %11 = load ptr, ptr %param.addr, align 8, !dbg !5244
  %ver_major5 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %11, i32 0, i32 0, !dbg !5245
  store i32 1, ptr %ver_major5, align 8, !dbg !5246
  %12 = load ptr, ptr %param.addr, align 8, !dbg !5247
  %ver_minor6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %12, i32 0, i32 1, !dbg !5248
  store i32 1, ptr %ver_minor6, align 4, !dbg !5249
  %13 = load i32, ptr %err, align 4, !dbg !5250
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5251
  ret i32 %13, !dbg !5252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @invalid_str(ptr noundef %str, i64 noundef %size) #6 align 16 !dbg !5253 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5257, metadata !DIExpression()), !dbg !5259
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5258, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5261
  %1 = load i64, ptr %size.addr, align 8, !dbg !5263
  %call = call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #14, !dbg !5264
  %tobool = icmp ne ptr %call, null, !dbg !5264
  br i1 %tobool, label %if.then, label %if.end, !dbg !5265

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5266
  br label %return, !dbg !5266

if.end:                                           ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5267
  br label %return, !dbg !5267

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5268
  ret i32 %2, !dbg !5268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_name(ptr noundef %name) #6 align 16 !dbg !5269 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5275
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 47) #14, !dbg !5277
  %tobool = icmp ne ptr %call, null, !dbg !5277
  br i1 %tobool, label %if.end, label %if.then, !dbg !5278

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5279
  br label %return, !dbg !5279

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5280
  br label %return, !dbg !5280

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5281
  ret i32 %1, !dbg !5281
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5282 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5285 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_version(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5288 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5290, metadata !DIExpression()), !dbg !5293
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5291, metadata !DIExpression()), !dbg !5294
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5292, metadata !DIExpression()), !dbg !5295
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5296
  %ver_major = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 0, !dbg !5297
  store i32 1, ptr %ver_major, align 8, !dbg !5298
  %1 = load ptr, ptr %param.addr, align 8, !dbg !5299
  %ver_minor = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %1, i32 0, i32 1, !dbg !5300
  store i32 1, ptr %ver_minor, align 4, !dbg !5301
  ret i32 0, !dbg !5302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_protover(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5303 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5305, metadata !DIExpression()), !dbg !5308
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5306, metadata !DIExpression()), !dbg !5309
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5307, metadata !DIExpression()), !dbg !5310
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5311
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 4, !dbg !5312
  %1 = load i32, ptr %version, align 8, !dbg !5312
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5313
  %3 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4, !dbg !5314
  %version1 = getelementptr inbounds %struct.args_protover, ptr %3, i32 0, i32 0, !dbg !5315
  store i32 %1, ptr %version1, align 8, !dbg !5316
  ret i32 0, !dbg !5317
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_protosubver(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5318 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5320, metadata !DIExpression()), !dbg !5323
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5321, metadata !DIExpression()), !dbg !5324
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5322, metadata !DIExpression()), !dbg !5325
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5326
  %sub_version = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 5, !dbg !5327
  %1 = load i32, ptr %sub_version, align 4, !dbg !5327
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5328
  %3 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %2, i32 0, i32 4, !dbg !5329
  %sub_version1 = getelementptr inbounds %struct.args_protosubver, ptr %3, i32 0, i32 0, !dbg !5330
  store i32 %1, ptr %sub_version1, align 8, !dbg !5331
  ret i32 0, !dbg !5332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_openmount(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5333 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %path = alloca ptr, align 8
  %devid = alloca i32, align 4
  %err = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5335, metadata !DIExpression()), !dbg !5343
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5336, metadata !DIExpression()), !dbg !5344
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5337, metadata !DIExpression()), !dbg !5345
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #13, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5338, metadata !DIExpression()), !dbg !5347
  call void @llvm.lifetime.start.p0(i64 4, ptr %devid) #13, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !5339, metadata !DIExpression()), !dbg !5349
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5340, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !5350
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !5341, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5353
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5355
  %devid1 = getelementptr inbounds %struct.args_openmount, ptr %1, i32 0, i32 0, !dbg !5356
  %2 = load i32, ptr %devid1, align 8, !dbg !5356
  %tobool = icmp ne i32 %2, 0, !dbg !5353
  br i1 %tobool, label %if.end, label %if.then, !dbg !5357

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5358

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5359
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %3, i32 0, i32 3, !dbg !5360
  store i32 -1, ptr %ioctlfd, align 4, !dbg !5361
  %4 = load ptr, ptr %param.addr, align 8, !dbg !5362
  %path2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %4, i32 0, i32 5, !dbg !5363
  %arraydecay = getelementptr inbounds [0 x i8], ptr %path2, i64 0, i64 0, !dbg !5362
  store ptr %arraydecay, ptr %path, align 8, !dbg !5364
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5365
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %5, i32 0, i32 4, !dbg !5366
  %devid3 = getelementptr inbounds %struct.args_openmount, ptr %6, i32 0, i32 0, !dbg !5367
  %7 = load i32, ptr %devid3, align 8, !dbg !5367
  %call = call i32 @new_decode_dev(i32 noundef %7) #14, !dbg !5368
  store i32 %call, ptr %devid, align 4, !dbg !5369
  store i32 0, ptr %err, align 4, !dbg !5370
  %8 = load ptr, ptr %path, align 8, !dbg !5371
  %9 = load i32, ptr %devid, align 4, !dbg !5372
  %call4 = call i32 @autofs_dev_ioctl_open_mountpoint(ptr noundef %8, i32 noundef %9) #14, !dbg !5373
  store i32 %call4, ptr %fd, align 4, !dbg !5374
  %10 = load i32, ptr %fd, align 4, !dbg !5375
  %cmp = icmp slt i32 %10, 0, !dbg !5375
  %lnot = xor i1 %cmp, true, !dbg !5375
  %lnot5 = xor i1 %lnot, true, !dbg !5375
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5375
  %conv = sext i32 %lnot.ext to i64, !dbg !5375
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5375
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5375
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5377

if.then7:                                         ; preds = %if.end
  %11 = load i32, ptr %fd, align 4, !dbg !5378
  store i32 %11, ptr %err, align 4, !dbg !5380
  br label %out, !dbg !5381

if.end8:                                          ; preds = %if.end
  %12 = load i32, ptr %fd, align 4, !dbg !5382
  %13 = load ptr, ptr %param.addr, align 8, !dbg !5383
  %ioctlfd9 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %13, i32 0, i32 3, !dbg !5384
  store i32 %12, ptr %ioctlfd9, align 4, !dbg !5385
  br label %out, !dbg !5383

out:                                              ; preds = %if.end8, %if.then7
  call void @llvm.dbg.label(metadata !5342), !dbg !5386
  %14 = load i32, ptr %err, align 4, !dbg !5387
  store i32 %14, ptr %retval, align 4, !dbg !5388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5388

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 4, ptr %devid) #13, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #13, !dbg !5389
  %15 = load i32, ptr %retval, align 4, !dbg !5389
  ret i32 %15, !dbg !5389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_closemount(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5390 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5392, metadata !DIExpression()), !dbg !5395
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5393, metadata !DIExpression()), !dbg !5396
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5394, metadata !DIExpression()), !dbg !5397
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5398
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 3, !dbg !5399
  %1 = load i32, ptr %ioctlfd, align 4, !dbg !5399
  %call = call i32 @close_fd(i32 noundef %1) #14, !dbg !5400
  ret i32 %call, !dbg !5401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_ready(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5402 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %token = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5404, metadata !DIExpression()), !dbg !5408
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5405, metadata !DIExpression()), !dbg !5409
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5406, metadata !DIExpression()), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #13, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %token, metadata !5407, metadata !DIExpression()), !dbg !5412
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5413
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5414
  %token1 = getelementptr inbounds %struct.args_ready, ptr %1, i32 0, i32 0, !dbg !5415
  %2 = load i32, ptr %token1, align 8, !dbg !5415
  store i32 %2, ptr %token, align 4, !dbg !5416
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !5417
  %4 = load i32, ptr %token, align 4, !dbg !5418
  %call = call i32 @autofs_wait_release(ptr noundef %3, i32 noundef %4, i32 noundef 0) #14, !dbg !5419
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #13, !dbg !5420
  ret i32 %call, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_fail(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5422 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %token = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5424, metadata !DIExpression()), !dbg !5429
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5425, metadata !DIExpression()), !dbg !5430
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5426, metadata !DIExpression()), !dbg !5431
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #13, !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %token, metadata !5427, metadata !DIExpression()), !dbg !5433
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5428, metadata !DIExpression()), !dbg !5435
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5436
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5437
  %token1 = getelementptr inbounds %struct.args_fail, ptr %1, i32 0, i32 0, !dbg !5438
  %2 = load i32, ptr %token1, align 8, !dbg !5438
  store i32 %2, ptr %token, align 4, !dbg !5439
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5440
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %3, i32 0, i32 4, !dbg !5441
  %status2 = getelementptr inbounds %struct.args_fail, ptr %4, i32 0, i32 1, !dbg !5442
  %5 = load i32, ptr %status2, align 4, !dbg !5442
  %cmp = icmp slt i32 %5, 0, !dbg !5443
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5440

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %param.addr, align 8, !dbg !5444
  %7 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %6, i32 0, i32 4, !dbg !5445
  %status3 = getelementptr inbounds %struct.args_fail, ptr %7, i32 0, i32 1, !dbg !5446
  %8 = load i32, ptr %status3, align 4, !dbg !5446
  br label %cond.end, !dbg !5440

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5440

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -2, %cond.false ], !dbg !5440
  store i32 %cond, ptr %status, align 4, !dbg !5447
  %9 = load ptr, ptr %sbi.addr, align 8, !dbg !5448
  %10 = load i32, ptr %token, align 4, !dbg !5449
  %11 = load i32, ptr %status, align 4, !dbg !5450
  %call = call i32 @autofs_wait_release(ptr noundef %9, i32 noundef %10, i32 noundef %11) #14, !dbg !5451
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !5452
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #13, !dbg !5452
  ret i32 %call, !dbg !5453
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_setpipefd(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5454 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %pipefd = alloca i32, align 4
  %err = alloca i32, align 4
  %new_pid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pipe = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5456, metadata !DIExpression()), !dbg !5468
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5457, metadata !DIExpression()), !dbg !5469
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5458, metadata !DIExpression()), !dbg !5470
  call void @llvm.lifetime.start.p0(i64 4, ptr %pipefd) #13, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %pipefd, metadata !5459, metadata !DIExpression()), !dbg !5472
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5473
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5460, metadata !DIExpression()), !dbg !5474
  store i32 0, ptr %err, align 4, !dbg !5474
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_pid) #13, !dbg !5475
  call void @llvm.dbg.declare(metadata ptr %new_pid, metadata !5461, metadata !DIExpression()), !dbg !5476
  store ptr null, ptr %new_pid, align 8, !dbg !5476
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5477
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5479
  %pipefd1 = getelementptr inbounds %struct.args_setpipefd, ptr %1, i32 0, i32 0, !dbg !5480
  %2 = load i32, ptr %pipefd1, align 8, !dbg !5480
  %cmp = icmp eq i32 %2, -1, !dbg !5481
  br i1 %cmp, label %if.then, label %if.end, !dbg !5482

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !5483

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5484
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %3, i32 0, i32 4, !dbg !5485
  %pipefd2 = getelementptr inbounds %struct.args_setpipefd, ptr %4, i32 0, i32 0, !dbg !5486
  %5 = load i32, ptr %pipefd2, align 8, !dbg !5486
  store i32 %5, ptr %pipefd, align 4, !dbg !5487
  %6 = load ptr, ptr %sbi.addr, align 8, !dbg !5488
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 12, !dbg !5489
  call void @mutex_lock(ptr noundef %wq_mutex) #14, !dbg !5490
  %7 = load ptr, ptr %sbi.addr, align 8, !dbg !5491
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %7, i32 0, i32 8, !dbg !5492
  %8 = load i32, ptr %flags, align 8, !dbg !5492
  %and = and i32 %8, 1, !dbg !5493
  %tobool = icmp ne i32 %and, 0, !dbg !5493
  br i1 %tobool, label %if.else, label %if.then3, !dbg !5494

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %sbi.addr, align 8, !dbg !5495
  %wq_mutex4 = getelementptr inbounds %struct.autofs_sb_info, ptr %9, i32 0, i32 12, !dbg !5497
  call void @mutex_unlock(ptr noundef %wq_mutex4) #14, !dbg !5498
  store i32 -16, ptr %retval, align 4, !dbg !5499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !5499

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pipe) #13, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %pipe, metadata !5462, metadata !DIExpression()), !dbg !5501
  %call = call ptr @get_current() #14, !dbg !5502
  %call5 = call ptr @get_task_pid(ptr noundef %call, i32 noundef 2) #14, !dbg !5503
  store ptr %call5, ptr %new_pid, align 8, !dbg !5504
  %10 = load ptr, ptr %new_pid, align 8, !dbg !5505
  %call6 = call ptr @ns_of_pid(ptr noundef %10) #14, !dbg !5507
  %11 = load ptr, ptr %sbi.addr, align 8, !dbg !5508
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 3, !dbg !5509
  %12 = load ptr, ptr %oz_pgrp, align 8, !dbg !5509
  %call7 = call ptr @ns_of_pid(ptr noundef %12) #14, !dbg !5510
  %cmp8 = icmp ne ptr %call6, %call7, !dbg !5511
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !5512

if.then9:                                         ; preds = %if.else
  br label %do.body, !dbg !5513

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !5516

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5516

do.end:                                           ; preds = %do.cond
  %call10 = call ptr @get_current() #14, !dbg !5513
  %pid = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 62, !dbg !5513
  %13 = load i32, ptr %pid, align 8, !dbg !5513
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %13, ptr noundef @__func__.autofs_dev_ioctl_setpipefd) #15, !dbg !5513
  store i32 %call11, ptr %tmp, align 4, !dbg !5516
  %14 = load i32, ptr %tmp, align 4, !dbg !5513
  store i32 -22, ptr %err, align 4, !dbg !5518
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

if.end12:                                         ; preds = %if.else
  %15 = load i32, ptr %pipefd, align 4, !dbg !5520
  %call13 = call ptr @fget(i32 noundef %15) #14, !dbg !5521
  store ptr %call13, ptr %pipe, align 8, !dbg !5522
  %16 = load ptr, ptr %pipe, align 8, !dbg !5523
  %tobool14 = icmp ne ptr %16, null, !dbg !5523
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5525

if.then15:                                        ; preds = %if.end12
  store i32 -9, ptr %err, align 4, !dbg !5526
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5528

if.end16:                                         ; preds = %if.end12
  %17 = load ptr, ptr %pipe, align 8, !dbg !5529
  %call17 = call i32 @autofs_prepare_pipe(ptr noundef %17) #14, !dbg !5531
  %cmp18 = icmp slt i32 %call17, 0, !dbg !5532
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5533

if.then19:                                        ; preds = %if.end16
  store i32 -32, ptr %err, align 4, !dbg !5534
  %18 = load ptr, ptr %pipe, align 8, !dbg !5536
  call void @fput(ptr noundef %18) #14, !dbg !5537
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5538

if.end20:                                         ; preds = %if.end16
  br label %do.body21, !dbg !5539

do.body21:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #13, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5465, metadata !DIExpression()), !dbg !5540
  %19 = load ptr, ptr %sbi.addr, align 8, !dbg !5540
  %oz_pgrp22 = getelementptr inbounds %struct.autofs_sb_info, ptr %19, i32 0, i32 3, !dbg !5540
  %20 = load ptr, ptr %oz_pgrp22, align 8, !dbg !5540
  store ptr %20, ptr %__tmp, align 8, !dbg !5540
  %21 = load ptr, ptr %new_pid, align 8, !dbg !5540
  %22 = load ptr, ptr %sbi.addr, align 8, !dbg !5540
  %oz_pgrp23 = getelementptr inbounds %struct.autofs_sb_info, ptr %22, i32 0, i32 3, !dbg !5540
  store ptr %21, ptr %oz_pgrp23, align 8, !dbg !5540
  %23 = load ptr, ptr %__tmp, align 8, !dbg !5540
  store ptr %23, ptr %new_pid, align 8, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #13, !dbg !5539
  br label %do.cond24, !dbg !5540

do.cond24:                                        ; preds = %do.body21
  br label %do.end25, !dbg !5540

do.end25:                                         ; preds = %do.cond24
  %24 = load i32, ptr %pipefd, align 4, !dbg !5541
  %25 = load ptr, ptr %sbi.addr, align 8, !dbg !5542
  %pipefd26 = getelementptr inbounds %struct.autofs_sb_info, ptr %25, i32 0, i32 1, !dbg !5543
  store i32 %24, ptr %pipefd26, align 4, !dbg !5544
  %26 = load ptr, ptr %pipe, align 8, !dbg !5545
  %27 = load ptr, ptr %sbi.addr, align 8, !dbg !5546
  %pipe27 = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 2, !dbg !5547
  store ptr %26, ptr %pipe27, align 8, !dbg !5548
  %28 = load ptr, ptr %sbi.addr, align 8, !dbg !5549
  %flags28 = getelementptr inbounds %struct.autofs_sb_info, ptr %28, i32 0, i32 8, !dbg !5550
  %29 = load i32, ptr %flags28, align 8, !dbg !5551
  %and29 = and i32 %29, -2, !dbg !5551
  store i32 %and29, ptr %flags28, align 8, !dbg !5551
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5552
  br label %cleanup, !dbg !5552

cleanup:                                          ; preds = %if.then19, %if.then15, %do.end, %do.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %pipe) #13, !dbg !5552
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 4, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end30

if.end30:                                         ; preds = %cleanup.cont
  br label %out, !dbg !5553

out:                                              ; preds = %if.end30, %cleanup
  call void @llvm.dbg.label(metadata !5467), !dbg !5554
  %30 = load ptr, ptr %new_pid, align 8, !dbg !5555
  call void @put_pid(ptr noundef %30) #14, !dbg !5556
  %31 = load ptr, ptr %sbi.addr, align 8, !dbg !5557
  %wq_mutex31 = getelementptr inbounds %struct.autofs_sb_info, ptr %31, i32 0, i32 12, !dbg !5558
  call void @mutex_unlock(ptr noundef %wq_mutex31) #14, !dbg !5559
  %32 = load i32, ptr %err, align 4, !dbg !5560
  store i32 %32, ptr %retval, align 4, !dbg !5561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !5561

cleanup32:                                        ; preds = %out, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_pid) #13, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 4, ptr %pipefd) #13, !dbg !5562
  %33 = load i32, ptr %retval, align 4, !dbg !5562
  ret i32 %33, !dbg !5562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_catatonic(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5563 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5565, metadata !DIExpression()), !dbg !5568
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5566, metadata !DIExpression()), !dbg !5569
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5567, metadata !DIExpression()), !dbg !5570
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5571
  call void @autofs_catatonic_mode(ptr noundef %0) #14, !dbg !5572
  ret i32 0, !dbg !5573
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_timeout(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5574 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %timeout = alloca i64, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5576, metadata !DIExpression()), !dbg !5580
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5577, metadata !DIExpression()), !dbg !5581
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5578, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #13, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !5579, metadata !DIExpression()), !dbg !5584
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5585
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5586
  %timeout1 = getelementptr inbounds %struct.args_timeout, ptr %1, i32 0, i32 0, !dbg !5587
  %2 = load i64, ptr %timeout1, align 8, !dbg !5587
  store i64 %2, ptr %timeout, align 8, !dbg !5588
  %3 = load ptr, ptr %sbi.addr, align 8, !dbg !5589
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 9, !dbg !5590
  %4 = load i64, ptr %exp_timeout, align 8, !dbg !5590
  %div = udiv i64 %4, 1000, !dbg !5591
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5592
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %5, i32 0, i32 4, !dbg !5593
  %timeout2 = getelementptr inbounds %struct.args_timeout, ptr %6, i32 0, i32 0, !dbg !5594
  store i64 %div, ptr %timeout2, align 8, !dbg !5595
  %7 = load i64, ptr %timeout, align 8, !dbg !5596
  %mul = mul i64 %7, 1000, !dbg !5597
  %8 = load ptr, ptr %sbi.addr, align 8, !dbg !5598
  %exp_timeout3 = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 9, !dbg !5599
  store i64 %mul, ptr %exp_timeout3, align 8, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #13, !dbg !5601
  ret i32 0, !dbg !5602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_requester(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5603 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %devid = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5605, metadata !DIExpression()), !dbg !5613
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5606, metadata !DIExpression()), !dbg !5614
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5607, metadata !DIExpression()), !dbg !5615
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #13, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !5608, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5609, metadata !DIExpression()), !dbg !5619
  call void @llvm.lifetime.start.p0(i64 4, ptr %devid) #13, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !5610, metadata !DIExpression()), !dbg !5621
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5611, metadata !DIExpression()), !dbg !5623
  store i32 -2, ptr %err, align 4, !dbg !5623
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5624
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 11, !dbg !5625
  %1 = load ptr, ptr %sb, align 8, !dbg !5625
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1, !dbg !5626
  %2 = load i32, ptr %s_dev, align 16, !dbg !5626
  store i32 %2, ptr %devid, align 4, !dbg !5627
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5628
  %4 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %3, i32 0, i32 4, !dbg !5629
  %gid = getelementptr inbounds %struct.args_requester, ptr %4, i32 0, i32 1, !dbg !5630
  store i32 -1, ptr %gid, align 4, !dbg !5631
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5632
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %5, i32 0, i32 4, !dbg !5633
  %uid = getelementptr inbounds %struct.args_requester, ptr %6, i32 0, i32 0, !dbg !5634
  store i32 -1, ptr %uid, align 8, !dbg !5635
  %7 = load ptr, ptr %param.addr, align 8, !dbg !5636
  %path1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %7, i32 0, i32 5, !dbg !5637
  %arraydecay = getelementptr inbounds [0 x i8], ptr %path1, i64 0, i64 0, !dbg !5636
  %call = call i32 @find_autofs_mount(ptr noundef %arraydecay, ptr noundef %path, ptr noundef @test_by_dev, ptr noundef %devid) #14, !dbg !5638
  store i32 %call, ptr %err, align 4, !dbg !5639
  %8 = load i32, ptr %err, align 4, !dbg !5640
  %tobool = icmp ne i32 %8, 0, !dbg !5640
  br i1 %tobool, label %if.then, label %if.end, !dbg !5642

if.then:                                          ; preds = %entry
  br label %out, !dbg !5643

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5644
  %9 = load ptr, ptr %dentry, align 8, !dbg !5644
  %call2 = call ptr @autofs_dentry_ino(ptr noundef %9) #14, !dbg !5645
  store ptr %call2, ptr %ino, align 8, !dbg !5646
  %10 = load ptr, ptr %ino, align 8, !dbg !5647
  %tobool3 = icmp ne ptr %10, null, !dbg !5647
  br i1 %tobool3, label %if.then4, label %if.end16, !dbg !5649

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %err, align 4, !dbg !5650
  %call5 = call i32 @autofs_expire_wait(ptr noundef %path, i32 noundef 0) #14, !dbg !5652
  %11 = load ptr, ptr %sbi.addr, align 8, !dbg !5653
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 14, !dbg !5654
  call void @spin_lock(ptr noundef %fs_lock) #14, !dbg !5655
  %call6 = call ptr @current_user_ns() #14, !dbg !5656
  %12 = load ptr, ptr %ino, align 8, !dbg !5657
  %uid7 = getelementptr inbounds %struct.autofs_info, ptr %12, i32 0, i32 8, !dbg !5658
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid7, i32 0, i32 0, !dbg !5659
  %13 = load i32, ptr %coerce.dive, align 4, !dbg !5659
  %call8 = call i32 @from_kuid_munged(ptr noundef %call6, i32 %13) #14, !dbg !5659
  %14 = load ptr, ptr %param.addr, align 8, !dbg !5660
  %15 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %14, i32 0, i32 4, !dbg !5661
  %uid9 = getelementptr inbounds %struct.args_requester, ptr %15, i32 0, i32 0, !dbg !5662
  store i32 %call8, ptr %uid9, align 8, !dbg !5663
  %call10 = call ptr @current_user_ns() #14, !dbg !5664
  %16 = load ptr, ptr %ino, align 8, !dbg !5665
  %gid11 = getelementptr inbounds %struct.autofs_info, ptr %16, i32 0, i32 9, !dbg !5666
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %gid11, i32 0, i32 0, !dbg !5667
  %17 = load i32, ptr %coerce.dive12, align 8, !dbg !5667
  %call13 = call i32 @from_kgid_munged(ptr noundef %call10, i32 %17) #14, !dbg !5667
  %18 = load ptr, ptr %param.addr, align 8, !dbg !5668
  %19 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %18, i32 0, i32 4, !dbg !5669
  %gid14 = getelementptr inbounds %struct.args_requester, ptr %19, i32 0, i32 1, !dbg !5670
  store i32 %call13, ptr %gid14, align 4, !dbg !5671
  %20 = load ptr, ptr %sbi.addr, align 8, !dbg !5672
  %fs_lock15 = getelementptr inbounds %struct.autofs_sb_info, ptr %20, i32 0, i32 14, !dbg !5673
  call void @spin_unlock(ptr noundef %fs_lock15) #14, !dbg !5674
  br label %if.end16, !dbg !5675

if.end16:                                         ; preds = %if.then4, %if.end
  call void @path_put(ptr noundef %path) #14, !dbg !5676
  br label %out, !dbg !5676

out:                                              ; preds = %if.end16, %if.then
  call void @llvm.dbg.label(metadata !5612), !dbg !5677
  %21 = load i32, ptr %err, align 4, !dbg !5678
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 4, ptr %devid) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #13, !dbg !5679
  ret i32 %21, !dbg !5680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_expire(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5681 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %mnt = alloca ptr, align 8
  %how = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5683, metadata !DIExpression()), !dbg !5688
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5684, metadata !DIExpression()), !dbg !5689
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5685, metadata !DIExpression()), !dbg !5690
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #13, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !5686, metadata !DIExpression()), !dbg !5692
  call void @llvm.lifetime.start.p0(i64 4, ptr %how) #13, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %how, metadata !5687, metadata !DIExpression()), !dbg !5694
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5695
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5696
  %how1 = getelementptr inbounds %struct.args_expire, ptr %1, i32 0, i32 0, !dbg !5697
  %2 = load i32, ptr %how1, align 8, !dbg !5697
  store i32 %2, ptr %how, align 4, !dbg !5698
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !5699
  %f_path = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 10, !dbg !5700
  %mnt2 = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !5701
  %4 = load ptr, ptr %mnt2, align 8, !dbg !5701
  store ptr %4, ptr %mnt, align 8, !dbg !5702
  %5 = load ptr, ptr %sbi.addr, align 8, !dbg !5703
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 11, !dbg !5704
  %6 = load ptr, ptr %sb, align 8, !dbg !5704
  %7 = load ptr, ptr %mnt, align 8, !dbg !5705
  %8 = load ptr, ptr %sbi.addr, align 8, !dbg !5706
  %9 = load i32, ptr %how, align 4, !dbg !5707
  %call = call i32 @autofs_do_expire_multi(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) #14, !dbg !5708
  call void @llvm.lifetime.end.p0(i64 4, ptr %how) #13, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #13, !dbg !5709
  ret i32 %call, !dbg !5710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_askumount(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5711 {
entry:
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5713, metadata !DIExpression()), !dbg !5716
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5714, metadata !DIExpression()), !dbg !5717
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5715, metadata !DIExpression()), !dbg !5718
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5719
  %1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 4, !dbg !5720
  %may_umount = getelementptr inbounds %struct.args_askumount, ptr %1, i32 0, i32 0, !dbg !5721
  store i32 0, ptr %may_umount, align 8, !dbg !5722
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !5723
  %f_path = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 10, !dbg !5725
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !5726
  %3 = load ptr, ptr %mnt, align 8, !dbg !5726
  %call = call i32 @may_umount(ptr noundef %3) #14, !dbg !5727
  %tobool = icmp ne i32 %call, 0, !dbg !5727
  br i1 %tobool, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %param.addr, align 8, !dbg !5729
  %5 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %4, i32 0, i32 4, !dbg !5730
  %may_umount1 = getelementptr inbounds %struct.args_askumount, ptr %5, i32 0, i32 0, !dbg !5731
  store i32 1, ptr %may_umount1, align 8, !dbg !5732
  br label %if.end, !dbg !5729

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5733
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_ismountpoint(ptr noundef %fp, ptr noundef %sbi, ptr noundef %param) #6 align 16 !dbg !5734 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %sbi.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %name = alloca ptr, align 8
  %type = alloca i32, align 4
  %devid = alloca i32, align 4
  %magic = alloca i32, align 4
  %err = alloca i32, align 4
  %dev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5736, metadata !DIExpression()), !dbg !5749
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5737, metadata !DIExpression()), !dbg !5750
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5738, metadata !DIExpression()), !dbg !5751
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5739, metadata !DIExpression()), !dbg !5753
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #13, !dbg !5754
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5740, metadata !DIExpression()), !dbg !5755
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #13, !dbg !5756
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5741, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 4, ptr %devid) #13, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !5742, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic) #13, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %magic, metadata !5743, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5761
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5744, metadata !DIExpression()), !dbg !5762
  store i32 -2, ptr %err, align 4, !dbg !5762
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5763
  %path1 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %0, i32 0, i32 5, !dbg !5764
  %arraydecay = getelementptr inbounds [0 x i8], ptr %path1, i64 0, i64 0, !dbg !5763
  store ptr %arraydecay, ptr %name, align 8, !dbg !5765
  %1 = load ptr, ptr %param.addr, align 8, !dbg !5766
  %2 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %1, i32 0, i32 4, !dbg !5767
  %3 = getelementptr inbounds %struct.args_ismountpoint, ptr %2, i32 0, i32 0, !dbg !5768
  %type2 = getelementptr inbounds %struct.args_in, ptr %3, i32 0, i32 0, !dbg !5769
  %4 = load i32, ptr %type2, align 8, !dbg !5769
  store i32 %4, ptr %type, align 4, !dbg !5770
  store i32 0, ptr %devid, align 4, !dbg !5771
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5772
  %6 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %5, i32 0, i32 4, !dbg !5773
  %7 = getelementptr inbounds %struct.args_ismountpoint, ptr %6, i32 0, i32 0, !dbg !5774
  %devid3 = getelementptr inbounds %struct.args_out, ptr %7, i32 0, i32 0, !dbg !5775
  store i32 0, ptr %devid3, align 8, !dbg !5776
  store i32 0, ptr %magic, align 4, !dbg !5777
  %8 = load ptr, ptr %param.addr, align 8, !dbg !5778
  %9 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %8, i32 0, i32 4, !dbg !5779
  %10 = getelementptr inbounds %struct.args_ismountpoint, ptr %9, i32 0, i32 0, !dbg !5780
  %magic4 = getelementptr inbounds %struct.args_out, ptr %10, i32 0, i32 1, !dbg !5781
  store i32 0, ptr %magic4, align 4, !dbg !5782
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !5783
  %tobool = icmp ne ptr %11, null, !dbg !5783
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5784

lor.lhs.false:                                    ; preds = %entry
  %12 = load ptr, ptr %param.addr, align 8, !dbg !5785
  %ioctlfd = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %12, i32 0, i32 3, !dbg !5786
  %13 = load i32, ptr %ioctlfd, align 4, !dbg !5786
  %cmp = icmp eq i32 %13, -1, !dbg !5787
  br i1 %cmp, label %if.then, label %if.else19, !dbg !5788

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load i32, ptr %type, align 4, !dbg !5789
  %call = call i32 @autofs_type_any(i32 noundef %14) #14, !dbg !5792
  %tobool5 = icmp ne i32 %call, 0, !dbg !5792
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5793

if.then6:                                         ; preds = %if.then
  %15 = load ptr, ptr %name, align 8, !dbg !5794
  %call7 = call i32 @kern_path(ptr noundef %15, i32 noundef 129, ptr noundef %path) #14, !dbg !5795
  store i32 %call7, ptr %err, align 4, !dbg !5796
  br label %if.end, !dbg !5797

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %name, align 8, !dbg !5798
  %call8 = call i32 @find_autofs_mount(ptr noundef %16, ptr noundef %path, ptr noundef @test_by_type, ptr noundef %type) #14, !dbg !5799
  store i32 %call8, ptr %err, align 4, !dbg !5800
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %17 = load i32, ptr %err, align 4, !dbg !5801
  %tobool9 = icmp ne i32 %17, 0, !dbg !5801
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5803

if.then10:                                        ; preds = %if.end
  br label %out, !dbg !5804

if.end11:                                         ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5805
  %18 = load ptr, ptr %dentry, align 8, !dbg !5805
  %d_sb = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 9, !dbg !5806
  %19 = load ptr, ptr %d_sb, align 8, !dbg !5806
  %s_dev = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 1, !dbg !5807
  %20 = load i32, ptr %s_dev, align 16, !dbg !5807
  %call12 = call i32 @new_encode_dev(i32 noundef %20) #14, !dbg !5808
  store i32 %call12, ptr %devid, align 4, !dbg !5809
  store i32 0, ptr %err, align 4, !dbg !5810
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !5811
  %21 = load ptr, ptr %mnt, align 8, !dbg !5811
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %21, i32 0, i32 0, !dbg !5813
  %22 = load ptr, ptr %mnt_root, align 8, !dbg !5813
  %dentry13 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5814
  %23 = load ptr, ptr %dentry13, align 8, !dbg !5814
  %cmp14 = icmp eq ptr %22, %23, !dbg !5815
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !5816

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %err, align 4, !dbg !5817
  %dentry16 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5819
  %24 = load ptr, ptr %dentry16, align 8, !dbg !5819
  %d_sb17 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 9, !dbg !5820
  %25 = load ptr, ptr %d_sb17, align 8, !dbg !5820
  %s_magic = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 12, !dbg !5821
  %26 = load i64, ptr %s_magic, align 32, !dbg !5821
  %conv = trunc i64 %26 to i32, !dbg !5822
  store i32 %conv, ptr %magic, align 4, !dbg !5823
  br label %if.end18, !dbg !5824

if.end18:                                         ; preds = %if.then15, %if.end11
  br label %if.end35, !dbg !5825

if.else19:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #13, !dbg !5826
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5745, metadata !DIExpression()), !dbg !5827
  %27 = load ptr, ptr %sbi.addr, align 8, !dbg !5828
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 11, !dbg !5829
  %28 = load ptr, ptr %sb, align 8, !dbg !5829
  %s_dev20 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1, !dbg !5830
  %29 = load i32, ptr %s_dev20, align 16, !dbg !5830
  store i32 %29, ptr %dev, align 4, !dbg !5827
  %30 = load ptr, ptr %name, align 8, !dbg !5831
  %call21 = call i32 @find_autofs_mount(ptr noundef %30, ptr noundef %path, ptr noundef @test_by_dev, ptr noundef %dev) #14, !dbg !5832
  store i32 %call21, ptr %err, align 4, !dbg !5833
  %31 = load i32, ptr %err, align 4, !dbg !5834
  %tobool22 = icmp ne i32 %31, 0, !dbg !5834
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5836

if.then23:                                        ; preds = %if.else19
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5837

if.end24:                                         ; preds = %if.else19
  %32 = load i32, ptr %dev, align 4, !dbg !5838
  %call25 = call i32 @new_encode_dev(i32 noundef %32) #14, !dbg !5839
  store i32 %call25, ptr %devid, align 4, !dbg !5840
  %call26 = call i32 @path_has_submounts(ptr noundef %path) #14, !dbg !5841
  store i32 %call26, ptr %err, align 4, !dbg !5842
  %call27 = call i32 @follow_down_one(ptr noundef %path) #14, !dbg !5843
  %tobool28 = icmp ne i32 %call27, 0, !dbg !5843
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !5845

if.then29:                                        ; preds = %if.end24
  %dentry30 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !5846
  %33 = load ptr, ptr %dentry30, align 8, !dbg !5846
  %d_sb31 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 9, !dbg !5847
  %34 = load ptr, ptr %d_sb31, align 8, !dbg !5847
  %s_magic32 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 12, !dbg !5848
  %35 = load i64, ptr %s_magic32, align 32, !dbg !5848
  %conv33 = trunc i64 %35 to i32, !dbg !5849
  store i32 %conv33, ptr %magic, align 4, !dbg !5850
  br label %if.end34, !dbg !5851

if.end34:                                         ; preds = %if.then29, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5852
  br label %cleanup, !dbg !5852

cleanup:                                          ; preds = %if.then23, %if.end34
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #13, !dbg !5852
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup38 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end35

if.end35:                                         ; preds = %cleanup.cont, %if.end18
  %36 = load i32, ptr %devid, align 4, !dbg !5853
  %37 = load ptr, ptr %param.addr, align 8, !dbg !5854
  %38 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %37, i32 0, i32 4, !dbg !5855
  %39 = getelementptr inbounds %struct.args_ismountpoint, ptr %38, i32 0, i32 0, !dbg !5856
  %devid36 = getelementptr inbounds %struct.args_out, ptr %39, i32 0, i32 0, !dbg !5857
  store i32 %36, ptr %devid36, align 8, !dbg !5858
  %40 = load i32, ptr %magic, align 4, !dbg !5859
  %41 = load ptr, ptr %param.addr, align 8, !dbg !5860
  %42 = getelementptr inbounds %struct.autofs_dev_ioctl, ptr %41, i32 0, i32 4, !dbg !5861
  %43 = getelementptr inbounds %struct.args_ismountpoint, ptr %42, i32 0, i32 0, !dbg !5862
  %magic37 = getelementptr inbounds %struct.args_out, ptr %43, i32 0, i32 1, !dbg !5863
  store i32 %40, ptr %magic37, align 4, !dbg !5864
  call void @path_put(ptr noundef %path) #14, !dbg !5865
  br label %out, !dbg !5865

out:                                              ; preds = %if.end35, %cleanup, %if.then10
  call void @llvm.dbg.label(metadata !5748), !dbg !5866
  %44 = load i32, ptr %err, align 4, !dbg !5867
  store i32 %44, ptr %retval, align 4, !dbg !5868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !5868

cleanup38:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic) #13, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 4, ptr %devid) #13, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #13, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #13, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !5869
  %45 = load i32, ptr %retval, align 4, !dbg !5869
  ret i32 %45, !dbg !5869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #7 align 16 !dbg !5870 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5875, metadata !DIExpression()), !dbg !5878
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5876, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5877, metadata !DIExpression()), !dbg !5881
  %0 = load i64, ptr %size.addr, align 8, !dbg !5882
  %1 = load i64, ptr %index.addr, align 8, !dbg !5883
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #13, !dbg !5884, !srcloc !5885
  store i64 %2, ptr %mask, align 8, !dbg !5884
  %3 = load i64, ptr %mask, align 8, !dbg !5886
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !5887
  ret i64 %3, !dbg !5888
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #5 align 16 !dbg !5889 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5894, metadata !DIExpression()), !dbg !5897
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #13, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %major, metadata !5895, metadata !DIExpression()), !dbg !5899
  %0 = load i32, ptr %dev.addr, align 4, !dbg !5900
  %and = and i32 %0, 1048320, !dbg !5901
  %shr = lshr i32 %and, 8, !dbg !5902
  store i32 %shr, ptr %major, align 4, !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #13, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !5896, metadata !DIExpression()), !dbg !5904
  %1 = load i32, ptr %dev.addr, align 4, !dbg !5905
  %and1 = and i32 %1, 255, !dbg !5906
  %2 = load i32, ptr %dev.addr, align 4, !dbg !5907
  %shr2 = lshr i32 %2, 12, !dbg !5908
  %and3 = and i32 %shr2, 1048320, !dbg !5909
  %or = or i32 %and1, %and3, !dbg !5910
  store i32 %or, ptr %minor, align 4, !dbg !5904
  %3 = load i32, ptr %major, align 4, !dbg !5911
  %shl = shl i32 %3, 20, !dbg !5911
  %4 = load i32, ptr %minor, align 4, !dbg !5911
  %or4 = or i32 %shl, %4, !dbg !5911
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #13, !dbg !5912
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #13, !dbg !5912
  ret i32 %or4, !dbg !5913
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_dev_ioctl_open_mountpoint(ptr noundef %name, i32 noundef %devid) #6 align 16 !dbg !5914 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %devid.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %fd = alloca i32, align 4
  %filp = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5918, metadata !DIExpression()), !dbg !5927
  store i32 %devid, ptr %devid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devid.addr, metadata !5919, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5920, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !5921, metadata !DIExpression()), !dbg !5931
  %call = call i32 @get_unused_fd_flags(i32 noundef 524288) #14, !dbg !5932
  store i32 %call, ptr %fd, align 4, !dbg !5933
  %0 = load i32, ptr %fd, align 4, !dbg !5934
  %cmp = icmp sge i32 %0, 0, !dbg !5934
  %lnot = xor i1 %cmp, true, !dbg !5934
  %lnot1 = xor i1 %lnot, true, !dbg !5934
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5934
  %conv = sext i32 %lnot.ext to i64, !dbg !5934
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5934
  %tobool = icmp ne i64 %expval, 0, !dbg !5934
  br i1 %tobool, label %if.then, label %if.end13, !dbg !5935

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %filp) #13, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %filp, metadata !5922, metadata !DIExpression()), !dbg !5937
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5925, metadata !DIExpression()), !dbg !5939
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5940
  %call2 = call i32 @find_autofs_mount(ptr noundef %1, ptr noundef %path, ptr noundef @test_by_dev, ptr noundef %devid.addr) #14, !dbg !5941
  store i32 %call2, ptr %err, align 4, !dbg !5942
  %2 = load i32, ptr %err, align 4, !dbg !5943
  %tobool3 = icmp ne i32 %2, 0, !dbg !5943
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5945

if.then4:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5946

if.end:                                           ; preds = %if.then
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5949

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5949

do.end:                                           ; preds = %do.cond
  %call5 = call ptr @get_current() #14, !dbg !5947
  %cred = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 94, !dbg !5947
  %3 = load ptr, ptr %cred, align 32, !dbg !5947
  store ptr %3, ptr %tmp, align 8, !dbg !5949
  %4 = load ptr, ptr %tmp, align 8, !dbg !5947
  %call6 = call ptr @dentry_open(ptr noundef %path, i32 noundef 0, ptr noundef %4) #14, !dbg !5951
  store ptr %call6, ptr %filp, align 8, !dbg !5952
  call void @path_put(ptr noundef %path) #14, !dbg !5953
  %5 = load ptr, ptr %filp, align 8, !dbg !5954
  %call7 = call zeroext i1 @IS_ERR(ptr noundef %5) #14, !dbg !5956
  br i1 %call7, label %if.then8, label %if.end11, !dbg !5957

if.then8:                                         ; preds = %do.end
  %6 = load ptr, ptr %filp, align 8, !dbg !5958
  %call9 = call i64 @PTR_ERR(ptr noundef %6) #14, !dbg !5960
  %conv10 = trunc i64 %call9 to i32, !dbg !5960
  store i32 %conv10, ptr %err, align 4, !dbg !5961
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5962

if.end11:                                         ; preds = %do.end
  %7 = load i32, ptr %fd, align 4, !dbg !5963
  %8 = load ptr, ptr %filp, align 8, !dbg !5964
  call void @fd_install(i32 noundef %7, ptr noundef %8) #14, !dbg !5965
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5966
  br label %cleanup, !dbg !5966

cleanup:                                          ; preds = %if.then8, %if.then4, %if.end11
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %filp) #13, !dbg !5966
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !5967

if.end13:                                         ; preds = %cleanup.cont, %entry
  %9 = load i32, ptr %fd, align 4, !dbg !5968
  store i32 %9, ptr %retval, align 4, !dbg !5969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5969

out:                                              ; preds = %cleanup
  call void @llvm.dbg.label(metadata !5926), !dbg !5970
  %10 = load i32, ptr %fd, align 4, !dbg !5971
  call void @put_unused_fd(i32 noundef %10) #14, !dbg !5972
  %11 = load i32, ptr %err, align 4, !dbg !5973
  store i32 %11, ptr %retval, align 4, !dbg !5974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !5974

cleanup14:                                        ; preds = %out, %if.end13, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5975
  %12 = load i32, ptr %retval, align 4, !dbg !5975
  ret i32 %12, !dbg !5975
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5976 dso_local i32 @get_unused_fd_flags(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_autofs_mount(ptr noundef %pathname, ptr noundef %res, ptr noundef %test, ptr noundef %data) #6 align 16 !dbg !5979 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %test.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %path = alloca %struct.path, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !5986, metadata !DIExpression()), !dbg !5992
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5987, metadata !DIExpression()), !dbg !5993
  store ptr %test, ptr %test.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %test.addr, metadata !5988, metadata !DIExpression()), !dbg !5994
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5989, metadata !DIExpression()), !dbg !5995
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #13, !dbg !5996
  call void @llvm.dbg.declare(metadata ptr %path, metadata !5990, metadata !DIExpression()), !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5998
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5991, metadata !DIExpression()), !dbg !5999
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !6000
  %call = call i32 @kern_path(ptr noundef %0, i32 noundef 128, ptr noundef %path) #14, !dbg !6001
  store i32 %call, ptr %err, align 4, !dbg !6002
  %1 = load i32, ptr %err, align 4, !dbg !6003
  %tobool = icmp ne i32 %1, 0, !dbg !6003
  br i1 %tobool, label %if.then, label %if.end, !dbg !6005

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !6006
  store i32 %2, ptr %retval, align 4, !dbg !6007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6007

if.end:                                           ; preds = %entry
  store i32 -2, ptr %err, align 4, !dbg !6008
  br label %while.cond, !dbg !6009

while.cond:                                       ; preds = %if.end12, %if.end
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6010
  %3 = load ptr, ptr %dentry, align 8, !dbg !6010
  %mnt = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 0, !dbg !6011
  %4 = load ptr, ptr %mnt, align 8, !dbg !6011
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 0, !dbg !6012
  %5 = load ptr, ptr %mnt_root, align 8, !dbg !6012
  %cmp = icmp eq ptr %3, %5, !dbg !6013
  br i1 %cmp, label %while.body, label %while.end, !dbg !6009

while.body:                                       ; preds = %while.cond
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1, !dbg !6014
  %6 = load ptr, ptr %dentry1, align 8, !dbg !6014
  %d_sb = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !6017
  %7 = load ptr, ptr %d_sb, align 8, !dbg !6017
  %s_magic = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 12, !dbg !6018
  %8 = load i64, ptr %s_magic, align 32, !dbg !6018
  %cmp2 = icmp eq i64 %8, 391, !dbg !6019
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !6020

if.then3:                                         ; preds = %while.body
  %9 = load ptr, ptr %test.addr, align 8, !dbg !6021
  %10 = load ptr, ptr %data.addr, align 8, !dbg !6024
  %call4 = call i32 %9(ptr noundef %path, ptr noundef %10) #14, !dbg !6021
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6021
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6025

if.then6:                                         ; preds = %if.then3
  call void @path_get(ptr noundef %path) #14, !dbg !6026
  %11 = load ptr, ptr %res.addr, align 8, !dbg !6028
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %path, i64 16, i1 false), !dbg !6029
  store i32 0, ptr %err, align 4, !dbg !6030
  br label %while.end, !dbg !6031

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !6032

if.end8:                                          ; preds = %if.end7, %while.body
  %call9 = call i32 @follow_up(ptr noundef %path) #14, !dbg !6033
  %tobool10 = icmp ne i32 %call9, 0, !dbg !6033
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6035

if.then11:                                        ; preds = %if.end8
  br label %while.end, !dbg !6036

if.end12:                                         ; preds = %if.end8
  br label %while.cond, !dbg !6009, !llvm.loop !6037

while.end:                                        ; preds = %if.then11, %if.then6, %while.cond
  call void @path_put(ptr noundef %path) #14, !dbg !6041
  %12 = load i32, ptr %err, align 4, !dbg !6042
  store i32 %12, ptr %retval, align 4, !dbg !6043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6043

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !6044
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #13, !dbg !6044
  %13 = load i32, ptr %retval, align 4, !dbg !6044
  ret i32 %13, !dbg !6044
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_by_dev(ptr noundef %path, ptr noundef %p) #6 align 16 !dbg !6045 {
entry:
  %path.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6047, metadata !DIExpression()), !dbg !6049
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6048, metadata !DIExpression()), !dbg !6050
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6051
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6052
  %1 = load ptr, ptr %dentry, align 8, !dbg !6052
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !6053
  %2 = load ptr, ptr %d_sb, align 8, !dbg !6053
  %s_dev = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 1, !dbg !6054
  %3 = load i32, ptr %s_dev, align 16, !dbg !6054
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6055
  %5 = load i32, ptr %4, align 4, !dbg !6056
  %cmp = icmp eq i32 %3, %5, !dbg !6057
  %conv = zext i1 %cmp to i32, !dbg !6057
  ret i32 %conv, !dbg !6058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local void @path_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6065 dso_local void @fd_install(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6068 dso_local void @put_unused_fd(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6071 dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6075 dso_local void @path_get(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6076 dso_local i32 @follow_up(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6079 dso_local i32 @close_fd(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6080 dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6083 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6088 dso_local ptr @get_task_pid(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ns_of_pid(ptr noundef %pid) #7 align 16 !dbg !6091 {
entry:
  %pid.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store ptr %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6095, metadata !DIExpression()), !dbg !6097
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #13, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !6096, metadata !DIExpression()), !dbg !6099
  store ptr null, ptr %ns, align 8, !dbg !6099
  %0 = load ptr, ptr %pid.addr, align 8, !dbg !6100
  %tobool = icmp ne ptr %0, null, !dbg !6100
  br i1 %tobool, label %if.then, label %if.end, !dbg !6102

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pid.addr, align 8, !dbg !6103
  %numbers = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 7, !dbg !6104
  %2 = load ptr, ptr %pid.addr, align 8, !dbg !6105
  %level = getelementptr inbounds %struct.pid, ptr %2, i32 0, i32 1, !dbg !6106
  %3 = load i32, ptr %level, align 4, !dbg !6106
  %idxprom = zext i32 %3 to i64, !dbg !6103
  %arrayidx = getelementptr [0 x %struct.upid], ptr %numbers, i64 0, i64 %idxprom, !dbg !6103
  %ns1 = getelementptr inbounds %struct.upid, ptr %arrayidx, i32 0, i32 1, !dbg !6107
  %4 = load ptr, ptr %ns1, align 8, !dbg !6107
  store ptr %4, ptr %ns, align 8, !dbg !6108
  br label %if.end, !dbg !6109

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ns, align 8, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #13, !dbg !6111
  ret ptr %5, !dbg !6112
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_prepare_pipe(ptr noundef %pipe) #7 align 16 !dbg !6113 {
entry:
  %retval = alloca i32, align 4
  %pipe.addr = alloca ptr, align 8
  store ptr %pipe, ptr %pipe.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pipe.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  %0 = load ptr, ptr %pipe.addr, align 8, !dbg !6119
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !6121
  %1 = load i32, ptr %f_mode, align 4, !dbg !6121
  %and = and i32 %1, 262144, !dbg !6122
  %tobool = icmp ne i32 %and, 0, !dbg !6122
  br i1 %tobool, label %if.end, label %if.then, !dbg !6123

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pipe.addr, align 8, !dbg !6125
  %call = call ptr @file_inode(ptr noundef %2) #14, !dbg !6125
  %i_mode = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 0, !dbg !6125
  %3 = load i16, ptr %i_mode, align 8, !dbg !6125
  %conv = zext i16 %3 to i32, !dbg !6125
  %and1 = and i32 %conv, 61440, !dbg !6125
  %cmp = icmp eq i32 %and1, 4096, !dbg !6125
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !6127

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6128
  br label %return, !dbg !6128

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %pipe.addr, align 8, !dbg !6129
  %f_flags = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6, !dbg !6130
  %5 = load i32, ptr %f_flags, align 8, !dbg !6131
  %or = or i32 %5, 16384, !dbg !6131
  store i32 %or, ptr %f_flags, align 8, !dbg !6131
  %6 = load ptr, ptr %pipe.addr, align 8, !dbg !6132
  %f_flags5 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 6, !dbg !6133
  %7 = load i32, ptr %f_flags5, align 8, !dbg !6134
  %and6 = and i32 %7, -2049, !dbg !6134
  store i32 %and6, ptr %f_flags5, align 8, !dbg !6134
  store i32 0, ptr %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !6136
  ret i32 %8, !dbg !6136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6137 dso_local void @put_pid(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6140 dso_local void @autofs_catatonic_mode(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @autofs_dentry_ino(ptr noundef %dentry) #7 align 16 !dbg !6143 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6149
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11, !dbg !6150
  %1 = load ptr, ptr %d_fsdata, align 8, !dbg !6150
  ret ptr %1, !dbg !6151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6152 dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !6155 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6163
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6163
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !6163
  ret void, !dbg !6164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #7 align 16 !dbg !6165 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6169, metadata !DIExpression()), !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6170, metadata !DIExpression()), !dbg !6173
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #13, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6171, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6176
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6177
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6177
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #14, !dbg !6177
  store i32 %call, ptr %uid, align 4, !dbg !6175
  %2 = load i32, ptr %uid, align 4, !dbg !6178
  %cmp = icmp eq i32 %2, -1, !dbg !6180
  br i1 %cmp, label %if.then, label %if.end, !dbg !6181

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6182
  store i32 %3, ptr %uid, align 4, !dbg !6183
  br label %if.end, !dbg !6184

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #13, !dbg !6186
  ret i32 %4, !dbg !6187
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #7 align 16 !dbg !6188 {
entry:
  ret ptr @init_user_ns, !dbg !6191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #7 align 16 !dbg !6192 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6196, metadata !DIExpression()), !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6197, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #13, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6198, metadata !DIExpression()), !dbg !6202
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6203
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6204
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6204
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #14, !dbg !6204
  store i32 %call, ptr %gid, align 4, !dbg !6202
  %2 = load i32, ptr %gid, align 4, !dbg !6205
  %cmp = icmp eq i32 %2, -1, !dbg !6207
  br i1 %cmp, label %if.then, label %if.end, !dbg !6208

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6209
  store i32 %3, ptr %gid, align 4, !dbg !6210
  br label %if.end, !dbg !6211

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6212
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #13, !dbg !6213
  ret i32 %4, !dbg !6214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !6215 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6217, metadata !DIExpression()), !dbg !6218
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6219
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6219
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !6219
  ret void, !dbg !6220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6221 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #7 align 16 !dbg !6226 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6228, metadata !DIExpression()), !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6229, metadata !DIExpression()), !dbg !6231
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6232
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6232
  %call = call i32 @__kuid_val(i32 %0) #14, !dbg !6232
  ret i32 %call, !dbg !6233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #7 align 16 !dbg !6234 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6238, metadata !DIExpression()), !dbg !6239
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6240
  %0 = load i32, ptr %val, align 4, !dbg !6240
  ret i32 %0, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #7 align 16 !dbg !6242 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6244, metadata !DIExpression()), !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6245, metadata !DIExpression()), !dbg !6247
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6248
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6248
  %call = call i32 @__kgid_val(i32 %0) #14, !dbg !6248
  ret i32 %call, !dbg !6249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #7 align 16 !dbg !6250 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6254, metadata !DIExpression()), !dbg !6255
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6256
  %0 = load i32, ptr %val, align 4, !dbg !6256
  ret i32 %0, !dbg !6257
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6258 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6259 dso_local i32 @autofs_do_expire_multi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6262 dso_local i32 @may_umount(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @autofs_type_any(i32 noundef %type) #7 align 16 !dbg !6265 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  %0 = load i32, ptr %type.addr, align 4, !dbg !6271
  %cmp = icmp eq i32 %0, 0, !dbg !6272
  %conv = zext i1 %cmp to i32, !dbg !6272
  ret i32 %conv, !dbg !6273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_by_type(ptr noundef %path, ptr noundef %p) #6 align 16 !dbg !6274 {
entry:
  %path.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %ino = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6276, metadata !DIExpression()), !dbg !6279
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6277, metadata !DIExpression()), !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %ino) #13, !dbg !6281
  call void @llvm.dbg.declare(metadata ptr %ino, metadata !6278, metadata !DIExpression()), !dbg !6282
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6283
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6284
  %1 = load ptr, ptr %dentry, align 8, !dbg !6284
  %call = call ptr @autofs_dentry_ino(ptr noundef %1) #14, !dbg !6285
  store ptr %call, ptr %ino, align 8, !dbg !6282
  %2 = load ptr, ptr %ino, align 8, !dbg !6286
  %tobool = icmp ne ptr %2, null, !dbg !6286
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6287

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ino, align 8, !dbg !6288
  %sbi = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 5, !dbg !6289
  %4 = load ptr, ptr %sbi, align 8, !dbg !6289
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %4, i32 0, i32 10, !dbg !6290
  %5 = load i32, ptr %type, align 8, !dbg !6290
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6291
  %7 = load i32, ptr %6, align 4, !dbg !6292
  %and = and i32 %5, %7, !dbg !6293
  %tobool1 = icmp ne i32 %and, 0, !dbg !6287
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6294
  %land.ext = zext i1 %8 to i32, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %ino) #13, !dbg !6295
  ret i32 %land.ext, !dbg !6296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_encode_dev(i32 noundef %dev) #5 align 16 !dbg !6297 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6301, metadata !DIExpression()), !dbg !6304
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #13, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %major, metadata !6302, metadata !DIExpression()), !dbg !6306
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6307
  %shr = lshr i32 %0, 20, !dbg !6307
  store i32 %shr, ptr %major, align 4, !dbg !6306
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #13, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !6303, metadata !DIExpression()), !dbg !6309
  %1 = load i32, ptr %dev.addr, align 4, !dbg !6310
  %and = and i32 %1, 1048575, !dbg !6310
  store i32 %and, ptr %minor, align 4, !dbg !6309
  %2 = load i32, ptr %minor, align 4, !dbg !6311
  %and1 = and i32 %2, 255, !dbg !6312
  %3 = load i32, ptr %major, align 4, !dbg !6313
  %shl = shl i32 %3, 8, !dbg !6314
  %or = or i32 %and1, %shl, !dbg !6315
  %4 = load i32, ptr %minor, align 4, !dbg !6316
  %and2 = and i32 %4, -256, !dbg !6317
  %shl3 = shl i32 %and2, 12, !dbg !6318
  %or4 = or i32 %or, %shl3, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #13, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #13, !dbg !6320
  ret i32 %or4, !dbg !6321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6322 dso_local i32 @path_has_submounts(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6325 dso_local i32 @follow_down_one(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_pgrp(ptr noundef %task) #7 align 16 !dbg !6326 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %task.addr, align 8, !dbg !6332
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !6333
  %1 = load ptr, ptr %signal, align 64, !dbg !6333
  %pids = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 23, !dbg !6334
  %arrayidx = getelementptr [4 x ptr], ptr %pids, i64 0, i64 2, !dbg !6332
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6332
  ret ptr %2, !dbg !6335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6336 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6337 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #7 align 16 !dbg !6341 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6347
  %conv = zext i32 %0 to i64, !dbg !6348
  %1 = inttoptr i64 %conv to ptr, !dbg !6349
  ret ptr %1, !dbg !6350
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585}
!llvm.ident = !{!4586}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias277", scope: !2, file: !3, line: 721, type: !4577, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/autofs/.dev-ioctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/autofs/autofs4\22 -D KBUILD_BASENAME=\22dev_ioctl\22 -D KBUILD_MODNAME=\22autofs4\22 -D __KBUILD_MODNAME=kmod_autofs4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/autofs/dev-ioctl.ll fs/autofs/dev-ioctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !139, globals: !4117, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/autofs/dev-ioctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bc3511c82f49c499364e1f25b867302")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !134}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 124, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/uapi/linux/auto_dev-ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "600a439e4d6ed0ca7a10d2e10052e861")
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!120 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_VERSION_CMD", value: 113)
!121 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_PROTOVER_CMD", value: 114)
!122 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_PROTOSUBVER_CMD", value: 115)
!123 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_OPENMOUNT_CMD", value: 116)
!124 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_CLOSEMOUNT_CMD", value: 117)
!125 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_READY_CMD", value: 118)
!126 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_FAIL_CMD", value: 119)
!127 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_SETPIPEFD_CMD", value: 120)
!128 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_CATATONIC_CMD", value: 121)
!129 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_TIMEOUT_CMD", value: 122)
!130 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_REQUESTER_CMD", value: 123)
!131 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_EXPIRE_CMD", value: 124)
!132 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_ASKUMOUNT_CMD", value: 125)
!133 = !DIEnumerator(name: "AUTOFS_DEV_IOCTL_ISMOUNTPOINT_CMD", value: 126)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 10, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "false", value: 0)
!138 = !DIEnumerator(name: "true", value: 1)
!139 = !{!140, !3991, !281, !85, !317, !295, !7, !1355, !4059, !4060, !1297, !4062, !337, !345, !949, !4072, !4116, !955}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !142)
!142 = !{!143, !144, !151, !156, !3668, !3694, !3695, !3696, !3697, !3701, !3704, !3705, !3706, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3773, !3777, !3795, !3812, !3813, !3814, !3815, !3824, !3847, !3848, !3851, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3865, !3866, !3952, !3960, !3961, !3962, !3964, !3968, !3969, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3986, !3987, !3988, !3990}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !141, file: !6, line: 403, baseType: !5, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !141, file: !6, line: 406, baseType: !145, size: 128, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !146, line: 190, size: 128, elements: !147)
!146 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 191, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !146, line: 191, baseType: !149, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !6, line: 409, baseType: !152, size: 448, offset: 192)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 448, elements: !154)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: 56)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !141, file: !6, line: 417, baseType: !157, size: 768, offset: 640)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !158)
!158 = !{!159, !3662, !3663, !3664, !3667}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !6, line: 46, baseType: !160, size: 512)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !161, line: 64, size: 512, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!162 = !{!163, !166, !167, !169, !258, !3549, !3652, !3657, !3658, !3659, !3660, !3661}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 65, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !160, file: !161, line: 66, baseType: !145, size: 128, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !161, line: 67, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !160, file: !161, line: 68, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !161, line: 168, size: 768, elements: !172)
!172 = !{!173, !174, !217, !218}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !171, file: !161, line: 169, baseType: !145, size: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !171, file: !161, line: 170, baseType: !175, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !176, line: 29, baseType: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !176, line: 17, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !176, line: 18, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !176, line: 18, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !180, file: !176, line: 19, baseType: !183, size: 32)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !184, line: 14, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !183, file: !184, line: 15, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !188, line: 44, baseType: !189)
!188 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !188, line: 14, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 15, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 15, size: 32, elements: !193)
!193 = !{!194, !199, !209}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !192, file: !188, line: 16, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !146, line: 174, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 172, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !196, file: !146, line: 173, baseType: !85, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !188, line: 24, baseType: !200, size: 16)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !188, line: 24, size: 16, elements: !201)
!201 = !{!202, !208}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !200, file: !188, line: 25, baseType: !203, size: 8)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !204, line: 17, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !206, line: 21, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!207 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !200, file: !188, line: 26, baseType: !203, size: 8, offset: 8)
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !188, line: 28, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !188, line: 28, size: 32, elements: !211)
!211 = !{!212, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !210, file: !188, line: 29, baseType: !213, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !204, line: 19, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !206, line: 24, baseType: !215)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !210, file: !188, line: 30, baseType: !213, size: 16, offset: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !161, line: 171, baseType: !160, size: 512, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !171, file: !161, line: 172, baseType: !219, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !161, line: 133, size: 192, elements: !222)
!222 = !{!223, !230, !235}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !221, file: !161, line: 134, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!85, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !161, line: 135, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!164, !228}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !221, file: !161, line: 136, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!85, !228, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !161, line: 125, size: 20736, elements: !242)
!242 = !{!243, !248, !252, !253, !257}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !241, file: !161, line: 126, baseType: !244, size: 192)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 192, elements: !246)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!246 = !{!247}
!247 = !DISubrange(count: 3)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !241, file: !161, line: 127, baseType: !249, size: 4096, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 4096, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !241, file: !161, line: 128, baseType: !85, size: 32, offset: 4288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !241, file: !161, line: 129, baseType: !254, size: 16384, offset: 4320)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 16384, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !241, file: !161, line: 130, baseType: !85, size: 32, offset: 20704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !160, file: !161, line: 69, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !161, line: 116, size: 384, elements: !262)
!262 = !{!263, !267, !296, !3511, !3539, !3543}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !261, file: !161, line: 117, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !168}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !261, file: !161, line: 118, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !271, line: 254, size: 128, elements: !272)
!271 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!272 = !{!273, !288}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !270, file: !271, line: 255, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !168, !282, !245}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 66, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !279, line: 73, baseType: !280)
!279 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !279, line: 15, baseType: !281)
!281 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !271, line: 30, size: 128, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !271, line: 31, baseType: !164, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !283, file: !271, line: 32, baseType: !287, size: 16, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !146, line: 24, baseType: !215)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !270, file: !271, line: 256, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!277, !168, !282, !164, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 61, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !279, line: 72, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !279, line: 16, baseType: !295)
!295 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !261, file: !161, line: 119, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !271, line: 84, size: 320, elements: !301)
!301 = !{!302, !303, !307, !3507, !3509}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !271, line: 85, baseType: !164, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !300, file: !271, line: 86, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!287, !168, !282, !85}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !300, file: !271, line: 88, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!287, !168, !311, !85}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !271, line: 175, size: 512, elements: !313)
!313 = !{!314, !315, !316, !318, !3498, !3502, !3503}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !312, file: !271, line: 176, baseType: !283, size: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !312, file: !271, line: 177, baseType: !292, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !312, file: !271, line: 178, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !312, file: !271, line: 179, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !324)
!324 = !{!325, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3492, !3493, !3494, !3495, !3496, !3497}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !323, file: !14, line: 473, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !328)
!328 = !{!329, !330, !331, !339, !340, !347, !348, !351, !352, !3270, !3271, !3272, !3273, !3274, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3314, !3317, !3318, !3319, !3328, !3329, !3330, !3331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !327, file: !14, line: 642, baseType: !287, size: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !327, file: !14, line: 643, baseType: !215, size: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !327, file: !14, line: 644, baseType: !332, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !333, line: 23, baseType: !334)
!333 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 21, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !333, line: 22, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !146, line: 37, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !279, line: 49, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !327, file: !14, line: 645, baseType: !145, size: 128, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !327, file: !14, line: 646, baseType: !341, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !333, line: 28, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 26, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !342, file: !333, line: 27, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !146, line: 38, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !279, line: 50, baseType: !7)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !327, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !327, file: !14, line: 650, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !327, file: !14, line: 651, baseType: !349, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !327, file: !14, line: 654, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !356)
!356 = !{!357, !3101, !3114, !3118, !3122, !3126, !3130, !3134, !3138, !3142, !3146, !3147, !3151, !3155, !3192, !3221, !3225, !3231, !3235, !3239, !3243, !3247, !3251, !3257, !3261}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !355, file: !14, line: 1967, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !326, !361, !7}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !363, line: 82, size: 1536, elements: !364)
!363 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!364 = !{!365, !366, !376, !384, !385, !405, !406, !410, !423, !3084, !3085, !3086, !3087, !3093, !3094, !3095}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !362, file: !363, line: 84, baseType: !7, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !362, file: !363, line: 85, baseType: !367, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !368, line: 275, baseType: !369)
!368 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !368, line: 275, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !369, file: !368, line: 275, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !368, line: 69, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !368, line: 64, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !373, file: !368, line: 65, baseType: !7, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !362, file: !363, line: 86, baseType: !377, size: 128, offset: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !378, line: 38, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!379 = !{!380, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !378, line: 39, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !377, file: !378, line: 39, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !362, file: !363, line: 87, baseType: !361, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !362, file: !363, line: 88, baseType: !386, size: 128, offset: 256)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !363, line: 49, size: 128, elements: !387)
!387 = !{!388, !402}
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !363, line: 50, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !363, line: 50, size: 64, elements: !390)
!390 = !{!391, !398}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !363, line: 51, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !363, line: 51, size: 64, elements: !393)
!393 = !{!394, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !392, file: !363, line: 52, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !204, line: 21, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !206, line: 27, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !392, file: !363, line: 52, baseType: !395, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !389, file: !363, line: 54, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !204, line: 23, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !206, line: 31, baseType: !401)
!401 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !363, line: 56, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !362, file: !363, line: 89, baseType: !326, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !362, file: !363, line: 91, baseType: !407, size: 256, offset: 448)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !362, file: !363, line: 94, baseType: !411, size: 64, offset: 704)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !412, line: 25, size: 64, elements: !413)
!412 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !412, line: 26, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !412, line: 26, size: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !415, file: !412, line: 28, baseType: !400, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !412, line: 30, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !412, line: 30, size: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !412, line: 31, baseType: !175, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !419, file: !412, line: 32, baseType: !85, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !362, file: !363, line: 95, baseType: !424, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !363, line: 128, size: 1024, align: 512, elements: !427)
!427 = !{!428, !432, !433, !440, !446, !450, !454, !458, !459, !463, !467, !3074, !3078}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !426, file: !363, line: 129, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!85, !361, !7}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !426, file: !363, line: 130, baseType: !429, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !426, file: !363, line: 131, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!85, !437, !439}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !426, file: !363, line: 132, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!85, !437, !7, !164, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !426, file: !363, line: 134, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!85, !437}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !426, file: !363, line: 135, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!85, !361}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !426, file: !363, line: 136, baseType: !455, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !361}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !426, file: !363, line: 137, baseType: !455, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !426, file: !363, line: 138, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !361, !326}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !426, file: !363, line: 139, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!245, !361, !245, !85}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !426, file: !363, line: 140, baseType: !468, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !3073}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !473, line: 70, size: 256, elements: !474)
!473 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!474 = !{!475, !476, !3069, !3070}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !472, file: !473, line: 71, baseType: !361, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !472, file: !473, line: 72, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !479)
!479 = !{!480, !481, !484, !485, !486, !490, !539, !701, !741, !831, !835, !836, !837, !838, !839, !848, !849, !850, !851, !856, !860, !861, !864, !867, !870, !873, !874, !875, !916, !3000, !3001, !3002, !3003, !3004, !3005, !3008, !3010, !3017, !3018, !3019, !3020, !3021, !3036, !3037, !3038, !3039, !3040, !3043, !3044, !3045, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !478, file: !14, line: 1191, baseType: !145, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !478, file: !14, line: 1192, baseType: !482, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !146, line: 21, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !146, line: 18, baseType: !395)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !478, file: !14, line: 1193, baseType: !207, size: 8, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !478, file: !14, line: 1194, baseType: !295, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !478, file: !14, line: 1195, baseType: !487, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !146, line: 52, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !279, line: 88, baseType: !489)
!489 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !478, file: !14, line: 1196, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !493)
!493 = !{!494, !495, !496, !503, !507, !511, !515, !516, !517, !527, !531, !532, !533, !535, !536, !537, !538}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !14, line: 2367, baseType: !164, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !492, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !492, file: !14, line: 2376, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!85, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !502, line: 32, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !492, file: !14, line: 2377, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !492, file: !14, line: 2378, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!361, !491, !85, !164, !317}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !492, file: !14, line: 2380, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !477}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !492, file: !14, line: 2381, baseType: !140, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !14, line: 2382, baseType: !491, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !492, file: !14, line: 2383, baseType: !518, size: 64, offset: 512)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !146, line: 194, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !518, file: !146, line: 195, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !146, line: 198, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !146, line: 199, baseType: !521, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !522, file: !146, line: 199, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !492, file: !14, line: 2385, baseType: !528, offset: 576)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !529, line: 206, elements: !530)
!529 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!530 = !{}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !492, file: !14, line: 2386, baseType: !528, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !492, file: !14, line: 2387, baseType: !528, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !492, file: !14, line: 2388, baseType: !534, offset: 576)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, elements: !246)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !492, file: !14, line: 2390, baseType: !528, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !492, file: !14, line: 2391, baseType: !528, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !492, file: !14, line: 2392, baseType: !528, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !492, file: !14, line: 2393, baseType: !528, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !478, file: !14, line: 1197, baseType: !540, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !543)
!543 = !{!544, !548, !552, !553, !557, !563, !567, !568, !569, !573, !577, !581, !582, !583, !589, !594, !595, !602, !603, !604, !605, !609, !613, !682, !699, !700}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !542, file: !14, line: 2058, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!326, !477}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !542, file: !14, line: 2059, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !326}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !542, file: !14, line: 2060, baseType: !549, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !542, file: !14, line: 2062, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !326, !85}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !542, file: !14, line: 2063, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!85, !326, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !542, file: !14, line: 2064, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!85, !326}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !542, file: !14, line: 2065, baseType: !549, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !542, file: !14, line: 2066, baseType: !512, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !542, file: !14, line: 2067, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!85, !477, !85}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !542, file: !14, line: 2068, baseType: !574, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!85, !477, !13}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !542, file: !14, line: 2069, baseType: !578, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!85, !477}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !542, file: !14, line: 2070, baseType: !574, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !542, file: !14, line: 2071, baseType: !578, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !542, file: !14, line: 2072, baseType: !584, size: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!85, !361, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !542, file: !14, line: 2073, baseType: !590, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!85, !477, !593, !245}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !542, file: !14, line: 2074, baseType: !512, size: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !542, file: !14, line: 2076, baseType: !596, size: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!85, !599, !361}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !601, line: 66, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !542, file: !14, line: 2077, baseType: !596, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !542, file: !14, line: 2078, baseType: !596, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !542, file: !14, line: 2079, baseType: !596, size: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !542, file: !14, line: 2081, baseType: !606, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!277, !477, !85, !245, !292, !487}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !542, file: !14, line: 2082, baseType: !610, size: 64, offset: 1344)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!277, !477, !85, !164, !292, !487}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !542, file: !14, line: 2083, baseType: !614, size: 64, offset: 1408)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !326}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !646, !647, !648, !649, !665, !666, !667}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !619, file: !19, line: 297, baseType: !522, size: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !619, file: !19, line: 298, baseType: !145, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !619, file: !19, line: 299, baseType: !145, size: 128, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !619, file: !19, line: 300, baseType: !145, size: 128, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !619, file: !19, line: 301, baseType: !626, size: 256, offset: 512)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !627, line: 66, size: 256, elements: !628)
!627 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!628 = !{!629, !638, !640, !645}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !626, file: !627, line: 67, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !631, line: 13, baseType: !632)
!631 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !146, line: 181, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 179, size: 64, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !633, file: !146, line: 180, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !204, line: 22, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !206, line: 30, baseType: !489)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !626, file: !627, line: 68, baseType: !639, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !184, line: 23, baseType: !183)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !626, file: !627, line: 70, baseType: !641, size: 32, offset: 96)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !642, line: 15, size: 32, elements: !643)
!642 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !641, file: !642, line: 20, baseType: !195, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !626, file: !627, line: 72, baseType: !145, size: 128, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !619, file: !19, line: 302, baseType: !175, size: 32, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !619, file: !19, line: 303, baseType: !195, size: 32, offset: 800)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !619, file: !19, line: 304, baseType: !477, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !619, file: !19, line: 305, baseType: !650, size: 64, offset: 896)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !651)
!651 = !{!652, !664}
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !19, line: 69, baseType: !653, size: 32)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !19, line: 69, size: 32, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !19, line: 70, baseType: !332, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !653, file: !19, line: 71, baseType: !341, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !653, file: !19, line: 72, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !659, line: 24, baseType: !660)
!659 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 22, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !659, line: 23, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !659, line: 20, baseType: !338)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !619, file: !19, line: 306, baseType: !487, size: 64, offset: 960)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !619, file: !19, line: 307, baseType: !295, size: 64, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !619, file: !19, line: 308, baseType: !668, size: 576, offset: 1088)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !669)
!669 = !{!670, !672, !673, !674, !675, !676, !677, !678, !681}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !668, file: !19, line: 206, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !489)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !668, file: !19, line: 207, baseType: !671, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !668, file: !19, line: 208, baseType: !671, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !668, file: !19, line: 209, baseType: !671, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !668, file: !19, line: 210, baseType: !671, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !668, file: !19, line: 211, baseType: !671, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !668, file: !19, line: 212, baseType: !671, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !668, file: !19, line: 213, baseType: !679, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !680, line: 8, baseType: !637)
!680 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !668, file: !19, line: 214, baseType: !679, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !542, file: !14, line: 2085, baseType: !683, size: 64, offset: 1472)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!281, !477, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !688, line: 15, size: 256, elements: !689)
!688 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!689 = !{!690, !692, !693, !694, !695}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !687, file: !688, line: 16, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !146, line: 154, baseType: !7)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !687, file: !688, line: 19, baseType: !85, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !687, file: !688, line: 26, baseType: !295, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !687, file: !688, line: 33, baseType: !295, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !687, file: !688, line: 36, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !698, line: 33, flags: DIFlagFwdDecl)
!698 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !542, file: !14, line: 2087, baseType: !683, size: 64, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !542, file: !14, line: 2089, baseType: !512, size: 64, offset: 1600)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !478, file: !14, line: 1198, baseType: !702, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !705)
!705 = !{!706, !710, !714, !718, !719, !720, !721, !722, !727, !732, !736}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !704, file: !19, line: 325, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!85, !618}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !704, file: !19, line: 326, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!618, !477, !85}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !704, file: !19, line: 327, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !618}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !704, file: !19, line: 328, baseType: !707, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !704, file: !19, line: 329, baseType: !707, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !704, file: !19, line: 330, baseType: !707, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !704, file: !19, line: 331, baseType: !570, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !704, file: !19, line: 334, baseType: !723, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!726, !326}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !704, file: !19, line: 335, baseType: !728, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!85, !326, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !704, file: !19, line: 337, baseType: !733, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!85, !326, !726}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !704, file: !19, line: 339, baseType: !737, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!85, !477, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !478, file: !14, line: 1199, baseType: !742, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !745)
!745 = !{!746, !757, !758, !762, !763, !764, !779, !802, !806, !807, !830}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !744, file: !19, line: 431, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!85, !477, !85, !85, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !753, line: 8, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !752, file: !753, line: 9, baseType: !471, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !752, file: !753, line: 10, baseType: !361, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !744, file: !19, line: 432, baseType: !570, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !744, file: !19, line: 433, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!85, !477, !7}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !744, file: !19, line: 434, baseType: !759, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !744, file: !19, line: 435, baseType: !570, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !744, file: !19, line: 436, baseType: !765, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!85, !477, !85, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !769, file: !19, line: 418, baseType: !85, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !769, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !769, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !769, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !769, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !769, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !769, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !769, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !744, file: !19, line: 437, baseType: !780, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!85, !477, !650, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !784, file: !19, line: 346, baseType: !85, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !784, file: !19, line: 347, baseType: !399, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !784, file: !19, line: 348, baseType: !399, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !784, file: !19, line: 349, baseType: !399, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !784, file: !19, line: 350, baseType: !399, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !784, file: !19, line: 351, baseType: !399, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !784, file: !19, line: 352, baseType: !399, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !784, file: !19, line: 353, baseType: !636, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !784, file: !19, line: 355, baseType: !636, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !784, file: !19, line: 356, baseType: !85, size: 32, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !784, file: !19, line: 357, baseType: !85, size: 32, offset: 608)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !784, file: !19, line: 358, baseType: !399, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !784, file: !19, line: 359, baseType: !399, size: 64, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !784, file: !19, line: 360, baseType: !399, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !784, file: !19, line: 361, baseType: !636, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !784, file: !19, line: 362, baseType: !85, size: 32, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !744, file: !19, line: 438, baseType: !803, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!85, !477, !740, !783}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !744, file: !19, line: 440, baseType: !780, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !744, file: !19, line: 441, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!85, !477, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !812, file: !19, line: 412, baseType: !7, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !812, file: !19, line: 413, baseType: !816, size: 1344, offset: 64)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 1344, elements: !246)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827, !829}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !19, line: 398, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !817, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !817, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !817, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !817, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !817, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !817, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !817, file: !19, line: 406, baseType: !401, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !817, file: !19, line: 407, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !146, line: 132, baseType: !399)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !817, file: !19, line: 408, baseType: !828, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !744, file: !19, line: 442, baseType: !759, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !478, file: !14, line: 1200, baseType: !832, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !478, file: !14, line: 1201, baseType: !295, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !478, file: !14, line: 1202, baseType: !295, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !478, file: !14, line: 1203, baseType: !295, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !478, file: !14, line: 1204, baseType: !361, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !478, file: !14, line: 1205, baseType: !840, size: 320, offset: 896)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !841, line: 48, size: 320, elements: !842)
!841 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!842 = !{!843, !844, !845, !846, !847}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 49, baseType: !630, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !840, file: !841, line: 55, baseType: !630, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !840, file: !841, line: 57, baseType: !641, size: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !840, file: !841, line: 59, baseType: !639, size: 32, offset: 160)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !840, file: !841, line: 60, baseType: !145, size: 128, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !478, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !478, file: !14, line: 1207, baseType: !195, size: 32, offset: 1248)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !478, file: !14, line: 1209, baseType: !317, size: 64, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !478, file: !14, line: 1211, baseType: !852, size: 64, offset: 1344)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !478, file: !14, line: 1223, baseType: !857, size: 64, offset: 1408)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !378, line: 34, size: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !857, file: !378, line: 35, baseType: !381, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !478, file: !14, line: 1224, baseType: !145, size: 128, offset: 1472)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !478, file: !14, line: 1225, baseType: !862, size: 64, offset: 1600)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !478, file: !14, line: 1226, baseType: !865, size: 64, offset: 1664)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !478, file: !14, line: 1227, baseType: !868, size: 64, offset: 1728)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !478, file: !14, line: 1228, baseType: !871, size: 64, offset: 1792)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !478, file: !14, line: 1229, baseType: !522, size: 128, offset: 1856)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !478, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !478, file: !14, line: 1231, baseType: !876, size: 2496, offset: 2048)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !877)
!877 = !{!878, !879, !880, !882, !914}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !19, line: 522, baseType: !7, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !876, file: !19, line: 523, baseType: !840, size: 320, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !876, file: !19, line: 524, baseType: !881, size: 192, offset: 384)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !246)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !876, file: !19, line: 525, baseType: !883, size: 1728, offset: 576)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 1728, elements: !246)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !885)
!885 = !{!886, !906, !907, !908, !909, !910, !911, !912, !913}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !884, file: !19, line: 223, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !889)
!889 = !{!890, !891, !904, !905}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !888, file: !19, line: 446, baseType: !85, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !888, file: !19, line: 447, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !894, file: !19, line: 313, baseType: !570, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !894, file: !19, line: 314, baseType: !570, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !894, file: !19, line: 315, baseType: !570, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !894, file: !19, line: 316, baseType: !570, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !894, file: !19, line: 317, baseType: !707, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !894, file: !19, line: 318, baseType: !707, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !894, file: !19, line: 319, baseType: !707, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !894, file: !19, line: 320, baseType: !737, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !888, file: !19, line: 448, baseType: !140, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !888, file: !19, line: 449, baseType: !887, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !884, file: !19, line: 224, baseType: !85, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !884, file: !19, line: 226, baseType: !145, size: 128, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !884, file: !19, line: 227, baseType: !295, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !884, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !884, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !884, file: !19, line: 230, baseType: !671, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !884, file: !19, line: 231, baseType: !671, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !884, file: !19, line: 232, baseType: !317, size: 64, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !876, file: !19, line: 526, baseType: !915, size: 192, offset: 2304)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 192, elements: !246)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !478, file: !14, line: 1233, baseType: !917, size: 2368, offset: 4544)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !917, file: !14, line: 1185, baseType: !215, size: 16)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !917, file: !14, line: 1186, baseType: !215, size: 16, offset: 16)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !917, file: !14, line: 1187, baseType: !922, size: 2304, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 2304, elements: !246)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !924, line: 12, size: 768, elements: !925)
!924 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!925 = !{!926, !948, !950, !2998, !2999}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !923, file: !924, line: 13, baseType: !927, size: 384)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !928, line: 17, size: 384, elements: !929)
!928 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!929 = !{!930, !931, !932, !939}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !927, file: !928, line: 18, baseType: !85, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !927, file: !928, line: 19, baseType: !85, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !927, file: !928, line: 20, baseType: !933, size: 192, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !934, line: 41, baseType: !935)
!934 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !934, line: 37, size: 192, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !934, line: 38, baseType: !175, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !935, file: !934, line: 39, baseType: !145, size: 128, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !927, file: !928, line: 22, baseType: !940, size: 128, align: 64, offset: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !146, line: 232, size: 128, align: 64, elements: !941)
!941 = !{!942, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !146, line: 233, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !940, file: !146, line: 234, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !943}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !923, file: !924, line: 14, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !923, file: !924, line: 15, baseType: !951, size: 64, offset: 448)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !952, line: 16, size: 64, elements: !953)
!952 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !951, file: !952, line: 17, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !601, line: 746, size: 58368, elements: !957)
!957 = !{!958, !966, !967, !968, !974, !975, !976, !977, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1055, !1066, !1161, !1165, !1168, !1199, !1200, !1201, !1202, !1213, !1215, !1216, !1217, !1218, !1219, !1220, !1231, !1232, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1249, !1250, !1257, !1258, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2062, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2077, !2078, !2079, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2121, !2127, !2128, !2129, !2130, !2131, !2135, !2138, !2145, !2150, !2153, !2181, !2184, !2188, !2328, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2368, !2369, !2370, !2379, !2387, !2388, !2389, !2390, !2391, !2396, !2397, !2398, !2401, !2402, !2405, !2408, !2411, !2419, !2422, !2423, !2509, !2510, !2511, !2512, !2513, !2519, !2520, !2521, !2522, !2525, !2526, !2529, !2543, !2544, !2547, !2548, !2549, !2552, !2553, !2554, !2555, !2556, !2557, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2589, !2590, !2656, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2668, !2740, !2742, !2743, !2744, !2745, !2746, !2758, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2775, !2776, !2777}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !956, file: !601, line: 752, baseType: !959, size: 192)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !960, line: 56, size: 192, elements: !961)
!960 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!961 = !{!962, !963, !964, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !960, line: 57, baseType: !295, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !959, file: !960, line: 58, baseType: !295, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !959, file: !960, line: 59, baseType: !395, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !959, file: !960, line: 61, baseType: !395, size: 32, offset: 160)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !956, file: !601, line: 754, baseType: !7, size: 32, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !956, file: !601, line: 767, baseType: !317, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !956, file: !601, line: 768, baseType: !969, size: 32, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !970, line: 113, baseType: !971)
!970 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !970, line: 111, size: 32, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !971, file: !970, line: 112, baseType: !195, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !601, line: 770, baseType: !7, size: 32, offset: 352)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !956, file: !601, line: 771, baseType: !7, size: 32, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !956, file: !601, line: 774, baseType: !85, size: 32, offset: 416)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !956, file: !601, line: 775, baseType: !978, size: 128, offset: 448)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !979, line: 58, size: 128, elements: !980)
!979 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!980 = !{!981, !987, !992, !993}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !978, file: !979, line: 59, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !983, line: 60, size: 64, elements: !984)
!983 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !983, line: 61, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !979, line: 60, baseType: !988, size: 32, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !979, line: 60, size: 32, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !988, file: !979, line: 61, baseType: !7, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !988, file: !979, line: 62, baseType: !195, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !978, file: !979, line: 65, baseType: !213, size: 16, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !978, file: !979, line: 65, baseType: !213, size: 16, offset: 112)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !956, file: !601, line: 776, baseType: !7, size: 32, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !956, file: !601, line: 777, baseType: !295, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !956, file: !601, line: 778, baseType: !955, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !956, file: !601, line: 787, baseType: !85, size: 32, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !956, file: !601, line: 788, baseType: !85, size: 32, offset: 800)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !956, file: !601, line: 790, baseType: !85, size: 32, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !956, file: !601, line: 792, baseType: !85, size: 32, offset: 864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !956, file: !601, line: 793, baseType: !85, size: 32, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !956, file: !601, line: 794, baseType: !85, size: 32, offset: 928)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !956, file: !601, line: 795, baseType: !7, size: 32, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !956, file: !601, line: 797, baseType: !1005, size: 2048, offset: 1024)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !601, line: 551, size: 2048, elements: !1006)
!1006 = !{!1007, !1012, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1034, !1037, !1038, !1039}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1005, file: !601, line: 553, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !601, line: 411, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1008, file: !601, line: 412, baseType: !295, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1008, file: !601, line: 413, baseType: !395, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1005, file: !601, line: 554, baseType: !1013, size: 192, align: 64, offset: 128)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1014, line: 5, size: 192, align: 64, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1015 = !{!1016, !1017, !1019}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1013, file: !1014, line: 6, baseType: !295, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1013, file: !1014, line: 7, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1013, file: !1014, line: 8, baseType: !1018, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1005, file: !601, line: 555, baseType: !399, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1005, file: !601, line: 556, baseType: !399, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1005, file: !601, line: 558, baseType: !145, size: 128, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1005, file: !601, line: 559, baseType: !7, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1005, file: !601, line: 561, baseType: !399, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1005, file: !601, line: 562, baseType: !399, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1005, file: !601, line: 563, baseType: !399, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1005, file: !601, line: 564, baseType: !399, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1005, file: !601, line: 565, baseType: !636, size: 64, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1005, file: !601, line: 566, baseType: !399, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1005, file: !601, line: 568, baseType: !399, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1005, file: !601, line: 571, baseType: !85, size: 32, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1005, file: !601, line: 572, baseType: !1033, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1005, file: !601, line: 574, baseType: !1035, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !601, line: 49, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1005, file: !601, line: 576, baseType: !1035, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1005, file: !601, line: 578, baseType: !295, size: 64, offset: 1344)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1005, file: !601, line: 588, baseType: !1040, size: 512, align: 512, offset: 1536)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !601, line: 497, size: 512, align: 512, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1040, file: !601, line: 498, baseType: !399, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1040, file: !601, line: 499, baseType: !399, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1040, file: !601, line: 500, baseType: !399, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1040, file: !601, line: 501, baseType: !395, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1040, file: !601, line: 502, baseType: !395, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1040, file: !601, line: 503, baseType: !295, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1040, file: !601, line: 504, baseType: !295, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1040, file: !601, line: 505, baseType: !295, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1040, file: !601, line: 506, baseType: !1051, size: 64, align: 64, offset: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !601, line: 445, size: 64, align: 64, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1051, file: !601, line: 446, baseType: !7, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1051, file: !601, line: 447, baseType: !7, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !956, file: !601, line: 798, baseType: !1056, size: 384, offset: 3072)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !601, line: 592, size: 384, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1056, file: !601, line: 593, baseType: !145, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1056, file: !601, line: 594, baseType: !295, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1056, file: !601, line: 595, baseType: !295, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1056, file: !601, line: 596, baseType: !7, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1056, file: !601, line: 597, baseType: !215, size: 16, offset: 288)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1056, file: !601, line: 598, baseType: !215, size: 16, offset: 304)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1056, file: !601, line: 600, baseType: !1065, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !956, file: !601, line: 799, baseType: !1067, size: 1792, offset: 3456)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !601, line: 610, size: 1792, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1158, !1159}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1067, file: !601, line: 611, baseType: !1013, size: 192, align: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1067, file: !601, line: 618, baseType: !399, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1067, file: !601, line: 619, baseType: !399, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1067, file: !601, line: 620, baseType: !399, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1067, file: !601, line: 621, baseType: !399, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1067, file: !601, line: 622, baseType: !399, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1067, file: !601, line: 629, baseType: !636, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1067, file: !601, line: 630, baseType: !399, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !601, line: 631, baseType: !7, size: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1067, file: !601, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1067, file: !601, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1067, file: !601, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1067, file: !601, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1067, file: !601, line: 662, baseType: !1083, size: 512, offset: 704)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1084)
!1084 = !{!1085, !1093, !1094, !1099, !1154, !1155, !1156, !1157}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1083, file: !25, line: 119, baseType: !1086, size: 256)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1087, line: 9, size: 256, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1086, file: !1087, line: 10, baseType: !1013, size: 192, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1086, file: !1087, line: 11, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1092, line: 29, baseType: !636)
!1092 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1083, file: !25, line: 120, baseType: !1091, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1083, file: !25, line: 121, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!24, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1083, file: !25, line: 122, baseType: !1100, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1102)
!1102 = !{!1103, !1128, !1129, !1132, !1137, !1138, !1149, !1153}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1101, file: !25, line: 160, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !25, line: 216, baseType: !639, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1105, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1105, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1105, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1105, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1105, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1105, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1105, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1105, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1105, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1105, file: !25, line: 227, baseType: !215, size: 16, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1105, file: !25, line: 228, baseType: !215, size: 16, offset: 208)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1105, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1105, file: !25, line: 235, baseType: !1091, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1105, file: !25, line: 236, baseType: !1098, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1105, file: !25, line: 237, baseType: !1091, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1105, file: !25, line: 238, baseType: !1098, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1105, file: !25, line: 239, baseType: !1125, size: 4096, align: 512, offset: 512)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 4096, align: 512, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 8)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1101, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1101, file: !25, line: 162, baseType: !1130, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !146, line: 32, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !279, line: 96, baseType: !85)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1101, file: !25, line: 163, baseType: !1133, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !368, line: 274, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !368, line: 274, size: 32, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1134, file: !368, line: 274, baseType: !372, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1101, file: !25, line: 164, baseType: !1098, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1101, file: !25, line: 165, baseType: !1139, size: 128, offset: 256)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1087, line: 14, size: 128, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1139, file: !1087, line: 15, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1014, line: 26, size: 128, elements: !1143)
!1143 = !{!1144, !1148}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1142, file: !1014, line: 27, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1014, line: 12, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1145, file: !1014, line: 13, baseType: !1018, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1142, file: !1014, line: 28, baseType: !1018, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1101, file: !25, line: 166, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1091}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1101, file: !25, line: 167, baseType: !1091, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1083, file: !25, line: 123, baseType: !203, size: 8, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1083, file: !25, line: 124, baseType: !203, size: 8, offset: 456)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1083, file: !25, line: 125, baseType: !203, size: 8, offset: 464)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1083, file: !25, line: 126, baseType: !203, size: 8, offset: 472)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1067, file: !601, line: 671, baseType: !1083, size: 512, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1067, file: !601, line: 679, baseType: !1160, size: 64, offset: 1728)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !956, file: !601, line: 800, baseType: !1162, size: 64, offset: 5248)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !601, line: 800, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !956, file: !601, line: 809, baseType: !1166, size: 64, offset: 5312)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !601, line: 70, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !956, file: !601, line: 825, baseType: !1169, size: 2048, align: 512, offset: 5632)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !601, line: 509, size: 2048, align: 512, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1169, file: !601, line: 511, baseType: !399, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1169, file: !601, line: 512, baseType: !399, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1169, file: !601, line: 513, baseType: !399, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1169, file: !601, line: 514, baseType: !399, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1169, file: !601, line: 515, baseType: !399, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1169, file: !601, line: 516, baseType: !399, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1169, file: !601, line: 518, baseType: !399, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1169, file: !601, line: 519, baseType: !399, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1169, file: !601, line: 520, baseType: !636, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1169, file: !601, line: 522, baseType: !399, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1169, file: !601, line: 523, baseType: !399, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1169, file: !601, line: 524, baseType: !636, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1169, file: !601, line: 526, baseType: !636, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1169, file: !601, line: 527, baseType: !399, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1169, file: !601, line: 529, baseType: !399, size: 64, offset: 896)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1169, file: !601, line: 530, baseType: !399, size: 64, offset: 960)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1169, file: !601, line: 531, baseType: !399, size: 64, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1169, file: !601, line: 532, baseType: !399, size: 64, offset: 1088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1169, file: !601, line: 533, baseType: !399, size: 64, offset: 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1169, file: !601, line: 535, baseType: !399, size: 64, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1169, file: !601, line: 536, baseType: !399, size: 64, offset: 1280)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1169, file: !601, line: 537, baseType: !399, size: 64, offset: 1344)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1169, file: !601, line: 538, baseType: !399, size: 64, offset: 1408)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1169, file: !601, line: 539, baseType: !399, size: 64, offset: 1472)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1169, file: !601, line: 540, baseType: !399, size: 64, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1169, file: !601, line: 541, baseType: !399, size: 64, offset: 1600)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1169, file: !601, line: 542, baseType: !399, size: 64, offset: 1664)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1169, file: !601, line: 543, baseType: !399, size: 64, offset: 1728)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !956, file: !601, line: 833, baseType: !7, size: 32, offset: 7680)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !956, file: !601, line: 836, baseType: !7, size: 32, offset: 7712)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !956, file: !601, line: 837, baseType: !85, size: 32, offset: 7744)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !956, file: !601, line: 838, baseType: !1203, size: 64, offset: 7808)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1206, line: 19, baseType: !1207)
!1206 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1206, line: 19, size: 64, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1207, file: !1206, line: 19, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 1)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !956, file: !601, line: 839, baseType: !1214, size: 64, offset: 7872)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !956, file: !601, line: 840, baseType: !1205, size: 64, offset: 7936)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !956, file: !601, line: 841, baseType: !317, size: 64, offset: 8000)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !956, file: !601, line: 843, baseType: !215, size: 16, offset: 8064)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !956, file: !601, line: 845, baseType: !215, size: 16, offset: 8080)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !956, file: !601, line: 848, baseType: !85, size: 32, offset: 8096)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !956, file: !601, line: 849, baseType: !1221, size: 32, offset: 8128)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !601, line: 718, size: 32, elements: !1222)
!1222 = !{!1223, !1230}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1221, file: !601, line: 724, baseType: !1224, size: 32)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !601, line: 719, size: 32, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1224, file: !601, line: 720, baseType: !203, size: 8)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1224, file: !601, line: 721, baseType: !203, size: 8, offset: 8)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1224, file: !601, line: 722, baseType: !203, size: 8, offset: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1224, file: !601, line: 723, baseType: !203, size: 8, offset: 24)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1221, file: !601, line: 725, baseType: !395, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !956, file: !601, line: 850, baseType: !145, size: 128, offset: 8192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !956, file: !601, line: 851, baseType: !1233, size: 64, offset: 8320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !601, line: 60, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !956, file: !601, line: 855, baseType: !295, size: 64, offset: 8384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !956, file: !601, line: 856, baseType: !203, size: 8, offset: 8448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !956, file: !601, line: 857, baseType: !203, size: 8, offset: 8456)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !956, file: !601, line: 858, baseType: !85, size: 32, offset: 8480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !956, file: !601, line: 859, baseType: !145, size: 128, offset: 8512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !956, file: !601, line: 860, baseType: !85, size: 32, offset: 8640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !956, file: !601, line: 861, baseType: !145, size: 128, offset: 8704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !956, file: !601, line: 873, baseType: !1243, size: 256, offset: 8832)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !601, line: 376, size: 256, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1243, file: !601, line: 381, baseType: !295, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1243, file: !601, line: 384, baseType: !401, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1243, file: !601, line: 389, baseType: !401, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1243, file: !601, line: 392, baseType: !401, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !956, file: !601, line: 875, baseType: !145, size: 128, offset: 9088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !956, file: !601, line: 877, baseType: !1251, size: 320, offset: 9216)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1252, line: 86, size: 320, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1251, file: !1252, line: 87, baseType: !85, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1251, file: !1252, line: 88, baseType: !145, size: 128, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1251, file: !1252, line: 89, baseType: !145, size: 128, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !956, file: !601, line: 878, baseType: !1013, size: 192, align: 64, offset: 9536)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !956, file: !601, line: 881, baseType: !1259, size: 64, offset: 9728)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !698, line: 733, size: 10240, elements: !1261)
!1261 = !{!1262, !1981}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !698, line: 734, baseType: !1263, size: 10240)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !698, line: 734, size: 10240, elements: !1264)
!1264 = !{!1265, !1269, !1282, !1845, !1846, !1847, !1848, !1849, !1850, !1857, !1858, !1859, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1898, !1900, !1903, !1950, !1951, !1952, !1955, !1956, !1957, !1960, !1961, !1962, !1968, !1969}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !698, line: 739, baseType: !1266, size: 512, align: 512)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !698, line: 739, size: 512, align: 512, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1266, file: !698, line: 747, baseType: !195, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1263, file: !698, line: 750, baseType: !1270, size: 128, offset: 512)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1271, line: 218, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1272 = !{!1273, !1280, !1281}
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !1271, line: 219, baseType: !1274, size: 32)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !1271, line: 219, size: 32, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1274, file: !1271, line: 220, baseType: !175, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1274, file: !1271, line: 221, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1271, line: 197, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 197, elements: !530)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1270, file: !1271, line: 223, baseType: !7, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1270, file: !1271, line: 224, baseType: !317, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1263, file: !698, line: 752, baseType: !1283, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!295, !1286, !295, !295, !295, !295}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1288)
!1288 = !{!1289, !1295, !1296, !1298, !1299, !1300, !1301, !1302, !1354, !1549, !1558, !1559, !1560, !1835, !1836, !1837, !1838, !1840, !1841, !1844}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !14, line: 995, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !14, line: 995, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1290, file: !14, line: 996, baseType: !982, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1290, file: !14, line: 997, baseType: !940, size: 128, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1290, file: !14, line: 998, baseType: !7, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1287, file: !14, line: 1005, baseType: !175, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1287, file: !14, line: 1006, baseType: !1297, size: 32, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !146, line: 156, baseType: !7)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1287, file: !14, line: 1007, baseType: !630, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1287, file: !14, line: 1008, baseType: !626, size: 256, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1287, file: !14, line: 1009, baseType: !487, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1287, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1287, file: !14, line: 1011, baseType: !1303, size: 256, offset: 640)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1304)
!1304 = !{!1305, !1326, !1350, !1351, !1352, !1353}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1303, file: !14, line: 949, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1307, line: 34, baseType: !1308)
!1307 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1307, line: 25, size: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1308, file: !1307, line: 26, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1312, line: 27, baseType: !1313)
!1312 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1312, line: 13, size: 64, elements: !1314)
!1314 = !{!1315, !1325}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1312, line: 14, baseType: !1316, size: 32)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1312, line: 14, size: 32, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1316, file: !1312, line: 15, baseType: !195, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1312, line: 16, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1312, line: 16, size: 32, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1320, file: !1312, line: 18, baseType: !203, size: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1320, file: !1312, line: 19, baseType: !1324, size: 24, offset: 8)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 24, elements: !246)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1313, file: !1312, line: 26, baseType: !187, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1303, file: !14, line: 950, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1337, !1338, !1339, !1340}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !30, line: 61, baseType: !969, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1328, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1328, file: !30, line: 63, baseType: !175, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1328, file: !30, line: 65, baseType: !1334, size: 256, offset: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 256, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 4)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1328, file: !30, line: 66, baseType: !518, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1328, file: !30, line: 68, baseType: !933, size: 192, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1328, file: !30, line: 69, baseType: !940, size: 128, align: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1328, file: !30, line: 70, baseType: !1341, offset: 768)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, elements: !1348)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1342, file: !30, line: 55, baseType: !85, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1342, file: !30, line: 56, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1348 = !{!1349}
!1349 = !DISubrange(count: -1)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1303, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1303, file: !14, line: 952, baseType: !332, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1303, file: !14, line: 952, baseType: !332, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1303, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1287, file: !14, line: 1012, baseType: !1355, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1358, line: 110, size: 1472, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1376, !1377, !1378, !1379, !1380, !1381, !1494, !1495, !1496, !1497, !1498, !1529, !1532, !1536, !1544}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 111, baseType: !630, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 112, baseType: !332, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 113, baseType: !341, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1357, file: !1358, line: 114, baseType: !332, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1357, file: !1358, line: 115, baseType: !341, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1357, file: !1358, line: 116, baseType: !332, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1357, file: !1358, line: 117, baseType: !341, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1357, file: !1358, line: 118, baseType: !332, size: 32, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1357, file: !1358, line: 119, baseType: !341, size: 32, offset: 288)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1357, file: !1358, line: 120, baseType: !7, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1357, file: !1358, line: 121, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1372, line: 24, baseType: !1373)
!1372 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 24, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1373, file: !1372, line: 24, baseType: !399, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1357, file: !1358, line: 122, baseType: !1371, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1357, file: !1358, line: 123, baseType: !1371, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1357, file: !1358, line: 124, baseType: !1371, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1357, file: !1358, line: 125, baseType: !1371, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1357, file: !1358, line: 127, baseType: !207, size: 8, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1357, file: !1358, line: 129, baseType: !1382, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1384, line: 195, size: 1728, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1385 = !{!1386, !1387, !1392, !1397, !1398, !1401, !1402, !1407, !1408, !1409, !1410, !1413, !1414, !1415, !1417, !1418, !1458, !1479}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1383, file: !1384, line: 196, baseType: !969, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1383, file: !1384, line: 197, baseType: !1388, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1384, line: 28, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !146, line: 104, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !204, line: 20, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !206, line: 26, baseType: !85)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 198, baseType: !1393, size: 192, offset: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 198, size: 192, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1393, file: !1384, line: 199, baseType: !145, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1393, file: !1384, line: 200, baseType: !1013, size: 192, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1383, file: !1384, line: 205, baseType: !840, size: 320, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1383, file: !1384, line: 206, baseType: !1399, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1384, line: 206, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1383, file: !1384, line: 207, baseType: !317, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 208, baseType: !1403, size: 64, offset: 704)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 208, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1403, file: !1384, line: 209, baseType: !679, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1403, file: !1384, line: 210, baseType: !679, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1383, file: !1384, line: 212, baseType: !679, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1383, file: !1384, line: 213, baseType: !332, size: 32, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1383, file: !1384, line: 214, baseType: !341, size: 32, offset: 864)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1383, file: !1384, line: 215, baseType: !1411, size: 32, offset: 896)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1384, line: 31, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 110, baseType: !395)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1383, file: !1384, line: 216, baseType: !215, size: 16, offset: 928)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1383, file: !1384, line: 217, baseType: !215, size: 16, offset: 944)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1383, file: !1384, line: 221, baseType: !1416, size: 16, offset: 960)
!1416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !1384, line: 228, baseType: !295, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 245, baseType: !1419, size: 320, offset: 1088)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 245, size: 320, elements: !1420)
!1420 = !{!1421, !1450}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1419, file: !1384, line: 246, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1384, line: 114, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1437, !1440, !1449}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1384, line: 116, baseType: !295, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1384, line: 117, baseType: !1426, size: 64, offset: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1384, line: 117, size: 64, elements: !1427)
!1427 = !{!1428, !1436}
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1384, line: 118, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1426, file: !1384, line: 118, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1429, file: !1384, line: 120, baseType: !213, size: 16)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1429, file: !1384, line: 121, baseType: !1433, size: 48, offset: 16)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 48, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 6)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1426, file: !1384, line: 127, baseType: !295, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !1384, line: 129, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1384, line: 102, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1422, file: !1384, line: 130, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1384, line: 108, size: 192, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1442, file: !1384, line: 109, baseType: !940, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1442, file: !1384, line: 110, baseType: !969, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1442, file: !1384, line: 111, baseType: !1447, size: 8, offset: 160)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !146, line: 35, baseType: !1448)
!1448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1422, file: !1384, line: 131, baseType: !164, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1384, line: 247, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !1384, line: 247, size: 320, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1451, file: !1384, line: 248, baseType: !295, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1451, file: !1384, line: 249, baseType: !295, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !1384, line: 250, baseType: !1438, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1451, file: !1384, line: 251, baseType: !1441, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1451, file: !1384, line: 252, baseType: !245, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 260, baseType: !1459, size: 256, offset: 1408)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 260, size: 256, elements: !1460)
!1460 = !{!1461, !1467}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1459, file: !1384, line: 261, baseType: !1462, size: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1384, line: 134, size: 256, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1462, file: !1384, line: 135, baseType: !317, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1462, file: !1384, line: 136, baseType: !1466, size: 256)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 256, elements: !1335)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1384, line: 262, baseType: !1468, size: 256)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !1384, line: 262, size: 256, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1468, file: !1384, line: 264, baseType: !145, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1468, file: !1384, line: 265, baseType: !1472, size: 128, offset: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1473, line: 22, size: 128, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1474 = !{!1475, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1472, file: !1473, line: 23, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1473, line: 23, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1472, file: !1473, line: 24, baseType: !295, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1383, file: !1384, line: 280, baseType: !1480, size: 64, offset: 1664)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1384, line: 176, size: 192, elements: !1482)
!1482 = !{!1483, !1492, !1493}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1481, file: !1384, line: 177, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1384, line: 171, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!85, !1382, !1488, !1490, !1382}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1481, file: !1384, line: 178, baseType: !1382, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1481, file: !1384, line: 179, baseType: !1438, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1357, file: !1358, line: 130, baseType: !1382, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1357, file: !1358, line: 131, baseType: !1382, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1357, file: !1358, line: 132, baseType: !1382, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 135, baseType: !317, size: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 137, baseType: !1499, size: 64, offset: 1088)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1501, line: 14, size: 1088, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1502 = !{!1503, !1504, !1513, !1514, !1515, !1516, !1517, !1518}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1500, file: !1501, line: 15, baseType: !969, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1500, file: !1501, line: 17, baseType: !1505, size: 320, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1506, line: 22, size: 320, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !1506, line: 23, baseType: !639, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !1506, line: 24, baseType: !636, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1505, file: !1506, line: 26, baseType: !145, size: 128, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1505, file: !1506, line: 28, baseType: !1512, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1500, file: !1501, line: 19, baseType: !295, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1500, file: !1501, line: 20, baseType: !630, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1500, file: !1501, line: 23, baseType: !522, size: 128, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1500, file: !1501, line: 24, baseType: !332, size: 32, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1500, file: !1501, line: 29, baseType: !630, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1500, file: !1501, line: 36, baseType: !1519, size: 320, offset: 768)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1520, line: 15, size: 320, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1520, line: 16, baseType: !639, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1519, file: !1520, line: 18, baseType: !85, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1519, file: !1520, line: 19, baseType: !85, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1519, file: !1520, line: 20, baseType: !85, size: 32, offset: 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1519, file: !1520, line: 21, baseType: !85, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1519, file: !1520, line: 22, baseType: !295, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !1520, line: 23, baseType: !295, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1357, file: !1358, line: 138, baseType: !1530, size: 64, offset: 1152)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !333, line: 18, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1357, file: !1358, line: 139, baseType: !1533, size: 64, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1535, line: 16, flags: DIFlagFwdDecl)
!1535 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1357, file: !1358, line: 140, baseType: !1537, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1358, line: 25, size: 64, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1358, line: 26, baseType: !195, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1538, file: !1358, line: 27, baseType: !85, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1538, file: !1358, line: 28, baseType: !1543, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, elements: !1348)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 142, baseType: !1545, size: 128, offset: 1344)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 142, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1545, file: !1358, line: 143, baseType: !85, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1545, file: !1358, line: 144, baseType: !940, size: 128, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1287, file: !14, line: 1013, baseType: !1550, size: 256, offset: 960)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1550, file: !14, line: 971, baseType: !295, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1550, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1550, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1550, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1550, file: !14, line: 976, baseType: !487, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1287, file: !14, line: 1014, baseType: !752, size: 128, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1287, file: !14, line: 1015, baseType: !326, size: 64, offset: 1344)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1287, file: !14, line: 1016, baseType: !1561, size: 64, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1564)
!1564 = !{!1565, !1566, !1570, !1575, !1579, !1663, !1664, !1670, !1683, !1691, !1695, !1696, !1757, !1758, !1762, !1767, !1768, !1772, !1776, !1782, !1783, !1787, !1788, !1794, !1798, !1802, !1808, !1812, !1816, !1820, !1824, !1825, !1831}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1563, file: !14, line: 1915, baseType: !140, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1563, file: !14, line: 1916, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!487, !1286, !487, !85}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !14, line: 1917, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!277, !1286, !245, !292, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !14, line: 1918, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!277, !1286, !164, !292, !1574}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1563, file: !14, line: 1919, baseType: !1580, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!277, !1583, !1605}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1592, !1593, !1594, !1595}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1584, file: !14, line: 374, baseType: !1286, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1584, file: !14, line: 375, baseType: !487, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1584, file: !14, line: 376, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1583, !281}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1584, file: !14, line: 377, baseType: !317, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1584, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1584, file: !14, line: 379, baseType: !213, size: 16, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !14, line: 380, baseType: !1596, size: 64, offset: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !14, line: 380, size: 64, elements: !1597)
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1596, file: !14, line: 386, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1596, file: !14, line: 395, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!277, !317}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1607, line: 41, size: 320, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1619, !1658}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1606, file: !1607, line: 42, baseType: !203, size: 8)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1606, file: !1607, line: 43, baseType: !1447, size: 8, offset: 8)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1606, file: !1607, line: 44, baseType: !1447, size: 8, offset: 16)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1606, file: !1607, line: 45, baseType: !1447, size: 8, offset: 24)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1606, file: !1607, line: 46, baseType: !1447, size: 8, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 47, baseType: !1615, size: 64, offset: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 47, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1615, file: !1607, line: 48, baseType: !292, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1615, file: !1607, line: 49, baseType: !85, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 61, baseType: !1620, size: 128, offset: 128)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 61, size: 128, elements: !1621)
!1621 = !{!1622, !1628}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1620, file: !1607, line: 67, baseType: !1623, size: 128)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1624, line: 17, size: 128, elements: !1625)
!1624 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1623, file: !1624, line: 19, baseType: !317, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1623, file: !1624, line: 20, baseType: !293, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1607, line: 68, baseType: !1629, size: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1607, line: 68, size: 128, elements: !1630)
!1630 = !{!1631, !1657}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1607, line: 69, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !1607, line: 69, size: 64, elements: !1633)
!1633 = !{!1634, !1637, !1644, !1648, !1656}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1632, file: !1607, line: 71, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1632, file: !1607, line: 72, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1607, line: 17, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1640, file: !1607, line: 18, baseType: !317, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1640, file: !1607, line: 19, baseType: !292, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1632, file: !1607, line: 73, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1607, line: 73, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1632, file: !1607, line: 74, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1651, line: 296, size: 128, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1650, file: !1651, line: 297, baseType: !175, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1650, file: !1651, line: 299, baseType: !691, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1650, file: !1651, line: 300, baseType: !317, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1632, file: !1607, line: 75, baseType: !317, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1629, file: !1607, line: 77, baseType: !292, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 80, baseType: !1659, size: 64, offset: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 80, size: 64, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1659, file: !1607, line: 81, baseType: !295, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1659, file: !1607, line: 82, baseType: !487, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1563, file: !14, line: 1920, baseType: !1580, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1563, file: !14, line: 1921, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!85, !1583, !1668, !7}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1563, file: !14, line: 1923, baseType: !1671, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!85, !1286, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1676)
!1676 = !{!1677, !1682}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1675, file: !14, line: 1859, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1447, !1674, !164, !85, !487, !399, !7}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1675, file: !14, line: 1860, baseType: !487, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !14, line: 1924, baseType: !1684, size: 64, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1687, !1286, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1688, line: 59, baseType: !7)
!1688 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !502, line: 31, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1563, file: !14, line: 1925, baseType: !1692, size: 64, offset: 576)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!281, !1286, !7, !295}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1563, file: !14, line: 1926, baseType: !1692, size: 64, offset: 640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !14, line: 1927, baseType: !1697, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!85, !1286, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !698, line: 625, size: 1344, elements: !1702)
!1702 = !{!1703, !1712, !1713, !1721, !1728, !1729, !1734, !1735, !1740, !1741, !1744, !1748, !1749, !1750, !1751, !1752, !1755}
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !698, line: 628, baseType: !1704, size: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1701, file: !698, line: 628, size: 128, elements: !1705)
!1705 = !{!1706, !1711}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !698, line: 629, baseType: !1707, size: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !698, line: 629, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1707, file: !698, line: 631, baseType: !295, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1707, file: !698, line: 632, baseType: !295, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1704, file: !698, line: 635, baseType: !940, size: 128, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1701, file: !698, line: 639, baseType: !1259, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1701, file: !698, line: 640, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1715, line: 297, baseType: !1716)
!1715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1715, line: 297, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1716, file: !1715, line: 297, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1720, line: 19, baseType: !295)
!1720 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !698, line: 646, baseType: !1722, size: 64, offset: 256)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1701, file: !698, line: 646, size: 64, elements: !1723)
!1723 = !{!1724, !1727}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1722, file: !698, line: 647, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !698, line: 542, baseType: !295)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1722, file: !698, line: 648, baseType: !1726, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1701, file: !698, line: 666, baseType: !85, size: 32, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1701, file: !698, line: 667, baseType: !1730, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !698, line: 579, size: 320, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !698, line: 580, baseType: !840, size: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1701, file: !698, line: 670, baseType: !1447, size: 8, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1701, file: !698, line: 681, baseType: !1736, size: 256, offset: 512)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !698, line: 678, size: 256, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1736, file: !698, line: 679, baseType: !1013, size: 192, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1736, file: !698, line: 680, baseType: !295, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1701, file: !698, line: 689, baseType: !145, size: 128, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1701, file: !698, line: 691, baseType: !1742, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !698, line: 691, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1701, file: !698, line: 694, baseType: !1745, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !698, line: 694, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1701, file: !698, line: 697, baseType: !295, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1701, file: !698, line: 699, baseType: !1286, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1701, file: !698, line: 700, baseType: !317, size: 64, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1701, file: !698, line: 711, baseType: !630, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1701, file: !698, line: 717, baseType: !1753, size: 64, offset: 1280)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !698, line: 717, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1701, file: !698, line: 722, baseType: !1756, offset: 1344)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !698, line: 570, elements: !530)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1563, file: !14, line: 1928, baseType: !295, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1563, file: !14, line: 1929, baseType: !1759, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!85, !326, !1286}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1563, file: !14, line: 1930, baseType: !1763, size: 64, offset: 896)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!85, !1286, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !317)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !14, line: 1931, baseType: !1759, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1563, file: !14, line: 1932, baseType: !1769, size: 64, offset: 1024)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!85, !1286, !487, !487, !85}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1563, file: !14, line: 1933, baseType: !1773, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!85, !85, !1286, !85}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !14, line: 1934, baseType: !1777, size: 64, offset: 1152)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!85, !1286, !85, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1563, file: !14, line: 1935, baseType: !1283, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1563, file: !14, line: 1936, baseType: !1784, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!85, !85}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1563, file: !14, line: 1937, baseType: !1777, size: 64, offset: 1344)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1563, file: !14, line: 1938, baseType: !1789, size: 64, offset: 1408)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!277, !1792, !1286, !1574, !292, !7}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !601, line: 59, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1563, file: !14, line: 1939, baseType: !1795, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!277, !1286, !1574, !1792, !292, !7}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1563, file: !14, line: 1940, baseType: !1799, size: 64, offset: 1536)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1286}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1563, file: !14, line: 1941, baseType: !1803, size: 64, offset: 1600)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!85, !1286, !85, !1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1563, file: !14, line: 1942, baseType: !1809, size: 64, offset: 1664)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!281, !1286, !85, !487, !487}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1563, file: !14, line: 1944, baseType: !1813, size: 64, offset: 1728)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !599, !1286}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1563, file: !14, line: 1948, baseType: !1817, size: 64, offset: 1792)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!277, !1286, !487, !1286, !487, !292, !7}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1563, file: !14, line: 1950, baseType: !1821, size: 64, offset: 1856)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!487, !1286, !487, !1286, !487, !487, !7}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1563, file: !14, line: 1953, baseType: !1769, size: 64, offset: 1920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1563, file: !14, line: 1954, baseType: !1826, size: 64, offset: 1984)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!85, !1829, !7}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1563, file: !14, line: 1955, baseType: !1832, size: 64, offset: 2048)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!85, !1829, !1668, !7}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1287, file: !14, line: 1018, baseType: !399, size: 64, offset: 1472)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1287, file: !14, line: 1020, baseType: !317, size: 64, offset: 1536)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1287, file: !14, line: 1023, baseType: !317, size: 64, offset: 1600)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1287, file: !14, line: 1027, baseType: !1839, size: 64, offset: 1664)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1287, file: !14, line: 1029, baseType: !322, size: 64, offset: 1728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1287, file: !14, line: 1030, baseType: !1842, size: 32, offset: 1792)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1843, line: 8, baseType: !395)
!1843 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1287, file: !14, line: 1031, baseType: !1842, size: 32, offset: 1824)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1263, file: !698, line: 756, baseType: !295, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1263, file: !698, line: 757, baseType: !295, size: 64, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1263, file: !698, line: 760, baseType: !295, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1263, file: !698, line: 761, baseType: !295, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1263, file: !698, line: 763, baseType: !295, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1263, file: !698, line: 764, baseType: !1851, size: 64, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1715, line: 299, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1715, line: 299, size: 64, elements: !1854)
!1854 = !{!1855}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1853, file: !1715, line: 299, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1720, line: 18, baseType: !295)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1263, file: !698, line: 773, baseType: !195, size: 32, offset: 1088)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1263, file: !698, line: 785, baseType: !195, size: 32, offset: 1120)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1263, file: !698, line: 795, baseType: !1860, size: 64, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !698, line: 726, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1861, file: !698, line: 727, baseType: !399, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1861, file: !698, line: 728, baseType: !85, size: 32, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1263, file: !698, line: 801, baseType: !295, size: 64, offset: 1216)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1263, file: !698, line: 804, baseType: !630, size: 64, offset: 1280)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1263, file: !698, line: 806, baseType: !85, size: 32, offset: 1344)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1263, file: !698, line: 808, baseType: !175, size: 32, offset: 1376)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1263, file: !698, line: 823, baseType: !840, size: 320, offset: 1408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1263, file: !698, line: 825, baseType: !145, size: 128, offset: 1728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1263, file: !698, line: 845, baseType: !85, size: 32, offset: 1856)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1263, file: !698, line: 849, baseType: !295, size: 64, offset: 1920)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1263, file: !698, line: 850, baseType: !295, size: 64, offset: 1984)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1263, file: !698, line: 852, baseType: !295, size: 64, offset: 2048)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1263, file: !698, line: 853, baseType: !295, size: 64, offset: 2112)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1263, file: !698, line: 854, baseType: !632, size: 64, offset: 2176)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1263, file: !698, line: 855, baseType: !295, size: 64, offset: 2240)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1263, file: !698, line: 856, baseType: !295, size: 64, offset: 2304)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1263, file: !698, line: 857, baseType: !295, size: 64, offset: 2368)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1263, file: !698, line: 858, baseType: !295, size: 64, offset: 2432)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1263, file: !698, line: 865, baseType: !372, size: 32, offset: 2496)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1263, file: !698, line: 867, baseType: !175, size: 32, offset: 2528)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1263, file: !698, line: 869, baseType: !295, size: 64, offset: 2560)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1263, file: !698, line: 869, baseType: !295, size: 64, offset: 2624)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1263, file: !698, line: 869, baseType: !295, size: 64, offset: 2688)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1263, file: !698, line: 869, baseType: !295, size: 64, offset: 2752)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1263, file: !698, line: 870, baseType: !295, size: 64, offset: 2816)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1263, file: !698, line: 870, baseType: !295, size: 64, offset: 2880)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1263, file: !698, line: 870, baseType: !295, size: 64, offset: 2944)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1263, file: !698, line: 871, baseType: !295, size: 64, offset: 3008)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1263, file: !698, line: 871, baseType: !295, size: 64, offset: 3072)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1263, file: !698, line: 871, baseType: !295, size: 64, offset: 3136)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1263, file: !698, line: 871, baseType: !295, size: 64, offset: 3200)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1263, file: !698, line: 873, baseType: !1895, size: 3328, offset: 3264)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 3328, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 52)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1263, file: !698, line: 875, baseType: !1899, size: 1280, offset: 6592)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1505, size: 1280, elements: !1335)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1263, file: !698, line: 877, baseType: !1901, size: 64, offset: 7872)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !698, line: 877, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1263, file: !698, line: 880, baseType: !1904, size: 1088, offset: 7936)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1905, line: 72, baseType: !1906)
!1905 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 23, size: 1088, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1915, !1916, !1917, !1918, !1945, !1946, !1947}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1906, file: !1905, line: 28, baseType: !399, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1906, file: !1905, line: 38, baseType: !632, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1906, file: !1905, line: 40, baseType: !295, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1906, file: !1905, line: 43, baseType: !840, size: 320, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1906, file: !1905, line: 44, baseType: !1913, size: 64, offset: 512)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1905, line: 44, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1905, line: 48, baseType: !295, size: 64, offset: 576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1906, file: !1905, line: 59, baseType: !626, size: 256, offset: 640)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1906, file: !1905, line: 60, baseType: !317, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1906, file: !1905, line: 61, baseType: !1919, size: 64, offset: 960)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1922, line: 13, size: 1216, elements: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1921, file: !1922, line: 14, baseType: !317, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1921, file: !1922, line: 15, baseType: !295, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1921, file: !1922, line: 17, baseType: !295, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1921, file: !1922, line: 17, baseType: !295, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1921, file: !1922, line: 18, baseType: !295, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1921, file: !1922, line: 18, baseType: !295, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1921, file: !1922, line: 19, baseType: !1931, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1921, file: !1922, line: 21, baseType: !281, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1921, file: !1922, line: 23, baseType: !281, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1921, file: !1922, line: 24, baseType: !281, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1921, file: !1922, line: 25, baseType: !281, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1921, file: !1922, line: 26, baseType: !281, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1921, file: !1922, line: 27, baseType: !281, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1921, file: !1922, line: 28, baseType: !281, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1921, file: !1922, line: 29, baseType: !281, size: 64, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1921, file: !1922, line: 30, baseType: !281, size: 64, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1921, file: !1922, line: 31, baseType: !281, size: 64, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1921, file: !1922, line: 32, baseType: !281, size: 64, offset: 1088)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1921, file: !1922, line: 33, baseType: !281, size: 64, offset: 1152)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1906, file: !1905, line: 63, baseType: !195, size: 32, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1906, file: !1905, line: 69, baseType: !213, size: 16, offset: 1056)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1906, file: !1905, line: 70, baseType: !1948, size: 16, offset: 1072)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !204, line: 18, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !206, line: 23, baseType: !1416)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !698, line: 882, baseType: !295, size: 64, offset: 9024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1263, file: !698, line: 885, baseType: !175, size: 32, offset: 9088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1263, file: !698, line: 886, baseType: !1953, size: 64, offset: 9152)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !698, line: 732, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1263, file: !698, line: 901, baseType: !1530, size: 64, offset: 9216)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1263, file: !698, line: 904, baseType: !1286, size: 64, offset: 9280)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1263, file: !698, line: 906, baseType: !1958, size: 64, offset: 9344)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !698, line: 906, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1263, file: !698, line: 930, baseType: !195, size: 32, offset: 9408)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1263, file: !698, line: 933, baseType: !195, size: 32, offset: 9440)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1263, file: !698, line: 935, baseType: !1963, size: 64, offset: 9472)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1964)
!1964 = !{!1965}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1963, file: !44, line: 104, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1263, file: !698, line: 940, baseType: !630, size: 64, offset: 9536)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1263, file: !698, line: 942, baseType: !1970, size: 256, offset: 9600)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1971, line: 98, size: 256, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1972 = !{!1973, !1974, !1975}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1970, file: !1971, line: 99, baseType: !630, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1970, file: !1971, line: 100, baseType: !145, size: 128, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1970, file: !1971, line: 101, baseType: !1976, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1971, line: 21, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1260, file: !698, line: 986, baseType: !1982, offset: 10240)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !1348)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !956, file: !601, line: 882, baseType: !1259, size: 64, offset: 9792)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !956, file: !601, line: 884, baseType: !85, size: 32, offset: 9856)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !956, file: !601, line: 885, baseType: !85, size: 32, offset: 9888)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !956, file: !601, line: 886, baseType: !85, size: 32, offset: 9920)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !956, file: !601, line: 888, baseType: !85, size: 32, offset: 9952)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !956, file: !601, line: 890, baseType: !295, size: 64, offset: 9984)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !956, file: !601, line: 893, baseType: !7, size: 32, offset: 10048)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !956, file: !601, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !956, file: !601, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !956, file: !601, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !956, file: !601, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !956, file: !601, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !956, file: !601, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !956, file: !601, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !956, file: !601, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !956, file: !601, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !956, file: !601, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !956, file: !601, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !956, file: !601, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !956, file: !601, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !956, file: !601, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !956, file: !601, line: 969, baseType: !295, size: 64, offset: 10176)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !956, file: !601, line: 971, baseType: !2006, size: 448, offset: 10240)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2007)
!2007 = !{!2008, !2009, !2014}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2006, file: !38, line: 26, baseType: !295, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2006, file: !38, line: 27, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!281, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !38, line: 28, baseType: !2015, size: 320, offset: 128)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !38, line: 28, size: 320, elements: !2016)
!2016 = !{!2017, !2027, !2052}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2015, file: !38, line: 37, baseType: !2018, size: 320)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !38, line: 30, size: 320, elements: !2019)
!2019 = !{!2020, !2022, !2023, !2024, !2025, !2026}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2018, file: !38, line: 31, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2018, file: !38, line: 32, baseType: !395, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !38, line: 33, baseType: !395, size: 32, offset: 96)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2018, file: !38, line: 34, baseType: !395, size: 32, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2018, file: !38, line: 35, baseType: !399, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2018, file: !38, line: 36, baseType: !2021, size: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2015, file: !38, line: 47, baseType: !2028, size: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !38, line: 39, size: 192, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2051}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2028, file: !38, line: 40, baseType: !1130, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !38, line: 42, baseType: !2033, size: 64, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !38, line: 42, size: 64, elements: !2034)
!2034 = !{!2035, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2033, file: !38, line: 43, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2038, line: 7, size: 128, elements: !2039)
!2038 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2039 = !{!2040, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2037, file: !2038, line: 8, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !279, line: 93, baseType: !489)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2037, file: !2038, line: 9, baseType: !489, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2033, file: !38, line: 44, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2046, line: 7, size: 64, elements: !2047)
!2046 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2047 = !{!2048, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2045, file: !2046, line: 8, baseType: !2049, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2046, line: 5, baseType: !1390)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2045, file: !2046, line: 9, baseType: !1390, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2028, file: !38, line: 46, baseType: !399, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2015, file: !38, line: 55, baseType: !2053, size: 256)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !38, line: 49, size: 256, elements: !2054)
!2054 = !{!2055, !2058, !2059, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2053, file: !38, line: 50, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2053, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2053, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2053, file: !38, line: 53, baseType: !295, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2053, file: !38, line: 54, baseType: !295, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !956, file: !601, line: 973, baseType: !2063, size: 32, offset: 10688)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !146, line: 27, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !279, line: 28, baseType: !85)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !956, file: !601, line: 974, baseType: !2063, size: 32, offset: 10720)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !956, file: !601, line: 978, baseType: !295, size: 64, offset: 10752)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !956, file: !601, line: 987, baseType: !955, size: 64, offset: 10816)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !956, file: !601, line: 990, baseType: !955, size: 64, offset: 10880)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !956, file: !601, line: 995, baseType: !145, size: 128, offset: 10944)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !956, file: !601, line: 996, baseType: !145, size: 128, offset: 11072)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !956, file: !601, line: 997, baseType: !955, size: 64, offset: 11200)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !956, file: !601, line: 1005, baseType: !145, size: 128, offset: 11264)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !956, file: !601, line: 1006, baseType: !145, size: 128, offset: 11392)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !956, file: !601, line: 1009, baseType: !1327, size: 64, offset: 11520)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !956, file: !601, line: 1010, baseType: !2076, size: 512, offset: 11584)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 512, elements: !1335)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !956, file: !601, line: 1011, baseType: !145, size: 128, offset: 12096)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !956, file: !601, line: 1012, baseType: !145, size: 128, offset: 12224)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !956, file: !601, line: 1014, baseType: !2080, size: 64, offset: 12352)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2082, line: 26, size: 256, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2081, file: !2082, line: 27, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2081, file: !2082, line: 28, baseType: !2086, size: 192, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2087, line: 43, size: 192, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2086, file: !2087, line: 44, baseType: !639, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2086, file: !2087, line: 45, baseType: !145, size: 128, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !956, file: !601, line: 1017, baseType: !593, size: 64, offset: 12416)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !956, file: !601, line: 1020, baseType: !593, size: 64, offset: 12480)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !956, file: !601, line: 1023, baseType: !317, size: 64, offset: 12544)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !956, file: !601, line: 1025, baseType: !399, size: 64, offset: 12608)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !956, file: !601, line: 1026, baseType: !399, size: 64, offset: 12672)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !956, file: !601, line: 1031, baseType: !399, size: 64, offset: 12736)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !956, file: !601, line: 1032, baseType: !2098, size: 192, offset: 12800)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !601, line: 324, size: 192, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2098, file: !601, line: 326, baseType: !399, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2098, file: !601, line: 327, baseType: !399, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2098, file: !601, line: 328, baseType: !639, size: 32, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !956, file: !601, line: 1041, baseType: !295, size: 64, offset: 12992)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !956, file: !601, line: 1042, baseType: !295, size: 64, offset: 13056)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !956, file: !601, line: 1045, baseType: !399, size: 64, offset: 13120)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !956, file: !601, line: 1048, baseType: !399, size: 64, offset: 13184)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !956, file: !601, line: 1051, baseType: !295, size: 64, offset: 13248)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !956, file: !601, line: 1052, baseType: !295, size: 64, offset: 13312)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !956, file: !601, line: 1055, baseType: !2110, size: 640, offset: 13376)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2111, line: 132, size: 640, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2112 = !{!2113, !2119, !2120}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2110, file: !2111, line: 133, baseType: !2114, size: 576)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2115, size: 576, elements: !246)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2111, line: 117, size: 192, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2115, file: !2111, line: 118, baseType: !399, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2115, file: !2111, line: 119, baseType: !1139, size: 128, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2110, file: !2111, line: 134, baseType: !7, size: 32, offset: 576)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2110, file: !2111, line: 135, baseType: !7, size: 32, offset: 608)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !956, file: !601, line: 1058, baseType: !2122, size: 448, offset: 14016)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2111, line: 144, size: 448, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2122, file: !2111, line: 145, baseType: !940, size: 128, align: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2122, file: !2111, line: 146, baseType: !626, size: 256, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2122, file: !2111, line: 147, baseType: !7, size: 32, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !956, file: !601, line: 1064, baseType: !1355, size: 64, offset: 14464)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !956, file: !601, line: 1067, baseType: !1355, size: 64, offset: 14528)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !956, file: !601, line: 1070, baseType: !1355, size: 64, offset: 14592)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !956, file: !601, line: 1074, baseType: !1382, size: 64, offset: 14656)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !956, file: !601, line: 1084, baseType: !2132, size: 128, offset: 14720)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 16)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !956, file: !601, line: 1086, baseType: !2136, size: 64, offset: 14848)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !601, line: 55, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !956, file: !601, line: 1089, baseType: !2139, size: 64, offset: 14912)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2140, line: 12, size: 64, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2139, file: !2140, line: 13, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2140, line: 8, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !956, file: !601, line: 1090, baseType: !2146, size: 128, offset: 14976)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2147, line: 13, size: 128, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2146, file: !2147, line: 14, baseType: !145, size: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !956, file: !601, line: 1097, baseType: !2151, size: 64, offset: 15104)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !601, line: 50, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !956, file: !601, line: 1100, baseType: !2154, size: 64, offset: 15168)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2156, line: 48, size: 5632, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!2157 = !{!2158, !2159, !2160, !2161, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2155, file: !2156, line: 52, baseType: !195, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !2155, file: !2156, line: 53, baseType: !1447, size: 8, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !2155, file: !2156, line: 54, baseType: !933, size: 192, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !2155, file: !2156, line: 56, baseType: !2162, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !2156, line: 26, size: 448, elements: !2164)
!2164 = !{!2165, !2166, !2168, !2170, !2171, !2172}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !2163, file: !2156, line: 27, baseType: !7, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2163, file: !2156, line: 28, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !2163, file: !2156, line: 29, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !2163, file: !2156, line: 30, baseType: !2169, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !2163, file: !2156, line: 31, baseType: !2169, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2163, file: !2156, line: 32, baseType: !940, size: 128, align: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !2155, file: !2156, line: 57, baseType: !2163, size: 448, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !2155, file: !2156, line: 61, baseType: !175, size: 32, align: 512, offset: 1024)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !2155, file: !2156, line: 62, baseType: !7, size: 32, offset: 1056)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !2155, file: !2156, line: 63, baseType: !1210, size: 64, offset: 1088)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !2155, file: !2156, line: 64, baseType: !1210, size: 64, offset: 1152)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !2155, file: !2156, line: 65, baseType: !1210, size: 64, offset: 1216)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !2155, file: !2156, line: 66, baseType: !2180, size: 4096, offset: 1280)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 4096, elements: !250)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !956, file: !601, line: 1103, baseType: !2182, size: 64, offset: 15232)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !601, line: 53, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !956, file: !601, line: 1107, baseType: !2185, size: 64, offset: 15296)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2187, line: 35, flags: DIFlagFwdDecl)
!2187 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !956, file: !601, line: 1110, baseType: !2189, size: 64, offset: 15360)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2191, line: 93, size: 8768, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2242, !2251, !2252, !2254, !2255, !2256, !2259, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2297, !2298, !2305, !2315, !2318, !2319, !2322, !2323, !2324, !2325, !2326, !2327}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2190, file: !2191, line: 94, baseType: !969, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2190, file: !2191, line: 95, baseType: !195, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2190, file: !2191, line: 96, baseType: !85, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2190, file: !2191, line: 97, baseType: !85, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2190, file: !2191, line: 98, baseType: !145, size: 128, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2190, file: !2191, line: 100, baseType: !933, size: 192, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2190, file: !2191, line: 103, baseType: !955, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2190, file: !2191, line: 106, baseType: !2201, size: 192, offset: 512)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1535, line: 32, size: 192, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2201, file: !1535, line: 33, baseType: !145, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2201, file: !1535, line: 34, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2206, line: 25, baseType: !2207)
!2206 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2206, line: 23, size: 64, elements: !2208)
!2208 = !{!2209}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2207, file: !2206, line: 24, baseType: !1210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2190, file: !2191, line: 109, baseType: !518, size: 64, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2190, file: !2191, line: 112, baseType: !85, size: 32, offset: 768)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2190, file: !2191, line: 114, baseType: !85, size: 32, offset: 800)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2190, file: !2191, line: 115, baseType: !955, size: 64, offset: 832)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2190, file: !2191, line: 118, baseType: !85, size: 32, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 119, baseType: !7, size: 32, offset: 928)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2190, file: !2191, line: 121, baseType: !2217, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2191, line: 80, size: 448, elements: !2219)
!2219 = !{!2220, !2221, !2227}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2218, file: !2191, line: 81, baseType: !195, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2218, file: !2191, line: 82, baseType: !2222, size: 128, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2191, line: 75, size: 128, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2222, file: !2191, line: 76, baseType: !955, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2222, file: !2191, line: 77, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2218, file: !2191, line: 83, baseType: !2081, size: 256, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2190, file: !2191, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2190, file: !2191, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2190, file: !2191, line: 138, baseType: !7, size: 32, offset: 1056)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2190, file: !2191, line: 139, baseType: !145, size: 128, offset: 1088)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2190, file: !2191, line: 142, baseType: !1083, size: 512, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2190, file: !2191, line: 143, baseType: !1091, size: 64, offset: 1728)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2190, file: !2191, line: 150, baseType: !2235, size: 256, offset: 1792)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2236, size: 256, elements: !2240)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2191, line: 38, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2236, file: !2191, line: 39, baseType: !399, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2236, file: !2191, line: 40, baseType: !399, size: 64, offset: 64)
!2240 = !{!2241}
!2241 = !DISubrange(count: 2)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2190, file: !2191, line: 156, baseType: !2243, size: 192, offset: 2048)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2191, line: 66, size: 192, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2243, file: !2191, line: 67, baseType: !2246, size: 192)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2191, line: 47, size: 192, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2246, file: !2191, line: 48, baseType: !632, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2246, file: !2191, line: 49, baseType: !632, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2246, file: !2191, line: 50, baseType: !632, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2190, file: !2191, line: 160, baseType: !2110, size: 640, offset: 2240)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2190, file: !2191, line: 163, baseType: !2253, size: 256, offset: 2880)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 256, elements: !1335)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2190, file: !2191, line: 169, baseType: !1327, size: 64, offset: 3136)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2190, file: !2191, line: 172, baseType: !85, size: 32, offset: 3200)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2190, file: !2191, line: 174, baseType: !2257, size: 64, offset: 3264)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2191, line: 174, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2190, file: !2191, line: 185, baseType: !2260, size: 64, offset: 3328)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !368, line: 860, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 853, size: 64, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2261, file: !368, line: 858, baseType: !367, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2261, file: !368, line: 859, baseType: !175, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2190, file: !2191, line: 186, baseType: !399, size: 64, offset: 3392)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2190, file: !2191, line: 186, baseType: !399, size: 64, offset: 3456)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2190, file: !2191, line: 186, baseType: !399, size: 64, offset: 3520)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2190, file: !2191, line: 186, baseType: !399, size: 64, offset: 3584)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2190, file: !2191, line: 187, baseType: !399, size: 64, offset: 3648)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2190, file: !2191, line: 188, baseType: !399, size: 64, offset: 3712)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2190, file: !2191, line: 189, baseType: !2098, size: 192, offset: 3776)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2190, file: !2191, line: 190, baseType: !295, size: 64, offset: 3968)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2190, file: !2191, line: 190, baseType: !295, size: 64, offset: 4032)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2190, file: !2191, line: 190, baseType: !295, size: 64, offset: 4096)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2190, file: !2191, line: 190, baseType: !295, size: 64, offset: 4160)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2190, file: !2191, line: 191, baseType: !295, size: 64, offset: 4224)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2190, file: !2191, line: 191, baseType: !295, size: 64, offset: 4288)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2190, file: !2191, line: 191, baseType: !295, size: 64, offset: 4352)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2190, file: !2191, line: 191, baseType: !295, size: 64, offset: 4416)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2190, file: !2191, line: 192, baseType: !295, size: 64, offset: 4480)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2190, file: !2191, line: 192, baseType: !295, size: 64, offset: 4544)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2190, file: !2191, line: 192, baseType: !295, size: 64, offset: 4608)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2190, file: !2191, line: 192, baseType: !295, size: 64, offset: 4672)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2190, file: !2191, line: 193, baseType: !295, size: 64, offset: 4736)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2190, file: !2191, line: 193, baseType: !295, size: 64, offset: 4800)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2190, file: !2191, line: 194, baseType: !2287, size: 448, offset: 4864)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2288, line: 12, size: 448, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2287, file: !2288, line: 15, baseType: !399, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2287, file: !2288, line: 17, baseType: !399, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2287, file: !2288, line: 19, baseType: !399, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2287, file: !2288, line: 21, baseType: !399, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2287, file: !2288, line: 29, baseType: !399, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2287, file: !2288, line: 35, baseType: !399, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2287, file: !2288, line: 44, baseType: !399, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2190, file: !2191, line: 202, baseType: !401, size: 64, offset: 5312)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2190, file: !2191, line: 213, baseType: !2299, size: 2048, offset: 5376)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2300, size: 2048, elements: !2133)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2301, line: 43, size: 128, elements: !2302)
!2301 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2300, file: !2301, line: 44, baseType: !294, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2300, file: !2301, line: 45, baseType: !294, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2190, file: !2191, line: 216, baseType: !2306, size: 448, offset: 7424)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2191, line: 30, size: 448, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2306, file: !2191, line: 31, baseType: !85, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2306, file: !2191, line: 32, baseType: !281, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2306, file: !2191, line: 33, baseType: !295, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2306, file: !2191, line: 34, baseType: !399, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2306, file: !2191, line: 34, baseType: !399, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2306, file: !2191, line: 35, baseType: !295, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2306, file: !2191, line: 35, baseType: !295, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2190, file: !2191, line: 219, baseType: !2316, size: 64, offset: 7872)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2191, line: 219, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2190, file: !2191, line: 222, baseType: !7, size: 32, offset: 7936)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2190, file: !2191, line: 223, baseType: !2320, size: 64, offset: 8000)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2191, line: 223, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2190, file: !2191, line: 230, baseType: !1447, size: 8, offset: 8064)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2190, file: !2191, line: 231, baseType: !1416, size: 16, offset: 8080)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2190, file: !2191, line: 232, baseType: !1416, size: 16, offset: 8096)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2190, file: !2191, line: 234, baseType: !1259, size: 64, offset: 8128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2190, file: !2191, line: 237, baseType: !626, size: 256, offset: 8192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2190, file: !2191, line: 243, baseType: !840, size: 320, offset: 8448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !956, file: !601, line: 1111, baseType: !2329, size: 64, offset: 15424)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2191, line: 20, size: 16640, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2330, file: !2191, line: 21, baseType: !175, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2330, file: !2191, line: 22, baseType: !969, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2330, file: !2191, line: 23, baseType: !933, size: 192, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2330, file: !2191, line: 24, baseType: !2336, size: 16384, offset: 256)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2337, size: 16384, elements: !250)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1535, line: 51, size: 256, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2337, file: !1535, line: 52, baseType: !2340, size: 256)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1535, line: 37, size: 256, elements: !2341)
!2341 = !{!2342, !2349, !2350, !2356}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2340, file: !1535, line: 39, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2344, line: 83, baseType: !2345)
!2344 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2344, line: 82, baseType: !2347)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !85}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2340, file: !1535, line: 40, baseType: !295, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2340, file: !1535, line: 46, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2344, line: 86, baseType: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2344, line: 85, baseType: !2354)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2340, file: !1535, line: 48, baseType: !2205, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !956, file: !601, line: 1112, baseType: !2205, size: 64, offset: 15488)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !956, file: !601, line: 1113, baseType: !2205, size: 64, offset: 15552)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !956, file: !601, line: 1115, baseType: !2205, size: 64, offset: 15616)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !956, file: !601, line: 1116, baseType: !2201, size: 192, offset: 15680)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !956, file: !601, line: 1117, baseType: !295, size: 64, offset: 15872)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !956, file: !601, line: 1118, baseType: !292, size: 64, offset: 15936)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !956, file: !601, line: 1119, baseType: !7, size: 32, offset: 16000)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !956, file: !601, line: 1121, baseType: !943, size: 64, offset: 16064)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !956, file: !601, line: 1125, baseType: !2366, size: 64, offset: 16128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !601, line: 43, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !956, file: !601, line: 1127, baseType: !332, size: 32, offset: 16192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !956, file: !601, line: 1128, baseType: !7, size: 32, offset: 16224)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !956, file: !601, line: 1130, baseType: !2371, size: 128, offset: 16256)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2372, line: 37, size: 128, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2373 = !{!2374, !2375, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2371, file: !2372, line: 38, baseType: !85, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2371, file: !2372, line: 39, baseType: !195, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2371, file: !2372, line: 40, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2372, line: 24, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !956, file: !601, line: 1131, baseType: !2380, size: 256, offset: 16384)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2381, line: 12, size: 256, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2380, file: !2381, line: 13, baseType: !245, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2380, file: !2381, line: 14, baseType: !295, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2380, file: !2381, line: 15, baseType: !295, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2380, file: !2381, line: 16, baseType: !1447, size: 8, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !956, file: !601, line: 1134, baseType: !399, size: 64, offset: 16640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !956, file: !601, line: 1135, baseType: !399, size: 64, offset: 16704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !956, file: !601, line: 1138, baseType: !175, size: 32, offset: 16768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !956, file: !601, line: 1141, baseType: !639, size: 32, offset: 16800)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !956, file: !601, line: 1143, baseType: !2392, size: 64, offset: 16832)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !601, line: 735, size: 64, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2392, file: !601, line: 736, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !956, file: !601, line: 1147, baseType: !1142, size: 128, offset: 16896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !956, file: !601, line: 1149, baseType: !955, size: 64, offset: 17024)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !956, file: !601, line: 1151, baseType: !2399, size: 64, offset: 17088)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !601, line: 1151, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !956, file: !601, line: 1188, baseType: !317, size: 64, offset: 17152)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !956, file: !601, line: 1191, baseType: !2403, size: 64, offset: 17216)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !601, line: 44, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !956, file: !601, line: 1194, baseType: !2406, size: 64, offset: 17280)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !601, line: 45, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !956, file: !601, line: 1197, baseType: !2409, size: 64, offset: 17344)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !601, line: 61, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !956, file: !601, line: 1199, baseType: !2412, size: 64, offset: 17408)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2414, line: 99, size: 128, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2415 = !{!2416, !2417, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2413, file: !2414, line: 100, baseType: !630, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2413, file: !2414, line: 101, baseType: !195, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2413, file: !2414, line: 103, baseType: !215, size: 16, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !956, file: !601, line: 1202, baseType: !2420, size: 64, offset: 17472)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !601, line: 48, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !956, file: !601, line: 1205, baseType: !295, size: 64, offset: 17536)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !956, file: !601, line: 1206, baseType: !2424, size: 64, offset: 17600)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1535, line: 14, baseType: !2426)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1535, line: 12, size: 384, elements: !2427)
!2427 = !{!2428}
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !1535, line: 13, baseType: !2429, size: 384)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2426, file: !1535, line: 13, size: 384, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2429, file: !1535, line: 13, baseType: !85, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2429, file: !1535, line: 13, baseType: !85, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2429, file: !1535, line: 13, baseType: !85, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2429, file: !1535, line: 13, baseType: !2435, size: 256, offset: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2436, line: 37, size: 256, elements: !2437)
!2436 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2437 = !{!2438, !2443, !2456, !2462, !2471, !2498, !2503}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2435, file: !2436, line: 42, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 39, size: 64, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2439, file: !2436, line: 40, baseType: !2064, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2439, file: !2436, line: 41, baseType: !338, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2435, file: !2436, line: 50, baseType: !2444, size: 192)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 45, size: 192, elements: !2445)
!2445 = !{!2446, !2448, !2449, !2455}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2444, file: !2436, line: 46, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !279, line: 95, baseType: !85)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2444, file: !2436, line: 47, baseType: !85, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2444, file: !2436, line: 48, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2436, line: 11, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2436, line: 8, size: 64, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2451, file: !2436, line: 9, baseType: !85, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2451, file: !2436, line: 10, baseType: !317, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2444, file: !2436, line: 49, baseType: !85, size: 32, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2435, file: !2436, line: 57, baseType: !2457, size: 128)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 53, size: 128, elements: !2458)
!2458 = !{!2459, !2460, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2457, file: !2436, line: 54, baseType: !2064, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2457, file: !2436, line: 55, baseType: !338, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2457, file: !2436, line: 56, baseType: !2450, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2435, file: !2436, line: 66, baseType: !2463, size: 256)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 60, size: 256, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2470}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2463, file: !2436, line: 61, baseType: !2064, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2463, file: !2436, line: 62, baseType: !338, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2463, file: !2436, line: 63, baseType: !85, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2463, file: !2436, line: 64, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !279, line: 94, baseType: !280)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2463, file: !2436, line: 65, baseType: !2469, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2435, file: !2436, line: 105, baseType: !2472, size: 256)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 69, size: 256, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2472, file: !2436, line: 70, baseType: !317, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2472, file: !2436, line: 79, baseType: !2476, size: 192, offset: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2472, file: !2436, line: 79, size: 192, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2487, !2492}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2476, file: !2436, line: 81, baseType: !85, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2476, file: !2436, line: 86, baseType: !1416, size: 16)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2476, file: !2436, line: 92, baseType: !2481, size: 192)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2436, line: 88, size: 192, elements: !2482)
!2482 = !{!2483, !2485, !2486}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2481, file: !2436, line: 89, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !1126)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2481, file: !2436, line: 90, baseType: !317, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2481, file: !2436, line: 91, baseType: !317, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2476, file: !2436, line: 97, baseType: !2488, size: 96)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2436, line: 94, size: 96, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2488, file: !2436, line: 95, baseType: !2484, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2488, file: !2436, line: 96, baseType: !396, size: 32, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2476, file: !2436, line: 103, baseType: !2493, size: 128)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2476, file: !2436, line: 99, size: 128, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2493, file: !2436, line: 100, baseType: !295, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2493, file: !2436, line: 101, baseType: !396, size: 32, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2493, file: !2436, line: 102, baseType: !396, size: 32, offset: 96)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2435, file: !2436, line: 111, baseType: !2499, size: 128)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 108, size: 128, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2499, file: !2436, line: 109, baseType: !281, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2499, file: !2436, line: 110, baseType: !85, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2435, file: !2436, line: 118, baseType: !2504, size: 128)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2436, line: 114, size: 128, elements: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2504, file: !2436, line: 115, baseType: !317, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2504, file: !2436, line: 116, baseType: !85, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2504, file: !2436, line: 117, baseType: !7, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !956, file: !601, line: 1208, baseType: !2287, size: 448, offset: 17664)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !956, file: !601, line: 1215, baseType: !399, size: 64, offset: 18112)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !956, file: !601, line: 1217, baseType: !399, size: 64, offset: 18176)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !956, file: !601, line: 1219, baseType: !399, size: 64, offset: 18240)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !956, file: !601, line: 1223, baseType: !2514, size: 64, offset: 18304)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2515, line: 99, baseType: !2516)
!2515 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2515, line: 99, size: 64, elements: !2517)
!2517 = !{!2518}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2516, file: !2515, line: 99, baseType: !1210, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !956, file: !601, line: 1225, baseType: !367, size: 32, offset: 18368)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !956, file: !601, line: 1226, baseType: !85, size: 32, offset: 18400)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !956, file: !601, line: 1227, baseType: !85, size: 32, offset: 18432)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !956, file: !601, line: 1231, baseType: !2523, size: 64, offset: 18496)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !601, line: 1231, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !956, file: !601, line: 1233, baseType: !145, size: 128, offset: 18560)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !956, file: !601, line: 1240, baseType: !2527, size: 64, offset: 18688)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !601, line: 62, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !956, file: !601, line: 1242, baseType: !2530, size: 64, offset: 18752)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2532, line: 392, size: 96, elements: !2533)
!2532 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2533 = !{!2534, !2540, !2542}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2531, file: !2532, line: 393, baseType: !2535, size: 32)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2532, line: 388, size: 32, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2535, file: !2532, line: 389, baseType: !2538, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2539, line: 46, baseType: !395)
!2539 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2531, file: !2532, line: 394, baseType: !2541, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2539, line: 42, baseType: !1390)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2531, file: !2532, line: 395, baseType: !2538, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !956, file: !601, line: 1244, baseType: !145, size: 128, offset: 18816)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !956, file: !601, line: 1245, baseType: !2545, size: 64, offset: 18944)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !601, line: 51, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !956, file: !601, line: 1246, baseType: !626, size: 256, offset: 19008)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !956, file: !601, line: 1247, baseType: !7, size: 32, offset: 19264)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !956, file: !601, line: 1250, baseType: !2550, size: 64, offset: 19328)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !601, line: 57, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !956, file: !601, line: 1251, baseType: !626, size: 256, offset: 19392)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !956, file: !601, line: 1252, baseType: !145, size: 128, offset: 19648)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !956, file: !601, line: 1259, baseType: !1753, size: 64, offset: 19776)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !956, file: !601, line: 1260, baseType: !1416, size: 16, offset: 19840)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !956, file: !601, line: 1261, baseType: !1416, size: 16, offset: 19856)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !956, file: !601, line: 1314, baseType: !2558, size: 64, offset: 19904)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2560, line: 62, size: 256, align: 256, elements: !2561)
!2560 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2559, file: !2560, line: 75, baseType: !396, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2559, file: !2560, line: 90, baseType: !396, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2559, file: !2560, line: 112, baseType: !400, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !2560, line: 132, baseType: !396, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2559, file: !2560, line: 140, baseType: !396, size: 32, offset: 160)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2559, file: !2560, line: 149, baseType: !396, size: 32, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2559, file: !2560, line: 154, baseType: !2569, offset: 224)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !1348)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !956, file: !601, line: 1315, baseType: !395, size: 32, offset: 19968)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !956, file: !601, line: 1316, baseType: !395, size: 32, offset: 20000)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !956, file: !601, line: 1321, baseType: !295, size: 64, offset: 20032)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !956, file: !601, line: 1325, baseType: !85, size: 32, offset: 20096)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !956, file: !601, line: 1326, baseType: !85, size: 32, offset: 20128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !956, file: !601, line: 1327, baseType: !85, size: 32, offset: 20160)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !956, file: !601, line: 1328, baseType: !85, size: 32, offset: 20192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !956, file: !601, line: 1329, baseType: !940, size: 128, align: 64, offset: 20224)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !956, file: !601, line: 1332, baseType: !2579, size: 128, offset: 20352)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2580, line: 51, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2581 = !{!2582, !2587, !2588}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2579, file: !2580, line: 60, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2584, line: 7, size: 64, elements: !2585)
!2584 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2585 = !{!2586}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2583, file: !2584, line: 12, baseType: !1207, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2579, file: !2580, line: 63, baseType: !1447, size: 8, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2579, file: !2580, line: 70, baseType: !1447, size: 8, offset: 72)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !956, file: !601, line: 1335, baseType: !1792, size: 64, offset: 20480)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !956, file: !601, line: 1337, baseType: !2591, size: 128, offset: 20544)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2580, line: 39, size: 128, elements: !2592)
!2592 = !{!2593, !2654, !2655}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2591, file: !2580, line: 40, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !698, line: 74, size: 512, align: 128, elements: !2596)
!2596 = !{!2597, !2598, !2648, !2653}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !698, line: 75, baseType: !295, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2595, file: !698, line: 83, baseType: !2599, size: 320, offset: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2595, file: !698, line: 83, size: 320, elements: !2600)
!2600 = !{!2601, !2622, !2636, !2640, !2647}
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !698, line: 84, baseType: !2602, size: 320)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !698, line: 84, size: 320, elements: !2603)
!2603 = !{!2604, !2615, !2616, !2621}
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2602, file: !698, line: 90, baseType: !2605, size: 128)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2602, file: !698, line: 90, size: 128, elements: !2606)
!2606 = !{!2607, !2608, !2613, !2614}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2605, file: !698, line: 91, baseType: !145, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !698, line: 94, baseType: !2609, size: 128)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !698, line: 94, size: 128, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2609, file: !698, line: 96, baseType: !317, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2609, file: !698, line: 98, baseType: !7, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2605, file: !698, line: 102, baseType: !145, size: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2605, file: !698, line: 103, baseType: !145, size: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2602, file: !698, line: 106, baseType: !322, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !2602, file: !698, line: 107, baseType: !2617, size: 64, offset: 192)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2602, file: !698, line: 107, size: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2617, file: !698, line: 108, baseType: !295, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2617, file: !698, line: 109, baseType: !295, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2602, file: !698, line: 117, baseType: !295, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !698, line: 119, baseType: !2623, size: 320)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !698, line: 119, size: 320, elements: !2624)
!2624 = !{!2625, !2626, !2629, !2630, !2631}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2623, file: !698, line: 124, baseType: !295, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2623, file: !698, line: 125, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !698, line: 125, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2623, file: !698, line: 126, baseType: !295, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2623, file: !698, line: 127, baseType: !295, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !698, line: 128, baseType: !2632, size: 64, offset: 256)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !698, line: 128, size: 64, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2632, file: !698, line: 133, baseType: !295, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2632, file: !698, line: 138, baseType: !630, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !698, line: 141, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !698, line: 141, size: 64, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2637, file: !698, line: 142, baseType: !295, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !698, line: 144, baseType: !2641, size: 128)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !698, line: 144, size: 128, elements: !2642)
!2642 = !{!2643, !2646}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2641, file: !698, line: 146, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !698, line: 146, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2641, file: !698, line: 147, baseType: !317, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2599, file: !698, line: 161, baseType: !940, size: 128, align: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2595, file: !698, line: 164, baseType: !2649, size: 32, offset: 384)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2595, file: !698, line: 164, size: 32, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2649, file: !698, line: 169, baseType: !195, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2649, file: !698, line: 177, baseType: !7, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2595, file: !698, line: 181, baseType: !195, size: 32, offset: 416)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2591, file: !2580, line: 42, baseType: !396, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2591, file: !2580, line: 43, baseType: !396, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !956, file: !601, line: 1340, baseType: !2657, size: 64, offset: 20672)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !601, line: 69, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !956, file: !601, line: 1351, baseType: !85, size: 32, offset: 20736)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !956, file: !601, line: 1352, baseType: !85, size: 32, offset: 20768)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !956, file: !601, line: 1354, baseType: !295, size: 64, offset: 20800)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !956, file: !601, line: 1364, baseType: !399, size: 64, offset: 20864)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !956, file: !601, line: 1365, baseType: !399, size: 64, offset: 20928)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !956, file: !601, line: 1412, baseType: !295, size: 64, offset: 20992)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !956, file: !601, line: 1453, baseType: !2666, size: 64, offset: 21056)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !601, line: 1453, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !956, file: !601, line: 1457, baseType: !2669, size: 64, offset: 21120)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2671)
!2671 = !{!2672, !2673, !2692, !2695, !2696, !2729, !2739}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2670, file: !44, line: 62, baseType: !43, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2670, file: !44, line: 64, baseType: !2674, size: 192, offset: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2670, file: !44, line: 64, size: 192, elements: !2675)
!2675 = !{!2676, !2687}
!2676 = !DIDerivedType(tag: DW_TAG_member, scope: !2674, file: !44, line: 65, baseType: !2677, size: 192)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2674, file: !44, line: 65, size: 192, elements: !2678)
!2678 = !{!2679, !2686}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2677, file: !44, line: 66, baseType: !2680, size: 128)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2681, line: 50, size: 128, elements: !2682)
!2681 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2680, file: !2681, line: 52, baseType: !295, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2680, file: !2681, line: 54, baseType: !7, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2680, file: !2681, line: 55, baseType: !7, size: 32, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2677, file: !44, line: 67, baseType: !295, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, scope: !2674, file: !44, line: 70, baseType: !2688, size: 192)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2674, file: !44, line: 70, size: 192, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2688, file: !44, line: 71, baseType: !940, size: 128, align: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2688, file: !44, line: 72, baseType: !295, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2670, file: !44, line: 76, baseType: !2693, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2670, file: !44, line: 77, baseType: !295, size: 64, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2670, file: !44, line: 79, baseType: !2697, size: 64, offset: 384)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2681, line: 25, size: 256, elements: !2699)
!2699 = !{!2700, !2706, !2710}
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !2681, line: 26, baseType: !2701, size: 128)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !2681, line: 26, size: 128, elements: !2702)
!2702 = !{!2703, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2701, file: !2681, line: 27, baseType: !2704, size: 128)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !2133)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2701, file: !2681, line: 28, baseType: !2704, size: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2698, file: !2681, line: 31, baseType: !2707, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2681, line: 23, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !2681, line: 33, baseType: !2711, size: 64, offset: 192)
!2711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !2681, line: 33, size: 64, elements: !2712)
!2712 = !{!2713, !2719, !2724}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2711, file: !2681, line: 38, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !2681, line: 34, size: 64, elements: !2715)
!2715 = !{!2716, !2717, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2714, file: !2681, line: 35, baseType: !1390, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2714, file: !2681, line: 36, baseType: !203, size: 8, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2714, file: !2681, line: 37, baseType: !203, size: 8, offset: 40)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2711, file: !2681, line: 42, baseType: !2720, size: 16)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !2681, line: 39, size: 16, elements: !2721)
!2721 = !{!2722, !2723}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2720, file: !2681, line: 40, baseType: !203, size: 8)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2720, file: !2681, line: 41, baseType: !203, size: 8, offset: 8)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2711, file: !2681, line: 46, baseType: !2725, size: 16)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !2681, line: 43, size: 16, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2725, file: !2681, line: 44, baseType: !203, size: 8)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2725, file: !2681, line: 45, baseType: !203, size: 8, offset: 8)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2670, file: !44, line: 81, baseType: !2730, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2731, file: !44, line: 86, baseType: !2693, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2731, file: !44, line: 87, baseType: !295, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2731, file: !44, line: 88, baseType: !295, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2731, file: !44, line: 89, baseType: !295, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2731, file: !44, line: 90, baseType: !1447, size: 8, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2731, file: !44, line: 92, baseType: !2730, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2670, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !956, file: !601, line: 1463, baseType: !2741, offset: 21184)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !601, line: 739, elements: !530)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !956, file: !601, line: 1470, baseType: !940, size: 128, align: 64, offset: 21184)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !956, file: !601, line: 1471, baseType: !969, size: 32, offset: 21312)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !956, file: !601, line: 1472, baseType: !85, size: 32, offset: 21344)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !956, file: !601, line: 1474, baseType: !955, size: 64, offset: 21376)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !956, file: !601, line: 1475, baseType: !2747, size: 320, offset: 21440)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2748, line: 11, size: 320, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2749 = !{!2750, !2751, !2752, !2757}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2747, file: !2748, line: 16, baseType: !522, size: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2747, file: !2748, line: 17, baseType: !295, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2747, file: !2748, line: 18, baseType: !2753, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2747, file: !2748, line: 19, baseType: !395, size: 32, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !956, file: !601, line: 1478, baseType: !2759, size: 64, offset: 21760)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !601, line: 1478, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !956, file: !601, line: 1482, baseType: !969, size: 32, offset: 21824)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !956, file: !601, line: 1489, baseType: !317, size: 64, offset: 21888)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !956, file: !601, line: 1504, baseType: !317, size: 64, offset: 21952)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !956, file: !601, line: 1505, baseType: !400, size: 64, offset: 22016)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !956, file: !601, line: 1506, baseType: !399, size: 64, offset: 22080)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !956, file: !601, line: 1507, baseType: !400, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !956, file: !601, line: 1508, baseType: !400, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !956, file: !601, line: 1509, baseType: !400, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !956, file: !601, line: 1510, baseType: !940, size: 128, align: 64, offset: 22208)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !956, file: !601, line: 1511, baseType: !85, size: 32, offset: 22336)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !956, file: !601, line: 1515, baseType: !2772, size: 64, offset: 22400)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !983, line: 56, size: 64, elements: !2773)
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2772, file: !983, line: 57, baseType: !986, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !956, file: !601, line: 1518, baseType: !2772, size: 64, offset: 22464)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !956, file: !601, line: 1528, baseType: !940, size: 128, align: 64, offset: 22528)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !956, file: !601, line: 1552, baseType: !2778, size: 35328, offset: 23040)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2779, line: 430, size: 35328, elements: !2780)
!2779 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2780 = !{!2781, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2810, !2811, !2812, !2813, !2814, !2815, !2818, !2819, !2820, !2821}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2778, file: !2779, line: 432, baseType: !2782, size: 192)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 192, elements: !246)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2784, line: 16, size: 64, elements: !2785)
!2784 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2783, file: !2784, line: 17, baseType: !213, size: 16)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2783, file: !2784, line: 18, baseType: !213, size: 16, offset: 16)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2783, file: !2784, line: 19, baseType: !213, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2783, file: !2784, line: 19, baseType: !213, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2783, file: !2784, line: 19, baseType: !213, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2783, file: !2784, line: 19, baseType: !213, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2783, file: !2784, line: 19, baseType: !213, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2783, file: !2784, line: 20, baseType: !213, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2783, file: !2784, line: 20, baseType: !213, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2783, file: !2784, line: 20, baseType: !213, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2783, file: !2784, line: 20, baseType: !213, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2783, file: !2784, line: 20, baseType: !213, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2783, file: !2784, line: 20, baseType: !213, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2778, file: !2779, line: 436, baseType: !295, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2778, file: !2779, line: 440, baseType: !215, size: 16, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2778, file: !2779, line: 441, baseType: !215, size: 16, offset: 272)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2778, file: !2779, line: 442, baseType: !215, size: 16, offset: 288)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2778, file: !2779, line: 443, baseType: !215, size: 16, offset: 304)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2778, file: !2779, line: 447, baseType: !295, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2778, file: !2779, line: 448, baseType: !295, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2778, file: !2779, line: 459, baseType: !2807, size: 256, offset: 448)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2808, size: 256, elements: !1335)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2779, line: 428, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2778, file: !2779, line: 461, baseType: !295, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2778, file: !2779, line: 463, baseType: !295, size: 64, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2778, file: !2779, line: 465, baseType: !295, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2778, file: !2779, line: 466, baseType: !295, size: 64, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2778, file: !2779, line: 467, baseType: !295, size: 64, offset: 960)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2778, file: !2779, line: 473, baseType: !2816, size: 64, offset: 1024)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2779, line: 10, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2778, file: !2779, line: 480, baseType: !295, size: 64, offset: 1088)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2778, file: !2779, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2778, file: !2779, line: 491, baseType: !395, size: 32, offset: 1184)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2778, file: !2779, line: 501, baseType: !2822, size: 33792, offset: 1536)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2823, line: 448, size: 33792, elements: !2824)
!2823 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2824 = !{!2825, !2826, !2827, !2989, !2990, !2996, !2997}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2822, file: !2823, line: 461, baseType: !7, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2822, file: !2823, line: 468, baseType: !295, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2822, file: !2823, line: 476, baseType: !2828, size: 64, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2823, line: 356, size: 33280, align: 512, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2829, file: !2823, line: 358, baseType: !7, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2829, file: !2823, line: 361, baseType: !7, size: 32, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2829, file: !2823, line: 364, baseType: !399, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2829, file: !2823, line: 367, baseType: !399, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2829, file: !2823, line: 370, baseType: !399, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2829, file: !2823, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2829, file: !2823, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2829, file: !2823, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2829, file: !2823, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2829, file: !2823, line: 397, baseType: !2841, size: 32768, offset: 512)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2823, line: 348, size: 32768, elements: !2842)
!2842 = !{!2843, !2858, !2895, !2972, !2985}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2841, file: !2823, line: 349, baseType: !2844, size: 896)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2823, line: 12, size: 896, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2857}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2844, file: !2823, line: 13, baseType: !395, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2844, file: !2823, line: 14, baseType: !395, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2844, file: !2823, line: 15, baseType: !395, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2844, file: !2823, line: 16, baseType: !395, size: 32, offset: 96)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2844, file: !2823, line: 17, baseType: !395, size: 32, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2844, file: !2823, line: 18, baseType: !395, size: 32, offset: 160)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2844, file: !2823, line: 19, baseType: !395, size: 32, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2844, file: !2823, line: 22, baseType: !2854, size: 640, offset: 224)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 640, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 20)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2844, file: !2823, line: 25, baseType: !395, size: 32, offset: 864)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2841, file: !2823, line: 350, baseType: !2859, size: 4096, align: 128)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2823, line: 34, size: 4096, align: 128, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2880, !2881, !2882, !2884, !2886, !2890}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2859, file: !2823, line: 35, baseType: !213, size: 16)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2859, file: !2823, line: 36, baseType: !213, size: 16, offset: 16)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2859, file: !2823, line: 37, baseType: !213, size: 16, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2859, file: !2823, line: 38, baseType: !213, size: 16, offset: 48)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2859, file: !2823, line: 39, baseType: !2866, size: 128, offset: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2859, file: !2823, line: 39, size: 128, elements: !2867)
!2867 = !{!2868, !2873}
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2866, file: !2823, line: 40, baseType: !2869, size: 128)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2823, line: 40, size: 128, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2869, file: !2823, line: 41, baseType: !399, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2869, file: !2823, line: 42, baseType: !399, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, scope: !2866, file: !2823, line: 44, baseType: !2874, size: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !2823, line: 44, size: 128, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2874, file: !2823, line: 45, baseType: !395, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2874, file: !2823, line: 46, baseType: !395, size: 32, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2874, file: !2823, line: 47, baseType: !395, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2874, file: !2823, line: 48, baseType: !395, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2859, file: !2823, line: 51, baseType: !395, size: 32, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2859, file: !2823, line: 52, baseType: !395, size: 32, offset: 224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2859, file: !2823, line: 55, baseType: !2883, size: 1024, offset: 256)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1024, elements: !408)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2859, file: !2823, line: 58, baseType: !2885, size: 2048, offset: 1280)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 2048, elements: !250)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2859, file: !2823, line: 60, baseType: !2887, size: 384, offset: 3328)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 384, elements: !2888)
!2888 = !{!2889}
!2889 = !DISubrange(count: 12)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2859, file: !2823, line: 62, baseType: !2891, size: 384, offset: 3712)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2859, file: !2823, line: 62, size: 384, elements: !2892)
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2891, file: !2823, line: 63, baseType: !2887, size: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2891, file: !2823, line: 64, baseType: !2887, size: 384)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2841, file: !2823, line: 351, baseType: !2896, size: 1088)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2823, line: 79, size: 1088, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2971}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2896, file: !2823, line: 80, baseType: !395, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2896, file: !2823, line: 81, baseType: !395, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2896, file: !2823, line: 82, baseType: !395, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2896, file: !2823, line: 83, baseType: !395, size: 32, offset: 96)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2896, file: !2823, line: 84, baseType: !395, size: 32, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2896, file: !2823, line: 85, baseType: !395, size: 32, offset: 160)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2896, file: !2823, line: 86, baseType: !395, size: 32, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2896, file: !2823, line: 88, baseType: !2854, size: 640, offset: 224)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2896, file: !2823, line: 89, baseType: !203, size: 8, offset: 864)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2896, file: !2823, line: 90, baseType: !203, size: 8, offset: 872)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2896, file: !2823, line: 91, baseType: !203, size: 8, offset: 880)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2896, file: !2823, line: 92, baseType: !203, size: 8, offset: 888)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2896, file: !2823, line: 93, baseType: !203, size: 8, offset: 896)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2896, file: !2823, line: 94, baseType: !203, size: 8, offset: 904)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2896, file: !2823, line: 95, baseType: !2913, size: 64, offset: 960)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2915, line: 11, size: 128, elements: !2916)
!2915 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2914, file: !2915, line: 12, baseType: !281, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2914, file: !2915, line: 13, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2921, line: 103, size: 1344, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2951, !2952, !2953}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2920, file: !2921, line: 109, baseType: !295, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2920, file: !2921, line: 110, baseType: !295, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2920, file: !2921, line: 111, baseType: !295, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2920, file: !2921, line: 112, baseType: !295, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2920, file: !2921, line: 113, baseType: !295, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2920, file: !2921, line: 114, baseType: !295, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2920, file: !2921, line: 117, baseType: !295, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2920, file: !2921, line: 118, baseType: !295, size: 64, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2920, file: !2921, line: 119, baseType: !295, size: 64, offset: 512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2920, file: !2921, line: 120, baseType: !295, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2920, file: !2921, line: 121, baseType: !295, size: 64, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2920, file: !2921, line: 122, baseType: !295, size: 64, offset: 704)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2920, file: !2921, line: 123, baseType: !295, size: 64, offset: 768)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2920, file: !2921, line: 124, baseType: !295, size: 64, offset: 832)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2920, file: !2921, line: 125, baseType: !295, size: 64, offset: 896)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2920, file: !2921, line: 139, baseType: !295, size: 64, offset: 960)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2920, file: !2921, line: 142, baseType: !295, size: 64, offset: 1024)
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2920, file: !2921, line: 144, baseType: !2941, size: 64, offset: 1088)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2920, file: !2921, line: 144, size: 64, elements: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2941, file: !2921, line: 146, baseType: !213, size: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2941, file: !2921, line: 148, baseType: !399, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2941, file: !2921, line: 150, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2921, line: 59, size: 64, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2946, file: !2921, line: 61, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2946, file: !2921, line: 63, baseType: !399, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2946, file: !2921, line: 65, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2920, file: !2921, line: 153, baseType: !295, size: 64, offset: 1152)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2920, file: !2921, line: 154, baseType: !295, size: 64, offset: 1216)
!2953 = !DIDerivedType(tag: DW_TAG_member, scope: !2920, file: !2921, line: 156, baseType: !2954, size: 64, offset: 1280)
!2954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2920, file: !2921, line: 156, size: 64, elements: !2955)
!2955 = !{!2956, !2957, !2958}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2954, file: !2921, line: 158, baseType: !213, size: 16)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2954, file: !2921, line: 160, baseType: !399, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2954, file: !2921, line: 162, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2921, line: 69, size: 64, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2959, file: !2921, line: 71, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2959, file: !2921, line: 73, baseType: !399, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2959, file: !2921, line: 75, baseType: !399, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2959, file: !2921, line: 77, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2959, file: !2921, line: 80, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2959, file: !2921, line: 83, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2959, file: !2921, line: 86, baseType: !399, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2959, file: !2921, line: 88, baseType: !399, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2959, file: !2921, line: 93, baseType: !399, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2959, file: !2921, line: 100, baseType: !399, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2896, file: !2823, line: 96, baseType: !395, size: 32, offset: 1024)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2841, file: !2823, line: 352, baseType: !2973, size: 4608, align: 512)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2823, line: 333, size: 4608, align: 512, elements: !2974)
!2974 = !{!2975, !2976, !2983}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2973, file: !2823, line: 334, baseType: !2859, size: 4096, align: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2973, file: !2823, line: 335, baseType: !2977, size: 512, offset: 4096)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2823, line: 312, size: 512, elements: !2978)
!2978 = !{!2979, !2980, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2977, file: !2823, line: 313, baseType: !399, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2977, file: !2823, line: 314, baseType: !399, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2977, file: !2823, line: 315, baseType: !2982, size: 384, offset: 128)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !1434)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2973, file: !2823, line: 336, baseType: !2984, offset: 4608)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !1348)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2841, file: !2823, line: 353, baseType: !2986, size: 32768)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 32768, elements: !2987)
!2987 = !{!2988}
!2988 = !DISubrange(count: 4096)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2822, file: !2823, line: 484, baseType: !2828, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2822, file: !2823, line: 491, baseType: !2991, size: 128, offset: 256)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2823, line: 404, size: 128, elements: !2992)
!2992 = !{!2993, !2994, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2991, file: !2823, line: 424, baseType: !399, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2991, file: !2823, line: 432, baseType: !7, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2991, file: !2823, line: 440, baseType: !7, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2822, file: !2823, line: 498, baseType: !2991, size: 128, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2822, file: !2823, line: 508, baseType: !2829, size: 33280, align: 512, offset: 512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !923, file: !924, line: 16, baseType: !933, size: 192, offset: 512)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !923, file: !924, line: 17, baseType: !195, size: 32, offset: 704)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !478, file: !14, line: 1240, baseType: !317, size: 64, offset: 6912)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !478, file: !14, line: 1243, baseType: !395, size: 32, offset: 6976)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !478, file: !14, line: 1245, baseType: !679, size: 64, offset: 7040)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !478, file: !14, line: 1246, baseType: !679, size: 64, offset: 7104)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !478, file: !14, line: 1248, baseType: !396, size: 32, offset: 7168)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !478, file: !14, line: 1249, baseType: !3006, size: 64, offset: 7232)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !478, file: !14, line: 1252, baseType: !3009, size: 256, offset: 7296)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !408)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !478, file: !14, line: 1253, baseType: !3011, size: 128, offset: 7552)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3012, line: 21, baseType: !3013)
!3012 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3012, line: 19, size: 128, elements: !3014)
!3014 = !{!3015}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3013, file: !3012, line: 20, baseType: !3016, size: 128)
!3016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !2133)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !478, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !478, file: !14, line: 1261, baseType: !626, size: 256, offset: 7744)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !478, file: !14, line: 1267, baseType: !164, size: 64, offset: 8000)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !478, file: !14, line: 1269, baseType: !424, size: 64, offset: 8064)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !478, file: !14, line: 1271, baseType: !3022, size: 448, offset: 8128)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !688, line: 63, size: 448, elements: !3023)
!3023 = !{!3024, !3029, !3030, !3031, !3032, !3033, !3034}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3022, file: !688, line: 64, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!295, !3028, !686}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3022, file: !688, line: 66, baseType: !3025, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3022, file: !688, line: 69, baseType: !281, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3022, file: !688, line: 70, baseType: !85, size: 32, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3022, file: !688, line: 71, baseType: !7, size: 32, offset: 224)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3022, file: !688, line: 74, baseType: !145, size: 128, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3022, file: !688, line: 85, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !478, file: !14, line: 1274, baseType: !630, size: 64, offset: 8576)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !478, file: !14, line: 1280, baseType: !630, size: 64, offset: 8640)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !478, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !478, file: !14, line: 1286, baseType: !1842, size: 32, offset: 8736)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !478, file: !14, line: 1289, baseType: !3041, size: 64, offset: 8768)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1971, line: 18, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !478, file: !14, line: 1290, baseType: !518, size: 64, offset: 8832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !478, file: !14, line: 1297, baseType: !1530, size: 64, offset: 8896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !478, file: !14, line: 1304, baseType: !3046, size: 64, offset: 8960)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3047, line: 49, size: 64, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3046, file: !3047, line: 50, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3047, line: 41, size: 512, align: 512, elements: !3052)
!3052 = !{!3053, !3054, !3059}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3051, file: !3047, line: 43, baseType: !175, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3051, file: !3047, line: 45, baseType: !3055, size: 192, offset: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3047, line: 29, size: 192, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3055, file: !3047, line: 30, baseType: !145, size: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3055, file: !3047, line: 32, baseType: !281, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3051, file: !3047, line: 46, baseType: !281, size: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !478, file: !14, line: 1305, baseType: !3046, size: 64, offset: 9024)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !478, file: !14, line: 1306, baseType: !940, size: 128, align: 64, offset: 9088)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !478, file: !14, line: 1307, baseType: !1970, size: 256, offset: 9216)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !478, file: !14, line: 1309, baseType: !626, size: 256, offset: 9472)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !478, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !478, file: !14, line: 1317, baseType: !175, size: 32, align: 512, offset: 10240)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !478, file: !14, line: 1318, baseType: !145, size: 128, offset: 10304)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !478, file: !14, line: 1320, baseType: !175, size: 32, offset: 10432)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !478, file: !14, line: 1321, baseType: !145, size: 128, offset: 10496)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !472, file: !473, line: 73, baseType: !85, size: 32, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !472, file: !473, line: 74, baseType: !3071, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1372, line: 42, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !426, file: !363, line: 141, baseType: !3075, size: 64, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!85, !750, !1447}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !426, file: !363, line: 142, baseType: !3079, size: 64, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!361, !361, !3082}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !362, file: !363, line: 96, baseType: !477, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !362, file: !363, line: 97, baseType: !295, size: 64, offset: 896)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !362, file: !363, line: 98, baseType: !317, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !363, line: 100, baseType: !3088, size: 128, offset: 1024)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !363, line: 100, size: 128, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3088, file: !363, line: 101, baseType: !145, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3088, file: !363, line: 102, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !362, file: !363, line: 104, baseType: !145, size: 128, offset: 1152)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !362, file: !363, line: 105, baseType: !145, size: 128, offset: 1280)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !362, file: !363, line: 113, baseType: !3096, size: 128, offset: 1408)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !363, line: 109, size: 128, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3096, file: !363, line: 110, baseType: !522, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3096, file: !363, line: 111, baseType: !377, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3096, file: !363, line: 112, baseType: !940, size: 128, align: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !355, file: !14, line: 1968, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!164, !361, !326, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3107, line: 10, size: 128, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3108 = !{!3109, !3113}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3106, file: !3107, line: 11, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !317}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3106, file: !3107, line: 12, baseType: !317, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !355, file: !14, line: 1969, baseType: !3115, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!85, !3071, !326, !85}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !355, file: !14, line: 1970, baseType: !3119, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!349, !326, !85, !1447}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !355, file: !14, line: 1972, baseType: !3123, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!85, !361, !245, !85}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !355, file: !14, line: 1974, baseType: !3127, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!85, !3071, !326, !361, !287, !1447}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !355, file: !14, line: 1976, baseType: !3131, size: 64, offset: 384)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!85, !361, !326, !361}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !355, file: !14, line: 1977, baseType: !3135, size: 64, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!85, !326, !361}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !355, file: !14, line: 1978, baseType: !3139, size: 64, offset: 512)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!85, !3071, !326, !361, !164}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !355, file: !14, line: 1980, baseType: !3143, size: 64, offset: 576)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!85, !3071, !326, !361, !287}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !355, file: !14, line: 1982, baseType: !3135, size: 64, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !355, file: !14, line: 1983, baseType: !3148, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!85, !3071, !326, !361, !287, !482}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !355, file: !14, line: 1985, baseType: !3152, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!85, !3071, !326, !361, !326, !361, !7}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !355, file: !14, line: 1987, baseType: !3156, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!85, !3071, !361, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3174, !3183, !3184, !3189, !3190, !3191}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3160, file: !14, line: 227, baseType: !7, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3160, file: !14, line: 228, baseType: !287, size: 16, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !14, line: 241, baseType: !3165, size: 32, offset: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !14, line: 241, size: 32, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3165, file: !14, line: 242, baseType: !332, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3165, file: !14, line: 243, baseType: !3169, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3170, line: 16, baseType: !3171)
!3170 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3170, line: 14, size: 32, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3171, file: !3170, line: 15, baseType: !337, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !14, line: 245, baseType: !3175, size: 32, offset: 96)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !14, line: 245, size: 32, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3175, file: !14, line: 246, baseType: !341, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3175, file: !14, line: 247, baseType: !3179, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3170, line: 20, baseType: !3180)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3170, line: 18, size: 32, elements: !3181)
!3181 = !{!3182}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3180, file: !3170, line: 19, baseType: !345, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3160, file: !14, line: 249, baseType: !487, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3160, file: !14, line: 250, baseType: !3185, size: 128, offset: 192)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !680, line: 13, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3185, file: !680, line: 14, baseType: !679, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3185, file: !680, line: 15, baseType: !281, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3160, file: !14, line: 251, baseType: !3185, size: 128, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3160, file: !14, line: 252, baseType: !3185, size: 128, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3160, file: !14, line: 259, baseType: !1286, size: 64, offset: 576)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !355, file: !14, line: 1988, baseType: !3193, size: 64, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!85, !3071, !750, !3196, !395, !7}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3198, line: 22, size: 1280, elements: !3199)
!3198 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3199 = !{!3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3197, file: !3198, line: 23, baseType: !395, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3197, file: !3198, line: 24, baseType: !287, size: 16, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3197, file: !3198, line: 25, baseType: !7, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3197, file: !3198, line: 26, baseType: !1412, size: 32, offset: 96)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3197, file: !3198, line: 27, baseType: !399, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3197, file: !3198, line: 28, baseType: !399, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3197, file: !3198, line: 41, baseType: !399, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3197, file: !3198, line: 42, baseType: !482, size: 32, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3197, file: !3198, line: 43, baseType: !482, size: 32, offset: 352)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3197, file: !3198, line: 44, baseType: !332, size: 32, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3197, file: !3198, line: 45, baseType: !341, size: 32, offset: 416)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3197, file: !3198, line: 46, baseType: !487, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3197, file: !3198, line: 47, baseType: !3185, size: 128, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3197, file: !3198, line: 48, baseType: !3185, size: 128, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3197, file: !3198, line: 49, baseType: !3185, size: 128, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3197, file: !3198, line: 50, baseType: !3185, size: 128, offset: 896)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3197, file: !3198, line: 51, baseType: !399, size: 64, offset: 1024)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3197, file: !3198, line: 52, baseType: !399, size: 64, offset: 1088)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3197, file: !3198, line: 53, baseType: !395, size: 32, offset: 1152)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3197, file: !3198, line: 54, baseType: !395, size: 32, offset: 1184)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3197, file: !3198, line: 55, baseType: !399, size: 64, offset: 1216)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !355, file: !14, line: 1990, baseType: !3222, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!277, !361, !245, !292}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !355, file: !14, line: 1991, baseType: !3226, size: 64, offset: 1024)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!85, !326, !3229, !399, !399}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !355, file: !14, line: 1993, baseType: !3232, size: 64, offset: 1088)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!85, !326, !85}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !355, file: !14, line: 1994, baseType: !3236, size: 64, offset: 1152)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!85, !326, !361, !1286, !7, !287}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !355, file: !14, line: 1997, baseType: !3240, size: 64, offset: 1216)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!85, !3071, !326, !1286, !287}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !355, file: !14, line: 1999, baseType: !3244, size: 64, offset: 1280)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!349, !3071, !361, !85}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !355, file: !14, line: 2001, baseType: !3248, size: 64, offset: 1344)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!85, !3071, !361, !349, !85}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !355, file: !14, line: 2003, baseType: !3252, size: 64, offset: 1408)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!85, !3071, !361, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !355, file: !14, line: 2005, baseType: !3258, size: 64, offset: 1472)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!85, !361, !3255}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !355, file: !14, line: 2006, baseType: !3262, size: 64, offset: 1536)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!3265, !326}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3266, file: !14, line: 3193, baseType: !1650, size: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3266, file: !14, line: 3194, baseType: !395, size: 32, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !327, file: !14, line: 655, baseType: !477, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !327, file: !14, line: 656, baseType: !322, size: 64, offset: 512)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !327, file: !14, line: 659, baseType: !317, size: 64, offset: 576)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !327, file: !14, line: 663, baseType: !295, size: 64, offset: 640)
!3274 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !14, line: 671, baseType: !3275, size: 32, offset: 704)
!3275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !14, line: 671, size: 32, elements: !3276)
!3276 = !{!3277, !3279}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3275, file: !14, line: 672, baseType: !3278, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3275, file: !14, line: 673, baseType: !7, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !327, file: !14, line: 675, baseType: !482, size: 32, offset: 736)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !327, file: !14, line: 676, baseType: !487, size: 64, offset: 768)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !327, file: !14, line: 677, baseType: !3185, size: 128, offset: 832)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !327, file: !14, line: 678, baseType: !3185, size: 128, offset: 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !327, file: !14, line: 679, baseType: !3185, size: 128, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !327, file: !14, line: 680, baseType: !175, size: 32, offset: 1216)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !327, file: !14, line: 681, baseType: !215, size: 16, offset: 1248)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !327, file: !14, line: 682, baseType: !203, size: 8, offset: 1264)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !327, file: !14, line: 683, baseType: !203, size: 8, offset: 1272)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !327, file: !14, line: 684, baseType: !828, size: 64, offset: 1280)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !327, file: !14, line: 691, baseType: !295, size: 64, offset: 1344)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !327, file: !14, line: 692, baseType: !840, size: 320, offset: 1408)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !327, file: !14, line: 694, baseType: !295, size: 64, offset: 1728)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !327, file: !14, line: 695, baseType: !295, size: 64, offset: 1792)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !327, file: !14, line: 697, baseType: !522, size: 128, offset: 1856)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !327, file: !14, line: 698, baseType: !145, size: 128, offset: 1984)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !327, file: !14, line: 707, baseType: !145, size: 128, offset: 2112)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !327, file: !14, line: 708, baseType: !145, size: 128, offset: 2240)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !14, line: 709, baseType: !3299, size: 128, offset: 2368)
!3299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !14, line: 709, size: 128, elements: !3300)
!3300 = !{!3301, !3302}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3299, file: !14, line: 710, baseType: !518, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3299, file: !14, line: 711, baseType: !940, size: 128, align: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !327, file: !14, line: 713, baseType: !632, size: 64, offset: 2496)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !327, file: !14, line: 714, baseType: !632, size: 64, offset: 2560)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !327, file: !14, line: 715, baseType: !195, size: 32, offset: 2624)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !327, file: !14, line: 716, baseType: !195, size: 32, offset: 2656)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !327, file: !14, line: 717, baseType: !195, size: 32, offset: 2688)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !327, file: !14, line: 719, baseType: !195, size: 32, offset: 2720)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !14, line: 721, baseType: !3310, size: 64, offset: 2752)
!3310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !14, line: 721, size: 64, elements: !3311)
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3310, file: !14, line: 722, baseType: !1561, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3310, file: !14, line: 723, baseType: !549, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !327, file: !14, line: 725, baseType: !3315, size: 64, offset: 2816)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !327, file: !14, line: 726, baseType: !323, size: 1536, align: 64, offset: 2880)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !327, file: !14, line: 727, baseType: !145, size: 128, offset: 4416)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !14, line: 728, baseType: !3320, size: 64, offset: 4544)
!3320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !14, line: 728, size: 64, elements: !3321)
!3321 = !{!3322, !3323, !3326, !3327}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3320, file: !14, line: 729, baseType: !1792, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3320, file: !14, line: 730, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3320, file: !14, line: 731, baseType: !245, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3320, file: !14, line: 732, baseType: !7, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !327, file: !14, line: 735, baseType: !396, size: 32, offset: 4608)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !327, file: !14, line: 738, baseType: !396, size: 32, offset: 4640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !327, file: !14, line: 739, baseType: !3006, size: 64, offset: 4672)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !327, file: !14, line: 750, baseType: !317, size: 64, offset: 4736)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !323, file: !14, line: 474, baseType: !1650, size: 128, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !323, file: !14, line: 475, baseType: !840, size: 320, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !323, file: !14, line: 476, baseType: !691, size: 32, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !323, file: !14, line: 477, baseType: !195, size: 32, offset: 544)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !323, file: !14, line: 482, baseType: !1142, size: 128, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !323, file: !14, line: 483, baseType: !295, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !323, file: !14, line: 484, baseType: !295, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !323, file: !14, line: 485, baseType: !3340, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3343)
!3343 = !{!3344, !3348, !3418, !3422, !3426, !3432, !3437, !3441, !3446, !3450, !3454, !3458, !3459, !3463, !3467, !3471, !3476, !3480, !3487, !3488}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3342, file: !14, line: 405, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!85, !2594, !561}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3342, file: !14, line: 406, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!85, !1286, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !698, line: 293, size: 1536, elements: !3354)
!3354 = !{!3355, !3385, !3399}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !698, line: 295, baseType: !3356, size: 512)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !698, line: 295, size: 512, elements: !3357)
!3357 = !{!3358, !3384}
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !698, line: 296, baseType: !3359, size: 448)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !698, line: 296, size: 448, elements: !3360)
!3360 = !{!3361, !3362, !3371, !3372, !3373, !3382, !3383}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3359, file: !698, line: 298, baseType: !295, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3359, file: !698, line: 299, baseType: !3363, size: 128, offset: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3359, file: !698, line: 299, size: 128, elements: !3364)
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3363, file: !698, line: 300, baseType: !145, size: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, scope: !3363, file: !698, line: 302, baseType: !3367, size: 128)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3363, file: !698, line: 302, size: 128, elements: !3368)
!3368 = !{!3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3367, file: !698, line: 303, baseType: !317, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3367, file: !698, line: 305, baseType: !7, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3359, file: !698, line: 310, baseType: !322, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3359, file: !698, line: 311, baseType: !295, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3359, file: !698, line: 312, baseType: !3374, size: 64, offset: 320)
!3374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3359, file: !698, line: 312, size: 64, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3374, file: !698, line: 313, baseType: !317, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3374, file: !698, line: 314, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !698, line: 257, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !698, line: 255, size: 64, elements: !3380)
!3380 = !{!3381}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3379, file: !698, line: 256, baseType: !295, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3359, file: !698, line: 316, baseType: !195, size: 32, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3359, file: !698, line: 317, baseType: !195, size: 32, offset: 416)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3356, file: !698, line: 323, baseType: !2595, size: 512, align: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !698, line: 325, baseType: !3386, size: 512, offset: 512)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !698, line: 325, size: 512, elements: !3387)
!3387 = !{!3388, !3398}
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !698, line: 326, baseType: !3389, size: 320)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !698, line: 326, size: 320, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3389, file: !698, line: 327, baseType: !295, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3389, file: !698, line: 328, baseType: !295, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3389, file: !698, line: 329, baseType: !295, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3389, file: !698, line: 331, baseType: !195, size: 32, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3389, file: !698, line: 332, baseType: !195, size: 32, offset: 224)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3389, file: !698, line: 333, baseType: !195, size: 32, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3389, file: !698, line: 335, baseType: !7, size: 32, offset: 288)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3386, file: !698, line: 339, baseType: !2595, size: 512, align: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !698, line: 341, baseType: !3400, size: 512, offset: 1024)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !698, line: 341, size: 512, elements: !3401)
!3401 = !{!3402, !3411, !3417}
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !698, line: 342, baseType: !3403, size: 384)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3400, file: !698, line: 342, size: 384, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3403, file: !698, line: 343, baseType: !295, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3403, file: !698, line: 344, baseType: !295, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3403, file: !698, line: 346, baseType: !317, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3403, file: !698, line: 347, baseType: !317, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3403, file: !698, line: 348, baseType: !317, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3403, file: !698, line: 349, baseType: !317, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3400, file: !698, line: 352, baseType: !3412, size: 256)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3400, file: !698, line: 352, size: 256, elements: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3412, file: !698, line: 353, baseType: !295, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3412, file: !698, line: 354, baseType: !295, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3412, file: !698, line: 356, baseType: !145, size: 128, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3400, file: !698, line: 359, baseType: !2595, size: 512, align: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3342, file: !14, line: 409, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!85, !322, !561}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3342, file: !14, line: 412, baseType: !3423, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!1447, !322, !3352}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3342, file: !14, line: 414, baseType: !3427, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !3430}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3342, file: !14, line: 416, baseType: !3433, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!85, !1286, !322, !487, !7, !3436, !1807}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3342, file: !14, line: 419, baseType: !3438, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!85, !1286, !322, !487, !7, !7, !2594, !317}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3342, file: !14, line: 424, baseType: !3442, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!3445, !322, !3445}
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !146, line: 131, baseType: !399)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3342, file: !14, line: 425, baseType: !3447, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !3352, !292, !292}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3342, file: !14, line: 426, baseType: !3451, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!1447, !3352, !691}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3342, file: !14, line: 427, baseType: !3455, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !3352}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3342, file: !14, line: 428, baseType: !1580, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3342, file: !14, line: 433, baseType: !3460, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!85, !322, !3352, !3352, !50}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3342, file: !14, line: 435, baseType: !3464, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!85, !3352}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3342, file: !14, line: 436, baseType: !3468, size: 64, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!1447, !3352, !292, !292}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3342, file: !14, line: 438, baseType: !3472, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3352, !3475, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3342, file: !14, line: 439, baseType: !3477, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!85, !322, !2594}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3342, file: !14, line: 442, baseType: !3481, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!85, !3484, !1286, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3342, file: !14, line: 444, baseType: !1799, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3342, file: !14, line: 445, baseType: !3489, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!85, !1583, !1605}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !14, line: 486, baseType: !295, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !323, file: !14, line: 487, baseType: !840, size: 320, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !323, file: !14, line: 488, baseType: !1842, size: 32, offset: 1280)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !323, file: !14, line: 489, baseType: !175, size: 32, offset: 1312)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !323, file: !14, line: 490, baseType: !145, size: 128, offset: 1344)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !323, file: !14, line: 491, baseType: !317, size: 64, offset: 1472)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !312, file: !271, line: 180, baseType: !3499, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!277, !1286, !168, !311, !245, !487, !292}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !312, file: !271, line: 182, baseType: !3499, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !312, file: !271, line: 184, baseType: !3504, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!85, !1286, !168, !311, !1700}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !300, file: !271, line: 90, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !300, file: !271, line: 91, baseType: !3510, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !261, file: !161, line: 120, baseType: !3512, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3515, !228}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3517)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3518)
!3518 = !{!3519, !3520, !3524, !3528, !3534, !3538}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3517, file: !58, line: 40, baseType: !57, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3517, file: !58, line: 41, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!1447}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3517, file: !58, line: 42, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!317}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3517, file: !58, line: 43, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!1931, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3517, file: !58, line: 44, baseType: !3535, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!1931}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3517, file: !58, line: 45, baseType: !3110, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !261, file: !161, line: 121, baseType: !3540, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!1931, !228}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !261, file: !161, line: 122, baseType: !3544, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !228, !3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !160, file: !161, line: 70, baseType: !3550, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !502, line: 190, size: 1152, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3644, !3645, !3646, !3647, !3648, !3651}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3551, file: !502, line: 191, baseType: !195, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3551, file: !502, line: 192, baseType: !195, size: 32, offset: 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3551, file: !502, line: 202, baseType: !3550, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3551, file: !502, line: 203, baseType: !164, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3551, file: !502, line: 205, baseType: !1013, size: 192, align: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3551, file: !502, line: 207, baseType: !1931, size: 64, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3551, file: !502, line: 208, baseType: !7, size: 32, offset: 448)
!3560 = !DIDerivedType(tag: DW_TAG_member, scope: !3551, file: !502, line: 209, baseType: !3561, size: 256, offset: 512)
!3561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3551, file: !502, line: 209, size: 256, elements: !3562)
!3562 = !{!3563, !3572, !3576}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3561, file: !502, line: 210, baseType: !3564, size: 256)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !502, line: 153, size: 256, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3571}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3564, file: !502, line: 154, baseType: !295, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3564, file: !502, line: 156, baseType: !1145, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3564, file: !502, line: 162, baseType: !3569, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !502, line: 162, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3564, file: !502, line: 167, baseType: !295, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3561, file: !502, line: 211, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !502, line: 170, size: 64, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3573, file: !502, line: 171, baseType: !3550, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3561, file: !502, line: 212, baseType: !3577, size: 256)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !502, line: 174, size: 256, elements: !3578)
!3578 = !{!3579, !3639, !3642, !3643}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3577, file: !502, line: 175, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !502, line: 271, size: 768, elements: !3583)
!3583 = !{!3584, !3604, !3608, !3612, !3616, !3620, !3624, !3628, !3629, !3630, !3631, !3635}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3582, file: !502, line: 276, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!85, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !502, line: 251, size: 1216, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3589, file: !502, line: 253, baseType: !3550, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3589, file: !502, line: 254, baseType: !1286, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3589, file: !502, line: 255, baseType: !599, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3589, file: !502, line: 256, baseType: !317, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3589, file: !502, line: 259, baseType: !626, size: 256, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3589, file: !502, line: 260, baseType: !626, size: 256, offset: 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3589, file: !502, line: 261, baseType: !85, size: 32, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3589, file: !502, line: 262, baseType: !145, size: 128, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3589, file: !502, line: 263, baseType: !245, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3589, file: !502, line: 265, baseType: !292, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3589, file: !502, line: 266, baseType: !1447, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3589, file: !502, line: 267, baseType: !1447, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3589, file: !502, line: 268, baseType: !1745, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3582, file: !502, line: 277, baseType: !3605, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !3588}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3582, file: !502, line: 290, baseType: !3609, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!85, !599, !317}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3582, file: !502, line: 292, baseType: !3613, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!317, !599, !1574}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3582, file: !502, line: 293, baseType: !3617, size: 64, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!317, !599, !317, !1574}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3582, file: !502, line: 294, baseType: !3621, size: 64, offset: 320)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{null, !599, !317}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3582, file: !502, line: 296, baseType: !3625, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!277, !3588, !245, !292, !487}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3582, file: !502, line: 306, baseType: !292, size: 64, offset: 448)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3582, file: !502, line: 313, baseType: !1447, size: 8, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3582, file: !502, line: 314, baseType: !3625, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3582, file: !502, line: 317, baseType: !3632, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!1687, !3588, !1689}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3582, file: !502, line: 320, baseType: !3636, size: 64, offset: 704)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!85, !3588, !1700}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3577, file: !502, line: 176, baseType: !3640, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !502, line: 35, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3577, file: !502, line: 177, baseType: !487, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3577, file: !502, line: 178, baseType: !3550, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3551, file: !502, line: 215, baseType: !317, size: 64, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3551, file: !502, line: 221, baseType: !399, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3551, file: !502, line: 223, baseType: !215, size: 16, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3551, file: !502, line: 224, baseType: !287, size: 16, offset: 912)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3551, file: !502, line: 225, baseType: !3649, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !502, line: 36, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3551, file: !502, line: 227, baseType: !940, size: 128, align: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !160, file: !161, line: 71, baseType: !3653, size: 32, offset: 448)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3654, line: 19, size: 32, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3653, file: !3654, line: 20, baseType: !969, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !160, file: !161, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !160, file: !161, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !160, file: !161, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !160, file: !161, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !160, file: !161, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !157, file: !6, line: 47, baseType: !140, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !157, file: !6, line: 48, baseType: !168, size: 64, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !157, file: !6, line: 49, baseType: !3665, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !157, file: !6, line: 50, baseType: !2080, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !141, file: !6, line: 418, baseType: !3669, size: 64, offset: 1408)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3671)
!3671 = !{!3672, !3673, !3678, !3682, !3686, !3690}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3670, file: !6, line: 54, baseType: !283, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3670, file: !6, line: 55, baseType: !3674, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!277, !3669, !3677, !245}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3670, file: !6, line: 57, baseType: !3679, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!277, !3669, !3677, !164, !292}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3670, file: !6, line: 59, baseType: !3683, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !140, !164}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3670, file: !6, line: 60, baseType: !3687, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!85, !140}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3670, file: !6, line: 61, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !140}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !141, file: !6, line: 419, baseType: !164, size: 64, offset: 1472)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !141, file: !6, line: 420, baseType: !164, size: 64, offset: 1536)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !141, file: !6, line: 421, baseType: !168, size: 64, offset: 1600)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !141, file: !6, line: 424, baseType: !3698, size: 64, offset: 1664)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !141, file: !6, line: 425, baseType: !3702, size: 64, offset: 1728)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !141, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !141, file: !6, line: 435, baseType: !626, size: 256, offset: 1856)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !141, file: !6, line: 437, baseType: !3707, size: 64, offset: 2112)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3709, line: 69, size: 320, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3710 = !{!3711, !3712, !3713, !3730, !3732, !3736, !3737}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3708, file: !3709, line: 70, baseType: !164, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3708, file: !3709, line: 71, baseType: !140, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3708, file: !3709, line: 72, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3709, line: 47, size: 256, elements: !3717)
!3717 = !{!3718, !3719, !3725, !3729}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3716, file: !3709, line: 49, baseType: !7, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3716, file: !3709, line: 51, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!85, !164, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3716, file: !3709, line: 53, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!85, !245, !3723}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3716, file: !3709, line: 55, baseType: !3110, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3708, file: !3709, line: 73, baseType: !3731, size: 16, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3708, file: !3709, line: 74, baseType: !3733, size: 8, offset: 208)
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !204, line: 16, baseType: !3734)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !206, line: 20, baseType: !3735)
!3735 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3708, file: !3709, line: 75, baseType: !203, size: 8, offset: 216)
!3737 = !DIDerivedType(tag: DW_TAG_member, scope: !3708, file: !3709, line: 76, baseType: !3738, size: 64, offset: 256)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3708, file: !3709, line: 76, size: 64, elements: !3739)
!3739 = !{!3740, !3741, !3748}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3738, file: !3709, line: 77, baseType: !317, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3738, file: !3709, line: 78, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3744)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3709, line: 86, size: 128, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3744, file: !3709, line: 87, baseType: !7, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3744, file: !3709, line: 88, baseType: !245, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3738, file: !3709, line: 79, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3709, line: 92, size: 256, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3757}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3751, file: !3709, line: 94, baseType: !7, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3751, file: !3709, line: 95, baseType: !7, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3751, file: !3709, line: 96, baseType: !949, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3751, file: !3709, line: 97, baseType: !3714, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3751, file: !3709, line: 98, baseType: !317, size: 64, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !141, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !141, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !141, file: !6, line: 442, baseType: !3698, size: 64, offset: 2240)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !141, file: !6, line: 443, baseType: !3702, size: 64, offset: 2304)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !141, file: !6, line: 444, baseType: !1447, size: 8, offset: 2368)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !141, file: !6, line: 451, baseType: !1447, size: 8, offset: 2376)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !141, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !141, file: !6, line: 455, baseType: !3766, size: 64, offset: 2432)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3768, line: 23, size: 96, elements: !3769)
!3768 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3769 = !{!3770, !3771, !3772}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3767, file: !3768, line: 24, baseType: !85, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3767, file: !3768, line: 24, baseType: !85, size: 32, offset: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3767, file: !3768, line: 24, baseType: !85, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !141, file: !6, line: 458, baseType: !3774, size: 64, offset: 2496)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!85}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !141, file: !6, line: 460, baseType: !3778, size: 4032, align: 512, offset: 2560)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3779, size: 4032, elements: !3793)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3780)
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3779, file: !6, line: 363, baseType: !317, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3779, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3779, file: !6, line: 367, baseType: !3784, size: 448, offset: 128)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3784, file: !6, line: 320, baseType: !140, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3784, file: !6, line: 321, baseType: !3788, size: 384, offset: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3789, line: 40, size: 384, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3790 = !{!3791}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3788, file: !3789, line: 41, baseType: !3792, size: 384, align: 64)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 384, align: 64, elements: !2240)
!3793 = !{!3794}
!3794 = !DISubrange(count: 7)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !141, file: !6, line: 463, baseType: !3796, size: 192, offset: 6592)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3797, line: 8, size: 192, elements: !3798)
!3797 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3798 = !{!3799, !3800, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3796, file: !3797, line: 10, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3796, file: !3797, line: 11, baseType: !593, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3796, file: !3797, line: 12, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3804, line: 59, size: 48, elements: !3805)
!3804 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3803, file: !3804, line: 60, baseType: !1948, size: 16)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3803, file: !3804, line: 61, baseType: !1948, size: 16, offset: 16)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3803, file: !3804, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3803, file: !3804, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3803, file: !3804, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3803, file: !3804, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !141, file: !6, line: 465, baseType: !295, size: 64, offset: 6784)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !141, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !141, file: !6, line: 470, baseType: !145, size: 128, offset: 6912)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !141, file: !6, line: 471, baseType: !3816, size: 64, offset: 7040)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3818, line: 33, size: 96, elements: !3819)
!3818 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3817, file: !3818, line: 37, baseType: !85, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3817, file: !3818, line: 43, baseType: !85, size: 32, offset: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3817, file: !3818, line: 45, baseType: !215, size: 16, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3817, file: !3818, line: 47, baseType: !215, size: 16, offset: 80)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !141, file: !6, line: 476, baseType: !3825, size: 64, offset: 7104)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3827)
!3827 = !{!3828, !3844, !3845, !3846}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3826, file: !6, line: 379, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3831, line: 204, baseType: !3832)
!3831 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3831, line: 197, size: 192, elements: !3833)
!3833 = !{!3834, !3836, !3837, !3838, !3840, !3842}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3832, file: !3831, line: 198, baseType: !3835, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3831, line: 21, baseType: !396)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3832, file: !3831, line: 199, baseType: !207, size: 8, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3832, file: !3831, line: 200, baseType: !207, size: 8, offset: 40)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3832, file: !3831, line: 201, baseType: !3839, size: 16, offset: 48)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3831, line: 17, baseType: !214)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3832, file: !3831, line: 202, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3831, line: 16, baseType: !400)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3832, file: !3831, line: 203, baseType: !3843, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3831, line: 22, baseType: !400)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3826, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3826, file: !6, line: 381, baseType: !245, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3826, file: !6, line: 382, baseType: !245, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !141, file: !6, line: 477, baseType: !3826, size: 256, offset: 7168)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !141, file: !6, line: 480, baseType: !3849, size: 64, offset: 7424)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !141, file: !6, line: 483, baseType: !3852, size: 64, offset: 7488)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !141, file: !6, line: 488, baseType: !245, size: 64, offset: 7552)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !141, file: !6, line: 492, baseType: !317, size: 64, offset: 7616)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !141, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !141, file: !6, line: 495, baseType: !317, size: 64, offset: 7744)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !141, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !141, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !141, file: !6, line: 500, baseType: !3861, size: 64, offset: 7872)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3863, line: 45, baseType: !3864)
!3863 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !141, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !141, file: !6, line: 504, baseType: !3867, size: 64, offset: 8000)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3870, line: 96, size: 192, elements: !3871)
!3870 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3871 = !{!3872, !3873, !3916, !3918}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3869, file: !3870, line: 97, baseType: !7, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3869, file: !3870, line: 98, baseType: !3874, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3870, line: 24, size: 3072, elements: !3876)
!3876 = !{!3877, !3879, !3880, !3881, !3882, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3913, !3914, !3915}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3875, file: !3870, line: 26, baseType: !3878, size: 128)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 128, elements: !2240)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3875, file: !3870, line: 27, baseType: !3878, size: 128, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3875, file: !3870, line: 28, baseType: !85, size: 32, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3875, file: !3870, line: 31, baseType: !175, size: 32, align: 512, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3875, file: !3870, line: 32, baseType: !3883, size: 960, offset: 576)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3884, line: 206, size: 960, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3885 = !{!3886, !3887, !3890, !3892, !3893, !3895}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3883, file: !3884, line: 207, baseType: !943, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3883, file: !3884, line: 208, baseType: !3888, size: 256, offset: 64)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3889, size: 256, elements: !1335)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3883, file: !3884, line: 209, baseType: !3891, size: 256, offset: 320)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !1335)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3883, file: !3884, line: 213, baseType: !281, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3883, file: !3884, line: 215, baseType: !3894, size: 256, offset: 640)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !1335)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3883, file: !3884, line: 216, baseType: !203, size: 8, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3875, file: !3870, line: 33, baseType: !295, size: 64, offset: 1536)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3875, file: !3870, line: 34, baseType: !295, size: 64, offset: 1600)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3875, file: !3870, line: 35, baseType: !1447, size: 8, offset: 1664)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3875, file: !3870, line: 36, baseType: !2747, size: 320, offset: 1728)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3875, file: !3870, line: 37, baseType: !1970, size: 256, offset: 2048)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3875, file: !3870, line: 38, baseType: !940, size: 128, align: 64, offset: 2304)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3875, file: !3870, line: 39, baseType: !3903, size: 64, offset: 2432)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3870, line: 49, size: 768, elements: !3905)
!3905 = !{!3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3904, file: !3870, line: 50, baseType: !175, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3904, file: !3870, line: 51, baseType: !3891, size: 256, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3904, file: !3870, line: 53, baseType: !3891, size: 256, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3904, file: !3870, line: 54, baseType: !295, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3904, file: !3870, line: 55, baseType: !3903, size: 64, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3904, file: !3870, line: 56, baseType: !85, size: 32, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3904, file: !3870, line: 57, baseType: !85, size: 32, offset: 736)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3875, file: !3870, line: 40, baseType: !295, size: 64, offset: 2496)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3875, file: !3870, line: 42, baseType: !85, size: 32, offset: 2560)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3875, file: !3870, line: 43, baseType: !3868, size: 64, offset: 2624)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3869, file: !3870, line: 99, baseType: !3917, offset: 128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !529, line: 211, elements: !530)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3869, file: !3870, line: 100, baseType: !3919, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3870, line: 63, size: 3008, elements: !3921)
!3921 = !{!3922, !3923, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3951}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3920, file: !3870, line: 64, baseType: !3903, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3920, file: !3870, line: 65, baseType: !3924, size: 192, offset: 64)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3903, size: 192, elements: !246)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3920, file: !3870, line: 67, baseType: !85, size: 32, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3920, file: !3870, line: 68, baseType: !626, size: 256, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3920, file: !3870, line: 69, baseType: !175, size: 32, offset: 576)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3920, file: !3870, line: 70, baseType: !626, size: 256, offset: 640)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3920, file: !3870, line: 71, baseType: !295, size: 64, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3920, file: !3870, line: 72, baseType: !295, size: 64, offset: 960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3920, file: !3870, line: 73, baseType: !295, size: 64, offset: 1024)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3920, file: !3870, line: 74, baseType: !295, size: 64, offset: 1088)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3920, file: !3870, line: 75, baseType: !295, size: 64, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3920, file: !3870, line: 76, baseType: !295, size: 64, offset: 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3920, file: !3870, line: 77, baseType: !295, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3920, file: !3870, line: 78, baseType: !295, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3920, file: !3870, line: 79, baseType: !1447, size: 8, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3920, file: !3870, line: 80, baseType: !295, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3920, file: !3870, line: 81, baseType: !626, size: 256, offset: 1536)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3920, file: !3870, line: 82, baseType: !2081, size: 256, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3920, file: !3870, line: 84, baseType: !195, size: 32, offset: 2048)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3920, file: !3870, line: 87, baseType: !295, size: 64, offset: 2112)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3920, file: !3870, line: 88, baseType: !295, size: 64, offset: 2176)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3920, file: !3870, line: 89, baseType: !3945, size: 704, offset: 2240)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1971, line: 111, size: 704, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3945, file: !1971, line: 112, baseType: !1970, size: 256)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3945, file: !1971, line: 113, baseType: !2747, size: 320, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3945, file: !1971, line: 116, baseType: !3041, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3945, file: !1971, line: 117, baseType: !85, size: 32, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3920, file: !3870, line: 90, baseType: !3868, size: 64, offset: 2944)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !141, file: !6, line: 515, baseType: !3953, size: 64, offset: 8064)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3955, line: 117, size: 128, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3956 = !{!3957, !3958, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3954, file: !3955, line: 118, baseType: !1390, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3954, file: !3955, line: 119, baseType: !1390, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3954, file: !3955, line: 120, baseType: !281, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !141, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !141, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !141, file: !6, line: 520, baseType: !3963, size: 64, offset: 8192)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !141, file: !6, line: 523, baseType: !3965, size: 64, offset: 8256)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !141, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !141, file: !6, line: 525, baseType: !3970, size: 64, offset: 8384)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !141, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !141, file: !6, line: 533, baseType: !317, size: 64, offset: 8512)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !141, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !141, file: !6, line: 535, baseType: !2169, size: 64, offset: 8640)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !141, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !141, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !141, file: !6, line: 540, baseType: !3980, size: 64, offset: 8768)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3982, line: 32, size: 64, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3983 = !{!3984, !3985}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3981, file: !3982, line: 33, baseType: !1390, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3981, file: !3982, line: 34, baseType: !1390, size: 32, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !141, file: !6, line: 563, baseType: !145, size: 128, offset: 8832)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !141, file: !6, line: 565, baseType: !145, size: 128, offset: 8960)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !141, file: !6, line: 568, baseType: !3989, size: 64, offset: 9088)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !141, file: !6, line: 570, baseType: !195, size: 32, offset: 9152)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_dev_ioctl", file: !118, line: 89, size: 192, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !4058}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ver_major", scope: !3992, file: !118, line: 90, baseType: !396, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ver_minor", scope: !3992, file: !118, line: 91, baseType: !396, size: 32, offset: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3992, file: !118, line: 92, baseType: !396, size: 32, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ioctlfd", scope: !3992, file: !118, line: 94, baseType: !1391, size: 32, offset: 96)
!3998 = !DIDerivedType(tag: DW_TAG_member, scope: !3992, file: !118, line: 98, baseType: !3999, size: 64, offset: 128)
!3999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3992, file: !118, line: 98, size: 64, elements: !4000)
!4000 = !{!4001, !4005, !4009, !4013, !4017, !4022, !4026, !4030, !4035, !4039, !4043}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "protover", scope: !3999, file: !118, line: 99, baseType: !4002, size: 32)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_protover", file: !118, line: 28, size: 32, elements: !4003)
!4003 = !{!4004}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4002, file: !118, line: 29, baseType: !396, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "protosubver", scope: !3999, file: !118, line: 100, baseType: !4006, size: 32)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_protosubver", file: !118, line: 32, size: 32, elements: !4007)
!4007 = !{!4008}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !4006, file: !118, line: 33, baseType: !396, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "openmount", scope: !3999, file: !118, line: 101, baseType: !4010, size: 32)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_openmount", file: !118, line: 36, size: 32, elements: !4011)
!4011 = !{!4012}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !4010, file: !118, line: 37, baseType: !396, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !3999, file: !118, line: 102, baseType: !4014, size: 32)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_ready", file: !118, line: 40, size: 32, elements: !4015)
!4015 = !{!4016}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !4014, file: !118, line: 41, baseType: !396, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "fail", scope: !3999, file: !118, line: 103, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_fail", file: !118, line: 44, size: 64, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !4018, file: !118, line: 45, baseType: !396, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4018, file: !118, line: 46, baseType: !1391, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "setpipefd", scope: !3999, file: !118, line: 104, baseType: !4023, size: 32)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_setpipefd", file: !118, line: 49, size: 32, elements: !4024)
!4024 = !{!4025}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !4023, file: !118, line: 50, baseType: !1391, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3999, file: !118, line: 105, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_timeout", file: !118, line: 53, size: 64, elements: !4028)
!4028 = !{!4029}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4027, file: !118, line: 54, baseType: !400, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "requester", scope: !3999, file: !118, line: 106, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_requester", file: !118, line: 57, size: 64, elements: !4032)
!4032 = !{!4033, !4034}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4031, file: !118, line: 58, baseType: !396, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4031, file: !118, line: 59, baseType: !396, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !3999, file: !118, line: 107, baseType: !4036, size: 32)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_expire", file: !118, line: 62, size: 32, elements: !4037)
!4037 = !{!4038}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !4036, file: !118, line: 63, baseType: !396, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "askumount", scope: !3999, file: !118, line: 108, baseType: !4040, size: 32)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_askumount", file: !118, line: 66, size: 32, elements: !4041)
!4041 = !{!4042}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "may_umount", scope: !4040, file: !118, line: 67, baseType: !396, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ismountpoint", scope: !3999, file: !118, line: 109, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_ismountpoint", file: !118, line: 70, size: 64, elements: !4045)
!4045 = !{!4046}
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !118, line: 71, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !118, line: 71, size: 64, elements: !4048)
!4048 = !{!4049, !4053}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4047, file: !118, line: 74, baseType: !4050, size: 32)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_in", file: !118, line: 72, size: 32, elements: !4051)
!4051 = !{!4052}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4050, file: !118, line: 73, baseType: !396, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !4047, file: !118, line: 78, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_out", file: !118, line: 75, size: 64, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !4054, file: !118, line: 76, baseType: !396, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4054, file: !118, line: 77, baseType: !396, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !3992, file: !118, line: 112, baseType: !2569, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "autofs_wqt_t", file: !4061, line: 38, baseType: !7)
!4061 = !DIFile(filename: "./include/uapi/linux/auto_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "967b492b126909646225f054deef702b")
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_info", file: !4064, line: 52, size: 1024, elements: !4065)
!4064 = !DIFile(filename: "fs/autofs/autofs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "474496a990f5ae9b197285e0b4803e95")
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4111, !4112, !4113, !4114, !4115}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4063, file: !4064, line: 53, baseType: !361, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4063, file: !4064, line: 54, baseType: !85, size: 32, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "expire_complete", scope: !4063, file: !4064, line: 56, baseType: !2081, size: 256, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4063, file: !4064, line: 58, baseType: !145, size: 128, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "expiring", scope: !4063, file: !4064, line: 60, baseType: !145, size: 128, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "sbi", scope: !4063, file: !4064, line: 62, baseType: !4072, size: 64, offset: 640)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_sb_info", file: !4064, line: 106, size: 1664, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4107, !4108, !4109, !4110}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4073, file: !4064, line: 107, baseType: !395, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pipefd", scope: !4073, file: !4064, line: 108, baseType: !85, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4073, file: !4064, line: 109, baseType: !1286, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "oz_pgrp", scope: !4073, file: !4064, line: 110, baseType: !1327, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4073, file: !4064, line: 111, baseType: !85, size: 32, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "sub_version", scope: !4073, file: !4064, line: 112, baseType: !85, size: 32, offset: 224)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "min_proto", scope: !4073, file: !4064, line: 113, baseType: !85, size: 32, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "max_proto", scope: !4073, file: !4064, line: 114, baseType: !85, size: 32, offset: 288)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4064, line: 115, baseType: !7, size: 32, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "exp_timeout", scope: !4073, file: !4064, line: 116, baseType: !295, size: 64, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4073, file: !4064, line: 117, baseType: !7, size: 32, offset: 448)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !4073, file: !4064, line: 118, baseType: !477, size: 64, offset: 512)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "wq_mutex", scope: !4073, file: !4064, line: 119, baseType: !626, size: 256, offset: 576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mutex", scope: !4073, file: !4064, line: 120, baseType: !626, size: 256, offset: 832)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "fs_lock", scope: !4073, file: !4064, line: 121, baseType: !175, size: 32, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "queues", scope: !4073, file: !4064, line: 122, baseType: !4091, size: 64, offset: 1152)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "autofs_wait_queue", file: !4064, line: 82, size: 768, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4092, file: !4064, line: 83, baseType: !933, size: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4092, file: !4064, line: 84, baseType: !4091, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue_token", scope: !4092, file: !4064, line: 85, baseType: !4060, size: 32, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4092, file: !4064, line: 87, baseType: !386, size: 128, offset: 320)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4092, file: !4064, line: 88, baseType: !395, size: 32, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4092, file: !4064, line: 89, baseType: !395, size: 32, offset: 480)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4092, file: !4064, line: 90, baseType: !399, size: 64, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4092, file: !4064, line: 91, baseType: !332, size: 32, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4092, file: !4064, line: 92, baseType: !341, size: 32, offset: 608)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4092, file: !4064, line: 93, baseType: !2063, size: 32, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !4092, file: !4064, line: 94, baseType: !2063, size: 32, offset: 672)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4092, file: !4064, line: 96, baseType: !85, size: 32, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "wait_ctr", scope: !4092, file: !4064, line: 97, baseType: !7, size: 32, offset: 736)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_lock", scope: !4073, file: !4064, line: 123, baseType: !175, size: 32, offset: 1216)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !4073, file: !4064, line: 124, baseType: !145, size: 128, offset: 1280)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "expiring_list", scope: !4073, file: !4064, line: 125, baseType: !145, size: 128, offset: 1408)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4073, file: !4064, line: 126, baseType: !940, size: 128, align: 64, offset: 1536)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !4063, file: !4064, line: 63, baseType: !295, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4063, file: !4064, line: 64, baseType: !85, size: 32, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4063, file: !4064, line: 66, baseType: !332, size: 32, offset: 800)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4063, file: !4064, line: 67, baseType: !341, size: 32, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4063, file: !4064, line: 68, baseType: !940, size: 128, align: 64, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!4117 = !{!0, !4118, !4123, !4128, !4133, !4136, !4499, !4501, !4506, !4511, !4517, !4522, !4527, !4532, !4537, !4542, !4547, !4567, !4572}
!4118 = !DIGlobalVariableExpression(var: !4119, expr: !DIExpression())
!4119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias278", scope: !2, file: !3, line: 722, type: !4120, isLocal: true, isDefinition: true, align: 8)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 232, elements: !4121)
!4121 = !{!4122}
!4122 = !DISubrange(count: 29)
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !4125, isLocal: true, isDefinition: true)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 496, elements: !4126)
!4126 = !{!4127}
!4127 = !DISubrange(count: 62)
!4128 = !DIGlobalVariableExpression(var: !4129, expr: !DIExpression())
!4129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !4130, isLocal: true, isDefinition: true)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 176, elements: !4131)
!4131 = !{!4132}
!4132 = !DISubrange(count: 22)
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !4135, isLocal: true, isDefinition: true)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 56, elements: !3793)
!4136 = !DIGlobalVariableExpression(var: !4137, expr: !DIExpression())
!4137 = distinct !DIGlobalVariable(name: "_autofs_dev_ioctl_misc", scope: !2, file: !3, line: 714, type: !4138, isLocal: true, isDefinition: true)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4139, line: 79, size: 640, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a69389defd2997053c089e14bd956b02")
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4495, !4496, !4497, !4498}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4138, file: !4139, line: 80, baseType: !85, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4138, file: !4139, line: 81, baseType: !164, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4138, file: !4139, line: 82, baseType: !1561, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4138, file: !4139, line: 83, baseType: !145, size: 128, offset: 192)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4138, file: !4139, line: 84, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4154, !4155, !4208, !4278, !4279, !4280, !4281, !4282, !4289, !4381, !4394, !4404, !4408, !4410, !4411, !4412, !4416, !4423, !4424, !4427, !4430, !4434, !4437, !4438, !4439, !4440, !4441, !4442, !4472, !4473, !4474, !4477, !4480, !4489, !4490, !4491, !4492, !4493, !4494}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4147, file: !70, line: 706, baseType: !160, size: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4147, file: !70, line: 707, baseType: !4146, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4147, file: !70, line: 709, baseType: !4152, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4147, file: !70, line: 711, baseType: !164, size: 64, offset: 640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4147, file: !70, line: 712, baseType: !4156, size: 64, offset: 704)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4168, !4173, !4177}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4158, file: !70, line: 90, baseType: !164, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4158, file: !70, line: 91, baseType: !297, size: 64, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4158, file: !70, line: 92, baseType: !4163, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!85, !4166, !240}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4158, file: !70, line: 93, baseType: !4169, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!245, !4166, !4172, !3547, !3548}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4158, file: !70, line: 95, baseType: !4174, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4146}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4158, file: !70, line: 97, baseType: !4178, size: 64, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4181)
!4181 = !{!4182, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4180, file: !77, line: 287, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!85, !4146}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4180, file: !77, line: 288, baseType: !4174, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4180, file: !77, line: 289, baseType: !4183, size: 64, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4180, file: !77, line: 290, baseType: !4183, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4180, file: !77, line: 291, baseType: !4183, size: 64, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4180, file: !77, line: 292, baseType: !4183, size: 64, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4180, file: !77, line: 293, baseType: !4183, size: 64, offset: 384)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4180, file: !77, line: 294, baseType: !4183, size: 64, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4180, file: !77, line: 295, baseType: !4183, size: 64, offset: 512)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4180, file: !77, line: 296, baseType: !4183, size: 64, offset: 576)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4180, file: !77, line: 297, baseType: !4183, size: 64, offset: 640)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4180, file: !77, line: 298, baseType: !4183, size: 64, offset: 704)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4180, file: !77, line: 299, baseType: !4183, size: 64, offset: 768)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4180, file: !77, line: 300, baseType: !4183, size: 64, offset: 832)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4180, file: !77, line: 301, baseType: !4183, size: 64, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4180, file: !77, line: 302, baseType: !4183, size: 64, offset: 960)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4180, file: !77, line: 303, baseType: !4183, size: 64, offset: 1024)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4180, file: !77, line: 304, baseType: !4183, size: 64, offset: 1088)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4180, file: !77, line: 305, baseType: !4183, size: 64, offset: 1152)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4180, file: !77, line: 306, baseType: !4183, size: 64, offset: 1216)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4180, file: !77, line: 307, baseType: !4183, size: 64, offset: 1280)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4180, file: !77, line: 308, baseType: !4183, size: 64, offset: 1344)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4180, file: !77, line: 309, baseType: !4183, size: 64, offset: 1408)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4147, file: !70, line: 714, baseType: !4209, size: 64, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4212, line: 80, size: 1344, elements: !4213)
!4212 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4219, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4277}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4211, file: !4212, line: 81, baseType: !164, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4211, file: !4212, line: 82, baseType: !164, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4211, file: !4212, line: 83, baseType: !297, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4211, file: !4212, line: 84, baseType: !297, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4211, file: !4212, line: 85, baseType: !297, size: 64, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4211, file: !4212, line: 87, baseType: !4220, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!85, !4146, !4223}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4225)
!4225 = !{!4226, !4227, !4228, !4229, !4230, !4231, !4232, !4236, !4240, !4241, !4242, !4243, !4244, !4252, !4253, !4254, !4255, !4256, !4257}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4224, file: !64, line: 97, baseType: !164, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4224, file: !64, line: 98, baseType: !4209, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4224, file: !64, line: 100, baseType: !140, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4224, file: !64, line: 101, baseType: !164, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4224, file: !64, line: 103, baseType: !1447, size: 8, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4224, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4224, file: !64, line: 106, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4224, file: !64, line: 107, baseType: !4237, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4239)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4224, file: !64, line: 109, baseType: !4183, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4224, file: !64, line: 110, baseType: !4174, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4224, file: !64, line: 111, baseType: !4183, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4224, file: !64, line: 112, baseType: !4174, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4224, file: !64, line: 113, baseType: !4245, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!85, !4146, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4250)
!4250 = !{!4251}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4249, file: !77, line: 59, baseType: !85, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4224, file: !64, line: 114, baseType: !4183, size: 64, offset: 768)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4224, file: !64, line: 115, baseType: !297, size: 64, offset: 832)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4224, file: !64, line: 116, baseType: !297, size: 64, offset: 896)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4224, file: !64, line: 118, baseType: !4178, size: 64, offset: 960)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4224, file: !64, line: 119, baseType: !4174, size: 64, offset: 1024)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4224, file: !64, line: 121, baseType: !4258, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4211, file: !4212, line: 88, baseType: !4163, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4211, file: !4212, line: 89, baseType: !4183, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4211, file: !4212, line: 90, baseType: !4174, size: 64, offset: 512)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4211, file: !4212, line: 91, baseType: !4174, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4211, file: !4212, line: 92, baseType: !4174, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4211, file: !4212, line: 94, baseType: !4183, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4211, file: !4212, line: 95, baseType: !4183, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4211, file: !4212, line: 97, baseType: !4245, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4211, file: !4212, line: 98, baseType: !4183, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4211, file: !4212, line: 100, baseType: !4183, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4211, file: !4212, line: 102, baseType: !4183, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4211, file: !4212, line: 103, baseType: !4174, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4211, file: !4212, line: 105, baseType: !4178, size: 64, offset: 1152)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4211, file: !4212, line: 107, baseType: !4274, size: 64, offset: 1216)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4212, line: 107, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4211, file: !4212, line: 109, baseType: !1447, size: 8, offset: 1280)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4147, file: !70, line: 715, baseType: !4223, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4147, file: !70, line: 717, baseType: !317, size: 64, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4147, file: !70, line: 719, baseType: !317, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4147, file: !70, line: 721, baseType: !626, size: 256, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4147, file: !70, line: 725, baseType: !4283, size: 448, offset: 1280)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4284)
!4284 = !{!4285, !4286, !4287, !4288}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4283, file: !70, line: 518, baseType: !145, size: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4283, file: !70, line: 519, baseType: !145, size: 128, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4283, file: !70, line: 520, baseType: !145, size: 128, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4283, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4147, file: !70, line: 726, baseType: !4290, size: 2496, offset: 1728)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4374, !4378}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4290, file: !77, line: 664, baseType: !4248, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4290, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4290, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4290, file: !77, line: 667, baseType: !1447, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4290, file: !77, line: 668, baseType: !1447, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4290, file: !77, line: 669, baseType: !1447, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4290, file: !77, line: 670, baseType: !1447, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4290, file: !77, line: 671, baseType: !1447, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4290, file: !77, line: 672, baseType: !1447, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4290, file: !77, line: 673, baseType: !1447, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4290, file: !77, line: 674, baseType: !1447, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4290, file: !77, line: 675, baseType: !395, size: 32, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4290, file: !77, line: 676, baseType: !175, size: 32, offset: 96)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4290, file: !77, line: 678, baseType: !145, size: 128, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4290, file: !77, line: 679, baseType: !2081, size: 256, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4290, file: !77, line: 680, baseType: !4308, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4310, line: 43, size: 1536, elements: !4311)
!4310 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4309, file: !4310, line: 44, baseType: !164, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4309, file: !4310, line: 45, baseType: !85, size: 32, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4309, file: !4310, line: 46, baseType: !145, size: 128, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4309, file: !4310, line: 47, baseType: !175, size: 32, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4309, file: !4310, line: 48, baseType: !4317, size: 64, offset: 320)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4309, file: !4310, line: 49, baseType: !2747, size: 320, offset: 384)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4309, file: !4310, line: 50, baseType: !295, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4309, file: !4310, line: 51, baseType: !1091, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4309, file: !4310, line: 52, baseType: !1091, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4309, file: !4310, line: 53, baseType: !1091, size: 64, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4309, file: !4310, line: 54, baseType: !1091, size: 64, offset: 960)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4309, file: !4310, line: 55, baseType: !1091, size: 64, offset: 1024)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4309, file: !4310, line: 56, baseType: !295, size: 64, offset: 1088)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4309, file: !4310, line: 57, baseType: !295, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4309, file: !4310, line: 58, baseType: !295, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4309, file: !4310, line: 59, baseType: !295, size: 64, offset: 1280)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4309, file: !4310, line: 60, baseType: !295, size: 64, offset: 1344)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4309, file: !4310, line: 61, baseType: !4146, size: 64, offset: 1408)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4309, file: !4310, line: 62, baseType: !1447, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4309, file: !4310, line: 63, baseType: !1447, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4290, file: !77, line: 681, baseType: !1447, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4290, file: !77, line: 682, baseType: !1447, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4290, file: !77, line: 683, baseType: !1447, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4290, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4290, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4290, file: !77, line: 690, baseType: !1083, size: 512, offset: 640)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4290, file: !77, line: 691, baseType: !399, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4290, file: !77, line: 692, baseType: !1970, size: 256, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4290, file: !77, line: 693, baseType: !933, size: 192, offset: 1472)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4290, file: !77, line: 694, baseType: !4317, size: 64, offset: 1664)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4290, file: !77, line: 695, baseType: !195, size: 32, offset: 1728)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4290, file: !77, line: 696, baseType: !195, size: 32, offset: 1760)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4290, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4290, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4290, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4290, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4290, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4290, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4290, file: !77, line: 703, baseType: !1447, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4290, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4290, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4290, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4290, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4290, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4290, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4290, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4290, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4290, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4290, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4290, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4290, file: !77, line: 715, baseType: !399, size: 64, offset: 2048)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4290, file: !77, line: 716, baseType: !399, size: 64, offset: 2112)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4290, file: !77, line: 717, baseType: !399, size: 64, offset: 2176)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4290, file: !77, line: 718, baseType: !399, size: 64, offset: 2240)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4290, file: !77, line: 720, baseType: !4369, size: 64, offset: 2304)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4371)
!4371 = !{!4372, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4370, file: !77, line: 633, baseType: !175, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4370, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4290, file: !77, line: 721, baseType: !4375, size: 64, offset: 2368)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4146, !1390}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4290, file: !77, line: 722, baseType: !4379, size: 64, offset: 2432)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4147, file: !70, line: 727, baseType: !4382, size: 64, offset: 4224)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4391, !4392, !4393}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4383, file: !77, line: 743, baseType: !4180, size: 1472)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4383, file: !77, line: 744, baseType: !4183, size: 64, offset: 1472)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4383, file: !77, line: 745, baseType: !4388, size: 64, offset: 1536)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !4146, !1447}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4383, file: !77, line: 746, baseType: !4183, size: 64, offset: 1600)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4383, file: !77, line: 747, baseType: !4174, size: 64, offset: 1664)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4383, file: !77, line: 748, baseType: !4174, size: 64, offset: 1728)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4147, file: !70, line: 736, baseType: !4395, size: 128, offset: 4288)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4396)
!4396 = !{!4397, !4401}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4395, file: !70, line: 531, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4400, line: 13, flags: DIFlagFwdDecl)
!4400 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4395, file: !70, line: 532, baseType: !4402, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4147, file: !70, line: 738, baseType: !4405, size: 64, offset: 4416)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4407)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4147, file: !70, line: 740, baseType: !4409, size: 64, offset: 4480)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4147, file: !70, line: 741, baseType: !399, size: 64, offset: 4544)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4147, file: !70, line: 746, baseType: !399, size: 64, offset: 4608)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4147, file: !70, line: 747, baseType: !4413, size: 64, offset: 4672)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4147, file: !70, line: 749, baseType: !4417, size: 64, offset: 4736)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4419)
!4419 = !{!4420, !4421, !4422}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4418, file: !70, line: 433, baseType: !7, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4418, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4418, file: !70, line: 435, baseType: !295, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4147, file: !70, line: 751, baseType: !145, size: 128, offset: 4800)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4147, file: !70, line: 762, baseType: !4425, size: 64, offset: 4928)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4147, file: !70, line: 770, baseType: !4428, offset: 4992)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4429, line: 5, elements: !530)
!4429 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4147, file: !70, line: 772, baseType: !4431, size: 64, offset: 4992)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4433, line: 18, flags: DIFlagFwdDecl)
!4433 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4147, file: !70, line: 773, baseType: !4435, size: 64, offset: 5056)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4212, line: 22, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4147, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4147, file: !70, line: 778, baseType: !482, size: 32, offset: 5152)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4147, file: !70, line: 779, baseType: !395, size: 32, offset: 5184)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4147, file: !70, line: 781, baseType: !175, size: 32, offset: 5216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4147, file: !70, line: 782, baseType: !145, size: 128, offset: 5248)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4147, file: !70, line: 784, baseType: !4443, size: 64, offset: 5376)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4446, line: 52, size: 768, elements: !4447)
!4446 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4456, !4460, !4461, !4462, !4463, !4467, !4471}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4445, file: !4446, line: 53, baseType: !164, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4445, file: !4446, line: 55, baseType: !297, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4445, file: !4446, line: 56, baseType: !297, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4445, file: !4446, line: 58, baseType: !4163, size: 64, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4445, file: !4446, line: 59, baseType: !4453, size: 64, offset: 256)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!245, !4166, !4172}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4445, file: !4446, line: 61, baseType: !4457, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4443}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4445, file: !4446, line: 62, baseType: !4174, size: 64, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4445, file: !4446, line: 64, baseType: !4183, size: 64, offset: 448)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4445, file: !4446, line: 66, baseType: !3515, size: 64, offset: 512)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4445, file: !4446, line: 67, baseType: !4464, size: 64, offset: 576)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!1931, !4166}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4445, file: !4446, line: 69, baseType: !4468, size: 64, offset: 640)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4166, !3547, !3548}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4445, file: !4446, line: 71, baseType: !4178, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4147, file: !70, line: 785, baseType: !297, size: 64, offset: 5440)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4147, file: !70, line: 787, baseType: !4174, size: 64, offset: 5504)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4147, file: !70, line: 788, baseType: !4475, size: 64, offset: 5568)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4147, file: !70, line: 789, baseType: !4478, size: 64, offset: 5632)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4147, file: !70, line: 791, baseType: !4481, size: 64, offset: 5696)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4482, file: !70, line: 598, baseType: !92, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4482, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4482, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4482, file: !70, line: 601, baseType: !1447, size: 8, offset: 96)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4482, file: !70, line: 602, baseType: !1447, size: 8, offset: 104)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4147, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4147, file: !70, line: 795, baseType: !1447, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4147, file: !70, line: 796, baseType: !1447, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4147, file: !70, line: 797, baseType: !1447, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4147, file: !70, line: 798, baseType: !1447, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4147, file: !70, line: 799, baseType: !1447, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4138, file: !4139, line: 85, baseType: !4146, size: 64, offset: 384)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4138, file: !4139, line: 86, baseType: !297, size: 64, offset: 448)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4138, file: !4139, line: 87, baseType: !164, size: 64, offset: 512)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4138, file: !4139, line: 88, baseType: !287, size: 16, offset: 576)
!4499 = !DIGlobalVariableExpression(var: !4500, expr: !DIExpression())
!4500 = distinct !DIGlobalVariable(name: "_dev_ioctl_fops", scope: !2, file: !3, line: 707, type: !1562, isLocal: true, isDefinition: true)
!4501 = !DIGlobalVariableExpression(var: !4502, expr: !DIExpression())
!4502 = distinct !DIGlobalVariable(scope: null, file: !3, line: 630, type: !4503, isLocal: true, isDefinition: true)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 360, elements: !4504)
!4504 = !{!4505}
!4505 = !DISubrange(count: 45)
!4506 = !DIGlobalVariableExpression(var: !4507, expr: !DIExpression())
!4507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 630, type: !4508, isLocal: true, isDefinition: true)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 144, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 18)
!4511 = !DIGlobalVariableExpression(var: !4512, expr: !DIExpression())
!4512 = distinct !DIGlobalVariable(scope: null, file: !4513, line: 249, type: !4514, isLocal: true, isDefinition: true)
!4513 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 224, elements: !4515)
!4515 = !{!4516}
!4516 = !DISubrange(count: 28)
!4517 = !DIGlobalVariableExpression(var: !4518, expr: !DIExpression())
!4518 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !4519, isLocal: true, isDefinition: true)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 680, elements: !4520)
!4520 = !{!4521}
!4521 = !DISubrange(count: 85)
!4522 = !DIGlobalVariableExpression(var: !4523, expr: !DIExpression())
!4523 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !4524, isLocal: true, isDefinition: true)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 152, elements: !4525)
!4525 = !{!4526}
!4526 = !DISubrange(count: 19)
!4527 = !DIGlobalVariableExpression(var: !4528, expr: !DIExpression())
!4528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !4529, isLocal: true, isDefinition: true)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 552, elements: !4530)
!4530 = !{!4531}
!4531 = !DISubrange(count: 69)
!4532 = !DIGlobalVariableExpression(var: !4533, expr: !DIExpression())
!4533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !4534, isLocal: true, isDefinition: true)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 480, elements: !4535)
!4535 = !{!4536}
!4536 = !DISubrange(count: 60)
!4537 = !DIGlobalVariableExpression(var: !4538, expr: !DIExpression())
!4538 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !4539, isLocal: true, isDefinition: true)
!4539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 832, elements: !4540)
!4540 = !{!4541}
!4541 = !DISubrange(count: 104)
!4542 = !DIGlobalVariableExpression(var: !4543, expr: !DIExpression())
!4543 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !4544, isLocal: true, isDefinition: true)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 192, elements: !4545)
!4545 = !{!4546}
!4546 = !DISubrange(count: 24)
!4547 = !DIGlobalVariableExpression(var: !4548, expr: !DIExpression())
!4548 = distinct !DIGlobalVariable(name: "_ioctls", scope: !4549, file: !3, line: 568, type: !4563, isLocal: true, isDefinition: true)
!4549 = distinct !DISubprogram(name: "lookup_dev_ioctl", scope: !3, file: !3, line: 566, type: !4550, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4556)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!4552, !7}
!4552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioctl_fn", file: !3, line: 28, baseType: !4553)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!85, !1286, !4072, !3991}
!4556 = !{!4557, !4558, !4559, !4561, !4562}
!4557 = !DILocalVariable(name: "cmd", arg: 1, scope: !4549, file: !3, line: 566, type: !7)
!4558 = !DILocalVariable(name: "idx", scope: !4549, file: !3, line: 584, type: !7)
!4559 = !DILocalVariable(name: "_i", scope: !4560, file: !3, line: 588, type: !7)
!4560 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 588, column: 8)
!4561 = !DILocalVariable(name: "_s", scope: !4560, file: !3, line: 588, type: !295)
!4562 = !DILocalVariable(name: "_mask", scope: !4560, file: !3, line: 588, type: !295)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4564, size: 896, elements: !4565)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4565 = !{!4566}
!4566 = !DISubrange(count: 14)
!4567 = !DIGlobalVariableExpression(var: !4568, expr: !DIExpression())
!4568 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !4569, isLocal: true, isDefinition: true)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 464, elements: !4570)
!4570 = !{!4571}
!4571 = !DISubrange(count: 58)
!4572 = !DIGlobalVariableExpression(var: !4573, expr: !DIExpression())
!4573 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !4574, isLocal: true, isDefinition: true)
!4574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 216, elements: !4575)
!4575 = !{!4576}
!4576 = !DISubrange(count: 27)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !408)
!4578 = !{i32 7, !"Dwarf Version", i32 5}
!4579 = !{i32 2, !"Debug Info Version", i32 3}
!4580 = !{i32 1, !"wchar_size", i32 2}
!4581 = !{i32 8, !"cf-protection-branch", i32 1}
!4582 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4583 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4584 = !{i32 1, !"Code Model", i32 2}
!4585 = !{i32 1, !"override-stack-alignment", i32 8}
!4586 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4587 = distinct !DISubprogram(name: "autofs_dev_ioctl_init", scope: !3, file: !3, line: 725, type: !3775, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4588)
!4588 = !{!4589}
!4589 = !DILocalVariable(name: "r", scope: !4587, file: !3, line: 727, type: !85)
!4590 = !DILocation(line: 727, column: 2, scope: !4587)
!4591 = !DILocation(line: 727, column: 6, scope: !4587)
!4592 = !DILocation(line: 729, column: 6, scope: !4587)
!4593 = !DILocation(line: 729, column: 4, scope: !4587)
!4594 = !DILocation(line: 730, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 730, column: 6)
!4596 = !DILocation(line: 730, column: 6, scope: !4587)
!4597 = !DILocation(line: 731, column: 3, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 731, column: 3)
!4599 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 730, column: 9)
!4600 = !DILocation(line: 731, column: 3, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 731, column: 3)
!4602 = !DILocation(line: 732, column: 10, scope: !4599)
!4603 = !DILocation(line: 732, column: 3, scope: !4599)
!4604 = !DILocation(line: 735, column: 2, scope: !4587)
!4605 = !DILocation(line: 736, column: 1, scope: !4587)
!4606 = !DISubprogram(name: "misc_register", scope: !4139, file: !4139, line: 91, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!85, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4610 = !DISubprogram(name: "_printk", scope: !4611, file: !4611, line: 153, type: !4612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4611 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!85, !164, null}
!4614 = distinct !DISubprogram(name: "get_current", scope: !4615, file: !4615, line: 39, type: !4616, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4618)
!4615 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!955}
!4618 = !{!4619, !4621, !4623}
!4619 = !DILocalVariable(name: "pscr_ret__", scope: !4620, file: !4615, line: 41, type: !955)
!4620 = distinct !DILexicalBlock(scope: !4614, file: !4615, line: 41, column: 9)
!4621 = !DILocalVariable(name: "__vpp_verify", scope: !4622, file: !4615, line: 41, type: !1931)
!4622 = distinct !DILexicalBlock(scope: !4620, file: !4615, line: 41, column: 9)
!4623 = !DILocalVariable(name: "pfo_val__", scope: !4624, file: !4615, line: 41, type: !399)
!4624 = distinct !DILexicalBlock(scope: !4620, file: !4615, line: 41, column: 9)
!4625 = !DILocation(line: 41, column: 9, scope: !4620)
!4626 = !DILocation(line: 41, column: 9, scope: !4622)
!4627 = !DILocation(line: 41, column: 9, scope: !4624)
!4628 = !{i64 2148548768}
!4629 = !DILocation(line: 41, column: 9, scope: !4614)
!4630 = !DILocation(line: 41, column: 2, scope: !4614)
!4631 = distinct !DISubprogram(name: "autofs_dev_ioctl_exit", scope: !3, file: !3, line: 738, type: !2354, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4632 = !DILocation(line: 740, column: 2, scope: !4631)
!4633 = !DILocation(line: 741, column: 1, scope: !4631)
!4634 = !DISubprogram(name: "misc_deregister", scope: !4139, file: !4139, line: 92, type: !4635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !4609}
!4637 = distinct !DISubprogram(name: "autofs_dev_ioctl", scope: !3, file: !3, line: 688, type: !1693, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4638)
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DILocalVariable(name: "file", arg: 1, scope: !4637, file: !3, line: 688, type: !1286)
!4640 = !DILocalVariable(name: "command", arg: 2, scope: !4637, file: !3, line: 688, type: !7)
!4641 = !DILocalVariable(name: "u", arg: 3, scope: !4637, file: !3, line: 689, type: !295)
!4642 = !DILocalVariable(name: "err", scope: !4637, file: !3, line: 691, type: !85)
!4643 = !DILocation(line: 688, column: 43, scope: !4637)
!4644 = !DILocation(line: 688, column: 62, scope: !4637)
!4645 = !DILocation(line: 689, column: 23, scope: !4637)
!4646 = !DILocation(line: 691, column: 2, scope: !4637)
!4647 = !DILocation(line: 691, column: 6, scope: !4637)
!4648 = !DILocation(line: 693, column: 26, scope: !4637)
!4649 = !DILocation(line: 693, column: 70, scope: !4637)
!4650 = !DILocation(line: 693, column: 35, scope: !4637)
!4651 = !DILocation(line: 693, column: 8, scope: !4637)
!4652 = !DILocation(line: 693, column: 6, scope: !4637)
!4653 = !DILocation(line: 694, column: 16, scope: !4637)
!4654 = !DILocation(line: 694, column: 9, scope: !4637)
!4655 = !DILocation(line: 695, column: 1, scope: !4637)
!4656 = !DILocation(line: 694, column: 2, scope: !4637)
!4657 = distinct !DISubprogram(name: "autofs_dev_ioctl_compat", scope: !3, file: !3, line: 698, type: !1693, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4658)
!4658 = !{!4659, !4660, !4661}
!4659 = !DILocalVariable(name: "file", arg: 1, scope: !4657, file: !3, line: 698, type: !1286)
!4660 = !DILocalVariable(name: "command", arg: 2, scope: !4657, file: !3, line: 698, type: !7)
!4661 = !DILocalVariable(name: "u", arg: 3, scope: !4657, file: !3, line: 699, type: !295)
!4662 = !DILocation(line: 698, column: 50, scope: !4657)
!4663 = !DILocation(line: 698, column: 69, scope: !4657)
!4664 = !DILocation(line: 699, column: 23, scope: !4657)
!4665 = !DILocation(line: 701, column: 26, scope: !4657)
!4666 = !DILocation(line: 701, column: 32, scope: !4657)
!4667 = !DILocation(line: 701, column: 68, scope: !4657)
!4668 = !DILocation(line: 701, column: 57, scope: !4657)
!4669 = !DILocation(line: 701, column: 41, scope: !4657)
!4670 = !DILocation(line: 701, column: 9, scope: !4657)
!4671 = !DILocation(line: 701, column: 2, scope: !4657)
!4672 = distinct !DISubprogram(name: "_autofs_dev_ioctl", scope: !3, file: !3, line: 593, type: !4673, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!85, !7, !3991}
!4675 = !{!4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4688, !4689}
!4676 = !DILocalVariable(name: "command", arg: 1, scope: !4672, file: !3, line: 593, type: !7)
!4677 = !DILocalVariable(name: "user", arg: 2, scope: !4672, file: !3, line: 594, type: !3991)
!4678 = !DILocalVariable(name: "param", scope: !4672, file: !3, line: 596, type: !3991)
!4679 = !DILocalVariable(name: "fp", scope: !4672, file: !3, line: 597, type: !1286)
!4680 = !DILocalVariable(name: "sbi", scope: !4672, file: !3, line: 598, type: !4072)
!4681 = !DILocalVariable(name: "cmd_first", scope: !4672, file: !3, line: 599, type: !7)
!4682 = !DILocalVariable(name: "cmd", scope: !4672, file: !3, line: 599, type: !7)
!4683 = !DILocalVariable(name: "fn", scope: !4672, file: !3, line: 600, type: !4552)
!4684 = !DILocalVariable(name: "err", scope: !4672, file: !3, line: 601, type: !85)
!4685 = !DILocalVariable(name: "sb", scope: !4686, file: !3, line: 647, type: !477)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 646, column: 46)
!4687 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 644, column: 6)
!4688 = !DILabel(scope: !4672, name: "cont", file: !3, line: 676)
!4689 = !DILabel(scope: !4672, name: "out", file: !3, line: 683)
!4690 = !DILocation(line: 593, column: 43, scope: !4672)
!4691 = !DILocation(line: 594, column: 41, scope: !4672)
!4692 = !DILocation(line: 596, column: 2, scope: !4672)
!4693 = !DILocation(line: 596, column: 27, scope: !4672)
!4694 = !DILocation(line: 597, column: 2, scope: !4672)
!4695 = !DILocation(line: 597, column: 15, scope: !4672)
!4696 = !DILocation(line: 598, column: 2, scope: !4672)
!4697 = !DILocation(line: 598, column: 25, scope: !4672)
!4698 = !DILocation(line: 599, column: 2, scope: !4672)
!4699 = !DILocation(line: 599, column: 15, scope: !4672)
!4700 = !DILocation(line: 599, column: 26, scope: !4672)
!4701 = !DILocation(line: 600, column: 2, scope: !4672)
!4702 = !DILocation(line: 600, column: 11, scope: !4672)
!4703 = !DILocation(line: 601, column: 2, scope: !4672)
!4704 = !DILocation(line: 601, column: 6, scope: !4672)
!4705 = !DILocation(line: 603, column: 12, scope: !4672)
!4706 = !DILocation(line: 604, column: 8, scope: !4672)
!4707 = !DILocation(line: 604, column: 6, scope: !4672)
!4708 = !DILocation(line: 606, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 606, column: 6)
!4710 = !DILocation(line: 606, column: 25, scope: !4709)
!4711 = !DILocation(line: 606, column: 66, scope: !4709)
!4712 = !DILocation(line: 607, column: 6, scope: !4709)
!4713 = !DILocation(line: 607, column: 12, scope: !4709)
!4714 = !DILocation(line: 607, column: 10, scope: !4709)
!4715 = !DILocation(line: 607, column: 22, scope: !4709)
!4716 = !DILocation(line: 606, column: 6, scope: !4672)
!4717 = !DILocation(line: 608, column: 3, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 607, column: 52)
!4719 = !DILocation(line: 614, column: 6, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 614, column: 6)
!4721 = !DILocation(line: 614, column: 10, scope: !4720)
!4722 = !DILocation(line: 614, column: 42, scope: !4720)
!4723 = !DILocation(line: 615, column: 6, scope: !4720)
!4724 = !DILocation(line: 615, column: 10, scope: !4720)
!4725 = !DILocation(line: 615, column: 47, scope: !4720)
!4726 = !DILocation(line: 616, column: 7, scope: !4720)
!4727 = !DILocation(line: 614, column: 6, scope: !4672)
!4728 = !DILocation(line: 617, column: 3, scope: !4720)
!4729 = !DILocation(line: 620, column: 25, scope: !4672)
!4730 = !DILocation(line: 620, column: 10, scope: !4672)
!4731 = !DILocation(line: 620, column: 8, scope: !4672)
!4732 = !DILocation(line: 621, column: 13, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 621, column: 6)
!4734 = !DILocation(line: 621, column: 6, scope: !4733)
!4735 = !DILocation(line: 621, column: 6, scope: !4672)
!4736 = !DILocation(line: 622, column: 18, scope: !4733)
!4737 = !DILocation(line: 622, column: 10, scope: !4733)
!4738 = !DILocation(line: 622, column: 3, scope: !4733)
!4739 = !DILocation(line: 624, column: 27, scope: !4672)
!4740 = !DILocation(line: 624, column: 36, scope: !4672)
!4741 = !DILocation(line: 624, column: 8, scope: !4672)
!4742 = !DILocation(line: 624, column: 6, scope: !4672)
!4743 = !DILocation(line: 625, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 625, column: 6)
!4745 = !DILocation(line: 625, column: 6, scope: !4672)
!4746 = !DILocation(line: 626, column: 3, scope: !4744)
!4747 = !DILocation(line: 628, column: 24, scope: !4672)
!4748 = !DILocation(line: 628, column: 7, scope: !4672)
!4749 = !DILocation(line: 628, column: 5, scope: !4672)
!4750 = !DILocation(line: 629, column: 7, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 629, column: 6)
!4752 = !DILocation(line: 629, column: 6, scope: !4672)
!4753 = !DILocation(line: 630, column: 3, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 630, column: 3)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 629, column: 11)
!4756 = !DILocation(line: 630, column: 3, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 630, column: 3)
!4758 = !DILocation(line: 631, column: 7, scope: !4755)
!4759 = !DILocation(line: 632, column: 3, scope: !4755)
!4760 = !DILocation(line: 635, column: 5, scope: !4672)
!4761 = !DILocation(line: 636, column: 6, scope: !4672)
!4762 = !DILocation(line: 644, column: 6, scope: !4687)
!4763 = !DILocation(line: 644, column: 10, scope: !4687)
!4764 = !DILocation(line: 644, column: 42, scope: !4687)
!4765 = !DILocation(line: 645, column: 6, scope: !4687)
!4766 = !DILocation(line: 645, column: 10, scope: !4687)
!4767 = !DILocation(line: 645, column: 44, scope: !4687)
!4768 = !DILocation(line: 646, column: 6, scope: !4687)
!4769 = !DILocation(line: 646, column: 10, scope: !4687)
!4770 = !DILocation(line: 644, column: 6, scope: !4672)
!4771 = !DILocation(line: 647, column: 3, scope: !4686)
!4772 = !DILocation(line: 647, column: 23, scope: !4686)
!4773 = !DILocation(line: 649, column: 13, scope: !4686)
!4774 = !DILocation(line: 649, column: 20, scope: !4686)
!4775 = !DILocation(line: 649, column: 8, scope: !4686)
!4776 = !DILocation(line: 649, column: 6, scope: !4686)
!4777 = !DILocation(line: 650, column: 8, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 650, column: 7)
!4779 = !DILocation(line: 650, column: 7, scope: !4686)
!4780 = !DILocation(line: 651, column: 8, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 651, column: 8)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 650, column: 12)
!4783 = !DILocation(line: 651, column: 12, scope: !4781)
!4784 = !DILocation(line: 651, column: 8, scope: !4782)
!4785 = !DILocation(line: 652, column: 5, scope: !4781)
!4786 = !DILocation(line: 653, column: 8, scope: !4782)
!4787 = !DILocation(line: 654, column: 4, scope: !4782)
!4788 = !DILocation(line: 657, column: 19, scope: !4686)
!4789 = !DILocation(line: 657, column: 8, scope: !4686)
!4790 = !DILocation(line: 657, column: 24, scope: !4686)
!4791 = !DILocation(line: 657, column: 6, scope: !4686)
!4792 = !DILocation(line: 658, column: 7, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 658, column: 7)
!4794 = !DILocation(line: 658, column: 11, scope: !4793)
!4795 = !DILocation(line: 658, column: 18, scope: !4793)
!4796 = !DILocation(line: 658, column: 7, scope: !4686)
!4797 = !DILocation(line: 659, column: 8, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 658, column: 38)
!4799 = !DILocation(line: 660, column: 9, scope: !4798)
!4800 = !DILocation(line: 660, column: 4, scope: !4798)
!4801 = !DILocation(line: 661, column: 4, scope: !4798)
!4802 = !DILocation(line: 663, column: 20, scope: !4686)
!4803 = !DILocation(line: 663, column: 9, scope: !4686)
!4804 = !DILocation(line: 663, column: 7, scope: !4686)
!4805 = !DILocation(line: 669, column: 23, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 669, column: 7)
!4807 = !DILocation(line: 669, column: 8, scope: !4806)
!4808 = !DILocation(line: 669, column: 28, scope: !4806)
!4809 = !DILocation(line: 670, column: 7, scope: !4806)
!4810 = !DILocation(line: 670, column: 11, scope: !4806)
!4811 = !DILocation(line: 669, column: 7, scope: !4686)
!4812 = !DILocation(line: 671, column: 8, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 670, column: 46)
!4814 = !DILocation(line: 672, column: 9, scope: !4813)
!4815 = !DILocation(line: 672, column: 4, scope: !4813)
!4816 = !DILocation(line: 673, column: 4, scope: !4813)
!4817 = !DILocation(line: 675, column: 2, scope: !4687)
!4818 = !DILocation(line: 675, column: 2, scope: !4686)
!4819 = !DILocation(line: 646, column: 13, scope: !4687)
!4820 = !DILocation(line: 676, column: 1, scope: !4672)
!4821 = !DILocation(line: 677, column: 8, scope: !4672)
!4822 = !DILocation(line: 677, column: 11, scope: !4672)
!4823 = !DILocation(line: 677, column: 15, scope: !4672)
!4824 = !DILocation(line: 677, column: 20, scope: !4672)
!4825 = !DILocation(line: 677, column: 6, scope: !4672)
!4826 = !DILocation(line: 679, column: 6, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 679, column: 6)
!4828 = !DILocation(line: 679, column: 6, scope: !4672)
!4829 = !DILocation(line: 680, column: 8, scope: !4827)
!4830 = !DILocation(line: 680, column: 3, scope: !4827)
!4831 = !DILocation(line: 681, column: 6, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 681, column: 6)
!4833 = !DILocation(line: 681, column: 10, scope: !4832)
!4834 = !DILocation(line: 681, column: 15, scope: !4832)
!4835 = !DILocation(line: 681, column: 31, scope: !4832)
!4836 = !DILocation(line: 681, column: 37, scope: !4832)
!4837 = !DILocation(line: 681, column: 18, scope: !4832)
!4838 = !DILocation(line: 681, column: 6, scope: !4672)
!4839 = !DILocation(line: 682, column: 7, scope: !4832)
!4840 = !DILocation(line: 682, column: 3, scope: !4832)
!4841 = !DILocation(line: 681, column: 65, scope: !4832)
!4842 = !DILocation(line: 683, column: 1, scope: !4672)
!4843 = !DILocation(line: 684, column: 17, scope: !4672)
!4844 = !DILocation(line: 684, column: 2, scope: !4672)
!4845 = !DILocation(line: 685, column: 9, scope: !4672)
!4846 = !DILocation(line: 685, column: 2, scope: !4672)
!4847 = !DILocation(line: 686, column: 1, scope: !4672)
!4848 = !DISubprogram(name: "capable", scope: !1372, file: !1372, line: 148, type: !4849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!1447, !85}
!4851 = distinct !DISubprogram(name: "copy_dev_ioctl", scope: !3, file: !3, line: 82, type: !4852, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!3991, !3991}
!4854 = !{!4855, !4856, !4857}
!4855 = !DILocalVariable(name: "in", arg: 1, scope: !4851, file: !3, line: 82, type: !3991)
!4856 = !DILocalVariable(name: "tmp", scope: !4851, file: !3, line: 84, type: !3992)
!4857 = !DILocalVariable(name: "res", scope: !4851, file: !3, line: 84, type: !3991)
!4858 = !DILocation(line: 82, column: 48, scope: !4851)
!4859 = !DILocation(line: 84, column: 2, scope: !4851)
!4860 = !DILocation(line: 84, column: 26, scope: !4851)
!4861 = !DILocation(line: 84, column: 32, scope: !4851)
!4862 = !DILocation(line: 86, column: 27, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 86, column: 6)
!4864 = !DILocation(line: 86, column: 6, scope: !4863)
!4865 = !DILocation(line: 86, column: 6, scope: !4851)
!4866 = !DILocation(line: 87, column: 10, scope: !4863)
!4867 = !DILocation(line: 87, column: 3, scope: !4863)
!4868 = !DILocation(line: 89, column: 10, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 89, column: 6)
!4870 = !DILocation(line: 89, column: 6, scope: !4869)
!4871 = !DILocation(line: 89, column: 15, scope: !4869)
!4872 = !DILocation(line: 89, column: 6, scope: !4851)
!4873 = !DILocation(line: 90, column: 10, scope: !4869)
!4874 = !DILocation(line: 90, column: 3, scope: !4869)
!4875 = !DILocation(line: 92, column: 10, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 92, column: 6)
!4877 = !DILocation(line: 92, column: 6, scope: !4876)
!4878 = !DILocation(line: 92, column: 15, scope: !4876)
!4879 = !DILocation(line: 92, column: 6, scope: !4851)
!4880 = !DILocation(line: 93, column: 10, scope: !4876)
!4881 = !DILocation(line: 93, column: 3, scope: !4876)
!4882 = !DILocation(line: 95, column: 20, scope: !4851)
!4883 = !DILocation(line: 95, column: 28, scope: !4851)
!4884 = !DILocation(line: 95, column: 24, scope: !4851)
!4885 = !DILocation(line: 95, column: 8, scope: !4851)
!4886 = !DILocation(line: 95, column: 6, scope: !4851)
!4887 = !DILocation(line: 96, column: 14, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 96, column: 6)
!4889 = !DILocation(line: 96, column: 7, scope: !4888)
!4890 = !DILocation(line: 96, column: 6, scope: !4851)
!4891 = !DILocation(line: 97, column: 19, scope: !4888)
!4892 = !DILocation(line: 97, column: 3, scope: !4888)
!4893 = !DILocation(line: 97, column: 8, scope: !4888)
!4894 = !DILocation(line: 97, column: 13, scope: !4888)
!4895 = !DILocation(line: 99, column: 9, scope: !4851)
!4896 = !DILocation(line: 99, column: 2, scope: !4851)
!4897 = !DILocation(line: 100, column: 1, scope: !4851)
!4898 = distinct !DISubprogram(name: "IS_ERR", scope: !4899, file: !4899, line: 59, type: !4900, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4899 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!1447, !1931}
!4902 = !{!4903}
!4903 = !DILocalVariable(name: "ptr", arg: 1, scope: !4898, file: !4899, line: 59, type: !1931)
!4904 = !DILocation(line: 59, column: 60, scope: !4898)
!4905 = !DILocation(line: 61, column: 9, scope: !4898)
!4906 = !DILocation(line: 61, column: 2, scope: !4898)
!4907 = distinct !DISubprogram(name: "PTR_ERR", scope: !4899, file: !4899, line: 49, type: !4908, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4910)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!281, !1931}
!4910 = !{!4911}
!4911 = !DILocalVariable(name: "ptr", arg: 1, scope: !4907, file: !4899, line: 49, type: !1931)
!4912 = !DILocation(line: 49, column: 61, scope: !4907)
!4913 = !DILocation(line: 51, column: 16, scope: !4907)
!4914 = !DILocation(line: 51, column: 9, scope: !4907)
!4915 = !DILocation(line: 51, column: 2, scope: !4907)
!4916 = distinct !DISubprogram(name: "validate_dev_ioctl", scope: !3, file: !3, line: 111, type: !4917, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!85, !85, !3991}
!4919 = !{!4920, !4921, !4922, !4923, !4926}
!4920 = !DILocalVariable(name: "cmd", arg: 1, scope: !4916, file: !3, line: 111, type: !85)
!4921 = !DILocalVariable(name: "param", arg: 2, scope: !4916, file: !3, line: 111, type: !3991)
!4922 = !DILocalVariable(name: "err", scope: !4916, file: !3, line: 113, type: !85)
!4923 = !DILocalVariable(name: "inr", scope: !4924, file: !3, line: 138, type: !7)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 137, column: 9)
!4925 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 122, column: 6)
!4926 = !DILabel(scope: !4916, name: "out", file: !3, line: 149)
!4927 = !DILocation(line: 111, column: 35, scope: !4916)
!4928 = !DILocation(line: 111, column: 65, scope: !4916)
!4929 = !DILocation(line: 113, column: 2, scope: !4916)
!4930 = !DILocation(line: 113, column: 6, scope: !4916)
!4931 = !DILocation(line: 115, column: 32, scope: !4916)
!4932 = !DILocation(line: 115, column: 37, scope: !4916)
!4933 = !DILocation(line: 115, column: 8, scope: !4916)
!4934 = !DILocation(line: 115, column: 6, scope: !4916)
!4935 = !DILocation(line: 116, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 116, column: 6)
!4937 = !DILocation(line: 116, column: 6, scope: !4916)
!4938 = !DILocation(line: 117, column: 3, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 117, column: 3)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 116, column: 11)
!4941 = !DILocation(line: 117, column: 3, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 117, column: 3)
!4943 = !DILocation(line: 119, column: 3, scope: !4940)
!4944 = !DILocation(line: 122, column: 6, scope: !4925)
!4945 = !DILocation(line: 122, column: 13, scope: !4925)
!4946 = !DILocation(line: 122, column: 18, scope: !4925)
!4947 = !DILocation(line: 122, column: 6, scope: !4916)
!4948 = !DILocation(line: 123, column: 21, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 122, column: 43)
!4950 = !DILocation(line: 123, column: 28, scope: !4949)
!4951 = !DILocation(line: 123, column: 34, scope: !4949)
!4952 = !DILocation(line: 123, column: 41, scope: !4949)
!4953 = !DILocation(line: 123, column: 46, scope: !4949)
!4954 = !DILocation(line: 123, column: 9, scope: !4949)
!4955 = !DILocation(line: 123, column: 7, scope: !4949)
!4956 = !DILocation(line: 124, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 124, column: 7)
!4958 = !DILocation(line: 124, column: 7, scope: !4949)
!4959 = !DILocation(line: 125, column: 4, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 125, column: 4)
!4961 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 124, column: 12)
!4962 = !DILocation(line: 125, column: 4, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 125, column: 4)
!4964 = !DILocation(line: 128, column: 4, scope: !4961)
!4965 = !DILocation(line: 131, column: 20, scope: !4949)
!4966 = !DILocation(line: 131, column: 27, scope: !4949)
!4967 = !DILocation(line: 131, column: 9, scope: !4949)
!4968 = !DILocation(line: 131, column: 7, scope: !4949)
!4969 = !DILocation(line: 132, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 132, column: 7)
!4971 = !DILocation(line: 132, column: 7, scope: !4949)
!4972 = !DILocation(line: 133, column: 4, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 133, column: 4)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 132, column: 12)
!4975 = !DILocation(line: 133, column: 4, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 133, column: 4)
!4977 = !DILocation(line: 135, column: 4, scope: !4974)
!4978 = !DILocation(line: 137, column: 2, scope: !4949)
!4979 = !DILocation(line: 138, column: 3, scope: !4924)
!4980 = !DILocation(line: 138, column: 16, scope: !4924)
!4981 = !DILocation(line: 138, column: 22, scope: !4924)
!4982 = !DILocation(line: 140, column: 7, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 140, column: 7)
!4984 = !DILocation(line: 140, column: 11, scope: !4983)
!4985 = !DILocation(line: 140, column: 45, scope: !4983)
!4986 = !DILocation(line: 141, column: 7, scope: !4983)
!4987 = !DILocation(line: 141, column: 11, scope: !4983)
!4988 = !DILocation(line: 141, column: 45, scope: !4983)
!4989 = !DILocation(line: 142, column: 7, scope: !4983)
!4990 = !DILocation(line: 142, column: 11, scope: !4983)
!4991 = !DILocation(line: 140, column: 7, scope: !4924)
!4992 = !DILocation(line: 143, column: 8, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 142, column: 49)
!4994 = !DILocation(line: 144, column: 4, scope: !4993)
!4995 = !DILocation(line: 146, column: 2, scope: !4925)
!4996 = !DILocation(line: 148, column: 6, scope: !4916)
!4997 = !DILocation(line: 148, column: 2, scope: !4916)
!4998 = !DILocation(line: 149, column: 1, scope: !4916)
!4999 = !DILocation(line: 150, column: 9, scope: !4916)
!5000 = !DILocation(line: 150, column: 2, scope: !4916)
!5001 = !DILocation(line: 151, column: 1, scope: !4916)
!5002 = !DILocation(line: 566, column: 47, scope: !4549)
!5003 = !DILocation(line: 584, column: 2, scope: !4549)
!5004 = !DILocation(line: 584, column: 15, scope: !4549)
!5005 = !DILocation(line: 584, column: 21, scope: !4549)
!5006 = !DILocation(line: 586, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 586, column: 6)
!5008 = !DILocation(line: 586, column: 10, scope: !5007)
!5009 = !DILocation(line: 586, column: 6, scope: !4549)
!5010 = !DILocation(line: 587, column: 3, scope: !5007)
!5011 = !DILocation(line: 588, column: 8, scope: !4560)
!5012 = !DILocation(line: 588, column: 8, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 588, column: 8)
!5014 = !DILocation(line: 588, column: 8, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 588, column: 8)
!5016 = !DILocation(line: 588, column: 8, scope: !4549)
!5017 = !DILocation(line: 588, column: 6, scope: !4549)
!5018 = !DILocation(line: 589, column: 17, scope: !4549)
!5019 = !DILocation(line: 589, column: 9, scope: !4549)
!5020 = !DILocation(line: 589, column: 2, scope: !4549)
!5021 = !DILocation(line: 590, column: 1, scope: !4549)
!5022 = !DISubprogram(name: "fget", scope: !5023, file: !5023, line: 49, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!1286, !7}
!5026 = distinct !DISubprogram(name: "file_inode", scope: !14, file: !14, line: 1073, type: !5027, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5031)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!326, !5029}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!5031 = !{!5032}
!5032 = !DILocalVariable(name: "f", arg: 1, scope: !5026, file: !14, line: 1073, type: !5029)
!5033 = !DILocation(line: 1073, column: 59, scope: !5026)
!5034 = !DILocation(line: 1075, column: 9, scope: !5026)
!5035 = !DILocation(line: 1075, column: 12, scope: !5026)
!5036 = !DILocation(line: 1075, column: 2, scope: !5026)
!5037 = !DISubprogram(name: "fput", scope: !5023, file: !5023, line: 17, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5038 = distinct !DISubprogram(name: "autofs_sbi", scope: !4064, file: !4064, line: 129, type: !5039, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5041)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!4072, !477}
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "sb", arg: 1, scope: !5038, file: !4064, line: 129, type: !477)
!5043 = !DILocation(line: 129, column: 69, scope: !5038)
!5044 = !DILocation(line: 131, column: 35, scope: !5038)
!5045 = !DILocation(line: 131, column: 39, scope: !5038)
!5046 = !DILocation(line: 131, column: 2, scope: !5038)
!5047 = distinct !DISubprogram(name: "autofs_oz_mode", scope: !4064, file: !4064, line: 143, type: !5048, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5050)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!85, !4072}
!5050 = !{!5051}
!5051 = !DILocalVariable(name: "sbi", arg: 1, scope: !5047, file: !4064, line: 143, type: !4072)
!5052 = !DILocation(line: 143, column: 57, scope: !5047)
!5053 = !DILocation(line: 145, column: 11, scope: !5047)
!5054 = !DILocation(line: 145, column: 16, scope: !5047)
!5055 = !DILocation(line: 145, column: 22, scope: !5047)
!5056 = !DILocation(line: 145, column: 46, scope: !5047)
!5057 = !DILocation(line: 146, column: 14, scope: !5047)
!5058 = !DILocation(line: 146, column: 4, scope: !5047)
!5059 = !DILocation(line: 146, column: 26, scope: !5047)
!5060 = !DILocation(line: 146, column: 31, scope: !5047)
!5061 = !DILocation(line: 146, column: 23, scope: !5047)
!5062 = !DILocation(line: 145, column: 2, scope: !5047)
!5063 = distinct !DISubprogram(name: "copy_to_user", scope: !5064, file: !5064, line: 188, type: !5065, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5067)
!5064 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!295, !317, !1931, !295}
!5067 = !{!5068, !5069, !5070}
!5068 = !DILocalVariable(name: "to", arg: 1, scope: !5063, file: !5064, line: 188, type: !317)
!5069 = !DILocalVariable(name: "from", arg: 2, scope: !5063, file: !5064, line: 188, type: !1931)
!5070 = !DILocalVariable(name: "n", arg: 3, scope: !5063, file: !5064, line: 188, type: !295)
!5071 = !DILocation(line: 188, column: 27, scope: !5063)
!5072 = !DILocation(line: 188, column: 43, scope: !5063)
!5073 = !DILocation(line: 188, column: 63, scope: !5063)
!5074 = !DILocation(line: 190, column: 22, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5063, file: !5064, line: 190, column: 6)
!5076 = !DILocation(line: 190, column: 28, scope: !5075)
!5077 = !DILocation(line: 190, column: 6, scope: !5075)
!5078 = !DILocation(line: 190, column: 6, scope: !5063)
!5079 = !DILocation(line: 191, column: 21, scope: !5075)
!5080 = !DILocation(line: 191, column: 25, scope: !5075)
!5081 = !DILocation(line: 191, column: 31, scope: !5075)
!5082 = !DILocation(line: 191, column: 7, scope: !5075)
!5083 = !DILocation(line: 191, column: 5, scope: !5075)
!5084 = !DILocation(line: 191, column: 3, scope: !5075)
!5085 = !DILocation(line: 192, column: 9, scope: !5063)
!5086 = !DILocation(line: 192, column: 2, scope: !5063)
!5087 = distinct !DISubprogram(name: "free_dev_ioctl", scope: !3, file: !3, line: 102, type: !5088, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{null, !3991}
!5090 = !{!5091}
!5091 = !DILocalVariable(name: "param", arg: 1, scope: !5087, file: !3, line: 102, type: !3991)
!5092 = !DILocation(line: 102, column: 60, scope: !5087)
!5093 = !DILocation(line: 104, column: 8, scope: !5087)
!5094 = !DILocation(line: 104, column: 2, scope: !5087)
!5095 = !DILocation(line: 105, column: 1, scope: !5087)
!5096 = distinct !DISubprogram(name: "copy_from_user", scope: !5064, file: !5064, line: 180, type: !5065, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5097 = !{!5098, !5099, !5100}
!5098 = !DILocalVariable(name: "to", arg: 1, scope: !5096, file: !5064, line: 180, type: !317)
!5099 = !DILocalVariable(name: "from", arg: 2, scope: !5096, file: !5064, line: 180, type: !1931)
!5100 = !DILocalVariable(name: "n", arg: 3, scope: !5096, file: !5064, line: 180, type: !295)
!5101 = !DILocation(line: 180, column: 22, scope: !5096)
!5102 = !DILocation(line: 180, column: 45, scope: !5096)
!5103 = !DILocation(line: 180, column: 65, scope: !5096)
!5104 = !DILocation(line: 182, column: 22, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5096, file: !5064, line: 182, column: 6)
!5106 = !DILocation(line: 182, column: 26, scope: !5105)
!5107 = !DILocation(line: 182, column: 6, scope: !5105)
!5108 = !DILocation(line: 182, column: 6, scope: !5096)
!5109 = !DILocation(line: 183, column: 23, scope: !5105)
!5110 = !DILocation(line: 183, column: 27, scope: !5105)
!5111 = !DILocation(line: 183, column: 33, scope: !5105)
!5112 = !DILocation(line: 183, column: 7, scope: !5105)
!5113 = !DILocation(line: 183, column: 5, scope: !5105)
!5114 = !DILocation(line: 183, column: 3, scope: !5105)
!5115 = !DILocation(line: 184, column: 9, scope: !5096)
!5116 = !DILocation(line: 184, column: 2, scope: !5096)
!5117 = distinct !DISubprogram(name: "ERR_PTR", scope: !4899, file: !4899, line: 39, type: !5118, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5120)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!317, !281}
!5120 = !{!5121}
!5121 = !DILocalVariable(name: "error", arg: 1, scope: !5117, file: !4899, line: 39, type: !281)
!5122 = !DILocation(line: 39, column: 48, scope: !5117)
!5123 = !DILocation(line: 41, column: 18, scope: !5117)
!5124 = !DILocation(line: 41, column: 9, scope: !5117)
!5125 = !DILocation(line: 41, column: 2, scope: !5117)
!5126 = !DISubprogram(name: "memdup_user", scope: !5127, file: !5127, line: 15, type: !5128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5127 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!317, !1931, !292}
!5130 = distinct !DISubprogram(name: "check_copy_size", scope: !4513, file: !4513, line: 237, type: !5131, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5133)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!1447, !1931, !292, !1447}
!5133 = !{!5134, !5135, !5136, !5137, !5138, !5141}
!5134 = !DILocalVariable(name: "addr", arg: 1, scope: !5130, file: !4513, line: 237, type: !1931)
!5135 = !DILocalVariable(name: "bytes", arg: 2, scope: !5130, file: !4513, line: 237, type: !292)
!5136 = !DILocalVariable(name: "is_source", arg: 3, scope: !5130, file: !4513, line: 237, type: !1447)
!5137 = !DILocalVariable(name: "sz", scope: !5130, file: !4513, line: 239, type: !85)
!5138 = !DILocalVariable(name: "__ret_warn_on", scope: !5139, file: !4513, line: 249, type: !85)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !4513, line: 249, column: 6)
!5140 = distinct !DILexicalBlock(scope: !5130, file: !4513, line: 249, column: 6)
!5141 = !DILocalVariable(name: "__flags", scope: !5142, file: !4513, line: 249, type: !85)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !4513, line: 249, column: 6)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !4513, line: 249, column: 6)
!5144 = !DILocation(line: 237, column: 29, scope: !5130)
!5145 = !DILocation(line: 237, column: 42, scope: !5130)
!5146 = !DILocation(line: 237, column: 54, scope: !5130)
!5147 = !DILocation(line: 239, column: 2, scope: !5130)
!5148 = !DILocation(line: 239, column: 6, scope: !5130)
!5149 = !DILocation(line: 239, column: 33, scope: !5130)
!5150 = !DILocation(line: 239, column: 11, scope: !5130)
!5151 = !DILocation(line: 240, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5130, file: !4513, line: 240, column: 6)
!5153 = !DILocation(line: 0, scope: !5152)
!5154 = !DILocation(line: 240, column: 6, scope: !5130)
!5155 = !DILocation(line: 241, column: 29, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !4513, line: 241, column: 7)
!5157 = distinct !DILexicalBlock(scope: !5152, file: !4513, line: 240, column: 39)
!5158 = !DILocation(line: 241, column: 8, scope: !5156)
!5159 = !DILocation(line: 241, column: 7, scope: !5157)
!5160 = !DILocation(line: 242, column: 18, scope: !5156)
!5161 = !DILocation(line: 242, column: 22, scope: !5156)
!5162 = !DILocation(line: 242, column: 4, scope: !5156)
!5163 = !DILocation(line: 243, column: 12, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5156, file: !4513, line: 243, column: 12)
!5165 = !{i8 0, i8 2}
!5166 = !DILocation(line: 243, column: 12, scope: !5156)
!5167 = !DILocation(line: 244, column: 4, scope: !5164)
!5168 = !{i32 2122947}
!5169 = !DILocation(line: 246, column: 4, scope: !5164)
!5170 = !{i32 2122976}
!5171 = !DILocation(line: 247, column: 3, scope: !5157)
!5172 = !DILocation(line: 249, column: 6, scope: !5139)
!5173 = !DILocation(line: 249, column: 6, scope: !5143)
!5174 = !DILocation(line: 249, column: 6, scope: !5142)
!5175 = !DILocation(line: 249, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5142, file: !4513, line: 249, column: 6)
!5177 = !DILocation(line: 249, column: 6, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5142, file: !4513, line: 249, column: 6)
!5179 = !{i64 2149623409, i64 2149623438, i64 2149623484, i64 2149623542, i64 2149623596, i64 2149623650, i64 2149623705, i64 2149623736, i64 2149624044, i64 2149624050, i64 2149624097, i64 2149624120, i64 2149624146}
!5180 = !DILocation(line: 249, column: 6, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5142, file: !4513, line: 249, column: 6)
!5182 = !DILocation(line: 249, column: 6, scope: !5140)
!5183 = !DILocation(line: 249, column: 6, scope: !5130)
!5184 = !DILocation(line: 250, column: 3, scope: !5140)
!5185 = !DILocation(line: 251, column: 20, scope: !5130)
!5186 = !DILocation(line: 251, column: 26, scope: !5130)
!5187 = !DILocation(line: 251, column: 33, scope: !5130)
!5188 = !DILocation(line: 251, column: 2, scope: !5130)
!5189 = !DILocation(line: 252, column: 2, scope: !5130)
!5190 = !DILocation(line: 253, column: 1, scope: !5130)
!5191 = !DISubprogram(name: "_copy_from_user", scope: !5064, file: !5064, line: 158, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = distinct !DISubprogram(name: "copy_overflow", scope: !4513, file: !4513, line: 230, type: !5193, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5195)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{null, !85, !295}
!5195 = !{!5196, !5197}
!5196 = !DILocalVariable(name: "size", arg: 1, scope: !5192, file: !4513, line: 230, type: !85)
!5197 = !DILocalVariable(name: "count", arg: 2, scope: !5192, file: !4513, line: 230, type: !295)
!5198 = !DILocation(line: 230, column: 38, scope: !5192)
!5199 = !DILocation(line: 230, column: 58, scope: !5192)
!5200 = !DILocation(line: 233, column: 19, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5192, file: !4513, line: 232, column: 6)
!5202 = !DILocation(line: 233, column: 25, scope: !5201)
!5203 = !DILocation(line: 233, column: 3, scope: !5201)
!5204 = !DILocation(line: 234, column: 1, scope: !5192)
!5205 = !DISubprogram(name: "__bad_copy_from", scope: !4513, file: !4513, line: 224, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5206 = !DISubprogram(name: "__bad_copy_to", scope: !4513, file: !4513, line: 226, type: !2354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5207 = distinct !DISubprogram(name: "check_object_size", scope: !4513, file: !4513, line: 218, type: !5208, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{null, !1931, !295, !1447}
!5210 = !{!5211, !5212, !5213}
!5211 = !DILocalVariable(name: "ptr", arg: 1, scope: !5207, file: !4513, line: 218, type: !1931)
!5212 = !DILocalVariable(name: "n", arg: 2, scope: !5207, file: !4513, line: 218, type: !295)
!5213 = !DILocalVariable(name: "to_user", arg: 3, scope: !5207, file: !4513, line: 219, type: !1447)
!5214 = !DILocation(line: 218, column: 50, scope: !5207)
!5215 = !DILocation(line: 218, column: 69, scope: !5207)
!5216 = !DILocation(line: 219, column: 15, scope: !5207)
!5217 = !DILocation(line: 220, column: 3, scope: !5207)
!5218 = !DISubprogram(name: "__copy_overflow", scope: !4513, file: !4513, line: 228, type: !5193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5219 = distinct !DISubprogram(name: "check_dev_ioctl_version", scope: !3, file: !3, line: 56, type: !4917, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5220 = !{!5221, !5222, !5223}
!5221 = !DILocalVariable(name: "cmd", arg: 1, scope: !5219, file: !3, line: 56, type: !85)
!5222 = !DILocalVariable(name: "param", arg: 2, scope: !5219, file: !3, line: 56, type: !3991)
!5223 = !DILocalVariable(name: "err", scope: !5219, file: !3, line: 58, type: !85)
!5224 = !DILocation(line: 56, column: 40, scope: !5219)
!5225 = !DILocation(line: 56, column: 70, scope: !5219)
!5226 = !DILocation(line: 58, column: 2, scope: !5219)
!5227 = !DILocation(line: 58, column: 6, scope: !5219)
!5228 = !DILocation(line: 60, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 60, column: 6)
!5230 = !DILocation(line: 60, column: 14, scope: !5229)
!5231 = !DILocation(line: 60, column: 24, scope: !5229)
!5232 = !DILocation(line: 60, column: 59, scope: !5229)
!5233 = !DILocation(line: 61, column: 7, scope: !5229)
!5234 = !DILocation(line: 61, column: 14, scope: !5229)
!5235 = !DILocation(line: 61, column: 24, scope: !5229)
!5236 = !DILocation(line: 60, column: 6, scope: !5219)
!5237 = !DILocation(line: 62, column: 3, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 62, column: 3)
!5239 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 61, column: 59)
!5240 = !DILocation(line: 62, column: 3, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 62, column: 3)
!5242 = !DILocation(line: 67, column: 7, scope: !5239)
!5243 = !DILocation(line: 68, column: 2, scope: !5239)
!5244 = !DILocation(line: 71, column: 2, scope: !5219)
!5245 = !DILocation(line: 71, column: 9, scope: !5219)
!5246 = !DILocation(line: 71, column: 19, scope: !5219)
!5247 = !DILocation(line: 72, column: 2, scope: !5219)
!5248 = !DILocation(line: 72, column: 9, scope: !5219)
!5249 = !DILocation(line: 72, column: 19, scope: !5219)
!5250 = !DILocation(line: 74, column: 9, scope: !5219)
!5251 = !DILocation(line: 75, column: 1, scope: !5219)
!5252 = !DILocation(line: 74, column: 2, scope: !5219)
!5253 = distinct !DISubprogram(name: "invalid_str", scope: !3, file: !3, line: 42, type: !5254, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5256)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!85, !245, !292}
!5256 = !{!5257, !5258}
!5257 = !DILocalVariable(name: "str", arg: 1, scope: !5253, file: !3, line: 42, type: !245)
!5258 = !DILocalVariable(name: "size", arg: 2, scope: !5253, file: !3, line: 42, type: !292)
!5259 = !DILocation(line: 42, column: 30, scope: !5253)
!5260 = !DILocation(line: 42, column: 42, scope: !5253)
!5261 = !DILocation(line: 44, column: 13, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 44, column: 6)
!5263 = !DILocation(line: 44, column: 21, scope: !5262)
!5264 = !DILocation(line: 44, column: 6, scope: !5262)
!5265 = !DILocation(line: 44, column: 6, scope: !5253)
!5266 = !DILocation(line: 45, column: 3, scope: !5262)
!5267 = !DILocation(line: 46, column: 2, scope: !5253)
!5268 = !DILocation(line: 47, column: 1, scope: !5253)
!5269 = distinct !DISubprogram(name: "check_name", scope: !3, file: !3, line: 31, type: !5270, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!85, !164}
!5272 = !{!5273}
!5273 = !DILocalVariable(name: "name", arg: 1, scope: !5269, file: !3, line: 31, type: !164)
!5274 = !DILocation(line: 31, column: 35, scope: !5269)
!5275 = !DILocation(line: 33, column: 14, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 33, column: 6)
!5277 = !DILocation(line: 33, column: 7, scope: !5276)
!5278 = !DILocation(line: 33, column: 6, scope: !5269)
!5279 = !DILocation(line: 34, column: 3, scope: !5276)
!5280 = !DILocation(line: 35, column: 2, scope: !5269)
!5281 = !DILocation(line: 36, column: 1, scope: !5269)
!5282 = !DISubprogram(name: "memchr", scope: !5127, file: !5127, line: 202, type: !5283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!317, !1931, !85, !293}
!5285 = !DISubprogram(name: "strchr", scope: !5127, file: !5127, line: 100, type: !5286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!245, !164, !85}
!5288 = distinct !DISubprogram(name: "autofs_dev_ioctl_version", scope: !3, file: !3, line: 154, type: !4554, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5289 = !{!5290, !5291, !5292}
!5290 = !DILocalVariable(name: "fp", arg: 1, scope: !5288, file: !3, line: 154, type: !1286)
!5291 = !DILocalVariable(name: "sbi", arg: 2, scope: !5288, file: !3, line: 155, type: !4072)
!5292 = !DILocalVariable(name: "param", arg: 3, scope: !5288, file: !3, line: 156, type: !3991)
!5293 = !DILocation(line: 154, column: 50, scope: !5288)
!5294 = !DILocation(line: 155, column: 32, scope: !5288)
!5295 = !DILocation(line: 156, column: 34, scope: !5288)
!5296 = !DILocation(line: 159, column: 2, scope: !5288)
!5297 = !DILocation(line: 159, column: 9, scope: !5288)
!5298 = !DILocation(line: 159, column: 19, scope: !5288)
!5299 = !DILocation(line: 160, column: 2, scope: !5288)
!5300 = !DILocation(line: 160, column: 9, scope: !5288)
!5301 = !DILocation(line: 160, column: 19, scope: !5288)
!5302 = !DILocation(line: 161, column: 2, scope: !5288)
!5303 = distinct !DISubprogram(name: "autofs_dev_ioctl_protover", scope: !3, file: !3, line: 165, type: !4554, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5304 = !{!5305, !5306, !5307}
!5305 = !DILocalVariable(name: "fp", arg: 1, scope: !5303, file: !3, line: 165, type: !1286)
!5306 = !DILocalVariable(name: "sbi", arg: 2, scope: !5303, file: !3, line: 166, type: !4072)
!5307 = !DILocalVariable(name: "param", arg: 3, scope: !5303, file: !3, line: 167, type: !3991)
!5308 = !DILocation(line: 165, column: 51, scope: !5303)
!5309 = !DILocation(line: 166, column: 33, scope: !5303)
!5310 = !DILocation(line: 167, column: 35, scope: !5303)
!5311 = !DILocation(line: 169, column: 28, scope: !5303)
!5312 = !DILocation(line: 169, column: 33, scope: !5303)
!5313 = !DILocation(line: 169, column: 2, scope: !5303)
!5314 = !DILocation(line: 169, column: 9, scope: !5303)
!5315 = !DILocation(line: 169, column: 18, scope: !5303)
!5316 = !DILocation(line: 169, column: 26, scope: !5303)
!5317 = !DILocation(line: 170, column: 2, scope: !5303)
!5318 = distinct !DISubprogram(name: "autofs_dev_ioctl_protosubver", scope: !3, file: !3, line: 174, type: !4554, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5319 = !{!5320, !5321, !5322}
!5320 = !DILocalVariable(name: "fp", arg: 1, scope: !5318, file: !3, line: 174, type: !1286)
!5321 = !DILocalVariable(name: "sbi", arg: 2, scope: !5318, file: !3, line: 175, type: !4072)
!5322 = !DILocalVariable(name: "param", arg: 3, scope: !5318, file: !3, line: 176, type: !3991)
!5323 = !DILocation(line: 174, column: 54, scope: !5318)
!5324 = !DILocation(line: 175, column: 29, scope: !5318)
!5325 = !DILocation(line: 176, column: 31, scope: !5318)
!5326 = !DILocation(line: 178, column: 35, scope: !5318)
!5327 = !DILocation(line: 178, column: 40, scope: !5318)
!5328 = !DILocation(line: 178, column: 2, scope: !5318)
!5329 = !DILocation(line: 178, column: 9, scope: !5318)
!5330 = !DILocation(line: 178, column: 21, scope: !5318)
!5331 = !DILocation(line: 178, column: 33, scope: !5318)
!5332 = !DILocation(line: 179, column: 2, scope: !5318)
!5333 = distinct !DISubprogram(name: "autofs_dev_ioctl_openmount", scope: !3, file: !3, line: 258, type: !4554, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5334)
!5334 = !{!5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!5335 = !DILocalVariable(name: "fp", arg: 1, scope: !5333, file: !3, line: 258, type: !1286)
!5336 = !DILocalVariable(name: "sbi", arg: 2, scope: !5333, file: !3, line: 259, type: !4072)
!5337 = !DILocalVariable(name: "param", arg: 3, scope: !5333, file: !3, line: 260, type: !3991)
!5338 = !DILocalVariable(name: "path", scope: !5333, file: !3, line: 262, type: !164)
!5339 = !DILocalVariable(name: "devid", scope: !5333, file: !3, line: 263, type: !482)
!5340 = !DILocalVariable(name: "err", scope: !5333, file: !3, line: 264, type: !85)
!5341 = !DILocalVariable(name: "fd", scope: !5333, file: !3, line: 264, type: !85)
!5342 = !DILabel(scope: !5333, name: "out", file: !3, line: 284)
!5343 = !DILocation(line: 258, column: 52, scope: !5333)
!5344 = !DILocation(line: 259, column: 34, scope: !5333)
!5345 = !DILocation(line: 260, column: 36, scope: !5333)
!5346 = !DILocation(line: 262, column: 2, scope: !5333)
!5347 = !DILocation(line: 262, column: 14, scope: !5333)
!5348 = !DILocation(line: 263, column: 2, scope: !5333)
!5349 = !DILocation(line: 263, column: 8, scope: !5333)
!5350 = !DILocation(line: 264, column: 2, scope: !5333)
!5351 = !DILocation(line: 264, column: 6, scope: !5333)
!5352 = !DILocation(line: 264, column: 11, scope: !5333)
!5353 = !DILocation(line: 268, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 268, column: 6)
!5355 = !DILocation(line: 268, column: 14, scope: !5354)
!5356 = !DILocation(line: 268, column: 24, scope: !5354)
!5357 = !DILocation(line: 268, column: 6, scope: !5333)
!5358 = !DILocation(line: 269, column: 3, scope: !5354)
!5359 = !DILocation(line: 271, column: 2, scope: !5333)
!5360 = !DILocation(line: 271, column: 9, scope: !5333)
!5361 = !DILocation(line: 271, column: 17, scope: !5333)
!5362 = !DILocation(line: 273, column: 9, scope: !5333)
!5363 = !DILocation(line: 273, column: 16, scope: !5333)
!5364 = !DILocation(line: 273, column: 7, scope: !5333)
!5365 = !DILocation(line: 274, column: 25, scope: !5333)
!5366 = !DILocation(line: 274, column: 32, scope: !5333)
!5367 = !DILocation(line: 274, column: 42, scope: !5333)
!5368 = !DILocation(line: 274, column: 10, scope: !5333)
!5369 = !DILocation(line: 274, column: 8, scope: !5333)
!5370 = !DILocation(line: 276, column: 6, scope: !5333)
!5371 = !DILocation(line: 277, column: 40, scope: !5333)
!5372 = !DILocation(line: 277, column: 46, scope: !5333)
!5373 = !DILocation(line: 277, column: 7, scope: !5333)
!5374 = !DILocation(line: 277, column: 5, scope: !5333)
!5375 = !DILocation(line: 278, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 278, column: 6)
!5377 = !DILocation(line: 278, column: 6, scope: !5333)
!5378 = !DILocation(line: 279, column: 9, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 278, column: 24)
!5380 = !DILocation(line: 279, column: 7, scope: !5379)
!5381 = !DILocation(line: 280, column: 3, scope: !5379)
!5382 = !DILocation(line: 283, column: 19, scope: !5333)
!5383 = !DILocation(line: 283, column: 2, scope: !5333)
!5384 = !DILocation(line: 283, column: 9, scope: !5333)
!5385 = !DILocation(line: 283, column: 17, scope: !5333)
!5386 = !DILocation(line: 284, column: 1, scope: !5333)
!5387 = !DILocation(line: 285, column: 9, scope: !5333)
!5388 = !DILocation(line: 285, column: 2, scope: !5333)
!5389 = !DILocation(line: 286, column: 1, scope: !5333)
!5390 = distinct !DISubprogram(name: "autofs_dev_ioctl_closemount", scope: !3, file: !3, line: 289, type: !4554, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5391 = !{!5392, !5393, !5394}
!5392 = !DILocalVariable(name: "fp", arg: 1, scope: !5390, file: !3, line: 289, type: !1286)
!5393 = !DILocalVariable(name: "sbi", arg: 2, scope: !5390, file: !3, line: 290, type: !4072)
!5394 = !DILocalVariable(name: "param", arg: 3, scope: !5390, file: !3, line: 291, type: !3991)
!5395 = !DILocation(line: 289, column: 53, scope: !5390)
!5396 = !DILocation(line: 290, column: 35, scope: !5390)
!5397 = !DILocation(line: 291, column: 37, scope: !5390)
!5398 = !DILocation(line: 293, column: 18, scope: !5390)
!5399 = !DILocation(line: 293, column: 25, scope: !5390)
!5400 = !DILocation(line: 293, column: 9, scope: !5390)
!5401 = !DILocation(line: 293, column: 2, scope: !5390)
!5402 = distinct !DISubprogram(name: "autofs_dev_ioctl_ready", scope: !3, file: !3, line: 300, type: !4554, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5403)
!5403 = !{!5404, !5405, !5406, !5407}
!5404 = !DILocalVariable(name: "fp", arg: 1, scope: !5402, file: !3, line: 300, type: !1286)
!5405 = !DILocalVariable(name: "sbi", arg: 2, scope: !5402, file: !3, line: 301, type: !4072)
!5406 = !DILocalVariable(name: "param", arg: 3, scope: !5402, file: !3, line: 302, type: !3991)
!5407 = !DILocalVariable(name: "token", scope: !5402, file: !3, line: 304, type: !4060)
!5408 = !DILocation(line: 300, column: 48, scope: !5402)
!5409 = !DILocation(line: 301, column: 30, scope: !5402)
!5410 = !DILocation(line: 302, column: 32, scope: !5402)
!5411 = !DILocation(line: 304, column: 2, scope: !5402)
!5412 = !DILocation(line: 304, column: 15, scope: !5402)
!5413 = !DILocation(line: 306, column: 25, scope: !5402)
!5414 = !DILocation(line: 306, column: 32, scope: !5402)
!5415 = !DILocation(line: 306, column: 38, scope: !5402)
!5416 = !DILocation(line: 306, column: 8, scope: !5402)
!5417 = !DILocation(line: 307, column: 29, scope: !5402)
!5418 = !DILocation(line: 307, column: 34, scope: !5402)
!5419 = !DILocation(line: 307, column: 9, scope: !5402)
!5420 = !DILocation(line: 308, column: 1, scope: !5402)
!5421 = !DILocation(line: 307, column: 2, scope: !5402)
!5422 = distinct !DISubprogram(name: "autofs_dev_ioctl_fail", scope: !3, file: !3, line: 314, type: !4554, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5423 = !{!5424, !5425, !5426, !5427, !5428}
!5424 = !DILocalVariable(name: "fp", arg: 1, scope: !5422, file: !3, line: 314, type: !1286)
!5425 = !DILocalVariable(name: "sbi", arg: 2, scope: !5422, file: !3, line: 315, type: !4072)
!5426 = !DILocalVariable(name: "param", arg: 3, scope: !5422, file: !3, line: 316, type: !3991)
!5427 = !DILocalVariable(name: "token", scope: !5422, file: !3, line: 318, type: !4060)
!5428 = !DILocalVariable(name: "status", scope: !5422, file: !3, line: 319, type: !85)
!5429 = !DILocation(line: 314, column: 47, scope: !5422)
!5430 = !DILocation(line: 315, column: 29, scope: !5422)
!5431 = !DILocation(line: 316, column: 31, scope: !5422)
!5432 = !DILocation(line: 318, column: 2, scope: !5422)
!5433 = !DILocation(line: 318, column: 15, scope: !5422)
!5434 = !DILocation(line: 319, column: 2, scope: !5422)
!5435 = !DILocation(line: 319, column: 6, scope: !5422)
!5436 = !DILocation(line: 321, column: 25, scope: !5422)
!5437 = !DILocation(line: 321, column: 32, scope: !5422)
!5438 = !DILocation(line: 321, column: 37, scope: !5422)
!5439 = !DILocation(line: 321, column: 8, scope: !5422)
!5440 = !DILocation(line: 322, column: 11, scope: !5422)
!5441 = !DILocation(line: 322, column: 18, scope: !5422)
!5442 = !DILocation(line: 322, column: 23, scope: !5422)
!5443 = !DILocation(line: 322, column: 30, scope: !5422)
!5444 = !DILocation(line: 322, column: 36, scope: !5422)
!5445 = !DILocation(line: 322, column: 43, scope: !5422)
!5446 = !DILocation(line: 322, column: 48, scope: !5422)
!5447 = !DILocation(line: 322, column: 9, scope: !5422)
!5448 = !DILocation(line: 323, column: 29, scope: !5422)
!5449 = !DILocation(line: 323, column: 34, scope: !5422)
!5450 = !DILocation(line: 323, column: 41, scope: !5422)
!5451 = !DILocation(line: 323, column: 9, scope: !5422)
!5452 = !DILocation(line: 324, column: 1, scope: !5422)
!5453 = !DILocation(line: 323, column: 2, scope: !5422)
!5454 = distinct !DISubprogram(name: "autofs_dev_ioctl_setpipefd", scope: !3, file: !3, line: 338, type: !4554, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5455)
!5455 = !{!5456, !5457, !5458, !5459, !5460, !5461, !5462, !5465, !5467}
!5456 = !DILocalVariable(name: "fp", arg: 1, scope: !5454, file: !3, line: 338, type: !1286)
!5457 = !DILocalVariable(name: "sbi", arg: 2, scope: !5454, file: !3, line: 339, type: !4072)
!5458 = !DILocalVariable(name: "param", arg: 3, scope: !5454, file: !3, line: 340, type: !3991)
!5459 = !DILocalVariable(name: "pipefd", scope: !5454, file: !3, line: 342, type: !85)
!5460 = !DILocalVariable(name: "err", scope: !5454, file: !3, line: 343, type: !85)
!5461 = !DILocalVariable(name: "new_pid", scope: !5454, file: !3, line: 344, type: !1327)
!5462 = !DILocalVariable(name: "pipe", scope: !5463, file: !3, line: 356, type: !1286)
!5463 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 355, column: 9)
!5464 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 352, column: 6)
!5465 = !DILocalVariable(name: "__tmp", scope: !5466, file: !3, line: 376, type: !1327)
!5466 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 376, column: 3)
!5467 = !DILabel(scope: !5454, name: "out", file: !3, line: 381)
!5468 = !DILocation(line: 338, column: 52, scope: !5454)
!5469 = !DILocation(line: 339, column: 34, scope: !5454)
!5470 = !DILocation(line: 340, column: 36, scope: !5454)
!5471 = !DILocation(line: 342, column: 2, scope: !5454)
!5472 = !DILocation(line: 342, column: 6, scope: !5454)
!5473 = !DILocation(line: 343, column: 2, scope: !5454)
!5474 = !DILocation(line: 343, column: 6, scope: !5454)
!5475 = !DILocation(line: 344, column: 2, scope: !5454)
!5476 = !DILocation(line: 344, column: 14, scope: !5454)
!5477 = !DILocation(line: 346, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 346, column: 6)
!5479 = !DILocation(line: 346, column: 13, scope: !5478)
!5480 = !DILocation(line: 346, column: 23, scope: !5478)
!5481 = !DILocation(line: 346, column: 30, scope: !5478)
!5482 = !DILocation(line: 346, column: 6, scope: !5454)
!5483 = !DILocation(line: 347, column: 3, scope: !5478)
!5484 = !DILocation(line: 349, column: 11, scope: !5454)
!5485 = !DILocation(line: 349, column: 18, scope: !5454)
!5486 = !DILocation(line: 349, column: 28, scope: !5454)
!5487 = !DILocation(line: 349, column: 9, scope: !5454)
!5488 = !DILocation(line: 351, column: 14, scope: !5454)
!5489 = !DILocation(line: 351, column: 19, scope: !5454)
!5490 = !DILocation(line: 351, column: 2, scope: !5454)
!5491 = !DILocation(line: 352, column: 8, scope: !5464)
!5492 = !DILocation(line: 352, column: 13, scope: !5464)
!5493 = !DILocation(line: 352, column: 19, scope: !5464)
!5494 = !DILocation(line: 352, column: 6, scope: !5454)
!5495 = !DILocation(line: 353, column: 17, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 352, column: 44)
!5497 = !DILocation(line: 353, column: 22, scope: !5496)
!5498 = !DILocation(line: 353, column: 3, scope: !5496)
!5499 = !DILocation(line: 354, column: 3, scope: !5496)
!5500 = !DILocation(line: 356, column: 3, scope: !5463)
!5501 = !DILocation(line: 356, column: 16, scope: !5463)
!5502 = !DILocation(line: 358, column: 26, scope: !5463)
!5503 = !DILocation(line: 358, column: 13, scope: !5463)
!5504 = !DILocation(line: 358, column: 11, scope: !5463)
!5505 = !DILocation(line: 360, column: 17, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 360, column: 7)
!5507 = !DILocation(line: 360, column: 7, scope: !5506)
!5508 = !DILocation(line: 360, column: 39, scope: !5506)
!5509 = !DILocation(line: 360, column: 44, scope: !5506)
!5510 = !DILocation(line: 360, column: 29, scope: !5506)
!5511 = !DILocation(line: 360, column: 26, scope: !5506)
!5512 = !DILocation(line: 360, column: 7, scope: !5463)
!5513 = !DILocation(line: 361, column: 4, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 361, column: 4)
!5515 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 360, column: 54)
!5516 = !DILocation(line: 361, column: 4, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 361, column: 4)
!5518 = !DILocation(line: 362, column: 8, scope: !5515)
!5519 = !DILocation(line: 363, column: 4, scope: !5515)
!5520 = !DILocation(line: 366, column: 15, scope: !5463)
!5521 = !DILocation(line: 366, column: 10, scope: !5463)
!5522 = !DILocation(line: 366, column: 8, scope: !5463)
!5523 = !DILocation(line: 367, column: 8, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 367, column: 7)
!5525 = !DILocation(line: 367, column: 7, scope: !5463)
!5526 = !DILocation(line: 368, column: 8, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 367, column: 14)
!5528 = !DILocation(line: 369, column: 4, scope: !5527)
!5529 = !DILocation(line: 371, column: 27, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 371, column: 7)
!5531 = !DILocation(line: 371, column: 7, scope: !5530)
!5532 = !DILocation(line: 371, column: 33, scope: !5530)
!5533 = !DILocation(line: 371, column: 7, scope: !5463)
!5534 = !DILocation(line: 372, column: 8, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 371, column: 38)
!5536 = !DILocation(line: 373, column: 9, scope: !5535)
!5537 = !DILocation(line: 373, column: 4, scope: !5535)
!5538 = !DILocation(line: 374, column: 4, scope: !5535)
!5539 = !DILocation(line: 376, column: 3, scope: !5463)
!5540 = !DILocation(line: 376, column: 3, scope: !5466)
!5541 = !DILocation(line: 377, column: 17, scope: !5463)
!5542 = !DILocation(line: 377, column: 3, scope: !5463)
!5543 = !DILocation(line: 377, column: 8, scope: !5463)
!5544 = !DILocation(line: 377, column: 15, scope: !5463)
!5545 = !DILocation(line: 378, column: 15, scope: !5463)
!5546 = !DILocation(line: 378, column: 3, scope: !5463)
!5547 = !DILocation(line: 378, column: 8, scope: !5463)
!5548 = !DILocation(line: 378, column: 13, scope: !5463)
!5549 = !DILocation(line: 379, column: 3, scope: !5463)
!5550 = !DILocation(line: 379, column: 8, scope: !5463)
!5551 = !DILocation(line: 379, column: 14, scope: !5463)
!5552 = !DILocation(line: 380, column: 2, scope: !5464)
!5553 = !DILocation(line: 352, column: 41, scope: !5464)
!5554 = !DILocation(line: 381, column: 1, scope: !5454)
!5555 = !DILocation(line: 382, column: 10, scope: !5454)
!5556 = !DILocation(line: 382, column: 2, scope: !5454)
!5557 = !DILocation(line: 383, column: 16, scope: !5454)
!5558 = !DILocation(line: 383, column: 21, scope: !5454)
!5559 = !DILocation(line: 383, column: 2, scope: !5454)
!5560 = !DILocation(line: 384, column: 9, scope: !5454)
!5561 = !DILocation(line: 384, column: 2, scope: !5454)
!5562 = !DILocation(line: 385, column: 1, scope: !5454)
!5563 = distinct !DISubprogram(name: "autofs_dev_ioctl_catatonic", scope: !3, file: !3, line: 391, type: !4554, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5564 = !{!5565, !5566, !5567}
!5565 = !DILocalVariable(name: "fp", arg: 1, scope: !5563, file: !3, line: 391, type: !1286)
!5566 = !DILocalVariable(name: "sbi", arg: 2, scope: !5563, file: !3, line: 392, type: !4072)
!5567 = !DILocalVariable(name: "param", arg: 3, scope: !5563, file: !3, line: 393, type: !3991)
!5568 = !DILocation(line: 391, column: 52, scope: !5563)
!5569 = !DILocation(line: 392, column: 34, scope: !5563)
!5570 = !DILocation(line: 393, column: 36, scope: !5563)
!5571 = !DILocation(line: 395, column: 24, scope: !5563)
!5572 = !DILocation(line: 395, column: 2, scope: !5563)
!5573 = !DILocation(line: 396, column: 2, scope: !5563)
!5574 = distinct !DISubprogram(name: "autofs_dev_ioctl_timeout", scope: !3, file: !3, line: 400, type: !4554, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5575 = !{!5576, !5577, !5578, !5579}
!5576 = !DILocalVariable(name: "fp", arg: 1, scope: !5574, file: !3, line: 400, type: !1286)
!5577 = !DILocalVariable(name: "sbi", arg: 2, scope: !5574, file: !3, line: 401, type: !4072)
!5578 = !DILocalVariable(name: "param", arg: 3, scope: !5574, file: !3, line: 402, type: !3991)
!5579 = !DILocalVariable(name: "timeout", scope: !5574, file: !3, line: 404, type: !295)
!5580 = !DILocation(line: 400, column: 50, scope: !5574)
!5581 = !DILocation(line: 401, column: 32, scope: !5574)
!5582 = !DILocation(line: 402, column: 34, scope: !5574)
!5583 = !DILocation(line: 404, column: 2, scope: !5574)
!5584 = !DILocation(line: 404, column: 16, scope: !5574)
!5585 = !DILocation(line: 406, column: 12, scope: !5574)
!5586 = !DILocation(line: 406, column: 19, scope: !5574)
!5587 = !DILocation(line: 406, column: 27, scope: !5574)
!5588 = !DILocation(line: 406, column: 10, scope: !5574)
!5589 = !DILocation(line: 407, column: 27, scope: !5574)
!5590 = !DILocation(line: 407, column: 32, scope: !5574)
!5591 = !DILocation(line: 407, column: 44, scope: !5574)
!5592 = !DILocation(line: 407, column: 2, scope: !5574)
!5593 = !DILocation(line: 407, column: 9, scope: !5574)
!5594 = !DILocation(line: 407, column: 17, scope: !5574)
!5595 = !DILocation(line: 407, column: 25, scope: !5574)
!5596 = !DILocation(line: 408, column: 21, scope: !5574)
!5597 = !DILocation(line: 408, column: 29, scope: !5574)
!5598 = !DILocation(line: 408, column: 2, scope: !5574)
!5599 = !DILocation(line: 408, column: 7, scope: !5574)
!5600 = !DILocation(line: 408, column: 19, scope: !5574)
!5601 = !DILocation(line: 410, column: 1, scope: !5574)
!5602 = !DILocation(line: 409, column: 2, scope: !5574)
!5603 = distinct !DISubprogram(name: "autofs_dev_ioctl_requester", scope: !3, file: !3, line: 420, type: !4554, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5604 = !{!5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612}
!5605 = !DILocalVariable(name: "fp", arg: 1, scope: !5603, file: !3, line: 420, type: !1286)
!5606 = !DILocalVariable(name: "sbi", arg: 2, scope: !5603, file: !3, line: 421, type: !4072)
!5607 = !DILocalVariable(name: "param", arg: 3, scope: !5603, file: !3, line: 422, type: !3991)
!5608 = !DILocalVariable(name: "ino", scope: !5603, file: !3, line: 424, type: !4062)
!5609 = !DILocalVariable(name: "path", scope: !5603, file: !3, line: 425, type: !752)
!5610 = !DILocalVariable(name: "devid", scope: !5603, file: !3, line: 426, type: !482)
!5611 = !DILocalVariable(name: "err", scope: !5603, file: !3, line: 427, type: !85)
!5612 = !DILabel(scope: !5603, name: "out", file: !3, line: 451)
!5613 = !DILocation(line: 420, column: 52, scope: !5603)
!5614 = !DILocation(line: 421, column: 34, scope: !5603)
!5615 = !DILocation(line: 422, column: 36, scope: !5603)
!5616 = !DILocation(line: 424, column: 2, scope: !5603)
!5617 = !DILocation(line: 424, column: 22, scope: !5603)
!5618 = !DILocation(line: 425, column: 2, scope: !5603)
!5619 = !DILocation(line: 425, column: 14, scope: !5603)
!5620 = !DILocation(line: 426, column: 2, scope: !5603)
!5621 = !DILocation(line: 426, column: 8, scope: !5603)
!5622 = !DILocation(line: 427, column: 2, scope: !5603)
!5623 = !DILocation(line: 427, column: 6, scope: !5603)
!5624 = !DILocation(line: 431, column: 10, scope: !5603)
!5625 = !DILocation(line: 431, column: 15, scope: !5603)
!5626 = !DILocation(line: 431, column: 19, scope: !5603)
!5627 = !DILocation(line: 431, column: 8, scope: !5603)
!5628 = !DILocation(line: 433, column: 25, scope: !5603)
!5629 = !DILocation(line: 433, column: 32, scope: !5603)
!5630 = !DILocation(line: 433, column: 42, scope: !5603)
!5631 = !DILocation(line: 433, column: 46, scope: !5603)
!5632 = !DILocation(line: 433, column: 2, scope: !5603)
!5633 = !DILocation(line: 433, column: 9, scope: !5603)
!5634 = !DILocation(line: 433, column: 19, scope: !5603)
!5635 = !DILocation(line: 433, column: 23, scope: !5603)
!5636 = !DILocation(line: 435, column: 26, scope: !5603)
!5637 = !DILocation(line: 435, column: 33, scope: !5603)
!5638 = !DILocation(line: 435, column: 8, scope: !5603)
!5639 = !DILocation(line: 435, column: 6, scope: !5603)
!5640 = !DILocation(line: 436, column: 6, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 436, column: 6)
!5642 = !DILocation(line: 436, column: 6, scope: !5603)
!5643 = !DILocation(line: 437, column: 3, scope: !5641)
!5644 = !DILocation(line: 439, column: 31, scope: !5603)
!5645 = !DILocation(line: 439, column: 8, scope: !5603)
!5646 = !DILocation(line: 439, column: 6, scope: !5603)
!5647 = !DILocation(line: 440, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 440, column: 6)
!5649 = !DILocation(line: 440, column: 6, scope: !5603)
!5650 = !DILocation(line: 441, column: 7, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 440, column: 11)
!5652 = !DILocation(line: 442, column: 3, scope: !5651)
!5653 = !DILocation(line: 443, column: 14, scope: !5651)
!5654 = !DILocation(line: 443, column: 19, scope: !5651)
!5655 = !DILocation(line: 443, column: 3, scope: !5651)
!5656 = !DILocation(line: 445, column: 21, scope: !5651)
!5657 = !DILocation(line: 445, column: 40, scope: !5651)
!5658 = !DILocation(line: 445, column: 45, scope: !5651)
!5659 = !DILocation(line: 445, column: 4, scope: !5651)
!5660 = !DILocation(line: 444, column: 3, scope: !5651)
!5661 = !DILocation(line: 444, column: 10, scope: !5651)
!5662 = !DILocation(line: 444, column: 20, scope: !5651)
!5663 = !DILocation(line: 444, column: 24, scope: !5651)
!5664 = !DILocation(line: 447, column: 21, scope: !5651)
!5665 = !DILocation(line: 447, column: 40, scope: !5651)
!5666 = !DILocation(line: 447, column: 45, scope: !5651)
!5667 = !DILocation(line: 447, column: 4, scope: !5651)
!5668 = !DILocation(line: 446, column: 3, scope: !5651)
!5669 = !DILocation(line: 446, column: 10, scope: !5651)
!5670 = !DILocation(line: 446, column: 20, scope: !5651)
!5671 = !DILocation(line: 446, column: 24, scope: !5651)
!5672 = !DILocation(line: 448, column: 16, scope: !5651)
!5673 = !DILocation(line: 448, column: 21, scope: !5651)
!5674 = !DILocation(line: 448, column: 3, scope: !5651)
!5675 = !DILocation(line: 449, column: 2, scope: !5651)
!5676 = !DILocation(line: 450, column: 2, scope: !5603)
!5677 = !DILocation(line: 451, column: 1, scope: !5603)
!5678 = !DILocation(line: 452, column: 9, scope: !5603)
!5679 = !DILocation(line: 453, column: 1, scope: !5603)
!5680 = !DILocation(line: 452, column: 2, scope: !5603)
!5681 = distinct !DISubprogram(name: "autofs_dev_ioctl_expire", scope: !3, file: !3, line: 459, type: !4554, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5682)
!5682 = !{!5683, !5684, !5685, !5686, !5687}
!5683 = !DILocalVariable(name: "fp", arg: 1, scope: !5681, file: !3, line: 459, type: !1286)
!5684 = !DILocalVariable(name: "sbi", arg: 2, scope: !5681, file: !3, line: 460, type: !4072)
!5685 = !DILocalVariable(name: "param", arg: 3, scope: !5681, file: !3, line: 461, type: !3991)
!5686 = !DILocalVariable(name: "mnt", scope: !5681, file: !3, line: 463, type: !471)
!5687 = !DILocalVariable(name: "how", scope: !5681, file: !3, line: 464, type: !85)
!5688 = !DILocation(line: 459, column: 49, scope: !5681)
!5689 = !DILocation(line: 460, column: 31, scope: !5681)
!5690 = !DILocation(line: 461, column: 33, scope: !5681)
!5691 = !DILocation(line: 463, column: 2, scope: !5681)
!5692 = !DILocation(line: 463, column: 19, scope: !5681)
!5693 = !DILocation(line: 464, column: 2, scope: !5681)
!5694 = !DILocation(line: 464, column: 6, scope: !5681)
!5695 = !DILocation(line: 466, column: 8, scope: !5681)
!5696 = !DILocation(line: 466, column: 15, scope: !5681)
!5697 = !DILocation(line: 466, column: 22, scope: !5681)
!5698 = !DILocation(line: 466, column: 6, scope: !5681)
!5699 = !DILocation(line: 467, column: 8, scope: !5681)
!5700 = !DILocation(line: 467, column: 12, scope: !5681)
!5701 = !DILocation(line: 467, column: 19, scope: !5681)
!5702 = !DILocation(line: 467, column: 6, scope: !5681)
!5703 = !DILocation(line: 469, column: 32, scope: !5681)
!5704 = !DILocation(line: 469, column: 37, scope: !5681)
!5705 = !DILocation(line: 469, column: 41, scope: !5681)
!5706 = !DILocation(line: 469, column: 46, scope: !5681)
!5707 = !DILocation(line: 469, column: 51, scope: !5681)
!5708 = !DILocation(line: 469, column: 9, scope: !5681)
!5709 = !DILocation(line: 470, column: 1, scope: !5681)
!5710 = !DILocation(line: 469, column: 2, scope: !5681)
!5711 = distinct !DISubprogram(name: "autofs_dev_ioctl_askumount", scope: !3, file: !3, line: 473, type: !4554, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5712 = !{!5713, !5714, !5715}
!5713 = !DILocalVariable(name: "fp", arg: 1, scope: !5711, file: !3, line: 473, type: !1286)
!5714 = !DILocalVariable(name: "sbi", arg: 2, scope: !5711, file: !3, line: 474, type: !4072)
!5715 = !DILocalVariable(name: "param", arg: 3, scope: !5711, file: !3, line: 475, type: !3991)
!5716 = !DILocation(line: 473, column: 52, scope: !5711)
!5717 = !DILocation(line: 474, column: 34, scope: !5711)
!5718 = !DILocation(line: 475, column: 36, scope: !5711)
!5719 = !DILocation(line: 477, column: 2, scope: !5711)
!5720 = !DILocation(line: 477, column: 9, scope: !5711)
!5721 = !DILocation(line: 477, column: 19, scope: !5711)
!5722 = !DILocation(line: 477, column: 30, scope: !5711)
!5723 = !DILocation(line: 478, column: 17, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 478, column: 6)
!5725 = !DILocation(line: 478, column: 21, scope: !5724)
!5726 = !DILocation(line: 478, column: 28, scope: !5724)
!5727 = !DILocation(line: 478, column: 6, scope: !5724)
!5728 = !DILocation(line: 478, column: 6, scope: !5711)
!5729 = !DILocation(line: 479, column: 3, scope: !5724)
!5730 = !DILocation(line: 479, column: 10, scope: !5724)
!5731 = !DILocation(line: 479, column: 20, scope: !5724)
!5732 = !DILocation(line: 479, column: 31, scope: !5724)
!5733 = !DILocation(line: 480, column: 2, scope: !5711)
!5734 = distinct !DISubprogram(name: "autofs_dev_ioctl_ismountpoint", scope: !3, file: !3, line: 504, type: !4554, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5735)
!5735 = !{!5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5748}
!5736 = !DILocalVariable(name: "fp", arg: 1, scope: !5734, file: !3, line: 504, type: !1286)
!5737 = !DILocalVariable(name: "sbi", arg: 2, scope: !5734, file: !3, line: 505, type: !4072)
!5738 = !DILocalVariable(name: "param", arg: 3, scope: !5734, file: !3, line: 506, type: !3991)
!5739 = !DILocalVariable(name: "path", scope: !5734, file: !3, line: 508, type: !752)
!5740 = !DILocalVariable(name: "name", scope: !5734, file: !3, line: 509, type: !164)
!5741 = !DILocalVariable(name: "type", scope: !5734, file: !3, line: 510, type: !7)
!5742 = !DILocalVariable(name: "devid", scope: !5734, file: !3, line: 511, type: !7)
!5743 = !DILocalVariable(name: "magic", scope: !5734, file: !3, line: 511, type: !7)
!5744 = !DILocalVariable(name: "err", scope: !5734, file: !3, line: 512, type: !85)
!5745 = !DILocalVariable(name: "dev", scope: !5746, file: !3, line: 538, type: !482)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 537, column: 9)
!5747 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 522, column: 6)
!5748 = !DILabel(scope: !5734, name: "out", file: !3, line: 555)
!5749 = !DILocation(line: 504, column: 55, scope: !5734)
!5750 = !DILocation(line: 505, column: 30, scope: !5734)
!5751 = !DILocation(line: 506, column: 32, scope: !5734)
!5752 = !DILocation(line: 508, column: 2, scope: !5734)
!5753 = !DILocation(line: 508, column: 14, scope: !5734)
!5754 = !DILocation(line: 509, column: 2, scope: !5734)
!5755 = !DILocation(line: 509, column: 14, scope: !5734)
!5756 = !DILocation(line: 510, column: 2, scope: !5734)
!5757 = !DILocation(line: 510, column: 15, scope: !5734)
!5758 = !DILocation(line: 511, column: 2, scope: !5734)
!5759 = !DILocation(line: 511, column: 15, scope: !5734)
!5760 = !DILocation(line: 511, column: 22, scope: !5734)
!5761 = !DILocation(line: 512, column: 2, scope: !5734)
!5762 = !DILocation(line: 512, column: 6, scope: !5734)
!5763 = !DILocation(line: 516, column: 9, scope: !5734)
!5764 = !DILocation(line: 516, column: 16, scope: !5734)
!5765 = !DILocation(line: 516, column: 7, scope: !5734)
!5766 = !DILocation(line: 517, column: 9, scope: !5734)
!5767 = !DILocation(line: 517, column: 16, scope: !5734)
!5768 = !DILocation(line: 517, column: 29, scope: !5734)
!5769 = !DILocation(line: 517, column: 32, scope: !5734)
!5770 = !DILocation(line: 517, column: 7, scope: !5734)
!5771 = !DILocation(line: 519, column: 40, scope: !5734)
!5772 = !DILocation(line: 519, column: 2, scope: !5734)
!5773 = !DILocation(line: 519, column: 9, scope: !5734)
!5774 = !DILocation(line: 519, column: 22, scope: !5734)
!5775 = !DILocation(line: 519, column: 26, scope: !5734)
!5776 = !DILocation(line: 519, column: 32, scope: !5734)
!5777 = !DILocation(line: 520, column: 40, scope: !5734)
!5778 = !DILocation(line: 520, column: 2, scope: !5734)
!5779 = !DILocation(line: 520, column: 9, scope: !5734)
!5780 = !DILocation(line: 520, column: 22, scope: !5734)
!5781 = !DILocation(line: 520, column: 26, scope: !5734)
!5782 = !DILocation(line: 520, column: 32, scope: !5734)
!5783 = !DILocation(line: 522, column: 7, scope: !5747)
!5784 = !DILocation(line: 522, column: 10, scope: !5747)
!5785 = !DILocation(line: 522, column: 13, scope: !5747)
!5786 = !DILocation(line: 522, column: 20, scope: !5747)
!5787 = !DILocation(line: 522, column: 28, scope: !5747)
!5788 = !DILocation(line: 522, column: 6, scope: !5734)
!5789 = !DILocation(line: 523, column: 23, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 523, column: 7)
!5791 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 522, column: 35)
!5792 = !DILocation(line: 523, column: 7, scope: !5790)
!5793 = !DILocation(line: 523, column: 7, scope: !5791)
!5794 = !DILocation(line: 524, column: 20, scope: !5790)
!5795 = !DILocation(line: 524, column: 10, scope: !5790)
!5796 = !DILocation(line: 524, column: 8, scope: !5790)
!5797 = !DILocation(line: 524, column: 4, scope: !5790)
!5798 = !DILocation(line: 527, column: 28, scope: !5790)
!5799 = !DILocation(line: 527, column: 10, scope: !5790)
!5800 = !DILocation(line: 527, column: 8, scope: !5790)
!5801 = !DILocation(line: 529, column: 7, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 529, column: 7)
!5803 = !DILocation(line: 529, column: 7, scope: !5791)
!5804 = !DILocation(line: 530, column: 4, scope: !5802)
!5805 = !DILocation(line: 531, column: 31, scope: !5791)
!5806 = !DILocation(line: 531, column: 39, scope: !5791)
!5807 = !DILocation(line: 531, column: 45, scope: !5791)
!5808 = !DILocation(line: 531, column: 11, scope: !5791)
!5809 = !DILocation(line: 531, column: 9, scope: !5791)
!5810 = !DILocation(line: 532, column: 7, scope: !5791)
!5811 = !DILocation(line: 533, column: 12, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 533, column: 7)
!5813 = !DILocation(line: 533, column: 17, scope: !5812)
!5814 = !DILocation(line: 533, column: 34, scope: !5812)
!5815 = !DILocation(line: 533, column: 26, scope: !5812)
!5816 = !DILocation(line: 533, column: 7, scope: !5791)
!5817 = !DILocation(line: 534, column: 8, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 533, column: 42)
!5819 = !DILocation(line: 535, column: 17, scope: !5818)
!5820 = !DILocation(line: 535, column: 25, scope: !5818)
!5821 = !DILocation(line: 535, column: 31, scope: !5818)
!5822 = !DILocation(line: 535, column: 12, scope: !5818)
!5823 = !DILocation(line: 535, column: 10, scope: !5818)
!5824 = !DILocation(line: 536, column: 3, scope: !5818)
!5825 = !DILocation(line: 537, column: 2, scope: !5791)
!5826 = !DILocation(line: 538, column: 3, scope: !5746)
!5827 = !DILocation(line: 538, column: 9, scope: !5746)
!5828 = !DILocation(line: 538, column: 15, scope: !5746)
!5829 = !DILocation(line: 538, column: 20, scope: !5746)
!5830 = !DILocation(line: 538, column: 24, scope: !5746)
!5831 = !DILocation(line: 540, column: 27, scope: !5746)
!5832 = !DILocation(line: 540, column: 9, scope: !5746)
!5833 = !DILocation(line: 540, column: 7, scope: !5746)
!5834 = !DILocation(line: 541, column: 7, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 541, column: 7)
!5836 = !DILocation(line: 541, column: 7, scope: !5746)
!5837 = !DILocation(line: 542, column: 4, scope: !5835)
!5838 = !DILocation(line: 544, column: 26, scope: !5746)
!5839 = !DILocation(line: 544, column: 11, scope: !5746)
!5840 = !DILocation(line: 544, column: 9, scope: !5746)
!5841 = !DILocation(line: 546, column: 9, scope: !5746)
!5842 = !DILocation(line: 546, column: 7, scope: !5746)
!5843 = !DILocation(line: 548, column: 7, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 548, column: 7)
!5845 = !DILocation(line: 548, column: 7, scope: !5746)
!5846 = !DILocation(line: 549, column: 17, scope: !5844)
!5847 = !DILocation(line: 549, column: 25, scope: !5844)
!5848 = !DILocation(line: 549, column: 31, scope: !5844)
!5849 = !DILocation(line: 549, column: 12, scope: !5844)
!5850 = !DILocation(line: 549, column: 10, scope: !5844)
!5851 = !DILocation(line: 549, column: 4, scope: !5844)
!5852 = !DILocation(line: 550, column: 2, scope: !5747)
!5853 = !DILocation(line: 552, column: 34, scope: !5734)
!5854 = !DILocation(line: 552, column: 2, scope: !5734)
!5855 = !DILocation(line: 552, column: 9, scope: !5734)
!5856 = !DILocation(line: 552, column: 22, scope: !5734)
!5857 = !DILocation(line: 552, column: 26, scope: !5734)
!5858 = !DILocation(line: 552, column: 32, scope: !5734)
!5859 = !DILocation(line: 553, column: 34, scope: !5734)
!5860 = !DILocation(line: 553, column: 2, scope: !5734)
!5861 = !DILocation(line: 553, column: 9, scope: !5734)
!5862 = !DILocation(line: 553, column: 22, scope: !5734)
!5863 = !DILocation(line: 553, column: 26, scope: !5734)
!5864 = !DILocation(line: 553, column: 32, scope: !5734)
!5865 = !DILocation(line: 554, column: 2, scope: !5734)
!5866 = !DILocation(line: 555, column: 1, scope: !5734)
!5867 = !DILocation(line: 556, column: 9, scope: !5734)
!5868 = !DILocation(line: 556, column: 2, scope: !5734)
!5869 = !DILocation(line: 557, column: 1, scope: !5734)
!5870 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !5871, file: !5871, line: 36, type: !5872, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5874)
!5871 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!295, !295, !295}
!5874 = !{!5875, !5876, !5877}
!5875 = !DILocalVariable(name: "index", arg: 1, scope: !5870, file: !5871, line: 36, type: !295)
!5876 = !DILocalVariable(name: "size", arg: 2, scope: !5870, file: !5871, line: 37, type: !295)
!5877 = !DILocalVariable(name: "mask", scope: !5870, file: !5871, line: 39, type: !295)
!5878 = !DILocation(line: 36, column: 67, scope: !5870)
!5879 = !DILocation(line: 37, column: 17, scope: !5870)
!5880 = !DILocation(line: 39, column: 2, scope: !5870)
!5881 = !DILocation(line: 39, column: 16, scope: !5870)
!5882 = !DILocation(line: 43, column: 9, scope: !5870)
!5883 = !DILocation(line: 43, column: 20, scope: !5870)
!5884 = !DILocation(line: 41, column: 2, scope: !5870)
!5885 = !{i64 261074}
!5886 = !DILocation(line: 45, column: 9, scope: !5870)
!5887 = !DILocation(line: 46, column: 1, scope: !5870)
!5888 = !DILocation(line: 45, column: 2, scope: !5870)
!5889 = distinct !DISubprogram(name: "new_decode_dev", scope: !5890, file: !5890, line: 46, type: !5891, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5890 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!482, !395}
!5893 = !{!5894, !5895, !5896}
!5894 = !DILocalVariable(name: "dev", arg: 1, scope: !5889, file: !5890, line: 46, type: !395)
!5895 = !DILocalVariable(name: "major", scope: !5889, file: !5890, line: 48, type: !7)
!5896 = !DILocalVariable(name: "minor", scope: !5889, file: !5890, line: 49, type: !7)
!5897 = !DILocation(line: 46, column: 49, scope: !5889)
!5898 = !DILocation(line: 48, column: 2, scope: !5889)
!5899 = !DILocation(line: 48, column: 11, scope: !5889)
!5900 = !DILocation(line: 48, column: 20, scope: !5889)
!5901 = !DILocation(line: 48, column: 24, scope: !5889)
!5902 = !DILocation(line: 48, column: 35, scope: !5889)
!5903 = !DILocation(line: 49, column: 2, scope: !5889)
!5904 = !DILocation(line: 49, column: 11, scope: !5889)
!5905 = !DILocation(line: 49, column: 20, scope: !5889)
!5906 = !DILocation(line: 49, column: 24, scope: !5889)
!5907 = !DILocation(line: 49, column: 36, scope: !5889)
!5908 = !DILocation(line: 49, column: 40, scope: !5889)
!5909 = !DILocation(line: 49, column: 47, scope: !5889)
!5910 = !DILocation(line: 49, column: 32, scope: !5889)
!5911 = !DILocation(line: 50, column: 9, scope: !5889)
!5912 = !DILocation(line: 51, column: 1, scope: !5889)
!5913 = !DILocation(line: 50, column: 2, scope: !5889)
!5914 = distinct !DISubprogram(name: "autofs_dev_ioctl_open_mountpoint", scope: !3, file: !3, line: 227, type: !5915, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5917)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!85, !164, !482}
!5917 = !{!5918, !5919, !5920, !5921, !5922, !5925, !5926}
!5918 = !DILocalVariable(name: "name", arg: 1, scope: !5914, file: !3, line: 227, type: !164)
!5919 = !DILocalVariable(name: "devid", arg: 2, scope: !5914, file: !3, line: 227, type: !482)
!5920 = !DILocalVariable(name: "err", scope: !5914, file: !3, line: 229, type: !85)
!5921 = !DILocalVariable(name: "fd", scope: !5914, file: !3, line: 229, type: !85)
!5922 = !DILocalVariable(name: "filp", scope: !5923, file: !3, line: 233, type: !1286)
!5923 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 232, column: 23)
!5924 = distinct !DILexicalBlock(scope: !5914, file: !3, line: 232, column: 6)
!5925 = !DILocalVariable(name: "path", scope: !5923, file: !3, line: 234, type: !752)
!5926 = !DILabel(scope: !5914, name: "out", file: !3, line: 252)
!5927 = !DILocation(line: 227, column: 57, scope: !5914)
!5928 = !DILocation(line: 227, column: 69, scope: !5914)
!5929 = !DILocation(line: 229, column: 2, scope: !5914)
!5930 = !DILocation(line: 229, column: 6, scope: !5914)
!5931 = !DILocation(line: 229, column: 11, scope: !5914)
!5932 = !DILocation(line: 231, column: 7, scope: !5914)
!5933 = !DILocation(line: 231, column: 5, scope: !5914)
!5934 = !DILocation(line: 232, column: 6, scope: !5924)
!5935 = !DILocation(line: 232, column: 6, scope: !5914)
!5936 = !DILocation(line: 233, column: 3, scope: !5923)
!5937 = !DILocation(line: 233, column: 16, scope: !5923)
!5938 = !DILocation(line: 234, column: 3, scope: !5923)
!5939 = !DILocation(line: 234, column: 15, scope: !5923)
!5940 = !DILocation(line: 236, column: 27, scope: !5923)
!5941 = !DILocation(line: 236, column: 9, scope: !5923)
!5942 = !DILocation(line: 236, column: 7, scope: !5923)
!5943 = !DILocation(line: 237, column: 7, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 237, column: 7)
!5945 = !DILocation(line: 237, column: 7, scope: !5923)
!5946 = !DILocation(line: 238, column: 4, scope: !5944)
!5947 = !DILocation(line: 240, column: 39, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 240, column: 39)
!5949 = !DILocation(line: 240, column: 39, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 240, column: 39)
!5951 = !DILocation(line: 240, column: 10, scope: !5923)
!5952 = !DILocation(line: 240, column: 8, scope: !5923)
!5953 = !DILocation(line: 241, column: 3, scope: !5923)
!5954 = !DILocation(line: 242, column: 14, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 242, column: 7)
!5956 = !DILocation(line: 242, column: 7, scope: !5955)
!5957 = !DILocation(line: 242, column: 7, scope: !5923)
!5958 = !DILocation(line: 243, column: 18, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !3, line: 242, column: 21)
!5960 = !DILocation(line: 243, column: 10, scope: !5959)
!5961 = !DILocation(line: 243, column: 8, scope: !5959)
!5962 = !DILocation(line: 244, column: 4, scope: !5959)
!5963 = !DILocation(line: 247, column: 14, scope: !5923)
!5964 = !DILocation(line: 247, column: 18, scope: !5923)
!5965 = !DILocation(line: 247, column: 3, scope: !5923)
!5966 = !DILocation(line: 248, column: 2, scope: !5924)
!5967 = !DILocation(line: 248, column: 2, scope: !5923)
!5968 = !DILocation(line: 250, column: 9, scope: !5914)
!5969 = !DILocation(line: 250, column: 2, scope: !5914)
!5970 = !DILocation(line: 252, column: 1, scope: !5914)
!5971 = !DILocation(line: 253, column: 16, scope: !5914)
!5972 = !DILocation(line: 253, column: 2, scope: !5914)
!5973 = !DILocation(line: 254, column: 9, scope: !5914)
!5974 = !DILocation(line: 254, column: 2, scope: !5914)
!5975 = !DILocation(line: 255, column: 1, scope: !5914)
!5976 = !DISubprogram(name: "get_unused_fd_flags", scope: !5023, file: !5023, line: 91, type: !5977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5977 = !DISubroutineType(types: !5978)
!5978 = !{!85, !7}
!5979 = distinct !DISubprogram(name: "find_autofs_mount", scope: !3, file: !3, line: 183, type: !5980, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5985)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!85, !164, !3073, !5982, !317}
!5982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5983, size: 64)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!85, !750, !317}
!5985 = !{!5986, !5987, !5988, !5989, !5990, !5991}
!5986 = !DILocalVariable(name: "pathname", arg: 1, scope: !5979, file: !3, line: 183, type: !164)
!5987 = !DILocalVariable(name: "res", arg: 2, scope: !5979, file: !3, line: 184, type: !3073)
!5988 = !DILocalVariable(name: "test", arg: 3, scope: !5979, file: !3, line: 185, type: !5982)
!5989 = !DILocalVariable(name: "data", arg: 4, scope: !5979, file: !3, line: 186, type: !317)
!5990 = !DILocalVariable(name: "path", scope: !5979, file: !3, line: 188, type: !752)
!5991 = !DILocalVariable(name: "err", scope: !5979, file: !3, line: 189, type: !85)
!5992 = !DILocation(line: 183, column: 42, scope: !5979)
!5993 = !DILocation(line: 184, column: 22, scope: !5979)
!5994 = !DILocation(line: 185, column: 13, scope: !5979)
!5995 = !DILocation(line: 186, column: 15, scope: !5979)
!5996 = !DILocation(line: 188, column: 2, scope: !5979)
!5997 = !DILocation(line: 188, column: 14, scope: !5979)
!5998 = !DILocation(line: 189, column: 2, scope: !5979)
!5999 = !DILocation(line: 189, column: 6, scope: !5979)
!6000 = !DILocation(line: 191, column: 18, scope: !5979)
!6001 = !DILocation(line: 191, column: 8, scope: !5979)
!6002 = !DILocation(line: 191, column: 6, scope: !5979)
!6003 = !DILocation(line: 192, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 192, column: 6)
!6005 = !DILocation(line: 192, column: 6, scope: !5979)
!6006 = !DILocation(line: 193, column: 10, scope: !6004)
!6007 = !DILocation(line: 193, column: 3, scope: !6004)
!6008 = !DILocation(line: 194, column: 6, scope: !5979)
!6009 = !DILocation(line: 195, column: 2, scope: !5979)
!6010 = !DILocation(line: 195, column: 14, scope: !5979)
!6011 = !DILocation(line: 195, column: 29, scope: !5979)
!6012 = !DILocation(line: 195, column: 34, scope: !5979)
!6013 = !DILocation(line: 195, column: 21, scope: !5979)
!6014 = !DILocation(line: 196, column: 12, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 196, column: 7)
!6016 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 195, column: 44)
!6017 = !DILocation(line: 196, column: 20, scope: !6015)
!6018 = !DILocation(line: 196, column: 26, scope: !6015)
!6019 = !DILocation(line: 196, column: 34, scope: !6015)
!6020 = !DILocation(line: 196, column: 7, scope: !6016)
!6021 = !DILocation(line: 197, column: 8, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 197, column: 8)
!6023 = distinct !DILexicalBlock(scope: !6015, file: !3, line: 196, column: 57)
!6024 = !DILocation(line: 197, column: 20, scope: !6022)
!6025 = !DILocation(line: 197, column: 8, scope: !6023)
!6026 = !DILocation(line: 198, column: 5, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 197, column: 27)
!6028 = !DILocation(line: 199, column: 6, scope: !6027)
!6029 = !DILocation(line: 199, column: 12, scope: !6027)
!6030 = !DILocation(line: 200, column: 9, scope: !6027)
!6031 = !DILocation(line: 201, column: 5, scope: !6027)
!6032 = !DILocation(line: 203, column: 3, scope: !6023)
!6033 = !DILocation(line: 204, column: 8, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 204, column: 7)
!6035 = !DILocation(line: 204, column: 7, scope: !6016)
!6036 = !DILocation(line: 205, column: 4, scope: !6034)
!6037 = distinct !{!6037, !6009, !6038, !6039, !6040}
!6038 = !DILocation(line: 206, column: 2, scope: !5979)
!6039 = !{!"llvm.loop.mustprogress"}
!6040 = !{!"llvm.loop.unroll.disable"}
!6041 = !DILocation(line: 207, column: 2, scope: !5979)
!6042 = !DILocation(line: 208, column: 9, scope: !5979)
!6043 = !DILocation(line: 208, column: 2, scope: !5979)
!6044 = !DILocation(line: 209, column: 1, scope: !5979)
!6045 = distinct !DISubprogram(name: "test_by_dev", scope: !3, file: !3, line: 211, type: !5983, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6046)
!6046 = !{!6047, !6048}
!6047 = !DILocalVariable(name: "path", arg: 1, scope: !6045, file: !3, line: 211, type: !750)
!6048 = !DILocalVariable(name: "p", arg: 2, scope: !6045, file: !3, line: 211, type: !317)
!6049 = !DILocation(line: 211, column: 43, scope: !6045)
!6050 = !DILocation(line: 211, column: 55, scope: !6045)
!6051 = !DILocation(line: 213, column: 9, scope: !6045)
!6052 = !DILocation(line: 213, column: 15, scope: !6045)
!6053 = !DILocation(line: 213, column: 23, scope: !6045)
!6054 = !DILocation(line: 213, column: 29, scope: !6045)
!6055 = !DILocation(line: 213, column: 48, scope: !6045)
!6056 = !DILocation(line: 213, column: 38, scope: !6045)
!6057 = !DILocation(line: 213, column: 35, scope: !6045)
!6058 = !DILocation(line: 213, column: 2, scope: !6045)
!6059 = !DISubprogram(name: "dentry_open", scope: !14, file: !14, line: 2514, type: !6060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{!1286, !750, !85, !1355}
!6062 = !DISubprogram(name: "path_put", scope: !753, file: !753, line: 14, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{null, !750}
!6065 = !DISubprogram(name: "fd_install", scope: !5023, file: !5023, line: 97, type: !6066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !7, !1286}
!6068 = !DISubprogram(name: "put_unused_fd", scope: !5023, file: !5023, line: 92, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{null, !7}
!6071 = !DISubprogram(name: "kern_path", scope: !6072, file: !6072, line: 63, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6072 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!85, !164, !7, !3073}
!6075 = !DISubprogram(name: "path_get", scope: !753, file: !753, line: 13, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6076 = !DISubprogram(name: "follow_up", scope: !6072, file: !6072, line: 89, type: !6077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!85, !3073}
!6079 = !DISubprogram(name: "close_fd", scope: !2156, file: !2156, line: 128, type: !5977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6080 = !DISubprogram(name: "autofs_wait_release", scope: !4064, file: !4064, line: 229, type: !6081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!85, !4072, !4060, !85}
!6083 = !DISubprogram(name: "mutex_lock", scope: !627, file: !627, line: 227, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{null, !6086}
!6086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!6087 = !DISubprogram(name: "mutex_unlock", scope: !627, file: !627, line: 246, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubprogram(name: "get_task_pid", scope: !30, file: !30, line: 100, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!1327, !955, !29}
!6091 = distinct !DISubprogram(name: "ns_of_pid", scope: !30, file: !30, line: 152, type: !6092, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6094)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!1346, !1327}
!6094 = !{!6095, !6096}
!6095 = !DILocalVariable(name: "pid", arg: 1, scope: !6091, file: !30, line: 152, type: !1327)
!6096 = !DILocalVariable(name: "ns", scope: !6091, file: !30, line: 154, type: !1346)
!6097 = !DILocation(line: 152, column: 59, scope: !6091)
!6098 = !DILocation(line: 154, column: 2, scope: !6091)
!6099 = !DILocation(line: 154, column: 24, scope: !6091)
!6100 = !DILocation(line: 155, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6091, file: !30, line: 155, column: 6)
!6102 = !DILocation(line: 155, column: 6, scope: !6091)
!6103 = !DILocation(line: 156, column: 8, scope: !6101)
!6104 = !DILocation(line: 156, column: 13, scope: !6101)
!6105 = !DILocation(line: 156, column: 21, scope: !6101)
!6106 = !DILocation(line: 156, column: 26, scope: !6101)
!6107 = !DILocation(line: 156, column: 33, scope: !6101)
!6108 = !DILocation(line: 156, column: 6, scope: !6101)
!6109 = !DILocation(line: 156, column: 3, scope: !6101)
!6110 = !DILocation(line: 157, column: 9, scope: !6091)
!6111 = !DILocation(line: 158, column: 1, scope: !6091)
!6112 = !DILocation(line: 157, column: 2, scope: !6091)
!6113 = distinct !DISubprogram(name: "autofs_prepare_pipe", scope: !4064, file: !4064, line: 212, type: !6114, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6116)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!85, !1286}
!6116 = !{!6117}
!6117 = !DILocalVariable(name: "pipe", arg: 1, scope: !6113, file: !4064, line: 212, type: !1286)
!6118 = !DILocation(line: 212, column: 52, scope: !6113)
!6119 = !DILocation(line: 214, column: 8, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6113, file: !4064, line: 214, column: 6)
!6121 = !DILocation(line: 214, column: 14, scope: !6120)
!6122 = !DILocation(line: 214, column: 21, scope: !6120)
!6123 = !DILocation(line: 214, column: 6, scope: !6113)
!6124 = !DILocation(line: 215, column: 3, scope: !6120)
!6125 = !DILocation(line: 216, column: 7, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6113, file: !4064, line: 216, column: 6)
!6127 = !DILocation(line: 216, column: 6, scope: !6113)
!6128 = !DILocation(line: 217, column: 3, scope: !6126)
!6129 = !DILocation(line: 219, column: 2, scope: !6113)
!6130 = !DILocation(line: 219, column: 8, scope: !6113)
!6131 = !DILocation(line: 219, column: 16, scope: !6113)
!6132 = !DILocation(line: 221, column: 2, scope: !6113)
!6133 = !DILocation(line: 221, column: 8, scope: !6113)
!6134 = !DILocation(line: 221, column: 16, scope: !6113)
!6135 = !DILocation(line: 222, column: 2, scope: !6113)
!6136 = !DILocation(line: 223, column: 1, scope: !6113)
!6137 = !DISubprogram(name: "put_pid", scope: !30, file: !30, line: 92, type: !6138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{null, !1327}
!6140 = !DISubprogram(name: "autofs_catatonic_mode", scope: !4064, file: !4064, line: 230, type: !6141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6141 = !DISubroutineType(types: !6142)
!6142 = !{null, !4072}
!6143 = distinct !DISubprogram(name: "autofs_dentry_ino", scope: !4064, file: !4064, line: 134, type: !6144, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6146)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!4062, !361}
!6146 = !{!6147}
!6147 = !DILocalVariable(name: "dentry", arg: 1, scope: !6143, file: !4064, line: 134, type: !361)
!6148 = !DILocation(line: 134, column: 68, scope: !6143)
!6149 = !DILocation(line: 136, column: 32, scope: !6143)
!6150 = !DILocation(line: 136, column: 40, scope: !6143)
!6151 = !DILocation(line: 136, column: 2, scope: !6143)
!6152 = !DISubprogram(name: "autofs_expire_wait", scope: !4064, file: !4064, line: 159, type: !6153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!85, !750, !85}
!6155 = distinct !DISubprogram(name: "spin_lock", scope: !6156, file: !6156, line: 349, type: !6157, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6160)
!6156 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6157 = !DISubroutineType(types: !6158)
!6158 = !{null, !6159}
!6159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!6160 = !{!6161}
!6161 = !DILocalVariable(name: "lock", arg: 1, scope: !6155, file: !6156, line: 349, type: !6159)
!6162 = !DILocation(line: 349, column: 51, scope: !6155)
!6163 = !DILocation(line: 351, column: 2, scope: !6155)
!6164 = !DILocation(line: 352, column: 1, scope: !6155)
!6165 = distinct !DISubprogram(name: "from_kuid_munged", scope: !333, file: !333, line: 163, type: !6166, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!337, !1530, !332}
!6168 = !{!6169, !6170, !6171}
!6169 = !DILocalVariable(name: "to", arg: 1, scope: !6165, file: !333, line: 163, type: !1530)
!6170 = !DILocalVariable(name: "kuid", arg: 2, scope: !6165, file: !333, line: 163, type: !332)
!6171 = !DILocalVariable(name: "uid", scope: !6165, file: !333, line: 165, type: !337)
!6172 = !DILocation(line: 163, column: 61, scope: !6165)
!6173 = !DILocation(line: 163, column: 72, scope: !6165)
!6174 = !DILocation(line: 165, column: 2, scope: !6165)
!6175 = !DILocation(line: 165, column: 8, scope: !6165)
!6176 = !DILocation(line: 165, column: 24, scope: !6165)
!6177 = !DILocation(line: 165, column: 14, scope: !6165)
!6178 = !DILocation(line: 166, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6165, file: !333, line: 166, column: 6)
!6180 = !DILocation(line: 166, column: 10, scope: !6179)
!6181 = !DILocation(line: 166, column: 6, scope: !6165)
!6182 = !DILocation(line: 167, column: 9, scope: !6179)
!6183 = !DILocation(line: 167, column: 7, scope: !6179)
!6184 = !DILocation(line: 167, column: 3, scope: !6179)
!6185 = !DILocation(line: 168, column: 9, scope: !6165)
!6186 = !DILocation(line: 169, column: 1, scope: !6165)
!6187 = !DILocation(line: 168, column: 2, scope: !6165)
!6188 = distinct !DISubprogram(name: "current_user_ns", scope: !1358, file: !1358, line: 346, type: !6189, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!1530}
!6191 = !DILocation(line: 348, column: 2, scope: !6188)
!6192 = distinct !DISubprogram(name: "from_kgid_munged", scope: !333, file: !333, line: 171, type: !6193, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6195)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{!345, !1530, !341}
!6195 = !{!6196, !6197, !6198}
!6196 = !DILocalVariable(name: "to", arg: 1, scope: !6192, file: !333, line: 171, type: !1530)
!6197 = !DILocalVariable(name: "kgid", arg: 2, scope: !6192, file: !333, line: 171, type: !341)
!6198 = !DILocalVariable(name: "gid", scope: !6192, file: !333, line: 173, type: !345)
!6199 = !DILocation(line: 171, column: 61, scope: !6192)
!6200 = !DILocation(line: 171, column: 72, scope: !6192)
!6201 = !DILocation(line: 173, column: 2, scope: !6192)
!6202 = !DILocation(line: 173, column: 8, scope: !6192)
!6203 = !DILocation(line: 173, column: 24, scope: !6192)
!6204 = !DILocation(line: 173, column: 14, scope: !6192)
!6205 = !DILocation(line: 174, column: 6, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6192, file: !333, line: 174, column: 6)
!6207 = !DILocation(line: 174, column: 10, scope: !6206)
!6208 = !DILocation(line: 174, column: 6, scope: !6192)
!6209 = !DILocation(line: 175, column: 9, scope: !6206)
!6210 = !DILocation(line: 175, column: 7, scope: !6206)
!6211 = !DILocation(line: 175, column: 3, scope: !6206)
!6212 = !DILocation(line: 176, column: 9, scope: !6192)
!6213 = !DILocation(line: 177, column: 1, scope: !6192)
!6214 = !DILocation(line: 176, column: 2, scope: !6192)
!6215 = distinct !DISubprogram(name: "spin_unlock", scope: !6156, file: !6156, line: 389, type: !6157, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6216)
!6216 = !{!6217}
!6217 = !DILocalVariable(name: "lock", arg: 1, scope: !6215, file: !6156, line: 389, type: !6159)
!6218 = !DILocation(line: 389, column: 53, scope: !6215)
!6219 = !DILocation(line: 391, column: 2, scope: !6215)
!6220 = !DILocation(line: 392, column: 1, scope: !6215)
!6221 = !DISubprogram(name: "_raw_spin_lock", scope: !6222, file: !6222, line: 22, type: !6223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6222 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6223 = !DISubroutineType(types: !6224)
!6224 = !{null, !6225}
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!6226 = distinct !DISubprogram(name: "from_kuid", scope: !333, file: !333, line: 153, type: !6166, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229}
!6228 = !DILocalVariable(name: "to", arg: 1, scope: !6226, file: !333, line: 153, type: !1530)
!6229 = !DILocalVariable(name: "kuid", arg: 2, scope: !6226, file: !333, line: 153, type: !332)
!6230 = !DILocation(line: 153, column: 54, scope: !6226)
!6231 = !DILocation(line: 153, column: 65, scope: !6226)
!6232 = !DILocation(line: 155, column: 9, scope: !6226)
!6233 = !DILocation(line: 155, column: 2, scope: !6226)
!6234 = distinct !DISubprogram(name: "__kuid_val", scope: !333, file: !333, line: 34, type: !6235, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6237)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!337, !332}
!6237 = !{!6238}
!6238 = !DILocalVariable(name: "uid", arg: 1, scope: !6234, file: !333, line: 34, type: !332)
!6239 = !DILocation(line: 34, column: 39, scope: !6234)
!6240 = !DILocation(line: 36, column: 13, scope: !6234)
!6241 = !DILocation(line: 36, column: 2, scope: !6234)
!6242 = distinct !DISubprogram(name: "from_kgid", scope: !333, file: !333, line: 158, type: !6193, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6243)
!6243 = !{!6244, !6245}
!6244 = !DILocalVariable(name: "to", arg: 1, scope: !6242, file: !333, line: 158, type: !1530)
!6245 = !DILocalVariable(name: "kgid", arg: 2, scope: !6242, file: !333, line: 158, type: !341)
!6246 = !DILocation(line: 158, column: 54, scope: !6242)
!6247 = !DILocation(line: 158, column: 65, scope: !6242)
!6248 = !DILocation(line: 160, column: 9, scope: !6242)
!6249 = !DILocation(line: 160, column: 2, scope: !6242)
!6250 = distinct !DISubprogram(name: "__kgid_val", scope: !333, file: !333, line: 39, type: !6251, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!345, !341}
!6253 = !{!6254}
!6254 = !DILocalVariable(name: "gid", arg: 1, scope: !6250, file: !333, line: 39, type: !341)
!6255 = !DILocation(line: 39, column: 39, scope: !6250)
!6256 = !DILocation(line: 41, column: 13, scope: !6250)
!6257 = !DILocation(line: 41, column: 2, scope: !6250)
!6258 = !DISubprogram(name: "_raw_spin_unlock", scope: !6222, file: !6222, line: 39, type: !6223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6259 = !DISubprogram(name: "autofs_do_expire_multi", scope: !4064, file: !4064, line: 163, type: !6260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!85, !477, !471, !4072, !7}
!6262 = !DISubprogram(name: "may_umount", scope: !473, file: !473, line: 117, type: !6263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6263 = !DISubroutineType(types: !6264)
!6264 = !{!85, !471}
!6265 = distinct !DISubprogram(name: "autofs_type_any", scope: !4061, file: !4061, line: 148, type: !6266, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6268)
!6266 = !DISubroutineType(types: !6267)
!6267 = !{!7, !7}
!6268 = !{!6269}
!6269 = !DILocalVariable(name: "type", arg: 1, scope: !6265, file: !4061, line: 148, type: !7)
!6270 = !DILocation(line: 148, column: 57, scope: !6265)
!6271 = !DILocation(line: 150, column: 10, scope: !6265)
!6272 = !DILocation(line: 150, column: 15, scope: !6265)
!6273 = !DILocation(line: 150, column: 2, scope: !6265)
!6274 = distinct !DISubprogram(name: "test_by_type", scope: !3, file: !3, line: 216, type: !5983, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6275)
!6275 = !{!6276, !6277, !6278}
!6276 = !DILocalVariable(name: "path", arg: 1, scope: !6274, file: !3, line: 216, type: !750)
!6277 = !DILocalVariable(name: "p", arg: 2, scope: !6274, file: !3, line: 216, type: !317)
!6278 = !DILocalVariable(name: "ino", scope: !6274, file: !3, line: 218, type: !4062)
!6279 = !DILocation(line: 216, column: 44, scope: !6274)
!6280 = !DILocation(line: 216, column: 56, scope: !6274)
!6281 = !DILocation(line: 218, column: 2, scope: !6274)
!6282 = !DILocation(line: 218, column: 22, scope: !6274)
!6283 = !DILocation(line: 218, column: 46, scope: !6274)
!6284 = !DILocation(line: 218, column: 52, scope: !6274)
!6285 = !DILocation(line: 218, column: 28, scope: !6274)
!6286 = !DILocation(line: 220, column: 9, scope: !6274)
!6287 = !DILocation(line: 220, column: 13, scope: !6274)
!6288 = !DILocation(line: 220, column: 16, scope: !6274)
!6289 = !DILocation(line: 220, column: 21, scope: !6274)
!6290 = !DILocation(line: 220, column: 26, scope: !6274)
!6291 = !DILocation(line: 220, column: 46, scope: !6274)
!6292 = !DILocation(line: 220, column: 33, scope: !6274)
!6293 = !DILocation(line: 220, column: 31, scope: !6274)
!6294 = !DILocation(line: 0, scope: !6274)
!6295 = !DILocation(line: 221, column: 1, scope: !6274)
!6296 = !DILocation(line: 220, column: 2, scope: !6274)
!6297 = distinct !DISubprogram(name: "new_encode_dev", scope: !5890, file: !5890, line: 39, type: !6298, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6298 = !DISubroutineType(types: !6299)
!6299 = !{!395, !482}
!6300 = !{!6301, !6302, !6303}
!6301 = !DILocalVariable(name: "dev", arg: 1, scope: !6297, file: !5890, line: 39, type: !482)
!6302 = !DILocalVariable(name: "major", scope: !6297, file: !5890, line: 41, type: !7)
!6303 = !DILocalVariable(name: "minor", scope: !6297, file: !5890, line: 42, type: !7)
!6304 = !DILocation(line: 39, column: 49, scope: !6297)
!6305 = !DILocation(line: 41, column: 2, scope: !6297)
!6306 = !DILocation(line: 41, column: 11, scope: !6297)
!6307 = !DILocation(line: 41, column: 19, scope: !6297)
!6308 = !DILocation(line: 42, column: 2, scope: !6297)
!6309 = !DILocation(line: 42, column: 11, scope: !6297)
!6310 = !DILocation(line: 42, column: 19, scope: !6297)
!6311 = !DILocation(line: 43, column: 10, scope: !6297)
!6312 = !DILocation(line: 43, column: 16, scope: !6297)
!6313 = !DILocation(line: 43, column: 27, scope: !6297)
!6314 = !DILocation(line: 43, column: 33, scope: !6297)
!6315 = !DILocation(line: 43, column: 24, scope: !6297)
!6316 = !DILocation(line: 43, column: 43, scope: !6297)
!6317 = !DILocation(line: 43, column: 49, scope: !6297)
!6318 = !DILocation(line: 43, column: 58, scope: !6297)
!6319 = !DILocation(line: 43, column: 39, scope: !6297)
!6320 = !DILocation(line: 44, column: 1, scope: !6297)
!6321 = !DILocation(line: 43, column: 2, scope: !6297)
!6322 = !DISubprogram(name: "path_has_submounts", scope: !363, file: !363, line: 262, type: !6323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!85, !750}
!6325 = !DISubprogram(name: "follow_down_one", scope: !6072, file: !6072, line: 87, type: !6077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6326 = distinct !DISubprogram(name: "task_pgrp", scope: !2191, file: !2191, line: 692, type: !6327, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6329)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!1327, !955}
!6329 = !{!6330}
!6330 = !DILocalVariable(name: "task", arg: 1, scope: !6326, file: !2191, line: 692, type: !955)
!6331 = !DILocation(line: 692, column: 57, scope: !6326)
!6332 = !DILocation(line: 694, column: 9, scope: !6326)
!6333 = !DILocation(line: 694, column: 15, scope: !6326)
!6334 = !DILocation(line: 694, column: 23, scope: !6326)
!6335 = !DILocation(line: 694, column: 2, scope: !6326)
!6336 = !DISubprogram(name: "_copy_to_user", scope: !5064, file: !5064, line: 176, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6337 = !DISubprogram(name: "kfree", scope: !6338, file: !6338, line: 227, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6338 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6339 = !DISubroutineType(types: !6340)
!6340 = !{null, !1931}
!6341 = distinct !DISubprogram(name: "compat_ptr", scope: !2532, file: !2532, line: 977, type: !6342, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!317, !2538}
!6344 = !{!6345}
!6345 = !DILocalVariable(name: "uptr", arg: 1, scope: !6341, file: !2532, line: 977, type: !2538)
!6346 = !DILocation(line: 977, column: 53, scope: !6341)
!6347 = !DILocation(line: 979, column: 39, scope: !6341)
!6348 = !DILocation(line: 979, column: 24, scope: !6341)
!6349 = !DILocation(line: 979, column: 9, scope: !6341)
!6350 = !DILocation(line: 979, column: 2, scope: !6341)
