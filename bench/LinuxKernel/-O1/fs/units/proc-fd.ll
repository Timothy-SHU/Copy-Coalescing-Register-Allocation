; ModuleID = 'fs/proc/fd.c'
source_filename = "fs/proc/fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mnt_idmap = type opaque
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.static_call_key = type { ptr, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.lockdep_map = type {}
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.pcpu_hot = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [16 x i8] }
%struct.anon.28 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.19 = type { ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i64 }
%struct.fd_data = type { i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.24, %struct.list_head, %struct.list_head, %union.anon.25 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.20, ptr }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%struct.anon.23 = type { %struct.spinlock, i32 }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x ptr], [32 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.29, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.30, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.29 = type { %struct.callback_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }

@proc_fd_operations = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfd, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@nop_mnt_idmap = external dso_local global %struct.mnt_idmap, align 1
@proc_fd_inode_operations = hidden constant %struct.inode_operations { ptr @proc_lookupfd, ptr null, ptr @proc_fd_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @proc_fd_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3970
@proc_fdinfo_inode_operations = hidden constant %struct.inode_operations { ptr @proc_lookupfdinfo, ptr null, ptr @proc_fdinfo_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !3972
@proc_fdinfo_operations = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfdinfo, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3974
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1, !dbg !3976
@.str.1 = private unnamed_addr constant [13 x i8] c"fs/proc/fd.c\00", align 1, !dbg !3979
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !3984
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !3987
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !3989
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !3994
@proc_pid_link_inode_operations = external dso_local constant %struct.inode_operations, align 64
@tid_fd_dentry_operations = internal constant %struct.dentry_operations { ptr @tid_fd_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [24 x i8] undef }, align 64, !dbg !4003
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@proc_fdinfo_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @proc_fdinfo_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !4005
@proc_fdinfo_file_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @seq_fdinfo_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4007
@.str.4 = private unnamed_addr constant [42 x i8] c"pos:\09%lli\0Aflags:\090%o\0Amnt_id:\09%i\0Aino:\09%lu\0A\00", align 1, !dbg !4009
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched149], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_read_dir(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_readfd(ptr noundef %file, ptr noundef %ctx) #1 align 16 !dbg !4023 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4025, metadata !DIExpression()), !dbg !4027
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4026, metadata !DIExpression()), !dbg !4028
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4029
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !4030
  %call = call i32 @proc_readfd_common(ptr noundef %0, ptr noundef %1, ptr noundef @proc_fd_instantiate) #10, !dbg !4031
  ret i32 %call, !dbg !4032
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @proc_fd_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #1 align 16 !dbg !4033 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4035, metadata !DIExpression()), !dbg !4040
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4036, metadata !DIExpression()), !dbg !4041
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4037, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !4043
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4038, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #11, !dbg !4045
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !4039, metadata !DIExpression()), !dbg !4046
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4047
  %1 = load i32, ptr %mask.addr, align 4, !dbg !4048
  %call = call i32 @generic_permission(ptr noundef @nop_mnt_idmap, ptr noundef %0, i32 noundef %1) #10, !dbg !4049
  store i32 %call, ptr %rv, align 4, !dbg !4050
  %2 = load i32, ptr %rv, align 4, !dbg !4051
  %cmp = icmp eq i32 %2, 0, !dbg !4053
  br i1 %cmp, label %if.then, label %if.end, !dbg !4054

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !4055
  store i32 %3, ptr %retval, align 4, !dbg !4056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4056

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #10, !dbg !4057
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !4058
  %call1 = call ptr @proc_pid(ptr noundef %4) #10, !dbg !4059
  %call2 = call ptr @pid_task(ptr noundef %call1, i32 noundef 0) #10, !dbg !4060
  store ptr %call2, ptr %p, align 8, !dbg !4061
  %5 = load ptr, ptr %p, align 8, !dbg !4062
  %tobool = icmp ne ptr %5, null, !dbg !4062
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !4064

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !4065
  %call3 = call ptr @get_current() #10, !dbg !4066
  %call4 = call zeroext i1 @same_thread_group(ptr noundef %6, ptr noundef %call3) #10, !dbg !4067
  br i1 %call4, label %if.then5, label %if.end6, !dbg !4068

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %rv, align 4, !dbg !4069
  br label %if.end6, !dbg !4070

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  call void @rcu_read_unlock() #10, !dbg !4071
  %7 = load i32, ptr %rv, align 4, !dbg !4072
  store i32 %7, ptr %retval, align 4, !dbg !4073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4073

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #11, !dbg !4074
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !4074
  %8 = load i32, ptr %retval, align 4, !dbg !4074
  ret i32 %8, !dbg !4074
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4075 dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #4 align 16 !dbg !4076 {
entry:
  call void @__rcu_read_lock() #10, !dbg !4078
  br label %do.body, !dbg !4079

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4080

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4082

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4083

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4086 dso_local ptr @pid_task(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_pid(ptr noundef %inode) #5 align 16 !dbg !4089 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4095
  %call = call ptr @PROC_I(ptr noundef %0) #10, !dbg !4096
  %pid = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 0, !dbg !4097
  %1 = load ptr, ptr %pid, align 8, !dbg !4097
  ret ptr %1, !dbg !4098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @same_thread_group(ptr noundef %p1, ptr noundef %p2) #5 align 16 !dbg !4099 {
entry:
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !4103, metadata !DIExpression()), !dbg !4105
  store ptr %p2, ptr %p2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !4104, metadata !DIExpression()), !dbg !4106
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !4107
  %signal = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 104, !dbg !4108
  %1 = load ptr, ptr %signal, align 64, !dbg !4108
  %2 = load ptr, ptr %p2.addr, align 8, !dbg !4109
  %signal1 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 104, !dbg !4110
  %3 = load ptr, ptr %signal1, align 64, !dbg !4110
  %cmp = icmp eq ptr %1, %3, !dbg !4111
  ret i1 %cmp, !dbg !4112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !4113 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4126
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4118, metadata !DIExpression()), !dbg !4126
  br label %do.body, !dbg !4126

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4127
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4120, metadata !DIExpression()), !dbg !4127
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4127
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4126
  br label %do.cond, !dbg !4127

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4127

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !4128
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4124, metadata !DIExpression()), !dbg !4128
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #12, !dbg !4128, !srcloc !4129
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4128
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4128
  %3 = inttoptr i64 %2 to ptr, !dbg !4128
  store ptr %3, ptr %tmp, align 8, !dbg !4128
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !4126
  %4 = load ptr, ptr %tmp, align 8, !dbg !4128
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4126
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4126
  store ptr %5, ptr %tmp1, align 8, !dbg !4126
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4130
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4126
  ret ptr %6, !dbg !4131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !4132 {
entry:
  br label %do.body, !dbg !4133

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4134

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #10, !dbg !4136
  br label %do.body1, !dbg !4137

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4138

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_lookupfd(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 16 !dbg !4141 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4143, metadata !DIExpression()), !dbg !4146
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4144, metadata !DIExpression()), !dbg !4147
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4145, metadata !DIExpression()), !dbg !4148
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4149
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4150
  %call = call ptr @proc_lookupfd_common(ptr noundef %0, ptr noundef %1, ptr noundef @proc_fd_instantiate) #10, !dbg !4151
  ret ptr %call, !dbg !4152
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_fd_getattr(ptr noundef %idmap, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #1 align 16 !dbg !4153 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %request_mask.addr = alloca i32, align 4
  %query_flags.addr = alloca i32, align 4
  %inode = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4155, metadata !DIExpression()), !dbg !4162
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4156, metadata !DIExpression()), !dbg !4163
  store ptr %stat, ptr %stat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stat.addr, metadata !4157, metadata !DIExpression()), !dbg !4164
  store i32 %request_mask, ptr %request_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request_mask.addr, metadata !4158, metadata !DIExpression()), !dbg !4165
  store i32 %query_flags, ptr %query_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %query_flags.addr, metadata !4159, metadata !DIExpression()), !dbg !4166
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4167
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4160, metadata !DIExpression()), !dbg !4168
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4169
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !4170
  %1 = load ptr, ptr %dentry, align 8, !dbg !4170
  %call = call ptr @d_inode(ptr noundef %1) #10, !dbg !4171
  store ptr %call, ptr %inode, align 8, !dbg !4168
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #11, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !4161, metadata !DIExpression()), !dbg !4173
  store i32 0, ptr %rv, align 4, !dbg !4173
  %2 = load i32, ptr %request_mask.addr, align 4, !dbg !4174
  %3 = load ptr, ptr %inode, align 8, !dbg !4175
  %4 = load ptr, ptr %stat.addr, align 8, !dbg !4176
  call void @generic_fillattr(ptr noundef @nop_mnt_idmap, i32 noundef %2, ptr noundef %3, ptr noundef %4) #10, !dbg !4177
  %5 = load ptr, ptr %inode, align 8, !dbg !4178
  %i_mode = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 0, !dbg !4178
  %6 = load i16, ptr %i_mode, align 8, !dbg !4178
  %conv = zext i16 %6 to i32, !dbg !4178
  %and = and i32 %conv, 61440, !dbg !4178
  %cmp = icmp eq i32 %and, 16384, !dbg !4178
  br i1 %cmp, label %if.then, label %if.end6, !dbg !4180

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %inode, align 8, !dbg !4181
  %8 = load ptr, ptr %stat.addr, align 8, !dbg !4183
  %size = getelementptr inbounds %struct.kstat, ptr %8, i32 0, i32 11, !dbg !4184
  %call2 = call i32 @proc_readfd_count(ptr noundef %7, ptr noundef %size) #10, !dbg !4185
  store i32 %call2, ptr %rv, align 4, !dbg !4186
  %9 = load i32, ptr %rv, align 4, !dbg !4187
  %cmp3 = icmp slt i32 %9, 0, !dbg !4189
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4190

if.then5:                                         ; preds = %if.then
  %10 = load i32, ptr %rv, align 4, !dbg !4191
  store i32 %10, ptr %retval, align 4, !dbg !4192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4192

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !4193

if.end6:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %rv, align 4, !dbg !4194
  store i32 %11, ptr %retval, align 4, !dbg !4195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4195

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #11, !dbg !4196
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4196
  %12 = load i32, ptr %retval, align 4, !dbg !4196
  ret i32 %12, !dbg !4196
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_lookupfdinfo(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 16 !dbg !4197 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4199, metadata !DIExpression()), !dbg !4202
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4200, metadata !DIExpression()), !dbg !4203
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4201, metadata !DIExpression()), !dbg !4204
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !4205
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4206
  %call = call ptr @proc_lookupfd_common(ptr noundef %0, ptr noundef %1, ptr noundef @proc_fdinfo_instantiate) #10, !dbg !4207
  ret ptr %call, !dbg !4208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_fdinfo_permission(ptr noundef %idmap, ptr noundef %inode, i32 noundef %mask) #1 align 16 !dbg !4209 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %allowed = alloca i8, align 1
  %task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4211, metadata !DIExpression()), !dbg !4216
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4212, metadata !DIExpression()), !dbg !4217
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4213, metadata !DIExpression()), !dbg !4218
  call void @llvm.lifetime.start.p0(i64 1, ptr %allowed) #11, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %allowed, metadata !4214, metadata !DIExpression()), !dbg !4220
  store i8 0, ptr %allowed, align 1, !dbg !4220
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !4221
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4215, metadata !DIExpression()), !dbg !4222
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4223
  %call = call ptr @get_proc_task(ptr noundef %0) #10, !dbg !4224
  store ptr %call, ptr %task, align 8, !dbg !4222
  %1 = load ptr, ptr %task, align 8, !dbg !4225
  %tobool = icmp ne ptr %1, null, !dbg !4225
  br i1 %tobool, label %if.end, label %if.then, !dbg !4227

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4, !dbg !4228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4228

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %task, align 8, !dbg !4229
  %call1 = call zeroext i1 @ptrace_may_access(ptr noundef %2, i32 noundef 9) #10, !dbg !4230
  %frombool = zext i1 %call1 to i8, !dbg !4231
  store i8 %frombool, ptr %allowed, align 1, !dbg !4231
  %3 = load ptr, ptr %task, align 8, !dbg !4232
  call void @put_task_struct(ptr noundef %3) #10, !dbg !4233
  %4 = load i8, ptr %allowed, align 1, !dbg !4234, !range !4236, !noundef !584
  %tobool2 = trunc i8 %4 to i1, !dbg !4234
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4237

if.then3:                                         ; preds = %if.end
  store i32 -13, ptr %retval, align 4, !dbg !4238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4238

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %idmap.addr, align 8, !dbg !4239
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !4240
  %7 = load i32, ptr %mask.addr, align 4, !dbg !4241
  %call5 = call i32 @generic_permission(ptr noundef %5, ptr noundef %6, i32 noundef %7) #10, !dbg !4242
  store i32 %call5, ptr %retval, align 4, !dbg !4243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4243

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !4244
  call void @llvm.lifetime.end.p0(i64 1, ptr %allowed) #11, !dbg !4244
  %8 = load i32, ptr %retval, align 4, !dbg !4244
  ret i32 %8, !dbg !4244
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_readfdinfo(ptr noundef %file, ptr noundef %ctx) #1 align 16 !dbg !4245 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4247, metadata !DIExpression()), !dbg !4249
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4248, metadata !DIExpression()), !dbg !4250
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4251
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !4252
  %call = call i32 @proc_readfd_common(ptr noundef %0, ptr noundef %1, ptr noundef @proc_fdinfo_instantiate) #10, !dbg !4253
  ret i32 %call, !dbg !4254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_readfd_common(ptr noundef %file, ptr noundef %ctx, ptr noundef %instantiate) #1 align 16 !dbg !4255 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %instantiate.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  %data = alloca %struct.fd_data, align 4
  %name = alloca [11 x i8], align 1
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4263, metadata !DIExpression()), !dbg !4283
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4264, metadata !DIExpression()), !dbg !4284
  store ptr %instantiate, ptr %instantiate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %instantiate.addr, metadata !4265, metadata !DIExpression()), !dbg !4285
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !4286
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4266, metadata !DIExpression()), !dbg !4287
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4288
  %call = call ptr @file_inode(ptr noundef %0) #10, !dbg !4289
  %call1 = call ptr @get_proc_task(ptr noundef %call) #10, !dbg !4290
  store ptr %call1, ptr %p, align 8, !dbg !4287
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !4291
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4267, metadata !DIExpression()), !dbg !4292
  %1 = load ptr, ptr %p, align 8, !dbg !4293
  %tobool = icmp ne ptr %1, null, !dbg !4293
  br i1 %tobool, label %if.end, label %if.then, !dbg !4295

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4296

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4297
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !4299
  %call2 = call zeroext i1 @dir_emit_dots(ptr noundef %2, ptr noundef %3) #10, !dbg !4300
  br i1 %call2, label %if.end4, label %if.then3, !dbg !4301

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !4302

if.end4:                                          ; preds = %if.end
  call void @rcu_read_lock() #10, !dbg !4303
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !4304
  %pos = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1, !dbg !4305
  %5 = load i64, ptr %pos, align 8, !dbg !4305
  %sub = sub i64 %5, 2, !dbg !4306
  %conv = trunc i64 %sub to i32, !dbg !4304
  store i32 %conv, ptr %fd, align 4, !dbg !4307
  br label %for.cond, !dbg !4308

for.cond:                                         ; preds = %for.inc, %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !4309
  call void @llvm.dbg.declare(metadata ptr %f, metadata !4268, metadata !DIExpression()), !dbg !4310
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4272, metadata !DIExpression()), !dbg !4312
  call void @llvm.lifetime.start.p0(i64 11, ptr %name) #11, !dbg !4313
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4277, metadata !DIExpression()), !dbg !4314
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11, !dbg !4315
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4281, metadata !DIExpression()), !dbg !4316
  %6 = load ptr, ptr %p, align 8, !dbg !4317
  %call5 = call ptr @task_lookup_next_fd_rcu(ptr noundef %6, ptr noundef %fd) #10, !dbg !4318
  store ptr %call5, ptr %f, align 8, !dbg !4319
  %7 = load i32, ptr %fd, align 4, !dbg !4320
  %conv6 = zext i32 %7 to i64, !dbg !4320
  %add = add i64 %conv6, 2, !dbg !4321
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !4322
  %pos7 = getelementptr inbounds %struct.dir_context, ptr %8, i32 0, i32 1, !dbg !4323
  store i64 %add, ptr %pos7, align 8, !dbg !4324
  %9 = load ptr, ptr %f, align 8, !dbg !4325
  %tobool8 = icmp ne ptr %9, null, !dbg !4325
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4327

if.then9:                                         ; preds = %for.cond
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4328

if.end10:                                         ; preds = %for.cond
  %10 = load ptr, ptr %f, align 8, !dbg !4329
  %f_mode = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2, !dbg !4330
  %11 = load i32, ptr %f_mode, align 4, !dbg !4330
  %mode = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 0, !dbg !4331
  store i32 %11, ptr %mode, align 4, !dbg !4332
  call void @rcu_read_unlock() #10, !dbg !4333
  %12 = load i32, ptr %fd, align 4, !dbg !4334
  %fd11 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1, !dbg !4335
  store i32 %12, ptr %fd11, align 4, !dbg !4336
  %arraydecay = getelementptr inbounds [11 x i8], ptr %name, i64 0, i64 0, !dbg !4337
  %13 = load i32, ptr %fd, align 4, !dbg !4338
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 11, ptr noundef @.str, i32 noundef %13) #10, !dbg !4339
  store i32 %call12, ptr %len, align 4, !dbg !4340
  %14 = load ptr, ptr %file.addr, align 8, !dbg !4341
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !4343
  %arraydecay13 = getelementptr inbounds [11 x i8], ptr %name, i64 0, i64 0, !dbg !4344
  %16 = load i32, ptr %len, align 4, !dbg !4345
  %17 = load ptr, ptr %instantiate.addr, align 8, !dbg !4346
  %18 = load ptr, ptr %p, align 8, !dbg !4347
  %call14 = call zeroext i1 @proc_fill_cache(ptr noundef %14, ptr noundef %15, ptr noundef %arraydecay13, i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %data) #10, !dbg !4348
  br i1 %call14, label %if.end16, label %if.then15, !dbg !4349

if.then15:                                        ; preds = %if.end10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4350

if.end16:                                         ; preds = %if.end10
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 281, i32 noundef 0) #10, !dbg !4351
  %call17 = call i32 @_cond_resched() #10, !dbg !4351
  store i32 %call17, ptr %tmp, align 4, !dbg !4351
  %19 = load i32, ptr %tmp, align 4, !dbg !4351
  call void @rcu_read_lock() #10, !dbg !4353
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4354
  br label %cleanup, !dbg !4354

cleanup:                                          ; preds = %if.then15, %if.end16, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 11, ptr %name) #11, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !4354
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !4354
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4355

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i32, ptr %fd, align 4, !dbg !4356
  %inc = add i32 %20, 1, !dbg !4356
  store i32 %inc, ptr %fd, align 4, !dbg !4356
  br label %for.cond, !dbg !4357, !llvm.loop !4358

for.end:                                          ; preds = %cleanup
  call void @rcu_read_unlock() #10, !dbg !4362
  br label %out, !dbg !4362

out:                                              ; preds = %for.end, %cleanup, %if.then3
  call void @llvm.dbg.label(metadata !4282), !dbg !4363
  %21 = load ptr, ptr %p, align 8, !dbg !4364
  call void @put_task_struct(ptr noundef %21) #10, !dbg !4365
  store i32 0, ptr %retval, align 4, !dbg !4366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4366

cleanup21:                                        ; preds = %out, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !4367
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !4367
  %22 = load i32, ptr %retval, align 4, !dbg !4367
  ret i32 %22, !dbg !4367
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_fd_instantiate(ptr noundef %dentry, ptr noundef %task, ptr noundef %ptr) #1 align 16 !dbg !4368 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4370, metadata !DIExpression()), !dbg !4378
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4371, metadata !DIExpression()), !dbg !4379
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4372, metadata !DIExpression()), !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4373, metadata !DIExpression()), !dbg !4382
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4383
  store ptr %0, ptr %data, align 8, !dbg !4382
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !4384
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !4376, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4377, metadata !DIExpression()), !dbg !4387
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4388
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !4389
  %2 = load ptr, ptr %d_sb, align 8, !dbg !4389
  %3 = load ptr, ptr %task.addr, align 8, !dbg !4390
  %call = call ptr @proc_pid_make_inode(ptr noundef %2, ptr noundef %3, i16 noundef zeroext -24576) #10, !dbg !4391
  store ptr %call, ptr %inode, align 8, !dbg !4392
  %4 = load ptr, ptr %inode, align 8, !dbg !4393
  %tobool = icmp ne ptr %4, null, !dbg !4393
  br i1 %tobool, label %if.end, label %if.then, !dbg !4395

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -2) #10, !dbg !4396
  store ptr %call1, ptr %retval, align 8, !dbg !4397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4397

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %inode, align 8, !dbg !4398
  %call2 = call ptr @PROC_I(ptr noundef %5) #10, !dbg !4399
  store ptr %call2, ptr %ei, align 8, !dbg !4400
  %6 = load ptr, ptr %data, align 8, !dbg !4401
  %fd = getelementptr inbounds %struct.fd_data, ptr %6, i32 0, i32 1, !dbg !4402
  %7 = load i32, ptr %fd, align 4, !dbg !4402
  %8 = load ptr, ptr %ei, align 8, !dbg !4403
  %fd3 = getelementptr inbounds %struct.proc_inode, ptr %8, i32 0, i32 1, !dbg !4404
  store i32 %7, ptr %fd3, align 8, !dbg !4405
  %9 = load ptr, ptr %inode, align 8, !dbg !4406
  %i_op = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8, !dbg !4407
  store ptr @proc_pid_link_inode_operations, ptr %i_op, align 8, !dbg !4408
  %10 = load ptr, ptr %inode, align 8, !dbg !4409
  %i_size = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 15, !dbg !4410
  store i64 64, ptr %i_size, align 8, !dbg !4411
  %11 = load ptr, ptr %ei, align 8, !dbg !4412
  %op = getelementptr inbounds %struct.proc_inode, ptr %11, i32 0, i32 2, !dbg !4413
  store ptr @proc_fd_link, ptr %op, align 8, !dbg !4414
  %12 = load ptr, ptr %task.addr, align 8, !dbg !4415
  %13 = load ptr, ptr %inode, align 8, !dbg !4416
  %14 = load ptr, ptr %data, align 8, !dbg !4417
  %mode = getelementptr inbounds %struct.fd_data, ptr %14, i32 0, i32 0, !dbg !4418
  %15 = load i32, ptr %mode, align 4, !dbg !4418
  call void @tid_fd_update_inode(ptr noundef %12, ptr noundef %13, i32 noundef %15) #10, !dbg !4419
  %16 = load ptr, ptr %dentry.addr, align 8, !dbg !4420
  call void @d_set_d_op(ptr noundef %16, ptr noundef @tid_fd_dentry_operations) #10, !dbg !4421
  %17 = load ptr, ptr %inode, align 8, !dbg !4422
  %18 = load ptr, ptr %dentry.addr, align 8, !dbg !4423
  %call4 = call ptr @d_splice_alias(ptr noundef %17, ptr noundef %18) #10, !dbg !4424
  store ptr %call4, ptr %retval, align 8, !dbg !4425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4425

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !4426
  %19 = load ptr, ptr %retval, align 8, !dbg !4426
  ret ptr %19, !dbg !4426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_proc_task(ptr noundef %inode) #5 align 16 !dbg !4427 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4431, metadata !DIExpression()), !dbg !4432
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4433
  %call = call ptr @proc_pid(ptr noundef %0) #10, !dbg !4434
  %call1 = call ptr @get_pid_task(ptr noundef %call, i32 noundef 0) #10, !dbg !4435
  ret ptr %call1, !dbg !4436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !4437 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4443
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !4444
  %1 = load ptr, ptr %f_inode, align 8, !dbg !4444
  ret ptr %1, !dbg !4445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dots(ptr noundef %file, ptr noundef %ctx) #5 align 16 !dbg !4446 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4450, metadata !DIExpression()), !dbg !4452
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4451, metadata !DIExpression()), !dbg !4453
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4454
  %pos = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 1, !dbg !4456
  %1 = load i64, ptr %pos, align 8, !dbg !4456
  %cmp = icmp eq i64 %1, 0, !dbg !4457
  br i1 %cmp, label %if.then, label %if.end3, !dbg !4458

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4459
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !4462
  %call = call zeroext i1 @dir_emit_dot(ptr noundef %2, ptr noundef %3) #10, !dbg !4463
  br i1 %call, label %if.end, label %if.then1, !dbg !4464

if.then1:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !4465
  br label %return, !dbg !4465

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !4466
  %pos2 = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1, !dbg !4467
  store i64 1, ptr %pos2, align 8, !dbg !4468
  br label %if.end3, !dbg !4469

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !4470
  %pos4 = getelementptr inbounds %struct.dir_context, ptr %5, i32 0, i32 1, !dbg !4472
  %6 = load i64, ptr %pos4, align 8, !dbg !4472
  %cmp5 = icmp eq i64 %6, 1, !dbg !4473
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !4474

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %file.addr, align 8, !dbg !4475
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !4478
  %call7 = call zeroext i1 @dir_emit_dotdot(ptr noundef %7, ptr noundef %8) #10, !dbg !4479
  br i1 %call7, label %if.end9, label %if.then8, !dbg !4480

if.then8:                                         ; preds = %if.then6
  store i1 false, ptr %retval, align 1, !dbg !4481
  br label %return, !dbg !4481

if.end9:                                          ; preds = %if.then6
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !4482
  %pos10 = getelementptr inbounds %struct.dir_context, ptr %9, i32 0, i32 1, !dbg !4483
  store i64 2, ptr %pos10, align 8, !dbg !4484
  br label %if.end11, !dbg !4485

if.end11:                                         ; preds = %if.end9, %if.end3
  store i1 true, ptr %retval, align 1, !dbg !4486
  br label %return, !dbg !4486

return:                                           ; preds = %if.end11, %if.then8, %if.then1
  %10 = load i1, ptr %retval, align 1, !dbg !4487
  ret i1 %10, !dbg !4487
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4488 dso_local ptr @task_lookup_next_fd_rcu(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4491 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4495 dso_local zeroext i1 @proc_fill_cache(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #5 align 16 !dbg !4498 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4503, metadata !DIExpression()), !dbg !4506
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4504, metadata !DIExpression()), !dbg !4507
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !4505, metadata !DIExpression()), !dbg !4508
  ret void, !dbg !4509
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #4 align 16 !dbg !3991 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !4510
  %0 = load ptr, ptr %tmp, align 8, !dbg !4510
  %call = call i32 %0() #10, !dbg !4512
  ret i32 %call, !dbg !4513
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #5 align 16 !dbg !3996 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4001, metadata !DIExpression()), !dbg !4514
  %0 = load ptr, ptr %t.addr, align 8, !dbg !4515
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !4517
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #10, !dbg !4518
  br i1 %call, label %if.end, label %if.then, !dbg !4519

if.then:                                          ; preds = %entry
  br label %return, !dbg !4520

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4521

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4524

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !4526
  call void @__put_task_struct(ptr noundef %1) #10, !dbg !4527
  br label %do.body1, !dbg !4528

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4529

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !4531

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !4532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4533 dso_local ptr @get_pid_task(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dot(ptr noundef %file, ptr noundef %ctx) #5 align 16 !dbg !4534 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4536, metadata !DIExpression()), !dbg !4538
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4537, metadata !DIExpression()), !dbg !4539
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4540
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !4541
  %1 = load ptr, ptr %actor, align 8, !dbg !4541
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !4542
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !4543
  %pos = getelementptr inbounds %struct.dir_context, ptr %3, i32 0, i32 1, !dbg !4544
  %4 = load i64, ptr %pos, align 8, !dbg !4544
  %5 = load ptr, ptr %file.addr, align 8, !dbg !4545
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10, !dbg !4546
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !4547
  %6 = load ptr, ptr %dentry, align 8, !dbg !4547
  %d_inode = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5, !dbg !4548
  %7 = load ptr, ptr %d_inode, align 8, !dbg !4548
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12, !dbg !4549
  %8 = load i64, ptr %i_ino, align 8, !dbg !4549
  %call = call zeroext i1 %1(ptr noundef %2, ptr noundef @.str.2, i32 noundef 1, i64 noundef %4, i64 noundef %8, i32 noundef 4) #10, !dbg !4540
  ret i1 %call, !dbg !4550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dir_emit_dotdot(ptr noundef %file, ptr noundef %ctx) #5 align 16 !dbg !4551 {
entry:
  %file.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4553, metadata !DIExpression()), !dbg !4555
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4554, metadata !DIExpression()), !dbg !4556
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !4557
  %actor = getelementptr inbounds %struct.dir_context, ptr %0, i32 0, i32 0, !dbg !4558
  %1 = load ptr, ptr %actor, align 8, !dbg !4558
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !4559
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !4560
  %pos = getelementptr inbounds %struct.dir_context, ptr %3, i32 0, i32 1, !dbg !4561
  %4 = load i64, ptr %pos, align 8, !dbg !4561
  %5 = load ptr, ptr %file.addr, align 8, !dbg !4562
  %f_path = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10, !dbg !4563
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !4564
  %6 = load ptr, ptr %dentry, align 8, !dbg !4564
  %call = call i64 @parent_ino(ptr noundef %6) #10, !dbg !4565
  %call1 = call zeroext i1 %1(ptr noundef %2, ptr noundef @.str.3, i32 noundef 2, i64 noundef %4, i64 noundef %call, i32 noundef 4) #10, !dbg !4557
  ret i1 %call1, !dbg !4566
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @parent_ino(ptr noundef %dentry) #5 align 16 !dbg !4567 {
entry:
  %dentry.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4572, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !4575
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4573, metadata !DIExpression()), !dbg !4576
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4577
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7, !dbg !4578
  %1 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4578
  %lock = getelementptr inbounds %struct.anon.23, ptr %1, i32 0, i32 0, !dbg !4578
  call void @spin_lock(ptr noundef %lock) #10, !dbg !4579
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4580
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !4581
  %3 = load ptr, ptr %d_parent, align 8, !dbg !4581
  %d_inode = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5, !dbg !4582
  %4 = load ptr, ptr %d_inode, align 8, !dbg !4582
  %i_ino = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12, !dbg !4583
  %5 = load i64, ptr %i_ino, align 8, !dbg !4583
  store i64 %5, ptr %res, align 8, !dbg !4584
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4585
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7, !dbg !4586
  %7 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !4586
  %lock2 = getelementptr inbounds %struct.anon.23, ptr %7, i32 0, i32 0, !dbg !4586
  call void @spin_unlock(ptr noundef %lock2) #10, !dbg !4587
  %8 = load i64, ptr %res, align 8, !dbg !4588
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !4589
  ret i64 %8, !dbg !4590
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !4591 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4598
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4598
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !4598
  ret void, !dbg !4599
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !4600 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4604
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4604
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !4604
  ret void, !dbg !4605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4606 dso_local void @_raw_spin_lock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4611 dso_local void @_raw_spin_unlock(ptr noundef) #0 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !4612 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4619
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #10, !dbg !4620
  ret i1 %call, !dbg !4621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4622 dso_local void @__put_task_struct(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !4623 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4627, metadata !DIExpression()), !dbg !4629
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4628, metadata !DIExpression()), !dbg !4630
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4631
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4632
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !4633
  ret i1 %call, !dbg !4634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !4635 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4639, metadata !DIExpression()), !dbg !4643
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4640, metadata !DIExpression()), !dbg !4644
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4641, metadata !DIExpression()), !dbg !4645
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4642, metadata !DIExpression()), !dbg !4647
  %0 = load i32, ptr %i.addr, align 4, !dbg !4648
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4649
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4650
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #10, !dbg !4651
  store i32 %call, ptr %old, align 4, !dbg !4647
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4652
  %tobool = icmp ne ptr %2, null, !dbg !4652
  br i1 %tobool, label %if.then, label %if.end, !dbg !4654

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4655
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4656
  store i32 %3, ptr %4, align 4, !dbg !4657
  br label %if.end, !dbg !4658

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4659
  %6 = load i32, ptr %i.addr, align 4, !dbg !4661
  %cmp = icmp eq i32 %5, %6, !dbg !4662
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4663

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4664

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4666

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4668

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4668

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4666

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4670

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4672

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4672

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4670, !srcloc !4674
  br label %do.cond7, !dbg !4670

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4670

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4666

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4666

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4675

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4676
  %cmp12 = icmp slt i32 %7, 0, !dbg !4676
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4676

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4676
  %9 = load i32, ptr %i.addr, align 4, !dbg !4676
  %sub = sub i32 %8, %9, !dbg !4676
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4676
  br label %lor.end, !dbg !4676

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4676
  %lnot14 = xor i1 %lnot, true, !dbg !4676
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4676
  %conv = sext i32 %lnot.ext to i64, !dbg !4676
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4676
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4676
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4678

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4679
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #10, !dbg !4680
  br label %if.end17, !dbg !4680

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4681

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !4682
  %12 = load i1, ptr %retval, align 1, !dbg !4682
  ret i1 %12, !dbg !4682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !4683 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4689, metadata !DIExpression()), !dbg !4691
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4690, metadata !DIExpression()), !dbg !4692
  br label %do.body, !dbg !4693

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4694

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4696
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !4697
  %1 = load i32, ptr %i.addr, align 4, !dbg !4698
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4699
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #10, !dbg !4700
  ret i32 %call, !dbg !4701
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4702 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #0

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4705 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4713, metadata !DIExpression()), !dbg !4715
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4714, metadata !DIExpression()), !dbg !4716
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4717
  %1 = load i64, ptr %size.addr, align 8, !dbg !4718
  %conv = trunc i64 %1 to i32, !dbg !4718
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !4719
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4720
  %3 = load i64, ptr %size.addr, align 8, !dbg !4720
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !4720
  ret void, !dbg !4721
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !4722 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4725, metadata !DIExpression()), !dbg !4727
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4726, metadata !DIExpression()), !dbg !4728
  %0 = load i32, ptr %i.addr, align 4, !dbg !4729
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4730
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #10, !dbg !4731
  ret i32 %call, !dbg !4732
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !4733 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4738, metadata !DIExpression()), !dbg !4740
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4739, metadata !DIExpression()), !dbg !4741
  ret i1 true, !dbg !4742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !4743 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4748, metadata !DIExpression()), !dbg !4751
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4749, metadata !DIExpression()), !dbg !4752
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4750, metadata !DIExpression()), !dbg !4753
  ret void, !dbg !4754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !4755 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4758, metadata !DIExpression()), !dbg !4762
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4759, metadata !DIExpression()), !dbg !4763
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !4764
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4760, metadata !DIExpression()), !dbg !4764
  %0 = load i32, ptr %i.addr, align 4, !dbg !4764
  %sub = sub i32 0, %0, !dbg !4764
  store i32 %sub, ptr %__ret, align 4, !dbg !4764
  %1 = load i32, ptr %__ret, align 4, !dbg !4764
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4764
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4764
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !4764, !srcloc !4765
  store i32 %3, ptr %__ret, align 4, !dbg !4764
  %4 = load i32, ptr %__ret, align 4, !dbg !4764
  store i32 %4, ptr %tmp, align 4, !dbg !4764
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !4766
  %5 = load i32, ptr %tmp, align 4, !dbg !4764
  ret i32 %5, !dbg !4767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4768 dso_local ptr @proc_pid_make_inode(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !4771 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  %0 = load i64, ptr %error.addr, align 8, !dbg !4778
  %1 = inttoptr i64 %0 to ptr, !dbg !4779
  ret ptr %1, !dbg !4780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @PROC_I(ptr noundef %inode) #5 align 16 !dbg !4781 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4785, metadata !DIExpression()), !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4786, metadata !DIExpression()), !dbg !4789
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4789
  store ptr %0, ptr %__mptr, align 8, !dbg !4789
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4789
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !4789
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4790
  %2 = load ptr, ptr %tmp, align 8, !dbg !4789
  ret ptr %2, !dbg !4791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_fd_link(ptr noundef %dentry, ptr noundef %path) #1 align 16 !dbg !4792 {
entry:
  %dentry.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %fd_file = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4794, metadata !DIExpression()), !dbg !4802
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4795, metadata !DIExpression()), !dbg !4803
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4796, metadata !DIExpression()), !dbg !4805
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !4806
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4797, metadata !DIExpression()), !dbg !4807
  store i32 -2, ptr %ret, align 4, !dbg !4807
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4808
  %call = call ptr @d_inode(ptr noundef %0) #10, !dbg !4809
  %call1 = call ptr @get_proc_task(ptr noundef %call) #10, !dbg !4810
  store ptr %call1, ptr %task, align 8, !dbg !4811
  %1 = load ptr, ptr %task, align 8, !dbg !4812
  %tobool = icmp ne ptr %1, null, !dbg !4812
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4813

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !4814
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4798, metadata !DIExpression()), !dbg !4815
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4816
  %call2 = call ptr @d_inode(ptr noundef %2) #10, !dbg !4817
  %call3 = call i32 @proc_fd(ptr noundef %call2) #10, !dbg !4818
  store i32 %call3, ptr %fd, align 4, !dbg !4815
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd_file) #11, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %fd_file, metadata !4801, metadata !DIExpression()), !dbg !4820
  %3 = load ptr, ptr %task, align 8, !dbg !4821
  %4 = load i32, ptr %fd, align 4, !dbg !4822
  %call4 = call ptr @fget_task(ptr noundef %3, i32 noundef %4) #10, !dbg !4823
  store ptr %call4, ptr %fd_file, align 8, !dbg !4824
  %5 = load ptr, ptr %fd_file, align 8, !dbg !4825
  %tobool5 = icmp ne ptr %5, null, !dbg !4825
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4827

if.then6:                                         ; preds = %if.then
  %6 = load ptr, ptr %path.addr, align 8, !dbg !4828
  %7 = load ptr, ptr %fd_file, align 8, !dbg !4830
  %f_path = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 10, !dbg !4831
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %f_path, i64 16, i1 false), !dbg !4831
  %8 = load ptr, ptr %fd_file, align 8, !dbg !4832
  %f_path7 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10, !dbg !4833
  call void @path_get(ptr noundef %f_path7) #10, !dbg !4834
  store i32 0, ptr %ret, align 4, !dbg !4835
  %9 = load ptr, ptr %fd_file, align 8, !dbg !4836
  call void @fput(ptr noundef %9) #10, !dbg !4837
  br label %if.end, !dbg !4838

if.end:                                           ; preds = %if.then6, %if.then
  %10 = load ptr, ptr %task, align 8, !dbg !4839
  call void @put_task_struct(ptr noundef %10) #10, !dbg !4840
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd_file) #11, !dbg !4841
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !4841
  br label %if.end8, !dbg !4842

if.end8:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %ret, align 4, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !4844
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !4844
  ret i32 %11, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tid_fd_update_inode(ptr noundef %task, ptr noundef %inode, i32 noundef %f_mode) #1 align 16 !dbg !4846 {
entry:
  %task.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %f_mode.addr = alloca i32, align 4
  %i_mode2 = alloca i32, align 4
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4850, metadata !DIExpression()), !dbg !4856
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4851, metadata !DIExpression()), !dbg !4857
  store i32 %f_mode, ptr %f_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %f_mode.addr, metadata !4852, metadata !DIExpression()), !dbg !4858
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4859
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4860
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2, !dbg !4861
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4862
  %i_gid = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4, !dbg !4863
  call void @task_dump_owner(ptr noundef %0, i16 noundef zeroext 0, ptr noundef %i_uid, ptr noundef %i_gid) #10, !dbg !4864
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !4865
  %i_mode = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 0, !dbg !4865
  %4 = load i16, ptr %i_mode, align 8, !dbg !4865
  %conv = zext i16 %4 to i32, !dbg !4865
  %and = and i32 %conv, 61440, !dbg !4865
  %cmp = icmp eq i32 %and, 40960, !dbg !4865
  br i1 %cmp, label %if.then, label %if.end12, !dbg !4866

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_mode2) #11, !dbg !4867
  call void @llvm.dbg.declare(metadata ptr %i_mode2, metadata !4853, metadata !DIExpression()), !dbg !4868
  store i32 40960, ptr %i_mode2, align 4, !dbg !4868
  %5 = load i32, ptr %f_mode.addr, align 4, !dbg !4869
  %and3 = and i32 %5, 1, !dbg !4871
  %tobool = icmp ne i32 %and3, 0, !dbg !4871
  br i1 %tobool, label %if.then4, label %if.end, !dbg !4872

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr %i_mode2, align 4, !dbg !4873
  %or = or i32 %6, 320, !dbg !4873
  store i32 %or, ptr %i_mode2, align 4, !dbg !4873
  br label %if.end, !dbg !4874

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load i32, ptr %f_mode.addr, align 4, !dbg !4875
  %and5 = and i32 %7, 2, !dbg !4877
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4877
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4878

if.then7:                                         ; preds = %if.end
  %8 = load i32, ptr %i_mode2, align 4, !dbg !4879
  %or8 = or i32 %8, 192, !dbg !4879
  store i32 %or8, ptr %i_mode2, align 4, !dbg !4879
  br label %if.end9, !dbg !4880

if.end9:                                          ; preds = %if.then7, %if.end
  %9 = load i32, ptr %i_mode2, align 4, !dbg !4881
  %conv10 = trunc i32 %9 to i16, !dbg !4881
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !4882
  %i_mode11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 0, !dbg !4883
  store i16 %conv10, ptr %i_mode11, align 8, !dbg !4884
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_mode2) #11, !dbg !4885
  br label %if.end12, !dbg !4886

if.end12:                                         ; preds = %if.end9, %entry
  %11 = load ptr, ptr %task.addr, align 8, !dbg !4887
  %12 = load ptr, ptr %inode.addr, align 8, !dbg !4888
  call void @security_task_to_inode(ptr noundef %11, ptr noundef %12) #10, !dbg !4889
  ret void, !dbg !4890
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4891 dso_local void @d_set_d_op(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4894 dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !4897 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4903
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4904
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4904
  ret ptr %1, !dbg !4905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_fd(ptr noundef %inode) #5 align 16 !dbg !4906 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4913
  %call = call ptr @PROC_I(ptr noundef %0) #10, !dbg !4914
  %fd = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 1, !dbg !4915
  %1 = load i32, ptr %fd, align 8, !dbg !4915
  ret i32 %1, !dbg !4916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4917 dso_local ptr @fget_task(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4921 dso_local void @path_get(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4924 dso_local void @fput(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4925 dso_local void @task_dump_owner(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4928 dso_local void @security_task_to_inode(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tid_fd_revalidate(ptr noundef %dentry, i32 noundef %flags) #1 align 16 !dbg !4932 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %task = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f_mode = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4934, metadata !DIExpression()), !dbg !4942
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4935, metadata !DIExpression()), !dbg !4943
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %task, metadata !4936, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !4946
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4937, metadata !DIExpression()), !dbg !4947
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !4948
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4938, metadata !DIExpression()), !dbg !4949
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4950
  %and = and i32 %0, 64, !dbg !4952
  %tobool = icmp ne i32 %and, 0, !dbg !4952
  br i1 %tobool, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4, !dbg !4954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !4954

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4955
  %call = call ptr @d_inode(ptr noundef %1) #10, !dbg !4956
  store ptr %call, ptr %inode, align 8, !dbg !4957
  %2 = load ptr, ptr %inode, align 8, !dbg !4958
  %call1 = call ptr @get_proc_task(ptr noundef %2) #10, !dbg !4959
  store ptr %call1, ptr %task, align 8, !dbg !4960
  %3 = load ptr, ptr %inode, align 8, !dbg !4961
  %call2 = call i32 @proc_fd(ptr noundef %3) #10, !dbg !4962
  store i32 %call2, ptr %fd, align 4, !dbg !4963
  %4 = load ptr, ptr %task, align 8, !dbg !4964
  %tobool3 = icmp ne ptr %4, null, !dbg !4964
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !4965

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %f_mode) #11, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %f_mode, metadata !4939, metadata !DIExpression()), !dbg !4967
  %5 = load ptr, ptr %task, align 8, !dbg !4968
  %6 = load i32, ptr %fd, align 4, !dbg !4970
  %call5 = call zeroext i1 @tid_fd_mode(ptr noundef %5, i32 noundef %6, ptr noundef %f_mode) #10, !dbg !4971
  br i1 %call5, label %if.then6, label %if.end7, !dbg !4972

if.then6:                                         ; preds = %if.then4
  %7 = load ptr, ptr %task, align 8, !dbg !4973
  %8 = load ptr, ptr %inode, align 8, !dbg !4975
  %9 = load i32, ptr %f_mode, align 4, !dbg !4976
  call void @tid_fd_update_inode(ptr noundef %7, ptr noundef %8, i32 noundef %9) #10, !dbg !4977
  %10 = load ptr, ptr %task, align 8, !dbg !4978
  call void @put_task_struct(ptr noundef %10) #10, !dbg !4979
  store i32 1, ptr %retval, align 4, !dbg !4980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4980

if.end7:                                          ; preds = %if.then4
  %11 = load ptr, ptr %task, align 8, !dbg !4981
  call void @put_task_struct(ptr noundef %11) #10, !dbg !4982
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4983
  br label %cleanup, !dbg !4983

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %f_mode) #11, !dbg !4983
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !4984

if.end8:                                          ; preds = %cleanup.cont, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !4985

cleanup9:                                         ; preds = %if.end8, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !4986
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !4986
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !4986
  %12 = load i32, ptr %retval, align 4, !dbg !4986
  ret i32 %12, !dbg !4986
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pid_delete_dentry(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tid_fd_mode(ptr noundef %task, i32 noundef %fd, ptr noundef %mode) #1 align 16 !dbg !4987 {
entry:
  %task.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4992, metadata !DIExpression()), !dbg !4996
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !4993, metadata !DIExpression()), !dbg !4997
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4994, metadata !DIExpression()), !dbg !4998
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #11, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %file, metadata !4995, metadata !DIExpression()), !dbg !5000
  call void @rcu_read_lock() #10, !dbg !5001
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5002
  %1 = load i32, ptr %fd.addr, align 4, !dbg !5003
  %call = call ptr @task_lookup_fd_rcu(ptr noundef %0, i32 noundef %1) #10, !dbg !5004
  store ptr %call, ptr %file, align 8, !dbg !5005
  %2 = load ptr, ptr %file, align 8, !dbg !5006
  %tobool = icmp ne ptr %2, null, !dbg !5006
  br i1 %tobool, label %if.then, label %if.end, !dbg !5008

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %file, align 8, !dbg !5009
  %f_mode = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2, !dbg !5010
  %4 = load i32, ptr %f_mode, align 4, !dbg !5010
  %5 = load ptr, ptr %mode.addr, align 8, !dbg !5011
  store i32 %4, ptr %5, align 4, !dbg !5012
  br label %if.end, !dbg !5013

if.end:                                           ; preds = %if.then, %entry
  call void @rcu_read_unlock() #10, !dbg !5014
  %6 = load ptr, ptr %file, align 8, !dbg !5015
  %tobool1 = icmp ne ptr %6, null, !dbg !5016
  %lnot = xor i1 %tobool1, true, !dbg !5016
  %lnot2 = xor i1 %lnot, true, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #11, !dbg !5018
  ret i1 %lnot2, !dbg !5019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5020 dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5021 dso_local void @__rcu_read_lock() #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5022 dso_local void @__rcu_read_unlock() #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_lookupfd_common(ptr noundef %dir, ptr noundef %dentry, ptr noundef %instantiate) #1 align 16 !dbg !5023 {
entry:
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %instantiate.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  %data = alloca %struct.fd_data, align 4
  %result = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !5027, metadata !DIExpression()), !dbg !5035
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5028, metadata !DIExpression()), !dbg !5036
  store ptr %instantiate, ptr %instantiate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %instantiate.addr, metadata !5029, metadata !DIExpression()), !dbg !5037
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !5038
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5030, metadata !DIExpression()), !dbg !5039
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !5040
  %call = call ptr @get_proc_task(ptr noundef %0) #10, !dbg !5041
  store ptr %call, ptr %task, align 8, !dbg !5039
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5031, metadata !DIExpression()), !dbg !5043
  %mode = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 0, !dbg !5044
  store i32 0, ptr %mode, align 4, !dbg !5044
  %fd = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1, !dbg !5044
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5045
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, !dbg !5046
  %call1 = call i32 @name_to_int(ptr noundef %d_name) #10, !dbg !5047
  store i32 %call1, ptr %fd, align 4, !dbg !5044
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !5048
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5032, metadata !DIExpression()), !dbg !5049
  %call2 = call ptr @ERR_PTR(i64 noundef -2) #10, !dbg !5050
  store ptr %call2, ptr %result, align 8, !dbg !5049
  %2 = load ptr, ptr %task, align 8, !dbg !5051
  %tobool = icmp ne ptr %2, null, !dbg !5051
  br i1 %tobool, label %if.end, label %if.then, !dbg !5053

if.then:                                          ; preds = %entry
  br label %out_no_task, !dbg !5054

if.end:                                           ; preds = %entry
  %fd3 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1, !dbg !5055
  %3 = load i32, ptr %fd3, align 4, !dbg !5055
  %cmp = icmp eq i32 %3, -1, !dbg !5057
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5058

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !5059

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %task, align 8, !dbg !5060
  %fd6 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1, !dbg !5062
  %5 = load i32, ptr %fd6, align 4, !dbg !5062
  %mode7 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 0, !dbg !5063
  %call8 = call zeroext i1 @tid_fd_mode(ptr noundef %4, i32 noundef %5, ptr noundef %mode7) #10, !dbg !5064
  br i1 %call8, label %if.end10, label %if.then9, !dbg !5065

if.then9:                                         ; preds = %if.end5
  br label %out, !dbg !5066

if.end10:                                         ; preds = %if.end5
  %6 = load ptr, ptr %instantiate.addr, align 8, !dbg !5067
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5068
  %8 = load ptr, ptr %task, align 8, !dbg !5069
  %call11 = call ptr %6(ptr noundef %7, ptr noundef %8, ptr noundef %data) #10, !dbg !5067
  store ptr %call11, ptr %result, align 8, !dbg !5070
  br label %out, !dbg !5071

out:                                              ; preds = %if.end10, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !5033), !dbg !5072
  %9 = load ptr, ptr %task, align 8, !dbg !5073
  call void @put_task_struct(ptr noundef %9) #10, !dbg !5074
  br label %out_no_task, !dbg !5074

out_no_task:                                      ; preds = %out, %if.then
  call void @llvm.dbg.label(metadata !5034), !dbg !5075
  %10 = load ptr, ptr %result, align 8, !dbg !5076
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !5077
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !5077
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !5077
  ret ptr %10, !dbg !5078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5079 dso_local i32 @name_to_int(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5082 dso_local void @generic_fillattr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_readfd_count(ptr noundef %inode, ptr noundef %count) #1 align 16 !dbg !5085 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fdt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu301 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5089, metadata !DIExpression()), !dbg !5097
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5090, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5091, metadata !DIExpression()), !dbg !5100
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5101
  %call = call ptr @get_proc_task(ptr noundef %0) #10, !dbg !5102
  store ptr %call, ptr %p, align 8, !dbg !5100
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdt) #11, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %fdt, metadata !5092, metadata !DIExpression()), !dbg !5104
  %1 = load ptr, ptr %p, align 8, !dbg !5105
  %tobool = icmp ne ptr %1, null, !dbg !5105
  br i1 %tobool, label %if.end, label %if.then, !dbg !5107

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !5108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5108

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !5109
  call void @task_lock(ptr noundef %2) #10, !dbg !5110
  %3 = load ptr, ptr %p, align 8, !dbg !5111
  %files = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101, !dbg !5112
  %4 = load ptr, ptr %files, align 8, !dbg !5112
  %tobool1 = icmp ne ptr %4, null, !dbg !5111
  br i1 %tobool1, label %if.then2, label %if.end10, !dbg !5113

if.then2:                                         ; preds = %if.end
  call void @rcu_read_lock() #10, !dbg !5114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu301) #11, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu301, metadata !5093, metadata !DIExpression()), !dbg !5115
  br label %do.body, !dbg !5116

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5118

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %p, align 8, !dbg !5116
  %files3 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101, !dbg !5116
  %6 = load ptr, ptr %files3, align 8, !dbg !5116
  %fdt4 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 3, !dbg !5116
  %7 = load volatile ptr, ptr %fdt4, align 32, !dbg !5116
  store ptr %7, ptr %tmp, align 8, !dbg !5118
  %8 = load ptr, ptr %tmp, align 8, !dbg !5116
  store ptr %8, ptr %__UNIQUE_ID_rcu301, align 8, !dbg !5115
  br label %do.body5, !dbg !5115

do.body5:                                         ; preds = %do.end
  br label %do.cond6, !dbg !5120

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5120

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %__UNIQUE_ID_rcu301, align 8, !dbg !5115
  store ptr %9, ptr %tmp8, align 8, !dbg !5120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu301) #11, !dbg !5122
  %10 = load ptr, ptr %tmp8, align 8, !dbg !5115
  store ptr %10, ptr %fdt, align 8, !dbg !5123
  %11 = load ptr, ptr %fdt, align 8, !dbg !5124
  %open_fds = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 3, !dbg !5125
  %12 = load ptr, ptr %open_fds, align 8, !dbg !5125
  %13 = load ptr, ptr %fdt, align 8, !dbg !5126
  %max_fds = getelementptr inbounds %struct.fdtable, ptr %13, i32 0, i32 0, !dbg !5127
  %14 = load i32, ptr %max_fds, align 8, !dbg !5127
  %call9 = call i32 @bitmap_weight(ptr noundef %12, i32 noundef %14) #10, !dbg !5128
  %conv = zext i32 %call9 to i64, !dbg !5128
  %15 = load ptr, ptr %count.addr, align 8, !dbg !5129
  store i64 %conv, ptr %15, align 8, !dbg !5130
  call void @rcu_read_unlock() #10, !dbg !5131
  br label %if.end10, !dbg !5132

if.end10:                                         ; preds = %do.end7, %if.end
  %16 = load ptr, ptr %p, align 8, !dbg !5133
  call void @task_unlock(ptr noundef %16) #10, !dbg !5134
  %17 = load ptr, ptr %p, align 8, !dbg !5135
  call void @put_task_struct(ptr noundef %17) #10, !dbg !5136
  store i32 0, ptr %retval, align 4, !dbg !5137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdt) #11, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5138
  %18 = load i32, ptr %retval, align 4, !dbg !5138
  ret i32 %18, !dbg !5138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_lock(ptr noundef %p) #5 align 16 !dbg !5139 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5143
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5144
  call void @spin_lock(ptr noundef %alloc_lock) #10, !dbg !5145
  ret void, !dbg !5146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !5147 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5152, metadata !DIExpression()), !dbg !5154
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5156
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5156
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5156

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5156
  %cmp = icmp ule i32 %2, 64, !dbg !5156
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5156

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5156
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5156
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5158

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5159
  %5 = load i64, ptr %4, align 8, !dbg !5160
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5161
  %sub = sub i32 0, %6, !dbg !5161
  %and = and i32 %sub, 63, !dbg !5161
  %sh_prom = zext i32 %and to i64, !dbg !5161
  %shr = lshr i64 -1, %sh_prom, !dbg !5161
  %and3 = and i64 %5, %shr, !dbg !5162
  %call = call i64 @hweight_long(i64 noundef %and3) #10, !dbg !5163
  %conv = trunc i64 %call to i32, !dbg !5163
  store i32 %conv, ptr %retval, align 4, !dbg !5164
  br label %return, !dbg !5164

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5165
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5166
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #10, !dbg !5167
  store i32 %call4, ptr %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5169
  ret i32 %9, !dbg !5169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @task_unlock(ptr noundef %p) #5 align 16 !dbg !5170 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5174
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 121, !dbg !5175
  call void @spin_unlock(ptr noundef %alloc_lock) #10, !dbg !5176
  ret void, !dbg !5177
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #4 align 16 !dbg !5178 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load i64, ptr %w.addr, align 8, !dbg !5185
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5185
  br i1 %1, label %cond.true, label %cond.false, !dbg !5185

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and = and i64 %2, 1, !dbg !5185
  %tobool = icmp ne i64 %and, 0, !dbg !5185
  %lnot = xor i1 %tobool, true, !dbg !5185
  %lnot1 = xor i1 %lnot, true, !dbg !5185
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5185
  %3 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and2 = and i64 %3, 2, !dbg !5185
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5185
  %lnot4 = xor i1 %tobool3, true, !dbg !5185
  %lnot6 = xor i1 %lnot4, true, !dbg !5185
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5185
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !5185
  %4 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and8 = and i64 %4, 4, !dbg !5185
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5185
  %lnot10 = xor i1 %tobool9, true, !dbg !5185
  %lnot12 = xor i1 %lnot10, true, !dbg !5185
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5185
  %add14 = add i32 %add, %lnot.ext13, !dbg !5185
  %5 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and15 = and i64 %5, 8, !dbg !5185
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5185
  %lnot17 = xor i1 %tobool16, true, !dbg !5185
  %lnot19 = xor i1 %lnot17, true, !dbg !5185
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5185
  %add21 = add i32 %add14, %lnot.ext20, !dbg !5185
  %6 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and22 = and i64 %6, 16, !dbg !5185
  %tobool23 = icmp ne i64 %and22, 0, !dbg !5185
  %lnot24 = xor i1 %tobool23, true, !dbg !5185
  %lnot26 = xor i1 %lnot24, true, !dbg !5185
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5185
  %add28 = add i32 %add21, %lnot.ext27, !dbg !5185
  %7 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and29 = and i64 %7, 32, !dbg !5185
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5185
  %lnot31 = xor i1 %tobool30, true, !dbg !5185
  %lnot33 = xor i1 %lnot31, true, !dbg !5185
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5185
  %add35 = add i32 %add28, %lnot.ext34, !dbg !5185
  %8 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and36 = and i64 %8, 64, !dbg !5185
  %tobool37 = icmp ne i64 %and36, 0, !dbg !5185
  %lnot38 = xor i1 %tobool37, true, !dbg !5185
  %lnot40 = xor i1 %lnot38, true, !dbg !5185
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5185
  %add42 = add i32 %add35, %lnot.ext41, !dbg !5185
  %9 = load i64, ptr %w.addr, align 8, !dbg !5185
  %and43 = and i64 %9, 128, !dbg !5185
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5185
  %lnot45 = xor i1 %tobool44, true, !dbg !5185
  %lnot47 = xor i1 %lnot45, true, !dbg !5185
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5185
  %add49 = add i32 %add42, %lnot.ext48, !dbg !5185
  %10 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr = lshr i64 %10, 8, !dbg !5185
  %and50 = and i64 %shr, 1, !dbg !5185
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5185
  %lnot52 = xor i1 %tobool51, true, !dbg !5185
  %lnot54 = xor i1 %lnot52, true, !dbg !5185
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5185
  %11 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr56 = lshr i64 %11, 8, !dbg !5185
  %and57 = and i64 %shr56, 2, !dbg !5185
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5185
  %lnot59 = xor i1 %tobool58, true, !dbg !5185
  %lnot61 = xor i1 %lnot59, true, !dbg !5185
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5185
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !5185
  %12 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr64 = lshr i64 %12, 8, !dbg !5185
  %and65 = and i64 %shr64, 4, !dbg !5185
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5185
  %lnot67 = xor i1 %tobool66, true, !dbg !5185
  %lnot69 = xor i1 %lnot67, true, !dbg !5185
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5185
  %add71 = add i32 %add63, %lnot.ext70, !dbg !5185
  %13 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr72 = lshr i64 %13, 8, !dbg !5185
  %and73 = and i64 %shr72, 8, !dbg !5185
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5185
  %lnot75 = xor i1 %tobool74, true, !dbg !5185
  %lnot77 = xor i1 %lnot75, true, !dbg !5185
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5185
  %add79 = add i32 %add71, %lnot.ext78, !dbg !5185
  %14 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr80 = lshr i64 %14, 8, !dbg !5185
  %and81 = and i64 %shr80, 16, !dbg !5185
  %tobool82 = icmp ne i64 %and81, 0, !dbg !5185
  %lnot83 = xor i1 %tobool82, true, !dbg !5185
  %lnot85 = xor i1 %lnot83, true, !dbg !5185
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !5185
  %add87 = add i32 %add79, %lnot.ext86, !dbg !5185
  %15 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr88 = lshr i64 %15, 8, !dbg !5185
  %and89 = and i64 %shr88, 32, !dbg !5185
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5185
  %lnot91 = xor i1 %tobool90, true, !dbg !5185
  %lnot93 = xor i1 %lnot91, true, !dbg !5185
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !5185
  %add95 = add i32 %add87, %lnot.ext94, !dbg !5185
  %16 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr96 = lshr i64 %16, 8, !dbg !5185
  %and97 = and i64 %shr96, 64, !dbg !5185
  %tobool98 = icmp ne i64 %and97, 0, !dbg !5185
  %lnot99 = xor i1 %tobool98, true, !dbg !5185
  %lnot101 = xor i1 %lnot99, true, !dbg !5185
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !5185
  %add103 = add i32 %add95, %lnot.ext102, !dbg !5185
  %17 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr104 = lshr i64 %17, 8, !dbg !5185
  %and105 = and i64 %shr104, 128, !dbg !5185
  %tobool106 = icmp ne i64 %and105, 0, !dbg !5185
  %lnot107 = xor i1 %tobool106, true, !dbg !5185
  %lnot109 = xor i1 %lnot107, true, !dbg !5185
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5185
  %add111 = add i32 %add103, %lnot.ext110, !dbg !5185
  %add112 = add i32 %add49, %add111, !dbg !5185
  %18 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr113 = lshr i64 %18, 16, !dbg !5185
  %and114 = and i64 %shr113, 1, !dbg !5185
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5185
  %lnot116 = xor i1 %tobool115, true, !dbg !5185
  %lnot118 = xor i1 %lnot116, true, !dbg !5185
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !5185
  %19 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr120 = lshr i64 %19, 16, !dbg !5185
  %and121 = and i64 %shr120, 2, !dbg !5185
  %tobool122 = icmp ne i64 %and121, 0, !dbg !5185
  %lnot123 = xor i1 %tobool122, true, !dbg !5185
  %lnot125 = xor i1 %lnot123, true, !dbg !5185
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !5185
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !5185
  %20 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr128 = lshr i64 %20, 16, !dbg !5185
  %and129 = and i64 %shr128, 4, !dbg !5185
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5185
  %lnot131 = xor i1 %tobool130, true, !dbg !5185
  %lnot133 = xor i1 %lnot131, true, !dbg !5185
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !5185
  %add135 = add i32 %add127, %lnot.ext134, !dbg !5185
  %21 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr136 = lshr i64 %21, 16, !dbg !5185
  %and137 = and i64 %shr136, 8, !dbg !5185
  %tobool138 = icmp ne i64 %and137, 0, !dbg !5185
  %lnot139 = xor i1 %tobool138, true, !dbg !5185
  %lnot141 = xor i1 %lnot139, true, !dbg !5185
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !5185
  %add143 = add i32 %add135, %lnot.ext142, !dbg !5185
  %22 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr144 = lshr i64 %22, 16, !dbg !5185
  %and145 = and i64 %shr144, 16, !dbg !5185
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5185
  %lnot147 = xor i1 %tobool146, true, !dbg !5185
  %lnot149 = xor i1 %lnot147, true, !dbg !5185
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !5185
  %add151 = add i32 %add143, %lnot.ext150, !dbg !5185
  %23 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr152 = lshr i64 %23, 16, !dbg !5185
  %and153 = and i64 %shr152, 32, !dbg !5185
  %tobool154 = icmp ne i64 %and153, 0, !dbg !5185
  %lnot155 = xor i1 %tobool154, true, !dbg !5185
  %lnot157 = xor i1 %lnot155, true, !dbg !5185
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !5185
  %add159 = add i32 %add151, %lnot.ext158, !dbg !5185
  %24 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr160 = lshr i64 %24, 16, !dbg !5185
  %and161 = and i64 %shr160, 64, !dbg !5185
  %tobool162 = icmp ne i64 %and161, 0, !dbg !5185
  %lnot163 = xor i1 %tobool162, true, !dbg !5185
  %lnot165 = xor i1 %lnot163, true, !dbg !5185
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !5185
  %add167 = add i32 %add159, %lnot.ext166, !dbg !5185
  %25 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr168 = lshr i64 %25, 16, !dbg !5185
  %and169 = and i64 %shr168, 128, !dbg !5185
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5185
  %lnot171 = xor i1 %tobool170, true, !dbg !5185
  %lnot173 = xor i1 %lnot171, true, !dbg !5185
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !5185
  %add175 = add i32 %add167, %lnot.ext174, !dbg !5185
  %26 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr176 = lshr i64 %26, 16, !dbg !5185
  %shr177 = lshr i64 %shr176, 8, !dbg !5185
  %and178 = and i64 %shr177, 1, !dbg !5185
  %tobool179 = icmp ne i64 %and178, 0, !dbg !5185
  %lnot180 = xor i1 %tobool179, true, !dbg !5185
  %lnot182 = xor i1 %lnot180, true, !dbg !5185
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !5185
  %27 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr184 = lshr i64 %27, 16, !dbg !5185
  %shr185 = lshr i64 %shr184, 8, !dbg !5185
  %and186 = and i64 %shr185, 2, !dbg !5185
  %tobool187 = icmp ne i64 %and186, 0, !dbg !5185
  %lnot188 = xor i1 %tobool187, true, !dbg !5185
  %lnot190 = xor i1 %lnot188, true, !dbg !5185
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !5185
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !5185
  %28 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr193 = lshr i64 %28, 16, !dbg !5185
  %shr194 = lshr i64 %shr193, 8, !dbg !5185
  %and195 = and i64 %shr194, 4, !dbg !5185
  %tobool196 = icmp ne i64 %and195, 0, !dbg !5185
  %lnot197 = xor i1 %tobool196, true, !dbg !5185
  %lnot199 = xor i1 %lnot197, true, !dbg !5185
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !5185
  %add201 = add i32 %add192, %lnot.ext200, !dbg !5185
  %29 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr202 = lshr i64 %29, 16, !dbg !5185
  %shr203 = lshr i64 %shr202, 8, !dbg !5185
  %and204 = and i64 %shr203, 8, !dbg !5185
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5185
  %lnot206 = xor i1 %tobool205, true, !dbg !5185
  %lnot208 = xor i1 %lnot206, true, !dbg !5185
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !5185
  %add210 = add i32 %add201, %lnot.ext209, !dbg !5185
  %30 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr211 = lshr i64 %30, 16, !dbg !5185
  %shr212 = lshr i64 %shr211, 8, !dbg !5185
  %and213 = and i64 %shr212, 16, !dbg !5185
  %tobool214 = icmp ne i64 %and213, 0, !dbg !5185
  %lnot215 = xor i1 %tobool214, true, !dbg !5185
  %lnot217 = xor i1 %lnot215, true, !dbg !5185
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !5185
  %add219 = add i32 %add210, %lnot.ext218, !dbg !5185
  %31 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr220 = lshr i64 %31, 16, !dbg !5185
  %shr221 = lshr i64 %shr220, 8, !dbg !5185
  %and222 = and i64 %shr221, 32, !dbg !5185
  %tobool223 = icmp ne i64 %and222, 0, !dbg !5185
  %lnot224 = xor i1 %tobool223, true, !dbg !5185
  %lnot226 = xor i1 %lnot224, true, !dbg !5185
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !5185
  %add228 = add i32 %add219, %lnot.ext227, !dbg !5185
  %32 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr229 = lshr i64 %32, 16, !dbg !5185
  %shr230 = lshr i64 %shr229, 8, !dbg !5185
  %and231 = and i64 %shr230, 64, !dbg !5185
  %tobool232 = icmp ne i64 %and231, 0, !dbg !5185
  %lnot233 = xor i1 %tobool232, true, !dbg !5185
  %lnot235 = xor i1 %lnot233, true, !dbg !5185
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !5185
  %add237 = add i32 %add228, %lnot.ext236, !dbg !5185
  %33 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr238 = lshr i64 %33, 16, !dbg !5185
  %shr239 = lshr i64 %shr238, 8, !dbg !5185
  %and240 = and i64 %shr239, 128, !dbg !5185
  %tobool241 = icmp ne i64 %and240, 0, !dbg !5185
  %lnot242 = xor i1 %tobool241, true, !dbg !5185
  %lnot244 = xor i1 %lnot242, true, !dbg !5185
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !5185
  %add246 = add i32 %add237, %lnot.ext245, !dbg !5185
  %add247 = add i32 %add175, %add246, !dbg !5185
  %add248 = add i32 %add112, %add247, !dbg !5185
  %34 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr249 = lshr i64 %34, 32, !dbg !5185
  %and250 = and i64 %shr249, 1, !dbg !5185
  %tobool251 = icmp ne i64 %and250, 0, !dbg !5185
  %lnot252 = xor i1 %tobool251, true, !dbg !5185
  %lnot254 = xor i1 %lnot252, true, !dbg !5185
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !5185
  %35 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr256 = lshr i64 %35, 32, !dbg !5185
  %and257 = and i64 %shr256, 2, !dbg !5185
  %tobool258 = icmp ne i64 %and257, 0, !dbg !5185
  %lnot259 = xor i1 %tobool258, true, !dbg !5185
  %lnot261 = xor i1 %lnot259, true, !dbg !5185
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !5185
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !5185
  %36 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr264 = lshr i64 %36, 32, !dbg !5185
  %and265 = and i64 %shr264, 4, !dbg !5185
  %tobool266 = icmp ne i64 %and265, 0, !dbg !5185
  %lnot267 = xor i1 %tobool266, true, !dbg !5185
  %lnot269 = xor i1 %lnot267, true, !dbg !5185
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !5185
  %add271 = add i32 %add263, %lnot.ext270, !dbg !5185
  %37 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr272 = lshr i64 %37, 32, !dbg !5185
  %and273 = and i64 %shr272, 8, !dbg !5185
  %tobool274 = icmp ne i64 %and273, 0, !dbg !5185
  %lnot275 = xor i1 %tobool274, true, !dbg !5185
  %lnot277 = xor i1 %lnot275, true, !dbg !5185
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !5185
  %add279 = add i32 %add271, %lnot.ext278, !dbg !5185
  %38 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr280 = lshr i64 %38, 32, !dbg !5185
  %and281 = and i64 %shr280, 16, !dbg !5185
  %tobool282 = icmp ne i64 %and281, 0, !dbg !5185
  %lnot283 = xor i1 %tobool282, true, !dbg !5185
  %lnot285 = xor i1 %lnot283, true, !dbg !5185
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !5185
  %add287 = add i32 %add279, %lnot.ext286, !dbg !5185
  %39 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr288 = lshr i64 %39, 32, !dbg !5185
  %and289 = and i64 %shr288, 32, !dbg !5185
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5185
  %lnot291 = xor i1 %tobool290, true, !dbg !5185
  %lnot293 = xor i1 %lnot291, true, !dbg !5185
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !5185
  %add295 = add i32 %add287, %lnot.ext294, !dbg !5185
  %40 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr296 = lshr i64 %40, 32, !dbg !5185
  %and297 = and i64 %shr296, 64, !dbg !5185
  %tobool298 = icmp ne i64 %and297, 0, !dbg !5185
  %lnot299 = xor i1 %tobool298, true, !dbg !5185
  %lnot301 = xor i1 %lnot299, true, !dbg !5185
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !5185
  %add303 = add i32 %add295, %lnot.ext302, !dbg !5185
  %41 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr304 = lshr i64 %41, 32, !dbg !5185
  %and305 = and i64 %shr304, 128, !dbg !5185
  %tobool306 = icmp ne i64 %and305, 0, !dbg !5185
  %lnot307 = xor i1 %tobool306, true, !dbg !5185
  %lnot309 = xor i1 %lnot307, true, !dbg !5185
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !5185
  %add311 = add i32 %add303, %lnot.ext310, !dbg !5185
  %42 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr312 = lshr i64 %42, 32, !dbg !5185
  %shr313 = lshr i64 %shr312, 8, !dbg !5185
  %and314 = and i64 %shr313, 1, !dbg !5185
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5185
  %lnot316 = xor i1 %tobool315, true, !dbg !5185
  %lnot318 = xor i1 %lnot316, true, !dbg !5185
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !5185
  %43 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr320 = lshr i64 %43, 32, !dbg !5185
  %shr321 = lshr i64 %shr320, 8, !dbg !5185
  %and322 = and i64 %shr321, 2, !dbg !5185
  %tobool323 = icmp ne i64 %and322, 0, !dbg !5185
  %lnot324 = xor i1 %tobool323, true, !dbg !5185
  %lnot326 = xor i1 %lnot324, true, !dbg !5185
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !5185
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !5185
  %44 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr329 = lshr i64 %44, 32, !dbg !5185
  %shr330 = lshr i64 %shr329, 8, !dbg !5185
  %and331 = and i64 %shr330, 4, !dbg !5185
  %tobool332 = icmp ne i64 %and331, 0, !dbg !5185
  %lnot333 = xor i1 %tobool332, true, !dbg !5185
  %lnot335 = xor i1 %lnot333, true, !dbg !5185
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !5185
  %add337 = add i32 %add328, %lnot.ext336, !dbg !5185
  %45 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr338 = lshr i64 %45, 32, !dbg !5185
  %shr339 = lshr i64 %shr338, 8, !dbg !5185
  %and340 = and i64 %shr339, 8, !dbg !5185
  %tobool341 = icmp ne i64 %and340, 0, !dbg !5185
  %lnot342 = xor i1 %tobool341, true, !dbg !5185
  %lnot344 = xor i1 %lnot342, true, !dbg !5185
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !5185
  %add346 = add i32 %add337, %lnot.ext345, !dbg !5185
  %46 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr347 = lshr i64 %46, 32, !dbg !5185
  %shr348 = lshr i64 %shr347, 8, !dbg !5185
  %and349 = and i64 %shr348, 16, !dbg !5185
  %tobool350 = icmp ne i64 %and349, 0, !dbg !5185
  %lnot351 = xor i1 %tobool350, true, !dbg !5185
  %lnot353 = xor i1 %lnot351, true, !dbg !5185
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !5185
  %add355 = add i32 %add346, %lnot.ext354, !dbg !5185
  %47 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr356 = lshr i64 %47, 32, !dbg !5185
  %shr357 = lshr i64 %shr356, 8, !dbg !5185
  %and358 = and i64 %shr357, 32, !dbg !5185
  %tobool359 = icmp ne i64 %and358, 0, !dbg !5185
  %lnot360 = xor i1 %tobool359, true, !dbg !5185
  %lnot362 = xor i1 %lnot360, true, !dbg !5185
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !5185
  %add364 = add i32 %add355, %lnot.ext363, !dbg !5185
  %48 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr365 = lshr i64 %48, 32, !dbg !5185
  %shr366 = lshr i64 %shr365, 8, !dbg !5185
  %and367 = and i64 %shr366, 64, !dbg !5185
  %tobool368 = icmp ne i64 %and367, 0, !dbg !5185
  %lnot369 = xor i1 %tobool368, true, !dbg !5185
  %lnot371 = xor i1 %lnot369, true, !dbg !5185
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !5185
  %add373 = add i32 %add364, %lnot.ext372, !dbg !5185
  %49 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr374 = lshr i64 %49, 32, !dbg !5185
  %shr375 = lshr i64 %shr374, 8, !dbg !5185
  %and376 = and i64 %shr375, 128, !dbg !5185
  %tobool377 = icmp ne i64 %and376, 0, !dbg !5185
  %lnot378 = xor i1 %tobool377, true, !dbg !5185
  %lnot380 = xor i1 %lnot378, true, !dbg !5185
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !5185
  %add382 = add i32 %add373, %lnot.ext381, !dbg !5185
  %add383 = add i32 %add311, %add382, !dbg !5185
  %50 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr384 = lshr i64 %50, 32, !dbg !5185
  %shr385 = lshr i64 %shr384, 16, !dbg !5185
  %and386 = and i64 %shr385, 1, !dbg !5185
  %tobool387 = icmp ne i64 %and386, 0, !dbg !5185
  %lnot388 = xor i1 %tobool387, true, !dbg !5185
  %lnot390 = xor i1 %lnot388, true, !dbg !5185
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !5185
  %51 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr392 = lshr i64 %51, 32, !dbg !5185
  %shr393 = lshr i64 %shr392, 16, !dbg !5185
  %and394 = and i64 %shr393, 2, !dbg !5185
  %tobool395 = icmp ne i64 %and394, 0, !dbg !5185
  %lnot396 = xor i1 %tobool395, true, !dbg !5185
  %lnot398 = xor i1 %lnot396, true, !dbg !5185
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !5185
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !5185
  %52 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr401 = lshr i64 %52, 32, !dbg !5185
  %shr402 = lshr i64 %shr401, 16, !dbg !5185
  %and403 = and i64 %shr402, 4, !dbg !5185
  %tobool404 = icmp ne i64 %and403, 0, !dbg !5185
  %lnot405 = xor i1 %tobool404, true, !dbg !5185
  %lnot407 = xor i1 %lnot405, true, !dbg !5185
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !5185
  %add409 = add i32 %add400, %lnot.ext408, !dbg !5185
  %53 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr410 = lshr i64 %53, 32, !dbg !5185
  %shr411 = lshr i64 %shr410, 16, !dbg !5185
  %and412 = and i64 %shr411, 8, !dbg !5185
  %tobool413 = icmp ne i64 %and412, 0, !dbg !5185
  %lnot414 = xor i1 %tobool413, true, !dbg !5185
  %lnot416 = xor i1 %lnot414, true, !dbg !5185
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !5185
  %add418 = add i32 %add409, %lnot.ext417, !dbg !5185
  %54 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr419 = lshr i64 %54, 32, !dbg !5185
  %shr420 = lshr i64 %shr419, 16, !dbg !5185
  %and421 = and i64 %shr420, 16, !dbg !5185
  %tobool422 = icmp ne i64 %and421, 0, !dbg !5185
  %lnot423 = xor i1 %tobool422, true, !dbg !5185
  %lnot425 = xor i1 %lnot423, true, !dbg !5185
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !5185
  %add427 = add i32 %add418, %lnot.ext426, !dbg !5185
  %55 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr428 = lshr i64 %55, 32, !dbg !5185
  %shr429 = lshr i64 %shr428, 16, !dbg !5185
  %and430 = and i64 %shr429, 32, !dbg !5185
  %tobool431 = icmp ne i64 %and430, 0, !dbg !5185
  %lnot432 = xor i1 %tobool431, true, !dbg !5185
  %lnot434 = xor i1 %lnot432, true, !dbg !5185
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !5185
  %add436 = add i32 %add427, %lnot.ext435, !dbg !5185
  %56 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr437 = lshr i64 %56, 32, !dbg !5185
  %shr438 = lshr i64 %shr437, 16, !dbg !5185
  %and439 = and i64 %shr438, 64, !dbg !5185
  %tobool440 = icmp ne i64 %and439, 0, !dbg !5185
  %lnot441 = xor i1 %tobool440, true, !dbg !5185
  %lnot443 = xor i1 %lnot441, true, !dbg !5185
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !5185
  %add445 = add i32 %add436, %lnot.ext444, !dbg !5185
  %57 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr446 = lshr i64 %57, 32, !dbg !5185
  %shr447 = lshr i64 %shr446, 16, !dbg !5185
  %and448 = and i64 %shr447, 128, !dbg !5185
  %tobool449 = icmp ne i64 %and448, 0, !dbg !5185
  %lnot450 = xor i1 %tobool449, true, !dbg !5185
  %lnot452 = xor i1 %lnot450, true, !dbg !5185
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !5185
  %add454 = add i32 %add445, %lnot.ext453, !dbg !5185
  %58 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr455 = lshr i64 %58, 32, !dbg !5185
  %shr456 = lshr i64 %shr455, 16, !dbg !5185
  %shr457 = lshr i64 %shr456, 8, !dbg !5185
  %and458 = and i64 %shr457, 1, !dbg !5185
  %tobool459 = icmp ne i64 %and458, 0, !dbg !5185
  %lnot460 = xor i1 %tobool459, true, !dbg !5185
  %lnot462 = xor i1 %lnot460, true, !dbg !5185
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !5185
  %59 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr464 = lshr i64 %59, 32, !dbg !5185
  %shr465 = lshr i64 %shr464, 16, !dbg !5185
  %shr466 = lshr i64 %shr465, 8, !dbg !5185
  %and467 = and i64 %shr466, 2, !dbg !5185
  %tobool468 = icmp ne i64 %and467, 0, !dbg !5185
  %lnot469 = xor i1 %tobool468, true, !dbg !5185
  %lnot471 = xor i1 %lnot469, true, !dbg !5185
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !5185
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !5185
  %60 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr474 = lshr i64 %60, 32, !dbg !5185
  %shr475 = lshr i64 %shr474, 16, !dbg !5185
  %shr476 = lshr i64 %shr475, 8, !dbg !5185
  %and477 = and i64 %shr476, 4, !dbg !5185
  %tobool478 = icmp ne i64 %and477, 0, !dbg !5185
  %lnot479 = xor i1 %tobool478, true, !dbg !5185
  %lnot481 = xor i1 %lnot479, true, !dbg !5185
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !5185
  %add483 = add i32 %add473, %lnot.ext482, !dbg !5185
  %61 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr484 = lshr i64 %61, 32, !dbg !5185
  %shr485 = lshr i64 %shr484, 16, !dbg !5185
  %shr486 = lshr i64 %shr485, 8, !dbg !5185
  %and487 = and i64 %shr486, 8, !dbg !5185
  %tobool488 = icmp ne i64 %and487, 0, !dbg !5185
  %lnot489 = xor i1 %tobool488, true, !dbg !5185
  %lnot491 = xor i1 %lnot489, true, !dbg !5185
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !5185
  %add493 = add i32 %add483, %lnot.ext492, !dbg !5185
  %62 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr494 = lshr i64 %62, 32, !dbg !5185
  %shr495 = lshr i64 %shr494, 16, !dbg !5185
  %shr496 = lshr i64 %shr495, 8, !dbg !5185
  %and497 = and i64 %shr496, 16, !dbg !5185
  %tobool498 = icmp ne i64 %and497, 0, !dbg !5185
  %lnot499 = xor i1 %tobool498, true, !dbg !5185
  %lnot501 = xor i1 %lnot499, true, !dbg !5185
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !5185
  %add503 = add i32 %add493, %lnot.ext502, !dbg !5185
  %63 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr504 = lshr i64 %63, 32, !dbg !5185
  %shr505 = lshr i64 %shr504, 16, !dbg !5185
  %shr506 = lshr i64 %shr505, 8, !dbg !5185
  %and507 = and i64 %shr506, 32, !dbg !5185
  %tobool508 = icmp ne i64 %and507, 0, !dbg !5185
  %lnot509 = xor i1 %tobool508, true, !dbg !5185
  %lnot511 = xor i1 %lnot509, true, !dbg !5185
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !5185
  %add513 = add i32 %add503, %lnot.ext512, !dbg !5185
  %64 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr514 = lshr i64 %64, 32, !dbg !5185
  %shr515 = lshr i64 %shr514, 16, !dbg !5185
  %shr516 = lshr i64 %shr515, 8, !dbg !5185
  %and517 = and i64 %shr516, 64, !dbg !5185
  %tobool518 = icmp ne i64 %and517, 0, !dbg !5185
  %lnot519 = xor i1 %tobool518, true, !dbg !5185
  %lnot521 = xor i1 %lnot519, true, !dbg !5185
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !5185
  %add523 = add i32 %add513, %lnot.ext522, !dbg !5185
  %65 = load i64, ptr %w.addr, align 8, !dbg !5185
  %shr524 = lshr i64 %65, 32, !dbg !5185
  %shr525 = lshr i64 %shr524, 16, !dbg !5185
  %shr526 = lshr i64 %shr525, 8, !dbg !5185
  %and527 = and i64 %shr526, 128, !dbg !5185
  %tobool528 = icmp ne i64 %and527, 0, !dbg !5185
  %lnot529 = xor i1 %tobool528, true, !dbg !5185
  %lnot531 = xor i1 %lnot529, true, !dbg !5185
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !5185
  %add533 = add i32 %add523, %lnot.ext532, !dbg !5185
  %add534 = add i32 %add454, %add533, !dbg !5185
  %add535 = add i32 %add383, %add534, !dbg !5185
  %add536 = add i32 %add248, %add535, !dbg !5185
  %conv = zext i32 %add536 to i64, !dbg !5185
  br label %cond.end, !dbg !5185

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !5185
  %call = call i64 @__arch_hweight64(i64 noundef %66) #10, !dbg !5185
  br label %cond.end, !dbg !5185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !5185
  ret i64 %cond, !dbg !5186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5187 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #0

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #4 align 16 !dbg !5188 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5193, metadata !DIExpression()), !dbg !5195
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #11, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5194, metadata !DIExpression()), !dbg !5197
  %0 = load i64, ptr %w.addr, align 8, !dbg !5198
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !5199, !srcloc !5200
  store i64 %1, ptr %res, align 8, !dbg !5199
  %2 = load i64, ptr %res, align 8, !dbg !5201
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #11, !dbg !5202
  ret i64 %2, !dbg !5203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_fdinfo_instantiate(ptr noundef %dentry, ptr noundef %task, ptr noundef %ptr) #1 align 16 !dbg !5204 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5206, metadata !DIExpression()), !dbg !5212
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5207, metadata !DIExpression()), !dbg !5213
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5208, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5209, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5217
  store ptr %0, ptr %data, align 8, !dbg !5216
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #11, !dbg !5218
  call void @llvm.dbg.declare(metadata ptr %ei, metadata !5210, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #11, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !5211, metadata !DIExpression()), !dbg !5221
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5222
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !5223
  %2 = load ptr, ptr %d_sb, align 8, !dbg !5223
  %3 = load ptr, ptr %task.addr, align 8, !dbg !5224
  %call = call ptr @proc_pid_make_inode(ptr noundef %2, ptr noundef %3, i16 noundef zeroext -32476) #10, !dbg !5225
  store ptr %call, ptr %inode, align 8, !dbg !5226
  %4 = load ptr, ptr %inode, align 8, !dbg !5227
  %tobool = icmp ne ptr %4, null, !dbg !5227
  br i1 %tobool, label %if.end, label %if.then, !dbg !5229

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -2) #10, !dbg !5230
  store ptr %call1, ptr %retval, align 8, !dbg !5231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5231

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %inode, align 8, !dbg !5232
  %call2 = call ptr @PROC_I(ptr noundef %5) #10, !dbg !5233
  store ptr %call2, ptr %ei, align 8, !dbg !5234
  %6 = load ptr, ptr %data, align 8, !dbg !5235
  %fd = getelementptr inbounds %struct.fd_data, ptr %6, i32 0, i32 1, !dbg !5236
  %7 = load i32, ptr %fd, align 4, !dbg !5236
  %8 = load ptr, ptr %ei, align 8, !dbg !5237
  %fd3 = getelementptr inbounds %struct.proc_inode, ptr %8, i32 0, i32 1, !dbg !5238
  store i32 %7, ptr %fd3, align 8, !dbg !5239
  %9 = load ptr, ptr %inode, align 8, !dbg !5240
  %i_op = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8, !dbg !5241
  store ptr @proc_fdinfo_file_inode_operations, ptr %i_op, align 8, !dbg !5242
  %10 = load ptr, ptr %inode, align 8, !dbg !5243
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 39, !dbg !5244
  store ptr @proc_fdinfo_file_operations, ptr %11, align 8, !dbg !5245
  %12 = load ptr, ptr %task.addr, align 8, !dbg !5246
  %13 = load ptr, ptr %inode, align 8, !dbg !5247
  call void @tid_fd_update_inode(ptr noundef %12, ptr noundef %13, i32 noundef 0) #10, !dbg !5248
  %14 = load ptr, ptr %dentry.addr, align 8, !dbg !5249
  call void @d_set_d_op(ptr noundef %14, ptr noundef @tid_fd_dentry_operations) #10, !dbg !5250
  %15 = load ptr, ptr %inode, align 8, !dbg !5251
  %16 = load ptr, ptr %dentry.addr, align 8, !dbg !5252
  %call4 = call ptr @d_splice_alias(ptr noundef %15, ptr noundef %16) #10, !dbg !5253
  store ptr %call4, ptr %retval, align 8, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #11, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #11, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !5255
  %17 = load ptr, ptr %retval, align 8, !dbg !5255
  ret ptr %17, !dbg !5255
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_fdinfo_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !5256 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5258, metadata !DIExpression()), !dbg !5260
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5259, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5262
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5263
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @seq_show, ptr noundef %1) #10, !dbg !5264
  ret i32 %call, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_show(ptr noundef %m, ptr noundef %v) #1 align 16 !dbg !5269 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %files = alloca ptr, align 8
  %f_flags = alloca i32, align 4
  %ret = alloca i32, align 4
  %file = alloca ptr, align 8
  %task = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fd = alloca i32, align 4
  %fdt = alloca ptr, align 8
  %__UNIQUE_ID_rcu299 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5271, metadata !DIExpression()), !dbg !5287
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5272, metadata !DIExpression()), !dbg !5288
  call void @llvm.lifetime.start.p0(i64 8, ptr %files) #11, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %files, metadata !5273, metadata !DIExpression()), !dbg !5290
  store ptr null, ptr %files, align 8, !dbg !5290
  call void @llvm.lifetime.start.p0(i64 4, ptr %f_flags) #11, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %f_flags, metadata !5274, metadata !DIExpression()), !dbg !5292
  store i32 0, ptr %f_flags, align 4, !dbg !5292
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5275, metadata !DIExpression()), !dbg !5293
  store i32 -2, ptr %ret, align 4, !dbg !5293
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #11, !dbg !5294
  call void @llvm.dbg.declare(metadata ptr %file, metadata !5276, metadata !DIExpression()), !dbg !5295
  store ptr null, ptr %file, align 8, !dbg !5295
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #11, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %task, metadata !5277, metadata !DIExpression()), !dbg !5297
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5298
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5299
  %1 = load ptr, ptr %private, align 8, !dbg !5299
  %call = call ptr @get_proc_task(ptr noundef %1) #10, !dbg !5300
  store ptr %call, ptr %task, align 8, !dbg !5301
  %2 = load ptr, ptr %task, align 8, !dbg !5302
  %tobool = icmp ne ptr %2, null, !dbg !5302
  br i1 %tobool, label %if.end, label %if.then, !dbg !5304

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !5305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5305

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %task, align 8, !dbg !5306
  call void @task_lock(ptr noundef %3) #10, !dbg !5307
  %4 = load ptr, ptr %task, align 8, !dbg !5308
  %files1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101, !dbg !5309
  %5 = load ptr, ptr %files1, align 8, !dbg !5309
  store ptr %5, ptr %files, align 8, !dbg !5310
  %6 = load ptr, ptr %files, align 8, !dbg !5311
  %tobool2 = icmp ne ptr %6, null, !dbg !5311
  br i1 %tobool2, label %if.then3, label %if.end21, !dbg !5312

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !5313
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !5278, metadata !DIExpression()), !dbg !5314
  %7 = load ptr, ptr %m.addr, align 8, !dbg !5315
  %private4 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11, !dbg !5316
  %8 = load ptr, ptr %private4, align 8, !dbg !5316
  %call5 = call i32 @proc_fd(ptr noundef %8) #10, !dbg !5317
  store i32 %call5, ptr %fd, align 4, !dbg !5314
  %9 = load ptr, ptr %files, align 8, !dbg !5318
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %9, i32 0, i32 6, !dbg !5319
  call void @spin_lock(ptr noundef %file_lock) #10, !dbg !5320
  %10 = load ptr, ptr %files, align 8, !dbg !5321
  %11 = load i32, ptr %fd, align 4, !dbg !5322
  %call6 = call ptr @files_lookup_fd_locked(ptr noundef %10, i32 noundef %11) #10, !dbg !5323
  store ptr %call6, ptr %file, align 8, !dbg !5324
  %12 = load ptr, ptr %file, align 8, !dbg !5325
  %tobool7 = icmp ne ptr %12, null, !dbg !5325
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !5326

if.then8:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdt) #11, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %fdt, metadata !5281, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu299) #11, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu299, metadata !5284, metadata !DIExpression()), !dbg !5329
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !5332

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5332

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %files, align 8, !dbg !5330
  %fdt9 = getelementptr inbounds %struct.files_struct, ptr %13, i32 0, i32 3, !dbg !5330
  %14 = load volatile ptr, ptr %fdt9, align 32, !dbg !5330
  store ptr %14, ptr %tmp, align 8, !dbg !5332
  %15 = load ptr, ptr %tmp, align 8, !dbg !5330
  store ptr %15, ptr %__UNIQUE_ID_rcu299, align 8, !dbg !5329
  br label %do.body10, !dbg !5329

do.body10:                                        ; preds = %do.end
  br label %do.cond11, !dbg !5334

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5334

do.end12:                                         ; preds = %do.cond11
  %16 = load ptr, ptr %__UNIQUE_ID_rcu299, align 8, !dbg !5329
  store ptr %16, ptr %tmp13, align 8, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu299) #11, !dbg !5336
  %17 = load ptr, ptr %tmp13, align 8, !dbg !5329
  store ptr %17, ptr %fdt, align 8, !dbg !5328
  %18 = load ptr, ptr %file, align 8, !dbg !5337
  %f_flags14 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 6, !dbg !5338
  %19 = load i32, ptr %f_flags14, align 8, !dbg !5338
  store i32 %19, ptr %f_flags, align 4, !dbg !5339
  %20 = load i32, ptr %fd, align 4, !dbg !5340
  %21 = load ptr, ptr %fdt, align 8, !dbg !5342
  %call15 = call zeroext i1 @close_on_exec(i32 noundef %20, ptr noundef %21) #10, !dbg !5343
  br i1 %call15, label %if.then16, label %if.end17, !dbg !5344

if.then16:                                        ; preds = %do.end12
  %22 = load i32, ptr %f_flags, align 4, !dbg !5345
  %or = or i32 %22, 524288, !dbg !5345
  store i32 %or, ptr %f_flags, align 4, !dbg !5345
  br label %if.end17, !dbg !5346

if.end17:                                         ; preds = %if.then16, %do.end12
  %23 = load ptr, ptr %file, align 8, !dbg !5347
  %call18 = call ptr @get_file(ptr noundef %23) #10, !dbg !5348
  store i32 0, ptr %ret, align 4, !dbg !5349
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdt) #11, !dbg !5350
  br label %if.end19, !dbg !5351

if.end19:                                         ; preds = %if.end17, %if.then3
  %24 = load ptr, ptr %files, align 8, !dbg !5352
  %file_lock20 = getelementptr inbounds %struct.files_struct, ptr %24, i32 0, i32 6, !dbg !5353
  call void @spin_unlock(ptr noundef %file_lock20) #10, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !5355
  br label %if.end21, !dbg !5356

if.end21:                                         ; preds = %if.end19, %if.end
  %25 = load ptr, ptr %task, align 8, !dbg !5357
  call void @task_unlock(ptr noundef %25) #10, !dbg !5358
  %26 = load ptr, ptr %task, align 8, !dbg !5359
  call void @put_task_struct(ptr noundef %26) #10, !dbg !5360
  %27 = load i32, ptr %ret, align 4, !dbg !5361
  %tobool22 = icmp ne i32 %27, 0, !dbg !5361
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5363

if.then23:                                        ; preds = %if.end21
  %28 = load i32, ptr %ret, align 4, !dbg !5364
  store i32 %28, ptr %retval, align 4, !dbg !5365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5365

if.end24:                                         ; preds = %if.end21
  %29 = load ptr, ptr %m.addr, align 8, !dbg !5366
  %30 = load ptr, ptr %file, align 8, !dbg !5367
  %f_pos = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 5, !dbg !5368
  %31 = load i64, ptr %f_pos, align 8, !dbg !5368
  %32 = load i32, ptr %f_flags, align 4, !dbg !5369
  %33 = load ptr, ptr %file, align 8, !dbg !5370
  %f_path = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 10, !dbg !5371
  %mnt = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !5372
  %34 = load ptr, ptr %mnt, align 8, !dbg !5372
  %call25 = call ptr @real_mount(ptr noundef %34) #10, !dbg !5373
  %mnt_id = getelementptr inbounds %struct.mount, ptr %call25, i32 0, i32 22, !dbg !5374
  %35 = load i32, ptr %mnt_id, align 4, !dbg !5374
  %36 = load ptr, ptr %file, align 8, !dbg !5375
  %call26 = call ptr @file_inode(ptr noundef %36) #10, !dbg !5376
  %i_ino = getelementptr inbounds %struct.inode, ptr %call26, i32 0, i32 12, !dbg !5377
  %37 = load i64, ptr %i_ino, align 8, !dbg !5377
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef @.str.4, i64 noundef %31, i32 noundef %32, i32 noundef %35, i64 noundef %37) #10, !dbg !5378
  %38 = load ptr, ptr %m.addr, align 8, !dbg !5379
  %39 = load ptr, ptr %file, align 8, !dbg !5380
  %40 = load ptr, ptr %files, align 8, !dbg !5381
  call void @show_fd_locks(ptr noundef %38, ptr noundef %39, ptr noundef %40) #10, !dbg !5382
  %41 = load ptr, ptr %m.addr, align 8, !dbg !5383
  %call27 = call zeroext i1 @seq_has_overflowed(ptr noundef %41) #10, !dbg !5385
  br i1 %call27, label %if.then28, label %if.end29, !dbg !5386

if.then28:                                        ; preds = %if.end24
  br label %out, !dbg !5387

if.end29:                                         ; preds = %if.end24
  %42 = load ptr, ptr %file, align 8, !dbg !5388
  %f_op = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 12, !dbg !5390
  %43 = load ptr, ptr %f_op, align 8, !dbg !5390
  %show_fdinfo = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 27, !dbg !5391
  %44 = load ptr, ptr %show_fdinfo, align 8, !dbg !5391
  %tobool30 = icmp ne ptr %44, null, !dbg !5388
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !5392

if.then31:                                        ; preds = %if.end29
  %45 = load ptr, ptr %file, align 8, !dbg !5393
  %f_op32 = getelementptr inbounds %struct.file, ptr %45, i32 0, i32 12, !dbg !5394
  %46 = load ptr, ptr %f_op32, align 8, !dbg !5394
  %show_fdinfo33 = getelementptr inbounds %struct.file_operations, ptr %46, i32 0, i32 27, !dbg !5395
  %47 = load ptr, ptr %show_fdinfo33, align 8, !dbg !5395
  %48 = load ptr, ptr %m.addr, align 8, !dbg !5396
  %49 = load ptr, ptr %file, align 8, !dbg !5397
  call void %47(ptr noundef %48, ptr noundef %49) #10, !dbg !5393
  br label %if.end34, !dbg !5393

if.end34:                                         ; preds = %if.then31, %if.end29
  br label %out, !dbg !5391

out:                                              ; preds = %if.end34, %if.then28
  call void @llvm.dbg.label(metadata !5286), !dbg !5398
  %50 = load ptr, ptr %file, align 8, !dbg !5399
  call void @fput(ptr noundef %50) #10, !dbg !5400
  store i32 0, ptr %retval, align 4, !dbg !5401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5401

cleanup:                                          ; preds = %out, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #11, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #11, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 4, ptr %f_flags) #11, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %files) #11, !dbg !5402
  %51 = load i32, ptr %retval, align 4, !dbg !5402
  ret i32 %51, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @files_lookup_fd_locked(ptr noundef %files, i32 noundef %fd) #5 align 16 !dbg !5403 {
entry:
  %files.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  store ptr %files, ptr %files.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %files.addr, metadata !5407, metadata !DIExpression()), !dbg !5409
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5408, metadata !DIExpression()), !dbg !5410
  br label %do.body, !dbg !5411

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5412

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %files.addr, align 8, !dbg !5414
  %1 = load i32, ptr %fd.addr, align 4, !dbg !5415
  %call = call ptr @files_lookup_fd_raw(ptr noundef %0, i32 noundef %1) #10, !dbg !5416
  ret ptr %call, !dbg !5417
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @close_on_exec(i32 noundef %fd, ptr noundef %fdt) #5 align 16 !dbg !5418 {
entry:
  %fd.addr = alloca i32, align 4
  %fdt.addr = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5424, metadata !DIExpression()), !dbg !5426
  store ptr %fdt, ptr %fdt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fdt.addr, metadata !5425, metadata !DIExpression()), !dbg !5427
  %0 = load i32, ptr %fd.addr, align 4, !dbg !5428
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5428
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5428

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %fdt.addr, align 8, !dbg !5428
  %close_on_exec = getelementptr inbounds %struct.fdtable, ptr %2, i32 0, i32 2, !dbg !5428
  %3 = load ptr, ptr %close_on_exec, align 8, !dbg !5428
  %4 = ptrtoint ptr %3 to i64, !dbg !5428
  %cmp = icmp ne i64 %4, 0, !dbg !5428
  %conv = zext i1 %cmp to i32, !dbg !5428
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5428
  br i1 %5, label %land.lhs.true1, label %cond.false, !dbg !5428

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %fdt.addr, align 8, !dbg !5428
  %close_on_exec2 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 2, !dbg !5428
  %7 = load ptr, ptr %close_on_exec2, align 8, !dbg !5428
  %8 = ptrtoint ptr %7 to i64, !dbg !5428
  %cmp3 = icmp ne i64 %8, 0, !dbg !5428
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5428

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %9 = load ptr, ptr %fdt.addr, align 8, !dbg !5428
  %close_on_exec6 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 2, !dbg !5428
  %10 = load ptr, ptr %close_on_exec6, align 8, !dbg !5428
  %11 = load i64, ptr %10, align 8, !dbg !5428
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !5428
  br i1 %12, label %cond.true, label %cond.false, !dbg !5428

cond.true:                                        ; preds = %land.lhs.true5
  %13 = load i32, ptr %fd.addr, align 4, !dbg !5428
  %conv7 = zext i32 %13 to i64, !dbg !5428
  %14 = load ptr, ptr %fdt.addr, align 8, !dbg !5428
  %close_on_exec8 = getelementptr inbounds %struct.fdtable, ptr %14, i32 0, i32 2, !dbg !5428
  %15 = load ptr, ptr %close_on_exec8, align 8, !dbg !5428
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %15) #10, !dbg !5428
  %conv9 = zext i1 %call to i32, !dbg !5428
  br label %cond.end, !dbg !5428

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %16 = load i32, ptr %fd.addr, align 4, !dbg !5428
  %conv10 = zext i32 %16 to i64, !dbg !5428
  %17 = load ptr, ptr %fdt.addr, align 8, !dbg !5428
  %close_on_exec11 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 2, !dbg !5428
  %18 = load ptr, ptr %close_on_exec11, align 8, !dbg !5428
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %18) #10, !dbg !5428
  %conv13 = zext i1 %call12 to i32, !dbg !5428
  br label %cond.end, !dbg !5428

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5428
  %tobool = icmp ne i32 %cond, 0, !dbg !5428
  ret i1 %tobool, !dbg !5429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_file(ptr noundef %f) #5 align 16 !dbg !5430 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5436
  %f_count = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3, !dbg !5437
  call void @atomic_long_inc(ptr noundef %f_count) #10, !dbg !5438
  %1 = load ptr, ptr %f.addr, align 8, !dbg !5439
  ret ptr %1, !dbg !5440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5441 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @real_mount(ptr noundef %mnt) #5 align 16 !dbg !5444 {
entry:
  %mnt.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5452
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5449, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !5452
  store ptr %0, ptr %__mptr, align 8, !dbg !5452
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5452
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !5452
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5453
  %2 = load ptr, ptr %tmp, align 8, !dbg !5452
  ret ptr %2, !dbg !5454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5455 dso_local void @show_fd_locks(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @seq_has_overflowed(ptr noundef %m) #5 align 16 !dbg !5458 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5464
  %count = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3, !dbg !5465
  %1 = load i64, ptr %count, align 8, !dbg !5465
  %2 = load ptr, ptr %m.addr, align 8, !dbg !5466
  %size = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 1, !dbg !5467
  %3 = load i64, ptr %size, align 8, !dbg !5467
  %cmp = icmp eq i64 %1, %3, !dbg !5468
  ret i1 %cmp, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @files_lookup_fd_raw(ptr noundef %files, i32 noundef %fd) #5 align 16 !dbg !5470 {
entry:
  %retval = alloca ptr, align 8
  %files.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %fdt = alloca ptr, align 8
  %__UNIQUE_ID_rcu249 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  %__UNIQUE_ID_rcu253 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %files, ptr %files.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %files.addr, metadata !5472, metadata !DIExpression()), !dbg !5485
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5473, metadata !DIExpression()), !dbg !5486
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdt) #11, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %fdt, metadata !5474, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu249) #11, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu249, metadata !5475, metadata !DIExpression()), !dbg !5489
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5492

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5492

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %files.addr, align 8, !dbg !5490
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3, !dbg !5490
  %1 = load volatile ptr, ptr %fdt1, align 32, !dbg !5490
  store ptr %1, ptr %tmp, align 8, !dbg !5492
  %2 = load ptr, ptr %tmp, align 8, !dbg !5490
  store ptr %2, ptr %__UNIQUE_ID_rcu249, align 8, !dbg !5489
  %3 = load ptr, ptr %__UNIQUE_ID_rcu249, align 8, !dbg !5489
  store ptr %3, ptr %tmp2, align 8, !dbg !5489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu249) #11, !dbg !5494
  %4 = load ptr, ptr %tmp2, align 8, !dbg !5489
  store ptr %4, ptr %fdt, align 8, !dbg !5488
  %5 = load i32, ptr %fd.addr, align 4, !dbg !5495
  %6 = load ptr, ptr %fdt, align 8, !dbg !5496
  %max_fds = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 0, !dbg !5497
  %7 = load i32, ptr %max_fds, align 8, !dbg !5497
  %cmp = icmp ult i32 %5, %7, !dbg !5498
  br i1 %cmp, label %if.then, label %if.end, !dbg !5499

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #11, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !5477, metadata !DIExpression()), !dbg !5500
  %8 = load i32, ptr %fd.addr, align 4, !dbg !5500
  store i32 %8, ptr %_i, align 4, !dbg !5500
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #11, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !5481, metadata !DIExpression()), !dbg !5500
  %9 = load ptr, ptr %fdt, align 8, !dbg !5500
  %max_fds3 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 0, !dbg !5500
  %10 = load i32, ptr %max_fds3, align 8, !dbg !5500
  store i32 %10, ptr %_s, align 4, !dbg !5500
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #11, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !5482, metadata !DIExpression()), !dbg !5500
  %11 = load i32, ptr %_i, align 4, !dbg !5500
  %conv = zext i32 %11 to i64, !dbg !5500
  %12 = load i32, ptr %_s, align 4, !dbg !5500
  %conv4 = zext i32 %12 to i64, !dbg !5500
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv4) #10, !dbg !5500
  store i64 %call, ptr %_mask, align 8, !dbg !5500
  br label %do.body5, !dbg !5500

do.body5:                                         ; preds = %if.then
  br label %do.cond6, !dbg !5501

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5501

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !5500

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !5503

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5503

do.end10:                                         ; preds = %do.cond9
  %13 = load i32, ptr %_i, align 4, !dbg !5500
  %conv12 = zext i32 %13 to i64, !dbg !5500
  %14 = load i64, ptr %_mask, align 8, !dbg !5500
  %and = and i64 %conv12, %14, !dbg !5500
  %conv13 = trunc i64 %and to i32, !dbg !5500
  store i32 %conv13, ptr %tmp11, align 4, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #11, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #11, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #11, !dbg !5505
  %15 = load i32, ptr %tmp11, align 4, !dbg !5500
  store i32 %15, ptr %fd.addr, align 4, !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu253) #11, !dbg !5507
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu253, metadata !5483, metadata !DIExpression()), !dbg !5507
  br label %do.body14, !dbg !5508

do.body14:                                        ; preds = %do.end10
  br label %do.cond15, !dbg !5510

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5510

do.end16:                                         ; preds = %do.cond15
  %16 = load ptr, ptr %fdt, align 8, !dbg !5508
  %fd18 = getelementptr inbounds %struct.fdtable, ptr %16, i32 0, i32 1, !dbg !5508
  %17 = load ptr, ptr %fd18, align 8, !dbg !5508
  %18 = load i32, ptr %fd.addr, align 4, !dbg !5508
  %idxprom = zext i32 %18 to i64, !dbg !5508
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !5508
  %19 = load volatile ptr, ptr %arrayidx, align 8, !dbg !5508
  store ptr %19, ptr %tmp17, align 8, !dbg !5510
  %20 = load ptr, ptr %tmp17, align 8, !dbg !5508
  store ptr %20, ptr %__UNIQUE_ID_rcu253, align 8, !dbg !5507
  %21 = load ptr, ptr %__UNIQUE_ID_rcu253, align 8, !dbg !5507
  store ptr %21, ptr %tmp19, align 8, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu253) #11, !dbg !5512
  %22 = load ptr, ptr %tmp19, align 8, !dbg !5507
  store ptr %22, ptr %retval, align 8, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

if.end:                                           ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !5514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5514

cleanup:                                          ; preds = %if.end, %do.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdt) #11, !dbg !5515
  %23 = load ptr, ptr %retval, align 8, !dbg !5515
  ret ptr %23, !dbg !5515
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #5 align 16 !dbg !5516 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5521, metadata !DIExpression()), !dbg !5524
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5522, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5523, metadata !DIExpression()), !dbg !5527
  %0 = load i64, ptr %size.addr, align 8, !dbg !5528
  %1 = load i64, ptr %index.addr, align 8, !dbg !5529
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #11, !dbg !5530, !srcloc !5531
  store i64 %2, ptr %mask, align 8, !dbg !5530
  %3 = load i64, ptr %mask, align 8, !dbg !5532
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !5533
  ret i64 %3, !dbg !5534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5535 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5543, metadata !DIExpression()), !dbg !5548
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5544, metadata !DIExpression()), !dbg !5549
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5545, metadata !DIExpression()), !dbg !5551
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5552
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5553
  %div = udiv i64 %1, 64, !dbg !5553
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5554
  store ptr %add.ptr, ptr %p, align 8, !dbg !5551
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !5555
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5546, metadata !DIExpression()), !dbg !5556
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5557
  %rem = urem i64 %2, 64, !dbg !5557
  %shl = shl i64 1, %rem, !dbg !5557
  store i64 %shl, ptr %mask, align 8, !dbg !5556
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5547, metadata !DIExpression()), !dbg !5559
  %3 = load ptr, ptr %p, align 8, !dbg !5560
  %4 = load i64, ptr %3, align 8, !dbg !5561
  store i64 %4, ptr %val, align 8, !dbg !5559
  %5 = load i64, ptr %val, align 8, !dbg !5562
  %6 = load i64, ptr %mask, align 8, !dbg !5563
  %and = and i64 %5, %6, !dbg !5564
  %tobool = icmp ne i64 %and, 0, !dbg !5565
  %lnot = xor i1 %tobool, true, !dbg !5565
  %lnot1 = xor i1 %lnot, true, !dbg !5566
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5567
  ret i1 %lnot1, !dbg !5568
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5569 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5572, metadata !DIExpression()), !dbg !5574
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5576
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5577
  %div = udiv i64 %1, 64, !dbg !5577
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5578
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !5579
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5580
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5581
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !5582
  ret i1 %call, !dbg !5583
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5584 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5586, metadata !DIExpression()), !dbg !5588
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5587, metadata !DIExpression()), !dbg !5589
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5590
  %1 = load i64, ptr %size.addr, align 8, !dbg !5591
  %conv = trunc i64 %1 to i32, !dbg !5591
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !5592
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5593
  %3 = load i64, ptr %size.addr, align 8, !dbg !5593
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !5593
  ret void, !dbg !5594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5598, metadata !DIExpression()), !dbg !5600
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5599, metadata !DIExpression()), !dbg !5601
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5602
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5603
  br i1 %1, label %cond.true, label %cond.false, !dbg !5603

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5604
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5605
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !5606
  %conv = zext i1 %call to i32, !dbg !5606
  br label %cond.end, !dbg !5603

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5607
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5608
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !5609
  %conv2 = zext i1 %call1 to i32, !dbg !5609
  br label %cond.end, !dbg !5603

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5603
  %tobool = icmp ne i32 %cond, 0, !dbg !5603
  ret i1 %tobool, !dbg !5610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5611 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5613, metadata !DIExpression()), !dbg !5615
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5614, metadata !DIExpression()), !dbg !5616
  ret i1 true, !dbg !5617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5618 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5622, metadata !DIExpression()), !dbg !5624
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5623, metadata !DIExpression()), !dbg !5625
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5626
  %and = and i64 %0, 63, !dbg !5627
  %shl = shl i64 1, %and, !dbg !5628
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5629
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5630
  %shr = ashr i64 %2, 6, !dbg !5631
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5629
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5629
  %and1 = and i64 %shl, %3, !dbg !5632
  %cmp = icmp ne i64 %and1, 0, !dbg !5633
  ret i1 %cmp, !dbg !5634
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5635 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5637, metadata !DIExpression()), !dbg !5640
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5638, metadata !DIExpression()), !dbg !5641
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5639, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5644
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5645
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !5646, !srcloc !5647
  %3 = icmp ult i8 %2, 2, !dbg !5646
  call void @llvm.assume(i1 %3), !dbg !5646
  store i8 %2, ptr %oldbit, align 1, !dbg !5646
  %4 = load i8, ptr %oldbit, align 1, !dbg !5648, !range !4236, !noundef !584
  %tobool = trunc i8 %4 to i1, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !5649
  ret i1 %tobool, !dbg !5650
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #4 align 16 !dbg !5651 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5655, metadata !DIExpression()), !dbg !5656
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5657
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #10, !dbg !5658
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5659
  call void @raw_atomic_long_inc(ptr noundef %1) #10, !dbg !5660
  ret void, !dbg !5661
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #4 align 16 !dbg !5662 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5666
  call void @raw_atomic64_inc(ptr noundef %0) #10, !dbg !5667
  ret void, !dbg !5668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #4 align 16 !dbg !5669 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5676
  call void @arch_atomic64_inc(ptr noundef %0) #10, !dbg !5677
  ret void, !dbg !5678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #4 align 16 !dbg !5679 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5684
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5685
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5686
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !5687
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #11, !dbg !5688, !srcloc !5689
  ret void, !dbg !5690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5691 dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!llvm.ident = !{!4022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "proc_fd_operations", scope: !2, file: !3, line: 319, type: !2266, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/proc/.fd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/proc/proc\22 -D KBUILD_BASENAME=\22fd\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/proc/fd.ll fs/proc/fd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, globals: !3969, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/proc/fd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2efae466ad645306b9b63ba770b746f0")
!4 = !{!5, !11, !27, !32, !38, !45, !53, !59, !66, !74, !79, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !12, line: 1325, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!14 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!15 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!16 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!17 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!18 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!19 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!20 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!21 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!22 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!23 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!24 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!25 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!26 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !39, line: 15, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!43 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !46, line: 68, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !54, line: 16, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "TT_NONE", value: 0)
!57 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!58 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !60, line: 51, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!63 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!64 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!65 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !67, line: 9, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!70 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!71 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!72 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!73 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 10, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "false", value: 0)
!78 = !DIEnumerator(name: "true", value: 1)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !80, line: 119, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!83 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!84 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!85 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!86 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !89, file: !88, line: 147, baseType: !7, size: 32, elements: !180)
!88 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !88, line: 135, size: 512, elements: !90)
!90 = !{!91, !95, !97, !99, !103, !104, !120, !178, !179}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !89, file: !88, line: 136, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 137, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !89, file: !88, line: 138, baseType: !98, size: 32, offset: 128)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !89, file: !88, line: 139, baseType: !100, size: 16, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !101, line: 24, baseType: !102)
!101 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !88, line: 150, baseType: !87, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !89, file: !88, line: 151, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !88, line: 64, baseType: !107)
!107 = !DISubroutineType(types: !108)
!108 = !{!98, !109, !98, !96, !110, !116}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 61, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !113, line: 72, baseType: !114)
!113 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !113, line: 16, baseType: !115)
!115 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !101, line: 52, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !113, line: 88, baseType: !119)
!119 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !89, file: !88, line: 152, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !88, line: 117, size: 256, elements: !123)
!123 = !{!124, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !122, file: !88, line: 118, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !101, line: 174, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 172, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !126, file: !101, line: 173, baseType: !98, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !122, file: !88, line: 119, baseType: !130, size: 192, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !131, line: 41, baseType: !132)
!131 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !131, line: 37, size: 192, elements: !133)
!133 = !{!134, !172}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !132, file: !131, line: 38, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !136, line: 29, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !136, line: 17, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 18, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 18, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !140, file: !136, line: 19, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !144, line: 14, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !143, file: !144, line: 15, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !148, line: 44, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !148, line: 14, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 15, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 15, size: 32, elements: !153)
!153 = !{!154, !155, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !148, line: 16, baseType: !125, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 24, baseType: !156, size: 16)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 24, size: 16, elements: !157)
!157 = !{!158, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !156, file: !148, line: 25, baseType: !159, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !156, file: !148, line: 26, baseType: !159, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 28, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 28, size: 32, elements: !167)
!167 = !{!168, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !166, file: !148, line: 29, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !162, line: 24, baseType: !102)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !166, file: !148, line: 30, baseType: !169, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !132, file: !131, line: 39, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !101, line: 190, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !101, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !101, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !89, file: !88, line: 153, baseType: !96, size: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !89, file: !88, line: 154, baseType: !96, size: 64, offset: 448)
!180 = !{!181, !182}
!181 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!182 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!183 = !{!96, !184, !602, !3960, !250, !115, !2913, !3961, !315, !7, !119, !3964, !591, !3967, !3968, !2920, !2999}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_inode", file: !186, line: 98, size: 5376, elements: !187)
!186 = !DIFile(filename: "fs/proc/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5901c10530dd4e261f60d4f1b5caf1e")
!187 = !{!188, !3825, !3826, !3838, !3897, !3956, !3957, !3958, !3959}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !185, file: !186, line: 99, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !67, line: 59, size: 768, elements: !191)
!191 = !{!192, !197, !198, !199, !212, !213, !214, !223}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !190, file: !67, line: 61, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !80, line: 113, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !80, line: 111, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !194, file: !80, line: 112, baseType: !125, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !190, file: !67, line: 62, baseType: !7, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !190, file: !67, line: 63, baseType: !135, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !190, file: !67, line: 65, baseType: !200, size: 256, offset: 128)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !210)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !101, line: 194, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !201, file: !101, line: 195, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !101, line: 198, size: 128, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !101, line: 199, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !205, file: !101, line: 199, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!210 = !{!211}
!211 = !DISubrange(count: 4)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !190, file: !67, line: 66, baseType: !201, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !190, file: !67, line: 68, baseType: !130, size: 192, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !190, file: !67, line: 69, baseType: !215, size: 128, align: 64, offset: 640)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !101, line: 232, size: 128, align: 64, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !101, line: 233, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !215, file: !101, line: 234, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !218}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !190, file: !67, line: 70, baseType: !224, offset: 768)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, elements: !869)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !67, line: 54, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !225, file: !67, line: 55, baseType: !98, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !225, file: !67, line: 56, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !231, line: 26, size: 1152, elements: !232)
!231 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!232 = !{!233, !247, !248, !249, !3801, !3805, !3806, !3807, !3820, !3821, !3822, !3823, !3824}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !230, file: !231, line: 27, baseType: !234, size: 192)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !235, line: 19, size: 192, elements: !236)
!235 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!236 = !{!237, !245, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !234, file: !235, line: 20, baseType: !238, size: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !239, line: 296, size: 128, elements: !240)
!239 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!240 = !{!241, !242, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !238, file: !239, line: 297, baseType: !135, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !238, file: !239, line: 299, baseType: !243, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !101, line: 154, baseType: !7)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !238, file: !239, line: 300, baseType: !96, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !234, file: !235, line: 21, baseType: !7, size: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !234, file: !235, line: 22, baseType: !7, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !230, file: !231, line: 28, baseType: !215, size: 128, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !230, file: !231, line: 29, baseType: !7, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !230, file: !231, line: 30, baseType: !250, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !252, line: 746, size: 58368, elements: !253)
!252 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!253 = !{!254, !264, !265, !266, !267, !268, !269, !270, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !353, !364, !465, !469, !472, !503, !504, !505, !506, !517, !519, !520, !521, !522, !523, !524, !535, !536, !539, !540, !541, !542, !543, !544, !545, !546, !553, !554, !561, !562, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2825, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2840, !2841, !2842, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2874, !2880, !2881, !2882, !2883, !2884, !2886, !2889, !2896, !2901, !2904, !2934, !2937, !3069, !3204, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3242, !3243, !3244, !3253, !3261, !3262, !3263, !3264, !3265, !3270, !3271, !3272, !3275, !3276, !3279, !3282, !3285, !3293, !3296, !3297, !3383, !3384, !3385, !3386, !3387, !3393, !3394, !3395, !3396, !3399, !3400, !3403, !3406, !3407, !3410, !3411, !3412, !3415, !3416, !3417, !3418, !3419, !3420, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3452, !3453, !3459, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3471, !3543, !3545, !3546, !3547, !3548, !3549, !3561, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3578, !3579, !3580}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !251, file: !252, line: 752, baseType: !255, size: 192)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !256, line: 56, size: 192, elements: !257)
!256 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!257 = !{!258, !259, !260, !263}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !256, line: 57, baseType: !115, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !255, file: !256, line: 58, baseType: !115, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !255, file: !256, line: 59, baseType: !261, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !162, line: 27, baseType: !7)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !255, file: !256, line: 61, baseType: !261, size: 32, offset: 160)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !251, file: !252, line: 754, baseType: !7, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !251, file: !252, line: 767, baseType: !96, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !251, file: !252, line: 768, baseType: !193, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !252, line: 770, baseType: !7, size: 32, offset: 352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !251, file: !252, line: 771, baseType: !7, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !251, file: !252, line: 774, baseType: !98, size: 32, offset: 416)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !251, file: !252, line: 775, baseType: !271, size: 128, offset: 448)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !272, line: 58, size: 128, elements: !273)
!272 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!273 = !{!274, !280, !285, !286}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !271, file: !272, line: 59, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !276, line: 60, size: 64, elements: !277)
!276 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !276, line: 61, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !272, line: 60, baseType: !281, size: 32, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !272, line: 60, size: 32, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !281, file: !272, line: 61, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !281, file: !272, line: 62, baseType: !125, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !271, file: !272, line: 65, baseType: !169, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !271, file: !272, line: 65, baseType: !169, size: 16, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !251, file: !252, line: 776, baseType: !7, size: 32, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !251, file: !252, line: 777, baseType: !115, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !251, file: !252, line: 778, baseType: !250, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !251, file: !252, line: 787, baseType: !98, size: 32, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !251, file: !252, line: 788, baseType: !98, size: 32, offset: 800)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !251, file: !252, line: 790, baseType: !98, size: 32, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !251, file: !252, line: 792, baseType: !98, size: 32, offset: 864)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !251, file: !252, line: 793, baseType: !98, size: 32, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !251, file: !252, line: 794, baseType: !98, size: 32, offset: 928)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !251, file: !252, line: 795, baseType: !7, size: 32, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !251, file: !252, line: 797, baseType: !298, size: 2048, offset: 1024)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !252, line: 551, size: 2048, elements: !299)
!299 = !{!300, !305, !313, !317, !318, !319, !320, !321, !322, !323, !324, !327, !328, !329, !330, !332, !335, !336, !337}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !298, file: !252, line: 553, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !252, line: 411, size: 128, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !301, file: !252, line: 412, baseType: !115, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !301, file: !252, line: 413, baseType: !261, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !298, file: !252, line: 554, baseType: !306, size: 192, align: 64, offset: 128)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !307, line: 5, size: 192, align: 64, elements: !308)
!307 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!308 = !{!309, !310, !312}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !306, file: !307, line: 6, baseType: !115, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !306, file: !307, line: 7, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !306, file: !307, line: 8, baseType: !311, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !298, file: !252, line: 555, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !162, line: 31, baseType: !316)
!316 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !298, file: !252, line: 556, baseType: !314, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !298, file: !252, line: 558, baseType: !173, size: 128, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !298, file: !252, line: 559, baseType: !7, size: 32, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !298, file: !252, line: 561, baseType: !314, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !298, file: !252, line: 562, baseType: !314, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !298, file: !252, line: 563, baseType: !314, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !298, file: !252, line: 564, baseType: !314, size: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !298, file: !252, line: 565, baseType: !325, size: 64, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !162, line: 30, baseType: !119)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !298, file: !252, line: 566, baseType: !314, size: 64, offset: 960)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !298, file: !252, line: 568, baseType: !314, size: 64, offset: 1024)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !298, file: !252, line: 571, baseType: !98, size: 32, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !298, file: !252, line: 572, baseType: !331, size: 64, offset: 1152)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !298, file: !252, line: 574, baseType: !333, size: 64, offset: 1216)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !252, line: 49, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !298, file: !252, line: 576, baseType: !333, size: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !298, file: !252, line: 578, baseType: !115, size: 64, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !298, file: !252, line: 588, baseType: !338, size: 512, align: 512, offset: 1536)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !252, line: 497, size: 512, align: 512, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !338, file: !252, line: 498, baseType: !314, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !338, file: !252, line: 499, baseType: !314, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !338, file: !252, line: 500, baseType: !314, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !338, file: !252, line: 501, baseType: !261, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !338, file: !252, line: 502, baseType: !261, size: 32, offset: 224)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !338, file: !252, line: 503, baseType: !115, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !338, file: !252, line: 504, baseType: !115, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !338, file: !252, line: 505, baseType: !115, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !338, file: !252, line: 506, baseType: !349, size: 64, align: 64, offset: 448)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !252, line: 445, size: 64, align: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !349, file: !252, line: 446, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !349, file: !252, line: 447, baseType: !7, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !251, file: !252, line: 798, baseType: !354, size: 384, offset: 3072)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !252, line: 592, size: 384, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !354, file: !252, line: 593, baseType: !173, size: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !354, file: !252, line: 594, baseType: !115, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !354, file: !252, line: 595, baseType: !115, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !354, file: !252, line: 596, baseType: !7, size: 32, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !354, file: !252, line: 597, baseType: !102, size: 16, offset: 288)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !354, file: !252, line: 598, baseType: !102, size: 16, offset: 304)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !354, file: !252, line: 600, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !251, file: !252, line: 799, baseType: !365, size: 1792, offset: 3456)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !252, line: 610, size: 1792, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !462, !463}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !365, file: !252, line: 611, baseType: !306, size: 192, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !365, file: !252, line: 618, baseType: !314, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !365, file: !252, line: 619, baseType: !314, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !365, file: !252, line: 620, baseType: !314, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !365, file: !252, line: 621, baseType: !314, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !365, file: !252, line: 622, baseType: !314, size: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !365, file: !252, line: 629, baseType: !325, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !365, file: !252, line: 630, baseType: !314, size: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !252, line: 631, baseType: !7, size: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !365, file: !252, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !365, file: !252, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !365, file: !252, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !365, file: !252, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !365, file: !252, line: 662, baseType: !381, size: 512, offset: 704)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !382)
!382 = !{!383, !391, !392, !397, !458, !459, !460, !461}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !381, file: !6, line: 119, baseType: !384, size: 256)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !385, line: 9, size: 256, elements: !386)
!385 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !384, file: !385, line: 10, baseType: !306, size: 192, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !384, file: !385, line: 11, baseType: !389, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !390, line: 29, baseType: !325)
!390 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !381, file: !6, line: 120, baseType: !389, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !381, file: !6, line: 121, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!5, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !381, file: !6, line: 122, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !400)
!400 = !{!401, !427, !428, !431, !441, !442, !453, !457}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !399, file: !6, line: 160, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !404)
!404 = !{!405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !403, file: !6, line: 216, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 23, baseType: !143)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !403, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !403, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !403, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !403, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !403, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !403, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !403, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !403, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !403, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !403, file: !6, line: 227, baseType: !102, size: 16, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !403, file: !6, line: 228, baseType: !102, size: 16, offset: 208)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !403, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !403, file: !6, line: 235, baseType: !389, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !403, file: !6, line: 236, baseType: !396, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !403, file: !6, line: 237, baseType: !389, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !403, file: !6, line: 238, baseType: !396, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !403, file: !6, line: 239, baseType: !424, size: 4096, align: 512, offset: 512)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 4096, align: 512, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !399, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !399, file: !6, line: 162, baseType: !429, size: 32, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !101, line: 32, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !113, line: 96, baseType: !98)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !399, file: !6, line: 163, baseType: !432, size: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !433, line: 274, baseType: !434)
!433 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !433, line: 274, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !434, file: !433, line: 274, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !433, line: 69, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !433, line: 64, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !438, file: !433, line: 65, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !399, file: !6, line: 164, baseType: !396, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !399, file: !6, line: 165, baseType: !443, size: 128, offset: 256)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !385, line: 14, size: 128, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !443, file: !385, line: 15, baseType: !446, size: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !307, line: 26, size: 128, elements: !447)
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !446, file: !307, line: 27, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !307, line: 12, size: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !449, file: !307, line: 13, baseType: !311, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !446, file: !307, line: 28, baseType: !311, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !399, file: !6, line: 166, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!389}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !399, file: !6, line: 167, baseType: !389, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !6, line: 123, baseType: !159, size: 8, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !381, file: !6, line: 124, baseType: !159, size: 8, offset: 456)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !381, file: !6, line: 125, baseType: !159, size: 8, offset: 464)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !381, file: !6, line: 126, baseType: !159, size: 8, offset: 472)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !365, file: !252, line: 671, baseType: !381, size: 512, offset: 1216)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !365, file: !252, line: 679, baseType: !464, size: 64, offset: 1728)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !251, file: !252, line: 800, baseType: !466, size: 64, offset: 5248)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !252, line: 800, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !251, file: !252, line: 809, baseType: !470, size: 64, offset: 5312)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !252, line: 70, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !251, file: !252, line: 825, baseType: !473, size: 2048, align: 512, offset: 5632)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !252, line: 509, size: 2048, align: 512, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !473, file: !252, line: 511, baseType: !314, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !473, file: !252, line: 512, baseType: !314, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !473, file: !252, line: 513, baseType: !314, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !473, file: !252, line: 514, baseType: !314, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !473, file: !252, line: 515, baseType: !314, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !473, file: !252, line: 516, baseType: !314, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !473, file: !252, line: 518, baseType: !314, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !473, file: !252, line: 519, baseType: !314, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !473, file: !252, line: 520, baseType: !325, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !473, file: !252, line: 522, baseType: !314, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !473, file: !252, line: 523, baseType: !314, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !473, file: !252, line: 524, baseType: !325, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !473, file: !252, line: 526, baseType: !325, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !473, file: !252, line: 527, baseType: !314, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !473, file: !252, line: 529, baseType: !314, size: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !473, file: !252, line: 530, baseType: !314, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !473, file: !252, line: 531, baseType: !314, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !473, file: !252, line: 532, baseType: !314, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !473, file: !252, line: 533, baseType: !314, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !473, file: !252, line: 535, baseType: !314, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !473, file: !252, line: 536, baseType: !314, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !473, file: !252, line: 537, baseType: !314, size: 64, offset: 1344)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !473, file: !252, line: 538, baseType: !314, size: 64, offset: 1408)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !473, file: !252, line: 539, baseType: !314, size: 64, offset: 1472)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !473, file: !252, line: 540, baseType: !314, size: 64, offset: 1536)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !473, file: !252, line: 541, baseType: !314, size: 64, offset: 1600)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !473, file: !252, line: 542, baseType: !314, size: 64, offset: 1664)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !473, file: !252, line: 543, baseType: !314, size: 64, offset: 1728)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !251, file: !252, line: 833, baseType: !7, size: 32, offset: 7680)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !251, file: !252, line: 836, baseType: !7, size: 32, offset: 7712)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !251, file: !252, line: 837, baseType: !98, size: 32, offset: 7744)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !251, file: !252, line: 838, baseType: !507, size: 64, offset: 7808)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !510, line: 19, baseType: !511)
!510 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !510, line: 19, size: 64, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !511, file: !510, line: 19, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 1)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !251, file: !252, line: 839, baseType: !518, size: 64, offset: 7872)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !251, file: !252, line: 840, baseType: !509, size: 64, offset: 7936)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !251, file: !252, line: 841, baseType: !96, size: 64, offset: 8000)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !251, file: !252, line: 843, baseType: !102, size: 16, offset: 8064)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !251, file: !252, line: 845, baseType: !102, size: 16, offset: 8080)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !251, file: !252, line: 848, baseType: !98, size: 32, offset: 8096)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !251, file: !252, line: 849, baseType: !525, size: 32, offset: 8128)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !252, line: 718, size: 32, elements: !526)
!526 = !{!527, !534}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !525, file: !252, line: 724, baseType: !528, size: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !525, file: !252, line: 719, size: 32, elements: !529)
!529 = !{!530, !531, !532, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !528, file: !252, line: 720, baseType: !159, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !528, file: !252, line: 721, baseType: !159, size: 8, offset: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !528, file: !252, line: 722, baseType: !159, size: 8, offset: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !528, file: !252, line: 723, baseType: !159, size: 8, offset: 24)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !525, file: !252, line: 725, baseType: !261, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !251, file: !252, line: 850, baseType: !173, size: 128, offset: 8192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !251, file: !252, line: 851, baseType: !537, size: 64, offset: 8320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !252, line: 60, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !251, file: !252, line: 855, baseType: !115, size: 64, offset: 8384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !251, file: !252, line: 856, baseType: !159, size: 8, offset: 8448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !251, file: !252, line: 857, baseType: !159, size: 8, offset: 8456)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !251, file: !252, line: 858, baseType: !98, size: 32, offset: 8480)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !251, file: !252, line: 859, baseType: !173, size: 128, offset: 8512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !251, file: !252, line: 860, baseType: !98, size: 32, offset: 8640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !251, file: !252, line: 861, baseType: !173, size: 128, offset: 8704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !251, file: !252, line: 873, baseType: !547, size: 256, offset: 8832)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !252, line: 376, size: 256, elements: !548)
!548 = !{!549, !550, !551, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !547, file: !252, line: 381, baseType: !115, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !547, file: !252, line: 384, baseType: !316, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !547, file: !252, line: 389, baseType: !316, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !547, file: !252, line: 392, baseType: !316, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !251, file: !252, line: 875, baseType: !173, size: 128, offset: 9088)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !251, file: !252, line: 877, baseType: !555, size: 320, offset: 9216)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !556, line: 86, size: 320, elements: !557)
!556 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !555, file: !556, line: 87, baseType: !98, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !555, file: !556, line: 88, baseType: !173, size: 128, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !555, file: !556, line: 89, baseType: !173, size: 128, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !251, file: !252, line: 878, baseType: !306, size: 192, align: 64, offset: 9536)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !251, file: !252, line: 881, baseType: !563, size: 64, offset: 9728)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !12, line: 733, size: 10240, elements: !565)
!565 = !{!566, !2739}
!566 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !12, line: 734, baseType: !567, size: 10240)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !564, file: !12, line: 734, size: 10240, elements: !568)
!568 = !{!569, !573, !587, !2579, !2580, !2581, !2582, !2583, !2584, !2591, !2592, !2593, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2632, !2634, !2695, !2719, !2720, !2721, !2724, !2725, !2726, !2729, !2730, !2731, !2737, !2738}
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !12, line: 739, baseType: !570, size: 512, align: 512)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !567, file: !12, line: 739, size: 512, align: 512, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !570, file: !12, line: 747, baseType: !125, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !567, file: !12, line: 750, baseType: !574, size: 128, offset: 512)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !575, line: 218, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!576 = !{!577, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !575, line: 219, baseType: !578, size: 32)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !575, line: 219, size: 32, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !578, file: !575, line: 220, baseType: !135, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !578, file: !575, line: 221, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !575, line: 197, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 197, elements: !584)
!584 = !{}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !574, file: !575, line: 223, baseType: !7, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !574, file: !575, line: 224, baseType: !96, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !567, file: !12, line: 752, baseType: !588, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!115, !591, !115, !115, !115, !115}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !593)
!593 = !{!594, !600, !601, !603, !610, !622, !623, !624, !662, !876, !885, !2569, !2570, !2571, !2572, !2573, !2574, !2576, !2577, !2578}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !28, line: 995, baseType: !595, size: 128)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !28, line: 995, size: 128, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !595, file: !28, line: 996, baseType: !275, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !595, file: !28, line: 997, baseType: !215, size: 128, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !595, file: !28, line: 998, baseType: !7, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !592, file: !28, line: 1005, baseType: !135, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !592, file: !28, line: 1006, baseType: !602, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !101, line: 156, baseType: !7)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !592, file: !28, line: 1007, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !605, line: 13, baseType: !606)
!605 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !101, line: 181, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 179, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !607, file: !101, line: 180, baseType: !325, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !592, file: !28, line: 1008, baseType: !611, size: 256, offset: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !612, line: 66, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!613 = !{!614, !615, !616, !621}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !612, line: 67, baseType: !604, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !611, file: !612, line: 68, baseType: !406, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !611, file: !612, line: 70, baseType: !617, size: 32, offset: 96)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !618, line: 15, size: 32, elements: !619)
!618 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !617, file: !618, line: 20, baseType: !125, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !611, file: !612, line: 72, baseType: !173, size: 128, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !592, file: !28, line: 1009, baseType: !117, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !592, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !592, file: !28, line: 1011, baseType: !625, size: 256, offset: 640)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !626)
!626 = !{!627, !650, !651, !652, !660, !661}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !625, file: !28, line: 949, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !629, line: 34, baseType: !630)
!629 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !629, line: 25, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !630, file: !629, line: 26, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !634, line: 27, baseType: !635)
!634 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !634, line: 13, size: 64, elements: !636)
!636 = !{!637, !649}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !634, line: 14, baseType: !638, size: 32)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !634, line: 14, size: 32, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !638, file: !634, line: 15, baseType: !125, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !634, line: 16, baseType: !642, size: 32)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !634, line: 16, size: 32, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !642, file: !634, line: 18, baseType: !159, size: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !642, file: !634, line: 19, baseType: !646, size: 24, offset: 8)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 3)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !635, file: !634, line: 26, baseType: !147, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !625, file: !28, line: 950, baseType: !189, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !625, file: !28, line: 951, baseType: !66, size: 32, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !625, file: !28, line: 952, baseType: !653, size: 32, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !654, line: 23, baseType: !655)
!654 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 21, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !655, file: !654, line: 22, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !101, line: 37, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !113, line: 49, baseType: !7)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !625, file: !28, line: 952, baseType: !653, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !625, file: !28, line: 953, baseType: !98, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !592, file: !28, line: 1012, baseType: !663, size: 64, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !666, line: 110, size: 1472, elements: !667)
!666 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!667 = !{!668, !669, !670, !677, !678, !679, !680, !681, !682, !683, !684, !690, !691, !692, !693, !694, !695, !819, !820, !821, !822, !823, !854, !857, !861, !871}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !665, file: !666, line: 111, baseType: !604, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !665, file: !666, line: 112, baseType: !653, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !665, file: !666, line: 113, baseType: !671, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !654, line: 28, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 26, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !672, file: !654, line: 27, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !101, line: 38, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !113, line: 50, baseType: !7)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !665, file: !666, line: 114, baseType: !653, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !665, file: !666, line: 115, baseType: !671, size: 32, offset: 160)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !665, file: !666, line: 116, baseType: !653, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !665, file: !666, line: 117, baseType: !671, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !665, file: !666, line: 118, baseType: !653, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !665, file: !666, line: 119, baseType: !671, size: 32, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !665, file: !666, line: 120, baseType: !7, size: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !665, file: !666, line: 121, baseType: !685, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !686, line: 24, baseType: !687)
!686 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 24, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !686, line: 24, baseType: !314, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !665, file: !666, line: 122, baseType: !685, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !665, file: !666, line: 123, baseType: !685, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !665, file: !666, line: 124, baseType: !685, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !665, file: !666, line: 125, baseType: !685, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !665, file: !666, line: 127, baseType: !163, size: 8, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !665, file: !666, line: 129, baseType: !696, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !698, line: 195, size: 1728, elements: !699)
!698 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!699 = !{!700, !701, !706, !711, !720, !723, !724, !731, !732, !733, !734, !737, !738, !739, !741, !742, !783, !804}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !697, file: !698, line: 196, baseType: !193, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !697, file: !698, line: 197, baseType: !702, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !698, line: 28, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !101, line: 104, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !162, line: 26, baseType: !98)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 198, baseType: !707, size: 192, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 198, size: 192, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !707, file: !698, line: 199, baseType: !173, size: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !707, file: !698, line: 200, baseType: !306, size: 192, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !697, file: !698, line: 205, baseType: !712, size: 320, offset: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !713, line: 48, size: 320, elements: !714)
!713 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !713, line: 49, baseType: !604, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !712, file: !713, line: 55, baseType: !604, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !712, file: !713, line: 57, baseType: !617, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !712, file: !713, line: 59, baseType: !406, size: 32, offset: 160)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !712, file: !713, line: 60, baseType: !173, size: 128, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !697, file: !698, line: 206, baseType: !721, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !698, line: 206, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !697, file: !698, line: 207, baseType: !96, size: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 208, baseType: !725, size: 64, offset: 704)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 208, size: 64, elements: !726)
!726 = !{!727, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !725, file: !698, line: 209, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !729, line: 8, baseType: !326)
!729 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!730 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !725, file: !698, line: 210, baseType: !728, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !697, file: !698, line: 212, baseType: !728, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !697, file: !698, line: 213, baseType: !653, size: 32, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !697, file: !698, line: 214, baseType: !671, size: 32, offset: 864)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !697, file: !698, line: 215, baseType: !735, size: 32, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !698, line: 31, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 110, baseType: !261)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !697, file: !698, line: 216, baseType: !102, size: 16, offset: 928)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !697, file: !698, line: 217, baseType: !102, size: 16, offset: 944)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !697, file: !698, line: 221, baseType: !740, size: 16, offset: 960)
!740 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !698, line: 228, baseType: !115, size: 64, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 245, baseType: !743, size: 320, offset: 1088)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 245, size: 320, elements: !744)
!744 = !{!745, !774}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !743, file: !698, line: 246, baseType: !746, size: 320)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !698, line: 114, size: 320, elements: !747)
!747 = !{!748, !749, !761, !764, !773}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !746, file: !698, line: 116, baseType: !115, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !698, line: 117, baseType: !750, size: 64, offset: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !746, file: !698, line: 117, size: 64, elements: !751)
!751 = !{!752, !760}
!752 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !698, line: 118, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !698, line: 118, size: 64, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !753, file: !698, line: 120, baseType: !169, size: 16)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !753, file: !698, line: 121, baseType: !757, size: 48, offset: 16)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 6)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !750, file: !698, line: 127, baseType: !115, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !698, line: 129, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !698, line: 102, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !746, file: !698, line: 130, baseType: !765, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !698, line: 108, size: 192, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !766, file: !698, line: 109, baseType: !215, size: 128, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !766, file: !698, line: 110, baseType: !193, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !766, file: !698, line: 111, baseType: !771, size: 8, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !101, line: 35, baseType: !772)
!772 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !746, file: !698, line: 131, baseType: !92, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !698, line: 247, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !698, line: 247, size: 320, elements: !776)
!776 = !{!777, !778, !779, !780, !781}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !775, file: !698, line: 248, baseType: !115, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !775, file: !698, line: 249, baseType: !115, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !698, line: 250, baseType: !762, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !775, file: !698, line: 251, baseType: !765, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !775, file: !698, line: 252, baseType: !782, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 260, baseType: !784, size: 256, offset: 1408)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 260, size: 256, elements: !785)
!785 = !{!786, !792}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !784, file: !698, line: 261, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !698, line: 134, size: 256, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !787, file: !698, line: 135, baseType: !96, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !787, file: !698, line: 136, baseType: !791, size: 256)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !210)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !698, line: 262, baseType: !793, size: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !698, line: 262, size: 256, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !793, file: !698, line: 264, baseType: !173, size: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !793, file: !698, line: 265, baseType: !797, size: 128, offset: 128)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !798, line: 22, size: 128, elements: !799)
!798 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!799 = !{!800, !803}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !797, file: !798, line: 23, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !798, line: 23, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !797, file: !798, line: 24, baseType: !115, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !697, file: !698, line: 280, baseType: !805, size: 64, offset: 1664)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !698, line: 176, size: 192, elements: !807)
!807 = !{!808, !817, !818}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !806, file: !698, line: 177, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !698, line: 171, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!98, !696, !813, !815, !696}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !806, file: !698, line: 178, baseType: !696, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !806, file: !698, line: 179, baseType: !762, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !665, file: !666, line: 130, baseType: !696, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !665, file: !666, line: 131, baseType: !696, size: 64, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !665, file: !666, line: 132, baseType: !696, size: 64, offset: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !665, file: !666, line: 135, baseType: !96, size: 64, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !665, file: !666, line: 137, baseType: !824, size: 64, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !826, line: 14, size: 1088, elements: !827)
!826 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!827 = !{!828, !829, !838, !839, !840, !841, !842, !843}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !825, file: !826, line: 15, baseType: !193, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !825, file: !826, line: 17, baseType: !830, size: 320, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !831, line: 22, size: 320, elements: !832)
!831 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!832 = !{!833, !834, !835, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !830, file: !831, line: 23, baseType: !406, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !831, line: 24, baseType: !325, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !830, file: !831, line: 26, baseType: !173, size: 128, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !830, file: !831, line: 28, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !825, file: !826, line: 19, baseType: !115, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !825, file: !826, line: 20, baseType: !604, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !825, file: !826, line: 23, baseType: !205, size: 128, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !825, file: !826, line: 24, baseType: !653, size: 32, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !825, file: !826, line: 29, baseType: !604, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !825, file: !826, line: 36, baseType: !844, size: 320, offset: 768)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !845, line: 15, size: 320, elements: !846)
!845 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!846 = !{!847, !848, !849, !850, !851, !852, !853}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !844, file: !845, line: 16, baseType: !406, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !844, file: !845, line: 18, baseType: !98, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !844, file: !845, line: 19, baseType: !98, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !844, file: !845, line: 20, baseType: !98, size: 32, offset: 96)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !844, file: !845, line: 21, baseType: !98, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !844, file: !845, line: 22, baseType: !115, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 23, baseType: !115, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !665, file: !666, line: 138, baseType: !855, size: 64, offset: 1152)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !654, line: 18, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !665, file: !666, line: 139, baseType: !858, size: 64, offset: 1216)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !860, line: 16, flags: DIFlagFwdDecl)
!860 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !665, file: !666, line: 140, baseType: !862, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !666, line: 25, size: 64, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !863, file: !666, line: 26, baseType: !125, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !863, file: !666, line: 27, baseType: !98, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !863, file: !666, line: 28, baseType: !868, offset: 64)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: -1)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !666, line: 142, baseType: !872, size: 128, offset: 1344)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !666, line: 142, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !872, file: !666, line: 143, baseType: !98, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !872, file: !666, line: 144, baseType: !215, size: 128, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !592, file: !28, line: 1013, baseType: !877, size: 256, offset: 960)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !877, file: !28, line: 971, baseType: !115, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !877, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !877, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !877, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !877, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !877, file: !28, line: 976, baseType: !117, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !592, file: !28, line: 1014, baseType: !886, size: 128, offset: 1216)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !887, line: 8, size: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!888 = !{!889, !2568}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !886, file: !887, line: 9, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !892, line: 70, size: 256, elements: !893)
!892 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!893 = !{!894, !2565, !2566, !2567}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !891, file: !892, line: 71, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !897, line: 82, size: 1536, elements: !898)
!897 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!898 = !{!899, !900, !905, !913, !914, !929, !2533, !2535, !2548, !2549, !2550, !2551, !2552, !2557, !2558, !2559}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !896, file: !897, line: 84, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !896, file: !897, line: 85, baseType: !901, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !433, line: 275, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !433, line: 275, size: 32, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !902, file: !433, line: 275, baseType: !437, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !896, file: !897, line: 86, baseType: !906, size: 128, offset: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !907, line: 38, size: 128, elements: !908)
!907 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!908 = !{!909, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !906, file: !907, line: 39, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !906, file: !907, line: 39, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !896, file: !897, line: 87, baseType: !895, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !896, file: !897, line: 88, baseType: !915, size: 128, offset: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !897, line: 49, size: 128, elements: !916)
!916 = !{!917, !926}
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !897, line: 50, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !897, line: 50, size: 64, elements: !919)
!919 = !{!920, !925}
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !897, line: 51, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !897, line: 51, size: 64, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !921, file: !897, line: 52, baseType: !261, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !921, file: !897, line: 52, baseType: !261, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !918, file: !897, line: 54, baseType: !314, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !897, line: 56, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !896, file: !897, line: 89, baseType: !930, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !942, !943, !1131, !1725, !2224, !2225, !2226, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2510, !2518, !2519, !2520, !2529, !2530, !2531, !2532}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !931, file: !28, line: 642, baseType: !100, size: 16)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !931, file: !28, line: 643, baseType: !102, size: 16, offset: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !931, file: !28, line: 644, baseType: !653, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !931, file: !28, line: 645, baseType: !173, size: 128, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !931, file: !28, line: 646, baseType: !671, size: 32, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !931, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !931, file: !28, line: 650, baseType: !940, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !931, file: !28, line: 651, baseType: !940, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !931, file: !28, line: 654, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !947)
!947 = !{!948, !952, !965, !971, !975, !979, !983, !987, !991, !995, !999, !1000, !1006, !1010, !1048, !1079, !1086, !1092, !1096, !1100, !1104, !1108, !1112, !1118, !1122}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !946, file: !28, line: 1967, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!895, !930, !895, !7}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !946, file: !28, line: 1968, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!92, !895, !930, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !958, line: 10, size: 128, elements: !959)
!958 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!959 = !{!960, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !957, file: !958, line: 11, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !96}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !957, file: !958, line: 12, baseType: !96, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !946, file: !28, line: 1969, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!98, !969, !930, !98}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !686, line: 42, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !946, file: !28, line: 1970, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!940, !930, !98, !771}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !946, file: !28, line: 1972, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!98, !895, !782, !98}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !946, file: !28, line: 1974, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!98, !969, !930, !895, !100, !771}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !946, file: !28, line: 1976, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!98, !895, !930, !895}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !946, file: !28, line: 1977, baseType: !988, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!98, !930, !895}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !946, file: !28, line: 1978, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!98, !969, !930, !895, !92}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !946, file: !28, line: 1980, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!98, !969, !930, !895, !100}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !946, file: !28, line: 1982, baseType: !988, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !946, file: !28, line: 1983, baseType: !1001, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!98, !969, !930, !895, !100, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !101, line: 21, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !101, line: 18, baseType: !261)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !946, file: !28, line: 1985, baseType: !1007, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!98, !969, !930, !895, !930, !895, !7}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !946, file: !28, line: 1987, baseType: !1011, size: 64, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!98, !969, !895, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1029, !1038, !1039, !1045, !1046, !1047}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1015, file: !28, line: 227, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1015, file: !28, line: 228, baseType: !100, size: 16, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !28, line: 241, baseType: !1020, size: 32, offset: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !28, line: 241, size: 32, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1020, file: !28, line: 242, baseType: !653, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1020, file: !28, line: 243, baseType: !1024, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1025, line: 16, baseType: !1026)
!1025 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 14, size: 32, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1026, file: !1025, line: 15, baseType: !658, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !28, line: 245, baseType: !1030, size: 32, offset: 96)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !28, line: 245, size: 32, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1030, file: !28, line: 246, baseType: !671, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1030, file: !28, line: 247, baseType: !1034, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1025, line: 20, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 18, size: 32, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1035, file: !1025, line: 19, baseType: !675, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1015, file: !28, line: 249, baseType: !117, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1015, file: !28, line: 250, baseType: !1040, size: 128, offset: 192)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !729, line: 13, size: 128, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1040, file: !729, line: 14, baseType: !728, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1040, file: !729, line: 15, baseType: !1044, size: 64, offset: 64)
!1044 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1015, file: !28, line: 251, baseType: !1040, size: 128, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1015, file: !28, line: 252, baseType: !1040, size: 128, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1015, file: !28, line: 259, baseType: !591, size: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !946, file: !28, line: 1988, baseType: !1049, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!98, !969, !1052, !1054, !261, !7}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1056, line: 22, size: 1280, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1055, file: !1056, line: 23, baseType: !261, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1055, file: !1056, line: 24, baseType: !100, size: 16, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1055, file: !1056, line: 25, baseType: !7, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1055, file: !1056, line: 26, baseType: !736, size: 32, offset: 96)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1055, file: !1056, line: 27, baseType: !314, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1055, file: !1056, line: 28, baseType: !314, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1055, file: !1056, line: 41, baseType: !314, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1055, file: !1056, line: 42, baseType: !1004, size: 32, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1055, file: !1056, line: 43, baseType: !1004, size: 32, offset: 352)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1055, file: !1056, line: 44, baseType: !653, size: 32, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1055, file: !1056, line: 45, baseType: !671, size: 32, offset: 416)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1055, file: !1056, line: 46, baseType: !117, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1055, file: !1056, line: 47, baseType: !1040, size: 128, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1055, file: !1056, line: 48, baseType: !1040, size: 128, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1055, file: !1056, line: 49, baseType: !1040, size: 128, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1055, file: !1056, line: 50, baseType: !1040, size: 128, offset: 896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1055, file: !1056, line: 51, baseType: !314, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1055, file: !1056, line: 52, baseType: !314, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1055, file: !1056, line: 53, baseType: !261, size: 32, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1055, file: !1056, line: 54, baseType: !261, size: 32, offset: 1184)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1055, file: !1056, line: 55, baseType: !314, size: 64, offset: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !946, file: !28, line: 1990, baseType: !1080, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1083, !895, !782, !111}
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !101, line: 66, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !113, line: 73, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !113, line: 15, baseType: !1044)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !946, file: !28, line: 1991, baseType: !1087, size: 64, offset: 1024)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!98, !930, !1090, !314, !314}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !946, file: !28, line: 1993, baseType: !1093, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!98, !930, !98}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !946, file: !28, line: 1994, baseType: !1097, size: 64, offset: 1152)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!98, !930, !895, !591, !7, !100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !946, file: !28, line: 1997, baseType: !1101, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!98, !969, !930, !591, !100}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !946, file: !28, line: 1999, baseType: !1105, size: 64, offset: 1280)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!940, !969, !895, !98}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !946, file: !28, line: 2001, baseType: !1109, size: 64, offset: 1344)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!98, !969, !895, !940, !98}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !946, file: !28, line: 2003, baseType: !1113, size: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!98, !969, !895, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !946, file: !28, line: 2005, baseType: !1119, size: 64, offset: 1472)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!98, !895, !1116}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !946, file: !28, line: 2006, baseType: !1123, size: 64, offset: 1536)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !930}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1127, file: !28, line: 3193, baseType: !238, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1127, file: !28, line: 3194, baseType: !261, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !931, file: !28, line: 655, baseType: !1132, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1181, !1354, !1394, !1477, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1494, !1498, !1499, !1502, !1505, !1508, !1511, !1512, !1513, !1554, !1581, !1582, !1583, !1584, !1585, !1586, !1589, !1593, !1602, !1603, !1604, !1605, !1664, !1679, !1680, !1681, !1682, !1685, !1689, !1690, !1691, !1706, !1707, !1708, !1719, !1720, !1721, !1722, !1723, !1724}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1133, file: !28, line: 1191, baseType: !173, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1133, file: !28, line: 1192, baseType: !1004, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1133, file: !28, line: 1193, baseType: !163, size: 8, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1133, file: !28, line: 1194, baseType: !115, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1133, file: !28, line: 1195, baseType: !117, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1133, file: !28, line: 1196, baseType: !1141, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1152, !1156, !1160, !1164, !1168, !1169, !1170, !1173, !1174, !1175, !1177, !1178, !1179, !1180}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1142, file: !28, line: 2367, baseType: !92, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1142, file: !28, line: 2368, baseType: !98, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1142, file: !28, line: 2376, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!98, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !892, line: 21, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1142, file: !28, line: 2377, baseType: !1153, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1142, file: !28, line: 2378, baseType: !1157, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!895, !1141, !98, !92, !96}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1142, file: !28, line: 2380, baseType: !1161, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1132}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1142, file: !28, line: 2381, baseType: !1165, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1167, line: 103, flags: DIFlagFwdDecl)
!1167 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1142, file: !28, line: 2382, baseType: !1141, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1142, file: !28, line: 2383, baseType: !201, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1142, file: !28, line: 2385, baseType: !1171, offset: 576)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1172, line: 206, elements: !584)
!1172 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1142, file: !28, line: 2386, baseType: !1171, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1142, file: !28, line: 2387, baseType: !1171, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1142, file: !28, line: 2388, baseType: !1176, offset: 576)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, elements: !647)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1142, file: !28, line: 2390, baseType: !1171, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1142, file: !28, line: 2391, baseType: !1171, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1142, file: !28, line: 2392, baseType: !1171, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1142, file: !28, line: 2393, baseType: !1171, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1133, file: !28, line: 1197, baseType: !1182, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !1185)
!1185 = !{!1186, !1190, !1194, !1195, !1199, !1205, !1209, !1210, !1211, !1215, !1219, !1223, !1224, !1225, !1231, !1236, !1237, !1279, !1280, !1281, !1282, !1286, !1290, !1337, !1352, !1353}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1184, file: !28, line: 2058, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!930, !1132}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1184, file: !28, line: 2059, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !930}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1184, file: !28, line: 2060, baseType: !1191, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1184, file: !28, line: 2062, baseType: !1196, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !930, !98}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1184, file: !28, line: 2063, baseType: !1200, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!98, !930, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1184, file: !28, line: 2064, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!98, !930}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1184, file: !28, line: 2065, baseType: !1191, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1184, file: !28, line: 2066, baseType: !1161, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1184, file: !28, line: 2067, baseType: !1212, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!98, !1132, !98}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1184, file: !28, line: 2068, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!98, !1132, !27}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1184, file: !28, line: 2069, baseType: !1220, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!98, !1132}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1184, file: !28, line: 2070, baseType: !1216, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1184, file: !28, line: 2071, baseType: !1220, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1184, file: !28, line: 2072, baseType: !1226, size: 64, offset: 832)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!98, !895, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1184, file: !28, line: 2073, baseType: !1232, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!98, !1132, !1235, !782}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1184, file: !28, line: 2074, baseType: !1161, size: 64, offset: 960)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1184, file: !28, line: 2076, baseType: !1238, size: 64, offset: 1024)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!98, !1241, !895}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1243, line: 17, size: 960, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1274, !1275, !1278}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1242, file: !1243, line: 18, baseType: !782, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1242, file: !1243, line: 19, baseType: !111, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1242, file: !1243, line: 20, baseType: !111, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1242, file: !1243, line: 21, baseType: !111, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1242, file: !1243, line: 22, baseType: !111, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1242, file: !1243, line: 23, baseType: !117, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1242, file: !1243, line: 24, baseType: !117, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1242, file: !1243, line: 25, baseType: !611, size: 256, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1242, file: !1243, line: 26, baseType: !1254, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1243, line: 32, size: 256, elements: !1257)
!1257 = !{!1258, !1262, !1266, !1270}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1256, file: !1243, line: 33, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!96, !1241, !116}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1256, file: !1243, line: 34, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1241, !96}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !1243, line: 35, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!96, !1241, !96, !116}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1256, file: !1243, line: 36, baseType: !1271, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!98, !1241, !96}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1242, file: !1243, line: 27, baseType: !98, size: 32, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1242, file: !1243, line: 28, baseType: !1276, size: 64, offset: 832)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1242, file: !1243, line: 29, baseType: !96, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1184, file: !28, line: 2077, baseType: !1238, size: 64, offset: 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1184, file: !28, line: 2078, baseType: !1238, size: 64, offset: 1152)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1184, file: !28, line: 2079, baseType: !1238, size: 64, offset: 1216)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1184, file: !28, line: 2081, baseType: !1283, size: 64, offset: 1280)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1083, !1132, !98, !782, !111, !117}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1184, file: !28, line: 2082, baseType: !1287, size: 64, offset: 1344)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!1083, !1132, !98, !92, !111, !117}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1184, file: !28, line: 2083, baseType: !1291, size: 64, offset: 1408)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1294, !930}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1322, !1323, !1324}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1296, file: !33, line: 297, baseType: !205, size: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1296, file: !33, line: 298, baseType: !173, size: 128, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1296, file: !33, line: 299, baseType: !173, size: 128, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1296, file: !33, line: 300, baseType: !173, size: 128, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1296, file: !33, line: 301, baseType: !611, size: 256, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1296, file: !33, line: 302, baseType: !135, size: 32, offset: 768)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1296, file: !33, line: 303, baseType: !125, size: 32, offset: 800)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1296, file: !33, line: 304, baseType: !1132, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1296, file: !33, line: 305, baseType: !1307, size: 64, offset: 896)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1308)
!1308 = !{!1309, !1321}
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !33, line: 69, baseType: !1310, size: 32)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !33, line: 69, size: 32, elements: !1311)
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1310, file: !33, line: 70, baseType: !653, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1310, file: !33, line: 71, baseType: !671, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1310, file: !33, line: 72, baseType: !1315, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1316, line: 24, baseType: !1317)
!1316 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 22, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1317, file: !1316, line: 23, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1316, line: 20, baseType: !659)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1307, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1296, file: !33, line: 306, baseType: !117, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1296, file: !33, line: 307, baseType: !115, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1296, file: !33, line: 308, baseType: !1325, size: 576, offset: 1088)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1326)
!1326 = !{!1327, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1325, file: !33, line: 206, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !119)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1325, file: !33, line: 207, baseType: !1328, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1325, file: !33, line: 208, baseType: !1328, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1325, file: !33, line: 209, baseType: !1328, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1325, file: !33, line: 210, baseType: !1328, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1325, file: !33, line: 211, baseType: !1328, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1325, file: !33, line: 212, baseType: !1328, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1325, file: !33, line: 213, baseType: !728, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1325, file: !33, line: 214, baseType: !728, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1184, file: !28, line: 2085, baseType: !1338, size: 64, offset: 1472)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!1044, !1132, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1343, line: 15, size: 256, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1344 = !{!1345, !1346, !1347, !1348, !1349}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1342, file: !1343, line: 16, baseType: !243, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1342, file: !1343, line: 19, baseType: !98, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1342, file: !1343, line: 26, baseType: !115, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1342, file: !1343, line: 33, baseType: !115, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1342, file: !1343, line: 36, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !12, line: 33, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1184, file: !28, line: 2087, baseType: !1338, size: 64, offset: 1536)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1184, file: !28, line: 2089, baseType: !1161, size: 64, offset: 1600)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1133, file: !28, line: 1198, baseType: !1355, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1358)
!1358 = !{!1359, !1363, !1367, !1371, !1372, !1373, !1374, !1375, !1380, !1385, !1389}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1357, file: !33, line: 325, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!98, !1295}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1357, file: !33, line: 326, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1295, !1132, !98}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1357, file: !33, line: 327, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1295}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1357, file: !33, line: 328, baseType: !1360, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1357, file: !33, line: 329, baseType: !1360, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1357, file: !33, line: 330, baseType: !1360, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1357, file: !33, line: 331, baseType: !1212, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1357, file: !33, line: 334, baseType: !1376, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1379, !930}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1357, file: !33, line: 335, baseType: !1381, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!98, !930, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1357, file: !33, line: 337, baseType: !1386, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!98, !930, !1379}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1357, file: !33, line: 339, baseType: !1390, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!98, !1132, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1133, file: !28, line: 1199, baseType: !1395, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1398)
!1398 = !{!1399, !1403, !1404, !1408, !1409, !1410, !1425, !1448, !1452, !1453, !1476}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1397, file: !33, line: 431, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!98, !1132, !98, !98, !1052}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1397, file: !33, line: 432, baseType: !1212, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1397, file: !33, line: 433, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!98, !1132, !7}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1397, file: !33, line: 434, baseType: !1405, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1397, file: !33, line: 435, baseType: !1212, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1397, file: !33, line: 436, baseType: !1411, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!98, !1132, !98, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1415, file: !33, line: 418, baseType: !98, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1415, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1415, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1415, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1415, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1415, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1415, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1415, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1397, file: !33, line: 437, baseType: !1426, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!98, !1132, !1307, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1430, file: !33, line: 346, baseType: !98, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1430, file: !33, line: 347, baseType: !314, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1430, file: !33, line: 348, baseType: !314, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1430, file: !33, line: 349, baseType: !314, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1430, file: !33, line: 350, baseType: !314, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1430, file: !33, line: 351, baseType: !314, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1430, file: !33, line: 352, baseType: !314, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1430, file: !33, line: 353, baseType: !325, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1430, file: !33, line: 355, baseType: !325, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1430, file: !33, line: 356, baseType: !98, size: 32, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1430, file: !33, line: 357, baseType: !98, size: 32, offset: 608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1430, file: !33, line: 358, baseType: !314, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1430, file: !33, line: 359, baseType: !314, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1430, file: !33, line: 360, baseType: !314, size: 64, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1430, file: !33, line: 361, baseType: !325, size: 64, offset: 832)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1430, file: !33, line: 362, baseType: !98, size: 32, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1397, file: !33, line: 438, baseType: !1449, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!98, !1132, !1393, !1429}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1397, file: !33, line: 440, baseType: !1426, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1397, file: !33, line: 441, baseType: !1454, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!98, !1132, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1458, file: !33, line: 412, baseType: !7, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1458, file: !33, line: 413, baseType: !1462, size: 1344, offset: 64)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 1344, elements: !647)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1475}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !33, line: 398, baseType: !7, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1463, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1463, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1463, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1463, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1463, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1463, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1463, file: !33, line: 406, baseType: !316, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1463, file: !33, line: 407, baseType: !1474, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !101, line: 132, baseType: !314)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1463, file: !33, line: 408, baseType: !1474, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1397, file: !33, line: 442, baseType: !1405, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1133, file: !28, line: 1200, baseType: !1478, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1133, file: !28, line: 1201, baseType: !115, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1133, file: !28, line: 1202, baseType: !115, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1133, file: !28, line: 1203, baseType: !115, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1133, file: !28, line: 1204, baseType: !895, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1133, file: !28, line: 1205, baseType: !712, size: 320, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1133, file: !28, line: 1206, baseType: !98, size: 32, offset: 1216)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1133, file: !28, line: 1207, baseType: !125, size: 32, offset: 1248)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1133, file: !28, line: 1209, baseType: !96, size: 64, offset: 1280)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1133, file: !28, line: 1211, baseType: !1490, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1133, file: !28, line: 1223, baseType: !1495, size: 64, offset: 1408)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !907, line: 34, size: 64, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1495, file: !907, line: 35, baseType: !910, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1133, file: !28, line: 1224, baseType: !173, size: 128, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1133, file: !28, line: 1225, baseType: !1500, size: 64, offset: 1600)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1133, file: !28, line: 1226, baseType: !1503, size: 64, offset: 1664)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1133, file: !28, line: 1227, baseType: !1506, size: 64, offset: 1728)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1133, file: !28, line: 1228, baseType: !1509, size: 64, offset: 1792)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1133, file: !28, line: 1229, baseType: !205, size: 128, offset: 1856)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1133, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1133, file: !28, line: 1231, baseType: !1514, size: 2496, offset: 2048)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1520, !1552}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !33, line: 522, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1514, file: !33, line: 523, baseType: !712, size: 320, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1514, file: !33, line: 524, baseType: !1519, size: 192, offset: 384)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 192, elements: !647)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1514, file: !33, line: 525, baseType: !1521, size: 1728, offset: 576)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 1728, elements: !647)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1523)
!1523 = !{!1524, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1522, file: !33, line: 223, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1527)
!1527 = !{!1528, !1529, !1542, !1543}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1526, file: !33, line: 446, baseType: !98, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1526, file: !33, line: 447, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1532, file: !33, line: 313, baseType: !1212, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1532, file: !33, line: 314, baseType: !1212, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1532, file: !33, line: 315, baseType: !1212, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1532, file: !33, line: 316, baseType: !1212, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1532, file: !33, line: 317, baseType: !1360, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1532, file: !33, line: 318, baseType: !1360, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1532, file: !33, line: 319, baseType: !1360, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1532, file: !33, line: 320, baseType: !1390, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1526, file: !33, line: 448, baseType: !1165, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1526, file: !33, line: 449, baseType: !1525, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1522, file: !33, line: 224, baseType: !98, size: 32, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1522, file: !33, line: 226, baseType: !173, size: 128, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1522, file: !33, line: 227, baseType: !115, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1522, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1522, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1522, file: !33, line: 230, baseType: !1328, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1522, file: !33, line: 231, baseType: !1328, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1522, file: !33, line: 232, baseType: !96, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1514, file: !33, line: 526, baseType: !1553, size: 192, offset: 2304)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 192, elements: !647)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1133, file: !28, line: 1233, baseType: !1555, size: 2368, offset: 4544)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1555, file: !28, line: 1185, baseType: !102, size: 16)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1555, file: !28, line: 1186, baseType: !102, size: 16, offset: 16)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1555, file: !28, line: 1187, baseType: !1560, size: 2304, offset: 64)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1561, size: 2304, elements: !647)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1562, line: 12, size: 768, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1563 = !{!1564, !1572, !1574, !1579, !1580}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1561, file: !1562, line: 13, baseType: !1565, size: 384)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1566, line: 17, size: 384, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1567 = !{!1568, !1569, !1570, !1571}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1565, file: !1566, line: 18, baseType: !98, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1565, file: !1566, line: 19, baseType: !98, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1565, file: !1566, line: 20, baseType: !130, size: 192, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1565, file: !1566, line: 22, baseType: !215, size: 128, align: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1561, file: !1562, line: 14, baseType: !1573, size: 64, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1561, file: !1562, line: 15, baseType: !1575, size: 64, offset: 448)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1576, line: 16, size: 64, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1575, file: !1576, line: 17, baseType: !250, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1561, file: !1562, line: 16, baseType: !130, size: 192, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1561, file: !1562, line: 17, baseType: !125, size: 32, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1133, file: !28, line: 1240, baseType: !96, size: 64, offset: 6912)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1133, file: !28, line: 1243, baseType: !261, size: 32, offset: 6976)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1133, file: !28, line: 1245, baseType: !728, size: 64, offset: 7040)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1133, file: !28, line: 1246, baseType: !728, size: 64, offset: 7104)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1133, file: !28, line: 1248, baseType: !262, size: 32, offset: 7168)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1133, file: !28, line: 1249, baseType: !1587, size: 64, offset: 7232)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1133, file: !28, line: 1252, baseType: !1590, size: 256, offset: 7296)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1133, file: !28, line: 1253, baseType: !1594, size: 128, offset: 7552)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1595, line: 21, baseType: !1596)
!1595 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 19, size: 128, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1596, file: !1595, line: 20, baseType: !1599, size: 128)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !1600)
!1600 = !{!1601}
!1601 = !DISubrange(count: 16)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1133, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1133, file: !28, line: 1261, baseType: !611, size: 256, offset: 7744)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1133, file: !28, line: 1267, baseType: !92, size: 64, offset: 8000)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1133, file: !28, line: 1269, baseType: !1606, size: 64, offset: 8064)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !897, line: 128, size: 1024, align: 512, elements: !1609)
!1609 = !{!1610, !1614, !1615, !1622, !1628, !1632, !1636, !1640, !1641, !1645, !1649, !1654, !1658}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1608, file: !897, line: 129, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!98, !895, !7}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1608, file: !897, line: 130, baseType: !1611, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1608, file: !897, line: 131, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!98, !1619, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1608, file: !897, line: 132, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!98, !1619, !7, !92, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1608, file: !897, line: 134, baseType: !1629, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!98, !1619}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1608, file: !897, line: 135, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!98, !895}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1608, file: !897, line: 136, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !895}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1608, file: !897, line: 137, baseType: !1637, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1608, file: !897, line: 138, baseType: !1642, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !895, !930}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1608, file: !897, line: 139, baseType: !1646, size: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!782, !895, !782, !98}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1608, file: !897, line: 140, baseType: !1650, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!890, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1608, file: !897, line: 141, baseType: !1655, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!98, !1052, !771}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1608, file: !897, line: 142, baseType: !1659, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!895, !895, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1133, file: !28, line: 1271, baseType: !1665, size: 448, offset: 8128)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1343, line: 63, size: 448, elements: !1666)
!1666 = !{!1667, !1672, !1673, !1674, !1675, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1665, file: !1343, line: 64, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!115, !1671, !1341}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1665, file: !1343, line: 66, baseType: !1668, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1665, file: !1343, line: 69, baseType: !1044, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1665, file: !1343, line: 70, baseType: !98, size: 32, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !1343, line: 71, baseType: !7, size: 32, offset: 224)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1665, file: !1343, line: 74, baseType: !173, size: 128, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1665, file: !1343, line: 85, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1133, file: !28, line: 1274, baseType: !604, size: 64, offset: 8576)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1133, file: !28, line: 1280, baseType: !604, size: 64, offset: 8640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1133, file: !28, line: 1283, baseType: !98, size: 32, offset: 8704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1133, file: !28, line: 1286, baseType: !1683, size: 32, offset: 8736)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1684, line: 8, baseType: !261)
!1684 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1133, file: !28, line: 1289, baseType: !1686, size: 64, offset: 8768)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1688, line: 18, flags: DIFlagFwdDecl)
!1688 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1133, file: !28, line: 1290, baseType: !201, size: 64, offset: 8832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1133, file: !28, line: 1297, baseType: !855, size: 64, offset: 8896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1133, file: !28, line: 1304, baseType: !1692, size: 64, offset: 8960)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1693, line: 49, size: 64, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1692, file: !1693, line: 50, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1693, line: 41, size: 512, align: 512, elements: !1698)
!1698 = !{!1699, !1700, !1705}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1693, line: 43, baseType: !135, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1697, file: !1693, line: 45, baseType: !1701, size: 192, offset: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1693, line: 29, size: 192, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1701, file: !1693, line: 30, baseType: !173, size: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1701, file: !1693, line: 32, baseType: !1044, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1697, file: !1693, line: 46, baseType: !1044, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1133, file: !28, line: 1305, baseType: !1692, size: 64, offset: 9024)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1133, file: !28, line: 1306, baseType: !215, size: 128, align: 64, offset: 9088)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1133, file: !28, line: 1307, baseType: !1709, size: 256, offset: 9216)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1688, line: 98, size: 256, elements: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1709, file: !1688, line: 99, baseType: !604, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1709, file: !1688, line: 100, baseType: !173, size: 128, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1709, file: !1688, line: 101, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1688, line: 21, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1133, file: !28, line: 1309, baseType: !611, size: 256, offset: 9472)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1133, file: !28, line: 1314, baseType: !98, size: 32, offset: 9728)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1133, file: !28, line: 1317, baseType: !135, size: 32, align: 512, offset: 10240)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1133, file: !28, line: 1318, baseType: !173, size: 128, offset: 10304)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1133, file: !28, line: 1320, baseType: !135, size: 32, offset: 10432)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1133, file: !28, line: 1321, baseType: !173, size: 128, offset: 10496)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !931, file: !28, line: 656, baseType: !1726, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !2218, !2219, !2220, !2221, !2222, !2223}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1727, file: !28, line: 473, baseType: !930, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1727, file: !28, line: 474, baseType: !238, size: 128, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1727, file: !28, line: 475, baseType: !712, size: 320, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1727, file: !28, line: 476, baseType: !243, size: 32, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1727, file: !28, line: 477, baseType: !125, size: 32, offset: 544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1727, file: !28, line: 482, baseType: !446, size: 128, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1727, file: !28, line: 483, baseType: !115, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1727, file: !28, line: 484, baseType: !115, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1727, file: !28, line: 485, baseType: !1738, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !1741)
!1741 = !{!1742, !2043, !2113, !2117, !2121, !2127, !2133, !2137, !2142, !2146, !2150, !2154, !2182, !2186, !2190, !2194, !2199, !2203, !2210, !2214}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1740, file: !28, line: 405, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!98, !1746, !1203}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !12, line: 74, size: 512, align: 128, elements: !1748)
!1748 = !{!1749, !1750, !2037, !2042}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1747, file: !12, line: 75, baseType: !115, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !12, line: 83, baseType: !1751, size: 320, offset: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !12, line: 83, size: 320, elements: !1752)
!1752 = !{!1753, !1774, !1788, !1792, !2036}
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !12, line: 84, baseType: !1754, size: 320)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !12, line: 84, size: 320, elements: !1755)
!1755 = !{!1756, !1767, !1768, !1773}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !12, line: 90, baseType: !1757, size: 128)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !12, line: 90, size: 128, elements: !1758)
!1758 = !{!1759, !1760, !1765, !1766}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1757, file: !12, line: 91, baseType: !173, size: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !12, line: 94, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !12, line: 94, size: 128, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1761, file: !12, line: 96, baseType: !96, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1761, file: !12, line: 98, baseType: !7, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1757, file: !12, line: 102, baseType: !173, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1757, file: !12, line: 103, baseType: !173, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1754, file: !12, line: 106, baseType: !1726, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !12, line: 107, baseType: !1769, size: 64, offset: 192)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !12, line: 107, size: 64, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1769, file: !12, line: 108, baseType: !115, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1769, file: !12, line: 109, baseType: !115, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1754, file: !12, line: 117, baseType: !115, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !12, line: 119, baseType: !1775, size: 320)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !12, line: 119, size: 320, elements: !1776)
!1776 = !{!1777, !1778, !1781, !1782, !1783}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1775, file: !12, line: 124, baseType: !115, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1775, file: !12, line: 125, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !12, line: 125, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1775, file: !12, line: 126, baseType: !115, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1775, file: !12, line: 127, baseType: !115, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !12, line: 128, baseType: !1784, size: 64, offset: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !12, line: 128, size: 64, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1784, file: !12, line: 133, baseType: !115, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1784, file: !12, line: 138, baseType: !604, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !12, line: 141, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !12, line: 141, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1789, file: !12, line: 142, baseType: !115, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !12, line: 144, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !12, line: 144, size: 128, elements: !1794)
!1794 = !{!1795, !2035}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1793, file: !12, line: 146, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !46, line: 126, size: 1216, elements: !1798)
!1798 = !{!1799, !1809, !1830, !1841, !1842, !1843, !1844, !2017, !2018, !2019}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1797, file: !46, line: 127, baseType: !1800, size: 384)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !46, line: 21, size: 384, elements: !1801)
!1801 = !{!1802, !1803, !1805, !1806, !1807, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1800, file: !46, line: 22, baseType: !115, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1800, file: !46, line: 23, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1800, file: !46, line: 24, baseType: !1804, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1800, file: !46, line: 25, baseType: !115, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1800, file: !46, line: 26, baseType: !115, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1800, file: !46, line: 27, baseType: !115, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1797, file: !46, line: 128, baseType: !1810, size: 128, offset: 384)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1811, line: 105, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1810, file: !1811, line: 110, baseType: !115, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1811, line: 118, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1811, line: 95, size: 448, elements: !1817)
!1817 = !{!1818, !1819, !1825, !1826, !1827, !1828, !1829}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1816, file: !1811, line: 96, baseType: !604, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1816, file: !1811, line: 97, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1811, line: 60, baseType: !1822)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1816, file: !1811, line: 98, baseType: !1820, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1816, file: !1811, line: 99, baseType: !771, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1816, file: !1811, line: 100, baseType: !771, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1816, file: !1811, line: 101, baseType: !215, size: 128, align: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1816, file: !1811, line: 102, baseType: !1824, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1797, file: !46, line: 129, baseType: !1831, size: 256, offset: 512)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1832, line: 26, size: 256, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1831, file: !1832, line: 27, baseType: !7, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1831, file: !1832, line: 28, baseType: !1836, size: 192, offset: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1837, line: 43, size: 192, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1836, file: !1837, line: 44, baseType: !406, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1836, file: !1837, line: 45, baseType: !173, size: 128, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !46, line: 130, baseType: !45, size: 32, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !46, line: 131, baseType: !7, size: 32, offset: 800)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1797, file: !46, line: 132, baseType: !115, size: 64, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1797, file: !46, line: 133, baseType: !1845, size: 64, offset: 896)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !46, line: 77, size: 192, elements: !1848)
!1848 = !{!1849, !1853, !2013}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1847, file: !46, line: 83, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1746}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1847, file: !46, line: 89, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !12, line: 1184, baseType: !7)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1860, line: 512, size: 896, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1861 = !{!1862, !1980, !1981, !1988, !1995, !2005, !2006, !2007, !2009, !2011}
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1860, line: 513, baseType: !1863, size: 320)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 513, size: 320, elements: !1864)
!1864 = !{!1865, !1976, !1977, !1978, !1979}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1863, file: !1860, line: 514, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !12, line: 625, size: 1344, elements: !1868)
!1868 = !{!1869, !1878, !1879, !1887, !1894, !1895, !1900, !1901, !1906, !1907, !1910, !1969, !1970, !1971, !1972, !1973, !1974}
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !12, line: 628, baseType: !1870, size: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !12, line: 628, size: 128, elements: !1871)
!1871 = !{!1872, !1877}
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !12, line: 629, baseType: !1873, size: 128)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !12, line: 629, size: 128, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1873, file: !12, line: 631, baseType: !115, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1873, file: !12, line: 632, baseType: !115, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1870, file: !12, line: 635, baseType: !215, size: 128, align: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1867, file: !12, line: 639, baseType: !563, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1867, file: !12, line: 640, baseType: !1880, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1881, line: 297, baseType: !1882)
!1881 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1881, line: 297, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1882, file: !1881, line: 297, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1886, line: 19, baseType: !115)
!1886 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !12, line: 646, baseType: !1888, size: 64, offset: 256)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !12, line: 646, size: 64, elements: !1889)
!1889 = !{!1890, !1893}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1888, file: !12, line: 647, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !12, line: 542, baseType: !115)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1888, file: !12, line: 648, baseType: !1892, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1867, file: !12, line: 666, baseType: !98, size: 32, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1867, file: !12, line: 667, baseType: !1896, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !12, line: 579, size: 320, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !12, line: 580, baseType: !712, size: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1867, file: !12, line: 670, baseType: !771, size: 8, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1867, file: !12, line: 681, baseType: !1902, size: 256, offset: 512)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !12, line: 678, size: 256, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1902, file: !12, line: 679, baseType: !306, size: 192, align: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1902, file: !12, line: 680, baseType: !115, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1867, file: !12, line: 689, baseType: !173, size: 128, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1867, file: !12, line: 691, baseType: !1908, size: 64, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !12, line: 691, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1867, file: !12, line: 694, baseType: !1911, size: 64, offset: 960)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1860, line: 563, size: 1024, elements: !1914)
!1914 = !{!1915, !1919, !1920, !1924, !1928, !1932, !1933, !1937, !1941, !1945, !1946, !1947, !1951, !1955, !1961, !1965}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1913, file: !1860, line: 564, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1866}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1913, file: !1860, line: 569, baseType: !1916, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1913, file: !1860, line: 571, baseType: !1921, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!98, !1866, !115}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1913, file: !1860, line: 572, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!98, !1866}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1913, file: !1860, line: 578, baseType: !1929, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!98, !1866, !115, !115, !115}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1913, file: !1860, line: 580, baseType: !1854, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1913, file: !1860, line: 581, baseType: !1934, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1857, !1858, !7}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1913, file: !1860, line: 582, baseType: !1938, size: 64, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1857, !1858, !115, !115}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1913, file: !1860, line: 584, baseType: !1942, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!115, !1866}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1913, file: !1860, line: 588, baseType: !1854, size: 64, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1913, file: !1860, line: 591, baseType: !1854, size: 64, offset: 640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1913, file: !1860, line: 597, baseType: !1948, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!98, !1866, !115, !96, !98, !98}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1913, file: !1860, line: 603, baseType: !1952, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!92, !1866}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1913, file: !1860, line: 613, baseType: !1956, size: 64, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!98, !1866, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !252, line: 54, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1913, file: !1860, line: 625, baseType: !1962, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1959, !1866, !115}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1913, file: !1860, line: 633, baseType: !1966, size: 64, offset: 960)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1746, !1866, !115}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1867, file: !12, line: 697, baseType: !115, size: 64, offset: 1024)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1867, file: !12, line: 699, baseType: !591, size: 64, offset: 1088)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1867, file: !12, line: 700, baseType: !96, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1867, file: !12, line: 711, baseType: !604, size: 64, offset: 1216)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1867, file: !12, line: 717, baseType: !1959, size: 64, offset: 1280)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1867, file: !12, line: 722, baseType: !1975, offset: 1344)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !12, line: 570, elements: !584)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1863, file: !1860, line: 515, baseType: !243, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1863, file: !1860, line: 516, baseType: !115, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1863, file: !1860, line: 517, baseType: !115, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1863, file: !1860, line: 518, baseType: !115, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 520, baseType: !11, size: 32, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1859, file: !1860, line: 522, baseType: !1982, size: 64, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1886, line: 22, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1886, line: 22, size: 64, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1984, file: !1886, line: 22, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1886, line: 15, baseType: !115)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1859, file: !1860, line: 524, baseType: !1989, size: 64, offset: 448)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1881, line: 372, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 372, size: 64, elements: !1992)
!1992 = !{!1993}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1991, file: !1881, line: 372, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1886, line: 16, baseType: !115)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1860, line: 527, baseType: !1996, size: 64, offset: 512)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1860, line: 527, size: 64, elements: !1997)
!1997 = !{!1998, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1996, file: !1860, line: 528, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1886, line: 21, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1886, line: 21, size: 64, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2000, file: !1886, line: 21, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1886, line: 14, baseType: !115)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1996, file: !1860, line: 529, baseType: !1983, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1859, file: !1860, line: 534, baseType: !1746, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1859, file: !1860, line: 535, baseType: !1746, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1859, file: !1860, line: 541, baseType: !2008, size: 64, offset: 704)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1859, file: !1860, line: 545, baseType: !2010, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1859, file: !1860, line: 549, baseType: !2012, size: 64, offset: 832)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1881, line: 520, baseType: !1746)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1847, file: !46, line: 100, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!98, !1796, !115, !115, !98}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1797, file: !46, line: 134, baseType: !96, size: 64, offset: 960)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1797, file: !46, line: 135, baseType: !98, size: 32, offset: 1024)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !46, line: 136, baseType: !2020, size: 128, offset: 1088)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !46, line: 136, size: 128, elements: !2021)
!2021 = !{!2022, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2020, file: !46, line: 137, baseType: !2023, size: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2024, line: 6, size: 128, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2023, file: !2024, line: 7, baseType: !314, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2023, file: !2024, line: 8, baseType: !314, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !46, line: 138, baseType: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !46, line: 138, elements: !2030)
!2030 = !{!2031, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2029, file: !46, line: 138, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2029, file: !46, line: 138, elements: !584)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2029, file: !46, line: 138, baseType: !2034)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2023, elements: !869)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1793, file: !12, line: 147, baseType: !96, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1751, file: !12, line: 161, baseType: !215, size: 128, align: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !12, line: 164, baseType: !2038, size: 32, offset: 384)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !12, line: 164, size: 32, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2038, file: !12, line: 169, baseType: !125, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2038, file: !12, line: 177, baseType: !7, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1747, file: !12, line: 181, baseType: !125, size: 32, offset: 416)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1740, file: !28, line: 406, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!98, !591, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !12, line: 293, size: 1536, elements: !2049)
!2049 = !{!2050, !2080, !2094}
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !12, line: 295, baseType: !2051, size: 512)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !12, line: 295, size: 512, elements: !2052)
!2052 = !{!2053, !2079}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !12, line: 296, baseType: !2054, size: 448)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !12, line: 296, size: 448, elements: !2055)
!2055 = !{!2056, !2057, !2066, !2067, !2068, !2077, !2078}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2054, file: !12, line: 298, baseType: !115, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !12, line: 299, baseType: !2058, size: 128, offset: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !12, line: 299, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2058, file: !12, line: 300, baseType: !173, size: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2058, file: !12, line: 302, baseType: !2062, size: 128)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !12, line: 302, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2062, file: !12, line: 303, baseType: !96, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2062, file: !12, line: 305, baseType: !7, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2054, file: !12, line: 310, baseType: !1726, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2054, file: !12, line: 311, baseType: !115, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !12, line: 312, baseType: !2069, size: 64, offset: 320)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !12, line: 312, size: 64, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2069, file: !12, line: 313, baseType: !96, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2069, file: !12, line: 314, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !12, line: 257, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 255, size: 64, elements: !2075)
!2075 = !{!2076}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2074, file: !12, line: 256, baseType: !115, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2054, file: !12, line: 316, baseType: !125, size: 32, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2054, file: !12, line: 317, baseType: !125, size: 32, offset: 416)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2051, file: !12, line: 323, baseType: !1747, size: 512, align: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !12, line: 325, baseType: !2081, size: 512, offset: 512)
!2081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !12, line: 325, size: 512, elements: !2082)
!2082 = !{!2083, !2093}
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2081, file: !12, line: 326, baseType: !2084, size: 320)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !12, line: 326, size: 320, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2084, file: !12, line: 327, baseType: !115, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2084, file: !12, line: 328, baseType: !115, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2084, file: !12, line: 329, baseType: !115, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2084, file: !12, line: 331, baseType: !125, size: 32, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2084, file: !12, line: 332, baseType: !125, size: 32, offset: 224)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2084, file: !12, line: 333, baseType: !125, size: 32, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2084, file: !12, line: 335, baseType: !7, size: 32, offset: 288)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2081, file: !12, line: 339, baseType: !1747, size: 512, align: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !12, line: 341, baseType: !2095, size: 512, offset: 1024)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !12, line: 341, size: 512, elements: !2096)
!2096 = !{!2097, !2106, !2112}
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !12, line: 342, baseType: !2098, size: 384)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !12, line: 342, size: 384, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2098, file: !12, line: 343, baseType: !115, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2098, file: !12, line: 344, baseType: !115, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2098, file: !12, line: 346, baseType: !96, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2098, file: !12, line: 347, baseType: !96, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2098, file: !12, line: 348, baseType: !96, size: 64, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2098, file: !12, line: 349, baseType: !96, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !12, line: 352, baseType: !2107, size: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !12, line: 352, size: 256, elements: !2108)
!2108 = !{!2109, !2110, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2107, file: !12, line: 353, baseType: !115, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2107, file: !12, line: 354, baseType: !115, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2107, file: !12, line: 356, baseType: !173, size: 128, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2095, file: !12, line: 359, baseType: !1747, size: 512, align: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1740, file: !28, line: 409, baseType: !2114, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!98, !1726, !1203}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1740, file: !28, line: 412, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!771, !1726, !2047}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1740, file: !28, line: 414, baseType: !2122, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1740, file: !28, line: 416, baseType: !2128, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!98, !591, !1726, !117, !7, !2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1740, file: !28, line: 419, baseType: !2134, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!98, !591, !1726, !117, !7, !7, !1746, !96}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1740, file: !28, line: 424, baseType: !2138, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2141, !1726, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !101, line: 131, baseType: !314)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1740, file: !28, line: 425, baseType: !2143, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2047, !111, !111}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1740, file: !28, line: 426, baseType: !2147, size: 64, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!771, !2047, !243}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1740, file: !28, line: 427, baseType: !2151, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !2047}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1740, file: !28, line: 428, baseType: !2155, size: 64, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!1083, !2158, !2180}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2167, !2168, !2169, !2170}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2159, file: !28, line: 374, baseType: !591, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2159, file: !28, line: 375, baseType: !117, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2159, file: !28, line: 376, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2158, !1044}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2159, file: !28, line: 377, baseType: !96, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2159, file: !28, line: 378, baseType: !98, size: 32, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2159, file: !28, line: 379, baseType: !169, size: 16, offset: 288)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !28, line: 380, baseType: !2171, size: 64, offset: 320)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !28, line: 380, size: 64, elements: !2172)
!2172 = !{!2173, !2176}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2171, file: !28, line: 386, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2171, file: !28, line: 395, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!1083, !96}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1740, file: !28, line: 433, baseType: !2183, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!98, !1726, !2047, !2047, !38}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1740, file: !28, line: 435, baseType: !2187, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!98, !2047}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1740, file: !28, line: 436, baseType: !2191, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!771, !2047, !111, !111}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1740, file: !28, line: 438, baseType: !2195, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2047, !2198, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1740, file: !28, line: 439, baseType: !2200, size: 64, offset: 1024)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!98, !1726, !1746}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1740, file: !28, line: 442, baseType: !2204, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!98, !2207, !591, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1740, file: !28, line: 444, baseType: !2211, size: 64, offset: 1152)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !591}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1740, file: !28, line: 445, baseType: !2215, size: 64, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!98, !2158, !2180}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !28, line: 486, baseType: !115, size: 64, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1727, file: !28, line: 487, baseType: !712, size: 320, offset: 960)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1727, file: !28, line: 488, baseType: !1683, size: 32, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1727, file: !28, line: 489, baseType: !135, size: 32, offset: 1312)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1727, file: !28, line: 490, baseType: !173, size: 128, offset: 1344)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1727, file: !28, line: 491, baseType: !96, size: 64, offset: 1472)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !931, file: !28, line: 659, baseType: !96, size: 64, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !931, file: !28, line: 663, baseType: !115, size: 64, offset: 640)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !28, line: 671, baseType: !2227, size: 32, offset: 704)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !28, line: 671, size: 32, elements: !2228)
!2228 = !{!2229, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2227, file: !28, line: 672, baseType: !2230, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2227, file: !28, line: 673, baseType: !7, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !931, file: !28, line: 675, baseType: !1004, size: 32, offset: 736)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !931, file: !28, line: 676, baseType: !117, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !931, file: !28, line: 677, baseType: !1040, size: 128, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !931, file: !28, line: 678, baseType: !1040, size: 128, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !931, file: !28, line: 679, baseType: !1040, size: 128, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !931, file: !28, line: 680, baseType: !135, size: 32, offset: 1216)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !931, file: !28, line: 681, baseType: !102, size: 16, offset: 1248)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !931, file: !28, line: 682, baseType: !159, size: 8, offset: 1264)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !931, file: !28, line: 683, baseType: !159, size: 8, offset: 1272)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !931, file: !28, line: 684, baseType: !1474, size: 64, offset: 1280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !931, file: !28, line: 691, baseType: !115, size: 64, offset: 1344)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !931, file: !28, line: 692, baseType: !712, size: 320, offset: 1408)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !931, file: !28, line: 694, baseType: !115, size: 64, offset: 1728)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !931, file: !28, line: 695, baseType: !115, size: 64, offset: 1792)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !931, file: !28, line: 697, baseType: !205, size: 128, offset: 1856)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !931, file: !28, line: 698, baseType: !173, size: 128, offset: 1984)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !931, file: !28, line: 707, baseType: !173, size: 128, offset: 2112)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !931, file: !28, line: 708, baseType: !173, size: 128, offset: 2240)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !28, line: 709, baseType: !2251, size: 128, offset: 2368)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !28, line: 709, size: 128, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2251, file: !28, line: 710, baseType: !201, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2251, file: !28, line: 711, baseType: !215, size: 128, align: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !931, file: !28, line: 713, baseType: !606, size: 64, offset: 2496)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !931, file: !28, line: 714, baseType: !606, size: 64, offset: 2560)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !931, file: !28, line: 715, baseType: !125, size: 32, offset: 2624)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !931, file: !28, line: 716, baseType: !125, size: 32, offset: 2656)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !931, file: !28, line: 717, baseType: !125, size: 32, offset: 2688)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !931, file: !28, line: 719, baseType: !125, size: 32, offset: 2720)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !28, line: 721, baseType: !2262, size: 64, offset: 2752)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !28, line: 721, size: 64, elements: !2263)
!2263 = !{!2264, !2509}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2262, file: !28, line: 722, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !2268)
!2268 = !{!2269, !2270, !2274, !2278, !2282, !2283, !2284, !2290, !2303, !2320, !2324, !2325, !2329, !2330, !2334, !2339, !2340, !2344, !2348, !2460, !2461, !2465, !2466, !2472, !2476, !2477, !2482, !2486, !2490, !2494, !2498, !2499, !2505}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2267, file: !28, line: 1915, baseType: !1165, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2267, file: !28, line: 1916, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!117, !591, !117, !98}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2267, file: !28, line: 1917, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!1083, !591, !782, !111, !116}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2267, file: !28, line: 1918, baseType: !2279, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!1083, !591, !92, !111, !116}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2267, file: !28, line: 1919, baseType: !2155, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2267, file: !28, line: 1920, baseType: !2155, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2267, file: !28, line: 1921, baseType: !2285, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!98, !2158, !2288, !7}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2267, file: !28, line: 1923, baseType: !2291, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!98, !591, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !2296)
!2296 = !{!2297, !2302}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2295, file: !28, line: 1859, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !2299)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!771, !2294, !92, !98, !117, !314, !7}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2295, file: !28, line: 1860, baseType: !117, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2267, file: !28, line: 1924, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2307, !591, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2308, line: 59, baseType: !7)
!2308 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2311, line: 37, size: 128, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2312 = !{!2313, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2310, file: !2311, line: 38, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2311, line: 31, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !591, !2318, !2309}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2310, file: !2311, line: 39, baseType: !2307, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2267, file: !28, line: 1925, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!1044, !591, !7, !115}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2267, file: !28, line: 1926, baseType: !2321, size: 64, offset: 640)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2267, file: !28, line: 1927, baseType: !2326, size: 64, offset: 704)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!98, !591, !1866}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2267, file: !28, line: 1928, baseType: !115, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2267, file: !28, line: 1929, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!98, !930, !591}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2267, file: !28, line: 1930, baseType: !2335, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!98, !591, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !96)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2267, file: !28, line: 1931, baseType: !2331, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2267, file: !28, line: 1932, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!98, !591, !117, !117, !98}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2267, file: !28, line: 1933, baseType: !2345, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!98, !98, !591, !98}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2267, file: !28, line: 1934, baseType: !2349, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!98, !591, !98, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !2354, line: 88, size: 1728, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/filelock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "341396167365df38f75a901b3ed01a3d")
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2380, !2381, !2382, !2395, !2432}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2353, file: !2354, line: 89, baseType: !2352, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2353, file: !2354, line: 90, baseType: !173, size: 128, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2353, file: !2354, line: 91, baseType: !205, size: 128, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2353, file: !2354, line: 92, baseType: !173, size: 128, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2353, file: !2354, line: 95, baseType: !173, size: 128, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2353, file: !2354, line: 98, baseType: !2338, size: 64, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2353, file: !2354, line: 99, baseType: !7, size: 32, offset: 640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2353, file: !2354, line: 100, baseType: !163, size: 8, offset: 672)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2353, file: !2354, line: 101, baseType: !7, size: 32, offset: 704)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2353, file: !2354, line: 102, baseType: !98, size: 32, offset: 736)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2353, file: !2354, line: 103, baseType: !130, size: 192, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2353, file: !2354, line: 104, baseType: !591, size: 64, offset: 960)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2353, file: !2354, line: 105, baseType: !117, size: 64, offset: 1024)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2353, file: !2354, line: 106, baseType: !117, size: 64, offset: 1088)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2353, file: !2354, line: 108, baseType: !2371, size: 64, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !28, line: 1083, size: 384, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2372, file: !28, line: 1084, baseType: !628, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2372, file: !28, line: 1085, baseType: !98, size: 32, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2372, file: !28, line: 1086, baseType: !98, size: 32, offset: 96)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2372, file: !28, line: 1087, baseType: !2371, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2372, file: !28, line: 1088, baseType: !591, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2372, file: !28, line: 1089, baseType: !215, size: 128, align: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2353, file: !2354, line: 110, baseType: !115, size: 64, offset: 1216)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2353, file: !2354, line: 111, baseType: !115, size: 64, offset: 1280)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2353, file: !2354, line: 113, baseType: !2383, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !2354, line: 31, size: 128, elements: !2386)
!2386 = !{!2387, !2391}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2385, file: !2354, line: 32, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2352, !2352}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2385, file: !2354, line: 33, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2352}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2353, file: !2354, line: 114, baseType: !2396, size: 64, offset: 1408)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !2354, line: 36, size: 704, elements: !2399)
!2399 = !{!2400, !2401, !2405, !2409, !2410, !2414, !2418, !2422, !2426, !2427, !2428}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lm_mod_owner", scope: !2398, file: !2354, line: 37, baseType: !96, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2398, file: !2354, line: 38, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2338, !2338}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2398, file: !2354, line: 39, baseType: !2406, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2338}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2398, file: !2354, line: 40, baseType: !2392, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2398, file: !2354, line: 41, baseType: !2411, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!98, !2352, !98}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2398, file: !2354, line: 42, baseType: !2415, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!771, !2352}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2398, file: !2354, line: 43, baseType: !2419, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!98, !2352, !98, !176}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2398, file: !2354, line: 44, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2352, !2132}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2398, file: !2354, line: 45, baseType: !2415, size: 64, offset: 512)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "lm_lock_expirable", scope: !2398, file: !2354, line: 46, baseType: !2415, size: 64, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "lm_expire_lock", scope: !2398, file: !2354, line: 47, baseType: !2429, size: 64, offset: 640)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2353, file: !2354, line: 126, baseType: !2433, size: 256, offset: 1472)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2353, file: !2354, line: 115, size: 256, elements: !2434)
!2434 = !{!2435, !2444, !2450, !2456}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2433, file: !2354, line: 116, baseType: !2436, size: 256)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2437, line: 10, size: 256, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c146eb6cc450a23c1b61e3c824cbd799")
!2438 = !{!2439, !2440, !2443}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2436, file: !2437, line: 11, baseType: !261, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2436, file: !2437, line: 12, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2437, line: 5, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2436, file: !2437, line: 13, baseType: !173, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2433, file: !2354, line: 117, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2437, line: 17, size: 64, elements: !2446)
!2446 = !{!2447}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2445, file: !2437, line: 18, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2437, line: 16, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2433, file: !2354, line: 122, baseType: !2451, size: 192)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2433, file: !2354, line: 118, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2451, file: !2354, line: 119, baseType: !173, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2451, file: !2354, line: 120, baseType: !98, size: 32, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2451, file: !2354, line: 121, baseType: !7, size: 32, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ceph", scope: !2433, file: !2354, line: 125, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2433, file: !2354, line: 123, size: 64, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !2457, file: !2354, line: 124, baseType: !930, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2267, file: !28, line: 1935, baseType: !588, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2267, file: !28, line: 1936, baseType: !2462, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!98, !98}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2267, file: !28, line: 1937, baseType: !2349, size: 64, offset: 1344)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2267, file: !28, line: 1938, baseType: !2467, size: 64, offset: 1408)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!1083, !2470, !591, !116, !111, !7}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !252, line: 59, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2267, file: !28, line: 1939, baseType: !2473, size: 64, offset: 1472)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!1083, !591, !116, !2470, !111, !7}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2267, file: !28, line: 1940, baseType: !2211, size: 64, offset: 1536)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2267, file: !28, line: 1941, baseType: !2478, size: 64, offset: 1600)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!98, !591, !98, !2481, !2132}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2267, file: !28, line: 1942, baseType: !2483, size: 64, offset: 1664)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!1044, !591, !98, !117, !117}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2267, file: !28, line: 1944, baseType: !2487, size: 64, offset: 1728)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !1241, !591}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2267, file: !28, line: 1948, baseType: !2491, size: 64, offset: 1792)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!1083, !591, !117, !591, !117, !111, !7}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2267, file: !28, line: 1950, baseType: !2495, size: 64, offset: 1856)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!117, !591, !117, !591, !117, !117, !7}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2267, file: !28, line: 1953, baseType: !2341, size: 64, offset: 1920)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2267, file: !28, line: 1954, baseType: !2500, size: 64, offset: 1984)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!98, !2503, !7}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2267, file: !28, line: 1955, baseType: !2506, size: 64, offset: 2048)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!98, !2503, !2288, !7}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2262, file: !28, line: 723, baseType: !1191, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !931, file: !28, line: 725, baseType: !2511, size: 64, offset: 2816)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !2354, line: 129, size: 448, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2512, file: !2354, line: 130, baseType: !135, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2512, file: !2354, line: 131, baseType: !173, size: 128, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2512, file: !2354, line: 132, baseType: !173, size: 128, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2512, file: !2354, line: 133, baseType: !173, size: 128, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !931, file: !28, line: 726, baseType: !1727, size: 1536, align: 64, offset: 2880)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !931, file: !28, line: 727, baseType: !173, size: 128, offset: 4416)
!2520 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !28, line: 728, baseType: !2521, size: 64, offset: 4544)
!2521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !28, line: 728, size: 64, elements: !2522)
!2522 = !{!2523, !2524, !2527, !2528}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2521, file: !28, line: 729, baseType: !2470, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2521, file: !28, line: 730, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2521, file: !28, line: 731, baseType: !782, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2521, file: !28, line: 732, baseType: !7, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !931, file: !28, line: 735, baseType: !262, size: 32, offset: 4608)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !931, file: !28, line: 738, baseType: !262, size: 32, offset: 4640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !931, file: !28, line: 739, baseType: !1587, size: 64, offset: 4672)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !931, file: !28, line: 750, baseType: !96, size: 64, offset: 4736)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !896, file: !897, line: 91, baseType: !2534, size: 256, offset: 448)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !1591)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !896, file: !897, line: 94, baseType: !2536, size: 64, offset: 704)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2537, line: 25, size: 64, elements: !2538)
!2537 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !2537, line: 26, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2536, file: !2537, line: 26, size: 64, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2540, file: !2537, line: 28, baseType: !315, size: 64, align: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !2537, line: 30, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2540, file: !2537, line: 30, size: 64, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2544, file: !2537, line: 31, baseType: !135, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2544, file: !2537, line: 32, baseType: !98, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !896, file: !897, line: 95, baseType: !1606, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !896, file: !897, line: 96, baseType: !1132, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !896, file: !897, line: 97, baseType: !115, size: 64, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !896, file: !897, line: 98, baseType: !96, size: 64, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !897, line: 100, baseType: !2553, size: 128, offset: 1024)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !897, line: 100, size: 128, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2553, file: !897, line: 101, baseType: !173, size: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2553, file: !897, line: 102, baseType: !2318, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !896, file: !897, line: 104, baseType: !173, size: 128, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !896, file: !897, line: 105, baseType: !173, size: 128, offset: 1280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !896, file: !897, line: 113, baseType: !2560, size: 128, offset: 1408)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !897, line: 109, size: 128, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2560, file: !897, line: 110, baseType: !205, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2560, file: !897, line: 111, baseType: !906, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2560, file: !897, line: 112, baseType: !215, size: 128, align: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !891, file: !892, line: 72, baseType: !1132, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !891, file: !892, line: 73, baseType: !98, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !891, file: !892, line: 74, baseType: !969, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !886, file: !887, line: 10, baseType: !895, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !592, file: !28, line: 1015, baseType: !930, size: 64, offset: 1344)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !592, file: !28, line: 1016, baseType: !2265, size: 64, offset: 1408)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !592, file: !28, line: 1018, baseType: !314, size: 64, offset: 1472)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !592, file: !28, line: 1020, baseType: !96, size: 64, offset: 1536)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !592, file: !28, line: 1023, baseType: !96, size: 64, offset: 1600)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !592, file: !28, line: 1027, baseType: !2575, size: 64, offset: 1664)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !592, file: !28, line: 1029, baseType: !1726, size: 64, offset: 1728)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !592, file: !28, line: 1030, baseType: !1683, size: 32, offset: 1792)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !592, file: !28, line: 1031, baseType: !1683, size: 32, offset: 1824)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !567, file: !12, line: 756, baseType: !115, size: 64, offset: 704)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !567, file: !12, line: 757, baseType: !115, size: 64, offset: 768)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !567, file: !12, line: 760, baseType: !115, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !567, file: !12, line: 761, baseType: !115, size: 64, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !567, file: !12, line: 763, baseType: !115, size: 64, offset: 960)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !567, file: !12, line: 764, baseType: !2585, size: 64, offset: 1024)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1881, line: 299, baseType: !2587)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1881, line: 299, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2587, file: !1881, line: 299, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1886, line: 18, baseType: !115)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !567, file: !12, line: 773, baseType: !125, size: 32, offset: 1088)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !567, file: !12, line: 785, baseType: !125, size: 32, offset: 1120)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !567, file: !12, line: 795, baseType: !2594, size: 64, offset: 1152)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !12, line: 726, size: 128, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2595, file: !12, line: 727, baseType: !314, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2595, file: !12, line: 728, baseType: !98, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !567, file: !12, line: 801, baseType: !115, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !567, file: !12, line: 804, baseType: !604, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !567, file: !12, line: 806, baseType: !98, size: 32, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !567, file: !12, line: 808, baseType: !135, size: 32, offset: 1376)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !567, file: !12, line: 823, baseType: !712, size: 320, offset: 1408)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !567, file: !12, line: 825, baseType: !173, size: 128, offset: 1728)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !567, file: !12, line: 845, baseType: !98, size: 32, offset: 1856)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !567, file: !12, line: 849, baseType: !115, size: 64, offset: 1920)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !567, file: !12, line: 850, baseType: !115, size: 64, offset: 1984)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !567, file: !12, line: 852, baseType: !115, size: 64, offset: 2048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !567, file: !12, line: 853, baseType: !115, size: 64, offset: 2112)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !567, file: !12, line: 854, baseType: !606, size: 64, offset: 2176)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !567, file: !12, line: 855, baseType: !115, size: 64, offset: 2240)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !567, file: !12, line: 856, baseType: !115, size: 64, offset: 2304)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !567, file: !12, line: 857, baseType: !115, size: 64, offset: 2368)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !567, file: !12, line: 858, baseType: !115, size: 64, offset: 2432)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !567, file: !12, line: 865, baseType: !437, size: 32, offset: 2496)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !567, file: !12, line: 867, baseType: !135, size: 32, offset: 2528)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !567, file: !12, line: 869, baseType: !115, size: 64, offset: 2560)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !567, file: !12, line: 869, baseType: !115, size: 64, offset: 2624)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !567, file: !12, line: 869, baseType: !115, size: 64, offset: 2688)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !567, file: !12, line: 869, baseType: !115, size: 64, offset: 2752)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !567, file: !12, line: 870, baseType: !115, size: 64, offset: 2816)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !567, file: !12, line: 870, baseType: !115, size: 64, offset: 2880)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !567, file: !12, line: 870, baseType: !115, size: 64, offset: 2944)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !567, file: !12, line: 871, baseType: !115, size: 64, offset: 3008)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !567, file: !12, line: 871, baseType: !115, size: 64, offset: 3072)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !567, file: !12, line: 871, baseType: !115, size: 64, offset: 3136)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !567, file: !12, line: 871, baseType: !115, size: 64, offset: 3200)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !567, file: !12, line: 873, baseType: !2629, size: 3328, offset: 3264)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 3328, elements: !2630)
!2630 = !{!2631}
!2631 = !DISubrange(count: 52)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !567, file: !12, line: 875, baseType: !2633, size: 1280, offset: 6592)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 1280, elements: !210)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !567, file: !12, line: 877, baseType: !2635, size: 64, offset: 7872)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !2637, line: 84, size: 448, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/binfmts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5e97d73c9e2b70108086968647f46d0")
!2638 = !{!2639, !2640, !2641, !2684, !2688, !2694}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "lh", scope: !2636, file: !2637, line: 85, baseType: !173, size: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2636, file: !2637, line: 86, baseType: !1165, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "load_binary", scope: !2636, file: !2637, line: 87, baseType: !2642, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!98, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binprm", file: !2637, line: 18, size: 3328, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2680}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2646, file: !2637, line: 20, baseType: !1866, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "vma_pages", scope: !2646, file: !2637, line: 21, baseType: !115, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2646, file: !2637, line: 26, baseType: !563, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2646, file: !2637, line: 27, baseType: !115, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "argmin", scope: !2646, file: !2637, line: 28, baseType: !115, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "have_execfd", scope: !2646, file: !2637, line: 31, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "execfd_creds", scope: !2646, file: !2637, line: 34, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "secureexec", scope: !2646, file: !2637, line: 40, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "point_of_no_return", scope: !2646, file: !2637, line: 45, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "comm_from_dentry", scope: !2646, file: !2637, line: 47, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "executable", scope: !2646, file: !2637, line: 48, baseType: !591, size: 64, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "interpreter", scope: !2646, file: !2637, line: 49, baseType: !591, size: 64, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2646, file: !2637, line: 50, baseType: !591, size: 64, offset: 512)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2646, file: !2637, line: 51, baseType: !2662, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !2646, file: !2637, line: 52, baseType: !98, size: 32, offset: 640)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "per_clear", scope: !2646, file: !2637, line: 53, baseType: !7, size: 32, offset: 672)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2646, file: !2637, line: 54, baseType: !98, size: 32, offset: 704)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "envc", scope: !2646, file: !2637, line: 54, baseType: !98, size: 32, offset: 736)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !2646, file: !2637, line: 55, baseType: !92, size: 64, offset: 768)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !2646, file: !2637, line: 56, baseType: !92, size: 64, offset: 832)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "fdpath", scope: !2646, file: !2637, line: 59, baseType: !92, size: 64, offset: 896)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "interp_flags", scope: !2646, file: !2637, line: 60, baseType: !7, size: 32, offset: 960)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "execfd", scope: !2646, file: !2637, line: 61, baseType: !98, size: 32, offset: 992)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !2646, file: !2637, line: 62, baseType: !115, size: 64, offset: 1024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !2646, file: !2637, line: 62, baseType: !115, size: 64, offset: 1088)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_stack", scope: !2646, file: !2637, line: 64, baseType: !2675, size: 128, offset: 1152)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2676, line: 43, size: 128, elements: !2677)
!2676 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2675, file: !2676, line: 44, baseType: !114, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2675, file: !2676, line: 45, baseType: !114, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2646, file: !2637, line: 66, baseType: !2681, size: 2048, offset: 1280)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, elements: !2682)
!2682 = !{!2683}
!2683 = !DISubrange(count: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "load_shlib", scope: !2636, file: !2637, line: 88, baseType: !2685, size: 64, offset: 256)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!98, !591}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "core_dump", scope: !2636, file: !2637, line: 90, baseType: !2689, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!98, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "coredump_params", file: !2637, line: 11, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "min_coredump", scope: !2636, file: !2637, line: 91, baseType: !115, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !567, file: !12, line: 880, baseType: !2696, size: 1088, offset: 7936)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2697, line: 72, baseType: !2698)
!2697 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2697, line: 23, size: 1088, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2707, !2708, !2709, !2710, !2714, !2715, !2716}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2698, file: !2697, line: 28, baseType: !314, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2698, file: !2697, line: 38, baseType: !606, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2698, file: !2697, line: 40, baseType: !115, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2698, file: !2697, line: 43, baseType: !712, size: 320, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2698, file: !2697, line: 44, baseType: !2705, size: 64, offset: 512)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2697, line: 44, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2698, file: !2697, line: 48, baseType: !115, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2698, file: !2697, line: 59, baseType: !611, size: 256, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2698, file: !2697, line: 60, baseType: !96, size: 64, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2698, file: !2697, line: 61, baseType: !2711, size: 64, offset: 960)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2697, line: 61, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2698, file: !2697, line: 63, baseType: !125, size: 32, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2698, file: !2697, line: 69, baseType: !169, size: 16, offset: 1056)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2698, file: !2697, line: 70, baseType: !2717, size: 16, offset: 1072)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !162, line: 23, baseType: !740)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !12, line: 882, baseType: !115, size: 64, offset: 9024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !567, file: !12, line: 885, baseType: !135, size: 32, offset: 9088)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !567, file: !12, line: 886, baseType: !2722, size: 64, offset: 9152)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !12, line: 732, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !567, file: !12, line: 901, baseType: !855, size: 64, offset: 9216)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !567, file: !12, line: 904, baseType: !591, size: 64, offset: 9280)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !567, file: !12, line: 906, baseType: !2727, size: 64, offset: 9344)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !12, line: 906, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !567, file: !12, line: 930, baseType: !125, size: 32, offset: 9408)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !567, file: !12, line: 933, baseType: !125, size: 32, offset: 9440)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !567, file: !12, line: 935, baseType: !2732, size: 64, offset: 9472)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !60, line: 103, size: 64, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2732, file: !60, line: 104, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !60, line: 101, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !567, file: !12, line: 940, baseType: !604, size: 64, offset: 9536)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !567, file: !12, line: 942, baseType: !1709, size: 256, offset: 9600)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !564, file: !12, line: 986, baseType: !2740, offset: 10240)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, elements: !869)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !251, file: !252, line: 882, baseType: !563, size: 64, offset: 9792)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !251, file: !252, line: 884, baseType: !98, size: 32, offset: 9856)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !251, file: !252, line: 885, baseType: !98, size: 32, offset: 9888)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !251, file: !252, line: 886, baseType: !98, size: 32, offset: 9920)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !251, file: !252, line: 888, baseType: !98, size: 32, offset: 9952)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !251, file: !252, line: 890, baseType: !115, size: 64, offset: 9984)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !251, file: !252, line: 893, baseType: !7, size: 32, offset: 10048)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !251, file: !252, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !251, file: !252, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !251, file: !252, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !251, file: !252, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !251, file: !252, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !251, file: !252, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !251, file: !252, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !251, file: !252, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !251, file: !252, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !251, file: !252, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !251, file: !252, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !251, file: !252, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !251, file: !252, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !251, file: !252, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !251, file: !252, line: 969, baseType: !115, size: 64, offset: 10176)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !251, file: !252, line: 971, baseType: !2764, size: 448, offset: 10240)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !54, line: 25, size: 448, elements: !2765)
!2765 = !{!2766, !2767, !2772}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2764, file: !54, line: 26, baseType: !115, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2764, file: !54, line: 27, baseType: !2768, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!1044, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !54, line: 28, baseType: !2773, size: 320, offset: 128)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !54, line: 28, size: 320, elements: !2774)
!2774 = !{!2775, !2785, !2810}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2773, file: !54, line: 37, baseType: !2776, size: 320)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !54, line: 30, size: 320, elements: !2777)
!2777 = !{!2778, !2780, !2781, !2782, !2783, !2784}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2776, file: !54, line: 31, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2776, file: !54, line: 32, baseType: !261, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2776, file: !54, line: 33, baseType: !261, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2776, file: !54, line: 34, baseType: !261, size: 32, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2776, file: !54, line: 35, baseType: !314, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2776, file: !54, line: 36, baseType: !2779, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2773, file: !54, line: 47, baseType: !2786, size: 192)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !54, line: 39, size: 192, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2809}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2786, file: !54, line: 40, baseType: !429, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2786, file: !54, line: 41, baseType: !53, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, scope: !2786, file: !54, line: 42, baseType: !2791, size: 64, offset: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2786, file: !54, line: 42, size: 64, elements: !2792)
!2792 = !{!2793, !2801}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2791, file: !54, line: 43, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2796, line: 7, size: 128, elements: !2797)
!2796 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2797 = !{!2798, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2795, file: !2796, line: 8, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !113, line: 93, baseType: !119)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2795, file: !2796, line: 9, baseType: !119, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2791, file: !54, line: 44, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2804, line: 7, size: 64, elements: !2805)
!2804 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2805 = !{!2806, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2803, file: !2804, line: 8, baseType: !2807, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2804, line: 5, baseType: !704)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2803, file: !2804, line: 9, baseType: !704, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2786, file: !54, line: 46, baseType: !314, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2773, file: !54, line: 55, baseType: !2811, size: 256)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !54, line: 49, size: 256, elements: !2812)
!2812 = !{!2813, !2821, !2822, !2823, !2824}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2811, file: !54, line: 50, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2816, line: 36, size: 64, elements: !2817)
!2816 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2815, file: !2816, line: 37, baseType: !98, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2815, file: !2816, line: 38, baseType: !740, size: 16, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2815, file: !2816, line: 39, baseType: !740, size: 16, offset: 48)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2811, file: !54, line: 51, baseType: !98, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2811, file: !54, line: 52, baseType: !98, size: 32, offset: 96)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2811, file: !54, line: 53, baseType: !115, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2811, file: !54, line: 54, baseType: !115, size: 64, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !251, file: !252, line: 973, baseType: !2826, size: 32, offset: 10688)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !101, line: 27, baseType: !2827)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !113, line: 28, baseType: !98)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !251, file: !252, line: 974, baseType: !2826, size: 32, offset: 10720)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !251, file: !252, line: 978, baseType: !115, size: 64, offset: 10752)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !251, file: !252, line: 987, baseType: !250, size: 64, offset: 10816)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !252, line: 990, baseType: !250, size: 64, offset: 10880)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !251, file: !252, line: 995, baseType: !173, size: 128, offset: 10944)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !251, file: !252, line: 996, baseType: !173, size: 128, offset: 11072)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !251, file: !252, line: 997, baseType: !250, size: 64, offset: 11200)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !251, file: !252, line: 1005, baseType: !173, size: 128, offset: 11264)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !251, file: !252, line: 1006, baseType: !173, size: 128, offset: 11392)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !251, file: !252, line: 1009, baseType: !189, size: 64, offset: 11520)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !251, file: !252, line: 1010, baseType: !2839, size: 512, offset: 11584)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 512, elements: !210)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !251, file: !252, line: 1011, baseType: !173, size: 128, offset: 12096)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !251, file: !252, line: 1012, baseType: !173, size: 128, offset: 12224)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !251, file: !252, line: 1014, baseType: !2843, size: 64, offset: 12352)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !251, file: !252, line: 1017, baseType: !1235, size: 64, offset: 12416)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !251, file: !252, line: 1020, baseType: !1235, size: 64, offset: 12480)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !251, file: !252, line: 1023, baseType: !96, size: 64, offset: 12544)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !251, file: !252, line: 1025, baseType: !314, size: 64, offset: 12608)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !251, file: !252, line: 1026, baseType: !314, size: 64, offset: 12672)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !251, file: !252, line: 1031, baseType: !314, size: 64, offset: 12736)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !251, file: !252, line: 1032, baseType: !2851, size: 192, offset: 12800)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !252, line: 324, size: 192, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2851, file: !252, line: 326, baseType: !314, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2851, file: !252, line: 327, baseType: !314, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2851, file: !252, line: 328, baseType: !406, size: 32, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !251, file: !252, line: 1041, baseType: !115, size: 64, offset: 12992)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !251, file: !252, line: 1042, baseType: !115, size: 64, offset: 13056)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !251, file: !252, line: 1045, baseType: !314, size: 64, offset: 13120)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !251, file: !252, line: 1048, baseType: !314, size: 64, offset: 13184)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !251, file: !252, line: 1051, baseType: !115, size: 64, offset: 13248)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !251, file: !252, line: 1052, baseType: !115, size: 64, offset: 13312)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !251, file: !252, line: 1055, baseType: !2863, size: 640, offset: 13376)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2864, line: 132, size: 640, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2865 = !{!2866, !2872, !2873}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2863, file: !2864, line: 133, baseType: !2867, size: 576)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 576, elements: !647)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2864, line: 117, size: 192, elements: !2869)
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2868, file: !2864, line: 118, baseType: !314, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2868, file: !2864, line: 119, baseType: !443, size: 128, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2863, file: !2864, line: 134, baseType: !7, size: 32, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2863, file: !2864, line: 135, baseType: !7, size: 32, offset: 608)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !251, file: !252, line: 1058, baseType: !2875, size: 448, offset: 14016)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2864, line: 144, size: 448, elements: !2876)
!2876 = !{!2877, !2878, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2875, file: !2864, line: 145, baseType: !215, size: 128, align: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2875, file: !2864, line: 146, baseType: !611, size: 256, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2875, file: !2864, line: 147, baseType: !7, size: 32, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !251, file: !252, line: 1064, baseType: !663, size: 64, offset: 14464)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !251, file: !252, line: 1067, baseType: !663, size: 64, offset: 14528)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !251, file: !252, line: 1070, baseType: !663, size: 64, offset: 14592)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !251, file: !252, line: 1074, baseType: !696, size: 64, offset: 14656)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !251, file: !252, line: 1084, baseType: !2885, size: 128, offset: 14720)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !1600)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !251, file: !252, line: 1086, baseType: !2887, size: 64, offset: 14848)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !252, line: 55, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !251, file: !252, line: 1089, baseType: !2890, size: 64, offset: 14912)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2891, line: 12, size: 64, elements: !2892)
!2891 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2892 = !{!2893}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2890, file: !2891, line: 13, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2891, line: 8, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !251, file: !252, line: 1090, baseType: !2897, size: 128, offset: 14976)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2898, line: 13, size: 128, elements: !2899)
!2898 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2897, file: !2898, line: 14, baseType: !173, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !251, file: !252, line: 1097, baseType: !2902, size: 64, offset: 15104)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !252, line: 50, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !251, file: !252, line: 1100, baseType: !2905, size: 64, offset: 15168)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2907, line: 48, size: 5632, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/fdtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "498516b1695965933173787db61c4521")
!2908 = !{!2909, !2910, !2911, !2912, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2906, file: !2907, line: 52, baseType: !125, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "resize_in_progress", scope: !2906, file: !2907, line: 53, baseType: !771, size: 8, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "resize_wait", scope: !2906, file: !2907, line: 54, baseType: !130, size: 192, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fdt", scope: !2906, file: !2907, line: 56, baseType: !2913, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdtable", file: !2907, line: 26, size: 448, elements: !2915)
!2915 = !{!2916, !2917, !2919, !2921, !2922, !2923}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !2914, file: !2907, line: 27, baseType: !7, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2914, file: !2907, line: 28, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec", scope: !2914, file: !2907, line: 29, baseType: !2920, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds", scope: !2914, file: !2907, line: 30, baseType: !2920, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits", scope: !2914, file: !2907, line: 31, baseType: !2920, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2914, file: !2907, line: 32, baseType: !215, size: 128, align: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fdtab", scope: !2906, file: !2907, line: 57, baseType: !2914, size: 448, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "file_lock", scope: !2906, file: !2907, line: 61, baseType: !135, size: 32, align: 512, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "next_fd", scope: !2906, file: !2907, line: 62, baseType: !7, size: 32, offset: 1056)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_exec_init", scope: !2906, file: !2907, line: 63, baseType: !514, size: 64, offset: 1088)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "open_fds_init", scope: !2906, file: !2907, line: 64, baseType: !514, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "full_fds_bits_init", scope: !2906, file: !2907, line: 65, baseType: !514, size: 64, offset: 1216)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fd_array", scope: !2906, file: !2907, line: 66, baseType: !2931, size: 4096, offset: 1280)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 4096, elements: !2932)
!2932 = !{!2933}
!2933 = !DISubrange(count: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !251, file: !252, line: 1103, baseType: !2935, size: 64, offset: 15232)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !252, line: 53, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !251, file: !252, line: 1107, baseType: !2938, size: 64, offset: 15296)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2940, line: 31, size: 576, elements: !2941)
!2940 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2941 = !{!2942, !2943, !2946, !2949, !3058, !3059, !3062, !3065, !3066}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2939, file: !2940, line: 32, baseType: !193, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2939, file: !2940, line: 33, baseType: !2944, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2940, line: 9, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2939, file: !2940, line: 34, baseType: !2947, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2940, line: 10, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2939, file: !2940, line: 35, baseType: !2950, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2952, line: 8, size: 960, elements: !2953)
!2952 = !DIFile(filename: "fs/proc/../mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!2953 = !{!2954, !2998, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2951, file: !2952, line: 9, baseType: !2955, size: 192)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2956, line: 9, size: 192, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2957 = !{!2958, !2959, !2996, !2997}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2955, file: !2956, line: 10, baseType: !604, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2955, file: !2956, line: 11, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2962)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2963, line: 16, size: 512, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!2964 = !{!2965, !2966, !2967, !2968, !2973, !2977, !2988, !2992}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2962, file: !2963, line: 17, baseType: !92, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !2962, file: !2963, line: 18, baseType: !92, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2962, file: !2963, line: 19, baseType: !98, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2962, file: !2963, line: 20, baseType: !2969, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!2972, !250}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2962, file: !2963, line: 21, baseType: !2974, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2972}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2962, file: !2963, line: 22, baseType: !2978, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!98, !2981, !2972}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2940, line: 53, size: 256, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2982, file: !2940, line: 54, baseType: !7, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2982, file: !2940, line: 55, baseType: !2938, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2982, file: !2940, line: 56, baseType: !2902, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2982, file: !2940, line: 57, baseType: !663, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2962, file: !2963, line: 23, baseType: !2989, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!855, !2972}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2962, file: !2963, line: 24, baseType: !2993, size: 64, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2972, !2972}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2955, file: !2956, line: 12, baseType: !7, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2955, file: !2956, line: 13, baseType: !193, size: 32, offset: 160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2951, file: !2952, line: 10, baseType: !2999, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !2952, line: 39, size: 2560, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3011, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3036, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !3000, file: !2952, line: 40, baseType: !205, size: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !3000, file: !2952, line: 41, baseType: !2999, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !3000, file: !2952, line: 42, baseType: !895, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3000, file: !2952, line: 43, baseType: !891, size: 256, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !2952, line: 44, baseType: !3007, size: 128, offset: 512)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !2952, line: 44, size: 128, elements: !3008)
!3008 = !{!3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !3007, file: !2952, line: 45, baseType: !215, size: 128, align: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !3007, file: !2952, line: 46, baseType: !275, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !3000, file: !2952, line: 49, baseType: !3012, size: 64, offset: 640)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !2952, line: 27, size: 64, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !3013, file: !2952, line: 28, baseType: !98, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !3013, file: !2952, line: 29, baseType: !98, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !3000, file: !2952, line: 54, baseType: !173, size: 128, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !3000, file: !2952, line: 55, baseType: !173, size: 128, offset: 832)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !3000, file: !2952, line: 56, baseType: !173, size: 128, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !3000, file: !2952, line: 57, baseType: !92, size: 64, offset: 1088)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !3000, file: !2952, line: 58, baseType: !173, size: 128, offset: 1152)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !3000, file: !2952, line: 59, baseType: !173, size: 128, offset: 1280)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !3000, file: !2952, line: 60, baseType: !173, size: 128, offset: 1408)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !3000, file: !2952, line: 61, baseType: !173, size: 128, offset: 1536)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !3000, file: !2952, line: 62, baseType: !173, size: 128, offset: 1664)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !3000, file: !2952, line: 63, baseType: !2999, size: 64, offset: 1792)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3000, file: !2952, line: 64, baseType: !2950, size: 64, offset: 1856)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !3000, file: !2952, line: 65, baseType: !3029, size: 64, offset: 1920)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !2952, line: 32, size: 320, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !3030, file: !2952, line: 33, baseType: !205, size: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !3030, file: !2952, line: 34, baseType: !895, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3030, file: !2952, line: 35, baseType: !201, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !3030, file: !2952, line: 36, baseType: !98, size: 32, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !2952, line: 66, baseType: !3037, size: 128, offset: 1984)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !2952, line: 66, size: 128, elements: !3038)
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !3037, file: !2952, line: 67, baseType: !205, size: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !3037, file: !2952, line: 68, baseType: !205, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !3000, file: !2952, line: 70, baseType: !173, size: 128, offset: 2112)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !3000, file: !2952, line: 72, baseType: !1587, size: 64, offset: 2240)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !3000, file: !2952, line: 73, baseType: !262, size: 32, offset: 2304)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3000, file: !2952, line: 75, baseType: !98, size: 32, offset: 2336)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !3000, file: !2952, line: 76, baseType: !98, size: 32, offset: 2368)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !3000, file: !2952, line: 77, baseType: !98, size: 32, offset: 2400)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !3000, file: !2952, line: 78, baseType: !201, size: 64, offset: 2432)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !3000, file: !2952, line: 79, baseType: !201, size: 64, offset: 2496)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2951, file: !2952, line: 16, baseType: !173, size: 128, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !2951, file: !2952, line: 17, baseType: !135, size: 32, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2951, file: !2952, line: 18, baseType: !855, size: 64, offset: 448)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2951, file: !2952, line: 19, baseType: !858, size: 64, offset: 512)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2951, file: !2952, line: 20, baseType: !314, size: 64, offset: 576)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2951, file: !2952, line: 21, baseType: !130, size: 192, offset: 640)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2951, file: !2952, line: 22, baseType: !314, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !2951, file: !2952, line: 23, baseType: !7, size: 32, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !2951, file: !2952, line: 24, baseType: !7, size: 32, offset: 928)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2939, file: !2940, line: 36, baseType: !229, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2939, file: !2940, line: 37, baseType: !3060, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !698, line: 34, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2939, file: !2940, line: 38, baseType: !3063, size: 64, offset: 384)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2940, line: 38, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2939, file: !2940, line: 39, baseType: !3063, size: 64, offset: 448)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2939, file: !2940, line: 40, baseType: !3067, size: 64, offset: 512)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2940, line: 12, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !251, file: !252, line: 1110, baseType: !3070, size: 64, offset: 15360)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3072, line: 93, size: 8768, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3123, !3132, !3133, !3135, !3136, !3137, !3140, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3178, !3179, !3181, !3191, !3194, !3195, !3198, !3199, !3200, !3201, !3202, !3203}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3071, file: !3072, line: 94, baseType: !193, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3071, file: !3072, line: 95, baseType: !125, size: 32, offset: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3071, file: !3072, line: 96, baseType: !98, size: 32, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3071, file: !3072, line: 97, baseType: !98, size: 32, offset: 96)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3071, file: !3072, line: 98, baseType: !173, size: 128, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3071, file: !3072, line: 100, baseType: !130, size: 192, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3071, file: !3072, line: 103, baseType: !250, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3071, file: !3072, line: 106, baseType: !3082, size: 192, offset: 512)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !860, line: 32, size: 192, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3082, file: !860, line: 33, baseType: !173, size: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3082, file: !860, line: 34, baseType: !3086, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3087, line: 25, baseType: !3088)
!3087 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3087, line: 23, size: 64, elements: !3089)
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3088, file: !3087, line: 24, baseType: !514, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3071, file: !3072, line: 109, baseType: !201, size: 64, offset: 704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3071, file: !3072, line: 112, baseType: !98, size: 32, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3071, file: !3072, line: 114, baseType: !98, size: 32, offset: 800)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3071, file: !3072, line: 115, baseType: !250, size: 64, offset: 832)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3071, file: !3072, line: 118, baseType: !98, size: 32, offset: 896)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3071, file: !3072, line: 119, baseType: !7, size: 32, offset: 928)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3071, file: !3072, line: 121, baseType: !3098, size: 64, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3072, line: 80, size: 448, elements: !3100)
!3100 = !{!3101, !3102, !3108}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3099, file: !3072, line: 81, baseType: !125, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3099, file: !3072, line: 82, baseType: !3103, size: 128, offset: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3072, line: 75, size: 128, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3103, file: !3072, line: 76, baseType: !250, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3103, file: !3072, line: 77, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3099, file: !3072, line: 83, baseType: !1831, size: 256, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3071, file: !3072, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3071, file: !3072, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3071, file: !3072, line: 138, baseType: !7, size: 32, offset: 1056)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3071, file: !3072, line: 139, baseType: !173, size: 128, offset: 1088)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3071, file: !3072, line: 142, baseType: !381, size: 512, offset: 1216)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3071, file: !3072, line: 143, baseType: !389, size: 64, offset: 1728)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3071, file: !3072, line: 150, baseType: !3116, size: 256, offset: 1792)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3117, size: 256, elements: !3121)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3072, line: 38, size: 128, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3117, file: !3072, line: 39, baseType: !314, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3117, file: !3072, line: 40, baseType: !314, size: 64, offset: 64)
!3121 = !{!3122}
!3122 = !DISubrange(count: 2)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3071, file: !3072, line: 156, baseType: !3124, size: 192, offset: 2048)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3072, line: 66, size: 192, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3124, file: !3072, line: 67, baseType: !3127, size: 192)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3072, line: 47, size: 192, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3127, file: !3072, line: 48, baseType: !606, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3127, file: !3072, line: 49, baseType: !606, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3127, file: !3072, line: 50, baseType: !606, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3071, file: !3072, line: 160, baseType: !2863, size: 640, offset: 2240)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3071, file: !3072, line: 163, baseType: !3134, size: 256, offset: 2880)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !210)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3071, file: !3072, line: 169, baseType: !189, size: 64, offset: 3136)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3071, file: !3072, line: 172, baseType: !98, size: 32, offset: 3200)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3071, file: !3072, line: 174, baseType: !3138, size: 64, offset: 3264)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3072, line: 174, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3071, file: !3072, line: 185, baseType: !3141, size: 64, offset: 3328)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !433, line: 860, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 853, size: 64, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3142, file: !433, line: 858, baseType: !901, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3142, file: !433, line: 859, baseType: !135, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3071, file: !3072, line: 186, baseType: !314, size: 64, offset: 3392)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3071, file: !3072, line: 186, baseType: !314, size: 64, offset: 3456)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3071, file: !3072, line: 186, baseType: !314, size: 64, offset: 3520)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3071, file: !3072, line: 186, baseType: !314, size: 64, offset: 3584)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3071, file: !3072, line: 187, baseType: !314, size: 64, offset: 3648)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3071, file: !3072, line: 188, baseType: !314, size: 64, offset: 3712)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3071, file: !3072, line: 189, baseType: !2851, size: 192, offset: 3776)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3071, file: !3072, line: 190, baseType: !115, size: 64, offset: 3968)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3071, file: !3072, line: 190, baseType: !115, size: 64, offset: 4032)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3071, file: !3072, line: 190, baseType: !115, size: 64, offset: 4096)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3071, file: !3072, line: 190, baseType: !115, size: 64, offset: 4160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3071, file: !3072, line: 191, baseType: !115, size: 64, offset: 4224)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3071, file: !3072, line: 191, baseType: !115, size: 64, offset: 4288)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3071, file: !3072, line: 191, baseType: !115, size: 64, offset: 4352)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3071, file: !3072, line: 191, baseType: !115, size: 64, offset: 4416)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3071, file: !3072, line: 192, baseType: !115, size: 64, offset: 4480)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3071, file: !3072, line: 192, baseType: !115, size: 64, offset: 4544)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3071, file: !3072, line: 192, baseType: !115, size: 64, offset: 4608)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3071, file: !3072, line: 192, baseType: !115, size: 64, offset: 4672)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3071, file: !3072, line: 193, baseType: !115, size: 64, offset: 4736)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3071, file: !3072, line: 193, baseType: !115, size: 64, offset: 4800)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3071, file: !3072, line: 194, baseType: !3168, size: 448, offset: 4864)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3169, line: 12, size: 448, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3168, file: !3169, line: 15, baseType: !314, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3168, file: !3169, line: 17, baseType: !314, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3168, file: !3169, line: 19, baseType: !314, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3168, file: !3169, line: 21, baseType: !314, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3168, file: !3169, line: 29, baseType: !314, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3168, file: !3169, line: 35, baseType: !314, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3168, file: !3169, line: 44, baseType: !314, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3071, file: !3072, line: 202, baseType: !316, size: 64, offset: 5312)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3071, file: !3072, line: 213, baseType: !3180, size: 2048, offset: 5376)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2675, size: 2048, elements: !1600)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3071, file: !3072, line: 216, baseType: !3182, size: 448, offset: 7424)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3072, line: 30, size: 448, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3182, file: !3072, line: 31, baseType: !98, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3182, file: !3072, line: 32, baseType: !1044, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3182, file: !3072, line: 33, baseType: !115, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3182, file: !3072, line: 34, baseType: !314, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3182, file: !3072, line: 34, baseType: !314, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3182, file: !3072, line: 35, baseType: !115, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3182, file: !3072, line: 35, baseType: !115, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3071, file: !3072, line: 219, baseType: !3192, size: 64, offset: 7872)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3072, line: 219, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3071, file: !3072, line: 222, baseType: !7, size: 32, offset: 7936)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3071, file: !3072, line: 223, baseType: !3196, size: 64, offset: 8000)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3072, line: 223, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3071, file: !3072, line: 230, baseType: !771, size: 8, offset: 8064)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3071, file: !3072, line: 231, baseType: !740, size: 16, offset: 8080)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3071, file: !3072, line: 232, baseType: !740, size: 16, offset: 8096)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3071, file: !3072, line: 234, baseType: !563, size: 64, offset: 8128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3071, file: !3072, line: 237, baseType: !611, size: 256, offset: 8192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3071, file: !3072, line: 243, baseType: !712, size: 320, offset: 8448)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !251, file: !252, line: 1111, baseType: !3205, size: 64, offset: 15424)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3072, line: 20, size: 16640, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3206, file: !3072, line: 21, baseType: !135, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3206, file: !3072, line: 22, baseType: !193, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3206, file: !3072, line: 23, baseType: !130, size: 192, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3206, file: !3072, line: 24, baseType: !3212, size: 16384, offset: 256)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3213, size: 16384, elements: !2932)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !860, line: 51, size: 256, elements: !3214)
!3214 = !{!3215}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3213, file: !860, line: 52, baseType: !3216, size: 256)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !860, line: 37, size: 256, elements: !3217)
!3217 = !{!3218, !3225, !3226, !3230}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3216, file: !860, line: 39, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3220, line: 83, baseType: !3221)
!3220 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3220, line: 82, baseType: !3223)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !98}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3216, file: !860, line: 40, baseType: !115, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3216, file: !860, line: 46, baseType: !3227, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3220, line: 86, baseType: !3228)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3220, line: 85, baseType: !2430)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3216, file: !860, line: 48, baseType: !3086, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !251, file: !252, line: 1112, baseType: !3086, size: 64, offset: 15488)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !251, file: !252, line: 1113, baseType: !3086, size: 64, offset: 15552)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !251, file: !252, line: 1115, baseType: !3086, size: 64, offset: 15616)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !251, file: !252, line: 1116, baseType: !3082, size: 192, offset: 15680)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !251, file: !252, line: 1117, baseType: !115, size: 64, offset: 15872)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !251, file: !252, line: 1118, baseType: !111, size: 64, offset: 15936)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !251, file: !252, line: 1119, baseType: !7, size: 32, offset: 16000)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !251, file: !252, line: 1121, baseType: !218, size: 64, offset: 16064)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !251, file: !252, line: 1125, baseType: !3240, size: 64, offset: 16128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !252, line: 43, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !251, file: !252, line: 1127, baseType: !653, size: 32, offset: 16192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !251, file: !252, line: 1128, baseType: !7, size: 32, offset: 16224)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !251, file: !252, line: 1130, baseType: !3245, size: 128, offset: 16256)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3246, line: 37, size: 128, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3245, file: !3246, line: 38, baseType: !98, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3245, file: !3246, line: 39, baseType: !125, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3245, file: !3246, line: 40, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3246, line: 24, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !251, file: !252, line: 1131, baseType: !3254, size: 256, offset: 16384)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3255, line: 12, size: 256, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3254, file: !3255, line: 13, baseType: !782, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3254, file: !3255, line: 14, baseType: !115, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3254, file: !3255, line: 15, baseType: !115, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3254, file: !3255, line: 16, baseType: !771, size: 8, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !251, file: !252, line: 1134, baseType: !314, size: 64, offset: 16640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !251, file: !252, line: 1135, baseType: !314, size: 64, offset: 16704)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !251, file: !252, line: 1138, baseType: !135, size: 32, offset: 16768)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !251, file: !252, line: 1141, baseType: !406, size: 32, offset: 16800)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !251, file: !252, line: 1143, baseType: !3266, size: 64, offset: 16832)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !252, line: 735, size: 64, elements: !3267)
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3266, file: !252, line: 736, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !251, file: !252, line: 1147, baseType: !446, size: 128, offset: 16896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !251, file: !252, line: 1149, baseType: !250, size: 64, offset: 17024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !251, file: !252, line: 1151, baseType: !3273, size: 64, offset: 17088)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !252, line: 1151, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !251, file: !252, line: 1188, baseType: !96, size: 64, offset: 17152)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !251, file: !252, line: 1191, baseType: !3277, size: 64, offset: 17216)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !252, line: 44, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !251, file: !252, line: 1194, baseType: !3280, size: 64, offset: 17280)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !252, line: 45, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !251, file: !252, line: 1197, baseType: !3283, size: 64, offset: 17344)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !252, line: 61, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !251, file: !252, line: 1199, baseType: !3286, size: 64, offset: 17408)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3288, line: 99, size: 128, elements: !3289)
!3288 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3287, file: !3288, line: 100, baseType: !604, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3287, file: !3288, line: 101, baseType: !125, size: 32, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3287, file: !3288, line: 103, baseType: !102, size: 16, offset: 96)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !251, file: !252, line: 1202, baseType: !3294, size: 64, offset: 17472)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !252, line: 48, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !251, file: !252, line: 1205, baseType: !115, size: 64, offset: 17536)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !251, file: !252, line: 1206, baseType: !3298, size: 64, offset: 17600)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !860, line: 14, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !860, line: 12, size: 384, elements: !3301)
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !860, line: 13, baseType: !3303, size: 384)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3300, file: !860, line: 13, size: 384, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3303, file: !860, line: 13, baseType: !98, size: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3303, file: !860, line: 13, baseType: !98, size: 32, offset: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3303, file: !860, line: 13, baseType: !98, size: 32, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3303, file: !860, line: 13, baseType: !3309, size: 256, offset: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3310, line: 37, size: 256, elements: !3311)
!3310 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3311 = !{!3312, !3317, !3330, !3336, !3345, !3372, !3377}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3309, file: !3310, line: 42, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 39, size: 64, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3313, file: !3310, line: 40, baseType: !2827, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3313, file: !3310, line: 41, baseType: !659, size: 32, offset: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3309, file: !3310, line: 50, baseType: !3318, size: 192)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 45, size: 192, elements: !3319)
!3319 = !{!3320, !3322, !3323, !3329}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3318, file: !3310, line: 46, baseType: !3321, size: 32)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !113, line: 95, baseType: !98)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3318, file: !3310, line: 47, baseType: !98, size: 32, offset: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3318, file: !3310, line: 48, baseType: !3324, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3310, line: 11, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3310, line: 8, size: 64, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3325, file: !3310, line: 9, baseType: !98, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3325, file: !3310, line: 10, baseType: !96, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3318, file: !3310, line: 49, baseType: !98, size: 32, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3309, file: !3310, line: 57, baseType: !3331, size: 128)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 53, size: 128, elements: !3332)
!3332 = !{!3333, !3334, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3331, file: !3310, line: 54, baseType: !2827, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3331, file: !3310, line: 55, baseType: !659, size: 32, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3331, file: !3310, line: 56, baseType: !3324, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3309, file: !3310, line: 66, baseType: !3337, size: 256)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 60, size: 256, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3344}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3337, file: !3310, line: 61, baseType: !2827, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3337, file: !3310, line: 62, baseType: !659, size: 32, offset: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3337, file: !3310, line: 63, baseType: !98, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3337, file: !3310, line: 64, baseType: !3343, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !113, line: 94, baseType: !1085)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3337, file: !3310, line: 65, baseType: !3343, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3309, file: !3310, line: 105, baseType: !3346, size: 256)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 69, size: 256, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3346, file: !3310, line: 70, baseType: !96, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3310, line: 79, baseType: !3350, size: 192, offset: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3310, line: 79, size: 192, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3361, !3366}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3350, file: !3310, line: 81, baseType: !98, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3350, file: !3310, line: 86, baseType: !740, size: 16)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3350, file: !3310, line: 92, baseType: !3355, size: 192)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3350, file: !3310, line: 88, size: 192, elements: !3356)
!3356 = !{!3357, !3359, !3360}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3355, file: !3310, line: 89, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !425)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3355, file: !3310, line: 90, baseType: !96, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3355, file: !3310, line: 91, baseType: !96, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3350, file: !3310, line: 97, baseType: !3362, size: 96)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3350, file: !3310, line: 94, size: 96, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3362, file: !3310, line: 95, baseType: !3358, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3362, file: !3310, line: 96, baseType: !262, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3350, file: !3310, line: 103, baseType: !3367, size: 128)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3350, file: !3310, line: 99, size: 128, elements: !3368)
!3368 = !{!3369, !3370, !3371}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3367, file: !3310, line: 100, baseType: !115, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3367, file: !3310, line: 101, baseType: !262, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3367, file: !3310, line: 102, baseType: !262, size: 32, offset: 96)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3309, file: !3310, line: 111, baseType: !3373, size: 128)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 108, size: 128, elements: !3374)
!3374 = !{!3375, !3376}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3373, file: !3310, line: 109, baseType: !1044, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3373, file: !3310, line: 110, baseType: !98, size: 32, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3309, file: !3310, line: 118, baseType: !3378, size: 128)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3309, file: !3310, line: 114, size: 128, elements: !3379)
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3378, file: !3310, line: 115, baseType: !96, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3378, file: !3310, line: 116, baseType: !98, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3378, file: !3310, line: 117, baseType: !7, size: 32, offset: 96)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !251, file: !252, line: 1208, baseType: !3168, size: 448, offset: 17664)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !251, file: !252, line: 1215, baseType: !314, size: 64, offset: 18112)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !251, file: !252, line: 1217, baseType: !314, size: 64, offset: 18176)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !251, file: !252, line: 1219, baseType: !314, size: 64, offset: 18240)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !251, file: !252, line: 1223, baseType: !3388, size: 64, offset: 18304)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3389, line: 99, baseType: !3390)
!3389 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 99, size: 64, elements: !3391)
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3390, file: !3389, line: 99, baseType: !514, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !251, file: !252, line: 1225, baseType: !901, size: 32, offset: 18368)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !251, file: !252, line: 1226, baseType: !98, size: 32, offset: 18400)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !251, file: !252, line: 1227, baseType: !98, size: 32, offset: 18432)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !251, file: !252, line: 1231, baseType: !3397, size: 64, offset: 18496)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !252, line: 1231, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !251, file: !252, line: 1233, baseType: !173, size: 128, offset: 18560)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !251, file: !252, line: 1240, baseType: !3401, size: 64, offset: 18688)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !252, line: 62, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !251, file: !252, line: 1242, baseType: !3404, size: 64, offset: 18752)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !252, line: 1242, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !251, file: !252, line: 1244, baseType: !173, size: 128, offset: 18816)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !251, file: !252, line: 1245, baseType: !3408, size: 64, offset: 18944)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !252, line: 51, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !251, file: !252, line: 1246, baseType: !611, size: 256, offset: 19008)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !251, file: !252, line: 1247, baseType: !7, size: 32, offset: 19264)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !251, file: !252, line: 1250, baseType: !3413, size: 64, offset: 19328)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !252, line: 57, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !251, file: !252, line: 1251, baseType: !611, size: 256, offset: 19392)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !251, file: !252, line: 1252, baseType: !173, size: 128, offset: 19648)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !251, file: !252, line: 1259, baseType: !1959, size: 64, offset: 19776)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !251, file: !252, line: 1260, baseType: !740, size: 16, offset: 19840)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !251, file: !252, line: 1261, baseType: !740, size: 16, offset: 19856)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !251, file: !252, line: 1314, baseType: !3421, size: 64, offset: 19904)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3423, line: 62, size: 256, align: 256, elements: !3424)
!3423 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3422, file: !3423, line: 75, baseType: !262, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3422, file: !3423, line: 90, baseType: !262, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3422, file: !3423, line: 112, baseType: !315, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !3423, line: 132, baseType: !262, size: 32, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3422, file: !3423, line: 140, baseType: !262, size: 32, offset: 160)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3422, file: !3423, line: 149, baseType: !262, size: 32, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3422, file: !3423, line: 154, baseType: !3432, offset: 224)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !869)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !251, file: !252, line: 1315, baseType: !261, size: 32, offset: 19968)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !251, file: !252, line: 1316, baseType: !261, size: 32, offset: 20000)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !251, file: !252, line: 1321, baseType: !115, size: 64, offset: 20032)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !251, file: !252, line: 1325, baseType: !98, size: 32, offset: 20096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !251, file: !252, line: 1326, baseType: !98, size: 32, offset: 20128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !251, file: !252, line: 1327, baseType: !98, size: 32, offset: 20160)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !251, file: !252, line: 1328, baseType: !98, size: 32, offset: 20192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !251, file: !252, line: 1329, baseType: !215, size: 128, align: 64, offset: 20224)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !251, file: !252, line: 1332, baseType: !3442, size: 128, offset: 20352)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3443, line: 51, size: 128, elements: !3444)
!3443 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3444 = !{!3445, !3450, !3451}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3442, file: !3443, line: 60, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3447, line: 7, size: 64, elements: !3448)
!3447 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3446, file: !3447, line: 12, baseType: !511, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3442, file: !3443, line: 63, baseType: !771, size: 8, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3442, file: !3443, line: 70, baseType: !771, size: 8, offset: 72)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !251, file: !252, line: 1335, baseType: !2470, size: 64, offset: 20480)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !251, file: !252, line: 1337, baseType: !3454, size: 128, offset: 20544)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3443, line: 39, size: 128, elements: !3455)
!3455 = !{!3456, !3457, !3458}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3454, file: !3443, line: 40, baseType: !1746, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3454, file: !3443, line: 42, baseType: !262, size: 32, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3454, file: !3443, line: 43, baseType: !262, size: 32, offset: 96)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !251, file: !252, line: 1340, baseType: !3460, size: 64, offset: 20672)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !252, line: 69, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !251, file: !252, line: 1351, baseType: !98, size: 32, offset: 20736)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !251, file: !252, line: 1352, baseType: !98, size: 32, offset: 20768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !251, file: !252, line: 1354, baseType: !115, size: 64, offset: 20800)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !251, file: !252, line: 1364, baseType: !314, size: 64, offset: 20864)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !251, file: !252, line: 1365, baseType: !314, size: 64, offset: 20928)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !251, file: !252, line: 1412, baseType: !115, size: 64, offset: 20992)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !251, file: !252, line: 1453, baseType: !3469, size: 64, offset: 21056)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !252, line: 1453, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !251, file: !252, line: 1457, baseType: !3472, size: 64, offset: 21120)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !60, line: 61, size: 576, elements: !3474)
!3474 = !{!3475, !3476, !3495, !3498, !3499, !3532, !3542}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3473, file: !60, line: 62, baseType: !59, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3473, file: !60, line: 64, baseType: !3477, size: 192, offset: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3473, file: !60, line: 64, size: 192, elements: !3478)
!3478 = !{!3479, !3490}
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !60, line: 65, baseType: !3480, size: 192)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !60, line: 65, size: 192, elements: !3481)
!3481 = !{!3482, !3489}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3480, file: !60, line: 66, baseType: !3483, size: 128)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3484, line: 50, size: 128, elements: !3485)
!3484 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3485 = !{!3486, !3487, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3483, file: !3484, line: 52, baseType: !115, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3483, file: !3484, line: 54, baseType: !7, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3483, file: !3484, line: 55, baseType: !7, size: 32, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3480, file: !60, line: 67, baseType: !115, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3477, file: !60, line: 70, baseType: !3491, size: 192)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3477, file: !60, line: 70, size: 192, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3491, file: !60, line: 71, baseType: !215, size: 128, align: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3491, file: !60, line: 72, baseType: !115, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3473, file: !60, line: 76, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !60, line: 76, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3473, file: !60, line: 77, baseType: !115, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3473, file: !60, line: 79, baseType: !3500, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3484, line: 25, size: 256, elements: !3502)
!3502 = !{!3503, !3509, !3513}
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3484, line: 26, baseType: !3504, size: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3484, line: 26, size: 128, elements: !3505)
!3505 = !{!3506, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3504, file: !3484, line: 27, baseType: !3507, size: 128)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !1600)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3504, file: !3484, line: 28, baseType: !3507, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3501, file: !3484, line: 31, baseType: !3510, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3484, line: 23, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3484, line: 33, baseType: !3514, size: 64, offset: 192)
!3514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3484, line: 33, size: 64, elements: !3515)
!3515 = !{!3516, !3522, !3527}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3514, file: !3484, line: 38, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3514, file: !3484, line: 34, size: 64, elements: !3518)
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3517, file: !3484, line: 35, baseType: !704, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3517, file: !3484, line: 36, baseType: !159, size: 8, offset: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3517, file: !3484, line: 37, baseType: !159, size: 8, offset: 40)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3514, file: !3484, line: 42, baseType: !3523, size: 16)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3514, file: !3484, line: 39, size: 16, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3523, file: !3484, line: 40, baseType: !159, size: 8)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3523, file: !3484, line: 41, baseType: !159, size: 8, offset: 8)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3514, file: !3484, line: 46, baseType: !3528, size: 16)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3514, file: !3484, line: 43, size: 16, elements: !3529)
!3529 = !{!3530, !3531}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3528, file: !3484, line: 44, baseType: !159, size: 8)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3528, file: !3484, line: 45, baseType: !159, size: 8, offset: 8)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3473, file: !60, line: 81, baseType: !3533, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !60, line: 85, size: 384, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3534, file: !60, line: 86, baseType: !3496, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3534, file: !60, line: 87, baseType: !115, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3534, file: !60, line: 88, baseType: !115, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3534, file: !60, line: 89, baseType: !115, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3534, file: !60, line: 90, baseType: !771, size: 8, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3534, file: !60, line: 92, baseType: !3533, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3473, file: !60, line: 82, baseType: !7, size: 32, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !251, file: !252, line: 1463, baseType: !3544, offset: 21184)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !252, line: 739, elements: !584)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !251, file: !252, line: 1470, baseType: !215, size: 128, align: 64, offset: 21184)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !251, file: !252, line: 1471, baseType: !193, size: 32, offset: 21312)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !251, file: !252, line: 1472, baseType: !98, size: 32, offset: 21344)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !251, file: !252, line: 1474, baseType: !250, size: 64, offset: 21376)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !251, file: !252, line: 1475, baseType: !3550, size: 320, offset: 21440)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3551, line: 11, size: 320, elements: !3552)
!3551 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3552 = !{!3553, !3554, !3555, !3560}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3550, file: !3551, line: 16, baseType: !205, size: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3550, file: !3551, line: 17, baseType: !115, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3550, file: !3551, line: 18, baseType: !3556, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3551, line: 19, baseType: !261, size: 32, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !251, file: !252, line: 1478, baseType: !3562, size: 64, offset: 21760)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !252, line: 1478, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !251, file: !252, line: 1482, baseType: !193, size: 32, offset: 21824)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !251, file: !252, line: 1489, baseType: !96, size: 64, offset: 21888)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !251, file: !252, line: 1504, baseType: !96, size: 64, offset: 21952)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !251, file: !252, line: 1505, baseType: !315, size: 64, offset: 22016)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !251, file: !252, line: 1506, baseType: !314, size: 64, offset: 22080)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !251, file: !252, line: 1507, baseType: !315, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !251, file: !252, line: 1508, baseType: !315, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !251, file: !252, line: 1509, baseType: !315, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !251, file: !252, line: 1510, baseType: !215, size: 128, align: 64, offset: 22208)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !251, file: !252, line: 1511, baseType: !98, size: 32, offset: 22336)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !251, file: !252, line: 1515, baseType: !3575, size: 64, offset: 22400)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !276, line: 56, size: 64, elements: !3576)
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3575, file: !276, line: 57, baseType: !279, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !251, file: !252, line: 1518, baseType: !3575, size: 64, offset: 22464)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !251, file: !252, line: 1528, baseType: !215, size: 128, align: 64, offset: 22528)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !251, file: !252, line: 1552, baseType: !3581, size: 35328, offset: 23040)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3582, line: 430, size: 35328, elements: !3583)
!3582 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3583 = !{!3584, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3613, !3614, !3615, !3616, !3617, !3618, !3621, !3622, !3623, !3624}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3581, file: !3582, line: 432, baseType: !3585, size: 192)
!3585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3586, size: 192, elements: !647)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3587, line: 16, size: 64, elements: !3588)
!3587 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3586, file: !3587, line: 17, baseType: !169, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3586, file: !3587, line: 18, baseType: !169, size: 16, offset: 16)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3586, file: !3587, line: 19, baseType: !169, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3586, file: !3587, line: 19, baseType: !169, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3586, file: !3587, line: 19, baseType: !169, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3586, file: !3587, line: 19, baseType: !169, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3586, file: !3587, line: 19, baseType: !169, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3586, file: !3587, line: 20, baseType: !169, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3586, file: !3587, line: 20, baseType: !169, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3586, file: !3587, line: 20, baseType: !169, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3586, file: !3587, line: 20, baseType: !169, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3586, file: !3587, line: 20, baseType: !169, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3586, file: !3587, line: 20, baseType: !169, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3581, file: !3582, line: 436, baseType: !115, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3581, file: !3582, line: 440, baseType: !102, size: 16, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3581, file: !3582, line: 441, baseType: !102, size: 16, offset: 272)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3581, file: !3582, line: 442, baseType: !102, size: 16, offset: 288)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3581, file: !3582, line: 443, baseType: !102, size: 16, offset: 304)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3581, file: !3582, line: 447, baseType: !115, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3581, file: !3582, line: 448, baseType: !115, size: 64, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3581, file: !3582, line: 459, baseType: !3610, size: 256, offset: 448)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3611, size: 256, elements: !210)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3582, line: 428, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3581, file: !3582, line: 461, baseType: !115, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3581, file: !3582, line: 463, baseType: !115, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3581, file: !3582, line: 465, baseType: !115, size: 64, offset: 832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3581, file: !3582, line: 466, baseType: !115, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3581, file: !3582, line: 467, baseType: !115, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3581, file: !3582, line: 473, baseType: !3619, size: 64, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3582, line: 10, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3581, file: !3582, line: 480, baseType: !115, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3581, file: !3582, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3581, file: !3582, line: 491, baseType: !261, size: 32, offset: 1184)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3581, file: !3582, line: 501, baseType: !3625, size: 33792, offset: 1536)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3626, line: 448, size: 33792, elements: !3627)
!3626 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3627 = !{!3628, !3629, !3630, !3792, !3793, !3799, !3800}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3625, file: !3626, line: 461, baseType: !7, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3625, file: !3626, line: 468, baseType: !115, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3625, file: !3626, line: 476, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3626, line: 356, size: 33280, align: 512, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3632, file: !3626, line: 358, baseType: !7, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3632, file: !3626, line: 361, baseType: !7, size: 32, offset: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3632, file: !3626, line: 364, baseType: !314, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3632, file: !3626, line: 367, baseType: !314, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3632, file: !3626, line: 370, baseType: !314, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3632, file: !3626, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3632, file: !3626, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3632, file: !3626, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3632, file: !3626, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3632, file: !3626, line: 397, baseType: !3644, size: 32768, offset: 512)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3626, line: 348, size: 32768, elements: !3645)
!3645 = !{!3646, !3661, !3698, !3775, !3788}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3644, file: !3626, line: 349, baseType: !3647, size: 896)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3626, line: 12, size: 896, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3660}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3647, file: !3626, line: 13, baseType: !261, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3647, file: !3626, line: 14, baseType: !261, size: 32, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3647, file: !3626, line: 15, baseType: !261, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3647, file: !3626, line: 16, baseType: !261, size: 32, offset: 96)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3647, file: !3626, line: 17, baseType: !261, size: 32, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3647, file: !3626, line: 18, baseType: !261, size: 32, offset: 160)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3647, file: !3626, line: 19, baseType: !261, size: 32, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3647, file: !3626, line: 22, baseType: !3657, size: 640, offset: 224)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 640, elements: !3658)
!3658 = !{!3659}
!3659 = !DISubrange(count: 20)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3647, file: !3626, line: 25, baseType: !261, size: 32, offset: 864)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3644, file: !3626, line: 350, baseType: !3662, size: 4096, align: 128)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3626, line: 34, size: 4096, align: 128, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3683, !3684, !3685, !3687, !3689, !3693}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3662, file: !3626, line: 35, baseType: !169, size: 16)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3662, file: !3626, line: 36, baseType: !169, size: 16, offset: 16)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3662, file: !3626, line: 37, baseType: !169, size: 16, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3662, file: !3626, line: 38, baseType: !169, size: 16, offset: 48)
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3626, line: 39, baseType: !3669, size: 128, offset: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3662, file: !3626, line: 39, size: 128, elements: !3670)
!3670 = !{!3671, !3676}
!3671 = !DIDerivedType(tag: DW_TAG_member, scope: !3669, file: !3626, line: 40, baseType: !3672, size: 128)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3626, line: 40, size: 128, elements: !3673)
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3672, file: !3626, line: 41, baseType: !314, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3672, file: !3626, line: 42, baseType: !314, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3669, file: !3626, line: 44, baseType: !3677, size: 128)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3669, file: !3626, line: 44, size: 128, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3677, file: !3626, line: 45, baseType: !261, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3677, file: !3626, line: 46, baseType: !261, size: 32, offset: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3677, file: !3626, line: 47, baseType: !261, size: 32, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3677, file: !3626, line: 48, baseType: !261, size: 32, offset: 96)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3662, file: !3626, line: 51, baseType: !261, size: 32, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3662, file: !3626, line: 52, baseType: !261, size: 32, offset: 224)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3662, file: !3626, line: 55, baseType: !3686, size: 1024, offset: 256)
!3686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1024, elements: !1591)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3662, file: !3626, line: 58, baseType: !3688, size: 2048, offset: 1280)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 2048, elements: !2932)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3662, file: !3626, line: 60, baseType: !3690, size: 384, offset: 3328)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 384, elements: !3691)
!3691 = !{!3692}
!3692 = !DISubrange(count: 12)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3662, file: !3626, line: 62, baseType: !3694, size: 384, offset: 3712)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3662, file: !3626, line: 62, size: 384, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3694, file: !3626, line: 63, baseType: !3690, size: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3694, file: !3626, line: 64, baseType: !3690, size: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3644, file: !3626, line: 351, baseType: !3699, size: 1088)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3626, line: 79, size: 1088, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3774}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3699, file: !3626, line: 80, baseType: !261, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3699, file: !3626, line: 81, baseType: !261, size: 32, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3699, file: !3626, line: 82, baseType: !261, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3699, file: !3626, line: 83, baseType: !261, size: 32, offset: 96)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3699, file: !3626, line: 84, baseType: !261, size: 32, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3699, file: !3626, line: 85, baseType: !261, size: 32, offset: 160)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3699, file: !3626, line: 86, baseType: !261, size: 32, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3699, file: !3626, line: 88, baseType: !3657, size: 640, offset: 224)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3699, file: !3626, line: 89, baseType: !159, size: 8, offset: 864)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3699, file: !3626, line: 90, baseType: !159, size: 8, offset: 872)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3699, file: !3626, line: 91, baseType: !159, size: 8, offset: 880)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3699, file: !3626, line: 92, baseType: !159, size: 8, offset: 888)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3699, file: !3626, line: 93, baseType: !159, size: 8, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3699, file: !3626, line: 94, baseType: !159, size: 8, offset: 904)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3699, file: !3626, line: 95, baseType: !3716, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3718, line: 11, size: 128, elements: !3719)
!3718 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3717, file: !3718, line: 12, baseType: !1044, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3717, file: !3718, line: 13, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3724, line: 103, size: 1344, elements: !3725)
!3724 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3754, !3755, !3756}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3723, file: !3724, line: 109, baseType: !115, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3723, file: !3724, line: 110, baseType: !115, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3723, file: !3724, line: 111, baseType: !115, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3723, file: !3724, line: 112, baseType: !115, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3723, file: !3724, line: 113, baseType: !115, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3723, file: !3724, line: 114, baseType: !115, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3723, file: !3724, line: 117, baseType: !115, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3723, file: !3724, line: 118, baseType: !115, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3723, file: !3724, line: 119, baseType: !115, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3723, file: !3724, line: 120, baseType: !115, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3723, file: !3724, line: 121, baseType: !115, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3723, file: !3724, line: 122, baseType: !115, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3723, file: !3724, line: 123, baseType: !115, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3723, file: !3724, line: 124, baseType: !115, size: 64, offset: 832)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3723, file: !3724, line: 125, baseType: !115, size: 64, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3723, file: !3724, line: 139, baseType: !115, size: 64, offset: 960)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3723, file: !3724, line: 142, baseType: !115, size: 64, offset: 1024)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !3723, file: !3724, line: 144, baseType: !3744, size: 64, offset: 1088)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3723, file: !3724, line: 144, size: 64, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3744, file: !3724, line: 146, baseType: !169, size: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3744, file: !3724, line: 148, baseType: !314, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3744, file: !3724, line: 150, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3724, line: 59, size: 64, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3749, file: !3724, line: 61, baseType: !314, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3749, file: !3724, line: 63, baseType: !314, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3749, file: !3724, line: 65, baseType: !314, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3723, file: !3724, line: 153, baseType: !115, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3723, file: !3724, line: 154, baseType: !115, size: 64, offset: 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3723, file: !3724, line: 156, baseType: !3757, size: 64, offset: 1280)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3723, file: !3724, line: 156, size: 64, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3757, file: !3724, line: 158, baseType: !169, size: 16)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3757, file: !3724, line: 160, baseType: !314, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3757, file: !3724, line: 162, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3724, line: 69, size: 64, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3762, file: !3724, line: 71, baseType: !314, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3762, file: !3724, line: 73, baseType: !314, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3762, file: !3724, line: 75, baseType: !314, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3762, file: !3724, line: 77, baseType: !314, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3762, file: !3724, line: 80, baseType: !314, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3762, file: !3724, line: 83, baseType: !314, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3762, file: !3724, line: 86, baseType: !314, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3762, file: !3724, line: 88, baseType: !314, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3762, file: !3724, line: 93, baseType: !314, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3762, file: !3724, line: 100, baseType: !314, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3699, file: !3626, line: 96, baseType: !261, size: 32, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3644, file: !3626, line: 352, baseType: !3776, size: 4608, align: 512)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3626, line: 333, size: 4608, align: 512, elements: !3777)
!3777 = !{!3778, !3779, !3786}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3776, file: !3626, line: 334, baseType: !3662, size: 4096, align: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3776, file: !3626, line: 335, baseType: !3780, size: 512, offset: 4096)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3626, line: 312, size: 512, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3780, file: !3626, line: 313, baseType: !314, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3780, file: !3626, line: 314, baseType: !314, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3780, file: !3626, line: 315, baseType: !3785, size: 384, offset: 128)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 384, elements: !758)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3776, file: !3626, line: 336, baseType: !3787, offset: 4608)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !869)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3644, file: !3626, line: 353, baseType: !3789, size: 32768)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 32768, elements: !3790)
!3790 = !{!3791}
!3791 = !DISubrange(count: 4096)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3625, file: !3626, line: 484, baseType: !3631, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3625, file: !3626, line: 491, baseType: !3794, size: 128, offset: 256)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3626, line: 404, size: 128, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3794, file: !3626, line: 424, baseType: !314, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3794, file: !3626, line: 432, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3794, file: !3626, line: 440, baseType: !7, size: 32, offset: 96)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3625, file: !3626, line: 498, baseType: !3794, size: 128, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3625, file: !3626, line: 508, baseType: !3632, size: 33280, align: 512, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !230, file: !231, line: 31, baseType: !3802, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3804, line: 325, flags: DIFlagFwdDecl)
!3804 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !230, file: !231, line: 32, baseType: !7, size: 32, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !231, line: 33, baseType: !229, size: 64, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !230, file: !231, line: 35, baseType: !3808, size: 64, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !3810, line: 4, size: 576, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!3811 = !{!3812, !3813, !3814, !3815, !3816}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3809, file: !3810, line: 5, baseType: !130, size: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3809, file: !3810, line: 6, baseType: !98, size: 32, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !3809, file: !3810, line: 7, baseType: !205, size: 128, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3809, file: !3810, line: 8, baseType: !205, size: 128, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3809, file: !3810, line: 9, baseType: !3817, size: 64, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3808}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !230, file: !231, line: 37, baseType: !855, size: 64, offset: 704)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !230, file: !231, line: 38, baseType: !858, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !230, file: !231, line: 39, baseType: !98, size: 32, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !230, file: !231, line: 40, baseType: !2955, size: 192, offset: 896)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !230, file: !231, line: 42, baseType: !98, size: 32, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !185, file: !186, line: 100, baseType: !7, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !185, file: !186, line: 101, baseType: !3827, size: 64, offset: 128)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "proc_op", file: !186, line: 90, size: 64, elements: !3828)
!3828 = !{!3829, !3833, !3837}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_link", scope: !3827, file: !186, line: 91, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!98, !895, !1653}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3827, file: !186, line: 92, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!98, !1241, !229, !189, !250}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "lsm", scope: !3827, file: !186, line: 95, baseType: !92, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pde", scope: !185, file: !186, line: 102, baseType: !3839, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !186, line: 30, size: 1408, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3870, !3871, !3876, !3881, !3882, !3883, !3884, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3840, file: !186, line: 35, baseType: !125, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3840, file: !186, line: 36, baseType: !193, size: 32, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "pde_openers", scope: !3840, file: !186, line: 37, baseType: !173, size: 128, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_lock", scope: !3840, file: !186, line: 39, baseType: !135, size: 32, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "pde_unload_completion", scope: !3840, file: !186, line: 40, baseType: !2843, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "proc_iops", scope: !3840, file: !186, line: 41, baseType: !944, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3840, file: !186, line: 42, baseType: !3849, size: 64, offset: 384)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3840, file: !186, line: 42, size: 64, elements: !3850)
!3850 = !{!3851, !3869}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ops", scope: !3849, file: !186, line: 43, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !3855, line: 29, size: 768, elements: !3856)
!3855 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !3854, file: !3855, line: 30, baseType: !7, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !3854, file: !3855, line: 31, baseType: !2331, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !3854, file: !3855, line: 32, baseType: !2275, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !3854, file: !3855, line: 33, baseType: !2155, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !3854, file: !3855, line: 34, baseType: !2279, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !3854, file: !3855, line: 36, baseType: !2271, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !3854, file: !3855, line: 37, baseType: !2331, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !3854, file: !3855, line: 38, baseType: !2304, size: 64, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !3854, file: !3855, line: 39, baseType: !2321, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !3854, file: !3855, line: 41, baseType: !2321, size: 64, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !3854, file: !3855, line: 43, baseType: !2326, size: 64, offset: 640)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !3854, file: !3855, line: 44, baseType: !588, size: 64, offset: 704)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir_ops", scope: !3849, file: !186, line: 44, baseType: !2265, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dops", scope: !3840, file: !186, line: 46, baseType: !1606, size: 64, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !3840, file: !186, line: 47, baseType: !3872, size: 64, offset: 512)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3840, file: !186, line: 47, size: 64, elements: !3873)
!3873 = !{!3874, !3875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_ops", scope: !3872, file: !186, line: 48, baseType: !1254, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "single_show", scope: !3872, file: !186, line: 49, baseType: !1271, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3840, file: !186, line: 51, baseType: !3877, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_write_t", file: !3855, line: 77, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!98, !591, !782, !111}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3840, file: !186, line: 52, baseType: !96, size: 64, offset: 640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "state_size", scope: !3840, file: !186, line: 53, baseType: !7, size: 32, offset: 704)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "low_ino", scope: !3840, file: !186, line: 54, baseType: !7, size: 32, offset: 736)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3840, file: !186, line: 55, baseType: !3885, size: 32, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !101, line: 25, baseType: !261)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3840, file: !186, line: 56, baseType: !653, size: 32, offset: 800)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3840, file: !186, line: 57, baseType: !671, size: 32, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3840, file: !186, line: 58, baseType: !117, size: 64, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3840, file: !186, line: 59, baseType: !3839, size: 64, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "subdir", scope: !3840, file: !186, line: 60, baseType: !449, size: 64, offset: 1024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "subdir_node", scope: !3840, file: !186, line: 61, baseType: !306, size: 192, align: 64, offset: 1088)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3840, file: !186, line: 62, baseType: !782, size: 64, offset: 1280)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3840, file: !186, line: 63, baseType: !100, size: 16, offset: 1344)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3840, file: !186, line: 64, baseType: !159, size: 8, offset: 1360)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !3840, file: !186, line: 65, baseType: !159, size: 8, offset: 1368)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "inline_name", scope: !3840, file: !186, line: 66, baseType: !3432, offset: 1376)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !185, file: !186, line: 103, baseType: !3898, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !88, line: 173, size: 640, elements: !3900)
!3900 = !{!3901, !3913, !3914, !3915, !3946, !3947, !3949, !3955}
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !88, line: 174, baseType: !3902, size: 192)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3899, file: !88, line: 174, size: 192, elements: !3903)
!3903 = !{!3904, !3912}
!3904 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !88, line: 175, baseType: !3905, size: 192)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3902, file: !88, line: 175, size: 192, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3905, file: !88, line: 176, baseType: !109, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3905, file: !88, line: 177, baseType: !98, size: 32, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3905, file: !88, line: 178, baseType: !98, size: 32, offset: 96)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3905, file: !88, line: 179, baseType: !98, size: 32, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3905, file: !88, line: 180, baseType: !98, size: 32, offset: 160)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3902, file: !88, line: 182, baseType: !215, size: 128, align: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3899, file: !88, line: 184, baseType: !2843, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3899, file: !88, line: 185, baseType: !109, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3899, file: !88, line: 186, baseType: !3916, size: 64, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !88, line: 204, size: 960, elements: !3918)
!3918 = !{!3919, !3932, !3936, !3942}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3917, file: !88, line: 205, baseType: !3920, size: 768)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !88, line: 199, size: 768, elements: !3921)
!3921 = !{!3922, !3927}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3920, file: !88, line: 200, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!98, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3920, file: !88, line: 201, baseType: !3928, size: 704, offset: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !88, line: 193, size: 704, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3928, file: !88, line: 195, baseType: !3899, size: 640)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3928, file: !88, line: 196, baseType: !449, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3917, file: !88, line: 206, baseType: !3933, size: 64, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!3926, !3916}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3917, file: !88, line: 207, baseType: !3937, size: 64, offset: 832)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3898, !3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3917, file: !88, line: 209, baseType: !3943, size: 64, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!98, !3898, !109}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3899, file: !88, line: 187, baseType: !3926, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3899, file: !88, line: 188, baseType: !3948, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3899, file: !88, line: 189, baseType: !3950, size: 64, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !88, line: 157, size: 256, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3951, file: !88, line: 158, baseType: !306, size: 192, align: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3951, file: !88, line: 159, baseType: !3898, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3899, file: !88, line: 190, baseType: !201, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_entry", scope: !185, file: !186, line: 104, baseType: !109, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_inodes", scope: !185, file: !186, line: 105, baseType: !205, size: 128, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ns_ops", scope: !185, file: !186, line: 106, baseType: !2960, size: 64, offset: 512)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !185, file: !186, line: 107, baseType: !931, size: 4800, offset: 576)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3963)
!3963 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2913)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3966)
!3966 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !591)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !101, line: 42, baseType: !115)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!3969 = !{!0, !3970, !3972, !3974, !3976, !3979, !3984, !3987, !3989, !3994, !4003, !4005, !4007, !4009}
!3970 = !DIGlobalVariableExpression(var: !3971, expr: !DIExpression())
!3971 = distinct !DIGlobalVariable(name: "proc_fd_inode_operations", scope: !2, file: !3, line: 373, type: !945, isLocal: false, isDefinition: true)
!3972 = !DIGlobalVariableExpression(var: !3973, expr: !DIExpression())
!3973 = distinct !DIGlobalVariable(name: "proc_fdinfo_inode_operations", scope: !2, file: !3, line: 415, type: !945, isLocal: false, isDefinition: true)
!3974 = !DIGlobalVariableExpression(var: !3975, expr: !DIExpression())
!3975 = distinct !DIGlobalVariable(name: "proc_fdinfo_operations", scope: !2, file: !3, line: 421, type: !2266, isLocal: false, isDefinition: true)
!3976 = !DIGlobalVariableExpression(var: !3977, expr: !DIExpression())
!3977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !3978, isLocal: true, isDefinition: true)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 24, elements: !647)
!3979 = !DIGlobalVariableExpression(var: !3980, expr: !DIExpression())
!3980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !3981, isLocal: true, isDefinition: true)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 104, elements: !3982)
!3982 = !{!3983}
!3983 = !DISubrange(count: 13)
!3984 = !DIGlobalVariableExpression(var: !3985, expr: !DIExpression())
!3985 = distinct !DIGlobalVariable(scope: null, file: !28, line: 3425, type: !3986, isLocal: true, isDefinition: true)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16, elements: !3121)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(scope: null, file: !28, line: 3430, type: !3978, isLocal: true, isDefinition: true)
!3989 = !DIGlobalVariableExpression(var: !3990, expr: !DIExpression())
!3990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched149", scope: !3991, file: !252, line: 2104, type: !96, isLocal: true, isDefinition: true)
!3991 = distinct !DISubprogram(name: "_cond_resched", scope: !252, file: !252, line: 2102, type: !3992, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!98}
!3994 = !DIGlobalVariableExpression(var: !3995, expr: !DIExpression())
!3995 = distinct !DIGlobalVariable(name: "put_task_map", scope: !3996, file: !3997, line: 134, type: !4002, isLocal: true, isDefinition: true)
!3996 = distinct !DISubprogram(name: "put_task_struct", scope: !3997, file: !3997, line: 124, type: !3998, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4000)
!3997 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !250}
!4000 = !{!4001}
!4001 = !DILocalVariable(name: "t", arg: 1, scope: !3996, file: !3997, line: 124, type: !250)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1172, line: 211, elements: !584)
!4003 = !DIGlobalVariableExpression(var: !4004, expr: !DIExpression())
!4004 = distinct !DIGlobalVariable(name: "tid_fd_dentry_operations", scope: !2, file: !3, line: 170, type: !1607, isLocal: true, isDefinition: true)
!4005 = !DIGlobalVariableExpression(var: !4006, expr: !DIExpression())
!4006 = distinct !DIGlobalVariable(name: "proc_fdinfo_file_inode_operations", scope: !2, file: !3, line: 105, type: !945, isLocal: true, isDefinition: true)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "proc_fdinfo_file_operations", scope: !2, file: !3, line: 110, type: !2266, isLocal: true, isDefinition: true)
!4009 = !DIGlobalVariableExpression(var: !4010, expr: !DIExpression())
!4010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !4011, isLocal: true, isDefinition: true)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 336, elements: !4012)
!4012 = !{!4013}
!4013 = !DISubrange(count: 42)
!4014 = !{i32 7, !"Dwarf Version", i32 5}
!4015 = !{i32 2, !"Debug Info Version", i32 3}
!4016 = !{i32 1, !"wchar_size", i32 2}
!4017 = !{i32 8, !"cf-protection-branch", i32 1}
!4018 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4019 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4020 = !{i32 1, !"Code Model", i32 2}
!4021 = !{i32 1, !"override-stack-alignment", i32 8}
!4022 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4023 = distinct !DISubprogram(name: "proc_readfd", scope: !3, file: !3, line: 314, type: !2292, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4024 = !{!4025, !4026}
!4025 = !DILocalVariable(name: "file", arg: 1, scope: !4023, file: !3, line: 314, type: !591)
!4026 = !DILocalVariable(name: "ctx", arg: 2, scope: !4023, file: !3, line: 314, type: !2294)
!4027 = !DILocation(line: 314, column: 37, scope: !4023)
!4028 = !DILocation(line: 314, column: 63, scope: !4023)
!4029 = !DILocation(line: 316, column: 28, scope: !4023)
!4030 = !DILocation(line: 316, column: 34, scope: !4023)
!4031 = !DILocation(line: 316, column: 9, scope: !4023)
!4032 = !DILocation(line: 316, column: 2, scope: !4023)
!4033 = distinct !DISubprogram(name: "proc_fd_permission", scope: !3, file: !3, line: 335, type: !967, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039}
!4035 = !DILocalVariable(name: "idmap", arg: 1, scope: !4033, file: !3, line: 335, type: !969)
!4036 = !DILocalVariable(name: "inode", arg: 2, scope: !4033, file: !3, line: 336, type: !930)
!4037 = !DILocalVariable(name: "mask", arg: 3, scope: !4033, file: !3, line: 336, type: !98)
!4038 = !DILocalVariable(name: "p", scope: !4033, file: !3, line: 338, type: !250)
!4039 = !DILocalVariable(name: "rv", scope: !4033, file: !3, line: 339, type: !98)
!4040 = !DILocation(line: 335, column: 42, scope: !4033)
!4041 = !DILocation(line: 336, column: 24, scope: !4033)
!4042 = !DILocation(line: 336, column: 35, scope: !4033)
!4043 = !DILocation(line: 338, column: 2, scope: !4033)
!4044 = !DILocation(line: 338, column: 22, scope: !4033)
!4045 = !DILocation(line: 339, column: 2, scope: !4033)
!4046 = !DILocation(line: 339, column: 6, scope: !4033)
!4047 = !DILocation(line: 341, column: 42, scope: !4033)
!4048 = !DILocation(line: 341, column: 49, scope: !4033)
!4049 = !DILocation(line: 341, column: 7, scope: !4033)
!4050 = !DILocation(line: 341, column: 5, scope: !4033)
!4051 = !DILocation(line: 342, column: 6, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 342, column: 6)
!4053 = !DILocation(line: 342, column: 9, scope: !4052)
!4054 = !DILocation(line: 342, column: 6, scope: !4033)
!4055 = !DILocation(line: 343, column: 10, scope: !4052)
!4056 = !DILocation(line: 343, column: 3, scope: !4052)
!4057 = !DILocation(line: 345, column: 2, scope: !4033)
!4058 = !DILocation(line: 346, column: 24, scope: !4033)
!4059 = !DILocation(line: 346, column: 15, scope: !4033)
!4060 = !DILocation(line: 346, column: 6, scope: !4033)
!4061 = !DILocation(line: 346, column: 4, scope: !4033)
!4062 = !DILocation(line: 347, column: 6, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 347, column: 6)
!4064 = !DILocation(line: 347, column: 8, scope: !4063)
!4065 = !DILocation(line: 347, column: 29, scope: !4063)
!4066 = !DILocation(line: 347, column: 32, scope: !4063)
!4067 = !DILocation(line: 347, column: 11, scope: !4063)
!4068 = !DILocation(line: 347, column: 6, scope: !4033)
!4069 = !DILocation(line: 348, column: 6, scope: !4063)
!4070 = !DILocation(line: 348, column: 3, scope: !4063)
!4071 = !DILocation(line: 349, column: 2, scope: !4033)
!4072 = !DILocation(line: 351, column: 9, scope: !4033)
!4073 = !DILocation(line: 351, column: 2, scope: !4033)
!4074 = !DILocation(line: 352, column: 1, scope: !4033)
!4075 = !DISubprogram(name: "generic_permission", scope: !28, file: !28, line: 2676, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4076 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4077, file: !4077, line: 782, type: !2430, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4077 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4078 = !DILocation(line: 784, column: 2, scope: !4076)
!4079 = !DILocation(line: 786, column: 2, scope: !4076)
!4080 = !DILocation(line: 786, column: 2, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4076, file: !4077, line: 786, column: 2)
!4082 = !DILocation(line: 787, column: 2, scope: !4076)
!4083 = !DILocation(line: 787, column: 2, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4076, file: !4077, line: 787, column: 2)
!4085 = !DILocation(line: 789, column: 1, scope: !4076)
!4086 = !DISubprogram(name: "pid_task", scope: !67, file: !67, line: 93, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!250, !189, !66}
!4089 = distinct !DISubprogram(name: "proc_pid", scope: !186, file: !186, line: 123, type: !4090, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!189, !1662}
!4092 = !{!4093}
!4093 = !DILocalVariable(name: "inode", arg: 1, scope: !4089, file: !186, line: 123, type: !1662)
!4094 = !DILocation(line: 123, column: 56, scope: !4089)
!4095 = !DILocation(line: 125, column: 16, scope: !4089)
!4096 = !DILocation(line: 125, column: 9, scope: !4089)
!4097 = !DILocation(line: 125, column: 24, scope: !4089)
!4098 = !DILocation(line: 125, column: 2, scope: !4089)
!4099 = distinct !DISubprogram(name: "same_thread_group", scope: !3072, file: !3072, line: 713, type: !4100, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!771, !250, !250}
!4102 = !{!4103, !4104}
!4103 = !DILocalVariable(name: "p1", arg: 1, scope: !4099, file: !3072, line: 713, type: !250)
!4104 = !DILocalVariable(name: "p2", arg: 2, scope: !4099, file: !3072, line: 713, type: !250)
!4105 = !DILocation(line: 713, column: 44, scope: !4099)
!4106 = !DILocation(line: 713, column: 68, scope: !4099)
!4107 = !DILocation(line: 715, column: 9, scope: !4099)
!4108 = !DILocation(line: 715, column: 13, scope: !4099)
!4109 = !DILocation(line: 715, column: 23, scope: !4099)
!4110 = !DILocation(line: 715, column: 27, scope: !4099)
!4111 = !DILocation(line: 715, column: 20, scope: !4099)
!4112 = !DILocation(line: 715, column: 2, scope: !4099)
!4113 = distinct !DISubprogram(name: "get_current", scope: !4114, file: !4114, line: 39, type: !4115, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4117)
!4114 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!250}
!4117 = !{!4118, !4120, !4124}
!4118 = !DILocalVariable(name: "pscr_ret__", scope: !4119, file: !4114, line: 41, type: !250)
!4119 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 41, column: 9)
!4120 = !DILocalVariable(name: "__vpp_verify", scope: !4121, file: !4114, line: 41, type: !4122)
!4121 = distinct !DILexicalBlock(scope: !4119, file: !4114, line: 41, column: 9)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4124 = !DILocalVariable(name: "pfo_val__", scope: !4125, file: !4114, line: 41, type: !314)
!4125 = distinct !DILexicalBlock(scope: !4119, file: !4114, line: 41, column: 9)
!4126 = !DILocation(line: 41, column: 9, scope: !4119)
!4127 = !DILocation(line: 41, column: 9, scope: !4121)
!4128 = !DILocation(line: 41, column: 9, scope: !4125)
!4129 = !{i64 2148971394}
!4130 = !DILocation(line: 41, column: 9, scope: !4113)
!4131 = !DILocation(line: 41, column: 2, scope: !4113)
!4132 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4077, file: !4077, line: 813, type: !2430, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4133 = !DILocation(line: 815, column: 2, scope: !4132)
!4134 = !DILocation(line: 815, column: 2, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !4077, line: 815, column: 2)
!4136 = !DILocation(line: 818, column: 2, scope: !4132)
!4137 = !DILocation(line: 819, column: 2, scope: !4132)
!4138 = !DILocation(line: 819, column: 2, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4132, file: !4077, line: 819, column: 2)
!4140 = !DILocation(line: 820, column: 1, scope: !4132)
!4141 = distinct !DISubprogram(name: "proc_lookupfd", scope: !3, file: !3, line: 325, type: !950, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4142)
!4142 = !{!4143, !4144, !4145}
!4143 = !DILocalVariable(name: "dir", arg: 1, scope: !4141, file: !3, line: 325, type: !930)
!4144 = !DILocalVariable(name: "dentry", arg: 2, scope: !4141, file: !3, line: 325, type: !895)
!4145 = !DILocalVariable(name: "flags", arg: 3, scope: !4141, file: !3, line: 326, type: !7)
!4146 = !DILocation(line: 325, column: 51, scope: !4141)
!4147 = !DILocation(line: 325, column: 71, scope: !4141)
!4148 = !DILocation(line: 326, column: 22, scope: !4141)
!4149 = !DILocation(line: 328, column: 30, scope: !4141)
!4150 = !DILocation(line: 328, column: 35, scope: !4141)
!4151 = !DILocation(line: 328, column: 9, scope: !4141)
!4152 = !DILocation(line: 328, column: 2, scope: !4141)
!4153 = distinct !DISubprogram(name: "proc_fd_getattr", scope: !3, file: !3, line: 354, type: !1050, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4155 = !DILocalVariable(name: "idmap", arg: 1, scope: !4153, file: !3, line: 354, type: !969)
!4156 = !DILocalVariable(name: "path", arg: 2, scope: !4153, file: !3, line: 355, type: !1052)
!4157 = !DILocalVariable(name: "stat", arg: 3, scope: !4153, file: !3, line: 355, type: !1054)
!4158 = !DILocalVariable(name: "request_mask", arg: 4, scope: !4153, file: !3, line: 356, type: !261)
!4159 = !DILocalVariable(name: "query_flags", arg: 5, scope: !4153, file: !3, line: 356, type: !7)
!4160 = !DILocalVariable(name: "inode", scope: !4153, file: !3, line: 358, type: !930)
!4161 = !DILocalVariable(name: "rv", scope: !4153, file: !3, line: 359, type: !98)
!4162 = !DILocation(line: 354, column: 46, scope: !4153)
!4163 = !DILocation(line: 355, column: 23, scope: !4153)
!4164 = !DILocation(line: 355, column: 43, scope: !4153)
!4165 = !DILocation(line: 356, column: 8, scope: !4153)
!4166 = !DILocation(line: 356, column: 35, scope: !4153)
!4167 = !DILocation(line: 358, column: 2, scope: !4153)
!4168 = !DILocation(line: 358, column: 16, scope: !4153)
!4169 = !DILocation(line: 358, column: 32, scope: !4153)
!4170 = !DILocation(line: 358, column: 38, scope: !4153)
!4171 = !DILocation(line: 358, column: 24, scope: !4153)
!4172 = !DILocation(line: 359, column: 2, scope: !4153)
!4173 = !DILocation(line: 359, column: 6, scope: !4153)
!4174 = !DILocation(line: 361, column: 35, scope: !4153)
!4175 = !DILocation(line: 361, column: 49, scope: !4153)
!4176 = !DILocation(line: 361, column: 56, scope: !4153)
!4177 = !DILocation(line: 361, column: 2, scope: !4153)
!4178 = !DILocation(line: 364, column: 6, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 364, column: 6)
!4180 = !DILocation(line: 364, column: 6, scope: !4153)
!4181 = !DILocation(line: 365, column: 26, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 364, column: 30)
!4183 = !DILocation(line: 365, column: 34, scope: !4182)
!4184 = !DILocation(line: 365, column: 40, scope: !4182)
!4185 = !DILocation(line: 365, column: 8, scope: !4182)
!4186 = !DILocation(line: 365, column: 6, scope: !4182)
!4187 = !DILocation(line: 366, column: 7, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 366, column: 7)
!4189 = !DILocation(line: 366, column: 10, scope: !4188)
!4190 = !DILocation(line: 366, column: 7, scope: !4182)
!4191 = !DILocation(line: 367, column: 11, scope: !4188)
!4192 = !DILocation(line: 367, column: 4, scope: !4188)
!4193 = !DILocation(line: 368, column: 2, scope: !4182)
!4194 = !DILocation(line: 370, column: 9, scope: !4153)
!4195 = !DILocation(line: 370, column: 2, scope: !4153)
!4196 = !DILocation(line: 371, column: 1, scope: !4153)
!4197 = distinct !DISubprogram(name: "proc_lookupfdinfo", scope: !3, file: !3, line: 404, type: !950, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4198 = !{!4199, !4200, !4201}
!4199 = !DILocalVariable(name: "dir", arg: 1, scope: !4197, file: !3, line: 404, type: !930)
!4200 = !DILocalVariable(name: "dentry", arg: 2, scope: !4197, file: !3, line: 404, type: !895)
!4201 = !DILocalVariable(name: "flags", arg: 3, scope: !4197, file: !3, line: 404, type: !7)
!4202 = !DILocation(line: 404, column: 33, scope: !4197)
!4203 = !DILocation(line: 404, column: 53, scope: !4197)
!4204 = !DILocation(line: 404, column: 74, scope: !4197)
!4205 = !DILocation(line: 406, column: 30, scope: !4197)
!4206 = !DILocation(line: 406, column: 35, scope: !4197)
!4207 = !DILocation(line: 406, column: 9, scope: !4197)
!4208 = !DILocation(line: 406, column: 2, scope: !4197)
!4209 = distinct !DISubprogram(name: "proc_fdinfo_permission", scope: !3, file: !3, line: 87, type: !967, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215}
!4211 = !DILocalVariable(name: "idmap", arg: 1, scope: !4209, file: !3, line: 87, type: !969)
!4212 = !DILocalVariable(name: "inode", arg: 2, scope: !4209, file: !3, line: 87, type: !930)
!4213 = !DILocalVariable(name: "mask", arg: 3, scope: !4209, file: !3, line: 88, type: !98)
!4214 = !DILocalVariable(name: "allowed", scope: !4209, file: !3, line: 90, type: !771)
!4215 = !DILocalVariable(name: "task", scope: !4209, file: !3, line: 91, type: !250)
!4216 = !DILocation(line: 87, column: 53, scope: !4209)
!4217 = !DILocation(line: 87, column: 74, scope: !4209)
!4218 = !DILocation(line: 88, column: 11, scope: !4209)
!4219 = !DILocation(line: 90, column: 2, scope: !4209)
!4220 = !DILocation(line: 90, column: 7, scope: !4209)
!4221 = !DILocation(line: 91, column: 2, scope: !4209)
!4222 = !DILocation(line: 91, column: 22, scope: !4209)
!4223 = !DILocation(line: 91, column: 43, scope: !4209)
!4224 = !DILocation(line: 91, column: 29, scope: !4209)
!4225 = !DILocation(line: 93, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 93, column: 6)
!4227 = !DILocation(line: 93, column: 6, scope: !4209)
!4228 = !DILocation(line: 94, column: 3, scope: !4226)
!4229 = !DILocation(line: 96, column: 30, scope: !4209)
!4230 = !DILocation(line: 96, column: 12, scope: !4209)
!4231 = !DILocation(line: 96, column: 10, scope: !4209)
!4232 = !DILocation(line: 97, column: 18, scope: !4209)
!4233 = !DILocation(line: 97, column: 2, scope: !4209)
!4234 = !DILocation(line: 99, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 99, column: 6)
!4236 = !{i8 0, i8 2}
!4237 = !DILocation(line: 99, column: 6, scope: !4209)
!4238 = !DILocation(line: 100, column: 3, scope: !4235)
!4239 = !DILocation(line: 102, column: 28, scope: !4209)
!4240 = !DILocation(line: 102, column: 35, scope: !4209)
!4241 = !DILocation(line: 102, column: 42, scope: !4209)
!4242 = !DILocation(line: 102, column: 9, scope: !4209)
!4243 = !DILocation(line: 102, column: 2, scope: !4209)
!4244 = !DILocation(line: 103, column: 1, scope: !4209)
!4245 = distinct !DISubprogram(name: "proc_readfdinfo", scope: !3, file: !3, line: 409, type: !2292, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4246)
!4246 = !{!4247, !4248}
!4247 = !DILocalVariable(name: "file", arg: 1, scope: !4245, file: !3, line: 409, type: !591)
!4248 = !DILocalVariable(name: "ctx", arg: 2, scope: !4245, file: !3, line: 409, type: !2294)
!4249 = !DILocation(line: 409, column: 41, scope: !4245)
!4250 = !DILocation(line: 409, column: 67, scope: !4245)
!4251 = !DILocation(line: 411, column: 28, scope: !4245)
!4252 = !DILocation(line: 411, column: 34, scope: !4245)
!4253 = !DILocation(line: 411, column: 9, scope: !4245)
!4254 = !DILocation(line: 411, column: 2, scope: !4245)
!4255 = distinct !DISubprogram(name: "proc_readfd_common", scope: !3, file: !3, line: 249, type: !4256, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!98, !591, !2294, !4258}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "instantiate_t", file: !186, line: 178, baseType: !4260)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!895, !895, !250, !4122}
!4262 = !{!4263, !4264, !4265, !4266, !4267, !4268, !4272, !4277, !4281, !4282}
!4263 = !DILocalVariable(name: "file", arg: 1, scope: !4255, file: !3, line: 249, type: !591)
!4264 = !DILocalVariable(name: "ctx", arg: 2, scope: !4255, file: !3, line: 249, type: !2294)
!4265 = !DILocalVariable(name: "instantiate", arg: 3, scope: !4255, file: !3, line: 250, type: !4258)
!4266 = !DILocalVariable(name: "p", scope: !4255, file: !3, line: 252, type: !250)
!4267 = !DILocalVariable(name: "fd", scope: !4255, file: !3, line: 253, type: !7)
!4268 = !DILocalVariable(name: "f", scope: !4269, file: !3, line: 263, type: !591)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 262, column: 33)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 262, column: 2)
!4271 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 262, column: 2)
!4272 = !DILocalVariable(name: "data", scope: !4269, file: !3, line: 264, type: !4273)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd_data", file: !3, line: 198, size: 64, elements: !4274)
!4274 = !{!4275, !4276}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4273, file: !3, line: 199, baseType: !602, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4273, file: !3, line: 200, baseType: !7, size: 32, offset: 32)
!4277 = !DILocalVariable(name: "name", scope: !4269, file: !3, line: 265, type: !4278)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 88, elements: !4279)
!4279 = !{!4280}
!4280 = !DISubrange(count: 11)
!4281 = !DILocalVariable(name: "len", scope: !4269, file: !3, line: 266, type: !7)
!4282 = !DILabel(scope: !4255, name: "out", file: !3, line: 285)
!4283 = !DILocation(line: 249, column: 44, scope: !4255)
!4284 = !DILocation(line: 249, column: 70, scope: !4255)
!4285 = !DILocation(line: 250, column: 24, scope: !4255)
!4286 = !DILocation(line: 252, column: 2, scope: !4255)
!4287 = !DILocation(line: 252, column: 22, scope: !4255)
!4288 = !DILocation(line: 252, column: 51, scope: !4255)
!4289 = !DILocation(line: 252, column: 40, scope: !4255)
!4290 = !DILocation(line: 252, column: 26, scope: !4255)
!4291 = !DILocation(line: 253, column: 2, scope: !4255)
!4292 = !DILocation(line: 253, column: 15, scope: !4255)
!4293 = !DILocation(line: 255, column: 7, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 255, column: 6)
!4295 = !DILocation(line: 255, column: 6, scope: !4255)
!4296 = !DILocation(line: 256, column: 3, scope: !4294)
!4297 = !DILocation(line: 258, column: 21, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 258, column: 6)
!4299 = !DILocation(line: 258, column: 27, scope: !4298)
!4300 = !DILocation(line: 258, column: 7, scope: !4298)
!4301 = !DILocation(line: 258, column: 6, scope: !4255)
!4302 = !DILocation(line: 259, column: 3, scope: !4298)
!4303 = !DILocation(line: 261, column: 2, scope: !4255)
!4304 = !DILocation(line: 262, column: 12, scope: !4271)
!4305 = !DILocation(line: 262, column: 17, scope: !4271)
!4306 = !DILocation(line: 262, column: 21, scope: !4271)
!4307 = !DILocation(line: 262, column: 10, scope: !4271)
!4308 = !DILocation(line: 262, column: 7, scope: !4271)
!4309 = !DILocation(line: 263, column: 3, scope: !4269)
!4310 = !DILocation(line: 263, column: 16, scope: !4269)
!4311 = !DILocation(line: 264, column: 3, scope: !4269)
!4312 = !DILocation(line: 264, column: 18, scope: !4269)
!4313 = !DILocation(line: 265, column: 3, scope: !4269)
!4314 = !DILocation(line: 265, column: 8, scope: !4269)
!4315 = !DILocation(line: 266, column: 3, scope: !4269)
!4316 = !DILocation(line: 266, column: 16, scope: !4269)
!4317 = !DILocation(line: 268, column: 31, scope: !4269)
!4318 = !DILocation(line: 268, column: 7, scope: !4269)
!4319 = !DILocation(line: 268, column: 5, scope: !4269)
!4320 = !DILocation(line: 269, column: 14, scope: !4269)
!4321 = !DILocation(line: 269, column: 17, scope: !4269)
!4322 = !DILocation(line: 269, column: 3, scope: !4269)
!4323 = !DILocation(line: 269, column: 8, scope: !4269)
!4324 = !DILocation(line: 269, column: 12, scope: !4269)
!4325 = !DILocation(line: 270, column: 8, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 270, column: 7)
!4327 = !DILocation(line: 270, column: 7, scope: !4269)
!4328 = !DILocation(line: 271, column: 4, scope: !4326)
!4329 = !DILocation(line: 272, column: 15, scope: !4269)
!4330 = !DILocation(line: 272, column: 18, scope: !4269)
!4331 = !DILocation(line: 272, column: 8, scope: !4269)
!4332 = !DILocation(line: 272, column: 13, scope: !4269)
!4333 = !DILocation(line: 273, column: 3, scope: !4269)
!4334 = !DILocation(line: 274, column: 13, scope: !4269)
!4335 = !DILocation(line: 274, column: 8, scope: !4269)
!4336 = !DILocation(line: 274, column: 11, scope: !4269)
!4337 = !DILocation(line: 276, column: 18, scope: !4269)
!4338 = !DILocation(line: 276, column: 44, scope: !4269)
!4339 = !DILocation(line: 276, column: 9, scope: !4269)
!4340 = !DILocation(line: 276, column: 7, scope: !4269)
!4341 = !DILocation(line: 277, column: 24, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 277, column: 7)
!4343 = !DILocation(line: 277, column: 30, scope: !4342)
!4344 = !DILocation(line: 278, column: 10, scope: !4342)
!4345 = !DILocation(line: 278, column: 16, scope: !4342)
!4346 = !DILocation(line: 278, column: 21, scope: !4342)
!4347 = !DILocation(line: 278, column: 34, scope: !4342)
!4348 = !DILocation(line: 277, column: 8, scope: !4342)
!4349 = !DILocation(line: 277, column: 7, scope: !4269)
!4350 = !DILocation(line: 280, column: 4, scope: !4342)
!4351 = !DILocation(line: 281, column: 3, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 281, column: 3)
!4353 = !DILocation(line: 282, column: 3, scope: !4269)
!4354 = !DILocation(line: 283, column: 2, scope: !4270)
!4355 = !DILocation(line: 283, column: 2, scope: !4269)
!4356 = !DILocation(line: 262, column: 29, scope: !4270)
!4357 = !DILocation(line: 262, column: 2, scope: !4270)
!4358 = distinct !{!4358, !4359, !4360, !4361}
!4359 = !DILocation(line: 262, column: 2, scope: !4271)
!4360 = !DILocation(line: 283, column: 2, scope: !4271)
!4361 = !{!"llvm.loop.unroll.disable"}
!4362 = !DILocation(line: 284, column: 2, scope: !4255)
!4363 = !DILocation(line: 285, column: 1, scope: !4255)
!4364 = !DILocation(line: 286, column: 18, scope: !4255)
!4365 = !DILocation(line: 286, column: 2, scope: !4255)
!4366 = !DILocation(line: 287, column: 2, scope: !4255)
!4367 = !DILocation(line: 288, column: 1, scope: !4255)
!4368 = distinct !DISubprogram(name: "proc_fd_instantiate", scope: !3, file: !3, line: 203, type: !4260, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4376, !4377}
!4370 = !DILocalVariable(name: "dentry", arg: 1, scope: !4368, file: !3, line: 203, type: !895)
!4371 = !DILocalVariable(name: "task", arg: 2, scope: !4368, file: !3, line: 204, type: !250)
!4372 = !DILocalVariable(name: "ptr", arg: 3, scope: !4368, file: !3, line: 204, type: !4122)
!4373 = !DILocalVariable(name: "data", scope: !4368, file: !3, line: 206, type: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4273)
!4376 = !DILocalVariable(name: "ei", scope: !4368, file: !3, line: 207, type: !184)
!4377 = !DILocalVariable(name: "inode", scope: !4368, file: !3, line: 208, type: !930)
!4378 = !DILocation(line: 203, column: 58, scope: !4368)
!4379 = !DILocation(line: 204, column: 22, scope: !4368)
!4380 = !DILocation(line: 204, column: 40, scope: !4368)
!4381 = !DILocation(line: 206, column: 2, scope: !4368)
!4382 = !DILocation(line: 206, column: 24, scope: !4368)
!4383 = !DILocation(line: 206, column: 31, scope: !4368)
!4384 = !DILocation(line: 207, column: 2, scope: !4368)
!4385 = !DILocation(line: 207, column: 21, scope: !4368)
!4386 = !DILocation(line: 208, column: 2, scope: !4368)
!4387 = !DILocation(line: 208, column: 16, scope: !4368)
!4388 = !DILocation(line: 210, column: 30, scope: !4368)
!4389 = !DILocation(line: 210, column: 38, scope: !4368)
!4390 = !DILocation(line: 210, column: 44, scope: !4368)
!4391 = !DILocation(line: 210, column: 10, scope: !4368)
!4392 = !DILocation(line: 210, column: 8, scope: !4368)
!4393 = !DILocation(line: 211, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 211, column: 6)
!4395 = !DILocation(line: 211, column: 6, scope: !4368)
!4396 = !DILocation(line: 212, column: 10, scope: !4394)
!4397 = !DILocation(line: 212, column: 3, scope: !4394)
!4398 = !DILocation(line: 214, column: 14, scope: !4368)
!4399 = !DILocation(line: 214, column: 7, scope: !4368)
!4400 = !DILocation(line: 214, column: 5, scope: !4368)
!4401 = !DILocation(line: 215, column: 11, scope: !4368)
!4402 = !DILocation(line: 215, column: 17, scope: !4368)
!4403 = !DILocation(line: 215, column: 2, scope: !4368)
!4404 = !DILocation(line: 215, column: 6, scope: !4368)
!4405 = !DILocation(line: 215, column: 9, scope: !4368)
!4406 = !DILocation(line: 217, column: 2, scope: !4368)
!4407 = !DILocation(line: 217, column: 9, scope: !4368)
!4408 = !DILocation(line: 217, column: 14, scope: !4368)
!4409 = !DILocation(line: 218, column: 2, scope: !4368)
!4410 = !DILocation(line: 218, column: 9, scope: !4368)
!4411 = !DILocation(line: 218, column: 16, scope: !4368)
!4412 = !DILocation(line: 220, column: 2, scope: !4368)
!4413 = !DILocation(line: 220, column: 6, scope: !4368)
!4414 = !DILocation(line: 220, column: 23, scope: !4368)
!4415 = !DILocation(line: 221, column: 22, scope: !4368)
!4416 = !DILocation(line: 221, column: 28, scope: !4368)
!4417 = !DILocation(line: 221, column: 35, scope: !4368)
!4418 = !DILocation(line: 221, column: 41, scope: !4368)
!4419 = !DILocation(line: 221, column: 2, scope: !4368)
!4420 = !DILocation(line: 223, column: 13, scope: !4368)
!4421 = !DILocation(line: 223, column: 2, scope: !4368)
!4422 = !DILocation(line: 224, column: 24, scope: !4368)
!4423 = !DILocation(line: 224, column: 31, scope: !4368)
!4424 = !DILocation(line: 224, column: 9, scope: !4368)
!4425 = !DILocation(line: 224, column: 2, scope: !4368)
!4426 = !DILocation(line: 225, column: 1, scope: !4368)
!4427 = distinct !DISubprogram(name: "get_proc_task", scope: !186, file: !186, line: 128, type: !4428, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!250, !1662}
!4430 = !{!4431}
!4431 = !DILocalVariable(name: "inode", arg: 1, scope: !4427, file: !186, line: 128, type: !1662)
!4432 = !DILocation(line: 128, column: 69, scope: !4427)
!4433 = !DILocation(line: 130, column: 31, scope: !4427)
!4434 = !DILocation(line: 130, column: 22, scope: !4427)
!4435 = !DILocation(line: 130, column: 9, scope: !4427)
!4436 = !DILocation(line: 130, column: 2, scope: !4427)
!4437 = distinct !DISubprogram(name: "file_inode", scope: !28, file: !28, line: 1073, type: !4438, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4440)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!930, !1276}
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "f", arg: 1, scope: !4437, file: !28, line: 1073, type: !1276)
!4442 = !DILocation(line: 1073, column: 59, scope: !4437)
!4443 = !DILocation(line: 1075, column: 9, scope: !4437)
!4444 = !DILocation(line: 1075, column: 12, scope: !4437)
!4445 = !DILocation(line: 1075, column: 2, scope: !4437)
!4446 = distinct !DISubprogram(name: "dir_emit_dots", scope: !28, file: !28, line: 3433, type: !4447, scopeLine: 3434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!771, !591, !2294}
!4449 = !{!4450, !4451}
!4450 = !DILocalVariable(name: "file", arg: 1, scope: !4446, file: !28, line: 3433, type: !591)
!4451 = !DILocalVariable(name: "ctx", arg: 2, scope: !4446, file: !28, line: 3433, type: !2294)
!4452 = !DILocation(line: 3433, column: 47, scope: !4446)
!4453 = !DILocation(line: 3433, column: 73, scope: !4446)
!4454 = !DILocation(line: 3435, column: 6, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4446, file: !28, line: 3435, column: 6)
!4456 = !DILocation(line: 3435, column: 11, scope: !4455)
!4457 = !DILocation(line: 3435, column: 15, scope: !4455)
!4458 = !DILocation(line: 3435, column: 6, scope: !4446)
!4459 = !DILocation(line: 3436, column: 21, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !28, line: 3436, column: 7)
!4461 = distinct !DILexicalBlock(scope: !4455, file: !28, line: 3435, column: 21)
!4462 = !DILocation(line: 3436, column: 27, scope: !4460)
!4463 = !DILocation(line: 3436, column: 8, scope: !4460)
!4464 = !DILocation(line: 3436, column: 7, scope: !4461)
!4465 = !DILocation(line: 3437, column: 4, scope: !4460)
!4466 = !DILocation(line: 3438, column: 3, scope: !4461)
!4467 = !DILocation(line: 3438, column: 8, scope: !4461)
!4468 = !DILocation(line: 3438, column: 12, scope: !4461)
!4469 = !DILocation(line: 3439, column: 2, scope: !4461)
!4470 = !DILocation(line: 3440, column: 6, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4446, file: !28, line: 3440, column: 6)
!4472 = !DILocation(line: 3440, column: 11, scope: !4471)
!4473 = !DILocation(line: 3440, column: 15, scope: !4471)
!4474 = !DILocation(line: 3440, column: 6, scope: !4446)
!4475 = !DILocation(line: 3441, column: 24, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !28, line: 3441, column: 7)
!4477 = distinct !DILexicalBlock(scope: !4471, file: !28, line: 3440, column: 21)
!4478 = !DILocation(line: 3441, column: 30, scope: !4476)
!4479 = !DILocation(line: 3441, column: 8, scope: !4476)
!4480 = !DILocation(line: 3441, column: 7, scope: !4477)
!4481 = !DILocation(line: 3442, column: 4, scope: !4476)
!4482 = !DILocation(line: 3443, column: 3, scope: !4477)
!4483 = !DILocation(line: 3443, column: 8, scope: !4477)
!4484 = !DILocation(line: 3443, column: 12, scope: !4477)
!4485 = !DILocation(line: 3444, column: 2, scope: !4477)
!4486 = !DILocation(line: 3445, column: 2, scope: !4446)
!4487 = !DILocation(line: 3446, column: 1, scope: !4446)
!4488 = !DISubprogram(name: "task_lookup_next_fd_rcu", scope: !2907, file: !2907, line: 113, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!591, !250, !1573}
!4491 = !DISubprogram(name: "snprintf", scope: !4492, file: !4492, line: 12, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4492 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!98, !782, !111, !92, null}
!4495 = !DISubprogram(name: "proc_fill_cache", scope: !186, file: !186, line: 180, type: !4496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!771, !591, !2294, !92, !7, !4258, !250, !4122}
!4498 = distinct !DISubprogram(name: "__might_resched", scope: !4499, file: !4499, line: 184, type: !4500, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4502)
!4499 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{null, !92, !98, !7}
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "file", arg: 1, scope: !4498, file: !4499, line: 184, type: !92)
!4504 = !DILocalVariable(name: "line", arg: 2, scope: !4498, file: !4499, line: 184, type: !98)
!4505 = !DILocalVariable(name: "offsets", arg: 3, scope: !4498, file: !4499, line: 185, type: !7)
!4506 = !DILocation(line: 184, column: 50, scope: !4498)
!4507 = !DILocation(line: 184, column: 60, scope: !4498)
!4508 = !DILocation(line: 185, column: 23, scope: !4498)
!4509 = !DILocation(line: 185, column: 34, scope: !4498)
!4510 = !DILocation(line: 2104, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !3991, file: !252, line: 2104, column: 9)
!4512 = !DILocation(line: 2104, column: 9, scope: !3991)
!4513 = !DILocation(line: 2104, column: 2, scope: !3991)
!4514 = !DILocation(line: 124, column: 56, scope: !3996)
!4515 = !DILocation(line: 126, column: 30, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !3996, file: !3997, line: 126, column: 6)
!4517 = !DILocation(line: 126, column: 33, scope: !4516)
!4518 = !DILocation(line: 126, column: 7, scope: !4516)
!4519 = !DILocation(line: 126, column: 6, scope: !3996)
!4520 = !DILocation(line: 127, column: 3, scope: !4516)
!4521 = !DILocation(line: 136, column: 3, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !3997, line: 133, column: 55)
!4523 = distinct !DILexicalBlock(scope: !3996, file: !3997, line: 133, column: 6)
!4524 = !DILocation(line: 136, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !3997, line: 136, column: 3)
!4526 = !DILocation(line: 137, column: 21, scope: !4522)
!4527 = !DILocation(line: 137, column: 3, scope: !4522)
!4528 = !DILocation(line: 138, column: 3, scope: !4522)
!4529 = !DILocation(line: 138, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4522, file: !3997, line: 138, column: 3)
!4531 = !DILocation(line: 139, column: 3, scope: !4522)
!4532 = !DILocation(line: 163, column: 1, scope: !3996)
!4533 = !DISubprogram(name: "get_pid_task", scope: !67, file: !67, line: 98, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4534 = distinct !DISubprogram(name: "dir_emit_dot", scope: !28, file: !28, line: 3423, type: !4447, scopeLine: 3424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4535)
!4535 = !{!4536, !4537}
!4536 = !DILocalVariable(name: "file", arg: 1, scope: !4534, file: !28, line: 3423, type: !591)
!4537 = !DILocalVariable(name: "ctx", arg: 2, scope: !4534, file: !28, line: 3423, type: !2294)
!4538 = !DILocation(line: 3423, column: 46, scope: !4534)
!4539 = !DILocation(line: 3423, column: 72, scope: !4534)
!4540 = !DILocation(line: 3425, column: 9, scope: !4534)
!4541 = !DILocation(line: 3425, column: 14, scope: !4534)
!4542 = !DILocation(line: 3425, column: 20, scope: !4534)
!4543 = !DILocation(line: 3425, column: 33, scope: !4534)
!4544 = !DILocation(line: 3425, column: 38, scope: !4534)
!4545 = !DILocation(line: 3426, column: 6, scope: !4534)
!4546 = !DILocation(line: 3426, column: 12, scope: !4534)
!4547 = !DILocation(line: 3426, column: 19, scope: !4534)
!4548 = !DILocation(line: 3426, column: 27, scope: !4534)
!4549 = !DILocation(line: 3426, column: 36, scope: !4534)
!4550 = !DILocation(line: 3425, column: 2, scope: !4534)
!4551 = distinct !DISubprogram(name: "dir_emit_dotdot", scope: !28, file: !28, line: 3428, type: !4447, scopeLine: 3429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4552)
!4552 = !{!4553, !4554}
!4553 = !DILocalVariable(name: "file", arg: 1, scope: !4551, file: !28, line: 3428, type: !591)
!4554 = !DILocalVariable(name: "ctx", arg: 2, scope: !4551, file: !28, line: 3428, type: !2294)
!4555 = !DILocation(line: 3428, column: 49, scope: !4551)
!4556 = !DILocation(line: 3428, column: 75, scope: !4551)
!4557 = !DILocation(line: 3430, column: 9, scope: !4551)
!4558 = !DILocation(line: 3430, column: 14, scope: !4551)
!4559 = !DILocation(line: 3430, column: 20, scope: !4551)
!4560 = !DILocation(line: 3430, column: 34, scope: !4551)
!4561 = !DILocation(line: 3430, column: 39, scope: !4551)
!4562 = !DILocation(line: 3431, column: 17, scope: !4551)
!4563 = !DILocation(line: 3431, column: 23, scope: !4551)
!4564 = !DILocation(line: 3431, column: 30, scope: !4551)
!4565 = !DILocation(line: 3431, column: 6, scope: !4551)
!4566 = !DILocation(line: 3430, column: 2, scope: !4551)
!4567 = distinct !DISubprogram(name: "parent_ino", scope: !28, file: !28, line: 3293, type: !4568, scopeLine: 3294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4571)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!4570, !895}
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !101, line: 22, baseType: !114)
!4571 = !{!4572, !4573}
!4572 = !DILocalVariable(name: "dentry", arg: 1, scope: !4567, file: !28, line: 3293, type: !895)
!4573 = !DILocalVariable(name: "res", scope: !4567, file: !28, line: 3295, type: !4570)
!4574 = !DILocation(line: 3293, column: 47, scope: !4567)
!4575 = !DILocation(line: 3295, column: 2, scope: !4567)
!4576 = !DILocation(line: 3295, column: 8, scope: !4567)
!4577 = !DILocation(line: 3301, column: 13, scope: !4567)
!4578 = !DILocation(line: 3301, column: 21, scope: !4567)
!4579 = !DILocation(line: 3301, column: 2, scope: !4567)
!4580 = !DILocation(line: 3302, column: 8, scope: !4567)
!4581 = !DILocation(line: 3302, column: 16, scope: !4567)
!4582 = !DILocation(line: 3302, column: 26, scope: !4567)
!4583 = !DILocation(line: 3302, column: 35, scope: !4567)
!4584 = !DILocation(line: 3302, column: 6, scope: !4567)
!4585 = !DILocation(line: 3303, column: 15, scope: !4567)
!4586 = !DILocation(line: 3303, column: 23, scope: !4567)
!4587 = !DILocation(line: 3303, column: 2, scope: !4567)
!4588 = !DILocation(line: 3304, column: 9, scope: !4567)
!4589 = !DILocation(line: 3305, column: 1, scope: !4567)
!4590 = !DILocation(line: 3304, column: 2, scope: !4567)
!4591 = distinct !DISubprogram(name: "spin_lock", scope: !4592, file: !4592, line: 349, type: !4593, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4595)
!4592 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !2010}
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "lock", arg: 1, scope: !4591, file: !4592, line: 349, type: !2010)
!4597 = !DILocation(line: 349, column: 51, scope: !4591)
!4598 = !DILocation(line: 351, column: 2, scope: !4591)
!4599 = !DILocation(line: 352, column: 1, scope: !4591)
!4600 = distinct !DISubprogram(name: "spin_unlock", scope: !4592, file: !4592, line: 389, type: !4593, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4601)
!4601 = !{!4602}
!4602 = !DILocalVariable(name: "lock", arg: 1, scope: !4600, file: !4592, line: 389, type: !2010)
!4603 = !DILocation(line: 389, column: 53, scope: !4600)
!4604 = !DILocation(line: 391, column: 2, scope: !4600)
!4605 = !DILocation(line: 392, column: 1, scope: !4600)
!4606 = !DISubprogram(name: "_raw_spin_lock", scope: !4607, file: !4607, line: 22, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !4610}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!4611 = !DISubprogram(name: "_raw_spin_unlock", scope: !4607, file: !4607, line: 39, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4612 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !80, file: !80, line: 331, type: !4613, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4616)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!771, !4615}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!4616 = !{!4617}
!4617 = !DILocalVariable(name: "r", arg: 1, scope: !4612, file: !80, line: 331, type: !4615)
!4618 = !DILocation(line: 331, column: 67, scope: !4612)
!4619 = !DILocation(line: 333, column: 33, scope: !4612)
!4620 = !DILocation(line: 333, column: 9, scope: !4612)
!4621 = !DILocation(line: 333, column: 2, scope: !4612)
!4622 = !DISubprogram(name: "__put_task_struct", scope: !3997, file: !3997, line: 121, type: !3998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4623 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !80, file: !80, line: 313, type: !4624, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4626)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!771, !4615, !1235}
!4626 = !{!4627, !4628}
!4627 = !DILocalVariable(name: "r", arg: 1, scope: !4623, file: !80, line: 313, type: !4615)
!4628 = !DILocalVariable(name: "oldp", arg: 2, scope: !4623, file: !80, line: 313, type: !1235)
!4629 = !DILocation(line: 313, column: 69, scope: !4623)
!4630 = !DILocation(line: 313, column: 77, scope: !4623)
!4631 = !DILocation(line: 315, column: 36, scope: !4623)
!4632 = !DILocation(line: 315, column: 39, scope: !4623)
!4633 = !DILocation(line: 315, column: 9, scope: !4623)
!4634 = !DILocation(line: 315, column: 2, scope: !4623)
!4635 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !80, file: !80, line: 270, type: !4636, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4638)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!771, !98, !4615, !1235}
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DILocalVariable(name: "i", arg: 1, scope: !4635, file: !80, line: 270, type: !98)
!4640 = !DILocalVariable(name: "r", arg: 2, scope: !4635, file: !80, line: 270, type: !4615)
!4641 = !DILocalVariable(name: "oldp", arg: 3, scope: !4635, file: !80, line: 270, type: !1235)
!4642 = !DILocalVariable(name: "old", scope: !4635, file: !80, line: 272, type: !98)
!4643 = !DILocation(line: 270, column: 61, scope: !4635)
!4644 = !DILocation(line: 270, column: 76, scope: !4635)
!4645 = !DILocation(line: 270, column: 84, scope: !4635)
!4646 = !DILocation(line: 272, column: 2, scope: !4635)
!4647 = !DILocation(line: 272, column: 6, scope: !4635)
!4648 = !DILocation(line: 272, column: 37, scope: !4635)
!4649 = !DILocation(line: 272, column: 41, scope: !4635)
!4650 = !DILocation(line: 272, column: 44, scope: !4635)
!4651 = !DILocation(line: 272, column: 12, scope: !4635)
!4652 = !DILocation(line: 274, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4635, file: !80, line: 274, column: 6)
!4654 = !DILocation(line: 274, column: 6, scope: !4635)
!4655 = !DILocation(line: 275, column: 11, scope: !4653)
!4656 = !DILocation(line: 275, column: 4, scope: !4653)
!4657 = !DILocation(line: 275, column: 9, scope: !4653)
!4658 = !DILocation(line: 275, column: 3, scope: !4653)
!4659 = !DILocation(line: 277, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4635, file: !80, line: 277, column: 6)
!4661 = !DILocation(line: 277, column: 13, scope: !4660)
!4662 = !DILocation(line: 277, column: 10, scope: !4660)
!4663 = !DILocation(line: 277, column: 6, scope: !4635)
!4664 = !DILocation(line: 278, column: 3, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4660, file: !80, line: 277, column: 16)
!4666 = !DILocation(line: 278, column: 3, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4665, file: !80, line: 278, column: 3)
!4668 = !DILocation(line: 278, column: 3, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4667, file: !80, line: 278, column: 3)
!4670 = !DILocation(line: 278, column: 3, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4667, file: !80, line: 278, column: 3)
!4672 = !DILocation(line: 278, column: 3, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4671, file: !80, line: 278, column: 3)
!4674 = !{i64 2150260243}
!4675 = !DILocation(line: 279, column: 3, scope: !4665)
!4676 = !DILocation(line: 282, column: 6, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4635, file: !80, line: 282, column: 6)
!4678 = !DILocation(line: 282, column: 6, scope: !4635)
!4679 = !DILocation(line: 283, column: 26, scope: !4677)
!4680 = !DILocation(line: 283, column: 3, scope: !4677)
!4681 = !DILocation(line: 285, column: 2, scope: !4635)
!4682 = !DILocation(line: 286, column: 1, scope: !4635)
!4683 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4684, file: !4684, line: 397, type: !4685, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4688)
!4684 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!98, !98, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!4688 = !{!4689, !4690}
!4689 = !DILocalVariable(name: "i", arg: 1, scope: !4683, file: !4684, line: 397, type: !98)
!4690 = !DILocalVariable(name: "v", arg: 2, scope: !4683, file: !4684, line: 397, type: !4687)
!4691 = !DILocation(line: 397, column: 30, scope: !4683)
!4692 = !DILocation(line: 397, column: 43, scope: !4683)
!4693 = !DILocation(line: 399, column: 2, scope: !4683)
!4694 = !DILocation(line: 399, column: 2, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4683, file: !4684, line: 399, column: 2)
!4696 = !DILocation(line: 400, column: 31, scope: !4683)
!4697 = !DILocation(line: 400, column: 2, scope: !4683)
!4698 = !DILocation(line: 401, column: 38, scope: !4683)
!4699 = !DILocation(line: 401, column: 41, scope: !4683)
!4700 = !DILocation(line: 401, column: 9, scope: !4683)
!4701 = !DILocation(line: 401, column: 2, scope: !4683)
!4702 = !DISubprogram(name: "refcount_warn_saturate", scope: !80, file: !80, line: 127, type: !4703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{null, !4615, !79}
!4705 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4706, file: !4706, line: 94, type: !4707, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4706 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4709, !111}
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4711)
!4711 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4712 = !{!4713, !4714}
!4713 = !DILocalVariable(name: "v", arg: 1, scope: !4705, file: !4706, line: 94, type: !4709)
!4714 = !DILocalVariable(name: "size", arg: 2, scope: !4705, file: !4706, line: 94, type: !111)
!4715 = !DILocation(line: 94, column: 79, scope: !4705)
!4716 = !DILocation(line: 94, column: 89, scope: !4705)
!4717 = !DILocation(line: 96, column: 20, scope: !4705)
!4718 = !DILocation(line: 96, column: 23, scope: !4705)
!4719 = !DILocation(line: 96, column: 2, scope: !4705)
!4720 = !DILocation(line: 97, column: 2, scope: !4705)
!4721 = !DILocation(line: 98, column: 1, scope: !4705)
!4722 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4723, file: !4723, line: 928, type: !4685, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4724)
!4723 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4724 = !{!4725, !4726}
!4725 = !DILocalVariable(name: "i", arg: 1, scope: !4722, file: !4723, line: 928, type: !98)
!4726 = !DILocalVariable(name: "v", arg: 2, scope: !4722, file: !4723, line: 928, type: !4687)
!4727 = !DILocation(line: 928, column: 34, scope: !4722)
!4728 = !DILocation(line: 928, column: 47, scope: !4722)
!4729 = !DILocation(line: 936, column: 31, scope: !4722)
!4730 = !DILocation(line: 936, column: 34, scope: !4722)
!4731 = !DILocation(line: 936, column: 9, scope: !4722)
!4732 = !DILocation(line: 936, column: 2, scope: !4722)
!4733 = distinct !DISubprogram(name: "kasan_check_write", scope: !4734, file: !4734, line: 44, type: !4735, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4737)
!4734 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!771, !4709, !7}
!4737 = !{!4738, !4739}
!4738 = !DILocalVariable(name: "p", arg: 1, scope: !4733, file: !4734, line: 44, type: !4709)
!4739 = !DILocalVariable(name: "size", arg: 2, scope: !4733, file: !4734, line: 44, type: !7)
!4740 = !DILocation(line: 44, column: 59, scope: !4733)
!4741 = !DILocation(line: 44, column: 75, scope: !4733)
!4742 = !DILocation(line: 46, column: 2, scope: !4733)
!4743 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4744, file: !4744, line: 229, type: !4745, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4747)
!4744 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4745 = !DISubroutineType(types: !4746)
!4746 = !{null, !4709, !111, !98}
!4747 = !{!4748, !4749, !4750}
!4748 = !DILocalVariable(name: "ptr", arg: 1, scope: !4743, file: !4744, line: 229, type: !4709)
!4749 = !DILocalVariable(name: "size", arg: 2, scope: !4743, file: !4744, line: 229, type: !111)
!4750 = !DILocalVariable(name: "type", arg: 3, scope: !4743, file: !4744, line: 230, type: !98)
!4751 = !DILocation(line: 229, column: 60, scope: !4743)
!4752 = !DILocation(line: 229, column: 72, scope: !4743)
!4753 = !DILocation(line: 230, column: 15, scope: !4743)
!4754 = !DILocation(line: 230, column: 23, scope: !4743)
!4755 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4756, file: !4756, line: 101, type: !4685, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4756 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4757 = !{!4758, !4759, !4760}
!4758 = !DILocalVariable(name: "i", arg: 1, scope: !4755, file: !4756, line: 101, type: !98)
!4759 = !DILocalVariable(name: "v", arg: 2, scope: !4755, file: !4756, line: 101, type: !4687)
!4760 = !DILocalVariable(name: "__ret", scope: !4761, file: !4756, line: 103, type: !98)
!4761 = distinct !DILexicalBlock(scope: !4755, file: !4756, line: 103, column: 9)
!4762 = !DILocation(line: 101, column: 54, scope: !4755)
!4763 = !DILocation(line: 101, column: 67, scope: !4755)
!4764 = !DILocation(line: 103, column: 9, scope: !4761)
!4765 = !{i64 2147986100, i64 2147986139, i64 2147986160, i64 2147986197, i64 2147986220, i64 2147986229}
!4766 = !DILocation(line: 103, column: 9, scope: !4755)
!4767 = !DILocation(line: 103, column: 2, scope: !4755)
!4768 = !DISubprogram(name: "proc_pid_make_inode", scope: !186, file: !186, line: 170, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!930, !1132, !250, !100}
!4771 = distinct !DISubprogram(name: "ERR_PTR", scope: !4772, file: !4772, line: 39, type: !4773, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4775)
!4772 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!96, !1044}
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "error", arg: 1, scope: !4771, file: !4772, line: 39, type: !1044)
!4777 = !DILocation(line: 39, column: 48, scope: !4771)
!4778 = !DILocation(line: 41, column: 18, scope: !4771)
!4779 = !DILocation(line: 41, column: 9, scope: !4771)
!4780 = !DILocation(line: 41, column: 2, scope: !4771)
!4781 = distinct !DISubprogram(name: "PROC_I", scope: !186, file: !186, line: 113, type: !4782, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!184, !1662}
!4784 = !{!4785, !4786}
!4785 = !DILocalVariable(name: "inode", arg: 1, scope: !4781, file: !186, line: 113, type: !1662)
!4786 = !DILocalVariable(name: "__mptr", scope: !4787, file: !186, line: 115, type: !96)
!4787 = distinct !DILexicalBlock(scope: !4781, file: !186, line: 115, column: 9)
!4788 = !DILocation(line: 113, column: 61, scope: !4781)
!4789 = !DILocation(line: 115, column: 9, scope: !4787)
!4790 = !DILocation(line: 115, column: 9, scope: !4781)
!4791 = !DILocation(line: 115, column: 2, scope: !4781)
!4792 = distinct !DISubprogram(name: "proc_fd_link", scope: !3, file: !3, line: 175, type: !3831, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4793 = !{!4794, !4795, !4796, !4797, !4798, !4801}
!4794 = !DILocalVariable(name: "dentry", arg: 1, scope: !4792, file: !3, line: 175, type: !895)
!4795 = !DILocalVariable(name: "path", arg: 2, scope: !4792, file: !3, line: 175, type: !1653)
!4796 = !DILocalVariable(name: "task", scope: !4792, file: !3, line: 177, type: !250)
!4797 = !DILocalVariable(name: "ret", scope: !4792, file: !3, line: 178, type: !98)
!4798 = !DILocalVariable(name: "fd", scope: !4799, file: !3, line: 182, type: !7)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 181, column: 12)
!4800 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 181, column: 6)
!4801 = !DILocalVariable(name: "fd_file", scope: !4799, file: !3, line: 183, type: !591)
!4802 = !DILocation(line: 175, column: 40, scope: !4792)
!4803 = !DILocation(line: 175, column: 61, scope: !4792)
!4804 = !DILocation(line: 177, column: 2, scope: !4792)
!4805 = !DILocation(line: 177, column: 22, scope: !4792)
!4806 = !DILocation(line: 178, column: 2, scope: !4792)
!4807 = !DILocation(line: 178, column: 6, scope: !4792)
!4808 = !DILocation(line: 180, column: 31, scope: !4792)
!4809 = !DILocation(line: 180, column: 23, scope: !4792)
!4810 = !DILocation(line: 180, column: 9, scope: !4792)
!4811 = !DILocation(line: 180, column: 7, scope: !4792)
!4812 = !DILocation(line: 181, column: 6, scope: !4800)
!4813 = !DILocation(line: 181, column: 6, scope: !4792)
!4814 = !DILocation(line: 182, column: 3, scope: !4799)
!4815 = !DILocation(line: 182, column: 16, scope: !4799)
!4816 = !DILocation(line: 182, column: 37, scope: !4799)
!4817 = !DILocation(line: 182, column: 29, scope: !4799)
!4818 = !DILocation(line: 182, column: 21, scope: !4799)
!4819 = !DILocation(line: 183, column: 3, scope: !4799)
!4820 = !DILocation(line: 183, column: 16, scope: !4799)
!4821 = !DILocation(line: 185, column: 23, scope: !4799)
!4822 = !DILocation(line: 185, column: 29, scope: !4799)
!4823 = !DILocation(line: 185, column: 13, scope: !4799)
!4824 = !DILocation(line: 185, column: 11, scope: !4799)
!4825 = !DILocation(line: 186, column: 7, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 186, column: 7)
!4827 = !DILocation(line: 186, column: 7, scope: !4799)
!4828 = !DILocation(line: 187, column: 5, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 186, column: 16)
!4830 = !DILocation(line: 187, column: 12, scope: !4829)
!4831 = !DILocation(line: 187, column: 21, scope: !4829)
!4832 = !DILocation(line: 188, column: 14, scope: !4829)
!4833 = !DILocation(line: 188, column: 23, scope: !4829)
!4834 = !DILocation(line: 188, column: 4, scope: !4829)
!4835 = !DILocation(line: 189, column: 8, scope: !4829)
!4836 = !DILocation(line: 190, column: 9, scope: !4829)
!4837 = !DILocation(line: 190, column: 4, scope: !4829)
!4838 = !DILocation(line: 191, column: 3, scope: !4829)
!4839 = !DILocation(line: 192, column: 19, scope: !4799)
!4840 = !DILocation(line: 192, column: 3, scope: !4799)
!4841 = !DILocation(line: 193, column: 2, scope: !4800)
!4842 = !DILocation(line: 193, column: 2, scope: !4799)
!4843 = !DILocation(line: 195, column: 9, scope: !4792)
!4844 = !DILocation(line: 196, column: 1, scope: !4792)
!4845 = !DILocation(line: 195, column: 2, scope: !4792)
!4846 = distinct !DISubprogram(name: "tid_fd_update_inode", scope: !3, file: !3, line: 129, type: !4847, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !250, !930, !602}
!4849 = !{!4850, !4851, !4852, !4853}
!4850 = !DILocalVariable(name: "task", arg: 1, scope: !4846, file: !3, line: 129, type: !250)
!4851 = !DILocalVariable(name: "inode", arg: 2, scope: !4846, file: !3, line: 129, type: !930)
!4852 = !DILocalVariable(name: "f_mode", arg: 3, scope: !4846, file: !3, line: 130, type: !602)
!4853 = !DILocalVariable(name: "i_mode", scope: !4854, file: !3, line: 135, type: !7)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 134, column: 30)
!4855 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 134, column: 6)
!4856 = !DILocation(line: 129, column: 53, scope: !4846)
!4857 = !DILocation(line: 129, column: 73, scope: !4846)
!4858 = !DILocation(line: 130, column: 13, scope: !4846)
!4859 = !DILocation(line: 132, column: 18, scope: !4846)
!4860 = !DILocation(line: 132, column: 28, scope: !4846)
!4861 = !DILocation(line: 132, column: 35, scope: !4846)
!4862 = !DILocation(line: 132, column: 43, scope: !4846)
!4863 = !DILocation(line: 132, column: 50, scope: !4846)
!4864 = !DILocation(line: 132, column: 2, scope: !4846)
!4865 = !DILocation(line: 134, column: 6, scope: !4855)
!4866 = !DILocation(line: 134, column: 6, scope: !4846)
!4867 = !DILocation(line: 135, column: 3, scope: !4854)
!4868 = !DILocation(line: 135, column: 12, scope: !4854)
!4869 = !DILocation(line: 136, column: 7, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 136, column: 7)
!4871 = !DILocation(line: 136, column: 14, scope: !4870)
!4872 = !DILocation(line: 136, column: 7, scope: !4854)
!4873 = !DILocation(line: 137, column: 11, scope: !4870)
!4874 = !DILocation(line: 137, column: 4, scope: !4870)
!4875 = !DILocation(line: 138, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 138, column: 7)
!4877 = !DILocation(line: 138, column: 14, scope: !4876)
!4878 = !DILocation(line: 138, column: 7, scope: !4854)
!4879 = !DILocation(line: 139, column: 11, scope: !4876)
!4880 = !DILocation(line: 139, column: 4, scope: !4876)
!4881 = !DILocation(line: 140, column: 19, scope: !4854)
!4882 = !DILocation(line: 140, column: 3, scope: !4854)
!4883 = !DILocation(line: 140, column: 10, scope: !4854)
!4884 = !DILocation(line: 140, column: 17, scope: !4854)
!4885 = !DILocation(line: 141, column: 2, scope: !4855)
!4886 = !DILocation(line: 141, column: 2, scope: !4854)
!4887 = !DILocation(line: 142, column: 25, scope: !4846)
!4888 = !DILocation(line: 142, column: 31, scope: !4846)
!4889 = !DILocation(line: 142, column: 2, scope: !4846)
!4890 = !DILocation(line: 143, column: 1, scope: !4846)
!4891 = !DISubprogram(name: "d_set_d_op", scope: !897, file: !897, line: 228, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !895, !1606}
!4894 = !DISubprogram(name: "d_splice_alias", scope: !897, file: !897, line: 235, type: !4895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!895, !930, !895}
!4897 = distinct !DISubprogram(name: "d_inode", scope: !897, file: !897, line: 514, type: !4898, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!930, !1619}
!4900 = !{!4901}
!4901 = !DILocalVariable(name: "dentry", arg: 1, scope: !4897, file: !897, line: 514, type: !1619)
!4902 = !DILocation(line: 514, column: 58, scope: !4897)
!4903 = !DILocation(line: 516, column: 9, scope: !4897)
!4904 = !DILocation(line: 516, column: 17, scope: !4897)
!4905 = !DILocation(line: 516, column: 2, scope: !4897)
!4906 = distinct !DISubprogram(name: "proc_fd", scope: !4907, file: !4907, line: 16, type: !4908, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4910)
!4907 = !DIFile(filename: "fs/proc/fd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b79e7a845a00f0a1a6f6727f475c5427")
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!7, !930}
!4910 = !{!4911}
!4911 = !DILocalVariable(name: "inode", arg: 1, scope: !4906, file: !4907, line: 16, type: !930)
!4912 = !DILocation(line: 16, column: 50, scope: !4906)
!4913 = !DILocation(line: 18, column: 16, scope: !4906)
!4914 = !DILocation(line: 18, column: 9, scope: !4906)
!4915 = !DILocation(line: 18, column: 24, scope: !4906)
!4916 = !DILocation(line: 18, column: 2, scope: !4906)
!4917 = !DISubprogram(name: "fget_task", scope: !4918, file: !4918, line: 51, type: !4919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4918 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!591, !250, !7}
!4921 = !DISubprogram(name: "path_get", scope: !887, file: !887, line: 13, type: !4922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !1052}
!4924 = !DISubprogram(name: "fput", scope: !4918, file: !4918, line: 17, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4925 = !DISubprogram(name: "task_dump_owner", scope: !186, file: !186, line: 133, type: !4926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{null, !250, !100, !3940, !3941}
!4928 = !DISubprogram(name: "security_task_to_inode", scope: !4929, file: !4929, line: 449, type: !4930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4929 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!4930 = !DISubroutineType(types: !4931)
!4931 = !{null, !250, !930}
!4932 = distinct !DISubprogram(name: "tid_fd_revalidate", scope: !3, file: !3, line: 145, type: !1612, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4939}
!4934 = !DILocalVariable(name: "dentry", arg: 1, scope: !4932, file: !3, line: 145, type: !895)
!4935 = !DILocalVariable(name: "flags", arg: 2, scope: !4932, file: !3, line: 145, type: !7)
!4936 = !DILocalVariable(name: "task", scope: !4932, file: !3, line: 147, type: !250)
!4937 = !DILocalVariable(name: "inode", scope: !4932, file: !3, line: 148, type: !930)
!4938 = !DILocalVariable(name: "fd", scope: !4932, file: !3, line: 149, type: !7)
!4939 = !DILocalVariable(name: "f_mode", scope: !4940, file: !3, line: 159, type: !602)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 158, column: 12)
!4941 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 158, column: 6)
!4942 = !DILocation(line: 145, column: 45, scope: !4932)
!4943 = !DILocation(line: 145, column: 66, scope: !4932)
!4944 = !DILocation(line: 147, column: 2, scope: !4932)
!4945 = !DILocation(line: 147, column: 22, scope: !4932)
!4946 = !DILocation(line: 148, column: 2, scope: !4932)
!4947 = !DILocation(line: 148, column: 16, scope: !4932)
!4948 = !DILocation(line: 149, column: 2, scope: !4932)
!4949 = !DILocation(line: 149, column: 15, scope: !4932)
!4950 = !DILocation(line: 151, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 151, column: 6)
!4952 = !DILocation(line: 151, column: 12, scope: !4951)
!4953 = !DILocation(line: 151, column: 6, scope: !4932)
!4954 = !DILocation(line: 152, column: 3, scope: !4951)
!4955 = !DILocation(line: 154, column: 18, scope: !4932)
!4956 = !DILocation(line: 154, column: 10, scope: !4932)
!4957 = !DILocation(line: 154, column: 8, scope: !4932)
!4958 = !DILocation(line: 155, column: 23, scope: !4932)
!4959 = !DILocation(line: 155, column: 9, scope: !4932)
!4960 = !DILocation(line: 155, column: 7, scope: !4932)
!4961 = !DILocation(line: 156, column: 15, scope: !4932)
!4962 = !DILocation(line: 156, column: 7, scope: !4932)
!4963 = !DILocation(line: 156, column: 5, scope: !4932)
!4964 = !DILocation(line: 158, column: 6, scope: !4941)
!4965 = !DILocation(line: 158, column: 6, scope: !4932)
!4966 = !DILocation(line: 159, column: 3, scope: !4940)
!4967 = !DILocation(line: 159, column: 11, scope: !4940)
!4968 = !DILocation(line: 160, column: 19, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 160, column: 7)
!4970 = !DILocation(line: 160, column: 25, scope: !4969)
!4971 = !DILocation(line: 160, column: 7, scope: !4969)
!4972 = !DILocation(line: 160, column: 7, scope: !4940)
!4973 = !DILocation(line: 161, column: 24, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 160, column: 39)
!4975 = !DILocation(line: 161, column: 30, scope: !4974)
!4976 = !DILocation(line: 161, column: 37, scope: !4974)
!4977 = !DILocation(line: 161, column: 4, scope: !4974)
!4978 = !DILocation(line: 162, column: 20, scope: !4974)
!4979 = !DILocation(line: 162, column: 4, scope: !4974)
!4980 = !DILocation(line: 163, column: 4, scope: !4974)
!4981 = !DILocation(line: 165, column: 19, scope: !4940)
!4982 = !DILocation(line: 165, column: 3, scope: !4940)
!4983 = !DILocation(line: 166, column: 2, scope: !4941)
!4984 = !DILocation(line: 166, column: 2, scope: !4940)
!4985 = !DILocation(line: 167, column: 2, scope: !4932)
!4986 = !DILocation(line: 168, column: 1, scope: !4932)
!4987 = distinct !DISubprogram(name: "tid_fd_mode", scope: !3, file: !3, line: 117, type: !4988, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!771, !250, !7, !4990}
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!4991 = !{!4992, !4993, !4994, !4995}
!4992 = !DILocalVariable(name: "task", arg: 1, scope: !4987, file: !3, line: 117, type: !250)
!4993 = !DILocalVariable(name: "fd", arg: 2, scope: !4987, file: !3, line: 117, type: !7)
!4994 = !DILocalVariable(name: "mode", arg: 3, scope: !4987, file: !3, line: 117, type: !4990)
!4995 = !DILocalVariable(name: "file", scope: !4987, file: !3, line: 119, type: !591)
!4996 = !DILocation(line: 117, column: 45, scope: !4987)
!4997 = !DILocation(line: 117, column: 60, scope: !4987)
!4998 = !DILocation(line: 117, column: 73, scope: !4987)
!4999 = !DILocation(line: 119, column: 2, scope: !4987)
!5000 = !DILocation(line: 119, column: 15, scope: !4987)
!5001 = !DILocation(line: 121, column: 2, scope: !4987)
!5002 = !DILocation(line: 122, column: 28, scope: !4987)
!5003 = !DILocation(line: 122, column: 34, scope: !4987)
!5004 = !DILocation(line: 122, column: 9, scope: !4987)
!5005 = !DILocation(line: 122, column: 7, scope: !4987)
!5006 = !DILocation(line: 123, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 123, column: 6)
!5008 = !DILocation(line: 123, column: 6, scope: !4987)
!5009 = !DILocation(line: 124, column: 11, scope: !5007)
!5010 = !DILocation(line: 124, column: 17, scope: !5007)
!5011 = !DILocation(line: 124, column: 4, scope: !5007)
!5012 = !DILocation(line: 124, column: 9, scope: !5007)
!5013 = !DILocation(line: 124, column: 3, scope: !5007)
!5014 = !DILocation(line: 125, column: 2, scope: !4987)
!5015 = !DILocation(line: 126, column: 11, scope: !4987)
!5016 = !DILocation(line: 126, column: 10, scope: !4987)
!5017 = !DILocation(line: 126, column: 9, scope: !4987)
!5018 = !DILocation(line: 127, column: 1, scope: !4987)
!5019 = !DILocation(line: 126, column: 2, scope: !4987)
!5020 = !DISubprogram(name: "task_lookup_fd_rcu", scope: !2907, file: !2907, line: 112, type: !4919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5021 = !DISubprogram(name: "__rcu_read_lock", scope: !4077, file: !4077, line: 74, type: !2430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubprogram(name: "__rcu_read_unlock", scope: !4077, file: !4077, line: 75, type: !2430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = distinct !DISubprogram(name: "proc_lookupfd_common", scope: !3, file: !3, line: 227, type: !5024, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!895, !930, !895, !4258}
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034}
!5027 = !DILocalVariable(name: "dir", arg: 1, scope: !5023, file: !3, line: 227, type: !930)
!5028 = !DILocalVariable(name: "dentry", arg: 2, scope: !5023, file: !3, line: 228, type: !895)
!5029 = !DILocalVariable(name: "instantiate", arg: 3, scope: !5023, file: !3, line: 229, type: !4258)
!5030 = !DILocalVariable(name: "task", scope: !5023, file: !3, line: 231, type: !250)
!5031 = !DILocalVariable(name: "data", scope: !5023, file: !3, line: 232, type: !4273)
!5032 = !DILocalVariable(name: "result", scope: !5023, file: !3, line: 233, type: !895)
!5033 = !DILabel(scope: !5023, name: "out", file: !3, line: 243)
!5034 = !DILabel(scope: !5023, name: "out_no_task", file: !3, line: 245)
!5035 = !DILocation(line: 227, column: 58, scope: !5023)
!5036 = !DILocation(line: 228, column: 24, scope: !5023)
!5037 = !DILocation(line: 229, column: 23, scope: !5023)
!5038 = !DILocation(line: 231, column: 2, scope: !5023)
!5039 = !DILocation(line: 231, column: 22, scope: !5023)
!5040 = !DILocation(line: 231, column: 43, scope: !5023)
!5041 = !DILocation(line: 231, column: 29, scope: !5023)
!5042 = !DILocation(line: 232, column: 2, scope: !5023)
!5043 = !DILocation(line: 232, column: 17, scope: !5023)
!5044 = !DILocation(line: 232, column: 24, scope: !5023)
!5045 = !DILocation(line: 232, column: 44, scope: !5023)
!5046 = !DILocation(line: 232, column: 52, scope: !5023)
!5047 = !DILocation(line: 232, column: 31, scope: !5023)
!5048 = !DILocation(line: 233, column: 2, scope: !5023)
!5049 = !DILocation(line: 233, column: 17, scope: !5023)
!5050 = !DILocation(line: 233, column: 26, scope: !5023)
!5051 = !DILocation(line: 235, column: 7, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 235, column: 6)
!5053 = !DILocation(line: 235, column: 6, scope: !5023)
!5054 = !DILocation(line: 236, column: 3, scope: !5052)
!5055 = !DILocation(line: 237, column: 11, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 237, column: 6)
!5057 = !DILocation(line: 237, column: 14, scope: !5056)
!5058 = !DILocation(line: 237, column: 6, scope: !5023)
!5059 = !DILocation(line: 238, column: 3, scope: !5056)
!5060 = !DILocation(line: 239, column: 19, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 239, column: 6)
!5062 = !DILocation(line: 239, column: 30, scope: !5061)
!5063 = !DILocation(line: 239, column: 40, scope: !5061)
!5064 = !DILocation(line: 239, column: 7, scope: !5061)
!5065 = !DILocation(line: 239, column: 6, scope: !5023)
!5066 = !DILocation(line: 240, column: 3, scope: !5061)
!5067 = !DILocation(line: 242, column: 11, scope: !5023)
!5068 = !DILocation(line: 242, column: 23, scope: !5023)
!5069 = !DILocation(line: 242, column: 31, scope: !5023)
!5070 = !DILocation(line: 242, column: 9, scope: !5023)
!5071 = !DILocation(line: 242, column: 2, scope: !5023)
!5072 = !DILocation(line: 243, column: 1, scope: !5023)
!5073 = !DILocation(line: 244, column: 18, scope: !5023)
!5074 = !DILocation(line: 244, column: 2, scope: !5023)
!5075 = !DILocation(line: 245, column: 1, scope: !5023)
!5076 = !DILocation(line: 246, column: 9, scope: !5023)
!5077 = !DILocation(line: 247, column: 1, scope: !5023)
!5078 = !DILocation(line: 246, column: 2, scope: !5023)
!5079 = !DISubprogram(name: "name_to_int", scope: !186, file: !186, line: 136, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!7, !1626}
!5082 = !DISubprogram(name: "generic_fillattr", scope: !28, file: !28, line: 3094, type: !5083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !969, !261, !930, !1054}
!5085 = distinct !DISubprogram(name: "proc_readfd_count", scope: !3, file: !3, line: 290, type: !5086, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!98, !930, !116}
!5088 = !{!5089, !5090, !5091, !5092, !5093}
!5089 = !DILocalVariable(name: "inode", arg: 1, scope: !5085, file: !3, line: 290, type: !930)
!5090 = !DILocalVariable(name: "count", arg: 2, scope: !5085, file: !3, line: 290, type: !116)
!5091 = !DILocalVariable(name: "p", scope: !5085, file: !3, line: 292, type: !250)
!5092 = !DILocalVariable(name: "fdt", scope: !5085, file: !3, line: 293, type: !2913)
!5093 = !DILocalVariable(name: "__UNIQUE_ID_rcu301", scope: !5094, file: !3, line: 302, type: !2913)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 302, column: 9)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 299, column: 16)
!5096 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 299, column: 6)
!5097 = !DILocation(line: 290, column: 44, scope: !5085)
!5098 = !DILocation(line: 290, column: 59, scope: !5085)
!5099 = !DILocation(line: 292, column: 2, scope: !5085)
!5100 = !DILocation(line: 292, column: 22, scope: !5085)
!5101 = !DILocation(line: 292, column: 40, scope: !5085)
!5102 = !DILocation(line: 292, column: 26, scope: !5085)
!5103 = !DILocation(line: 293, column: 2, scope: !5085)
!5104 = !DILocation(line: 293, column: 18, scope: !5085)
!5105 = !DILocation(line: 295, column: 7, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 295, column: 6)
!5107 = !DILocation(line: 295, column: 6, scope: !5085)
!5108 = !DILocation(line: 296, column: 3, scope: !5106)
!5109 = !DILocation(line: 298, column: 12, scope: !5085)
!5110 = !DILocation(line: 298, column: 2, scope: !5085)
!5111 = !DILocation(line: 299, column: 6, scope: !5096)
!5112 = !DILocation(line: 299, column: 9, scope: !5096)
!5113 = !DILocation(line: 299, column: 6, scope: !5085)
!5114 = !DILocation(line: 300, column: 3, scope: !5095)
!5115 = !DILocation(line: 302, column: 9, scope: !5094)
!5116 = !DILocation(line: 302, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 302, column: 9)
!5118 = !DILocation(line: 302, column: 9, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 302, column: 9)
!5120 = !DILocation(line: 302, column: 9, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 302, column: 9)
!5122 = !DILocation(line: 302, column: 9, scope: !5095)
!5123 = !DILocation(line: 302, column: 7, scope: !5095)
!5124 = !DILocation(line: 303, column: 26, scope: !5095)
!5125 = !DILocation(line: 303, column: 31, scope: !5095)
!5126 = !DILocation(line: 303, column: 41, scope: !5095)
!5127 = !DILocation(line: 303, column: 46, scope: !5095)
!5128 = !DILocation(line: 303, column: 12, scope: !5095)
!5129 = !DILocation(line: 303, column: 4, scope: !5095)
!5130 = !DILocation(line: 303, column: 10, scope: !5095)
!5131 = !DILocation(line: 305, column: 3, scope: !5095)
!5132 = !DILocation(line: 306, column: 2, scope: !5095)
!5133 = !DILocation(line: 307, column: 14, scope: !5085)
!5134 = !DILocation(line: 307, column: 2, scope: !5085)
!5135 = !DILocation(line: 309, column: 18, scope: !5085)
!5136 = !DILocation(line: 309, column: 2, scope: !5085)
!5137 = !DILocation(line: 311, column: 2, scope: !5085)
!5138 = !DILocation(line: 312, column: 1, scope: !5085)
!5139 = distinct !DISubprogram(name: "task_lock", scope: !3997, file: !3997, line: 220, type: !3998, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5140)
!5140 = !{!5141}
!5141 = !DILocalVariable(name: "p", arg: 1, scope: !5139, file: !3997, line: 220, type: !250)
!5142 = !DILocation(line: 220, column: 50, scope: !5139)
!5143 = !DILocation(line: 222, column: 13, scope: !5139)
!5144 = !DILocation(line: 222, column: 16, scope: !5139)
!5145 = !DILocation(line: 222, column: 2, scope: !5139)
!5146 = !DILocation(line: 223, column: 1, scope: !5139)
!5147 = distinct !DISubprogram(name: "bitmap_weight", scope: !5148, file: !5148, line: 453, type: !5149, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5151)
!5148 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!7, !3968, !7}
!5151 = !{!5152, !5153}
!5152 = !DILocalVariable(name: "src", arg: 1, scope: !5147, file: !5148, line: 453, type: !3968)
!5153 = !DILocalVariable(name: "nbits", arg: 2, scope: !5147, file: !5148, line: 453, type: !7)
!5154 = !DILocation(line: 453, column: 49, scope: !5147)
!5155 = !DILocation(line: 453, column: 67, scope: !5147)
!5156 = !DILocation(line: 455, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5147, file: !5148, line: 455, column: 6)
!5158 = !DILocation(line: 455, column: 6, scope: !5147)
!5159 = !DILocation(line: 456, column: 24, scope: !5157)
!5160 = !DILocation(line: 456, column: 23, scope: !5157)
!5161 = !DILocation(line: 456, column: 30, scope: !5157)
!5162 = !DILocation(line: 456, column: 28, scope: !5157)
!5163 = !DILocation(line: 456, column: 10, scope: !5157)
!5164 = !DILocation(line: 456, column: 3, scope: !5157)
!5165 = !DILocation(line: 457, column: 25, scope: !5147)
!5166 = !DILocation(line: 457, column: 30, scope: !5147)
!5167 = !DILocation(line: 457, column: 9, scope: !5147)
!5168 = !DILocation(line: 457, column: 2, scope: !5147)
!5169 = !DILocation(line: 458, column: 1, scope: !5147)
!5170 = distinct !DISubprogram(name: "task_unlock", scope: !3997, file: !3997, line: 225, type: !3998, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5171 = !{!5172}
!5172 = !DILocalVariable(name: "p", arg: 1, scope: !5170, file: !3997, line: 225, type: !250)
!5173 = !DILocation(line: 225, column: 52, scope: !5170)
!5174 = !DILocation(line: 227, column: 15, scope: !5170)
!5175 = !DILocation(line: 227, column: 18, scope: !5170)
!5176 = !DILocation(line: 227, column: 2, scope: !5170)
!5177 = !DILocation(line: 228, column: 1, scope: !5170)
!5178 = distinct !DISubprogram(name: "hweight_long", scope: !5179, file: !5179, line: 95, type: !5180, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5182)
!5179 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!115, !115}
!5182 = !{!5183}
!5183 = !DILocalVariable(name: "w", arg: 1, scope: !5178, file: !5179, line: 95, type: !115)
!5184 = !DILocation(line: 95, column: 65, scope: !5178)
!5185 = !DILocation(line: 97, column: 41, scope: !5178)
!5186 = !DILocation(line: 97, column: 2, scope: !5178)
!5187 = !DISubprogram(name: "__bitmap_weight", scope: !5148, file: !5148, line: 171, type: !5149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5188 = distinct !DISubprogram(name: "__arch_hweight64", scope: !5189, file: !5189, line: 43, type: !5190, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5192)
!5189 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!115, !315}
!5192 = !{!5193, !5194}
!5193 = !DILocalVariable(name: "w", arg: 1, scope: !5188, file: !5189, line: 43, type: !315)
!5194 = !DILocalVariable(name: "res", scope: !5188, file: !5189, line: 45, type: !115)
!5195 = !DILocation(line: 43, column: 61, scope: !5188)
!5196 = !DILocation(line: 45, column: 2, scope: !5188)
!5197 = !DILocation(line: 45, column: 16, scope: !5188)
!5198 = !DILocation(line: 49, column: 15, scope: !5188)
!5199 = !DILocation(line: 47, column: 2, scope: !5188)
!5200 = !{i64 2148776572, i64 2148776600, i64 2148776606, i64 2148776622, i64 2148776638, i64 2148776665, i64 2148776998, i64 2148776298, i64 2148777004, i64 2148777052, i64 2148777116, i64 2148777180, i64 2148777237, i64 2148776379, i64 2148776404, i64 2148777444, i64 2148777574, i64 2148777505, i64 2148777588, i64 2148776496}
!5201 = !DILocation(line: 51, column: 9, scope: !5188)
!5202 = !DILocation(line: 52, column: 1, scope: !5188)
!5203 = !DILocation(line: 51, column: 2, scope: !5188)
!5204 = distinct !DISubprogram(name: "proc_fdinfo_instantiate", scope: !3, file: !3, line: 380, type: !4260, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5205)
!5205 = !{!5206, !5207, !5208, !5209, !5210, !5211}
!5206 = !DILocalVariable(name: "dentry", arg: 1, scope: !5204, file: !3, line: 380, type: !895)
!5207 = !DILocalVariable(name: "task", arg: 2, scope: !5204, file: !3, line: 381, type: !250)
!5208 = !DILocalVariable(name: "ptr", arg: 3, scope: !5204, file: !3, line: 381, type: !4122)
!5209 = !DILocalVariable(name: "data", scope: !5204, file: !3, line: 383, type: !4374)
!5210 = !DILocalVariable(name: "ei", scope: !5204, file: !3, line: 384, type: !184)
!5211 = !DILocalVariable(name: "inode", scope: !5204, file: !3, line: 385, type: !930)
!5212 = !DILocation(line: 380, column: 62, scope: !5204)
!5213 = !DILocation(line: 381, column: 22, scope: !5204)
!5214 = !DILocation(line: 381, column: 40, scope: !5204)
!5215 = !DILocation(line: 383, column: 2, scope: !5204)
!5216 = !DILocation(line: 383, column: 24, scope: !5204)
!5217 = !DILocation(line: 383, column: 31, scope: !5204)
!5218 = !DILocation(line: 384, column: 2, scope: !5204)
!5219 = !DILocation(line: 384, column: 21, scope: !5204)
!5220 = !DILocation(line: 385, column: 2, scope: !5204)
!5221 = !DILocation(line: 385, column: 16, scope: !5204)
!5222 = !DILocation(line: 387, column: 30, scope: !5204)
!5223 = !DILocation(line: 387, column: 38, scope: !5204)
!5224 = !DILocation(line: 387, column: 44, scope: !5204)
!5225 = !DILocation(line: 387, column: 10, scope: !5204)
!5226 = !DILocation(line: 387, column: 8, scope: !5204)
!5227 = !DILocation(line: 388, column: 7, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 388, column: 6)
!5229 = !DILocation(line: 388, column: 6, scope: !5204)
!5230 = !DILocation(line: 389, column: 10, scope: !5228)
!5231 = !DILocation(line: 389, column: 3, scope: !5228)
!5232 = !DILocation(line: 391, column: 14, scope: !5204)
!5233 = !DILocation(line: 391, column: 7, scope: !5204)
!5234 = !DILocation(line: 391, column: 5, scope: !5204)
!5235 = !DILocation(line: 392, column: 11, scope: !5204)
!5236 = !DILocation(line: 392, column: 17, scope: !5204)
!5237 = !DILocation(line: 392, column: 2, scope: !5204)
!5238 = !DILocation(line: 392, column: 6, scope: !5204)
!5239 = !DILocation(line: 392, column: 9, scope: !5204)
!5240 = !DILocation(line: 394, column: 2, scope: !5204)
!5241 = !DILocation(line: 394, column: 9, scope: !5204)
!5242 = !DILocation(line: 394, column: 14, scope: !5204)
!5243 = !DILocation(line: 396, column: 2, scope: !5204)
!5244 = !DILocation(line: 396, column: 9, scope: !5204)
!5245 = !DILocation(line: 396, column: 15, scope: !5204)
!5246 = !DILocation(line: 397, column: 22, scope: !5204)
!5247 = !DILocation(line: 397, column: 28, scope: !5204)
!5248 = !DILocation(line: 397, column: 2, scope: !5204)
!5249 = !DILocation(line: 399, column: 13, scope: !5204)
!5250 = !DILocation(line: 399, column: 2, scope: !5204)
!5251 = !DILocation(line: 400, column: 24, scope: !5204)
!5252 = !DILocation(line: 400, column: 31, scope: !5204)
!5253 = !DILocation(line: 400, column: 9, scope: !5204)
!5254 = !DILocation(line: 400, column: 2, scope: !5204)
!5255 = !DILocation(line: 401, column: 1, scope: !5204)
!5256 = distinct !DISubprogram(name: "seq_fdinfo_open", scope: !3, file: !3, line: 77, type: !2332, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5257)
!5257 = !{!5258, !5259}
!5258 = !DILocalVariable(name: "inode", arg: 1, scope: !5256, file: !3, line: 77, type: !930)
!5259 = !DILocalVariable(name: "file", arg: 2, scope: !5256, file: !3, line: 77, type: !591)
!5260 = !DILocation(line: 77, column: 42, scope: !5256)
!5261 = !DILocation(line: 77, column: 62, scope: !5256)
!5262 = !DILocation(line: 79, column: 21, scope: !5256)
!5263 = !DILocation(line: 79, column: 37, scope: !5256)
!5264 = !DILocation(line: 79, column: 9, scope: !5256)
!5265 = !DILocation(line: 79, column: 2, scope: !5256)
!5266 = !DISubprogram(name: "single_open", scope: !1243, file: !1243, line: 166, type: !5267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!98, !591, !1271, !96}
!5269 = distinct !DISubprogram(name: "seq_show", scope: !3, file: !3, line: 23, type: !1272, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5270)
!5270 = !{!5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5281, !5284, !5286}
!5271 = !DILocalVariable(name: "m", arg: 1, scope: !5269, file: !3, line: 23, type: !1241)
!5272 = !DILocalVariable(name: "v", arg: 2, scope: !5269, file: !3, line: 23, type: !96)
!5273 = !DILocalVariable(name: "files", scope: !5269, file: !3, line: 25, type: !2905)
!5274 = !DILocalVariable(name: "f_flags", scope: !5269, file: !3, line: 26, type: !98)
!5275 = !DILocalVariable(name: "ret", scope: !5269, file: !3, line: 26, type: !98)
!5276 = !DILocalVariable(name: "file", scope: !5269, file: !3, line: 27, type: !591)
!5277 = !DILocalVariable(name: "task", scope: !5269, file: !3, line: 28, type: !250)
!5278 = !DILocalVariable(name: "fd", scope: !5279, file: !3, line: 37, type: !7)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 36, column: 13)
!5280 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 36, column: 6)
!5281 = !DILocalVariable(name: "fdt", scope: !5282, file: !3, line: 42, type: !2913)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 41, column: 13)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 41, column: 7)
!5284 = !DILocalVariable(name: "__UNIQUE_ID_rcu299", scope: !5285, file: !3, line: 42, type: !2913)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 42, column: 26)
!5286 = !DILabel(scope: !5269, name: "out", file: !3, line: 72)
!5287 = !DILocation(line: 23, column: 38, scope: !5269)
!5288 = !DILocation(line: 23, column: 47, scope: !5269)
!5289 = !DILocation(line: 25, column: 2, scope: !5269)
!5290 = !DILocation(line: 25, column: 23, scope: !5269)
!5291 = !DILocation(line: 26, column: 2, scope: !5269)
!5292 = !DILocation(line: 26, column: 6, scope: !5269)
!5293 = !DILocation(line: 26, column: 19, scope: !5269)
!5294 = !DILocation(line: 27, column: 2, scope: !5269)
!5295 = !DILocation(line: 27, column: 15, scope: !5269)
!5296 = !DILocation(line: 28, column: 2, scope: !5269)
!5297 = !DILocation(line: 28, column: 22, scope: !5269)
!5298 = !DILocation(line: 30, column: 23, scope: !5269)
!5299 = !DILocation(line: 30, column: 26, scope: !5269)
!5300 = !DILocation(line: 30, column: 9, scope: !5269)
!5301 = !DILocation(line: 30, column: 7, scope: !5269)
!5302 = !DILocation(line: 31, column: 7, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 31, column: 6)
!5304 = !DILocation(line: 31, column: 6, scope: !5269)
!5305 = !DILocation(line: 32, column: 3, scope: !5303)
!5306 = !DILocation(line: 34, column: 12, scope: !5269)
!5307 = !DILocation(line: 34, column: 2, scope: !5269)
!5308 = !DILocation(line: 35, column: 10, scope: !5269)
!5309 = !DILocation(line: 35, column: 16, scope: !5269)
!5310 = !DILocation(line: 35, column: 8, scope: !5269)
!5311 = !DILocation(line: 36, column: 6, scope: !5280)
!5312 = !DILocation(line: 36, column: 6, scope: !5269)
!5313 = !DILocation(line: 37, column: 3, scope: !5279)
!5314 = !DILocation(line: 37, column: 16, scope: !5279)
!5315 = !DILocation(line: 37, column: 29, scope: !5279)
!5316 = !DILocation(line: 37, column: 32, scope: !5279)
!5317 = !DILocation(line: 37, column: 21, scope: !5279)
!5318 = !DILocation(line: 39, column: 14, scope: !5279)
!5319 = !DILocation(line: 39, column: 21, scope: !5279)
!5320 = !DILocation(line: 39, column: 3, scope: !5279)
!5321 = !DILocation(line: 40, column: 33, scope: !5279)
!5322 = !DILocation(line: 40, column: 40, scope: !5279)
!5323 = !DILocation(line: 40, column: 10, scope: !5279)
!5324 = !DILocation(line: 40, column: 8, scope: !5279)
!5325 = !DILocation(line: 41, column: 7, scope: !5283)
!5326 = !DILocation(line: 41, column: 7, scope: !5279)
!5327 = !DILocation(line: 42, column: 4, scope: !5282)
!5328 = !DILocation(line: 42, column: 20, scope: !5282)
!5329 = !DILocation(line: 42, column: 26, scope: !5285)
!5330 = !DILocation(line: 42, column: 26, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 42, column: 26)
!5332 = !DILocation(line: 42, column: 26, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 42, column: 26)
!5334 = !DILocation(line: 42, column: 26, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 42, column: 26)
!5336 = !DILocation(line: 42, column: 26, scope: !5282)
!5337 = !DILocation(line: 44, column: 14, scope: !5282)
!5338 = !DILocation(line: 44, column: 20, scope: !5282)
!5339 = !DILocation(line: 44, column: 12, scope: !5282)
!5340 = !DILocation(line: 45, column: 22, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 45, column: 8)
!5342 = !DILocation(line: 45, column: 26, scope: !5341)
!5343 = !DILocation(line: 45, column: 8, scope: !5341)
!5344 = !DILocation(line: 45, column: 8, scope: !5282)
!5345 = !DILocation(line: 46, column: 13, scope: !5341)
!5346 = !DILocation(line: 46, column: 5, scope: !5341)
!5347 = !DILocation(line: 48, column: 13, scope: !5282)
!5348 = !DILocation(line: 48, column: 4, scope: !5282)
!5349 = !DILocation(line: 49, column: 8, scope: !5282)
!5350 = !DILocation(line: 50, column: 3, scope: !5283)
!5351 = !DILocation(line: 50, column: 3, scope: !5282)
!5352 = !DILocation(line: 51, column: 16, scope: !5279)
!5353 = !DILocation(line: 51, column: 23, scope: !5279)
!5354 = !DILocation(line: 51, column: 3, scope: !5279)
!5355 = !DILocation(line: 52, column: 2, scope: !5280)
!5356 = !DILocation(line: 52, column: 2, scope: !5279)
!5357 = !DILocation(line: 53, column: 14, scope: !5269)
!5358 = !DILocation(line: 53, column: 2, scope: !5269)
!5359 = !DILocation(line: 54, column: 18, scope: !5269)
!5360 = !DILocation(line: 54, column: 2, scope: !5269)
!5361 = !DILocation(line: 56, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 56, column: 6)
!5363 = !DILocation(line: 56, column: 6, scope: !5269)
!5364 = !DILocation(line: 57, column: 10, scope: !5362)
!5365 = !DILocation(line: 57, column: 3, scope: !5362)
!5366 = !DILocation(line: 59, column: 13, scope: !5269)
!5367 = !DILocation(line: 60, column: 17, scope: !5269)
!5368 = !DILocation(line: 60, column: 23, scope: !5269)
!5369 = !DILocation(line: 60, column: 30, scope: !5269)
!5370 = !DILocation(line: 61, column: 17, scope: !5269)
!5371 = !DILocation(line: 61, column: 23, scope: !5269)
!5372 = !DILocation(line: 61, column: 30, scope: !5269)
!5373 = !DILocation(line: 61, column: 6, scope: !5269)
!5374 = !DILocation(line: 61, column: 36, scope: !5269)
!5375 = !DILocation(line: 62, column: 17, scope: !5269)
!5376 = !DILocation(line: 62, column: 6, scope: !5269)
!5377 = !DILocation(line: 62, column: 24, scope: !5269)
!5378 = !DILocation(line: 59, column: 2, scope: !5269)
!5379 = !DILocation(line: 65, column: 16, scope: !5269)
!5380 = !DILocation(line: 65, column: 19, scope: !5269)
!5381 = !DILocation(line: 65, column: 25, scope: !5269)
!5382 = !DILocation(line: 65, column: 2, scope: !5269)
!5383 = !DILocation(line: 66, column: 25, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 66, column: 6)
!5385 = !DILocation(line: 66, column: 6, scope: !5384)
!5386 = !DILocation(line: 66, column: 6, scope: !5269)
!5387 = !DILocation(line: 67, column: 3, scope: !5384)
!5388 = !DILocation(line: 69, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 69, column: 6)
!5390 = !DILocation(line: 69, column: 12, scope: !5389)
!5391 = !DILocation(line: 69, column: 18, scope: !5389)
!5392 = !DILocation(line: 69, column: 6, scope: !5269)
!5393 = !DILocation(line: 70, column: 3, scope: !5389)
!5394 = !DILocation(line: 70, column: 9, scope: !5389)
!5395 = !DILocation(line: 70, column: 15, scope: !5389)
!5396 = !DILocation(line: 70, column: 27, scope: !5389)
!5397 = !DILocation(line: 70, column: 30, scope: !5389)
!5398 = !DILocation(line: 72, column: 1, scope: !5269)
!5399 = !DILocation(line: 73, column: 7, scope: !5269)
!5400 = !DILocation(line: 73, column: 2, scope: !5269)
!5401 = !DILocation(line: 74, column: 2, scope: !5269)
!5402 = !DILocation(line: 75, column: 1, scope: !5269)
!5403 = distinct !DISubprogram(name: "files_lookup_fd_locked", scope: !2907, file: !2907, line: 93, type: !5404, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!591, !2905, !7}
!5406 = !{!5407, !5408}
!5407 = !DILocalVariable(name: "files", arg: 1, scope: !5403, file: !2907, line: 93, type: !2905)
!5408 = !DILocalVariable(name: "fd", arg: 2, scope: !5403, file: !2907, line: 93, type: !7)
!5409 = !DILocation(line: 93, column: 72, scope: !5403)
!5410 = !DILocation(line: 93, column: 92, scope: !5403)
!5411 = !DILocation(line: 95, column: 2, scope: !5403)
!5412 = !DILocation(line: 95, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5403, file: !2907, line: 95, column: 2)
!5414 = !DILocation(line: 97, column: 29, scope: !5403)
!5415 = !DILocation(line: 97, column: 36, scope: !5403)
!5416 = !DILocation(line: 97, column: 9, scope: !5403)
!5417 = !DILocation(line: 97, column: 2, scope: !5403)
!5418 = distinct !DISubprogram(name: "close_on_exec", scope: !2907, file: !2907, line: 35, type: !5419, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{!771, !7, !5421}
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!5423 = !{!5424, !5425}
!5424 = !DILocalVariable(name: "fd", arg: 1, scope: !5418, file: !2907, line: 35, type: !7)
!5425 = !DILocalVariable(name: "fdt", arg: 2, scope: !5418, file: !2907, line: 35, type: !5421)
!5426 = !DILocation(line: 35, column: 47, scope: !5418)
!5427 = !DILocation(line: 35, column: 73, scope: !5418)
!5428 = !DILocation(line: 37, column: 9, scope: !5418)
!5429 = !DILocation(line: 37, column: 2, scope: !5418)
!5430 = distinct !DISubprogram(name: "get_file", scope: !28, file: !28, line: 1042, type: !5431, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!591, !591}
!5433 = !{!5434}
!5434 = !DILocalVariable(name: "f", arg: 1, scope: !5430, file: !28, line: 1042, type: !591)
!5435 = !DILocation(line: 1042, column: 50, scope: !5430)
!5436 = !DILocation(line: 1044, column: 19, scope: !5430)
!5437 = !DILocation(line: 1044, column: 22, scope: !5430)
!5438 = !DILocation(line: 1044, column: 2, scope: !5430)
!5439 = !DILocation(line: 1045, column: 9, scope: !5430)
!5440 = !DILocation(line: 1045, column: 2, scope: !5430)
!5441 = !DISubprogram(name: "seq_printf", scope: !1243, file: !1243, line: 119, type: !5442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !1241, !92, null}
!5444 = distinct !DISubprogram(name: "real_mount", scope: !2952, file: !2952, line: 84, type: !5445, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!2999, !890}
!5447 = !{!5448, !5449}
!5448 = !DILocalVariable(name: "mnt", arg: 1, scope: !5444, file: !2952, line: 84, type: !890)
!5449 = !DILocalVariable(name: "__mptr", scope: !5450, file: !2952, line: 86, type: !96)
!5450 = distinct !DILexicalBlock(scope: !5444, file: !2952, line: 86, column: 9)
!5451 = !DILocation(line: 84, column: 57, scope: !5444)
!5452 = !DILocation(line: 86, column: 9, scope: !5450)
!5453 = !DILocation(line: 86, column: 9, scope: !5444)
!5454 = !DILocation(line: 86, column: 2, scope: !5444)
!5455 = !DISubprogram(name: "show_fd_locks", scope: !2354, file: !2354, line: 179, type: !5456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{null, !1241, !591, !2905}
!5458 = distinct !DISubprogram(name: "seq_has_overflowed", scope: !1243, file: !1243, line: 51, type: !5459, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!771, !1241}
!5461 = !{!5462}
!5462 = !DILocalVariable(name: "m", arg: 1, scope: !5458, file: !1243, line: 51, type: !1241)
!5463 = !DILocation(line: 51, column: 56, scope: !5458)
!5464 = !DILocation(line: 53, column: 9, scope: !5458)
!5465 = !DILocation(line: 53, column: 12, scope: !5458)
!5466 = !DILocation(line: 53, column: 21, scope: !5458)
!5467 = !DILocation(line: 53, column: 24, scope: !5458)
!5468 = !DILocation(line: 53, column: 18, scope: !5458)
!5469 = !DILocation(line: 53, column: 2, scope: !5458)
!5470 = distinct !DISubprogram(name: "files_lookup_fd_raw", scope: !2907, file: !2907, line: 82, type: !5404, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5477, !5481, !5482, !5483}
!5472 = !DILocalVariable(name: "files", arg: 1, scope: !5470, file: !2907, line: 82, type: !2905)
!5473 = !DILocalVariable(name: "fd", arg: 2, scope: !5470, file: !2907, line: 82, type: !7)
!5474 = !DILocalVariable(name: "fdt", scope: !5470, file: !2907, line: 84, type: !2913)
!5475 = !DILocalVariable(name: "__UNIQUE_ID_rcu249", scope: !5476, file: !2907, line: 84, type: !2913)
!5476 = distinct !DILexicalBlock(scope: !5470, file: !2907, line: 84, column: 24)
!5477 = !DILocalVariable(name: "_i", scope: !5478, file: !2907, line: 87, type: !7)
!5478 = distinct !DILexicalBlock(scope: !5479, file: !2907, line: 87, column: 8)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !2907, line: 86, column: 25)
!5480 = distinct !DILexicalBlock(scope: !5470, file: !2907, line: 86, column: 6)
!5481 = !DILocalVariable(name: "_s", scope: !5478, file: !2907, line: 87, type: !7)
!5482 = !DILocalVariable(name: "_mask", scope: !5478, file: !2907, line: 87, type: !115)
!5483 = !DILocalVariable(name: "__UNIQUE_ID_rcu253", scope: !5484, file: !2907, line: 88, type: !591)
!5484 = distinct !DILexicalBlock(scope: !5479, file: !2907, line: 88, column: 10)
!5485 = !DILocation(line: 82, column: 69, scope: !5470)
!5486 = !DILocation(line: 82, column: 89, scope: !5470)
!5487 = !DILocation(line: 84, column: 2, scope: !5470)
!5488 = !DILocation(line: 84, column: 18, scope: !5470)
!5489 = !DILocation(line: 84, column: 24, scope: !5476)
!5490 = !DILocation(line: 84, column: 24, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5476, file: !2907, line: 84, column: 24)
!5492 = !DILocation(line: 84, column: 24, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !2907, line: 84, column: 24)
!5494 = !DILocation(line: 84, column: 24, scope: !5470)
!5495 = !DILocation(line: 86, column: 6, scope: !5480)
!5496 = !DILocation(line: 86, column: 11, scope: !5480)
!5497 = !DILocation(line: 86, column: 16, scope: !5480)
!5498 = !DILocation(line: 86, column: 9, scope: !5480)
!5499 = !DILocation(line: 86, column: 6, scope: !5470)
!5500 = !DILocation(line: 87, column: 8, scope: !5478)
!5501 = !DILocation(line: 87, column: 8, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5478, file: !2907, line: 87, column: 8)
!5503 = !DILocation(line: 87, column: 8, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5478, file: !2907, line: 87, column: 8)
!5505 = !DILocation(line: 87, column: 8, scope: !5479)
!5506 = !DILocation(line: 87, column: 6, scope: !5479)
!5507 = !DILocation(line: 88, column: 10, scope: !5484)
!5508 = !DILocation(line: 88, column: 10, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5484, file: !2907, line: 88, column: 10)
!5510 = !DILocation(line: 88, column: 10, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5509, file: !2907, line: 88, column: 10)
!5512 = !DILocation(line: 88, column: 10, scope: !5479)
!5513 = !DILocation(line: 88, column: 3, scope: !5479)
!5514 = !DILocation(line: 90, column: 2, scope: !5470)
!5515 = !DILocation(line: 91, column: 1, scope: !5470)
!5516 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !5517, file: !5517, line: 36, type: !5518, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5520)
!5517 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!115, !115, !115}
!5520 = !{!5521, !5522, !5523}
!5521 = !DILocalVariable(name: "index", arg: 1, scope: !5516, file: !5517, line: 36, type: !115)
!5522 = !DILocalVariable(name: "size", arg: 2, scope: !5516, file: !5517, line: 37, type: !115)
!5523 = !DILocalVariable(name: "mask", scope: !5516, file: !5517, line: 39, type: !115)
!5524 = !DILocation(line: 36, column: 67, scope: !5516)
!5525 = !DILocation(line: 37, column: 17, scope: !5516)
!5526 = !DILocation(line: 39, column: 2, scope: !5516)
!5527 = !DILocation(line: 39, column: 16, scope: !5516)
!5528 = !DILocation(line: 43, column: 9, scope: !5516)
!5529 = !DILocation(line: 43, column: 20, scope: !5516)
!5530 = !DILocation(line: 41, column: 2, scope: !5516)
!5531 = !{i64 276560}
!5532 = !DILocation(line: 45, column: 9, scope: !5516)
!5533 = !DILocation(line: 46, column: 1, scope: !5516)
!5534 = !DILocation(line: 45, column: 2, scope: !5516)
!5535 = distinct !DISubprogram(name: "const_test_bit", scope: !5536, file: !5536, line: 166, type: !5537, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5542)
!5536 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!771, !115, !5539}
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5541)
!5541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!5542 = !{!5543, !5544, !5545, !5546, !5547}
!5543 = !DILocalVariable(name: "nr", arg: 1, scope: !5535, file: !5536, line: 166, type: !115)
!5544 = !DILocalVariable(name: "addr", arg: 2, scope: !5535, file: !5536, line: 166, type: !5539)
!5545 = !DILocalVariable(name: "p", scope: !5535, file: !5536, line: 168, type: !3968)
!5546 = !DILocalVariable(name: "mask", scope: !5535, file: !5536, line: 169, type: !115)
!5547 = !DILocalVariable(name: "val", scope: !5535, file: !5536, line: 170, type: !115)
!5548 = !DILocation(line: 166, column: 30, scope: !5535)
!5549 = !DILocation(line: 166, column: 64, scope: !5535)
!5550 = !DILocation(line: 168, column: 2, scope: !5535)
!5551 = !DILocation(line: 168, column: 23, scope: !5535)
!5552 = !DILocation(line: 168, column: 50, scope: !5535)
!5553 = !DILocation(line: 168, column: 57, scope: !5535)
!5554 = !DILocation(line: 168, column: 55, scope: !5535)
!5555 = !DILocation(line: 169, column: 2, scope: !5535)
!5556 = !DILocation(line: 169, column: 16, scope: !5535)
!5557 = !DILocation(line: 169, column: 23, scope: !5535)
!5558 = !DILocation(line: 170, column: 2, scope: !5535)
!5559 = !DILocation(line: 170, column: 16, scope: !5535)
!5560 = !DILocation(line: 170, column: 23, scope: !5535)
!5561 = !DILocation(line: 170, column: 22, scope: !5535)
!5562 = !DILocation(line: 172, column: 12, scope: !5535)
!5563 = !DILocation(line: 172, column: 18, scope: !5535)
!5564 = !DILocation(line: 172, column: 16, scope: !5535)
!5565 = !DILocation(line: 172, column: 10, scope: !5535)
!5566 = !DILocation(line: 172, column: 9, scope: !5535)
!5567 = !DILocation(line: 173, column: 1, scope: !5535)
!5568 = !DILocation(line: 172, column: 2, scope: !5535)
!5569 = distinct !DISubprogram(name: "_test_bit", scope: !5570, file: !5570, line: 139, type: !5537, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5571)
!5570 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5571 = !{!5572, !5573}
!5572 = !DILocalVariable(name: "nr", arg: 1, scope: !5569, file: !5570, line: 139, type: !115)
!5573 = !DILocalVariable(name: "addr", arg: 2, scope: !5569, file: !5570, line: 139, type: !5539)
!5574 = !DILocation(line: 139, column: 25, scope: !5569)
!5575 = !DILocation(line: 139, column: 59, scope: !5569)
!5576 = !DILocation(line: 141, column: 25, scope: !5569)
!5577 = !DILocation(line: 141, column: 32, scope: !5569)
!5578 = !DILocation(line: 141, column: 30, scope: !5569)
!5579 = !DILocation(line: 141, column: 2, scope: !5569)
!5580 = !DILocation(line: 142, column: 23, scope: !5569)
!5581 = !DILocation(line: 142, column: 27, scope: !5569)
!5582 = !DILocation(line: 142, column: 9, scope: !5569)
!5583 = !DILocation(line: 142, column: 2, scope: !5569)
!5584 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4706, file: !4706, line: 66, type: !4707, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5585)
!5585 = !{!5586, !5587}
!5586 = !DILocalVariable(name: "v", arg: 1, scope: !5584, file: !4706, line: 66, type: !4709)
!5587 = !DILocalVariable(name: "size", arg: 2, scope: !5584, file: !4706, line: 66, type: !111)
!5588 = !DILocation(line: 66, column: 73, scope: !5584)
!5589 = !DILocation(line: 66, column: 83, scope: !5584)
!5590 = !DILocation(line: 68, column: 19, scope: !5584)
!5591 = !DILocation(line: 68, column: 22, scope: !5584)
!5592 = !DILocation(line: 68, column: 2, scope: !5584)
!5593 = !DILocation(line: 69, column: 2, scope: !5584)
!5594 = !DILocation(line: 70, column: 1, scope: !5584)
!5595 = distinct !DISubprogram(name: "arch_test_bit", scope: !5596, file: !5596, line: 237, type: !5537, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5597)
!5596 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5597 = !{!5598, !5599}
!5598 = !DILocalVariable(name: "nr", arg: 1, scope: !5595, file: !5596, line: 237, type: !115)
!5599 = !DILocalVariable(name: "addr", arg: 2, scope: !5595, file: !5596, line: 237, type: !5539)
!5600 = !DILocation(line: 237, column: 29, scope: !5595)
!5601 = !DILocation(line: 237, column: 63, scope: !5595)
!5602 = !DILocation(line: 239, column: 30, scope: !5595)
!5603 = !DILocation(line: 239, column: 9, scope: !5595)
!5604 = !DILocation(line: 239, column: 54, scope: !5595)
!5605 = !DILocation(line: 239, column: 58, scope: !5595)
!5606 = !DILocation(line: 239, column: 36, scope: !5595)
!5607 = !DILocation(line: 240, column: 26, scope: !5595)
!5608 = !DILocation(line: 240, column: 30, scope: !5595)
!5609 = !DILocation(line: 240, column: 8, scope: !5595)
!5610 = !DILocation(line: 239, column: 2, scope: !5595)
!5611 = distinct !DISubprogram(name: "kasan_check_read", scope: !4734, file: !4734, line: 40, type: !4735, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5612)
!5612 = !{!5613, !5614}
!5613 = !DILocalVariable(name: "p", arg: 1, scope: !5611, file: !4734, line: 40, type: !4709)
!5614 = !DILocalVariable(name: "size", arg: 2, scope: !5611, file: !4734, line: 40, type: !7)
!5615 = !DILocation(line: 40, column: 58, scope: !5611)
!5616 = !DILocation(line: 40, column: 74, scope: !5611)
!5617 = !DILocation(line: 42, column: 2, scope: !5611)
!5618 = distinct !DISubprogram(name: "constant_test_bit", scope: !5596, file: !5596, line: 204, type: !5619, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!771, !1044, !5539}
!5621 = !{!5622, !5623}
!5622 = !DILocalVariable(name: "nr", arg: 1, scope: !5618, file: !5596, line: 204, type: !1044)
!5623 = !DILocalVariable(name: "addr", arg: 2, scope: !5618, file: !5596, line: 204, type: !5539)
!5624 = !DILocation(line: 204, column: 52, scope: !5618)
!5625 = !DILocation(line: 204, column: 86, scope: !5618)
!5626 = !DILocation(line: 206, column: 19, scope: !5618)
!5627 = !DILocation(line: 206, column: 22, scope: !5618)
!5628 = !DILocation(line: 206, column: 15, scope: !5618)
!5629 = !DILocation(line: 207, column: 4, scope: !5618)
!5630 = !DILocation(line: 207, column: 9, scope: !5618)
!5631 = !DILocation(line: 207, column: 12, scope: !5618)
!5632 = !DILocation(line: 206, column: 44, scope: !5618)
!5633 = !DILocation(line: 207, column: 37, scope: !5618)
!5634 = !DILocation(line: 206, column: 2, scope: !5618)
!5635 = distinct !DISubprogram(name: "variable_test_bit", scope: !5596, file: !5596, line: 224, type: !5619, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5636 = !{!5637, !5638, !5639}
!5637 = !DILocalVariable(name: "nr", arg: 1, scope: !5635, file: !5596, line: 224, type: !1044)
!5638 = !DILocalVariable(name: "addr", arg: 2, scope: !5635, file: !5596, line: 224, type: !5539)
!5639 = !DILocalVariable(name: "oldbit", scope: !5635, file: !5596, line: 226, type: !771)
!5640 = !DILocation(line: 224, column: 52, scope: !5635)
!5641 = !DILocation(line: 224, column: 86, scope: !5635)
!5642 = !DILocation(line: 226, column: 2, scope: !5635)
!5643 = !DILocation(line: 226, column: 7, scope: !5635)
!5644 = !DILocation(line: 231, column: 33, scope: !5635)
!5645 = !DILocation(line: 231, column: 46, scope: !5635)
!5646 = !DILocation(line: 228, column: 2, scope: !5635)
!5647 = !{i64 2148770123, i64 2148770197}
!5648 = !DILocation(line: 233, column: 9, scope: !5635)
!5649 = !DILocation(line: 234, column: 1, scope: !5635)
!5650 = !DILocation(line: 233, column: 2, scope: !5635)
!5651 = distinct !DISubprogram(name: "atomic_long_inc", scope: !4684, file: !4684, line: 3561, type: !5652, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5654)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{null, !1678}
!5654 = !{!5655}
!5655 = !DILocalVariable(name: "v", arg: 1, scope: !5651, file: !4684, line: 3561, type: !1678)
!5656 = !DILocation(line: 3561, column: 32, scope: !5651)
!5657 = !DILocation(line: 3563, column: 31, scope: !5651)
!5658 = !DILocation(line: 3563, column: 2, scope: !5651)
!5659 = !DILocation(line: 3564, column: 22, scope: !5651)
!5660 = !DILocation(line: 3564, column: 2, scope: !5651)
!5661 = !DILocation(line: 3565, column: 1, scope: !5651)
!5662 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !605, file: !605, line: 495, type: !5652, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "v", arg: 1, scope: !5662, file: !605, line: 495, type: !1678)
!5665 = !DILocation(line: 495, column: 36, scope: !5662)
!5666 = !DILocation(line: 498, column: 19, scope: !5662)
!5667 = !DILocation(line: 498, column: 2, scope: !5662)
!5668 = !DILocation(line: 502, column: 1, scope: !5662)
!5669 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !4723, file: !4723, line: 3088, type: !5670, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5673)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{null, !5672}
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!5673 = !{!5674}
!5674 = !DILocalVariable(name: "v", arg: 1, scope: !5669, file: !4723, line: 3088, type: !5672)
!5675 = !DILocation(line: 3088, column: 30, scope: !5669)
!5676 = !DILocation(line: 3091, column: 20, scope: !5669)
!5677 = !DILocation(line: 3091, column: 2, scope: !5669)
!5678 = !DILocation(line: 3095, column: 1, scope: !5669)
!5679 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !5680, file: !5680, line: 43, type: !5670, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5681)
!5680 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5681 = !{!5682}
!5682 = !DILocalVariable(name: "v", arg: 1, scope: !5679, file: !5680, line: 43, type: !5672)
!5683 = !DILocation(line: 43, column: 59, scope: !5679)
!5684 = !DILocation(line: 46, column: 16, scope: !5679)
!5685 = !DILocation(line: 46, column: 19, scope: !5679)
!5686 = !DILocation(line: 47, column: 15, scope: !5679)
!5687 = !DILocation(line: 47, column: 18, scope: !5679)
!5688 = !DILocation(line: 45, column: 2, scope: !5679)
!5689 = !{i64 2148004414, i64 2148004453, i64 2148004474, i64 2148004511, i64 2148004534, i64 2148004404}
!5690 = !DILocation(line: 48, column: 1, scope: !5679)
!5691 = !DISubprogram(name: "ptrace_may_access", scope: !5692, file: !5692, line: 88, type: !5693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5692 = !DIFile(filename: "./include/linux/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2c607984366a17bb2bcdc39b38f3eca")
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!771, !250, !7}
