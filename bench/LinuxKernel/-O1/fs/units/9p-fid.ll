; ModuleID = 'fs/9p/fid.c'
source_filename = "fs/9p/fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.24 }
%struct.atomic_t = type { i32 }
%union.anon.24 = type { i64 }
%struct.pcpu_hot = type { %union.anon.25 }
%union.anon.25 = type { %struct.anon.26, [16 x i8] }
%struct.anon.26 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.16 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.kuid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.22 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.v9fs_session_info = type { i32, i8, i16, i32, i32, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i64 }
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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.23 }
%struct.kernel_cap_t = type { i64 }
%union.anon.23 = type { %struct.callback_head }
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

@__tracepoint_9p_fid_ref = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %pfid) #0 align 16 !dbg !4816 {
entry:
  %dentry.addr = alloca ptr, align 8
  %pfid.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4821, metadata !DIExpression()), !dbg !4824
  store ptr %pfid, ptr %pfid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfid.addr, metadata !4822, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4823, metadata !DIExpression()), !dbg !4827
  %0 = load ptr, ptr %pfid.addr, align 8, !dbg !4828
  %1 = load ptr, ptr %0, align 8, !dbg !4829
  store ptr %1, ptr %fid, align 8, !dbg !4827
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4830
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7, !dbg !4831
  %3 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !4831
  %lock = getelementptr inbounds %struct.anon.16, ptr %3, i32 0, i32 0, !dbg !4831
  call void @spin_lock(ptr noundef %lock) #15, !dbg !4832
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4833
  %5 = load ptr, ptr %fid, align 8, !dbg !4834
  call void @__add_fid(ptr noundef %4, ptr noundef %5) #15, !dbg !4835
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4836
  %d_lockref1 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7, !dbg !4837
  %7 = getelementptr inbounds %struct.lockref, ptr %d_lockref1, i32 0, i32 0, !dbg !4837
  %lock2 = getelementptr inbounds %struct.anon.16, ptr %7, i32 0, i32 0, !dbg !4837
  call void @spin_unlock(ptr noundef %lock2) #15, !dbg !4838
  %8 = load ptr, ptr %pfid.addr, align 8, !dbg !4839
  store ptr null, ptr %8, align 8, !dbg !4840
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !4841
  ret void, !dbg !4841
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !4842 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4849
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4849
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !4849
  ret void, !dbg !4850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__add_fid(ptr noundef %dentry, ptr noundef %fid) #4 align 16 !dbg !4851 {
entry:
  %dentry.addr = alloca ptr, align 8
  %fid.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !4859
  %dlist = getelementptr inbounds %struct.p9_fid, ptr %0, i32 0, i32 8, !dbg !4860
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4861
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11, !dbg !4862
  call void @hlist_add_head(ptr noundef %dlist, ptr noundef %d_fsdata) #15, !dbg !4863
  ret void, !dbg !4864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !4865 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4869
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4869
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !4869
  ret void, !dbg !4870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @v9fs_fid_find_inode(ptr noundef %inode, i1 noundef zeroext %want_writeable, i32 %uid.coerce, i1 noundef zeroext %any) #0 align 16 !dbg !4871 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %inode.addr = alloca ptr, align 8
  %want_writeable.addr = alloca i8, align 1
  %any.addr = alloca i8, align 1
  %h = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %tmp12 = alloca i32, align 4
  %____ptr15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4875, metadata !DIExpression()), !dbg !4892
  %frombool = zext i1 %want_writeable to i8
  store i8 %frombool, ptr %want_writeable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %want_writeable.addr, metadata !4876, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4877, metadata !DIExpression()), !dbg !4894
  %frombool1 = zext i1 %any to i8
  store i8 %frombool1, ptr %any.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %any.addr, metadata !4878, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #14, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %h, metadata !4879, metadata !DIExpression()), !dbg !4897
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !4898
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !4880, metadata !DIExpression()), !dbg !4899
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !4898
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4881, metadata !DIExpression()), !dbg !4900
  store ptr null, ptr %ret, align 8, !dbg !4900
  store i32 0, ptr %tmp, align 4, !dbg !4901
  %0 = load i32, ptr %tmp, align 4, !dbg !4904
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4905
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19, !dbg !4906
  call void @spin_lock(ptr noundef %i_lock) #15, !dbg !4907
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4908
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47, !dbg !4909
  store ptr %i_private, ptr %h, align 8, !dbg !4910
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #14, !dbg !4911
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !4882, metadata !DIExpression()), !dbg !4911
  %3 = load ptr, ptr %h, align 8, !dbg !4911
  %first = getelementptr inbounds %struct.hlist_head, ptr %3, i32 0, i32 0, !dbg !4911
  %4 = load ptr, ptr %first, align 8, !dbg !4911
  store ptr %4, ptr %____ptr, align 8, !dbg !4911
  %5 = load ptr, ptr %____ptr, align 8, !dbg !4911
  %tobool = icmp ne ptr %5, null, !dbg !4911
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4911

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4912
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4885, metadata !DIExpression()), !dbg !4912
  %6 = load ptr, ptr %____ptr, align 8, !dbg !4912
  store ptr %6, ptr %__mptr, align 8, !dbg !4912
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4912
  %add.ptr = getelementptr i8, ptr %7, i64 -72, !dbg !4912
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4911
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4912
  br label %cond.end, !dbg !4911

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4911

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !4911
  store ptr %cond, ptr %tmp2, align 8, !dbg !4911
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #14, !dbg !4913
  %9 = load ptr, ptr %tmp2, align 8, !dbg !4911
  store ptr %9, ptr %fid, align 8, !dbg !4913
  br label %for.cond, !dbg !4913

for.cond:                                         ; preds = %cond.end23, %cond.end
  %10 = load ptr, ptr %fid, align 8, !dbg !4914
  %tobool4 = icmp ne ptr %10, null, !dbg !4913
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4913

for.body:                                         ; preds = %for.cond
  %11 = load i8, ptr %any.addr, align 1, !dbg !4915, !range !4918, !noundef !934
  %tobool5 = trunc i8 %11 to i1, !dbg !4915
  br i1 %tobool5, label %if.then, label %lor.lhs.false, !dbg !4919

lor.lhs.false:                                    ; preds = %for.body
  %12 = load ptr, ptr %fid, align 8, !dbg !4920
  %uid6 = getelementptr inbounds %struct.p9_fid, ptr %12, i32 0, i32 6, !dbg !4921
  %coerce.dive7 = getelementptr inbounds %struct.kuid_t, ptr %uid6, i32 0, i32 0, !dbg !4922
  %13 = load i32, ptr %coerce.dive7, align 4, !dbg !4922
  %coerce.dive8 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4922
  %14 = load i32, ptr %coerce.dive8, align 4, !dbg !4922
  %call = call zeroext i1 @uid_eq(i32 %13, i32 %14) #15, !dbg !4922
  br i1 %call, label %if.then, label %if.end14, !dbg !4923

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %15 = load i8, ptr %want_writeable.addr, align 1, !dbg !4924, !range !4918, !noundef !934
  %tobool9 = trunc i8 %15 to i1, !dbg !4924
  br i1 %tobool9, label %land.lhs.true, label %if.end, !dbg !4927

land.lhs.true:                                    ; preds = %if.then
  %16 = load ptr, ptr %fid, align 8, !dbg !4928
  %mode = getelementptr inbounds %struct.p9_fid, ptr %16, i32 0, i32 3, !dbg !4929
  %17 = load i32, ptr %mode, align 8, !dbg !4929
  %call10 = call zeroext i1 @v9fs_is_writeable(i32 noundef %17) #15, !dbg !4930
  br i1 %call10, label %if.end, label %if.then11, !dbg !4931

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %tmp12, align 4, !dbg !4932
  %18 = load i32, ptr %tmp12, align 4, !dbg !4936
  br label %for.inc, !dbg !4937

if.end:                                           ; preds = %land.lhs.true, %if.then
  %19 = load ptr, ptr %fid, align 8, !dbg !4938
  %call13 = call ptr @p9_fid_get(ptr noundef %19) #15, !dbg !4939
  %20 = load ptr, ptr %fid, align 8, !dbg !4940
  store ptr %20, ptr %ret, align 8, !dbg !4941
  br label %for.end, !dbg !4942

if.end14:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !4943

for.inc:                                          ; preds = %if.end14, %if.then11
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr15) #14, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %____ptr15, metadata !4887, metadata !DIExpression()), !dbg !4944
  %21 = load ptr, ptr %fid, align 8, !dbg !4944
  %ilist = getelementptr inbounds %struct.p9_fid, ptr %21, i32 0, i32 9, !dbg !4944
  %next = getelementptr inbounds %struct.hlist_node, ptr %ilist, i32 0, i32 0, !dbg !4944
  %22 = load ptr, ptr %next, align 8, !dbg !4944
  store ptr %22, ptr %____ptr15, align 8, !dbg !4944
  %23 = load ptr, ptr %____ptr15, align 8, !dbg !4944
  %tobool17 = icmp ne ptr %23, null, !dbg !4944
  br i1 %tobool17, label %cond.true18, label %cond.false22, !dbg !4944

cond.true18:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #14, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !4890, metadata !DIExpression()), !dbg !4945
  %24 = load ptr, ptr %____ptr15, align 8, !dbg !4945
  store ptr %24, ptr %__mptr19, align 8, !dbg !4945
  %25 = load ptr, ptr %__mptr19, align 8, !dbg !4945
  %add.ptr21 = getelementptr i8, ptr %25, i64 -72, !dbg !4945
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !4945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #14, !dbg !4944
  %26 = load ptr, ptr %tmp20, align 8, !dbg !4945
  br label %cond.end23, !dbg !4944

cond.false22:                                     ; preds = %for.inc
  br label %cond.end23, !dbg !4944

cond.end23:                                       ; preds = %cond.false22, %cond.true18
  %cond24 = phi ptr [ %26, %cond.true18 ], [ null, %cond.false22 ], !dbg !4944
  store ptr %cond24, ptr %tmp16, align 8, !dbg !4944
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr15) #14, !dbg !4914
  %27 = load ptr, ptr %tmp16, align 8, !dbg !4944
  store ptr %27, ptr %fid, align 8, !dbg !4914
  br label %for.cond, !dbg !4914, !llvm.loop !4946

for.end:                                          ; preds = %if.end, %for.cond
  %28 = load ptr, ptr %inode.addr, align 8, !dbg !4950
  %i_lock25 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 19, !dbg !4951
  call void @spin_unlock(ptr noundef %i_lock25) #15, !dbg !4952
  %29 = load ptr, ptr %ret, align 8, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #14, !dbg !4954
  ret ptr %29, !dbg !4955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !4956 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4960, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.declare(metadata ptr %right, metadata !4961, metadata !DIExpression()), !dbg !4963
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !4964
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !4964
  %call = call i32 @__kuid_val(i32 %0) #15, !dbg !4964
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !4965
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !4965
  %call4 = call i32 @__kuid_val(i32 %1) #15, !dbg !4965
  %cmp = icmp eq i32 %call, %call4, !dbg !4966
  ret i1 %cmp, !dbg !4967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @v9fs_is_writeable(i32 noundef %mode) #0 align 16 !dbg !4968 {
entry:
  %retval = alloca i1, align 1
  %mode.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load i32, ptr %mode.addr, align 4, !dbg !4974
  %and = and i32 %0, 3, !dbg !4976
  %tobool = icmp ne i32 %and, 0, !dbg !4976
  br i1 %tobool, label %if.then, label %if.else, !dbg !4977

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4978
  br label %return, !dbg !4978

if.else:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4979
  br label %return, !dbg !4979

return:                                           ; preds = %if.else, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !4980
  ret i1 %1, !dbg !4980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p9_fid_get(ptr noundef %fid) #4 align 16 !dbg !4981 {
entry:
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #15, !dbg !4987
  br i1 %call, label %if.then, label %if.end, !dbg !4989

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !4990
  call void @do_trace_9p_fid_get(ptr noundef %0) #15, !dbg !4991
  br label %if.end, !dbg !4991

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !4992
  %count = getelementptr inbounds %struct.p9_fid, ptr %1, i32 0, i32 2, !dbg !4993
  call void @refcount_inc(ptr noundef %count) #15, !dbg !4994
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !4995
  ret ptr %2, !dbg !4996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @v9fs_open_fid_add(ptr noundef %inode, ptr noundef %pfid) #0 align 16 !dbg !4997 {
entry:
  %inode.addr = alloca ptr, align 8
  %pfid.addr = alloca ptr, align 8
  %fid = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5001, metadata !DIExpression()), !dbg !5004
  store ptr %pfid, ptr %pfid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pfid.addr, metadata !5002, metadata !DIExpression()), !dbg !5005
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !5006
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5003, metadata !DIExpression()), !dbg !5007
  %0 = load ptr, ptr %pfid.addr, align 8, !dbg !5008
  %1 = load ptr, ptr %0, align 8, !dbg !5009
  store ptr %1, ptr %fid, align 8, !dbg !5007
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5010
  %i_lock = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 19, !dbg !5011
  call void @spin_lock(ptr noundef %i_lock) #15, !dbg !5012
  %3 = load ptr, ptr %fid, align 8, !dbg !5013
  %ilist = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 9, !dbg !5014
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5015
  %i_private = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47, !dbg !5016
  call void @hlist_add_head(ptr noundef %ilist, ptr noundef %i_private) #15, !dbg !5017
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5018
  %i_lock1 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 19, !dbg !5019
  call void @spin_unlock(ptr noundef %i_lock1) #15, !dbg !5020
  %6 = load ptr, ptr %pfid.addr, align 8, !dbg !5021
  store ptr null, ptr %6, align 8, !dbg !5022
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !5023
  ret void, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #4 align 16 !dbg !5024 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5029, metadata !DIExpression()), !dbg !5032
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5030, metadata !DIExpression()), !dbg !5033
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #14, !dbg !5034
  call void @llvm.dbg.declare(metadata ptr %first, metadata !5031, metadata !DIExpression()), !dbg !5035
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5036
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !5037
  %1 = load ptr, ptr %first1, align 8, !dbg !5037
  store ptr %1, ptr %first, align 8, !dbg !5035
  br label %do.body, !dbg !5038

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5039

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5041

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5041

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5039

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !5043
  %3 = load ptr, ptr %n.addr, align 8, !dbg !5043
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !5043
  store volatile ptr %2, ptr %next, align 8, !dbg !5043
  br label %do.cond4, !dbg !5043

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5043

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !5039

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !5039

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !5045
  %tobool = icmp ne ptr %4, null, !dbg !5045
  br i1 %tobool, label %if.then, label %if.end, !dbg !5047

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !5048

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5049

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !5051

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5051

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5049

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !5053
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !5053
  %6 = load ptr, ptr %first, align 8, !dbg !5053
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !5053
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !5053
  br label %do.cond14, !dbg !5053

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !5053

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5049

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5049

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5049

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !5055

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !5056

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !5058

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5058

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5056

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !5060
  %8 = load ptr, ptr %h.addr, align 8, !dbg !5060
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !5060
  store volatile ptr %7, ptr %first23, align 8, !dbg !5060
  br label %do.cond24, !dbg !5060

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !5060

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5056

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5056

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !5062

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !5063

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !5065

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5065

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5063

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !5067
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !5067
  %10 = load ptr, ptr %n.addr, align 8, !dbg !5067
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !5067
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !5067
  br label %do.cond35, !dbg !5067

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !5067

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !5063

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !5063

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #14, !dbg !5069
  ret void, !dbg !5069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @v9fs_fid_lookup(ptr noundef %dentry) #0 align 16 !dbg !5070 {
entry:
  %dentry.addr = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %any = alloca i32, align 4
  %access = alloca i32, align 4
  %v9ses = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5074, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #14, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5075, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 4, ptr %any) #14, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %any, metadata !5076, metadata !DIExpression()), !dbg !5101
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #14, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %access, metadata !5077, metadata !DIExpression()), !dbg !5102
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5078, metadata !DIExpression()), !dbg !5104
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5105
  %call = call ptr @v9fs_dentry2v9ses(ptr noundef %0) #15, !dbg !5106
  store ptr %call, ptr %v9ses, align 8, !dbg !5107
  %1 = load ptr, ptr %v9ses, align 8, !dbg !5108
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 0, !dbg !5109
  %2 = load i32, ptr %flags, align 8, !dbg !5109
  %and = and i32 %2, 28, !dbg !5110
  store i32 %and, ptr %access, align 4, !dbg !5111
  %3 = load i32, ptr %access, align 4, !dbg !5112
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 28, label %sw.bb2
  ], !dbg !5113

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %do.body, !dbg !5114

do.body:                                          ; preds = %sw.bb
  br label %do.cond, !dbg !5118

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @get_current() #15, !dbg !5114
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !5114
  %4 = load ptr, ptr %cred, align 32, !dbg !5114
  store ptr %4, ptr %tmp, align 8, !dbg !5118
  %5 = load ptr, ptr %tmp, align 8, !dbg !5114
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7, !dbg !5120
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 8 %fsuid, i64 4, i1 false), !dbg !5120
  store i32 0, ptr %any, align 4, !dbg !5121
  br label %sw.epilog, !dbg !5122

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %v9ses, align 8, !dbg !5123
  %uid3 = getelementptr inbounds %struct.v9fs_session_info, ptr %6, i32 0, i32 10, !dbg !5124
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %uid3, i64 4, i1 false), !dbg !5124
  store i32 1, ptr %any, align 4, !dbg !5125
  br label %sw.epilog, !dbg !5126

sw.default:                                       ; preds = %entry
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5127
  store i32 -1, ptr %val, align 4, !dbg !5127
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5127
  store i32 0, ptr %any, align 4, !dbg !5128
  br label %sw.epilog, !dbg !5129

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %do.end
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !5130
  %8 = load i32, ptr %any, align 4, !dbg !5131
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5132
  %9 = load i32, ptr %coerce.dive, align 4, !dbg !5132
  %call4 = call ptr @v9fs_fid_lookup_with_uid(ptr noundef %7, i32 %9, i32 noundef %8) #15, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #14, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 4, ptr %any) #14, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #14, !dbg !5133
  ret ptr %call4, !dbg !5134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_dentry2v9ses(ptr noundef %dentry) #4 align 16 !dbg !5135 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5141
  %d_sb = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9, !dbg !5142
  %1 = load ptr, ptr %d_sb, align 8, !dbg !5142
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 29, !dbg !5143
  %2 = load ptr, ptr %s_fs_info, align 32, !dbg !5143
  ret ptr %2, !dbg !5144
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5145 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5150, metadata !DIExpression()), !dbg !5156
  br label %do.body, !dbg !5156

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5152, metadata !DIExpression()), !dbg !5157
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5157
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5156
  br label %do.cond, !dbg !5157

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5157

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5154, metadata !DIExpression()), !dbg !5158
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !5158, !srcloc !5159
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5158
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5158
  %3 = inttoptr i64 %2 to ptr, !dbg !5158
  store ptr %3, ptr %tmp, align 8, !dbg !5158
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !5156
  %4 = load ptr, ptr %tmp, align 8, !dbg !5158
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5156
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5156
  store ptr %5, ptr %tmp1, align 8, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5160
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5156
  ret ptr %6, !dbg !5161
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_fid_lookup_with_uid(ptr noundef %dentry, i32 %uid.coerce, i32 noundef %any) #0 align 16 !dbg !5162 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %dentry.addr = alloca ptr, align 8
  %any.addr = alloca i32, align 4
  %ds = alloca ptr, align 8
  %wnames = alloca ptr, align 8
  %uname = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %access = alloca i32, align 4
  %v9ses = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %root_fid = alloca ptr, align 8
  %old_fid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x320 = alloca i32, align 4
  %__UNIQUE_ID___y321 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5166, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5167, metadata !DIExpression()), !dbg !5188
  store i32 %any, ptr %any.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %any.addr, metadata !5168, metadata !DIExpression()), !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #14, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !5169, metadata !DIExpression()), !dbg !5191
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnames) #14, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %wnames, metadata !5170, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 8, ptr %uname) #14, !dbg !5192
  call void @llvm.dbg.declare(metadata ptr %uname, metadata !5172, metadata !DIExpression()), !dbg !5194
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5173, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5174, metadata !DIExpression()), !dbg !5197
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #14, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %l, metadata !5175, metadata !DIExpression()), !dbg !5198
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #14, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %access, metadata !5176, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %v9ses) #14, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %v9ses, metadata !5177, metadata !DIExpression()), !dbg !5201
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5178, metadata !DIExpression()), !dbg !5203
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_fid) #14, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %root_fid, metadata !5179, metadata !DIExpression()), !dbg !5204
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_fid) #14, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %old_fid, metadata !5180, metadata !DIExpression()), !dbg !5205
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5206
  %call = call ptr @v9fs_dentry2v9ses(ptr noundef %0) #15, !dbg !5207
  store ptr %call, ptr %v9ses, align 8, !dbg !5208
  %1 = load ptr, ptr %v9ses, align 8, !dbg !5209
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %1, i32 0, i32 0, !dbg !5210
  %2 = load i32, ptr %flags, align 8, !dbg !5210
  %and = and i32 %2, 28, !dbg !5211
  store i32 %and, ptr %access, align 4, !dbg !5212
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5213
  %4 = load i32, ptr %any.addr, align 4, !dbg !5214
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5215
  %5 = load i32, ptr %coerce.dive1, align 4, !dbg !5215
  %call2 = call ptr @v9fs_fid_find(ptr noundef %3, i32 %5, i32 noundef %4) #15, !dbg !5215
  store ptr %call2, ptr %fid, align 8, !dbg !5216
  %6 = load ptr, ptr %fid, align 8, !dbg !5217
  %tobool = icmp ne ptr %6, null, !dbg !5217
  br i1 %tobool, label %if.then, label %if.end, !dbg !5219

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %fid, align 8, !dbg !5220
  store ptr %7, ptr %retval, align 8, !dbg !5221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5221

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %v9ses, align 8, !dbg !5222
  %rename_sem = getelementptr inbounds %struct.v9fs_session_info, ptr %8, i32 0, i32 13, !dbg !5223
  call void @down_read(ptr noundef %rename_sem) #15, !dbg !5224
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !5225
  %d_parent = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3, !dbg !5226
  %10 = load ptr, ptr %d_parent, align 8, !dbg !5226
  store ptr %10, ptr %ds, align 8, !dbg !5227
  %11 = load ptr, ptr %ds, align 8, !dbg !5228
  %12 = load i32, ptr %any.addr, align 4, !dbg !5229
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5230
  %13 = load i32, ptr %coerce.dive3, align 4, !dbg !5230
  %call4 = call ptr @v9fs_fid_find(ptr noundef %11, i32 %13, i32 noundef %12) #15, !dbg !5230
  store ptr %call4, ptr %fid, align 8, !dbg !5231
  %14 = load ptr, ptr %fid, align 8, !dbg !5232
  %tobool5 = icmp ne ptr %14, null, !dbg !5232
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !5234

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr %fid, align 8, !dbg !5235
  store ptr %15, ptr %old_fid, align 8, !dbg !5237
  %16 = load ptr, ptr %old_fid, align 8, !dbg !5238
  %17 = load ptr, ptr %dentry.addr, align 8, !dbg !5239
  %d_name = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4, !dbg !5240
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5241
  %call7 = call ptr @p9_client_walk(ptr noundef %16, i16 noundef zeroext 1, ptr noundef %name, i32 noundef 1) #15, !dbg !5242
  store ptr %call7, ptr %fid, align 8, !dbg !5243
  %18 = load ptr, ptr %old_fid, align 8, !dbg !5244
  %call8 = call i32 @p9_fid_put(ptr noundef %18) #15, !dbg !5245
  br label %fid_out, !dbg !5246

if.end9:                                          ; preds = %if.end
  %19 = load ptr, ptr %v9ses, align 8, !dbg !5247
  %rename_sem10 = getelementptr inbounds %struct.v9fs_session_info, ptr %19, i32 0, i32 13, !dbg !5248
  call void @up_read(ptr noundef %rename_sem10) #15, !dbg !5249
  %20 = load ptr, ptr %dentry.addr, align 8, !dbg !5250
  %d_sb = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 9, !dbg !5251
  %21 = load ptr, ptr %d_sb, align 8, !dbg !5251
  %s_root = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 13, !dbg !5252
  %22 = load ptr, ptr %s_root, align 8, !dbg !5252
  %23 = load i32, ptr %any.addr, align 4, !dbg !5253
  %coerce.dive11 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5254
  %24 = load i32, ptr %coerce.dive11, align 4, !dbg !5254
  %call12 = call ptr @v9fs_fid_find(ptr noundef %22, i32 %24, i32 noundef %23) #15, !dbg !5254
  store ptr %call12, ptr %root_fid, align 8, !dbg !5255
  %25 = load ptr, ptr %root_fid, align 8, !dbg !5256
  %tobool13 = icmp ne ptr %25, null, !dbg !5256
  br i1 %tobool13, label %if.end33, label %if.then14, !dbg !5258

if.then14:                                        ; preds = %if.end9
  %26 = load i32, ptr %access, align 4, !dbg !5259
  %cmp = icmp eq i32 %26, 4, !dbg !5262
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !5263

if.then15:                                        ; preds = %if.then14
  %call16 = call ptr @ERR_PTR(i64 noundef -1) #15, !dbg !5264
  store ptr %call16, ptr %retval, align 8, !dbg !5265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5265

if.end17:                                         ; preds = %if.then14
  %27 = load ptr, ptr %v9ses, align 8, !dbg !5266
  %call18 = call i32 @v9fs_proto_dotu(ptr noundef %27) #15, !dbg !5268
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5268
  br i1 %tobool19, label %if.then22, label %lor.lhs.false, !dbg !5269

lor.lhs.false:                                    ; preds = %if.end17
  %28 = load ptr, ptr %v9ses, align 8, !dbg !5270
  %call20 = call i32 @v9fs_proto_dotl(ptr noundef %28) #15, !dbg !5271
  %tobool21 = icmp ne i32 %call20, 0, !dbg !5271
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !5272

if.then22:                                        ; preds = %lor.lhs.false, %if.end17
  store ptr null, ptr %uname, align 8, !dbg !5273
  br label %if.end24, !dbg !5274

if.else:                                          ; preds = %lor.lhs.false
  %29 = load ptr, ptr %v9ses, align 8, !dbg !5275
  %uname23 = getelementptr inbounds %struct.v9fs_session_info, ptr %29, i32 0, i32 5, !dbg !5276
  %30 = load ptr, ptr %uname23, align 8, !dbg !5276
  store ptr %30, ptr %uname, align 8, !dbg !5277
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %31 = load ptr, ptr %v9ses, align 8, !dbg !5278
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %31, i32 0, i32 11, !dbg !5279
  %32 = load ptr, ptr %clnt, align 8, !dbg !5279
  %33 = load ptr, ptr %uname, align 8, !dbg !5280
  %34 = load ptr, ptr %v9ses, align 8, !dbg !5281
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %34, i32 0, i32 6, !dbg !5282
  %35 = load ptr, ptr %aname, align 8, !dbg !5282
  %coerce.dive25 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5283
  %36 = load i32, ptr %coerce.dive25, align 4, !dbg !5283
  %call26 = call ptr @p9_client_attach(ptr noundef %32, ptr noundef null, ptr noundef %33, i32 %36, ptr noundef %35) #15, !dbg !5283
  store ptr %call26, ptr %fid, align 8, !dbg !5284
  %37 = load ptr, ptr %fid, align 8, !dbg !5285
  %call27 = call zeroext i1 @IS_ERR(ptr noundef %37) #15, !dbg !5287
  br i1 %call27, label %if.then28, label %if.end29, !dbg !5288

if.then28:                                        ; preds = %if.end24
  %38 = load ptr, ptr %fid, align 8, !dbg !5289
  store ptr %38, ptr %retval, align 8, !dbg !5290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5290

if.end29:                                         ; preds = %if.end24
  %39 = load ptr, ptr %fid, align 8, !dbg !5291
  %call30 = call ptr @p9_fid_get(ptr noundef %39) #15, !dbg !5292
  store ptr %call30, ptr %root_fid, align 8, !dbg !5293
  %40 = load ptr, ptr %dentry.addr, align 8, !dbg !5294
  %d_sb31 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 9, !dbg !5295
  %41 = load ptr, ptr %d_sb31, align 8, !dbg !5295
  %s_root32 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 13, !dbg !5296
  %42 = load ptr, ptr %s_root32, align 8, !dbg !5296
  call void @v9fs_fid_add(ptr noundef %42, ptr noundef %fid) #15, !dbg !5297
  br label %if.end33, !dbg !5298

if.end33:                                         ; preds = %if.end29, %if.end9
  %43 = load ptr, ptr %dentry.addr, align 8, !dbg !5299
  %d_sb34 = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 9, !dbg !5301
  %44 = load ptr, ptr %d_sb34, align 8, !dbg !5301
  %s_root35 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 13, !dbg !5302
  %45 = load ptr, ptr %s_root35, align 8, !dbg !5302
  %46 = load ptr, ptr %dentry.addr, align 8, !dbg !5303
  %cmp36 = icmp eq ptr %45, %46, !dbg !5304
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5305

if.then37:                                        ; preds = %if.end33
  %47 = load ptr, ptr %root_fid, align 8, !dbg !5306
  store ptr %47, ptr %retval, align 8, !dbg !5307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5307

if.end38:                                         ; preds = %if.end33
  %48 = load ptr, ptr %v9ses, align 8, !dbg !5308
  %rename_sem39 = getelementptr inbounds %struct.v9fs_session_info, ptr %48, i32 0, i32 13, !dbg !5309
  call void @down_read(ptr noundef %rename_sem39) #15, !dbg !5310
  %49 = load ptr, ptr %v9ses, align 8, !dbg !5311
  %50 = load ptr, ptr %dentry.addr, align 8, !dbg !5312
  %call40 = call i32 @build_path_from_dentry(ptr noundef %49, ptr noundef %50, ptr noundef %wnames) #15, !dbg !5313
  store i32 %call40, ptr %n, align 4, !dbg !5314
  %51 = load i32, ptr %n, align 4, !dbg !5315
  %cmp41 = icmp slt i32 %51, 0, !dbg !5317
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !5318

if.then42:                                        ; preds = %if.end38
  %52 = load i32, ptr %n, align 4, !dbg !5319
  %conv = sext i32 %52 to i64, !dbg !5319
  %call43 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !5321
  store ptr %call43, ptr %fid, align 8, !dbg !5322
  br label %err_out, !dbg !5323

if.end44:                                         ; preds = %if.end38
  %53 = load ptr, ptr %root_fid, align 8, !dbg !5324
  store ptr %53, ptr %fid, align 8, !dbg !5325
  %54 = load ptr, ptr %root_fid, align 8, !dbg !5326
  store ptr %54, ptr %old_fid, align 8, !dbg !5327
  store i32 0, ptr %i, align 4, !dbg !5328
  br label %while.cond, !dbg !5329

while.cond:                                       ; preds = %if.end60, %if.end44
  %55 = load i32, ptr %i, align 4, !dbg !5330
  %56 = load i32, ptr %n, align 4, !dbg !5331
  %cmp45 = icmp slt i32 %55, %56, !dbg !5332
  br i1 %cmp45, label %while.body, label %while.end, !dbg !5329

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x320) #14, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x320, metadata !5181, metadata !DIExpression()), !dbg !5333
  %57 = load i32, ptr %n, align 4, !dbg !5333
  %58 = load i32, ptr %i, align 4, !dbg !5333
  %sub = sub i32 %57, %58, !dbg !5333
  store i32 %sub, ptr %__UNIQUE_ID___x320, align 4, !dbg !5333
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y321) #14, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y321, metadata !5184, metadata !DIExpression()), !dbg !5333
  store i32 16, ptr %__UNIQUE_ID___y321, align 4, !dbg !5333
  %59 = load i32, ptr %__UNIQUE_ID___x320, align 4, !dbg !5333
  %60 = load i32, ptr %__UNIQUE_ID___y321, align 4, !dbg !5333
  %cmp47 = icmp slt i32 %59, %60, !dbg !5333
  br i1 %cmp47, label %cond.true, label %cond.false, !dbg !5333

cond.true:                                        ; preds = %while.body
  %61 = load i32, ptr %__UNIQUE_ID___x320, align 4, !dbg !5333
  br label %cond.end, !dbg !5333

cond.false:                                       ; preds = %while.body
  %62 = load i32, ptr %__UNIQUE_ID___y321, align 4, !dbg !5333
  br label %cond.end, !dbg !5333

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ %62, %cond.false ], !dbg !5333
  store i32 %cond, ptr %tmp, align 4, !dbg !5333
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y321) #14, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x320) #14, !dbg !5334
  %63 = load i32, ptr %tmp, align 4, !dbg !5333
  store i32 %63, ptr %l, align 4, !dbg !5335
  %64 = load ptr, ptr %old_fid, align 8, !dbg !5336
  %65 = load i32, ptr %l, align 4, !dbg !5337
  %conv49 = trunc i32 %65 to i16, !dbg !5337
  %66 = load ptr, ptr %wnames, align 8, !dbg !5338
  %67 = load i32, ptr %i, align 4, !dbg !5339
  %idxprom = sext i32 %67 to i64, !dbg !5338
  %arrayidx = getelementptr ptr, ptr %66, i64 %idxprom, !dbg !5338
  %68 = load ptr, ptr %old_fid, align 8, !dbg !5340
  %69 = load ptr, ptr %root_fid, align 8, !dbg !5341
  %cmp50 = icmp eq ptr %68, %69, !dbg !5342
  %conv51 = zext i1 %cmp50 to i32, !dbg !5342
  %call52 = call ptr @p9_client_walk(ptr noundef %64, i16 noundef zeroext %conv49, ptr noundef %arrayidx, i32 noundef %conv51) #15, !dbg !5343
  store ptr %call52, ptr %fid, align 8, !dbg !5344
  %70 = load ptr, ptr %fid, align 8, !dbg !5345
  %71 = load ptr, ptr %old_fid, align 8, !dbg !5347
  %cmp53 = icmp ne ptr %70, %71, !dbg !5348
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !5349

if.then55:                                        ; preds = %cond.end
  %72 = load ptr, ptr %old_fid, align 8, !dbg !5350
  %call56 = call i32 @p9_fid_put(ptr noundef %72) #15, !dbg !5352
  %73 = load ptr, ptr %fid, align 8, !dbg !5353
  store ptr %73, ptr %old_fid, align 8, !dbg !5354
  br label %if.end57, !dbg !5355

if.end57:                                         ; preds = %if.then55, %cond.end
  %74 = load ptr, ptr %fid, align 8, !dbg !5356
  %call58 = call zeroext i1 @IS_ERR(ptr noundef %74) #15, !dbg !5358
  br i1 %call58, label %if.then59, label %if.end60, !dbg !5359

if.then59:                                        ; preds = %if.end57
  %75 = load ptr, ptr %wnames, align 8, !dbg !5360
  call void @kfree(ptr noundef %75) #15, !dbg !5362
  br label %err_out, !dbg !5363

if.end60:                                         ; preds = %if.end57
  %76 = load i32, ptr %l, align 4, !dbg !5364
  %77 = load i32, ptr %i, align 4, !dbg !5365
  %add = add i32 %77, %76, !dbg !5365
  store i32 %add, ptr %i, align 4, !dbg !5365
  br label %while.cond, !dbg !5329, !llvm.loop !5366

while.end:                                        ; preds = %while.cond
  %78 = load ptr, ptr %wnames, align 8, !dbg !5368
  call void @kfree(ptr noundef %78) #15, !dbg !5369
  br label %fid_out, !dbg !5369

fid_out:                                          ; preds = %while.end, %if.then6
  call void @llvm.dbg.label(metadata !5185), !dbg !5370
  %79 = load ptr, ptr %fid, align 8, !dbg !5371
  %call61 = call zeroext i1 @IS_ERR(ptr noundef %79) #15, !dbg !5373
  br i1 %call61, label %if.end75, label %if.then62, !dbg !5374

if.then62:                                        ; preds = %fid_out
  %80 = load ptr, ptr %dentry.addr, align 8, !dbg !5375
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %80, i32 0, i32 7, !dbg !5377
  %81 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5377
  %lock = getelementptr inbounds %struct.anon.16, ptr %81, i32 0, i32 0, !dbg !5377
  call void @spin_lock(ptr noundef %lock) #15, !dbg !5378
  %82 = load ptr, ptr %dentry.addr, align 8, !dbg !5379
  %call63 = call i32 @d_unhashed(ptr noundef %82) #15, !dbg !5381
  %tobool64 = icmp ne i32 %call63, 0, !dbg !5381
  br i1 %tobool64, label %if.then65, label %if.else70, !dbg !5382

if.then65:                                        ; preds = %if.then62
  %83 = load ptr, ptr %dentry.addr, align 8, !dbg !5383
  %d_lockref66 = getelementptr inbounds %struct.dentry, ptr %83, i32 0, i32 7, !dbg !5385
  %84 = getelementptr inbounds %struct.lockref, ptr %d_lockref66, i32 0, i32 0, !dbg !5385
  %lock67 = getelementptr inbounds %struct.anon.16, ptr %84, i32 0, i32 0, !dbg !5385
  call void @spin_unlock(ptr noundef %lock67) #15, !dbg !5386
  %85 = load ptr, ptr %fid, align 8, !dbg !5387
  %call68 = call i32 @p9_fid_put(ptr noundef %85) #15, !dbg !5388
  %call69 = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !5389
  store ptr %call69, ptr %fid, align 8, !dbg !5390
  br label %if.end74, !dbg !5391

if.else70:                                        ; preds = %if.then62
  %86 = load ptr, ptr %dentry.addr, align 8, !dbg !5392
  %87 = load ptr, ptr %fid, align 8, !dbg !5394
  call void @__add_fid(ptr noundef %86, ptr noundef %87) #15, !dbg !5395
  %88 = load ptr, ptr %fid, align 8, !dbg !5396
  %call71 = call ptr @p9_fid_get(ptr noundef %88) #15, !dbg !5397
  %89 = load ptr, ptr %dentry.addr, align 8, !dbg !5398
  %d_lockref72 = getelementptr inbounds %struct.dentry, ptr %89, i32 0, i32 7, !dbg !5399
  %90 = getelementptr inbounds %struct.lockref, ptr %d_lockref72, i32 0, i32 0, !dbg !5399
  %lock73 = getelementptr inbounds %struct.anon.16, ptr %90, i32 0, i32 0, !dbg !5399
  call void @spin_unlock(ptr noundef %lock73) #15, !dbg !5400
  br label %if.end74

if.end74:                                         ; preds = %if.else70, %if.then65
  br label %if.end75, !dbg !5401

if.end75:                                         ; preds = %if.end74, %fid_out
  br label %err_out, !dbg !5402

err_out:                                          ; preds = %if.end75, %if.then59, %if.then42
  call void @llvm.dbg.label(metadata !5186), !dbg !5403
  %91 = load ptr, ptr %v9ses, align 8, !dbg !5404
  %rename_sem76 = getelementptr inbounds %struct.v9fs_session_info, ptr %91, i32 0, i32 13, !dbg !5405
  call void @up_read(ptr noundef %rename_sem76) #15, !dbg !5406
  %92 = load ptr, ptr %fid, align 8, !dbg !5407
  store ptr %92, ptr %retval, align 8, !dbg !5408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5408

cleanup:                                          ; preds = %err_out, %if.then37, %if.then28, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_fid) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_fid) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %v9ses) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %uname) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnames) #14, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #14, !dbg !5409
  %93 = load ptr, ptr %retval, align 8, !dbg !5409
  ret ptr %93, !dbg !5409
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5410 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5415 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !5416 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5420, metadata !DIExpression()), !dbg !5421
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5422
  %0 = load i32, ptr %val, align 4, !dbg !5422
  ret i32 %0, !dbg !5423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !5424 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5442
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #15, !dbg !5443
  ret i1 %call, !dbg !5444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5445 dso_local void @do_trace_9p_fid_get(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !5448 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5455
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !5456
  ret void, !dbg !5457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !5458 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5463, metadata !DIExpression()), !dbg !5466
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5464, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5468
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5469, !range !4918, !noundef !934
  %tobool = trunc i8 %1 to i1, !dbg !5469
  %conv = zext i1 %tobool to i32, !dbg !5469
  %or = or i32 2, %conv, !dbg !5470
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !5471, !srcloc !5472

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5473
  br label %return, !dbg !5473

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5465), !dbg !5474
  store i1 true, ptr %retval, align 1, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5476
  ret i1 %2, !dbg !5476
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5477 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5481, metadata !DIExpression()), !dbg !5483
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5482, metadata !DIExpression()), !dbg !5484
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5485
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5486
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !5487
  ret void, !dbg !5488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5489 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5493, metadata !DIExpression()), !dbg !5497
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5494, metadata !DIExpression()), !dbg !5498
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5495, metadata !DIExpression()), !dbg !5499
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5496, metadata !DIExpression()), !dbg !5501
  %0 = load i32, ptr %i.addr, align 4, !dbg !5502
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5503
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5504
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !5505
  store i32 %call, ptr %old, align 4, !dbg !5501
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5506
  %tobool = icmp ne ptr %2, null, !dbg !5506
  br i1 %tobool, label %if.then, label %if.end, !dbg !5508

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5509
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5510
  store i32 %3, ptr %4, align 4, !dbg !5511
  br label %if.end, !dbg !5512

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5513
  %tobool1 = icmp ne i32 %5, 0, !dbg !5513
  %lnot = xor i1 %tobool1, true, !dbg !5513
  %lnot2 = xor i1 %lnot, true, !dbg !5513
  %lnot3 = xor i1 %lnot2, true, !dbg !5513
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5513
  %conv = sext i32 %lnot.ext to i64, !dbg !5513
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5513
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5513
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5515

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5516
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !5517
  br label %if.end18, !dbg !5517

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5518
  %cmp = icmp slt i32 %7, 0, !dbg !5518
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5518

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5518
  %9 = load i32, ptr %i.addr, align 4, !dbg !5518
  %add = add i32 %8, %9, !dbg !5518
  %cmp7 = icmp slt i32 %add, 0, !dbg !5518
  br label %lor.end, !dbg !5518

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5518
  %lnot11 = xor i1 %lnot9, true, !dbg !5518
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5518
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5518
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5518
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5518
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5520

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5521
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !5522
  br label %if.end17, !dbg !5522

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !5523
  ret void, !dbg !5523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5524 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5530, metadata !DIExpression()), !dbg !5532
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5531, metadata !DIExpression()), !dbg !5533
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5534
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !5535
  %1 = load i32, ptr %i.addr, align 4, !dbg !5536
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5537
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !5538
  ret i32 %call, !dbg !5539
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5540 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5543 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5552, metadata !DIExpression()), !dbg !5554
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5555
  %1 = load i64, ptr %size.addr, align 8, !dbg !5556
  %conv = trunc i64 %1 to i32, !dbg !5556
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5557
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5558
  %3 = load i64, ptr %size.addr, align 8, !dbg !5558
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !5558
  ret void, !dbg !5559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5560 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5563, metadata !DIExpression()), !dbg !5565
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  %0 = load i32, ptr %i.addr, align 4, !dbg !5567
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5568
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !5569
  ret i32 %call, !dbg !5570
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5571 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5576, metadata !DIExpression()), !dbg !5578
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5577, metadata !DIExpression()), !dbg !5579
  ret i1 true, !dbg !5580
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5581 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5586, metadata !DIExpression()), !dbg !5589
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5587, metadata !DIExpression()), !dbg !5590
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5588, metadata !DIExpression()), !dbg !5591
  ret void, !dbg !5592
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5593 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5596, metadata !DIExpression()), !dbg !5600
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5597, metadata !DIExpression()), !dbg !5601
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5598, metadata !DIExpression()), !dbg !5602
  %0 = load i32, ptr %i.addr, align 4, !dbg !5602
  store i32 %0, ptr %__ret, align 4, !dbg !5602
  %1 = load i32, ptr %__ret, align 4, !dbg !5602
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5602
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5602
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !5602, !srcloc !5603
  store i32 %3, ptr %__ret, align 4, !dbg !5602
  %4 = load i32, ptr %__ret, align 4, !dbg !5602
  store i32 %4, ptr %tmp, align 4, !dbg !5602
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !5604
  %5 = load i32, ptr %tmp, align 4, !dbg !5602
  ret i32 %5, !dbg !5605
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @v9fs_fid_find(ptr noundef %dentry, i32 %uid.coerce, i32 noundef %any) #0 align 16 !dbg !5606 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %dentry.addr = alloca ptr, align 8
  %any.addr = alloca i32, align 4
  %fid = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %h = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %____ptr12 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5608, metadata !DIExpression()), !dbg !5626
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5609, metadata !DIExpression()), !dbg !5627
  store i32 %any, ptr %any.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %any.addr, metadata !5610, metadata !DIExpression()), !dbg !5628
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #14, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %fid, metadata !5611, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5612, metadata !DIExpression()), !dbg !5631
  store i32 0, ptr %tmp, align 4, !dbg !5632
  %0 = load i32, ptr %tmp, align 4, !dbg !5635
  store ptr null, ptr %ret, align 8, !dbg !5636
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !5637
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11, !dbg !5638
  %2 = load ptr, ptr %d_fsdata, align 8, !dbg !5638
  %tobool = icmp ne ptr %2, null, !dbg !5637
  br i1 %tobool, label %if.then, label %if.end24, !dbg !5639

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #14, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %h, metadata !5613, metadata !DIExpression()), !dbg !5641
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !5642
  %d_fsdata1 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11, !dbg !5643
  store ptr %d_fsdata1, ptr %h, align 8, !dbg !5641
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !5644
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7, !dbg !5645
  %5 = getelementptr inbounds %struct.lockref, ptr %d_lockref, i32 0, i32 0, !dbg !5645
  %lock = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 0, !dbg !5645
  call void @spin_lock(ptr noundef %lock) #15, !dbg !5646
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #14, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5616, metadata !DIExpression()), !dbg !5647
  %6 = load ptr, ptr %h, align 8, !dbg !5647
  %first = getelementptr inbounds %struct.hlist_head, ptr %6, i32 0, i32 0, !dbg !5647
  %7 = load ptr, ptr %first, align 8, !dbg !5647
  store ptr %7, ptr %____ptr, align 8, !dbg !5647
  %8 = load ptr, ptr %____ptr, align 8, !dbg !5647
  %tobool3 = icmp ne ptr %8, null, !dbg !5647
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5647

cond.true:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5619, metadata !DIExpression()), !dbg !5648
  %9 = load ptr, ptr %____ptr, align 8, !dbg !5648
  store ptr %9, ptr %__mptr, align 8, !dbg !5648
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5648
  %add.ptr = getelementptr i8, ptr %10, i64 -56, !dbg !5648
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5647
  %11 = load ptr, ptr %tmp4, align 8, !dbg !5648
  br label %cond.end, !dbg !5647

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5647

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ null, %cond.false ], !dbg !5647
  store ptr %cond, ptr %tmp2, align 8, !dbg !5647
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #14, !dbg !5649
  %12 = load ptr, ptr %tmp2, align 8, !dbg !5647
  store ptr %12, ptr %fid, align 8, !dbg !5649
  br label %for.cond, !dbg !5649

for.cond:                                         ; preds = %cond.end20, %cond.end
  %13 = load ptr, ptr %fid, align 8, !dbg !5650
  %tobool5 = icmp ne ptr %13, null, !dbg !5649
  br i1 %tobool5, label %for.body, label %for.end, !dbg !5649

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %any.addr, align 4, !dbg !5651
  %tobool6 = icmp ne i32 %14, 0, !dbg !5651
  br i1 %tobool6, label %if.then10, label %lor.lhs.false, !dbg !5654

lor.lhs.false:                                    ; preds = %for.body
  %15 = load ptr, ptr %fid, align 8, !dbg !5655
  %uid7 = getelementptr inbounds %struct.p9_fid, ptr %15, i32 0, i32 6, !dbg !5656
  %coerce.dive8 = getelementptr inbounds %struct.kuid_t, ptr %uid7, i32 0, i32 0, !dbg !5657
  %16 = load i32, ptr %coerce.dive8, align 4, !dbg !5657
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5657
  %17 = load i32, ptr %coerce.dive9, align 4, !dbg !5657
  %call = call zeroext i1 @uid_eq(i32 %16, i32 %17) #15, !dbg !5657
  br i1 %call, label %if.then10, label %if.end, !dbg !5658

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  %18 = load ptr, ptr %fid, align 8, !dbg !5659
  store ptr %18, ptr %ret, align 8, !dbg !5661
  %19 = load ptr, ptr %ret, align 8, !dbg !5662
  %call11 = call ptr @p9_fid_get(ptr noundef %19) #15, !dbg !5663
  br label %for.end, !dbg !5664

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5665

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr12) #14, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %____ptr12, metadata !5621, metadata !DIExpression()), !dbg !5666
  %20 = load ptr, ptr %fid, align 8, !dbg !5666
  %dlist = getelementptr inbounds %struct.p9_fid, ptr %20, i32 0, i32 8, !dbg !5666
  %next = getelementptr inbounds %struct.hlist_node, ptr %dlist, i32 0, i32 0, !dbg !5666
  %21 = load ptr, ptr %next, align 8, !dbg !5666
  store ptr %21, ptr %____ptr12, align 8, !dbg !5666
  %22 = load ptr, ptr %____ptr12, align 8, !dbg !5666
  %tobool14 = icmp ne ptr %22, null, !dbg !5666
  br i1 %tobool14, label %cond.true15, label %cond.false19, !dbg !5666

cond.true15:                                      ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #14, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !5624, metadata !DIExpression()), !dbg !5667
  %23 = load ptr, ptr %____ptr12, align 8, !dbg !5667
  store ptr %23, ptr %__mptr16, align 8, !dbg !5667
  %24 = load ptr, ptr %__mptr16, align 8, !dbg !5667
  %add.ptr18 = getelementptr i8, ptr %24, i64 -56, !dbg !5667
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #14, !dbg !5666
  %25 = load ptr, ptr %tmp17, align 8, !dbg !5667
  br label %cond.end20, !dbg !5666

cond.false19:                                     ; preds = %for.inc
  br label %cond.end20, !dbg !5666

cond.end20:                                       ; preds = %cond.false19, %cond.true15
  %cond21 = phi ptr [ %25, %cond.true15 ], [ null, %cond.false19 ], !dbg !5666
  store ptr %cond21, ptr %tmp13, align 8, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr12) #14, !dbg !5650
  %26 = load ptr, ptr %tmp13, align 8, !dbg !5666
  store ptr %26, ptr %fid, align 8, !dbg !5650
  br label %for.cond, !dbg !5650, !llvm.loop !5668

for.end:                                          ; preds = %if.then10, %for.cond
  %27 = load ptr, ptr %dentry.addr, align 8, !dbg !5670
  %d_lockref22 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7, !dbg !5671
  %28 = getelementptr inbounds %struct.lockref, ptr %d_lockref22, i32 0, i32 0, !dbg !5671
  %lock23 = getelementptr inbounds %struct.anon.16, ptr %28, i32 0, i32 0, !dbg !5671
  call void @spin_unlock(ptr noundef %lock23) #15, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #14, !dbg !5673
  br label %if.end24, !dbg !5674

if.end24:                                         ; preds = %for.end, %entry
  %29 = load ptr, ptr %ret, align 8, !dbg !5675
  %tobool25 = icmp ne ptr %29, null, !dbg !5675
  br i1 %tobool25, label %if.end32, label %land.lhs.true, !dbg !5677

land.lhs.true:                                    ; preds = %if.end24
  %30 = load ptr, ptr %dentry.addr, align 8, !dbg !5678
  %d_inode = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5, !dbg !5679
  %31 = load ptr, ptr %d_inode, align 8, !dbg !5679
  %tobool26 = icmp ne ptr %31, null, !dbg !5678
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !5680

if.then27:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %dentry.addr, align 8, !dbg !5681
  %d_inode28 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5, !dbg !5682
  %33 = load ptr, ptr %d_inode28, align 8, !dbg !5682
  %34 = load i32, ptr %any.addr, align 4, !dbg !5683
  %tobool29 = icmp ne i32 %34, 0, !dbg !5683
  %coerce.dive30 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5684
  %35 = load i32, ptr %coerce.dive30, align 4, !dbg !5684
  %call31 = call ptr @v9fs_fid_find_inode(ptr noundef %33, i1 noundef zeroext false, i32 %35, i1 noundef zeroext %tobool29) #15, !dbg !5684
  store ptr %call31, ptr %ret, align 8, !dbg !5685
  br label %if.end32, !dbg !5686

if.end32:                                         ; preds = %if.then27, %land.lhs.true, %if.end24
  %36 = load ptr, ptr %ret, align 8, !dbg !5687
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #14, !dbg !5688
  ret ptr %36, !dbg !5689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local void @down_read(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5694 dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_fid_put(ptr noundef %fid) #4 align 16 !dbg !5700 {
entry:
  %retval = alloca i32, align 4
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fid.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %fid.addr, align 8, !dbg !5706
  %tobool = icmp ne ptr %0, null, !dbg !5706
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5708

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %fid.addr, align 8, !dbg !5709
  %call = call zeroext i1 @IS_ERR(ptr noundef %1) #15, !dbg !5710
  br i1 %call, label %if.then, label %if.end, !dbg !5711

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5712
  br label %return, !dbg !5712

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_fid_ref, i32 0, i32 1)) #15, !dbg !5713
  br i1 %call1, label %if.then2, label %if.end3, !dbg !5715

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %fid.addr, align 8, !dbg !5716
  call void @do_trace_9p_fid_put(ptr noundef %2) #15, !dbg !5717
  br label %if.end3, !dbg !5717

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %fid.addr, align 8, !dbg !5718
  %count = getelementptr inbounds %struct.p9_fid, ptr %3, i32 0, i32 2, !dbg !5720
  %call4 = call zeroext i1 @refcount_dec_and_test(ptr noundef %count) #15, !dbg !5721
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5722

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %fid.addr, align 8, !dbg !5724
  %call7 = call i32 @p9_client_clunk(ptr noundef %4) #15, !dbg !5725
  store i32 %call7, ptr %retval, align 4, !dbg !5726
  br label %return, !dbg !5726

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5727
  ret i32 %5, !dbg !5727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local void @up_read(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5729 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  %0 = load i64, ptr %error.addr, align 8, !dbg !5736
  %1 = inttoptr i64 %0 to ptr, !dbg !5737
  ret ptr %1, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotu(ptr noundef %v9ses) #4 align 16 !dbg !5739 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5745
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !5746
  %1 = load i32, ptr %flags, align 8, !dbg !5746
  %and = and i32 %1, 1, !dbg !5747
  ret i32 %and, !dbg !5748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v9fs_proto_dotl(ptr noundef %v9ses) #4 align 16 !dbg !5749 {
entry:
  %v9ses.addr = alloca ptr, align 8
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  %0 = load ptr, ptr %v9ses.addr, align 8, !dbg !5753
  %flags = getelementptr inbounds %struct.v9fs_session_info, ptr %0, i32 0, i32 0, !dbg !5754
  %1 = load i32, ptr %flags, align 8, !dbg !5754
  %and = and i32 %1, 2, !dbg !5755
  ret i32 %and, !dbg !5756
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5757 dso_local ptr @p9_client_attach(ptr noundef, ptr noundef, ptr noundef, i32, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5760 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5766
  %1 = ptrtoint ptr %0 to i64, !dbg !5766
  %2 = inttoptr i64 %1 to ptr, !dbg !5766
  %3 = ptrtoint ptr %2 to i64, !dbg !5766
  %cmp = icmp uge i64 %3, -4095, !dbg !5766
  %lnot = xor i1 %cmp, true, !dbg !5766
  %lnot1 = xor i1 %lnot, true, !dbg !5766
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5766
  %conv = sext i32 %lnot.ext to i64, !dbg !5766
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5766
  %tobool = icmp ne i64 %expval, 0, !dbg !5766
  ret i1 %tobool, !dbg !5767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @build_path_from_dentry(ptr noundef %v9ses, ptr noundef %dentry, ptr noundef %names) #0 align 16 !dbg !5768 {
entry:
  %retval = alloca i32, align 4
  %v9ses.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %names.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %wnames = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v9ses, ptr %v9ses.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v9ses.addr, metadata !5773, metadata !DIExpression()), !dbg !5781
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5774, metadata !DIExpression()), !dbg !5782
  store ptr %names, ptr %names.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %names.addr, metadata !5775, metadata !DIExpression()), !dbg !5783
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5776, metadata !DIExpression()), !dbg !5785
  store i32 0, ptr %n, align 4, !dbg !5785
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5784
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5777, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnames) #14, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %wnames, metadata !5778, metadata !DIExpression()), !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #14, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !5779, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5791
  store ptr %0, ptr %ds, align 8, !dbg !5793
  br label %for.cond, !dbg !5794

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %ds, align 8, !dbg !5795
  %2 = load ptr, ptr %ds, align 8, !dbg !5795
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !5795
  %3 = load ptr, ptr %d_parent, align 8, !dbg !5795
  %cmp = icmp eq ptr %1, %3, !dbg !5795
  %lnot = xor i1 %cmp, true, !dbg !5797
  br i1 %lnot, label %for.body, label %for.end, !dbg !5798

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !dbg !5799
  %inc = add i32 %4, 1, !dbg !5799
  store i32 %inc, ptr %n, align 4, !dbg !5799
  br label %for.inc, !dbg !5800

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %ds, align 8, !dbg !5801
  %d_parent1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3, !dbg !5802
  %6 = load ptr, ptr %d_parent1, align 8, !dbg !5802
  store ptr %6, ptr %ds, align 8, !dbg !5803
  br label %for.cond, !dbg !5804, !llvm.loop !5805

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %n, align 4, !dbg !5807
  %conv = sext i32 %7 to i64, !dbg !5807
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #17, !dbg !5808
  store ptr %call, ptr %wnames, align 8, !dbg !5809
  %8 = load ptr, ptr %wnames, align 8, !dbg !5810
  %tobool = icmp ne ptr %8, null, !dbg !5810
  br i1 %tobool, label %if.end, label %if.then, !dbg !5812

if.then:                                          ; preds = %for.end
  br label %err_out, !dbg !5813

if.end:                                           ; preds = %for.end
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !5814
  store ptr %9, ptr %ds, align 8, !dbg !5816
  %10 = load i32, ptr %n, align 4, !dbg !5817
  %sub = sub i32 %10, 1, !dbg !5818
  store i32 %sub, ptr %i, align 4, !dbg !5819
  br label %for.cond2, !dbg !5820

for.cond2:                                        ; preds = %for.inc6, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !5821
  %cmp3 = icmp sge i32 %11, 0, !dbg !5823
  br i1 %cmp3, label %for.body5, label %for.end8, !dbg !5824

for.body5:                                        ; preds = %for.cond2
  %12 = load ptr, ptr %ds, align 8, !dbg !5825
  %d_name = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 4, !dbg !5826
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !5827
  %13 = load ptr, ptr %name, align 8, !dbg !5827
  %14 = load ptr, ptr %wnames, align 8, !dbg !5828
  %15 = load i32, ptr %i, align 4, !dbg !5829
  %idxprom = sext i32 %15 to i64, !dbg !5828
  %arrayidx = getelementptr ptr, ptr %14, i64 %idxprom, !dbg !5828
  store ptr %13, ptr %arrayidx, align 8, !dbg !5830
  br label %for.inc6, !dbg !5828

for.inc6:                                         ; preds = %for.body5
  %16 = load i32, ptr %i, align 4, !dbg !5831
  %dec = add i32 %16, -1, !dbg !5831
  store i32 %dec, ptr %i, align 4, !dbg !5831
  %17 = load ptr, ptr %ds, align 8, !dbg !5832
  %d_parent7 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3, !dbg !5833
  %18 = load ptr, ptr %d_parent7, align 8, !dbg !5833
  store ptr %18, ptr %ds, align 8, !dbg !5834
  br label %for.cond2, !dbg !5835, !llvm.loop !5836

for.end8:                                         ; preds = %for.cond2
  %19 = load ptr, ptr %wnames, align 8, !dbg !5838
  %20 = load ptr, ptr %names.addr, align 8, !dbg !5839
  store ptr %19, ptr %20, align 8, !dbg !5840
  %21 = load i32, ptr %n, align 4, !dbg !5841
  store i32 %21, ptr %retval, align 4, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

err_out:                                          ; preds = %if.then
  call void @llvm.dbg.label(metadata !5780), !dbg !5843
  store i32 -12, ptr %retval, align 4, !dbg !5844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5844

cleanup:                                          ; preds = %err_out, %for.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #14, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnames) #14, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !5845
  %22 = load i32, ptr %retval, align 4, !dbg !5845
  ret i32 %22, !dbg !5845
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5846 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #4 align 16 !dbg !5849 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !5853
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !5854
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #15, !dbg !5855
  %conv = zext i1 %call to i32, !dbg !5855
  ret i32 %conv, !dbg !5856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5857 dso_local void @do_trace_9p_fid_put(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !5858 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5864
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !5865
  ret i1 %call, !dbg !5866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5867 dso_local i32 @p9_client_clunk(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5868 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5872, metadata !DIExpression()), !dbg !5874
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5876
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5877
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !5878
  ret i1 %call, !dbg !5879
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5880 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5884, metadata !DIExpression()), !dbg !5888
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5885, metadata !DIExpression()), !dbg !5889
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5886, metadata !DIExpression()), !dbg !5890
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #14, !dbg !5891
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5887, metadata !DIExpression()), !dbg !5892
  %0 = load i32, ptr %i.addr, align 4, !dbg !5893
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5894
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5895
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !5896
  store i32 %call, ptr %old, align 4, !dbg !5892
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5897
  %tobool = icmp ne ptr %2, null, !dbg !5897
  br i1 %tobool, label %if.then, label %if.end, !dbg !5899

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5900
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5901
  store i32 %3, ptr %4, align 4, !dbg !5902
  br label %if.end, !dbg !5903

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5904
  %6 = load i32, ptr %i.addr, align 4, !dbg !5906
  %cmp = icmp eq i32 %5, %6, !dbg !5907
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5908

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5909

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5911

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5913

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5913

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5911

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5915

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5917

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5917

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5915, !srcloc !5919
  br label %do.cond7, !dbg !5915

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5915

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5911

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5911

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5920

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5921
  %cmp12 = icmp slt i32 %7, 0, !dbg !5921
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5921

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5921
  %9 = load i32, ptr %i.addr, align 4, !dbg !5921
  %sub = sub i32 %8, %9, !dbg !5921
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5921
  br label %lor.end, !dbg !5921

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5921
  %lnot14 = xor i1 %lnot, true, !dbg !5921
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5921
  %conv = sext i32 %lnot.ext to i64, !dbg !5921
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5921
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5921
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5923

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5924
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !5925
  br label %if.end17, !dbg !5925

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #14, !dbg !5927
  %12 = load i1, ptr %retval, align 1, !dbg !5927
  ret i1 %12, !dbg !5927
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5928 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5930, metadata !DIExpression()), !dbg !5932
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5931, metadata !DIExpression()), !dbg !5933
  br label %do.body, !dbg !5934

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5935

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5937
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !5938
  %1 = load i32, ptr %i.addr, align 4, !dbg !5939
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5940
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !5941
  ret i32 %call, !dbg !5942
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5943 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5945, metadata !DIExpression()), !dbg !5947
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5946, metadata !DIExpression()), !dbg !5948
  %0 = load i32, ptr %i.addr, align 4, !dbg !5949
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5950
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !5951
  ret i32 %call, !dbg !5952
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5953 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5955, metadata !DIExpression()), !dbg !5959
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5956, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #14, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5957, metadata !DIExpression()), !dbg !5961
  %0 = load i32, ptr %i.addr, align 4, !dbg !5961
  %sub = sub i32 0, %0, !dbg !5961
  store i32 %sub, ptr %__ret, align 4, !dbg !5961
  %1 = load i32, ptr %__ret, align 4, !dbg !5961
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5961
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5961
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #14, !dbg !5961, !srcloc !5962
  store i32 %3, ptr %__ret, align 4, !dbg !5961
  %4 = load i32, ptr %__ret, align 4, !dbg !5961
  store i32 %4, ptr %tmp, align 4, !dbg !5961
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #14, !dbg !5963
  %5 = load i32, ptr %tmp, align 4, !dbg !5961
  ret i32 %5, !dbg !5964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5965 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5969, metadata !DIExpression()), !dbg !5973
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5971, metadata !DIExpression()), !dbg !5975
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5972, metadata !DIExpression()), !dbg !5977
  %0 = load i64, ptr %n.addr, align 8, !dbg !5978
  %1 = load i64, ptr %size.addr, align 8, !dbg !5978
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5978
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5978
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5978
  store i64 %4, ptr %bytes, align 8, !dbg !5978
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !5978
  %lnot = xor i1 %call, true, !dbg !5978
  %lnot1 = xor i1 %lnot, true, !dbg !5978
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5978
  %conv = sext i32 %lnot.ext to i64, !dbg !5978
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5978
  %tobool = icmp ne i64 %expval, 0, !dbg !5978
  br i1 %tobool, label %if.then, label %if.end, !dbg !5980

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5981

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5982
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5984
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5985

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5986
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5987
  br i1 %8, label %if.then2, label %if.end4, !dbg !5988

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5989
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5990
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !5991
  store ptr %call3, ptr %retval, align 8, !dbg !5992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5993
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5994
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !5995
  store ptr %call5, ptr %retval, align 8, !dbg !5996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5996

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !5997
  %13 = load ptr, ptr %retval, align 8, !dbg !5997
  ret ptr %13, !dbg !5997
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !5998 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6003, metadata !DIExpression()), !dbg !6004
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6005, !range !4918, !noundef !934
  %tobool = trunc i8 %0 to i1, !dbg !6005
  %lnot = xor i1 %tobool, true, !dbg !6005
  %lnot1 = xor i1 %lnot, true, !dbg !6005
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6005
  %conv = sext i32 %lnot.ext to i64, !dbg !6005
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6005
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6005
  ret i1 %tobool2, !dbg !6006
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6007 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6011, metadata !DIExpression()), !dbg !6016
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6012, metadata !DIExpression()), !dbg !6017
  %0 = load i64, ptr %size.addr, align 8, !dbg !6018
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6019
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6020

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6021
  %tobool = icmp ne i64 %2, 0, !dbg !6021
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6022

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6013, metadata !DIExpression()), !dbg !6024
  %3 = load i64, ptr %size.addr, align 8, !dbg !6025
  %cmp = icmp ugt i64 %3, 8192, !dbg !6027
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6028

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6029
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6030
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6031
  store ptr %call, ptr %retval, align 8, !dbg !6032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6032

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6033
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6033
  store i32 %call2, ptr %index, align 4, !dbg !6034
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6035
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6036
  %9 = ptrtoint ptr %8 to i64, !dbg !6036
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6037
  %idxprom = zext i32 %call3 to i64, !dbg !6038
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6038
  %10 = load i32, ptr %index, align 4, !dbg !6039
  %idxprom4 = zext i32 %10 to i64, !dbg !6038
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6038
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6038
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6040
  %13 = load i64, ptr %size.addr, align 8, !dbg !6041
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6042
  store ptr %call6, ptr %retval, align 8, !dbg !6043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6043

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6044
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6045
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6046
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6047
  store ptr %call8, ptr %retval, align 8, !dbg !6048
  br label %return, !dbg !6048

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6049
  ret ptr %16, !dbg !6049
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6050 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6051 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6052 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  %0 = load i64, ptr %size.addr, align 8, !dbg !6060
  %tobool = icmp ne i64 %0, 0, !dbg !6060
  br i1 %tobool, label %if.end, label %if.then, !dbg !6062

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6063
  br label %return, !dbg !6063

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6064
  %cmp = icmp ule i64 %1, 8, !dbg !6066
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6067

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6068
  br label %return, !dbg !6068

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6069
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6071
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6072

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6073
  %cmp4 = icmp ule i64 %3, 96, !dbg !6074
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6075

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6077
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6079
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6080

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6081
  %cmp9 = icmp ule i64 %5, 192, !dbg !6082
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6083

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6084
  br label %return, !dbg !6084

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6085
  %cmp12 = icmp ule i64 %6, 8, !dbg !6087
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6088

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6089
  br label %return, !dbg !6089

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6090
  %cmp15 = icmp ule i64 %7, 16, !dbg !6092
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6093

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6094
  br label %return, !dbg !6094

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6095
  %cmp18 = icmp ule i64 %8, 32, !dbg !6097
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6098

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6099
  br label %return, !dbg !6099

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6100
  %cmp21 = icmp ule i64 %9, 64, !dbg !6102
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6103

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6104
  br label %return, !dbg !6104

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6105
  %cmp24 = icmp ule i64 %10, 128, !dbg !6107
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6108

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6109
  br label %return, !dbg !6109

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6110
  %cmp27 = icmp ule i64 %11, 256, !dbg !6112
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6113

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6114
  br label %return, !dbg !6114

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6115
  %cmp30 = icmp ule i64 %12, 512, !dbg !6117
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6118

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6119
  br label %return, !dbg !6119

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6120
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6122
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6123

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6124
  br label %return, !dbg !6124

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6125
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6127
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6128

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6129
  br label %return, !dbg !6129

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6130
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6132
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6133

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6135
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6137
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6138

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6139
  br label %return, !dbg !6139

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6140
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6142
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6143

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6144
  br label %return, !dbg !6144

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6145
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6147
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6148

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6149
  br label %return, !dbg !6149

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6150
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6152
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6153

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6154
  br label %return, !dbg !6154

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6155
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6157
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6158

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6159
  br label %return, !dbg !6159

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6160
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6162
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6163

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6164
  br label %return, !dbg !6164

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6165
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6167
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6168

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6169
  br label %return, !dbg !6169

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6170
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6172
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6173

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6174
  br label %return, !dbg !6174

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6175
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6177
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6178

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6179
  br label %return, !dbg !6179

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6180, !range !4918, !noundef !934
  %tobool69 = trunc i8 %25 to i1, !dbg !6180
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6182

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6183

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #20, !dbg !6184, !srcloc !6187
  unreachable, !dbg !6184

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6188

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6189

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6190

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6192

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6190

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !6194, !srcloc !6196
  br label %do.end75, !dbg !6194

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6190

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6198
  ret i32 %26, !dbg !6198
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6199 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6202 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6206, metadata !DIExpression()), !dbg !6208
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6207, metadata !DIExpression()), !dbg !6209
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6210
  %and = and i32 %0, 17, !dbg !6210
  %cmp = icmp eq i32 %and, 0, !dbg !6210
  %lnot = xor i1 %cmp, true, !dbg !6210
  %lnot1 = xor i1 %lnot, true, !dbg !6210
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6210
  %conv = sext i32 %lnot.ext to i64, !dbg !6210
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6210
  %tobool = icmp ne i64 %expval, 0, !dbg !6210
  br i1 %tobool, label %if.then, label %if.end, !dbg !6212

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6214
  %and2 = and i32 %1, 1, !dbg !6216
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6216
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6217

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6218
  br label %return, !dbg !6218

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6219
  br label %return, !dbg !6219

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6221
  ret i32 %2, !dbg !6221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6222 dso_local void @__compiletime_assert_255() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #4 align 16 !dbg !6223 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6231
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !6232
  %1 = load ptr, ptr %pprev, align 8, !dbg !6232
  %tobool = icmp ne ptr %1, null, !dbg !6233
  %lnot = xor i1 %tobool, true, !dbg !6233
  ret i1 %lnot, !dbg !6234
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814}
!llvm.ident = !{!4815}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/9p/.fid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/9p/9p\22 -D KBUILD_BASENAME=\22fid\22 -D KBUILD_MODNAME=\229p\22 -D __KBUILD_MODNAME=kmod_9p -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/9p/fid.ll fs/9p/fid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !221, globals: !4806, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "fs/9p/fid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2e611021688e311eb0952cf909491e8")
!9 = !{!10, !19, !26, !34, !50, !55, !62, !68, !73, !79, !85, !92, !97, !105, !113, !122, !127, !132, !138, !150, !156, !163, !170, !183, !199, !204, !212}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !11, line: 9, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !12, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !12, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !12, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !51, line: 32, baseType: !12, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!54 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !56, line: 15, baseType: !12, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!59 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!60 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!61 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !63, line: 26, baseType: !12, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!66 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!67 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !69, line: 2052, baseType: !12, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!72 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !74, line: 54, baseType: !12, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "USRQUOTA", value: 0)
!77 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!78 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !80, line: 45, baseType: !12, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!83 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!84 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !86, line: 487, baseType: !12, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!89 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!90 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!91 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !93, line: 65, baseType: !12, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!96 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !98, line: 620, baseType: !12, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!101 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!102 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!103 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!104 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !98, line: 597, baseType: !106, size: 32, elements: !107)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!109 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!110 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!111 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!112 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !86, line: 547, baseType: !12, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121}
!115 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!116 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!117 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!118 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!119 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!120 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!121 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !86, line: 564, baseType: !12, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!125 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !86, line: 577, baseType: !12, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!130 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!131 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !86, line: 503, baseType: !12, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!135 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!136 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !139, line: 44, baseType: !12, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149}
!141 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!142 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!143 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!144 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!145 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!146 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!147 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!148 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!149 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !151, line: 16, baseType: !12, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "TT_NONE", value: 0)
!154 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!155 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !157, line: 51, baseType: !12, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!160 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!161 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!162 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !164, line: 42, baseType: !12, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "Connected", value: 0)
!167 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!168 = !DIEnumerator(name: "Disconnected", value: 2)
!169 = !DIEnumerator(name: "Hung", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_session_flags", file: !171, line: 33, baseType: !12, size: 32, elements: !172)
!171 = !DIFile(filename: "fs/9p/v9fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "949eddcef83527ffb4cb04cde5bb993a")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!173 = !DIEnumerator(name: "V9FS_PROTO_2000U", value: 1)
!174 = !DIEnumerator(name: "V9FS_PROTO_2000L", value: 2)
!175 = !DIEnumerator(name: "V9FS_ACCESS_SINGLE", value: 4)
!176 = !DIEnumerator(name: "V9FS_ACCESS_USER", value: 8)
!177 = !DIEnumerator(name: "V9FS_ACCESS_CLIENT", value: 16)
!178 = !DIEnumerator(name: "V9FS_POSIX_ACL", value: 32)
!179 = !DIEnumerator(name: "V9FS_NO_XATTR", value: 64)
!180 = !DIEnumerator(name: "V9FS_IGNORE_QV", value: 128)
!181 = !DIEnumerator(name: "V9FS_DIRECT_IO", value: 256)
!182 = !DIEnumerator(name: "V9FS_SYNC", value: 512)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_open_mode_t", file: !184, line: 208, baseType: !12, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!186 = !DIEnumerator(name: "P9_OREAD", value: 0)
!187 = !DIEnumerator(name: "P9_OWRITE", value: 1)
!188 = !DIEnumerator(name: "P9_ORDWR", value: 2)
!189 = !DIEnumerator(name: "P9_OEXEC", value: 3)
!190 = !DIEnumerator(name: "P9_OTRUNC", value: 16)
!191 = !DIEnumerator(name: "P9_OREXEC", value: 32)
!192 = !DIEnumerator(name: "P9_ORCLOSE", value: 64)
!193 = !DIEnumerator(name: "P9_OAPPEND", value: 128)
!194 = !DIEnumerator(name: "P9_OEXCL", value: 4096)
!195 = !DIEnumerator(name: "P9L_MODE_MASK", value: 8191)
!196 = !DIEnumerator(name: "P9L_DIRECT", value: 8192)
!197 = !DIEnumerator(name: "P9L_NOWRITECACHE", value: 16384)
!198 = !DIEnumerator(name: "P9L_LOOSE", value: 32768)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !200, line: 10, baseType: !12, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!201 = !{!202, !203}
!202 = !DIEnumerator(name: "false", value: 0)
!203 = !DIEnumerator(name: "true", value: 1)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !205, line: 119, baseType: !12, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!208 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!209 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!210 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!211 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!215 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!217 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!218 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!219 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!220 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!221 = !{!222, !233, !234, !360, !610, !612, !614, !615, !426, !320}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !224, line: 194, size: 64, elements: !225)
!224 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !223, file: !224, line: 195, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !224, line: 198, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !224, line: 199, baseType: !227, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !228, file: !224, line: 199, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fid", file: !164, line: 148, size: 704, elements: !236)
!236 = !{!237, !329, !332, !337, !338, !347, !348, !357, !358, !359}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !235, file: !164, line: 149, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !164, line: 102, size: 1408, elements: !240)
!240 = !{!241, !284, !285, !286, !289, !290, !291, !295, !310, !324, !325}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !239, file: !164, line: 103, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !243, line: 29, baseType: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !243, line: 17, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 18, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 18, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !247, file: !243, line: 19, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 14, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !250, file: !251, line: 15, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !255, line: 44, baseType: !256)
!255 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !255, line: 14, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 15, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 15, size: 32, elements: !260)
!260 = !{!261, !266, !276}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !255, line: 16, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !224, line: 174, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 172, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !263, file: !224, line: 173, baseType: !106, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !255, line: 24, baseType: !267, size: 16)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !255, line: 24, size: 16, elements: !268)
!268 = !{!269, !275}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !267, file: !255, line: 25, baseType: !270, size: 8)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !271, line: 17, baseType: !272)
!271 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !273, line: 21, baseType: !274)
!273 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!274 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !267, file: !255, line: 26, baseType: !270, size: 8, offset: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !255, line: 28, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !259, file: !255, line: 28, size: 32, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !277, file: !255, line: 29, baseType: !280, size: 16)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !271, line: 19, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !273, line: 24, baseType: !282)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !277, file: !255, line: 30, baseType: !280, size: 16, offset: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !239, file: !164, line: 104, baseType: !12, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !239, file: !164, line: 105, baseType: !274, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !239, file: !164, line: 106, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !164, line: 106, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !239, file: !164, line: 107, baseType: !163, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !239, file: !164, line: 108, baseType: !233, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !239, file: !164, line: 109, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !294, line: 325, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !239, file: !164, line: 121, baseType: !296, size: 64, offset: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !164, line: 111, size: 64, elements: !297)
!297 = !{!298, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !296, file: !164, line: 115, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !164, line: 112, size: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !299, file: !164, line: 113, baseType: !106, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !299, file: !164, line: 114, baseType: !106, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !296, file: !164, line: 120, baseType: !304, size: 32)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !164, line: 116, size: 32, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !304, file: !164, line: 117, baseType: !280, size: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !304, file: !164, line: 118, baseType: !308, size: 8, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !224, line: 35, baseType: !309)
!309 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !239, file: !164, line: 123, baseType: !311, size: 192, offset: 448)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !312, line: 19, size: 192, elements: !313)
!312 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!313 = !{!314, !322, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !311, file: !312, line: 20, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !316, line: 296, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!317 = !{!318, !319, !321}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !315, file: !316, line: 297, baseType: !242, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !315, file: !316, line: 299, baseType: !320, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !224, line: 154, baseType: !12)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !315, file: !316, line: 300, baseType: !233, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !311, file: !312, line: 21, baseType: !12, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !311, file: !312, line: 22, baseType: !12, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !239, file: !164, line: 124, baseType: !311, size: 192, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !164, line: 126, baseType: !326, size: 520, offset: 832)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 65)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !235, file: !164, line: 150, baseType: !330, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !271, line: 21, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !273, line: 27, baseType: !12)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !235, file: !164, line: 151, baseType: !333, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !205, line: 113, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !205, line: 111, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !334, file: !205, line: 112, baseType: !262, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !235, file: !164, line: 152, baseType: !106, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !235, file: !164, line: 153, baseType: !339, size: 128, offset: 192)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !184, line: 363, size: 128, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !339, file: !184, line: 364, baseType: !270, size: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !339, file: !184, line: 365, baseType: !330, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !339, file: !184, line: 366, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !271, line: 23, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !273, line: 31, baseType: !346)
!346 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "iounit", scope: !235, file: !164, line: 154, baseType: !330, size: 32, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !235, file: !164, line: 155, baseType: !349, size: 32, offset: 352)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !350, line: 23, baseType: !351)
!350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 21, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !350, line: 22, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !224, line: 37, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !356, line: 49, baseType: !12)
!356 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rdir", scope: !235, file: !164, line: 157, baseType: !233, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dlist", scope: !235, file: !164, line: 159, baseType: !228, size: 128, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ilist", scope: !235, file: !164, line: 160, baseType: !228, size: 128, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !363, line: 110, size: 1472, elements: !364)
!363 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!364 = !{!365, !375, !376, !383, !384, !385, !386, !387, !388, !389, !390, !396, !397, !398, !399, !400, !401, !553, !554, !555, !556, !557, !588, !591, !595, !605}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !362, file: !363, line: 111, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !367, line: 13, baseType: !368)
!367 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !224, line: 181, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !224, line: 179, size: 64, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !369, file: !224, line: 180, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !271, line: 22, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !273, line: 30, baseType: !374)
!374 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !362, file: !363, line: 112, baseType: !349, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !362, file: !363, line: 113, baseType: !377, size: 32, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !350, line: 28, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 26, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !350, line: 27, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !224, line: 38, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !356, line: 50, baseType: !12)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !362, file: !363, line: 114, baseType: !349, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !362, file: !363, line: 115, baseType: !377, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !362, file: !363, line: 116, baseType: !349, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !362, file: !363, line: 117, baseType: !377, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !362, file: !363, line: 118, baseType: !349, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !362, file: !363, line: 119, baseType: !377, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !362, file: !363, line: 120, baseType: !12, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !362, file: !363, line: 121, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !392, line: 24, baseType: !393)
!392 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 24, size: 64, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !392, line: 24, baseType: !344, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !362, file: !363, line: 122, baseType: !391, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !362, file: !363, line: 123, baseType: !391, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !362, file: !363, line: 124, baseType: !391, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !362, file: !363, line: 125, baseType: !391, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !362, file: !363, line: 127, baseType: !274, size: 8, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !362, file: !363, line: 129, baseType: !402, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !404, line: 195, size: 1728, elements: !405)
!404 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!405 = !{!406, !407, !412, !430, !444, !447, !448, !455, !456, !457, !458, !461, !462, !463, !465, !466, !515, !538}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !403, file: !404, line: 196, baseType: !333, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !403, file: !404, line: 197, baseType: !408, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !404, line: 28, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !224, line: 104, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !271, line: 20, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !273, line: 26, baseType: !106)
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 198, baseType: !413, size: 192, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 198, size: 192, elements: !414)
!414 = !{!415, !421}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !413, file: !404, line: 199, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !224, line: 190, size: 128, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !224, line: 191, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !416, file: !224, line: 191, baseType: !419, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !413, file: !404, line: 200, baseType: !422, size: 192, align: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !423, line: 5, size: 192, align: 64, elements: !424)
!423 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!424 = !{!425, !427, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !422, file: !423, line: 6, baseType: !426, size: 64)
!426 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !422, file: !423, line: 7, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !422, file: !423, line: 8, baseType: !428, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !403, file: !404, line: 205, baseType: !431, size: 320, offset: 256)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !432, line: 48, size: 320, elements: !433)
!432 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!433 = !{!434, !435, !436, !441, !443}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !432, line: 49, baseType: !366, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !431, file: !432, line: 55, baseType: !366, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !431, file: !432, line: 57, baseType: !437, size: 32, offset: 128)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !438, line: 15, size: 32, elements: !439)
!438 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !437, file: !438, line: 20, baseType: !262, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !431, file: !432, line: 59, baseType: !442, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 23, baseType: !250)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !431, file: !432, line: 60, baseType: !416, size: 128, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !403, file: !404, line: 206, baseType: !445, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !404, line: 206, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !403, file: !404, line: 207, baseType: !233, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 208, baseType: !449, size: 64, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 208, size: 64, elements: !450)
!450 = !{!451, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !449, file: !404, line: 209, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !453, line: 8, baseType: !373)
!453 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !449, file: !404, line: 210, baseType: !452, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !403, file: !404, line: 212, baseType: !452, size: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !403, file: !404, line: 213, baseType: !349, size: 32, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !403, file: !404, line: 214, baseType: !377, size: 32, offset: 864)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !403, file: !404, line: 215, baseType: !459, size: 32, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !404, line: 31, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !224, line: 110, baseType: !330)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !403, file: !404, line: 216, baseType: !282, size: 16, offset: 928)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !403, file: !404, line: 217, baseType: !282, size: 16, offset: 944)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !404, line: 221, baseType: !464, size: 16, offset: 960)
!464 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !404, line: 228, baseType: !426, size: 64, offset: 1024)
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 245, baseType: !467, size: 320, offset: 1088)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 245, size: 320, elements: !468)
!468 = !{!469, !506}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !467, file: !404, line: 246, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !404, line: 114, size: 320, elements: !471)
!471 = !{!472, !473, !485, !488, !503}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !470, file: !404, line: 116, baseType: !426, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !404, line: 117, baseType: !474, size: 64, offset: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !404, line: 117, size: 64, elements: !475)
!475 = !{!476, !484}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !404, line: 118, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !404, line: 118, size: 64, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !477, file: !404, line: 120, baseType: !280, size: 16)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !477, file: !404, line: 121, baseType: !481, size: 48, offset: 16)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 6)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !474, file: !404, line: 127, baseType: !426, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !404, line: 129, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !404, line: 102, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !470, file: !404, line: 130, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !404, line: 108, size: 192, elements: !491)
!491 = !{!492, !501, !502}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !404, line: 109, baseType: !493, size: 128, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !224, line: 232, size: 128, align: 64, elements: !494)
!494 = !{!495, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !224, line: 233, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !493, file: !224, line: 234, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !496}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !490, file: !404, line: 110, baseType: !333, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !490, file: !404, line: 111, baseType: !308, size: 8, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !470, file: !404, line: 131, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !404, line: 247, baseType: !507, size: 320)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !404, line: 247, size: 320, elements: !508)
!508 = !{!509, !510, !511, !512, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !507, file: !404, line: 248, baseType: !426, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !507, file: !404, line: 249, baseType: !426, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !507, file: !404, line: 250, baseType: !486, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !507, file: !404, line: 251, baseType: !489, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !507, file: !404, line: 252, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !404, line: 260, baseType: !516, size: 256, offset: 1408)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !404, line: 260, size: 256, elements: !517)
!517 = !{!518, !526}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !516, file: !404, line: 261, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !404, line: 134, size: 256, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !519, file: !404, line: 135, baseType: !233, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !519, file: !404, line: 136, baseType: !523, size: 256)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 4)
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !404, line: 262, baseType: !527, size: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !516, file: !404, line: 262, size: 256, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !527, file: !404, line: 264, baseType: !416, size: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !527, file: !404, line: 265, baseType: !531, size: 128, offset: 128)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !532, line: 22, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!533 = !{!534, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !531, file: !532, line: 23, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !532, line: 23, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !531, file: !532, line: 24, baseType: !426, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !403, file: !404, line: 280, baseType: !539, size: 64, offset: 1664)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !404, line: 176, size: 192, elements: !541)
!541 = !{!542, !551, !552}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !540, file: !404, line: 177, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !404, line: 171, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!106, !402, !547, !549, !402}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !540, file: !404, line: 178, baseType: !402, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !540, file: !404, line: 179, baseType: !486, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !362, file: !363, line: 130, baseType: !402, size: 64, offset: 832)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !362, file: !363, line: 131, baseType: !402, size: 64, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !362, file: !363, line: 132, baseType: !402, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !362, file: !363, line: 135, baseType: !233, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !362, file: !363, line: 137, baseType: !558, size: 64, offset: 1088)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !560, line: 14, size: 1088, elements: !561)
!560 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!561 = !{!562, !563, !572, !573, !574, !575, !576, !577}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !559, file: !560, line: 15, baseType: !333, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !559, file: !560, line: 17, baseType: !564, size: 320, offset: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !565, line: 22, size: 320, elements: !566)
!565 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!566 = !{!567, !568, !569, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !565, line: 23, baseType: !442, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !564, file: !565, line: 24, baseType: !372, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !564, file: !565, line: 26, baseType: !416, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !564, file: !565, line: 28, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !559, file: !560, line: 19, baseType: !426, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !559, file: !560, line: 20, baseType: !366, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !559, file: !560, line: 23, baseType: !228, size: 128, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !559, file: !560, line: 24, baseType: !349, size: 32, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !559, file: !560, line: 29, baseType: !366, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !559, file: !560, line: 36, baseType: !578, size: 320, offset: 768)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !579, line: 15, size: 320, elements: !580)
!579 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!580 = !{!581, !582, !583, !584, !585, !586, !587}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !578, file: !579, line: 16, baseType: !442, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !578, file: !579, line: 18, baseType: !106, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !578, file: !579, line: 19, baseType: !106, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !578, file: !579, line: 20, baseType: !106, size: 32, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !578, file: !579, line: 21, baseType: !106, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !578, file: !579, line: 22, baseType: !426, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !579, line: 23, baseType: !426, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !362, file: !363, line: 138, baseType: !589, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !350, line: 18, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !362, file: !363, line: 139, baseType: !592, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !594, line: 16, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !362, file: !363, line: 140, baseType: !596, size: 64, offset: 1280)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !363, line: 25, size: 64, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !597, file: !363, line: 26, baseType: !262, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !597, file: !363, line: 27, baseType: !106, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !597, file: !363, line: 28, baseType: !602, offset: 64)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: -1)
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !363, line: 142, baseType: !606, size: 128, offset: 1344)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !363, line: 142, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !606, file: !363, line: 143, baseType: !106, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !606, file: !363, line: 144, baseType: !493, size: 128, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !227)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !232)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !617, line: 746, size: 58368, elements: !618)
!617 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!618 = !{!619, !627, !628, !629, !630, !631, !632, !633, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !704, !715, !815, !819, !822, !853, !854, !855, !856, !867, !869, !870, !871, !872, !873, !874, !885, !886, !889, !890, !891, !892, !893, !894, !895, !896, !903, !904, !911, !912, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3950, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3998, !4004, !4005, !4006, !4007, !4008, !4010, !4013, !4020, !4025, !4028, !4031, !4034, !4085, !4223, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4261, !4262, !4263, !4272, !4280, !4281, !4282, !4283, !4284, !4289, !4290, !4291, !4294, !4295, !4298, !4301, !4304, !4311, !4314, !4315, !4401, !4402, !4403, !4404, !4405, !4411, !4412, !4413, !4414, !4417, !4418, !4421, !4424, !4425, !4428, !4429, !4430, !4433, !4434, !4435, !4436, !4437, !4438, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4470, !4471, !4477, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4559, !4561, !4562, !4563, !4564, !4565, !4566, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4583, !4584, !4585}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !616, file: !617, line: 752, baseType: !620, size: 192)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !621, line: 56, size: 192, elements: !622)
!621 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!622 = !{!623, !624, !625, !626}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !621, line: 57, baseType: !426, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !620, file: !621, line: 58, baseType: !426, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !620, file: !621, line: 59, baseType: !330, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !620, file: !621, line: 61, baseType: !330, size: 32, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !616, file: !617, line: 754, baseType: !12, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !616, file: !617, line: 767, baseType: !233, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !616, file: !617, line: 768, baseType: !333, size: 32, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !617, line: 770, baseType: !12, size: 32, offset: 352)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !616, file: !617, line: 771, baseType: !12, size: 32, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !616, file: !617, line: 774, baseType: !106, size: 32, offset: 416)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !616, file: !617, line: 775, baseType: !634, size: 128, offset: 448)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !635, line: 58, size: 128, elements: !636)
!635 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!636 = !{!637, !643, !648, !649}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !634, file: !635, line: 59, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !639, line: 60, size: 64, elements: !640)
!639 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !639, line: 61, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !635, line: 60, baseType: !644, size: 32, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !635, line: 60, size: 32, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !644, file: !635, line: 61, baseType: !12, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !644, file: !635, line: 62, baseType: !262, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !634, file: !635, line: 65, baseType: !280, size: 16, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !634, file: !635, line: 65, baseType: !280, size: 16, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !616, file: !617, line: 776, baseType: !12, size: 32, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !616, file: !617, line: 777, baseType: !426, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !616, file: !617, line: 778, baseType: !615, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !616, file: !617, line: 787, baseType: !106, size: 32, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !616, file: !617, line: 788, baseType: !106, size: 32, offset: 800)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !616, file: !617, line: 790, baseType: !106, size: 32, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !616, file: !617, line: 792, baseType: !106, size: 32, offset: 864)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !616, file: !617, line: 793, baseType: !106, size: 32, offset: 896)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !616, file: !617, line: 794, baseType: !106, size: 32, offset: 928)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !616, file: !617, line: 795, baseType: !12, size: 32, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !616, file: !617, line: 797, baseType: !661, size: 2048, offset: 1024)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !617, line: 551, size: 2048, elements: !662)
!662 = !{!663, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !683, !686, !687, !688}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !661, file: !617, line: 553, baseType: !664, size: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !617, line: 411, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !664, file: !617, line: 412, baseType: !426, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !664, file: !617, line: 413, baseType: !330, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !661, file: !617, line: 554, baseType: !422, size: 192, align: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !661, file: !617, line: 555, baseType: !344, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !661, file: !617, line: 556, baseType: !344, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !661, file: !617, line: 558, baseType: !416, size: 128, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !661, file: !617, line: 559, baseType: !12, size: 32, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !661, file: !617, line: 561, baseType: !344, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !661, file: !617, line: 562, baseType: !344, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !661, file: !617, line: 563, baseType: !344, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !661, file: !617, line: 564, baseType: !344, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !661, file: !617, line: 565, baseType: !372, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !661, file: !617, line: 566, baseType: !344, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !661, file: !617, line: 568, baseType: !344, size: 64, offset: 1024)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !661, file: !617, line: 571, baseType: !106, size: 32, offset: 1088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !661, file: !617, line: 572, baseType: !682, size: 64, offset: 1152)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !661, file: !617, line: 574, baseType: !684, size: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !617, line: 49, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !661, file: !617, line: 576, baseType: !684, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !661, file: !617, line: 578, baseType: !426, size: 64, offset: 1344)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !661, file: !617, line: 588, baseType: !689, size: 512, align: 512, offset: 1536)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !617, line: 497, size: 512, align: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !689, file: !617, line: 498, baseType: !344, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !689, file: !617, line: 499, baseType: !344, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !689, file: !617, line: 500, baseType: !344, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !689, file: !617, line: 501, baseType: !330, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !689, file: !617, line: 502, baseType: !330, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !689, file: !617, line: 503, baseType: !426, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !689, file: !617, line: 504, baseType: !426, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !689, file: !617, line: 505, baseType: !426, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !689, file: !617, line: 506, baseType: !700, size: 64, align: 64, offset: 448)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !617, line: 445, size: 64, align: 64, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !700, file: !617, line: 446, baseType: !12, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !700, file: !617, line: 447, baseType: !12, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !616, file: !617, line: 798, baseType: !705, size: 384, offset: 3072)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !617, line: 592, size: 384, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !705, file: !617, line: 593, baseType: !416, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !705, file: !617, line: 594, baseType: !426, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !705, file: !617, line: 595, baseType: !426, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !705, file: !617, line: 596, baseType: !12, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !705, file: !617, line: 597, baseType: !282, size: 16, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !705, file: !617, line: 598, baseType: !282, size: 16, offset: 304)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !705, file: !617, line: 600, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !616, file: !617, line: 799, baseType: !716, size: 1792, offset: 3456)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !617, line: 610, size: 1792, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !812, !813}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !716, file: !617, line: 611, baseType: !422, size: 192, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !716, file: !617, line: 618, baseType: !344, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !716, file: !617, line: 619, baseType: !344, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !716, file: !617, line: 620, baseType: !344, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !716, file: !617, line: 621, baseType: !344, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !716, file: !617, line: 622, baseType: !344, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !716, file: !617, line: 629, baseType: !372, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !716, file: !617, line: 630, baseType: !344, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !617, line: 631, baseType: !12, size: 32, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !716, file: !617, line: 653, baseType: !12, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !716, file: !617, line: 654, baseType: !12, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !716, file: !617, line: 655, baseType: !12, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !716, file: !617, line: 656, baseType: !12, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !716, file: !617, line: 662, baseType: !732, size: 512, offset: 704)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !93, line: 118, size: 512, elements: !733)
!733 = !{!734, !742, !743, !748, !808, !809, !810, !811}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !93, line: 119, baseType: !735, size: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !736, line: 9, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !736, line: 10, baseType: !422, size: 192, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !735, file: !736, line: 11, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !741, line: 29, baseType: !372)
!741 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !732, file: !93, line: 120, baseType: !740, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !732, file: !93, line: 121, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!92, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !732, file: !93, line: 122, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !93, line: 159, size: 512, align: 512, elements: !751)
!751 = !{!752, !777, !778, !781, !791, !792, !803, !807}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !750, file: !93, line: 160, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !93, line: 215, size: 4608, align: 512, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !93, line: 216, baseType: !442, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !754, file: !93, line: 217, baseType: !12, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !754, file: !93, line: 218, baseType: !12, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !754, file: !93, line: 219, baseType: !12, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !754, file: !93, line: 220, baseType: !12, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !754, file: !93, line: 221, baseType: !12, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !754, file: !93, line: 222, baseType: !12, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !754, file: !93, line: 223, baseType: !12, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !754, file: !93, line: 224, baseType: !12, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !754, file: !93, line: 226, baseType: !12, size: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !754, file: !93, line: 227, baseType: !282, size: 16, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !754, file: !93, line: 228, baseType: !282, size: 16, offset: 208)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !754, file: !93, line: 229, baseType: !12, size: 32, offset: 224)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !754, file: !93, line: 235, baseType: !740, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !754, file: !93, line: 236, baseType: !747, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !754, file: !93, line: 237, baseType: !740, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !754, file: !93, line: 238, baseType: !747, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !754, file: !93, line: 239, baseType: !774, size: 4096, align: 512, offset: 512)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 4096, align: 512, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 8)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !750, file: !93, line: 161, baseType: !12, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !750, file: !93, line: 162, baseType: !779, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !224, line: 32, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !356, line: 96, baseType: !106)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !750, file: !93, line: 163, baseType: !782, size: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !783, line: 274, baseType: !784)
!783 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !783, line: 274, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !784, file: !783, line: 274, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !783, line: 69, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !783, line: 64, size: 32, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !788, file: !783, line: 65, baseType: !12, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !750, file: !93, line: 164, baseType: !747, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !750, file: !93, line: 165, baseType: !793, size: 128, offset: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !736, line: 14, size: 128, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !793, file: !736, line: 15, baseType: !796, size: 128)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !423, line: 26, size: 128, elements: !797)
!797 = !{!798, !802}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !796, file: !423, line: 27, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !423, line: 12, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !799, file: !423, line: 13, baseType: !428, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !796, file: !423, line: 28, baseType: !428, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !750, file: !93, line: 166, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!740}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !750, file: !93, line: 167, baseType: !740, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !732, file: !93, line: 123, baseType: !270, size: 8, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !732, file: !93, line: 124, baseType: !270, size: 8, offset: 456)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !732, file: !93, line: 125, baseType: !270, size: 8, offset: 464)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !732, file: !93, line: 126, baseType: !270, size: 8, offset: 472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !716, file: !617, line: 671, baseType: !732, size: 512, offset: 1216)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !716, file: !617, line: 679, baseType: !814, size: 64, offset: 1728)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !616, file: !617, line: 800, baseType: !816, size: 64, offset: 5248)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !617, line: 800, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !616, file: !617, line: 809, baseType: !820, size: 64, offset: 5312)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !617, line: 70, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !616, file: !617, line: 825, baseType: !823, size: 2048, align: 512, offset: 5632)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !617, line: 509, size: 2048, align: 512, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !823, file: !617, line: 511, baseType: !344, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !823, file: !617, line: 512, baseType: !344, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !823, file: !617, line: 513, baseType: !344, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !823, file: !617, line: 514, baseType: !344, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !823, file: !617, line: 515, baseType: !344, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !823, file: !617, line: 516, baseType: !344, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !823, file: !617, line: 518, baseType: !344, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !823, file: !617, line: 519, baseType: !344, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !823, file: !617, line: 520, baseType: !372, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !823, file: !617, line: 522, baseType: !344, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !823, file: !617, line: 523, baseType: !344, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !823, file: !617, line: 524, baseType: !372, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !823, file: !617, line: 526, baseType: !372, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !823, file: !617, line: 527, baseType: !344, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !823, file: !617, line: 529, baseType: !344, size: 64, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !823, file: !617, line: 530, baseType: !344, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !823, file: !617, line: 531, baseType: !344, size: 64, offset: 1024)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !823, file: !617, line: 532, baseType: !344, size: 64, offset: 1088)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !823, file: !617, line: 533, baseType: !344, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !823, file: !617, line: 535, baseType: !344, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !823, file: !617, line: 536, baseType: !344, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !823, file: !617, line: 537, baseType: !344, size: 64, offset: 1344)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !823, file: !617, line: 538, baseType: !344, size: 64, offset: 1408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !823, file: !617, line: 539, baseType: !344, size: 64, offset: 1472)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !823, file: !617, line: 540, baseType: !344, size: 64, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !823, file: !617, line: 541, baseType: !344, size: 64, offset: 1600)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !823, file: !617, line: 542, baseType: !344, size: 64, offset: 1664)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !823, file: !617, line: 543, baseType: !344, size: 64, offset: 1728)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !616, file: !617, line: 833, baseType: !12, size: 32, offset: 7680)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !616, file: !617, line: 836, baseType: !12, size: 32, offset: 7712)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !616, file: !617, line: 837, baseType: !106, size: 32, offset: 7744)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !616, file: !617, line: 838, baseType: !857, size: 64, offset: 7808)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !860, line: 19, baseType: !861)
!860 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !860, line: 19, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !861, file: !860, line: 19, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 64, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 1)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !616, file: !617, line: 839, baseType: !868, size: 64, offset: 7872)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !616, file: !617, line: 840, baseType: !859, size: 64, offset: 7936)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !616, file: !617, line: 841, baseType: !233, size: 64, offset: 8000)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !616, file: !617, line: 843, baseType: !282, size: 16, offset: 8064)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !616, file: !617, line: 845, baseType: !282, size: 16, offset: 8080)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !616, file: !617, line: 848, baseType: !106, size: 32, offset: 8096)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !616, file: !617, line: 849, baseType: !875, size: 32, offset: 8128)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !617, line: 718, size: 32, elements: !876)
!876 = !{!877, !884}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !875, file: !617, line: 724, baseType: !878, size: 32)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !617, line: 719, size: 32, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !878, file: !617, line: 720, baseType: !270, size: 8)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !878, file: !617, line: 721, baseType: !270, size: 8, offset: 8)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !878, file: !617, line: 722, baseType: !270, size: 8, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !878, file: !617, line: 723, baseType: !270, size: 8, offset: 24)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !875, file: !617, line: 725, baseType: !330, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !616, file: !617, line: 850, baseType: !416, size: 128, offset: 8192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !616, file: !617, line: 851, baseType: !887, size: 64, offset: 8320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !617, line: 60, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !616, file: !617, line: 855, baseType: !426, size: 64, offset: 8384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !616, file: !617, line: 856, baseType: !270, size: 8, offset: 8448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !616, file: !617, line: 857, baseType: !270, size: 8, offset: 8456)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !616, file: !617, line: 858, baseType: !106, size: 32, offset: 8480)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !616, file: !617, line: 859, baseType: !416, size: 128, offset: 8512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !616, file: !617, line: 860, baseType: !106, size: 32, offset: 8640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !616, file: !617, line: 861, baseType: !416, size: 128, offset: 8704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !616, file: !617, line: 873, baseType: !897, size: 256, offset: 8832)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !617, line: 376, size: 256, elements: !898)
!898 = !{!899, !900, !901, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !897, file: !617, line: 381, baseType: !426, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !897, file: !617, line: 384, baseType: !346, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !897, file: !617, line: 389, baseType: !346, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !897, file: !617, line: 392, baseType: !346, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !616, file: !617, line: 875, baseType: !416, size: 128, offset: 9088)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !616, file: !617, line: 877, baseType: !905, size: 320, offset: 9216)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !906, line: 86, size: 320, elements: !907)
!906 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !905, file: !906, line: 87, baseType: !106, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !905, file: !906, line: 88, baseType: !416, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !905, file: !906, line: 89, baseType: !416, size: 128, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !616, file: !617, line: 878, baseType: !422, size: 192, align: 64, offset: 9536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !616, file: !617, line: 881, baseType: !913, size: 64, offset: 9728)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !915)
!915 = !{!916, !3869}
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !35, line: 734, baseType: !917, size: 10240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !35, line: 734, size: 10240, elements: !918)
!918 = !{!919, !923, !937, !3749, !3750, !3751, !3752, !3753, !3754, !3761, !3762, !3763, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3802, !3803, !3806, !3849, !3850, !3851, !3854, !3855, !3856, !3859, !3860, !3861, !3867, !3868}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !35, line: 739, baseType: !920, size: 512, align: 512)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !35, line: 739, size: 512, align: 512, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !920, file: !35, line: 747, baseType: !262, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !917, file: !35, line: 750, baseType: !924, size: 128, offset: 512)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !925, line: 218, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!926 = !{!927, !935, !936}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !925, line: 219, baseType: !928, size: 32)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !925, line: 219, size: 32, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !928, file: !925, line: 220, baseType: !242, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !928, file: !925, line: 221, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !925, line: 197, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !925, line: 197, elements: !934)
!934 = !{}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !924, file: !925, line: 223, baseType: !12, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !924, file: !925, line: 224, baseType: !233, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !917, file: !35, line: 752, baseType: !938, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!426, !941, !426, !426, !426, !426}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !69, line: 994, size: 1856, align: 64, elements: !943)
!943 = !{!944, !950, !951, !953, !954, !962, !965, !966, !1022, !1023, !1032, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !69, line: 995, baseType: !945, size: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !69, line: 995, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !945, file: !69, line: 996, baseType: !638, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !945, file: !69, line: 997, baseType: !493, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !945, file: !69, line: 998, baseType: !12, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !942, file: !69, line: 1005, baseType: !242, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !942, file: !69, line: 1006, baseType: !952, size: 32, offset: 160)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !224, line: 156, baseType: !12)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !942, file: !69, line: 1007, baseType: !366, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !942, file: !69, line: 1008, baseType: !955, size: 256, offset: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !956, line: 66, size: 256, elements: !957)
!956 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !955, file: !956, line: 67, baseType: !366, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !955, file: !956, line: 68, baseType: !442, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !955, file: !956, line: 70, baseType: !437, size: 32, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !955, file: !956, line: 72, baseType: !416, size: 128, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !942, file: !69, line: 1009, baseType: !963, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !224, line: 52, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !356, line: 88, baseType: !374)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !942, file: !69, line: 1010, baseType: !12, size: 32, offset: 576)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !942, file: !69, line: 1011, baseType: !967, size: 256, offset: 640)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !69, line: 948, size: 256, elements: !968)
!968 = !{!969, !992, !1018, !1019, !1020, !1021}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !967, file: !69, line: 949, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !971, line: 34, baseType: !972)
!971 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !971, line: 25, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !972, file: !971, line: 26, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !976, line: 27, baseType: !977)
!976 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !976, line: 13, size: 64, elements: !978)
!978 = !{!979, !991}
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !976, line: 14, baseType: !980, size: 32)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !976, line: 14, size: 32, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !980, file: !976, line: 15, baseType: !262, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !976, line: 16, baseType: !984, size: 32)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !976, line: 16, size: 32, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !984, file: !976, line: 18, baseType: !270, size: 8)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !984, file: !976, line: 19, baseType: !988, size: 24, offset: 8)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 24, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 3)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !977, file: !976, line: 26, baseType: !254, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !967, file: !69, line: 950, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !11, line: 59, size: 768, elements: !995)
!995 = !{!996, !997, !998, !999, !1001, !1002, !1009, !1010}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !994, file: !11, line: 61, baseType: !333, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !994, file: !11, line: 62, baseType: !12, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !994, file: !11, line: 63, baseType: !242, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !994, file: !11, line: 65, baseType: !1000, size: 256, offset: 128)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !524)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !994, file: !11, line: 66, baseType: !223, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !994, file: !11, line: 68, baseType: !1003, size: 192, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1004, line: 41, baseType: !1005)
!1004 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1004, line: 37, size: 192, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1005, file: !1004, line: 38, baseType: !242, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1005, file: !1004, line: 39, baseType: !416, size: 128, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !994, file: !11, line: 69, baseType: !493, size: 128, align: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !994, file: !11, line: 70, baseType: !1011, offset: 768)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, elements: !603)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !11, line: 54, size: 128, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1012, file: !11, line: 55, baseType: !106, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1012, file: !11, line: 56, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !11, line: 56, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !967, file: !69, line: 951, baseType: !10, size: 32, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !967, file: !69, line: 952, baseType: !349, size: 32, offset: 160)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !967, file: !69, line: 952, baseType: !349, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !967, file: !69, line: 953, baseType: !106, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !942, file: !69, line: 1012, baseType: !360, size: 64, offset: 896)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !942, file: !69, line: 1013, baseType: !1024, size: 256, offset: 960)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !69, line: 970, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1024, file: !69, line: 971, baseType: !426, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1024, file: !69, line: 972, baseType: !12, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1024, file: !69, line: 973, baseType: !12, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1024, file: !69, line: 974, baseType: !12, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1024, file: !69, line: 975, baseType: !12, size: 32, offset: 160)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1024, file: !69, line: 976, baseType: !963, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !942, file: !69, line: 1014, baseType: !1033, size: 128, offset: 1216)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1034, line: 8, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1035 = !{!1036, !3739}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1033, file: !1034, line: 9, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1039, line: 70, size: 256, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1040 = !{!1041, !3736, !3737, !3738}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1038, file: !1039, line: 71, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1044, line: 82, size: 1536, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1045 = !{!1046, !1047, !1052, !1060, !1061, !1076, !3703, !3705, !3718, !3719, !3720, !3721, !3722, !3728, !3729, !3730}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1043, file: !1044, line: 84, baseType: !12, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1043, file: !1044, line: 85, baseType: !1048, size: 32, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !783, line: 275, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !783, line: 275, size: 32, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1049, file: !783, line: 275, baseType: !787, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1043, file: !1044, line: 86, baseType: !1053, size: 128, offset: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1054, line: 38, size: 128, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1055 = !{!1056, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1053, file: !1054, line: 39, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1053, file: !1054, line: 39, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1043, file: !1044, line: 87, baseType: !1042, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1043, file: !1044, line: 88, baseType: !1062, size: 128, offset: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1044, line: 49, size: 128, elements: !1063)
!1063 = !{!1064, !1073}
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1044, line: 50, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !1044, line: 50, size: 64, elements: !1066)
!1066 = !{!1067, !1072}
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !1044, line: 51, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1065, file: !1044, line: 51, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1068, file: !1044, line: 52, baseType: !330, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1068, file: !1044, line: 52, baseType: !330, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1065, file: !1044, line: 54, baseType: !344, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1062, file: !1044, line: 56, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1043, file: !1044, line: 89, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !69, line: 641, size: 4800, elements: !1079)
!1079 = !{!1080, !1082, !1083, !1084, !1085, !1086, !1087, !1090, !1091, !1282, !3517, !3518, !3519, !3520, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3685, !3688, !3689, !3690, !3699, !3700, !3701, !3702}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1078, file: !69, line: 642, baseType: !1081, size: 16)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !224, line: 24, baseType: !282)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1078, file: !69, line: 643, baseType: !282, size: 16, offset: 16)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1078, file: !69, line: 644, baseType: !349, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1078, file: !69, line: 645, baseType: !416, size: 128, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1078, file: !69, line: 646, baseType: !377, size: 32, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1078, file: !69, line: 647, baseType: !12, size: 32, offset: 224)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1078, file: !69, line: 650, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !69, line: 607, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1078, file: !69, line: 651, baseType: !1088, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1078, file: !69, line: 654, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !69, line: 1966, size: 2048, align: 512, elements: !1095)
!1095 = !{!1096, !1100, !1113, !1119, !1123, !1127, !1131, !1135, !1139, !1143, !1147, !1148, !1154, !1158, !1196, !1227, !1237, !1243, !1247, !1251, !1255, !1259, !1263, !1269, !1273}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1094, file: !69, line: 1967, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1042, !1077, !1042, !12}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1094, file: !69, line: 1968, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!504, !1042, !1077, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1106, line: 10, size: 128, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1107 = !{!1108, !1112}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1105, file: !1106, line: 11, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !233}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1105, file: !1106, line: 12, baseType: !233, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1094, file: !69, line: 1969, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!106, !1117, !1077, !106}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !392, line: 42, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1094, file: !69, line: 1970, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1088, !1077, !106, !308}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1094, file: !69, line: 1972, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!106, !1042, !514, !106}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1094, file: !69, line: 1974, baseType: !1128, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!106, !1117, !1077, !1042, !1081, !308}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1094, file: !69, line: 1976, baseType: !1132, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!106, !1042, !1077, !1042}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1094, file: !69, line: 1977, baseType: !1136, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!106, !1077, !1042}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1094, file: !69, line: 1978, baseType: !1140, size: 64, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!106, !1117, !1077, !1042, !504}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1094, file: !69, line: 1980, baseType: !1144, size: 64, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!106, !1117, !1077, !1042, !1081}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1094, file: !69, line: 1982, baseType: !1136, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1094, file: !69, line: 1983, baseType: !1149, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!106, !1117, !1077, !1042, !1081, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !224, line: 21, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !224, line: 18, baseType: !330)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1094, file: !69, line: 1985, baseType: !1155, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!106, !1117, !1077, !1042, !1077, !1042, !12}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1094, file: !69, line: 1987, baseType: !1159, size: 64, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!106, !1117, !1042, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !69, line: 226, size: 640, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1177, !1186, !1187, !1193, !1194, !1195}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1163, file: !69, line: 227, baseType: !12, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1163, file: !69, line: 228, baseType: !1081, size: 16, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !69, line: 241, baseType: !1168, size: 32, offset: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !69, line: 241, size: 32, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1168, file: !69, line: 242, baseType: !349, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1168, file: !69, line: 243, baseType: !1172, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1173, line: 16, baseType: !1174)
!1173 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 14, size: 32, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1174, file: !1173, line: 15, baseType: !354, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !69, line: 245, baseType: !1178, size: 32, offset: 96)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !69, line: 245, size: 32, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1178, file: !69, line: 246, baseType: !377, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1178, file: !69, line: 247, baseType: !1182, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1173, line: 20, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 18, size: 32, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1183, file: !1173, line: 19, baseType: !381, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1163, file: !69, line: 249, baseType: !963, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1163, file: !69, line: 250, baseType: !1188, size: 128, offset: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !453, line: 13, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1188, file: !453, line: 14, baseType: !452, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1188, file: !453, line: 15, baseType: !1192, size: 64, offset: 64)
!1192 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1163, file: !69, line: 251, baseType: !1188, size: 128, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1163, file: !69, line: 252, baseType: !1188, size: 128, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1163, file: !69, line: 259, baseType: !941, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1094, file: !69, line: 1988, baseType: !1197, size: 64, offset: 896)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!106, !1117, !1200, !1202, !330, !12}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1204, line: 22, size: 1280, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1203, file: !1204, line: 23, baseType: !330, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1203, file: !1204, line: 24, baseType: !1081, size: 16, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1203, file: !1204, line: 25, baseType: !12, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1203, file: !1204, line: 26, baseType: !460, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1203, file: !1204, line: 27, baseType: !344, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1203, file: !1204, line: 28, baseType: !344, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1203, file: !1204, line: 41, baseType: !344, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1203, file: !1204, line: 42, baseType: !1152, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1203, file: !1204, line: 43, baseType: !1152, size: 32, offset: 352)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1203, file: !1204, line: 44, baseType: !349, size: 32, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1203, file: !1204, line: 45, baseType: !377, size: 32, offset: 416)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1203, file: !1204, line: 46, baseType: !963, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1203, file: !1204, line: 47, baseType: !1188, size: 128, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1203, file: !1204, line: 48, baseType: !1188, size: 128, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1203, file: !1204, line: 49, baseType: !1188, size: 128, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1203, file: !1204, line: 50, baseType: !1188, size: 128, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1203, file: !1204, line: 51, baseType: !344, size: 64, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1203, file: !1204, line: 52, baseType: !344, size: 64, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1203, file: !1204, line: 53, baseType: !330, size: 32, offset: 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1203, file: !1204, line: 54, baseType: !330, size: 32, offset: 1184)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1203, file: !1204, line: 55, baseType: !344, size: 64, offset: 1216)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1094, file: !69, line: 1990, baseType: !1228, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1231, !1042, !514, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !224, line: 66, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !356, line: 73, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !356, line: 15, baseType: !1192)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !224, line: 61, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !356, line: 72, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !356, line: 16, baseType: !426)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1094, file: !69, line: 1991, baseType: !1238, size: 64, offset: 1024)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!106, !1077, !1241, !344, !344}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !69, line: 55, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1094, file: !69, line: 1993, baseType: !1244, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!106, !1077, !106}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1094, file: !69, line: 1994, baseType: !1248, size: 64, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!106, !1077, !1042, !941, !12, !1081}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1094, file: !69, line: 1997, baseType: !1252, size: 64, offset: 1216)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!106, !1117, !1077, !941, !1081}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1094, file: !69, line: 1999, baseType: !1256, size: 64, offset: 1280)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1088, !1117, !1042, !106}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1094, file: !69, line: 2001, baseType: !1260, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!106, !1117, !1042, !1088, !106}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1094, file: !69, line: 2003, baseType: !1264, size: 64, offset: 1408)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!106, !1117, !1042, !1267}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !69, line: 76, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1094, file: !69, line: 2005, baseType: !1270, size: 64, offset: 1472)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!106, !1042, !1267}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1094, file: !69, line: 2006, baseType: !1274, size: 64, offset: 1536)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1277, !1077}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !69, line: 3192, size: 192, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1278, file: !69, line: 3193, baseType: !315, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1278, file: !69, line: 3194, baseType: !330, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1078, file: !69, line: 655, baseType: !1283, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !69, line: 1190, size: 10752, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !2585, !2717, !2757, !2840, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2857, !2861, !2862, !3254, !3257, !3316, !3319, !3320, !3321, !3362, !3388, !3389, !3390, !3391, !3392, !3393, !3396, !3400, !3409, !3410, !3411, !3412, !3471, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1284, file: !69, line: 1191, baseType: !416, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1284, file: !69, line: 1192, baseType: !1152, size: 32, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1284, file: !69, line: 1193, baseType: !274, size: 8, offset: 160)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1284, file: !69, line: 1194, baseType: !426, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1284, file: !69, line: 1195, baseType: !963, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1284, file: !69, line: 1196, baseType: !1292, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !69, line: 2366, size: 576, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1304, !1308, !1312, !1316, !2573, !2574, !2575, !2577, !2578, !2579, !2581, !2582, !2583, !2584}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1293, file: !69, line: 2367, baseType: !504, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1293, file: !69, line: 2368, baseType: !106, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1293, file: !69, line: 2376, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!106, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1303, line: 32, flags: DIFlagFwdDecl)
!1303 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1293, file: !69, line: 2377, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !69, line: 75, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1293, file: !69, line: 2378, baseType: !1309, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1042, !1292, !106, !504, !233}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1293, file: !69, line: 2380, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1283}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1293, file: !69, line: 2381, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1326, !2216, !2242, !2243, !2244, !2245, !2249, !2252, !2253, !2254, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2322, !2326, !2346, !2366, !2367, !2368, !2369, !2378, !2401, !2402, !2405, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2419, !2420, !2531, !2539, !2540, !2541, !2543, !2547, !2548, !2552, !2553, !2554, !2555, !2557, !2558, !2559, !2566, !2567, !2568, !2572}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1318, file: !20, line: 403, baseType: !19, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1318, file: !20, line: 406, baseType: !416, size: 128, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1318, file: !20, line: 409, baseType: !1323, size: 448, offset: 192)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: 56)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1318, file: !20, line: 417, baseType: !1327, size: 768, offset: 640)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1328)
!1328 = !{!1329, !2209, !2210, !2211, !2214}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1327, file: !20, line: 46, baseType: !1330, size: 512)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1331, line: 64, size: 512, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1332 = !{!1333, !1334, !1335, !1337, !1381, !2089, !2199, !2204, !2205, !2206, !2207, !2208}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1330, file: !1331, line: 65, baseType: !504, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1330, file: !1331, line: 66, baseType: !416, size: 128, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1330, file: !1331, line: 67, baseType: !1336, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1330, file: !1331, line: 68, baseType: !1338, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1331, line: 168, size: 768, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1339, file: !1331, line: 169, baseType: !416, size: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1339, file: !1331, line: 170, baseType: !242, size: 32, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1339, file: !1331, line: 171, baseType: !1330, size: 512, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1339, file: !1331, line: 172, baseType: !1345, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1331, line: 133, size: 192, elements: !1348)
!1348 = !{!1349, !1356, !1361}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1347, file: !1331, line: 134, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!106, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1347, file: !1331, line: 135, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!504, !1354}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1347, file: !1331, line: 136, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!106, !1354, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1331, line: 125, size: 20736, elements: !1368)
!1368 = !{!1369, !1371, !1375, !1376, !1380}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1367, file: !1331, line: 126, baseType: !1370, size: 192)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !989)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1367, file: !1331, line: 127, baseType: !1372, size: 4096, offset: 192)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 4096, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1367, file: !1331, line: 128, baseType: !106, size: 32, offset: 4288)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1367, file: !1331, line: 129, baseType: !1377, size: 16384, offset: 4320)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 2048)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1367, file: !1331, line: 130, baseType: !106, size: 32, offset: 20704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1330, file: !1331, line: 69, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1331, line: 116, size: 384, elements: !1385)
!1385 = !{!1386, !1390, !1409, !2049, !2079, !2083}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1384, file: !1331, line: 117, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1336}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1384, file: !1331, line: 118, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1394, line: 254, size: 128, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1395 = !{!1396, !1405}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1393, file: !1394, line: 255, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1231, !1336, !1400, !514}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1394, line: 30, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1401, file: !1394, line: 31, baseType: !504, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1401, file: !1394, line: 32, baseType: !1081, size: 16, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1393, file: !1394, line: 256, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1231, !1336, !1400, !504, !1234}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1384, file: !1331, line: 119, baseType: !1410, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1394, line: 84, size: 320, elements: !1414)
!1414 = !{!1415, !1416, !1420, !2045, !2047}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1413, file: !1394, line: 85, baseType: !504, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1413, file: !1394, line: 86, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1081, !1336, !1400, !106}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1413, file: !1394, line: 88, baseType: !1421, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1081, !1336, !1424, !106}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1394, line: 175, size: 512, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !2036, !2040, !2041}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1425, file: !1394, line: 176, baseType: !1401, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1425, file: !1394, line: 177, baseType: !1234, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1425, file: !1394, line: 178, baseType: !233, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1425, file: !1394, line: 179, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !69, line: 472, size: 1536, align: 64, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !2028, !2029, !2030, !2033, !2034, !2035}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1435, file: !69, line: 473, baseType: !1077, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1435, file: !69, line: 474, baseType: !315, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1435, file: !69, line: 475, baseType: !431, size: 320, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1435, file: !69, line: 476, baseType: !320, size: 32, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1435, file: !69, line: 477, baseType: !262, size: 32, offset: 544)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1435, file: !69, line: 482, baseType: !796, size: 128, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1435, file: !69, line: 483, baseType: !426, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1435, file: !69, line: 484, baseType: !426, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1435, file: !69, line: 485, baseType: !1446, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !69, line: 404, size: 1280, elements: !1449)
!1449 = !{!1450, !1771, !1841, !1845, !1849, !1866, !1872, !1876, !1881, !1885, !1889, !1893, !1992, !1996, !2000, !2004, !2009, !2013, !2020, !2024}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1448, file: !69, line: 405, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!106, !1454, !1751}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1456)
!1456 = !{!1457, !1458, !1745, !1750}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !35, line: 75, baseType: !426, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !35, line: 83, baseType: !1459, size: 320, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !35, line: 83, size: 320, elements: !1460)
!1460 = !{!1461, !1482, !1496, !1500, !1744}
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !35, line: 84, baseType: !1462, size: 320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !35, line: 84, size: 320, elements: !1463)
!1463 = !{!1464, !1475, !1476, !1481}
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !35, line: 90, baseType: !1465, size: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !35, line: 90, size: 128, elements: !1466)
!1466 = !{!1467, !1468, !1473, !1474}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1465, file: !35, line: 91, baseType: !416, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !35, line: 94, baseType: !1469, size: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !35, line: 94, size: 128, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1469, file: !35, line: 96, baseType: !233, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1469, file: !35, line: 98, baseType: !12, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1465, file: !35, line: 102, baseType: !416, size: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1465, file: !35, line: 103, baseType: !416, size: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1462, file: !35, line: 106, baseType: !1434, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !35, line: 107, baseType: !1477, size: 64, offset: 192)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !35, line: 107, size: 64, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1477, file: !35, line: 108, baseType: !426, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1477, file: !35, line: 109, baseType: !426, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1462, file: !35, line: 117, baseType: !426, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !35, line: 119, baseType: !1483, size: 320)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !35, line: 119, size: 320, elements: !1484)
!1484 = !{!1485, !1486, !1489, !1490, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1483, file: !35, line: 124, baseType: !426, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1483, file: !35, line: 125, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1483, file: !35, line: 126, baseType: !426, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1483, file: !35, line: 127, baseType: !426, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !35, line: 128, baseType: !1492, size: 64, offset: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !35, line: 128, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1492, file: !35, line: 133, baseType: !426, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1492, file: !35, line: 138, baseType: !366, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !35, line: 141, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !35, line: 141, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1497, file: !35, line: 142, baseType: !426, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !35, line: 144, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !35, line: 144, size: 128, elements: !1502)
!1502 = !{!1503, !1743}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1501, file: !35, line: 146, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1506)
!1506 = !{!1507, !1517, !1538, !1549, !1550, !1551, !1552, !1725, !1726, !1727}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1505, file: !27, line: 127, baseType: !1508, size: 384)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1509)
!1509 = !{!1510, !1511, !1513, !1514, !1515, !1516}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1508, file: !27, line: 22, baseType: !426, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1508, file: !27, line: 23, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1508, file: !27, line: 24, baseType: !1512, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1508, file: !27, line: 25, baseType: !426, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1508, file: !27, line: 26, baseType: !426, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1508, file: !27, line: 27, baseType: !426, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1505, file: !27, line: 128, baseType: !1518, size: 128, offset: 384)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1519, line: 105, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1518, file: !1519, line: 110, baseType: !426, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1519, line: 118, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1519, line: 95, size: 448, elements: !1525)
!1525 = !{!1526, !1527, !1533, !1534, !1535, !1536, !1537}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1524, file: !1519, line: 96, baseType: !366, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1524, file: !1519, line: 97, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1519, line: 60, baseType: !1530)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1524, file: !1519, line: 98, baseType: !1528, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1524, file: !1519, line: 99, baseType: !308, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1524, file: !1519, line: 100, baseType: !308, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1524, file: !1519, line: 101, baseType: !493, size: 128, align: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1524, file: !1519, line: 102, baseType: !1532, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1505, file: !27, line: 129, baseType: !1539, size: 256, offset: 512)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1540, line: 26, size: 256, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1539, file: !1540, line: 27, baseType: !12, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1539, file: !1540, line: 28, baseType: !1544, size: 192, offset: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1545, line: 43, size: 192, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1545, line: 44, baseType: !442, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1544, file: !1545, line: 45, baseType: !416, size: 128, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1505, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !27, line: 131, baseType: !12, size: 32, offset: 800)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1505, file: !27, line: 132, baseType: !426, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1505, file: !27, line: 133, baseType: !1553, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1556)
!1556 = !{!1557, !1561, !1721}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1555, file: !27, line: 83, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !1454}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1555, file: !27, line: 89, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !12)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1568, line: 512, size: 896, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1569 = !{!1570, !1688, !1689, !1696, !1703, !1713, !1714, !1715, !1717, !1719}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 513, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !1568, line: 513, size: 320, elements: !1572)
!1572 = !{!1573, !1684, !1685, !1686, !1687}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1571, file: !1568, line: 514, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1576)
!1576 = !{!1577, !1586, !1587, !1595, !1602, !1603, !1608, !1609, !1614, !1615, !1618, !1677, !1678, !1679, !1680, !1681, !1682}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !35, line: 628, baseType: !1578, size: 128)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !35, line: 628, size: 128, elements: !1579)
!1579 = !{!1580, !1585}
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !35, line: 629, baseType: !1581, size: 128)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !35, line: 629, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1581, file: !35, line: 631, baseType: !426, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1581, file: !35, line: 632, baseType: !426, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1578, file: !35, line: 635, baseType: !493, size: 128, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1575, file: !35, line: 639, baseType: !913, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1575, file: !35, line: 640, baseType: !1588, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1589, line: 297, baseType: !1590)
!1589 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1589, line: 297, size: 64, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1590, file: !1589, line: 297, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1594, line: 19, baseType: !426)
!1594 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !35, line: 646, baseType: !1596, size: 64, offset: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !35, line: 646, size: 64, elements: !1597)
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1596, file: !35, line: 647, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !426)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1596, file: !35, line: 648, baseType: !1600, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1575, file: !35, line: 666, baseType: !106, size: 32, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1575, file: !35, line: 667, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !35, line: 580, baseType: !431, size: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1575, file: !35, line: 670, baseType: !308, size: 8, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1575, file: !35, line: 681, baseType: !1610, size: 256, offset: 512)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !35, line: 678, size: 256, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1610, file: !35, line: 679, baseType: !422, size: 192, align: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1610, file: !35, line: 680, baseType: !426, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1575, file: !35, line: 689, baseType: !416, size: 128, offset: 768)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1575, file: !35, line: 691, baseType: !1616, size: 64, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1575, file: !35, line: 694, baseType: !1619, size: 64, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1568, line: 563, size: 1024, elements: !1622)
!1622 = !{!1623, !1627, !1628, !1632, !1636, !1640, !1641, !1645, !1649, !1653, !1654, !1655, !1659, !1663, !1669, !1673}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1621, file: !1568, line: 564, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1574}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1621, file: !1568, line: 569, baseType: !1624, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1621, file: !1568, line: 571, baseType: !1629, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!106, !1574, !426}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1621, file: !1568, line: 572, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!106, !1574}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1621, file: !1568, line: 578, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!106, !1574, !426, !426, !426}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1621, file: !1568, line: 580, baseType: !1562, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1621, file: !1568, line: 581, baseType: !1642, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1565, !1566, !12}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1621, file: !1568, line: 582, baseType: !1646, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!1565, !1566, !426, !426}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1621, file: !1568, line: 584, baseType: !1650, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!426, !1574}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1621, file: !1568, line: 588, baseType: !1562, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1621, file: !1568, line: 591, baseType: !1562, size: 64, offset: 640)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1621, file: !1568, line: 597, baseType: !1656, size: 64, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!106, !1574, !426, !233, !106, !106}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1621, file: !1568, line: 603, baseType: !1660, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!504, !1574}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1621, file: !1568, line: 613, baseType: !1664, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!106, !1574, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1621, file: !1568, line: 625, baseType: !1670, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1667, !1574, !426}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1621, file: !1568, line: 633, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1454, !1574, !426}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1575, file: !35, line: 697, baseType: !426, size: 64, offset: 1024)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1575, file: !35, line: 699, baseType: !941, size: 64, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1575, file: !35, line: 700, baseType: !233, size: 64, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1575, file: !35, line: 711, baseType: !366, size: 64, offset: 1216)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1575, file: !35, line: 717, baseType: !1667, size: 64, offset: 1280)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1575, file: !35, line: 722, baseType: !1683, offset: 1344)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !934)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1571, file: !1568, line: 515, baseType: !320, size: 32, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1571, file: !1568, line: 516, baseType: !426, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1571, file: !1568, line: 517, baseType: !426, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1571, file: !1568, line: 518, baseType: !426, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !1568, line: 520, baseType: !34, size: 32, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1567, file: !1568, line: 522, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1594, line: 22, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1594, line: 22, size: 64, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1692, file: !1594, line: 22, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1594, line: 15, baseType: !426)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1567, file: !1568, line: 524, baseType: !1697, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1589, line: 372, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1589, line: 372, size: 64, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1699, file: !1589, line: 372, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1594, line: 16, baseType: !426)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1568, line: 527, baseType: !1704, size: 64, offset: 512)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1568, line: 527, size: 64, elements: !1705)
!1705 = !{!1706, !1712}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1704, file: !1568, line: 528, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1594, line: 21, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1594, line: 21, size: 64, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1708, file: !1594, line: 21, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1594, line: 14, baseType: !426)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1704, file: !1568, line: 529, baseType: !1691, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1567, file: !1568, line: 534, baseType: !1454, size: 64, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1567, file: !1568, line: 535, baseType: !1454, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1567, file: !1568, line: 541, baseType: !1716, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1567, file: !1568, line: 545, baseType: !1718, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1567, file: !1568, line: 549, baseType: !1720, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1589, line: 520, baseType: !1454)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1555, file: !27, line: 100, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!106, !1504, !426, !426, !106}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1505, file: !27, line: 134, baseType: !233, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1505, file: !27, line: 135, baseType: !106, size: 32, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1505, file: !27, line: 136, baseType: !1728, size: 128, offset: 1088)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1505, file: !27, line: 136, size: 128, elements: !1729)
!1729 = !{!1730, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1728, file: !27, line: 137, baseType: !1731, size: 128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1732, line: 6, size: 128, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1731, file: !1732, line: 7, baseType: !344, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1731, file: !1732, line: 8, baseType: !344, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !27, line: 138, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !27, line: 138, elements: !1738)
!1738 = !{!1739, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1737, file: !27, line: 138, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !27, line: 138, elements: !934)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1737, file: !27, line: 138, baseType: !1742)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, elements: !603)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1501, file: !35, line: 147, baseType: !233, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1459, file: !35, line: 161, baseType: !493, size: 128, align: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !35, line: 164, baseType: !1746, size: 32, offset: 384)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !35, line: 164, size: 32, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1746, file: !35, line: 169, baseType: !262, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1746, file: !35, line: 177, baseType: !12, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1455, file: !35, line: 181, baseType: !262, size: 32, offset: 416)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 42, size: 384, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1752, file: !51, line: 43, baseType: !1192, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1752, file: !51, line: 45, baseType: !1192, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1752, file: !51, line: 52, baseType: !963, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1752, file: !51, line: 53, baseType: !963, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1752, file: !51, line: 55, baseType: !50, size: 32, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1752, file: !51, line: 57, baseType: !12, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1752, file: !51, line: 58, baseType: !12, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1752, file: !51, line: 59, baseType: !12, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1752, file: !51, line: 60, baseType: !12, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1752, file: !51, line: 61, baseType: !12, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1752, file: !51, line: 62, baseType: !12, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1752, file: !51, line: 63, baseType: !12, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1752, file: !51, line: 71, baseType: !12, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1752, file: !51, line: 78, baseType: !1768, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !51, line: 78, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1448, file: !69, line: 406, baseType: !1772, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!106, !941, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1777)
!1777 = !{!1778, !1808, !1822}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !35, line: 295, baseType: !1779, size: 512)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !35, line: 295, size: 512, elements: !1780)
!1780 = !{!1781, !1807}
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !35, line: 296, baseType: !1782, size: 448)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1779, file: !35, line: 296, size: 448, elements: !1783)
!1783 = !{!1784, !1785, !1794, !1795, !1796, !1805, !1806}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !35, line: 298, baseType: !426, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !35, line: 299, baseType: !1786, size: 128, offset: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !35, line: 299, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1786, file: !35, line: 300, baseType: !416, size: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !35, line: 302, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !35, line: 302, size: 128, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1790, file: !35, line: 303, baseType: !233, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1790, file: !35, line: 305, baseType: !12, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1782, file: !35, line: 310, baseType: !1434, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1782, file: !35, line: 311, baseType: !426, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !35, line: 312, baseType: !1797, size: 64, offset: 320)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !35, line: 312, size: 64, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1797, file: !35, line: 313, baseType: !233, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1797, file: !35, line: 314, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1802, file: !35, line: 256, baseType: !426, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1782, file: !35, line: 316, baseType: !262, size: 32, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1782, file: !35, line: 317, baseType: !262, size: 32, offset: 416)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1779, file: !35, line: 323, baseType: !1455, size: 512, align: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !35, line: 325, baseType: !1809, size: 512, offset: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !35, line: 325, size: 512, elements: !1810)
!1810 = !{!1811, !1821}
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !35, line: 326, baseType: !1812, size: 320)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !35, line: 326, size: 320, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1812, file: !35, line: 327, baseType: !426, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1812, file: !35, line: 328, baseType: !426, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1812, file: !35, line: 329, baseType: !426, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1812, file: !35, line: 331, baseType: !262, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1812, file: !35, line: 332, baseType: !262, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1812, file: !35, line: 333, baseType: !262, size: 32, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1812, file: !35, line: 335, baseType: !12, size: 32, offset: 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1809, file: !35, line: 339, baseType: !1455, size: 512, align: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !35, line: 341, baseType: !1823, size: 512, offset: 1024)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !35, line: 341, size: 512, elements: !1824)
!1824 = !{!1825, !1834, !1840}
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !35, line: 342, baseType: !1826, size: 384)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !35, line: 342, size: 384, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1826, file: !35, line: 343, baseType: !426, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1826, file: !35, line: 344, baseType: !426, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1826, file: !35, line: 346, baseType: !233, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1826, file: !35, line: 347, baseType: !233, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1826, file: !35, line: 348, baseType: !233, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1826, file: !35, line: 349, baseType: !233, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !35, line: 352, baseType: !1835, size: 256)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1823, file: !35, line: 352, size: 256, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1835, file: !35, line: 353, baseType: !426, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1835, file: !35, line: 354, baseType: !426, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1835, file: !35, line: 356, baseType: !416, size: 128, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1823, file: !35, line: 359, baseType: !1455, size: 512, align: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1448, file: !69, line: 409, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!106, !1434, !1751}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1448, file: !69, line: 412, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!308, !1434, !1775}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1448, file: !69, line: 414, baseType: !1850, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1855, line: 1276, size: 448, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1856 = !{!1857, !1858, !1859, !1861, !1862, !1863, !1864, !1865}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1854, file: !1855, line: 1277, baseType: !941, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1854, file: !1855, line: 1278, baseType: !1434, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1854, file: !1855, line: 1279, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1854, file: !1855, line: 1281, baseType: !426, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1854, file: !1855, line: 1282, baseType: !12, size: 32, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1854, file: !1855, line: 1283, baseType: !12, size: 32, offset: 288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1854, file: !1855, line: 1284, baseType: !308, size: 8, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1854, file: !1855, line: 1285, baseType: !426, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1448, file: !69, line: 416, baseType: !1867, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!106, !941, !1434, !963, !12, !1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1448, file: !69, line: 419, baseType: !1873, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!106, !941, !1434, !963, !12, !12, !1454, !233}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1448, file: !69, line: 424, baseType: !1877, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1434, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !224, line: 131, baseType: !344)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1448, file: !69, line: 425, baseType: !1882, size: 64, offset: 512)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1775, !1234, !1234}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1448, file: !69, line: 426, baseType: !1886, size: 64, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!308, !1775, !320}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1448, file: !69, line: 427, baseType: !1890, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !1775}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1448, file: !69, line: 428, baseType: !1894, size: 64, offset: 704)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1231, !1897, !1935}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !69, line: 373, size: 384, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1906, !1907, !1908, !1909}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1898, file: !69, line: 374, baseType: !941, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1898, file: !69, line: 375, baseType: !963, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1898, file: !69, line: 376, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{null, !1897, !1192}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1898, file: !69, line: 377, baseType: !233, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1898, file: !69, line: 378, baseType: !106, size: 32, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1898, file: !69, line: 379, baseType: !280, size: 16, offset: 288)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !69, line: 380, baseType: !1910, size: 64, offset: 320)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !69, line: 380, size: 64, elements: !1911)
!1911 = !{!1912, !1931}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1910, file: !69, line: 386, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1855, line: 998, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1914, file: !1855, line: 999, baseType: !1775, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1914, file: !1855, line: 1000, baseType: !106, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1914, file: !1855, line: 1001, baseType: !1919, size: 320, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1004, line: 14, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1004, line: 30, size: 320, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1930}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1920, file: !1004, line: 31, baseType: !12, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1920, file: !1004, line: 32, baseType: !233, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1920, file: !1004, line: 33, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1004, line: 16, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!106, !1929, !12, !106, !233}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1920, file: !1004, line: 34, baseType: !416, size: 128, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1910, file: !69, line: 395, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1231, !233}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1937, line: 41, size: 320, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1949, !1987}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1936, file: !1937, line: 42, baseType: !270, size: 8)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1936, file: !1937, line: 43, baseType: !308, size: 8, offset: 8)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1936, file: !1937, line: 44, baseType: !308, size: 8, offset: 16)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1936, file: !1937, line: 45, baseType: !308, size: 8, offset: 24)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1936, file: !1937, line: 46, baseType: !308, size: 8, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1937, line: 47, baseType: !1945, size: 64, offset: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1937, line: 47, size: 64, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1945, file: !1937, line: 48, baseType: !1234, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1945, file: !1937, line: 49, baseType: !106, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1937, line: 61, baseType: !1950, size: 128, offset: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1937, line: 61, size: 128, elements: !1951)
!1951 = !{!1952, !1958}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1950, file: !1937, line: 67, baseType: !1953, size: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1954, line: 17, size: 128, elements: !1955)
!1954 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1953, file: !1954, line: 19, baseType: !233, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1953, file: !1954, line: 20, baseType: !1235, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !1937, line: 68, baseType: !1959, size: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !1937, line: 68, size: 128, elements: !1960)
!1960 = !{!1961, !1986}
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !1937, line: 69, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !1937, line: 69, size: 64, elements: !1963)
!1963 = !{!1964, !1967, !1974, !1983, !1985}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1962, file: !1937, line: 71, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1962, file: !1937, line: 72, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1937, line: 17, size: 128, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1970, file: !1937, line: 18, baseType: !233, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1970, file: !1937, line: 19, baseType: !1234, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1962, file: !1937, line: 73, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1978, line: 31, size: 128, elements: !1979)
!1978 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1977, file: !1978, line: 32, baseType: !1454, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1977, file: !1978, line: 33, baseType: !12, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1977, file: !1978, line: 34, baseType: !12, size: 32, offset: 96)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1962, file: !1937, line: 74, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1962, file: !1937, line: 75, baseType: !233, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1959, file: !1937, line: 77, baseType: !1234, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1937, line: 80, baseType: !1988, size: 64, offset: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1937, line: 80, size: 64, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1988, file: !1937, line: 81, baseType: !426, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1988, file: !1937, line: 82, baseType: !963, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1448, file: !69, line: 433, baseType: !1993, size: 64, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!106, !1434, !1775, !1775, !55}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1448, file: !69, line: 435, baseType: !1997, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!106, !1775}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1448, file: !69, line: 436, baseType: !2001, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!308, !1775, !1234, !1234}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1448, file: !69, line: 438, baseType: !2005, size: 64, offset: 960)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1775, !2008, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1448, file: !69, line: 439, baseType: !2010, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!106, !1434, !1454}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1448, file: !69, line: 442, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!106, !2017, !941, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !69, line: 66, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1448, file: !69, line: 444, baseType: !2021, size: 64, offset: 1152)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !941}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1448, file: !69, line: 445, baseType: !2025, size: 64, offset: 1216)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!106, !1897, !1935}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !69, line: 486, baseType: !426, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1435, file: !69, line: 487, baseType: !431, size: 320, offset: 960)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1435, file: !69, line: 488, baseType: !2031, size: 32, offset: 1280)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2032, line: 8, baseType: !330)
!2032 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1435, file: !69, line: 489, baseType: !242, size: 32, offset: 1312)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1435, file: !69, line: 490, baseType: !416, size: 128, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1435, file: !69, line: 491, baseType: !233, size: 64, offset: 1472)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1425, file: !1394, line: 180, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1231, !941, !1336, !1424, !514, !963, !1234}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1425, file: !1394, line: 182, baseType: !2037, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1425, file: !1394, line: 184, baseType: !2042, size: 64, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!106, !941, !1336, !1424, !1574}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1413, file: !1394, line: 90, baseType: !2046, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1413, file: !1394, line: 91, baseType: !2048, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1384, file: !1331, line: 120, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!2053, !1354}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !63, line: 39, size: 384, elements: !2056)
!2056 = !{!2057, !2058, !2062, !2066, !2074, !2078}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2055, file: !63, line: 40, baseType: !62, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2055, file: !63, line: 41, baseType: !2059, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!308}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2055, file: !63, line: 42, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!233}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2055, file: !63, line: 43, baseType: !2067, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !63, line: 19, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2055, file: !63, line: 44, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!2070}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2055, file: !63, line: 45, baseType: !1109, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1384, file: !1331, line: 121, baseType: !2080, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2070, !1354}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1384, file: !1331, line: 122, baseType: !2084, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !1354, !2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1330, file: !1331, line: 70, baseType: !2090, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1303, line: 190, size: 1152, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2191, !2192, !2193, !2194, !2195, !2198}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2091, file: !1303, line: 191, baseType: !262, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2091, file: !1303, line: 192, baseType: !262, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2091, file: !1303, line: 202, baseType: !2090, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2091, file: !1303, line: 203, baseType: !504, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2091, file: !1303, line: 205, baseType: !422, size: 192, align: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2091, file: !1303, line: 207, baseType: !2070, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2091, file: !1303, line: 208, baseType: !12, size: 32, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !1303, line: 209, baseType: !2101, size: 256, offset: 512)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !1303, line: 209, size: 256, elements: !2102)
!2102 = !{!2103, !2112, !2116}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2101, file: !1303, line: 210, baseType: !2104, size: 256)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1303, line: 153, size: 256, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2111}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2104, file: !1303, line: 154, baseType: !426, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2104, file: !1303, line: 156, baseType: !799, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2104, file: !1303, line: 162, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1303, line: 162, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2104, file: !1303, line: 167, baseType: !426, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2101, file: !1303, line: 211, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1303, line: 170, size: 64, elements: !2114)
!2114 = !{!2115}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2113, file: !1303, line: 171, baseType: !2090, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2101, file: !1303, line: 212, baseType: !2117, size: 256)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1303, line: 174, size: 256, elements: !2118)
!2118 = !{!2119, !2186, !2189, !2190}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2117, file: !1303, line: 175, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1303, line: 271, size: 768, elements: !2123)
!2123 = !{!2124, !2146, !2150, !2154, !2159, !2163, !2167, !2171, !2172, !2173, !2174, !2182}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2122, file: !1303, line: 276, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!106, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1303, line: 251, size: 1216, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2129, file: !1303, line: 253, baseType: !2090, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2129, file: !1303, line: 254, baseType: !941, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2129, file: !1303, line: 255, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !617, line: 66, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2129, file: !1303, line: 256, baseType: !233, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2129, file: !1303, line: 259, baseType: !955, size: 256, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2129, file: !1303, line: 260, baseType: !955, size: 256, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2129, file: !1303, line: 261, baseType: !106, size: 32, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2129, file: !1303, line: 262, baseType: !416, size: 128, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2129, file: !1303, line: 263, baseType: !514, size: 64, offset: 960)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2129, file: !1303, line: 265, baseType: !1234, size: 64, offset: 1024)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2129, file: !1303, line: 266, baseType: !308, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2129, file: !1303, line: 267, baseType: !308, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2129, file: !1303, line: 268, baseType: !1619, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2122, file: !1303, line: 277, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2128}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2122, file: !1303, line: 290, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!106, !2134, !233}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2122, file: !1303, line: 292, baseType: !2155, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!233, !2134, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2122, file: !1303, line: 293, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!233, !2134, !233, !2158}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2122, file: !1303, line: 294, baseType: !2164, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2134, !233}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2122, file: !1303, line: 296, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!1231, !2128, !514, !1234, !963}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2122, file: !1303, line: 306, baseType: !1234, size: 64, offset: 448)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2122, file: !1303, line: 313, baseType: !308, size: 8, offset: 512)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2122, file: !1303, line: 314, baseType: !2168, size: 64, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2122, file: !1303, line: 317, baseType: !2175, size: 64, offset: 640)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2178, !2128, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2179, line: 59, baseType: !12)
!2179 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1303, line: 31, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2122, file: !1303, line: 320, baseType: !2183, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!106, !2128, !1574}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2117, file: !1303, line: 176, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1303, line: 35, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2117, file: !1303, line: 177, baseType: !963, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2117, file: !1303, line: 178, baseType: !2090, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2091, file: !1303, line: 215, baseType: !233, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2091, file: !1303, line: 221, baseType: !344, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !1303, line: 223, baseType: !282, size: 16, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2091, file: !1303, line: 224, baseType: !1081, size: 16, offset: 912)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2091, file: !1303, line: 225, baseType: !2196, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1303, line: 36, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2091, file: !1303, line: 227, baseType: !493, size: 128, align: 64, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1330, file: !1331, line: 71, baseType: !2200, size: 32, offset: 448)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2201, line: 19, size: 32, elements: !2202)
!2201 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2200, file: !2201, line: 20, baseType: !333, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1330, file: !1331, line: 73, baseType: !12, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1330, file: !1331, line: 74, baseType: !12, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1330, file: !1331, line: 75, baseType: !12, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1330, file: !1331, line: 76, baseType: !12, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1330, file: !1331, line: 77, baseType: !12, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1327, file: !20, line: 47, baseType: !1317, size: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1327, file: !20, line: 48, baseType: !1336, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1327, file: !20, line: 49, baseType: !2212, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1327, file: !20, line: 50, baseType: !2215, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1318, file: !20, line: 418, baseType: !2217, size: 64, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !2219)
!2219 = !{!2220, !2221, !2226, !2230, !2234, !2238}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2218, file: !20, line: 54, baseType: !1401, size: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2218, file: !20, line: 55, baseType: !2222, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!1231, !2217, !2225, !514}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2218, file: !20, line: 57, baseType: !2227, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!1231, !2217, !2225, !504, !1234}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2218, file: !20, line: 59, baseType: !2231, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !1317, !504}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2218, file: !20, line: 60, baseType: !2235, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!106, !1317}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2218, file: !20, line: 61, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !1317}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1318, file: !20, line: 419, baseType: !504, size: 64, offset: 1472)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1318, file: !20, line: 420, baseType: !504, size: 64, offset: 1536)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1318, file: !20, line: 421, baseType: !1336, size: 64, offset: 1600)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1318, file: !20, line: 424, baseType: !2246, size: 64, offset: 1664)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1318, file: !20, line: 425, baseType: !2250, size: 64, offset: 1728)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1318, file: !20, line: 426, baseType: !12, size: 32, offset: 1792)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1318, file: !20, line: 435, baseType: !955, size: 256, offset: 1856)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1318, file: !20, line: 437, baseType: !2255, size: 64, offset: 2112)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2257, line: 69, size: 320, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2258 = !{!2259, !2260, !2261, !2278, !2280, !2284, !2285}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2256, file: !2257, line: 70, baseType: !504, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2256, file: !2257, line: 71, baseType: !1317, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !2257, line: 72, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2257, line: 47, size: 256, elements: !2265)
!2265 = !{!2266, !2267, !2273, !2277}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2257, line: 49, baseType: !12, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2264, file: !2257, line: 51, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!106, !504, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2264, file: !2257, line: 53, baseType: !2274, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!106, !514, !2271}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2264, file: !2257, line: 55, baseType: !1109, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2256, file: !2257, line: 73, baseType: !2279, size: 16, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2256, file: !2257, line: 74, baseType: !2281, size: 8, offset: 208)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !271, line: 16, baseType: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !273, line: 20, baseType: !2283)
!2283 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2256, file: !2257, line: 75, baseType: !270, size: 8, offset: 216)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2257, line: 76, baseType: !2286, size: 64, offset: 256)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2256, file: !2257, line: 76, size: 64, elements: !2287)
!2287 = !{!2288, !2289, !2296}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2286, file: !2257, line: 77, baseType: !233, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2286, file: !2257, line: 78, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2257, line: 86, size: 128, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2292, file: !2257, line: 87, baseType: !12, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2292, file: !2257, line: 88, baseType: !514, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2286, file: !2257, line: 79, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2257, line: 92, size: 256, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2305, !2306}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2299, file: !2257, line: 94, baseType: !12, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2299, file: !2257, line: 95, baseType: !12, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2299, file: !2257, line: 96, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2299, file: !2257, line: 97, baseType: !2262, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2299, file: !2257, line: 98, baseType: !233, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1318, file: !20, line: 438, baseType: !12, size: 32, offset: 2176)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1318, file: !20, line: 441, baseType: !12, size: 32, offset: 2208)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1318, file: !20, line: 442, baseType: !2246, size: 64, offset: 2240)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1318, file: !20, line: 443, baseType: !2250, size: 64, offset: 2304)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1318, file: !20, line: 444, baseType: !308, size: 8, offset: 2368)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1318, file: !20, line: 451, baseType: !308, size: 8, offset: 2376)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1318, file: !20, line: 454, baseType: !12, size: 32, offset: 2400)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1318, file: !20, line: 455, baseType: !2315, size: 64, offset: 2432)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2317, line: 23, size: 96, elements: !2318)
!2317 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2316, file: !2317, line: 24, baseType: !106, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2316, file: !2317, line: 24, baseType: !106, size: 32, offset: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2316, file: !2317, line: 24, baseType: !106, size: 32, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1318, file: !20, line: 458, baseType: !2323, size: 64, offset: 2496)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!106}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1318, file: !20, line: 460, baseType: !2327, size: 4032, align: 512, offset: 2560)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2328, size: 4032, elements: !2344)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2328, file: !20, line: 363, baseType: !233, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2328, file: !20, line: 364, baseType: !12, size: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2328, file: !20, line: 367, baseType: !2333, size: 448, offset: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2333, file: !20, line: 320, baseType: !1317, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2333, file: !20, line: 321, baseType: !2337, size: 384, offset: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2338, line: 40, size: 384, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2339 = !{!2340}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2337, file: !2338, line: 41, baseType: !2341, size: 384, align: 64)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, align: 64, elements: !2342)
!2342 = !{!2343}
!2343 = !DISubrange(count: 2)
!2344 = !{!2345}
!2345 = !DISubrange(count: 7)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1318, file: !20, line: 463, baseType: !2347, size: 192, offset: 6592)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2348, line: 8, size: 192, elements: !2349)
!2348 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2349 = !{!2350, !2351, !2353}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2347, file: !2348, line: 10, baseType: !12, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2347, file: !2348, line: 11, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2347, file: !2348, line: 12, baseType: !2354, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2356, line: 59, size: 48, elements: !2357)
!2356 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2357 = !{!2358, !2361, !2362, !2363, !2364, !2365}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2355, file: !2356, line: 60, baseType: !2359, size: 16)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !271, line: 18, baseType: !2360)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !273, line: 23, baseType: !464)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2355, file: !2356, line: 61, baseType: !2359, size: 16, offset: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2355, file: !2356, line: 63, baseType: !12, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2355, file: !2356, line: 64, baseType: !12, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2355, file: !2356, line: 65, baseType: !12, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2355, file: !2356, line: 66, baseType: !12, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1318, file: !20, line: 465, baseType: !426, size: 64, offset: 6784)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1318, file: !20, line: 469, baseType: !12, size: 32, offset: 6848)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1318, file: !20, line: 470, baseType: !416, size: 128, offset: 6912)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1318, file: !20, line: 471, baseType: !2370, size: 64, offset: 7040)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2372, line: 33, size: 96, elements: !2373)
!2372 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2371, file: !2372, line: 37, baseType: !106, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2371, file: !2372, line: 43, baseType: !106, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2371, file: !2372, line: 45, baseType: !282, size: 16, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !2372, line: 47, baseType: !282, size: 16, offset: 80)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1318, file: !20, line: 476, baseType: !2379, size: 64, offset: 7104)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2381)
!2381 = !{!2382, !2398, !2399, !2400}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2380, file: !20, line: 379, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2385, line: 204, baseType: !2386)
!2385 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2385, line: 197, size: 192, elements: !2387)
!2387 = !{!2388, !2390, !2391, !2392, !2394, !2396}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2386, file: !2385, line: 198, baseType: !2389, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2385, line: 21, baseType: !331)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2386, file: !2385, line: 199, baseType: !274, size: 8, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2386, file: !2385, line: 200, baseType: !274, size: 8, offset: 40)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2386, file: !2385, line: 201, baseType: !2393, size: 16, offset: 48)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2385, line: 17, baseType: !281)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2386, file: !2385, line: 202, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2385, line: 16, baseType: !345)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2386, file: !2385, line: 203, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2385, line: 22, baseType: !345)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2380, file: !20, line: 380, baseType: !12, size: 32, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2380, file: !20, line: 381, baseType: !514, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2380, file: !20, line: 382, baseType: !514, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1318, file: !20, line: 477, baseType: !2380, size: 256, offset: 7168)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1318, file: !20, line: 480, baseType: !2403, size: 64, offset: 7424)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1318, file: !20, line: 483, baseType: !2406, size: 64, offset: 7488)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1318, file: !20, line: 488, baseType: !514, size: 64, offset: 7552)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1318, file: !20, line: 492, baseType: !233, size: 64, offset: 7616)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1318, file: !20, line: 493, baseType: !12, size: 32, offset: 7680)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1318, file: !20, line: 495, baseType: !233, size: 64, offset: 7744)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1318, file: !20, line: 496, baseType: !12, size: 32, offset: 7808)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1318, file: !20, line: 499, baseType: !12, size: 32, offset: 7840)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1318, file: !20, line: 500, baseType: !2415, size: 64, offset: 7872)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2417, line: 45, baseType: !2418)
!2417 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1318, file: !20, line: 503, baseType: !12, size: 32, offset: 7936)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1318, file: !20, line: 504, baseType: !2421, size: 64, offset: 8000)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2424, line: 96, size: 192, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2425 = !{!2426, !2427, !2492, !2495}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2423, file: !2424, line: 97, baseType: !12, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2423, file: !2424, line: 98, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2424, line: 24, size: 3072, elements: !2430)
!2430 = !{!2431, !2433, !2434, !2435, !2436, !2450, !2451, !2452, !2453, !2465, !2477, !2478, !2489, !2490, !2491}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2429, file: !2424, line: 26, baseType: !2432, size: 128)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 128, elements: !2342)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2429, file: !2424, line: 27, baseType: !2432, size: 128, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2429, file: !2424, line: 28, baseType: !106, size: 32, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2429, file: !2424, line: 31, baseType: !242, size: 32, align: 512, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2429, file: !2424, line: 32, baseType: !2437, size: 960, offset: 576)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2438, line: 206, size: 960, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2439 = !{!2440, !2441, !2444, !2446, !2447, !2449}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2437, file: !2438, line: 207, baseType: !496, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2437, file: !2438, line: 208, baseType: !2442, size: 256, offset: 64)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 256, elements: !524)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2437, file: !2438, line: 209, baseType: !2445, size: 256, offset: 320)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 256, elements: !524)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2437, file: !2438, line: 213, baseType: !1192, size: 64, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2437, file: !2438, line: 215, baseType: !2448, size: 256, offset: 640)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 256, elements: !524)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2437, file: !2438, line: 216, baseType: !270, size: 8, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2429, file: !2424, line: 33, baseType: !426, size: 64, offset: 1536)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2429, file: !2424, line: 34, baseType: !426, size: 64, offset: 1600)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2429, file: !2424, line: 35, baseType: !308, size: 8, offset: 1664)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2429, file: !2424, line: 36, baseType: !2454, size: 320, offset: 1728)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2455, line: 11, size: 320, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2456 = !{!2457, !2458, !2459, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2454, file: !2455, line: 16, baseType: !228, size: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2454, file: !2455, line: 17, baseType: !426, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2454, file: !2455, line: 18, baseType: !2460, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !2455, line: 19, baseType: !330, size: 32, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2429, file: !2424, line: 37, baseType: !2466, size: 256, offset: 2048)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2467, line: 98, size: 256, elements: !2468)
!2467 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2468 = !{!2469, !2470, !2471}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2466, file: !2467, line: 99, baseType: !366, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2466, file: !2467, line: 100, baseType: !416, size: 128, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2466, file: !2467, line: 101, baseType: !2472, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2467, line: 21, baseType: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2429, file: !2424, line: 38, baseType: !493, size: 128, align: 64, offset: 2304)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2429, file: !2424, line: 39, baseType: !2479, size: 64, offset: 2432)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2424, line: 49, size: 768, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2480, file: !2424, line: 50, baseType: !242, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2480, file: !2424, line: 51, baseType: !2445, size: 256, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2480, file: !2424, line: 53, baseType: !2445, size: 256, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2480, file: !2424, line: 54, baseType: !426, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2480, file: !2424, line: 55, baseType: !2479, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2480, file: !2424, line: 56, baseType: !106, size: 32, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2480, file: !2424, line: 57, baseType: !106, size: 32, offset: 736)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2429, file: !2424, line: 40, baseType: !426, size: 64, offset: 2496)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2429, file: !2424, line: 42, baseType: !106, size: 32, offset: 2560)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2429, file: !2424, line: 43, baseType: !2422, size: 64, offset: 2624)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2423, file: !2424, line: 99, baseType: !2493, offset: 128)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2494, line: 211, elements: !934)
!2494 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2423, file: !2424, line: 100, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2424, line: 63, size: 3008, elements: !2498)
!2498 = !{!2499, !2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2530}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2497, file: !2424, line: 64, baseType: !2479, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2497, file: !2424, line: 65, baseType: !2501, size: 192, offset: 64)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, size: 192, elements: !989)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2497, file: !2424, line: 67, baseType: !106, size: 32, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2497, file: !2424, line: 68, baseType: !955, size: 256, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2497, file: !2424, line: 69, baseType: !242, size: 32, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2497, file: !2424, line: 70, baseType: !955, size: 256, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2497, file: !2424, line: 71, baseType: !426, size: 64, offset: 896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2497, file: !2424, line: 72, baseType: !426, size: 64, offset: 960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2497, file: !2424, line: 73, baseType: !426, size: 64, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2497, file: !2424, line: 74, baseType: !426, size: 64, offset: 1088)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2497, file: !2424, line: 75, baseType: !426, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2497, file: !2424, line: 76, baseType: !426, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2497, file: !2424, line: 77, baseType: !426, size: 64, offset: 1280)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2497, file: !2424, line: 78, baseType: !426, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2497, file: !2424, line: 79, baseType: !308, size: 8, offset: 1408)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2497, file: !2424, line: 80, baseType: !426, size: 64, offset: 1472)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2497, file: !2424, line: 81, baseType: !955, size: 256, offset: 1536)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2497, file: !2424, line: 82, baseType: !1539, size: 256, offset: 1792)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2497, file: !2424, line: 84, baseType: !262, size: 32, offset: 2048)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2497, file: !2424, line: 87, baseType: !426, size: 64, offset: 2112)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2497, file: !2424, line: 88, baseType: !426, size: 64, offset: 2176)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2497, file: !2424, line: 89, baseType: !2522, size: 704, offset: 2240)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2467, line: 111, size: 704, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2529}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2522, file: !2467, line: 112, baseType: !2466, size: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2522, file: !2467, line: 113, baseType: !2454, size: 320, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2522, file: !2467, line: 116, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2467, line: 18, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2522, file: !2467, line: 117, baseType: !106, size: 32, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2497, file: !2424, line: 90, baseType: !2422, size: 64, offset: 2944)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1318, file: !20, line: 515, baseType: !2532, size: 64, offset: 8064)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2534, line: 117, size: 128, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2533, file: !2534, line: 118, baseType: !410, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2533, file: !2534, line: 119, baseType: !410, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2533, file: !2534, line: 120, baseType: !1192, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1318, file: !20, line: 516, baseType: !12, size: 32, offset: 8128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1318, file: !20, line: 519, baseType: !12, size: 32, offset: 8160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1318, file: !20, line: 520, baseType: !2542, size: 64, offset: 8192)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1318, file: !20, line: 523, baseType: !2544, size: 64, offset: 8256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1318, file: !20, line: 524, baseType: !12, size: 32, offset: 8320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1318, file: !20, line: 525, baseType: !2549, size: 64, offset: 8384)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1318, file: !20, line: 526, baseType: !12, size: 32, offset: 8448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1318, file: !20, line: 533, baseType: !233, size: 64, offset: 8512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1318, file: !20, line: 534, baseType: !12, size: 32, offset: 8576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1318, file: !20, line: 535, baseType: !2556, size: 64, offset: 8640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1318, file: !20, line: 536, baseType: !12, size: 32, offset: 8704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1318, file: !20, line: 539, baseType: !106, size: 32, offset: 8736)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1318, file: !20, line: 540, baseType: !2560, size: 64, offset: 8768)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2562, line: 32, size: 64, elements: !2563)
!2562 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2561, file: !2562, line: 33, baseType: !410, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2561, file: !2562, line: 34, baseType: !410, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1318, file: !20, line: 563, baseType: !416, size: 128, offset: 8832)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1318, file: !20, line: 565, baseType: !416, size: 128, offset: 8960)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1318, file: !20, line: 568, baseType: !2569, size: 64, offset: 9088)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1318, file: !20, line: 570, baseType: !262, size: 32, offset: 9152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1293, file: !69, line: 2382, baseType: !1292, size: 64, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1293, file: !69, line: 2383, baseType: !223, size: 64, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1293, file: !69, line: 2385, baseType: !2576, offset: 576)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2494, line: 206, elements: !934)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1293, file: !69, line: 2386, baseType: !2576, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1293, file: !69, line: 2387, baseType: !2576, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1293, file: !69, line: 2388, baseType: !2580, offset: 576)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2576, elements: !989)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1293, file: !69, line: 2390, baseType: !2576, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1293, file: !69, line: 2391, baseType: !2576, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1293, file: !69, line: 2392, baseType: !2576, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1293, file: !69, line: 2393, baseType: !2576, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1284, file: !69, line: 1197, baseType: !2586, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2588)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !69, line: 2057, size: 1664, elements: !2589)
!2589 = !{!2590, !2594, !2598, !2599, !2603, !2607, !2611, !2612, !2613, !2617, !2621, !2625, !2626, !2627, !2633, !2637, !2638, !2642, !2643, !2644, !2645, !2649, !2653, !2700, !2715, !2716}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2588, file: !69, line: 2058, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!1077, !1283}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2588, file: !69, line: 2059, baseType: !2595, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !1077}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2588, file: !69, line: 2060, baseType: !2595, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2588, file: !69, line: 2062, baseType: !2600, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !1077, !106}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2588, file: !69, line: 2063, baseType: !2604, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!106, !1077, !1751}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2588, file: !69, line: 2064, baseType: !2608, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!106, !1077}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2588, file: !69, line: 2065, baseType: !2595, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2588, file: !69, line: 2066, baseType: !1313, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2588, file: !69, line: 2067, baseType: !2614, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!106, !1283, !106}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2588, file: !69, line: 2068, baseType: !2618, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!106, !1283, !68}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2588, file: !69, line: 2069, baseType: !2622, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!106, !1283}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2588, file: !69, line: 2070, baseType: !2618, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2588, file: !69, line: 2071, baseType: !2622, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2588, file: !69, line: 2072, baseType: !2628, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!106, !1042, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !69, line: 62, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2588, file: !69, line: 2073, baseType: !2634, size: 64, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!106, !1283, !2352, !514}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2588, file: !69, line: 2074, baseType: !1313, size: 64, offset: 960)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2588, file: !69, line: 2076, baseType: !2639, size: 64, offset: 1024)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!106, !2134, !1042}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2588, file: !69, line: 2077, baseType: !2639, size: 64, offset: 1088)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2588, file: !69, line: 2078, baseType: !2639, size: 64, offset: 1152)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2588, file: !69, line: 2079, baseType: !2639, size: 64, offset: 1216)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2588, file: !69, line: 2081, baseType: !2646, size: 64, offset: 1280)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!1231, !1283, !106, !514, !1234, !963}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2588, file: !69, line: 2082, baseType: !2650, size: 64, offset: 1344)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!1231, !1283, !106, !504, !1234, !963}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2588, file: !69, line: 2083, baseType: !2654, size: 64, offset: 1408)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!2657, !1077}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !74, line: 296, size: 1664, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2685, !2686, !2687}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2659, file: !74, line: 297, baseType: !228, size: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2659, file: !74, line: 298, baseType: !416, size: 128, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2659, file: !74, line: 299, baseType: !416, size: 128, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2659, file: !74, line: 300, baseType: !416, size: 128, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2659, file: !74, line: 301, baseType: !955, size: 256, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2659, file: !74, line: 302, baseType: !242, size: 32, offset: 768)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2659, file: !74, line: 303, baseType: !262, size: 32, offset: 800)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2659, file: !74, line: 304, baseType: !1283, size: 64, offset: 832)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2659, file: !74, line: 305, baseType: !2670, size: 64, offset: 896)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !74, line: 68, size: 64, elements: !2671)
!2671 = !{!2672, !2684}
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !2670, file: !74, line: 69, baseType: !2673, size: 32)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2670, file: !74, line: 69, size: 32, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2673, file: !74, line: 70, baseType: !349, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2673, file: !74, line: 71, baseType: !377, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2673, file: !74, line: 72, baseType: !2678, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2679, line: 24, baseType: !2680)
!2679 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2679, line: 22, size: 32, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2680, file: !2679, line: 23, baseType: !2683, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2679, line: 20, baseType: !355)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2670, file: !74, line: 74, baseType: !73, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2659, file: !74, line: 306, baseType: !963, size: 64, offset: 960)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2659, file: !74, line: 307, baseType: !426, size: 64, offset: 1024)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2659, file: !74, line: 308, baseType: !2688, size: 576, offset: 1088)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !74, line: 205, size: 576, elements: !2689)
!2689 = !{!2690, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2688, file: !74, line: 206, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !74, line: 66, baseType: !374)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2688, file: !74, line: 207, baseType: !2691, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2688, file: !74, line: 208, baseType: !2691, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2688, file: !74, line: 209, baseType: !2691, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2688, file: !74, line: 210, baseType: !2691, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2688, file: !74, line: 211, baseType: !2691, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2688, file: !74, line: 212, baseType: !2691, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2688, file: !74, line: 213, baseType: !452, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2688, file: !74, line: 214, baseType: !452, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2588, file: !69, line: 2085, baseType: !2701, size: 64, offset: 1472)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!1192, !1283, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2706, line: 15, size: 256, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2707 = !{!2708, !2709, !2710, !2711, !2712}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2705, file: !2706, line: 16, baseType: !320, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2705, file: !2706, line: 19, baseType: !106, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2705, file: !2706, line: 26, baseType: !426, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2705, file: !2706, line: 33, baseType: !426, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2705, file: !2706, line: 36, baseType: !2713, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2588, file: !69, line: 2087, baseType: !2701, size: 64, offset: 1536)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2588, file: !69, line: 2089, baseType: !1313, size: 64, offset: 1600)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1284, file: !69, line: 1198, baseType: !2718, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2720)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !74, line: 324, size: 704, elements: !2721)
!2721 = !{!2722, !2726, !2730, !2734, !2735, !2736, !2737, !2738, !2743, !2748, !2752}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2720, file: !74, line: 325, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!106, !2658}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2720, file: !74, line: 326, baseType: !2727, size: 64, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!2658, !1283, !106}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2720, file: !74, line: 327, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !2658}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2720, file: !74, line: 328, baseType: !2723, size: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2720, file: !74, line: 329, baseType: !2723, size: 64, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2720, file: !74, line: 330, baseType: !2723, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2720, file: !74, line: 331, baseType: !2614, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2720, file: !74, line: 334, baseType: !2739, size: 64, offset: 448)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2742, !1077}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2720, file: !74, line: 335, baseType: !2744, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!106, !1077, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2720, file: !74, line: 337, baseType: !2749, size: 64, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!106, !1077, !2742}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2720, file: !74, line: 339, baseType: !2753, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!106, !1283, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1284, file: !69, line: 1199, baseType: !2758, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !74, line: 430, size: 704, elements: !2761)
!2761 = !{!2762, !2766, !2767, !2771, !2772, !2773, !2788, !2811, !2815, !2816, !2839}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2760, file: !74, line: 431, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!106, !1283, !106, !106, !1200}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2760, file: !74, line: 432, baseType: !2614, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2760, file: !74, line: 433, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!106, !1283, !12}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2760, file: !74, line: 434, baseType: !2768, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2760, file: !74, line: 435, baseType: !2614, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2760, file: !74, line: 436, baseType: !2774, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!106, !1283, !106, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !74, line: 417, size: 256, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2778, file: !74, line: 418, baseType: !106, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2778, file: !74, line: 419, baseType: !12, size: 32, offset: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2778, file: !74, line: 420, baseType: !12, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2778, file: !74, line: 422, baseType: !12, size: 32, offset: 96)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2778, file: !74, line: 423, baseType: !12, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2778, file: !74, line: 424, baseType: !12, size: 32, offset: 160)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2778, file: !74, line: 425, baseType: !12, size: 32, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2778, file: !74, line: 426, baseType: !12, size: 32, offset: 224)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2760, file: !74, line: 437, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!106, !1283, !2670, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !74, line: 345, size: 960, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2793, file: !74, line: 346, baseType: !106, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2793, file: !74, line: 347, baseType: !344, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2793, file: !74, line: 348, baseType: !344, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2793, file: !74, line: 349, baseType: !344, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2793, file: !74, line: 350, baseType: !344, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2793, file: !74, line: 351, baseType: !344, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2793, file: !74, line: 352, baseType: !344, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2793, file: !74, line: 353, baseType: !372, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2793, file: !74, line: 355, baseType: !372, size: 64, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2793, file: !74, line: 356, baseType: !106, size: 32, offset: 576)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2793, file: !74, line: 357, baseType: !106, size: 32, offset: 608)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2793, file: !74, line: 358, baseType: !344, size: 64, offset: 640)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2793, file: !74, line: 359, baseType: !344, size: 64, offset: 704)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2793, file: !74, line: 360, baseType: !344, size: 64, offset: 768)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2793, file: !74, line: 361, baseType: !372, size: 64, offset: 832)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2793, file: !74, line: 362, baseType: !106, size: 32, offset: 896)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2760, file: !74, line: 438, baseType: !2812, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!106, !1283, !2756, !2792}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2760, file: !74, line: 440, baseType: !2789, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2760, file: !74, line: 441, baseType: !2817, size: 64, offset: 576)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!106, !1283, !2820}
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !74, line: 411, size: 1408, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2821, file: !74, line: 412, baseType: !12, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2821, file: !74, line: 413, baseType: !2825, size: 1344, offset: 64)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 1344, elements: !989)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !74, line: 397, size: 448, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2838}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2826, file: !74, line: 398, baseType: !12, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2826, file: !74, line: 399, baseType: !12, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2826, file: !74, line: 401, baseType: !12, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2826, file: !74, line: 402, baseType: !12, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2826, file: !74, line: 403, baseType: !12, size: 32, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2826, file: !74, line: 404, baseType: !12, size: 32, offset: 160)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2826, file: !74, line: 405, baseType: !12, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2826, file: !74, line: 406, baseType: !346, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2826, file: !74, line: 407, baseType: !2837, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !224, line: 132, baseType: !344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2826, file: !74, line: 408, baseType: !2837, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2760, file: !74, line: 442, baseType: !2768, size: 64, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1284, file: !69, line: 1200, baseType: !2841, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !69, line: 54, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1284, file: !69, line: 1201, baseType: !426, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1284, file: !69, line: 1202, baseType: !426, size: 64, offset: 704)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1284, file: !69, line: 1203, baseType: !426, size: 64, offset: 768)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1284, file: !69, line: 1204, baseType: !1042, size: 64, offset: 832)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1284, file: !69, line: 1205, baseType: !431, size: 320, offset: 896)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1284, file: !69, line: 1206, baseType: !106, size: 32, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1284, file: !69, line: 1207, baseType: !262, size: 32, offset: 1248)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1284, file: !69, line: 1209, baseType: !233, size: 64, offset: 1280)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1284, file: !69, line: 1211, baseType: !2853, size: 64, offset: 1344)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !69, line: 1211, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1284, file: !69, line: 1223, baseType: !2858, size: 64, offset: 1408)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1054, line: 34, size: 64, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2858, file: !1054, line: 35, baseType: !1057, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1284, file: !69, line: 1224, baseType: !416, size: 128, offset: 1472)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1284, file: !69, line: 1225, baseType: !2863, size: 64, offset: 1600)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2865, line: 40, size: 7424, elements: !2866)
!2865 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2866 = !{!2867, !2868, !2869, !2872, !2876, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2903, !2904}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2864, file: !2865, line: 41, baseType: !1880, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2864, file: !2865, line: 42, baseType: !1880, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2864, file: !2865, line: 43, baseType: !2870, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !617, line: 1453, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2864, file: !2865, line: 44, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2875, line: 74, flags: DIFlagFwdDecl)
!2875 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2864, file: !2865, line: 45, baseType: !2877, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2865, line: 45, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2864, file: !2865, line: 46, baseType: !426, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2864, file: !2865, line: 47, baseType: !308, size: 8, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2864, file: !2865, line: 48, baseType: !270, size: 8, offset: 392)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2864, file: !2865, line: 49, baseType: !308, size: 8, offset: 400)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2864, file: !2865, line: 50, baseType: !308, size: 8, offset: 408)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2864, file: !2865, line: 51, baseType: !1152, size: 32, offset: 416)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2864, file: !2865, line: 52, baseType: !262, size: 32, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2864, file: !2865, line: 53, baseType: !242, size: 32, offset: 480)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2864, file: !2865, line: 54, baseType: !1077, size: 64, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2864, file: !2865, line: 55, baseType: !233, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2864, file: !2865, line: 56, baseType: !233, size: 64, offset: 640)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2864, file: !2865, line: 57, baseType: !2891, size: 64, offset: 704)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2865, line: 57, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2864, file: !2865, line: 58, baseType: !955, size: 256, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2864, file: !2865, line: 60, baseType: !106, size: 32, offset: 1024)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2864, file: !2865, line: 61, baseType: !106, size: 32, offset: 1056)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2864, file: !2865, line: 62, baseType: !1336, size: 64, offset: 1088)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2864, file: !2865, line: 65, baseType: !955, size: 256, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2864, file: !2865, line: 66, baseType: !1283, size: 64, offset: 1408)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2864, file: !2865, line: 68, baseType: !2901, size: 64, offset: 1472)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2865, line: 68, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2864, file: !2865, line: 72, baseType: !308, size: 8, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2864, file: !2865, line: 77, baseType: !2905, size: 5824, offset: 1600)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !86, line: 705, size: 5824, elements: !2906)
!2906 = !{!2907, !2908, !2910, !2913, !2914, !2967, !3037, !3038, !3039, !3040, !3041, !3048, !3140, !3153, !3163, !3167, !3169, !3170, !3171, !3175, !3182, !3183, !3186, !3189, !3193, !3196, !3197, !3198, !3199, !3200, !3201, !3231, !3232, !3233, !3236, !3239, !3248, !3249, !3250, !3251, !3252, !3253}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2905, file: !86, line: 706, baseType: !1330, size: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2905, file: !86, line: 707, baseType: !2909, size: 64, offset: 512)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2905, file: !86, line: 709, baseType: !2911, size: 64, offset: 576)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !86, line: 37, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2905, file: !86, line: 711, baseType: !504, size: 64, offset: 640)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2905, file: !86, line: 712, baseType: !2915, size: 64, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !86, line: 89, size: 384, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2927, !2932, !2936}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2917, file: !86, line: 90, baseType: !504, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2917, file: !86, line: 91, baseType: !1410, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2917, file: !86, line: 92, baseType: !2922, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!106, !2925, !1366}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2905)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2917, file: !86, line: 93, baseType: !2928, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!514, !2925, !2931, !2087, !2088}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2917, file: !86, line: 95, baseType: !2933, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !2909}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2917, file: !86, line: 97, baseType: !2937, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !98, line: 286, size: 1472, elements: !2940)
!2940 = !{!2941, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2939, file: !98, line: 287, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!106, !2909}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2939, file: !98, line: 288, baseType: !2933, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2939, file: !98, line: 289, baseType: !2942, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2939, file: !98, line: 290, baseType: !2942, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2939, file: !98, line: 291, baseType: !2942, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2939, file: !98, line: 292, baseType: !2942, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2939, file: !98, line: 293, baseType: !2942, size: 64, offset: 384)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2939, file: !98, line: 294, baseType: !2942, size: 64, offset: 448)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2939, file: !98, line: 295, baseType: !2942, size: 64, offset: 512)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2939, file: !98, line: 296, baseType: !2942, size: 64, offset: 576)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2939, file: !98, line: 297, baseType: !2942, size: 64, offset: 640)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2939, file: !98, line: 298, baseType: !2942, size: 64, offset: 704)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2939, file: !98, line: 299, baseType: !2942, size: 64, offset: 768)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2939, file: !98, line: 300, baseType: !2942, size: 64, offset: 832)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2939, file: !98, line: 301, baseType: !2942, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2939, file: !98, line: 302, baseType: !2942, size: 64, offset: 960)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2939, file: !98, line: 303, baseType: !2942, size: 64, offset: 1024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2939, file: !98, line: 304, baseType: !2942, size: 64, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2939, file: !98, line: 305, baseType: !2942, size: 64, offset: 1152)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2939, file: !98, line: 306, baseType: !2942, size: 64, offset: 1216)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2939, file: !98, line: 307, baseType: !2942, size: 64, offset: 1280)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2939, file: !98, line: 308, baseType: !2942, size: 64, offset: 1344)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2939, file: !98, line: 309, baseType: !2942, size: 64, offset: 1408)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2905, file: !86, line: 714, baseType: !2968, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2970)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2971, line: 80, size: 1344, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3036}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2970, file: !2971, line: 81, baseType: !504, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2970, file: !2971, line: 82, baseType: !504, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2970, file: !2971, line: 83, baseType: !1410, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2970, file: !2971, line: 84, baseType: !1410, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2970, file: !2971, line: 85, baseType: !1410, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2970, file: !2971, line: 87, baseType: !2979, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!106, !2909, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !80, line: 96, size: 1152, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990, !2991, !2995, !2999, !3000, !3001, !3002, !3003, !3011, !3012, !3013, !3014, !3015, !3016}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2983, file: !80, line: 97, baseType: !504, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2983, file: !80, line: 98, baseType: !2968, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2983, file: !80, line: 100, baseType: !1317, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2983, file: !80, line: 101, baseType: !504, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2983, file: !80, line: 103, baseType: !308, size: 8, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2983, file: !80, line: 104, baseType: !79, size: 32, offset: 288)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2983, file: !80, line: 106, baseType: !2992, size: 64, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !80, line: 106, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2983, file: !80, line: 107, baseType: !2996, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2998)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !80, line: 107, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2983, file: !80, line: 109, baseType: !2942, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2983, file: !80, line: 110, baseType: !2933, size: 64, offset: 512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2983, file: !80, line: 111, baseType: !2942, size: 64, offset: 576)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2983, file: !80, line: 112, baseType: !2933, size: 64, offset: 640)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2983, file: !80, line: 113, baseType: !3004, size: 64, offset: 704)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!106, !2909, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !98, line: 60, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !98, line: 58, size: 32, elements: !3009)
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3008, file: !98, line: 59, baseType: !106, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2983, file: !80, line: 114, baseType: !2942, size: 64, offset: 768)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2983, file: !80, line: 115, baseType: !1410, size: 64, offset: 832)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2983, file: !80, line: 116, baseType: !1410, size: 64, offset: 896)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2983, file: !80, line: 118, baseType: !2937, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2983, file: !80, line: 119, baseType: !2933, size: 64, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2983, file: !80, line: 121, baseType: !3017, size: 64, offset: 1088)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !80, line: 121, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2970, file: !2971, line: 88, baseType: !2922, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2970, file: !2971, line: 89, baseType: !2942, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2970, file: !2971, line: 90, baseType: !2933, size: 64, offset: 512)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2970, file: !2971, line: 91, baseType: !2933, size: 64, offset: 576)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2970, file: !2971, line: 92, baseType: !2933, size: 64, offset: 640)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2970, file: !2971, line: 94, baseType: !2942, size: 64, offset: 704)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2970, file: !2971, line: 95, baseType: !2942, size: 64, offset: 768)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2970, file: !2971, line: 97, baseType: !3004, size: 64, offset: 832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2970, file: !2971, line: 98, baseType: !2942, size: 64, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2970, file: !2971, line: 100, baseType: !2942, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2970, file: !2971, line: 102, baseType: !2942, size: 64, offset: 1024)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2970, file: !2971, line: 103, baseType: !2933, size: 64, offset: 1088)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2970, file: !2971, line: 105, baseType: !2937, size: 64, offset: 1152)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2970, file: !2971, line: 107, baseType: !3033, size: 64, offset: 1216)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3035)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2971, line: 107, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2970, file: !2971, line: 109, baseType: !308, size: 8, offset: 1280)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2905, file: !86, line: 715, baseType: !2982, size: 64, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2905, file: !86, line: 717, baseType: !233, size: 64, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2905, file: !86, line: 719, baseType: !233, size: 64, offset: 960)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2905, file: !86, line: 721, baseType: !955, size: 256, offset: 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2905, file: !86, line: 725, baseType: !3042, size: 448, offset: 1280)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !86, line: 517, size: 448, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3042, file: !86, line: 518, baseType: !416, size: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3042, file: !86, line: 519, baseType: !416, size: 128, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3042, file: !86, line: 520, baseType: !416, size: 128, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3042, file: !86, line: 521, baseType: !85, size: 32, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2905, file: !86, line: 726, baseType: !3049, size: 2496, offset: 1728)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !98, line: 663, size: 2496, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3133, !3137}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3049, file: !98, line: 664, baseType: !3007, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3049, file: !98, line: 665, baseType: !12, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3049, file: !98, line: 666, baseType: !12, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3049, file: !98, line: 667, baseType: !308, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3049, file: !98, line: 668, baseType: !308, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3049, file: !98, line: 669, baseType: !308, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3049, file: !98, line: 670, baseType: !308, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3049, file: !98, line: 671, baseType: !308, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3049, file: !98, line: 672, baseType: !308, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3049, file: !98, line: 673, baseType: !308, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3049, file: !98, line: 674, baseType: !308, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3049, file: !98, line: 675, baseType: !330, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3049, file: !98, line: 676, baseType: !242, size: 32, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3049, file: !98, line: 678, baseType: !416, size: 128, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3049, file: !98, line: 679, baseType: !1539, size: 256, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3049, file: !98, line: 680, baseType: !3067, size: 64, offset: 512)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3069, line: 43, size: 1536, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3068, file: !3069, line: 44, baseType: !504, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3068, file: !3069, line: 45, baseType: !106, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3068, file: !3069, line: 46, baseType: !416, size: 128, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3068, file: !3069, line: 47, baseType: !242, size: 32, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3068, file: !3069, line: 48, baseType: !3076, size: 64, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !98, line: 629, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3068, file: !3069, line: 49, baseType: !2454, size: 320, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3068, file: !3069, line: 50, baseType: !426, size: 64, offset: 704)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3068, file: !3069, line: 51, baseType: !740, size: 64, offset: 768)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3068, file: !3069, line: 52, baseType: !740, size: 64, offset: 832)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3068, file: !3069, line: 53, baseType: !740, size: 64, offset: 896)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3068, file: !3069, line: 54, baseType: !740, size: 64, offset: 960)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3068, file: !3069, line: 55, baseType: !740, size: 64, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3068, file: !3069, line: 56, baseType: !426, size: 64, offset: 1088)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3068, file: !3069, line: 57, baseType: !426, size: 64, offset: 1152)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3068, file: !3069, line: 58, baseType: !426, size: 64, offset: 1216)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3068, file: !3069, line: 59, baseType: !426, size: 64, offset: 1280)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3068, file: !3069, line: 60, baseType: !426, size: 64, offset: 1344)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3068, file: !3069, line: 61, baseType: !2909, size: 64, offset: 1408)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3068, file: !3069, line: 62, baseType: !308, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3068, file: !3069, line: 63, baseType: !308, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3049, file: !98, line: 681, baseType: !308, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3049, file: !98, line: 682, baseType: !308, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3049, file: !98, line: 683, baseType: !308, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3049, file: !98, line: 684, baseType: !12, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3049, file: !98, line: 685, baseType: !12, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3049, file: !98, line: 690, baseType: !732, size: 512, offset: 640)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3049, file: !98, line: 691, baseType: !344, size: 64, offset: 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3049, file: !98, line: 692, baseType: !2466, size: 256, offset: 1216)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3049, file: !98, line: 693, baseType: !1003, size: 192, offset: 1472)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3049, file: !98, line: 694, baseType: !3076, size: 64, offset: 1664)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3049, file: !98, line: 695, baseType: !262, size: 32, offset: 1728)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3049, file: !98, line: 696, baseType: !262, size: 32, offset: 1760)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3049, file: !98, line: 697, baseType: !12, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3049, file: !98, line: 698, baseType: !12, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3049, file: !98, line: 699, baseType: !12, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3049, file: !98, line: 700, baseType: !12, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3049, file: !98, line: 701, baseType: !12, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3049, file: !98, line: 702, baseType: !12, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3049, file: !98, line: 703, baseType: !308, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3049, file: !98, line: 704, baseType: !12, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3049, file: !98, line: 705, baseType: !12, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3049, file: !98, line: 706, baseType: !12, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3049, file: !98, line: 707, baseType: !12, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3049, file: !98, line: 708, baseType: !12, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3049, file: !98, line: 709, baseType: !12, size: 32, offset: 1824)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3049, file: !98, line: 710, baseType: !97, size: 32, offset: 1856)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3049, file: !98, line: 711, baseType: !105, size: 32, offset: 1888)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3049, file: !98, line: 712, baseType: !105, size: 32, offset: 1920)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3049, file: !98, line: 713, baseType: !106, size: 32, offset: 1952)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3049, file: !98, line: 714, baseType: !106, size: 32, offset: 1984)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3049, file: !98, line: 715, baseType: !344, size: 64, offset: 2048)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3049, file: !98, line: 716, baseType: !344, size: 64, offset: 2112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3049, file: !98, line: 717, baseType: !344, size: 64, offset: 2176)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3049, file: !98, line: 718, baseType: !344, size: 64, offset: 2240)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3049, file: !98, line: 720, baseType: !3128, size: 64, offset: 2304)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !98, line: 632, size: 64, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3129, file: !98, line: 633, baseType: !242, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3129, file: !98, line: 634, baseType: !12, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3049, file: !98, line: 721, baseType: !3134, size: 64, offset: 2368)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !2909, !410}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3049, file: !98, line: 722, baseType: !3138, size: 64, offset: 2432)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !98, line: 722, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2905, file: !86, line: 727, baseType: !3141, size: 64, offset: 4224)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !98, line: 742, size: 1792, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3150, !3151, !3152}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3142, file: !98, line: 743, baseType: !2939, size: 1472)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3142, file: !98, line: 744, baseType: !2942, size: 64, offset: 1472)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3142, file: !98, line: 745, baseType: !3147, size: 64, offset: 1536)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !2909, !308}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3142, file: !98, line: 746, baseType: !2942, size: 64, offset: 1600)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3142, file: !98, line: 747, baseType: !2933, size: 64, offset: 1664)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3142, file: !98, line: 748, baseType: !2933, size: 64, offset: 1728)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2905, file: !86, line: 736, baseType: !3154, size: 128, offset: 4288)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !86, line: 529, size: 128, elements: !3155)
!3155 = !{!3156, !3160}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3154, file: !86, line: 531, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3159, line: 13, flags: DIFlagFwdDecl)
!3159 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3154, file: !86, line: 532, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !86, line: 49, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2905, file: !86, line: 738, baseType: !3164, size: 64, offset: 4416)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !86, line: 738, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2905, file: !86, line: 740, baseType: !3168, size: 64, offset: 4480)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2905, file: !86, line: 741, baseType: !344, size: 64, offset: 4544)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2905, file: !86, line: 746, baseType: !344, size: 64, offset: 4608)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2905, file: !86, line: 747, baseType: !3172, size: 64, offset: 4672)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !86, line: 747, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2905, file: !86, line: 749, baseType: !3176, size: 64, offset: 4736)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !86, line: 428, size: 128, elements: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3177, file: !86, line: 433, baseType: !12, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3177, file: !86, line: 434, baseType: !12, size: 32, offset: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3177, file: !86, line: 435, baseType: !426, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2905, file: !86, line: 751, baseType: !416, size: 128, offset: 4800)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2905, file: !86, line: 762, baseType: !3184, size: 64, offset: 4928)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !86, line: 762, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2905, file: !86, line: 770, baseType: !3187, offset: 4992)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3188, line: 5, elements: !934)
!3188 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2905, file: !86, line: 772, baseType: !3190, size: 64, offset: 4992)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3192, line: 18, flags: DIFlagFwdDecl)
!3192 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2905, file: !86, line: 773, baseType: !3194, size: 64, offset: 5056)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2971, line: 22, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2905, file: !86, line: 776, baseType: !106, size: 32, offset: 5120)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2905, file: !86, line: 778, baseType: !1152, size: 32, offset: 5152)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2905, file: !86, line: 779, baseType: !330, size: 32, offset: 5184)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2905, file: !86, line: 781, baseType: !242, size: 32, offset: 5216)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2905, file: !86, line: 782, baseType: !416, size: 128, offset: 5248)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2905, file: !86, line: 784, baseType: !3202, size: 64, offset: 5376)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3205, line: 52, size: 768, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3215, !3219, !3220, !3221, !3222, !3226, !3230}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3204, file: !3205, line: 53, baseType: !504, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3204, file: !3205, line: 55, baseType: !1410, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3204, file: !3205, line: 56, baseType: !1410, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3204, file: !3205, line: 58, baseType: !2922, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3204, file: !3205, line: 59, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!514, !2925, !2931}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3204, file: !3205, line: 61, baseType: !3216, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3202}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3204, file: !3205, line: 62, baseType: !2933, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3204, file: !3205, line: 64, baseType: !2942, size: 64, offset: 448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3204, file: !3205, line: 66, baseType: !2053, size: 64, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3204, file: !3205, line: 67, baseType: !3223, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!2070, !2925}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3204, file: !3205, line: 69, baseType: !3227, size: 64, offset: 640)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !2925, !2087, !2088}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3204, file: !3205, line: 71, baseType: !2937, size: 64, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2905, file: !86, line: 785, baseType: !1410, size: 64, offset: 5440)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2905, file: !86, line: 787, baseType: !2933, size: 64, offset: 5504)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2905, file: !86, line: 788, baseType: !3234, size: 64, offset: 5568)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !86, line: 46, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2905, file: !86, line: 789, baseType: !3237, size: 64, offset: 5632)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !86, line: 48, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2905, file: !86, line: 791, baseType: !3240, size: 64, offset: 5696)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !86, line: 597, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3241, file: !86, line: 598, baseType: !113, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3241, file: !86, line: 599, baseType: !122, size: 32, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3241, file: !86, line: 600, baseType: !127, size: 32, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3241, file: !86, line: 601, baseType: !308, size: 8, offset: 96)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3241, file: !86, line: 602, baseType: !308, size: 8, offset: 104)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2905, file: !86, line: 793, baseType: !132, size: 32, offset: 5760)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2905, file: !86, line: 795, baseType: !308, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2905, file: !86, line: 796, baseType: !308, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2905, file: !86, line: 797, baseType: !308, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2905, file: !86, line: 798, baseType: !308, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2905, file: !86, line: 799, baseType: !308, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1284, file: !69, line: 1226, baseType: !3255, size: 64, offset: 1664)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !69, line: 1226, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1284, file: !69, line: 1227, baseType: !3258, size: 64, offset: 1728)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !139, line: 163, size: 6848, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3308, !3309, !3310, !3311, !3313, !3314, !3315}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3259, file: !139, line: 164, baseType: !344, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3259, file: !139, line: 165, baseType: !422, size: 192, align: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3259, file: !139, line: 166, baseType: !416, size: 128, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3259, file: !139, line: 167, baseType: !426, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3259, file: !139, line: 168, baseType: !426, size: 64, offset: 448)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3259, file: !139, line: 170, baseType: !2200, size: 32, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3259, file: !139, line: 171, baseType: !12, size: 32, offset: 544)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3259, file: !139, line: 172, baseType: !12, size: 32, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3259, file: !139, line: 173, baseType: !12, size: 32, offset: 608)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3259, file: !139, line: 173, baseType: !12, size: 32, offset: 640)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3259, file: !139, line: 179, baseType: !366, size: 64, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3259, file: !139, line: 184, baseType: !426, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3259, file: !139, line: 186, baseType: !3274, size: 4672, offset: 832)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !139, line: 105, size: 4672, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3274, file: !139, line: 106, baseType: !3258, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3274, file: !139, line: 108, baseType: !426, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3274, file: !139, line: 109, baseType: !426, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3274, file: !139, line: 111, baseType: !416, size: 128, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3274, file: !139, line: 112, baseType: !416, size: 128, offset: 320)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3274, file: !139, line: 113, baseType: !416, size: 128, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3274, file: !139, line: 114, baseType: !416, size: 128, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3274, file: !139, line: 115, baseType: !242, size: 32, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3274, file: !139, line: 117, baseType: !262, size: 32, offset: 736)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3274, file: !139, line: 118, baseType: !3286, size: 1280, offset: 768)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 1280, elements: !524)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3274, file: !139, line: 120, baseType: !426, size: 64, offset: 2048)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3274, file: !139, line: 121, baseType: !426, size: 64, offset: 2112)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3274, file: !139, line: 122, baseType: !426, size: 64, offset: 2176)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3274, file: !139, line: 123, baseType: !426, size: 64, offset: 2240)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3274, file: !139, line: 124, baseType: !426, size: 64, offset: 2304)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3274, file: !139, line: 132, baseType: !426, size: 64, offset: 2368)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3274, file: !139, line: 133, baseType: !426, size: 64, offset: 2432)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3274, file: !139, line: 135, baseType: !3295, size: 384, offset: 2496)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3296, line: 76, size: 384, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3295, file: !3296, line: 78, baseType: !564, size: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3295, file: !3296, line: 80, baseType: !12, size: 32, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3295, file: !3296, line: 81, baseType: !442, size: 32, offset: 352)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3274, file: !139, line: 136, baseType: !106, size: 32, offset: 2880)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3274, file: !139, line: 137, baseType: !138, size: 32, offset: 2912)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3274, file: !139, line: 139, baseType: !242, size: 32, offset: 2944)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3274, file: !139, line: 140, baseType: !416, size: 128, offset: 3008)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3274, file: !139, line: 141, baseType: !2522, size: 704, offset: 3136)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3274, file: !139, line: 142, baseType: !2522, size: 704, offset: 3840)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3274, file: !139, line: 144, baseType: !416, size: 128, offset: 4544)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3259, file: !139, line: 187, baseType: !416, size: 128, offset: 5504)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3259, file: !139, line: 193, baseType: !1003, size: 192, offset: 5632)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3259, file: !139, line: 195, baseType: !2909, size: 64, offset: 5824)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3259, file: !139, line: 196, baseType: !3312, size: 512, offset: 5888)
!3312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1373)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3259, file: !139, line: 197, baseType: !2909, size: 64, offset: 6400)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3259, file: !139, line: 199, baseType: !2454, size: 320, offset: 6464)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3259, file: !139, line: 202, baseType: !1042, size: 64, offset: 6784)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1284, file: !69, line: 1228, baseType: !3317, size: 64, offset: 1792)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !69, line: 1228, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1284, file: !69, line: 1229, baseType: !228, size: 128, offset: 1856)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1284, file: !69, line: 1230, baseType: !12, size: 32, offset: 1984)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1284, file: !69, line: 1231, baseType: !3322, size: 2496, offset: 2048)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !74, line: 521, size: 2496, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3328, !3360}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3322, file: !74, line: 522, baseType: !12, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3322, file: !74, line: 523, baseType: !431, size: 320, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3322, file: !74, line: 524, baseType: !3327, size: 192, offset: 384)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 192, elements: !989)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3322, file: !74, line: 525, baseType: !3329, size: 1728, offset: 576)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3330, size: 1728, elements: !989)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !74, line: 222, size: 576, elements: !3331)
!3331 = !{!3332, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3330, file: !74, line: 223, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !74, line: 445, size: 256, elements: !3335)
!3335 = !{!3336, !3337, !3350, !3351}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3334, file: !74, line: 446, baseType: !106, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3334, file: !74, line: 447, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !74, line: 312, size: 512, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3340, file: !74, line: 313, baseType: !2614, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3340, file: !74, line: 314, baseType: !2614, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3340, file: !74, line: 315, baseType: !2614, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3340, file: !74, line: 316, baseType: !2614, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3340, file: !74, line: 317, baseType: !2723, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3340, file: !74, line: 318, baseType: !2723, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3340, file: !74, line: 319, baseType: !2723, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3340, file: !74, line: 320, baseType: !2753, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3334, file: !74, line: 448, baseType: !1317, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3334, file: !74, line: 449, baseType: !3333, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3330, file: !74, line: 224, baseType: !106, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3330, file: !74, line: 226, baseType: !416, size: 128, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3330, file: !74, line: 227, baseType: !426, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3330, file: !74, line: 228, baseType: !12, size: 32, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3330, file: !74, line: 229, baseType: !12, size: 32, offset: 352)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3330, file: !74, line: 230, baseType: !2691, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3330, file: !74, line: 231, baseType: !2691, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3330, file: !74, line: 232, baseType: !233, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3322, file: !74, line: 526, baseType: !3361, size: 192, offset: 2304)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3338, size: 192, elements: !989)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1284, file: !69, line: 1233, baseType: !3363, size: 2368, offset: 4544)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !69, line: 1184, size: 2368, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3363, file: !69, line: 1185, baseType: !282, size: 16)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3363, file: !69, line: 1186, baseType: !282, size: 16, offset: 16)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3363, file: !69, line: 1187, baseType: !3368, size: 2304, offset: 64)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3369, size: 2304, elements: !989)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3370, line: 12, size: 768, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3371 = !{!3372, !3380, !3381, !3386, !3387}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3369, file: !3370, line: 13, baseType: !3373, size: 384)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3374, line: 17, size: 384, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3373, file: !3374, line: 18, baseType: !106, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3373, file: !3374, line: 19, baseType: !106, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3373, file: !3374, line: 20, baseType: !1003, size: 192, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3373, file: !3374, line: 22, baseType: !493, size: 128, align: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3369, file: !3370, line: 14, baseType: !2304, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3369, file: !3370, line: 15, baseType: !3382, size: 64, offset: 448)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3383, line: 16, size: 64, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3384 = !{!3385}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3382, file: !3383, line: 17, baseType: !615, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3369, file: !3370, line: 16, baseType: !1003, size: 192, offset: 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3369, file: !3370, line: 17, baseType: !262, size: 32, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1284, file: !69, line: 1240, baseType: !233, size: 64, offset: 6912)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1284, file: !69, line: 1243, baseType: !330, size: 32, offset: 6976)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1284, file: !69, line: 1245, baseType: !452, size: 64, offset: 7040)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1284, file: !69, line: 1246, baseType: !452, size: 64, offset: 7104)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1284, file: !69, line: 1248, baseType: !331, size: 32, offset: 7168)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1284, file: !69, line: 1249, baseType: !3394, size: 64, offset: 7232)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !69, line: 634, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1284, file: !69, line: 1252, baseType: !3397, size: 256, offset: 7296)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3398)
!3398 = !{!3399}
!3399 = !DISubrange(count: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1284, file: !69, line: 1253, baseType: !3401, size: 128, offset: 7552)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3402, line: 21, baseType: !3403)
!3402 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3402, line: 19, size: 128, elements: !3404)
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3403, file: !3402, line: 20, baseType: !3406, size: 128)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 128, elements: !3407)
!3407 = !{!3408}
!3408 = !DISubrange(count: 16)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1284, file: !69, line: 1255, baseType: !12, size: 32, offset: 7680)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1284, file: !69, line: 1261, baseType: !955, size: 256, offset: 7744)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1284, file: !69, line: 1267, baseType: !504, size: 64, offset: 8000)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1284, file: !69, line: 1269, baseType: !3413, size: 64, offset: 8064)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1044, line: 128, size: 1024, align: 512, elements: !3416)
!3416 = !{!3417, !3421, !3422, !3429, !3435, !3439, !3443, !3447, !3448, !3452, !3456, !3461, !3465}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3415, file: !1044, line: 129, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!106, !1042, !12}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3415, file: !1044, line: 130, baseType: !3418, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3415, file: !1044, line: 131, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!106, !3426, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3415, file: !1044, line: 132, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!106, !3426, !12, !504, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3415, file: !1044, line: 134, baseType: !3436, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!106, !3426}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3415, file: !1044, line: 135, baseType: !3440, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!106, !1042}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3415, file: !1044, line: 136, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !1042}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3415, file: !1044, line: 137, baseType: !3444, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3415, file: !1044, line: 138, baseType: !3449, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !1042, !1077}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3415, file: !1044, line: 139, baseType: !3453, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!514, !1042, !514, !106}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3415, file: !1044, line: 140, baseType: !3457, size: 64, offset: 640)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!1037, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3415, file: !1044, line: 141, baseType: !3462, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!106, !1200, !308}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3415, file: !1044, line: 142, baseType: !3466, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!1042, !1042, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1284, file: !69, line: 1271, baseType: !3472, size: 448, offset: 8128)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2706, line: 63, size: 448, elements: !3473)
!3473 = !{!3474, !3479, !3480, !3481, !3482, !3483, !3484}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3472, file: !2706, line: 64, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!426, !3478, !2704}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3472, file: !2706, line: 66, baseType: !3475, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3472, file: !2706, line: 69, baseType: !1192, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3472, file: !2706, line: 70, baseType: !106, size: 32, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3472, file: !2706, line: 71, baseType: !12, size: 32, offset: 224)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3472, file: !2706, line: 74, baseType: !416, size: 128, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3472, file: !2706, line: 85, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1284, file: !69, line: 1274, baseType: !366, size: 64, offset: 8576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1284, file: !69, line: 1280, baseType: !366, size: 64, offset: 8640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1284, file: !69, line: 1283, baseType: !106, size: 32, offset: 8704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1284, file: !69, line: 1286, baseType: !2031, size: 32, offset: 8736)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1284, file: !69, line: 1289, baseType: !2527, size: 64, offset: 8768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1284, file: !69, line: 1290, baseType: !223, size: 64, offset: 8832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1284, file: !69, line: 1297, baseType: !589, size: 64, offset: 8896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1284, file: !69, line: 1304, baseType: !3494, size: 64, offset: 8960)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3495, line: 49, size: 64, elements: !3496)
!3495 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3494, file: !3495, line: 50, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3495, line: 41, size: 512, align: 512, elements: !3500)
!3500 = !{!3501, !3502, !3507}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3499, file: !3495, line: 43, baseType: !242, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3499, file: !3495, line: 45, baseType: !3503, size: 192, offset: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3495, line: 29, size: 192, elements: !3504)
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3503, file: !3495, line: 30, baseType: !416, size: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3503, file: !3495, line: 32, baseType: !1192, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3499, file: !3495, line: 46, baseType: !1192, size: 64, offset: 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1284, file: !69, line: 1305, baseType: !3494, size: 64, offset: 9024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1284, file: !69, line: 1306, baseType: !493, size: 128, align: 64, offset: 9088)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1284, file: !69, line: 1307, baseType: !2466, size: 256, offset: 9216)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1284, file: !69, line: 1309, baseType: !955, size: 256, offset: 9472)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1284, file: !69, line: 1314, baseType: !106, size: 32, offset: 9728)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1284, file: !69, line: 1317, baseType: !242, size: 32, align: 512, offset: 10240)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1284, file: !69, line: 1318, baseType: !416, size: 128, offset: 10304)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1284, file: !69, line: 1320, baseType: !242, size: 32, offset: 10432)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1284, file: !69, line: 1321, baseType: !416, size: 128, offset: 10496)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1078, file: !69, line: 656, baseType: !1434, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1078, file: !69, line: 659, baseType: !233, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1078, file: !69, line: 663, baseType: !426, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !69, line: 671, baseType: !3521, size: 32, offset: 704)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !69, line: 671, size: 32, elements: !3522)
!3522 = !{!3523, !3525}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3521, file: !69, line: 672, baseType: !3524, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3521, file: !69, line: 673, baseType: !12, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1078, file: !69, line: 675, baseType: !1152, size: 32, offset: 736)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1078, file: !69, line: 676, baseType: !963, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1078, file: !69, line: 677, baseType: !1188, size: 128, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1078, file: !69, line: 678, baseType: !1188, size: 128, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1078, file: !69, line: 679, baseType: !1188, size: 128, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1078, file: !69, line: 680, baseType: !242, size: 32, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1078, file: !69, line: 681, baseType: !282, size: 16, offset: 1248)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1078, file: !69, line: 682, baseType: !270, size: 8, offset: 1264)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1078, file: !69, line: 683, baseType: !270, size: 8, offset: 1272)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1078, file: !69, line: 684, baseType: !2837, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1078, file: !69, line: 691, baseType: !426, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1078, file: !69, line: 692, baseType: !431, size: 320, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1078, file: !69, line: 694, baseType: !426, size: 64, offset: 1728)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1078, file: !69, line: 695, baseType: !426, size: 64, offset: 1792)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1078, file: !69, line: 697, baseType: !228, size: 128, offset: 1856)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1078, file: !69, line: 698, baseType: !416, size: 128, offset: 1984)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1078, file: !69, line: 707, baseType: !416, size: 128, offset: 2112)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1078, file: !69, line: 708, baseType: !416, size: 128, offset: 2240)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !69, line: 709, baseType: !3545, size: 128, offset: 2368)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !69, line: 709, size: 128, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3545, file: !69, line: 710, baseType: !223, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3545, file: !69, line: 711, baseType: !493, size: 128, align: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1078, file: !69, line: 713, baseType: !368, size: 64, offset: 2496)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1078, file: !69, line: 714, baseType: !368, size: 64, offset: 2560)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1078, file: !69, line: 715, baseType: !262, size: 32, offset: 2624)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1078, file: !69, line: 716, baseType: !262, size: 32, offset: 2656)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1078, file: !69, line: 717, baseType: !262, size: 32, offset: 2688)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1078, file: !69, line: 719, baseType: !262, size: 32, offset: 2720)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !69, line: 721, baseType: !3556, size: 64, offset: 2752)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !69, line: 721, size: 64, elements: !3557)
!3557 = !{!3558, !3684}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3556, file: !69, line: 722, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !69, line: 1914, size: 2112, elements: !3562)
!3562 = !{!3563, !3564, !3568, !3572, !3576, !3577, !3578, !3584, !3597, !3601, !3605, !3606, !3610, !3611, !3615, !3620, !3621, !3625, !3629, !3635, !3636, !3640, !3641, !3647, !3651, !3652, !3657, !3661, !3665, !3669, !3673, !3674, !3680}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3561, file: !69, line: 1915, baseType: !1317, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3561, file: !69, line: 1916, baseType: !3565, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!963, !941, !963, !106}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3561, file: !69, line: 1917, baseType: !3569, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!1231, !941, !514, !1234, !2158}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3561, file: !69, line: 1918, baseType: !3573, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!1231, !941, !504, !1234, !2158}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3561, file: !69, line: 1919, baseType: !1894, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3561, file: !69, line: 1920, baseType: !1894, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3561, file: !69, line: 1921, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!106, !1897, !3582, !12}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !69, line: 53, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3561, file: !69, line: 1923, baseType: !3585, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!106, !941, !3588}
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !69, line: 1858, size: 128, elements: !3590)
!3590 = !{!3591, !3596}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3589, file: !69, line: 1859, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !69, line: 1855, baseType: !3593)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!308, !3588, !504, !106, !963, !344, !12}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3589, file: !69, line: 1860, baseType: !963, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3561, file: !69, line: 1924, baseType: !3598, size: 64, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!2178, !941, !2180}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3561, file: !69, line: 1925, baseType: !3602, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!1192, !941, !12, !426}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3561, file: !69, line: 1926, baseType: !3602, size: 64, offset: 640)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3561, file: !69, line: 1927, baseType: !3607, size: 64, offset: 704)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!106, !941, !1574}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3561, file: !69, line: 1928, baseType: !426, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3561, file: !69, line: 1929, baseType: !3612, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!106, !1077, !941}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3561, file: !69, line: 1930, baseType: !3616, size: 64, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!106, !941, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !69, line: 1061, baseType: !233)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3561, file: !69, line: 1931, baseType: !3612, size: 64, offset: 960)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3561, file: !69, line: 1932, baseType: !3622, size: 64, offset: 1024)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!106, !941, !963, !963, !106}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3561, file: !69, line: 1933, baseType: !3626, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!106, !106, !941, !106}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3561, file: !69, line: 1934, baseType: !3630, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!106, !941, !106, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !69, line: 1063, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3561, file: !69, line: 1935, baseType: !938, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3561, file: !69, line: 1936, baseType: !3637, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!106, !106}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3561, file: !69, line: 1937, baseType: !3630, size: 64, offset: 1344)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3561, file: !69, line: 1938, baseType: !3642, size: 64, offset: 1408)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!1231, !3645, !941, !2158, !1234, !12}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !617, line: 59, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3561, file: !69, line: 1939, baseType: !3648, size: 64, offset: 1472)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!1231, !941, !2158, !3645, !1234, !12}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3561, file: !69, line: 1940, baseType: !2021, size: 64, offset: 1536)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3561, file: !69, line: 1941, baseType: !3653, size: 64, offset: 1600)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!106, !941, !106, !3656, !1871}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3561, file: !69, line: 1942, baseType: !3658, size: 64, offset: 1664)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!1192, !941, !106, !963, !963}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3561, file: !69, line: 1944, baseType: !3662, size: 64, offset: 1728)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !2134, !941}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3561, file: !69, line: 1948, baseType: !3666, size: 64, offset: 1792)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!1231, !941, !963, !941, !963, !1234, !12}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3561, file: !69, line: 1950, baseType: !3670, size: 64, offset: 1856)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!963, !941, !963, !941, !963, !963, !12}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3561, file: !69, line: 1953, baseType: !3622, size: 64, offset: 1920)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3561, file: !69, line: 1954, baseType: !3675, size: 64, offset: 1984)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!106, !3678, !12}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !69, line: 1911, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3561, file: !69, line: 1955, baseType: !3681, size: 64, offset: 2048)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!106, !3678, !3582, !12}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3556, file: !69, line: 723, baseType: !2595, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1078, file: !69, line: 725, baseType: !3686, size: 64, offset: 2816)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !69, line: 725, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1078, file: !69, line: 726, baseType: !1435, size: 1536, align: 64, offset: 2880)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1078, file: !69, line: 727, baseType: !416, size: 128, offset: 4416)
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !69, line: 728, baseType: !3691, size: 64, offset: 4544)
!3691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !69, line: 728, size: 64, elements: !3692)
!3692 = !{!3693, !3694, !3697, !3698}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3691, file: !69, line: 729, baseType: !3645, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3691, file: !69, line: 730, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !69, line: 730, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3691, file: !69, line: 731, baseType: !514, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3691, file: !69, line: 732, baseType: !12, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1078, file: !69, line: 735, baseType: !331, size: 32, offset: 4608)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1078, file: !69, line: 738, baseType: !331, size: 32, offset: 4640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1078, file: !69, line: 739, baseType: !3394, size: 64, offset: 4672)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1078, file: !69, line: 750, baseType: !233, size: 64, offset: 4736)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1043, file: !1044, line: 91, baseType: !3704, size: 256, offset: 448)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !3398)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1043, file: !1044, line: 94, baseType: !3706, size: 64, offset: 704)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3707, line: 25, size: 64, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !3707, line: 26, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3706, file: !3707, line: 26, size: 64, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3710, file: !3707, line: 28, baseType: !345, size: 64, align: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3710, file: !3707, line: 30, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3710, file: !3707, line: 30, size: 64, elements: !3715)
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3714, file: !3707, line: 31, baseType: !242, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3714, file: !3707, line: 32, baseType: !106, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1043, file: !1044, line: 95, baseType: !3413, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1043, file: !1044, line: 96, baseType: !1283, size: 64, offset: 832)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1043, file: !1044, line: 97, baseType: !426, size: 64, offset: 896)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1043, file: !1044, line: 98, baseType: !233, size: 64, offset: 960)
!3722 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !1044, line: 100, baseType: !3723, size: 128, offset: 1024)
!3723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !1044, line: 100, size: 128, elements: !3724)
!3724 = !{!3725, !3726}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3723, file: !1044, line: 101, baseType: !416, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3723, file: !1044, line: 102, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1043, file: !1044, line: 104, baseType: !416, size: 128, offset: 1152)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1043, file: !1044, line: 105, baseType: !416, size: 128, offset: 1280)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1043, file: !1044, line: 113, baseType: !3731, size: 128, offset: 1408)
!3731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !1044, line: 109, size: 128, elements: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3731, file: !1044, line: 110, baseType: !228, size: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3731, file: !1044, line: 111, baseType: !1053, size: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3731, file: !1044, line: 112, baseType: !493, size: 128, align: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1038, file: !1039, line: 72, baseType: !1283, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1038, file: !1039, line: 73, baseType: !106, size: 32, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1038, file: !1039, line: 74, baseType: !1117, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1033, file: !1034, line: 10, baseType: !1042, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !942, file: !69, line: 1015, baseType: !1077, size: 64, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !942, file: !69, line: 1016, baseType: !3559, size: 64, offset: 1408)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !942, file: !69, line: 1018, baseType: !344, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !942, file: !69, line: 1020, baseType: !233, size: 64, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !942, file: !69, line: 1023, baseType: !233, size: 64, offset: 1600)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !942, file: !69, line: 1027, baseType: !222, size: 64, offset: 1664)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !942, file: !69, line: 1029, baseType: !1434, size: 64, offset: 1728)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !942, file: !69, line: 1030, baseType: !2031, size: 32, offset: 1792)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !942, file: !69, line: 1031, baseType: !2031, size: 32, offset: 1824)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !917, file: !35, line: 756, baseType: !426, size: 64, offset: 704)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !917, file: !35, line: 757, baseType: !426, size: 64, offset: 768)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !917, file: !35, line: 760, baseType: !426, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !917, file: !35, line: 761, baseType: !426, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !917, file: !35, line: 763, baseType: !426, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !917, file: !35, line: 764, baseType: !3755, size: 64, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1589, line: 299, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1589, line: 299, size: 64, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3757, file: !1589, line: 299, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1594, line: 18, baseType: !426)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !917, file: !35, line: 773, baseType: !262, size: 32, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !917, file: !35, line: 785, baseType: !262, size: 32, offset: 1120)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !917, file: !35, line: 795, baseType: !3764, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3765, file: !35, line: 727, baseType: !344, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3765, file: !35, line: 728, baseType: !106, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !917, file: !35, line: 801, baseType: !426, size: 64, offset: 1216)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !917, file: !35, line: 804, baseType: !366, size: 64, offset: 1280)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !917, file: !35, line: 806, baseType: !106, size: 32, offset: 1344)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !917, file: !35, line: 808, baseType: !242, size: 32, offset: 1376)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !917, file: !35, line: 823, baseType: !431, size: 320, offset: 1408)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !917, file: !35, line: 825, baseType: !416, size: 128, offset: 1728)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !917, file: !35, line: 845, baseType: !106, size: 32, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !917, file: !35, line: 849, baseType: !426, size: 64, offset: 1920)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !917, file: !35, line: 850, baseType: !426, size: 64, offset: 1984)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !917, file: !35, line: 852, baseType: !426, size: 64, offset: 2048)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !917, file: !35, line: 853, baseType: !426, size: 64, offset: 2112)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !917, file: !35, line: 854, baseType: !368, size: 64, offset: 2176)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !917, file: !35, line: 855, baseType: !426, size: 64, offset: 2240)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !917, file: !35, line: 856, baseType: !426, size: 64, offset: 2304)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !917, file: !35, line: 857, baseType: !426, size: 64, offset: 2368)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !917, file: !35, line: 858, baseType: !426, size: 64, offset: 2432)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !917, file: !35, line: 865, baseType: !787, size: 32, offset: 2496)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !917, file: !35, line: 867, baseType: !242, size: 32, offset: 2528)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !917, file: !35, line: 869, baseType: !426, size: 64, offset: 2560)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !917, file: !35, line: 869, baseType: !426, size: 64, offset: 2624)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !917, file: !35, line: 869, baseType: !426, size: 64, offset: 2688)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !917, file: !35, line: 869, baseType: !426, size: 64, offset: 2752)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !917, file: !35, line: 870, baseType: !426, size: 64, offset: 2816)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !917, file: !35, line: 870, baseType: !426, size: 64, offset: 2880)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !917, file: !35, line: 870, baseType: !426, size: 64, offset: 2944)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !917, file: !35, line: 871, baseType: !426, size: 64, offset: 3008)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !917, file: !35, line: 871, baseType: !426, size: 64, offset: 3072)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !917, file: !35, line: 871, baseType: !426, size: 64, offset: 3136)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !917, file: !35, line: 871, baseType: !426, size: 64, offset: 3200)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !917, file: !35, line: 873, baseType: !3799, size: 3328, offset: 3264)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 3328, elements: !3800)
!3800 = !{!3801}
!3801 = !DISubrange(count: 52)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !917, file: !35, line: 875, baseType: !3286, size: 1280, offset: 6592)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !917, file: !35, line: 877, baseType: !3804, size: 64, offset: 7872)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !917, file: !35, line: 880, baseType: !3807, size: 1088, offset: 7936)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3808, line: 72, baseType: !3809)
!3808 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3808, line: 23, size: 1088, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3818, !3819, !3820, !3821, !3846, !3847, !3848}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3809, file: !3808, line: 28, baseType: !344, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3809, file: !3808, line: 38, baseType: !368, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3809, file: !3808, line: 40, baseType: !426, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3809, file: !3808, line: 43, baseType: !431, size: 320, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3809, file: !3808, line: 44, baseType: !3816, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3808, line: 44, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3809, file: !3808, line: 48, baseType: !426, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3809, file: !3808, line: 59, baseType: !955, size: 256, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3809, file: !3808, line: 60, baseType: !233, size: 64, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3809, file: !3808, line: 61, baseType: !3822, size: 64, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3825, line: 13, size: 1216, elements: !3826)
!3825 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3824, file: !3825, line: 14, baseType: !233, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3824, file: !3825, line: 15, baseType: !426, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3824, file: !3825, line: 17, baseType: !426, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3824, file: !3825, line: 17, baseType: !426, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3824, file: !3825, line: 18, baseType: !426, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3824, file: !3825, line: 18, baseType: !426, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3824, file: !3825, line: 19, baseType: !2070, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3824, file: !3825, line: 21, baseType: !1192, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3824, file: !3825, line: 23, baseType: !1192, size: 64, offset: 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3824, file: !3825, line: 24, baseType: !1192, size: 64, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3824, file: !3825, line: 25, baseType: !1192, size: 64, offset: 640)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3824, file: !3825, line: 26, baseType: !1192, size: 64, offset: 704)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3824, file: !3825, line: 27, baseType: !1192, size: 64, offset: 768)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3824, file: !3825, line: 28, baseType: !1192, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3824, file: !3825, line: 29, baseType: !1192, size: 64, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3824, file: !3825, line: 30, baseType: !1192, size: 64, offset: 960)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3824, file: !3825, line: 31, baseType: !1192, size: 64, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3824, file: !3825, line: 32, baseType: !1192, size: 64, offset: 1088)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3824, file: !3825, line: 33, baseType: !1192, size: 64, offset: 1152)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3809, file: !3808, line: 63, baseType: !262, size: 32, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3809, file: !3808, line: 69, baseType: !280, size: 16, offset: 1056)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3809, file: !3808, line: 70, baseType: !2359, size: 16, offset: 1072)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !917, file: !35, line: 882, baseType: !426, size: 64, offset: 9024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !917, file: !35, line: 885, baseType: !242, size: 32, offset: 9088)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !917, file: !35, line: 886, baseType: !3852, size: 64, offset: 9152)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !917, file: !35, line: 901, baseType: !589, size: 64, offset: 9216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !917, file: !35, line: 904, baseType: !941, size: 64, offset: 9280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !917, file: !35, line: 906, baseType: !3857, size: 64, offset: 9344)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !917, file: !35, line: 930, baseType: !262, size: 32, offset: 9408)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !917, file: !35, line: 933, baseType: !262, size: 32, offset: 9440)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !917, file: !35, line: 935, baseType: !3862, size: 64, offset: 9472)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !157, line: 103, size: 64, elements: !3863)
!3863 = !{!3864}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3862, file: !157, line: 104, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !157, line: 101, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !917, file: !35, line: 940, baseType: !366, size: 64, offset: 9536)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !917, file: !35, line: 942, baseType: !2466, size: 256, offset: 9600)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !914, file: !35, line: 986, baseType: !3870, offset: 10240)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !603)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !616, file: !617, line: 882, baseType: !913, size: 64, offset: 9792)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !616, file: !617, line: 884, baseType: !106, size: 32, offset: 9856)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !616, file: !617, line: 885, baseType: !106, size: 32, offset: 9888)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !616, file: !617, line: 886, baseType: !106, size: 32, offset: 9920)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !616, file: !617, line: 888, baseType: !106, size: 32, offset: 9952)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !616, file: !617, line: 890, baseType: !426, size: 64, offset: 9984)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !616, file: !617, line: 893, baseType: !12, size: 32, offset: 10048)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !616, file: !617, line: 896, baseType: !12, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !616, file: !617, line: 897, baseType: !12, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !616, file: !617, line: 898, baseType: !12, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !616, file: !617, line: 899, baseType: !12, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !616, file: !617, line: 919, baseType: !12, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !616, file: !617, line: 922, baseType: !12, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !616, file: !617, line: 923, baseType: !12, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !616, file: !617, line: 925, baseType: !12, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !616, file: !617, line: 939, baseType: !12, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !616, file: !617, line: 941, baseType: !12, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !616, file: !617, line: 944, baseType: !12, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !616, file: !617, line: 956, baseType: !12, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !616, file: !617, line: 962, baseType: !12, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !616, file: !617, line: 966, baseType: !12, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !616, file: !617, line: 969, baseType: !426, size: 64, offset: 10176)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !616, file: !617, line: 971, baseType: !3894, size: 448, offset: 10240)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !151, line: 25, size: 448, elements: !3895)
!3895 = !{!3896, !3897, !3902}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3894, file: !151, line: 26, baseType: !426, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3894, file: !151, line: 27, baseType: !3898, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!1192, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3894, file: !151, line: 28, baseType: !3903, size: 320, offset: 128)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3894, file: !151, line: 28, size: 320, elements: !3904)
!3904 = !{!3905, !3915, !3940}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3903, file: !151, line: 37, baseType: !3906, size: 320)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !151, line: 30, size: 320, elements: !3907)
!3907 = !{!3908, !3910, !3911, !3912, !3913, !3914}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3906, file: !151, line: 31, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3906, file: !151, line: 32, baseType: !330, size: 32, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3906, file: !151, line: 33, baseType: !330, size: 32, offset: 96)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3906, file: !151, line: 34, baseType: !330, size: 32, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3906, file: !151, line: 35, baseType: !344, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3906, file: !151, line: 36, baseType: !3909, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3903, file: !151, line: 47, baseType: !3916, size: 192)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !151, line: 39, size: 192, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3939}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3916, file: !151, line: 40, baseType: !779, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3916, file: !151, line: 41, baseType: !150, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !151, line: 42, baseType: !3921, size: 64, offset: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !151, line: 42, size: 64, elements: !3922)
!3922 = !{!3923, !3931}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3921, file: !151, line: 43, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3926, line: 7, size: 128, elements: !3927)
!3926 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3927 = !{!3928, !3930}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3925, file: !3926, line: 8, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !356, line: 93, baseType: !374)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3925, file: !3926, line: 9, baseType: !374, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3921, file: !151, line: 44, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3934, line: 7, size: 64, elements: !3935)
!3934 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3935 = !{!3936, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3933, file: !3934, line: 8, baseType: !3937, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3934, line: 5, baseType: !410)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3933, file: !3934, line: 9, baseType: !410, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3916, file: !151, line: 46, baseType: !344, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3903, file: !151, line: 55, baseType: !3941, size: 256)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !151, line: 49, size: 256, elements: !3942)
!3942 = !{!3943, !3946, !3947, !3948, !3949}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3941, file: !151, line: 50, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !151, line: 14, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3941, file: !151, line: 51, baseType: !106, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3941, file: !151, line: 52, baseType: !106, size: 32, offset: 96)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3941, file: !151, line: 53, baseType: !426, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3941, file: !151, line: 54, baseType: !426, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !616, file: !617, line: 973, baseType: !3951, size: 32, offset: 10688)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !224, line: 27, baseType: !3952)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !356, line: 28, baseType: !106)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !616, file: !617, line: 974, baseType: !3951, size: 32, offset: 10720)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !616, file: !617, line: 978, baseType: !426, size: 64, offset: 10752)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !616, file: !617, line: 987, baseType: !615, size: 64, offset: 10816)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !616, file: !617, line: 990, baseType: !615, size: 64, offset: 10880)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !616, file: !617, line: 995, baseType: !416, size: 128, offset: 10944)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !616, file: !617, line: 996, baseType: !416, size: 128, offset: 11072)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !616, file: !617, line: 997, baseType: !615, size: 64, offset: 11200)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !616, file: !617, line: 1005, baseType: !416, size: 128, offset: 11264)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !616, file: !617, line: 1006, baseType: !416, size: 128, offset: 11392)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !616, file: !617, line: 1009, baseType: !993, size: 64, offset: 11520)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !616, file: !617, line: 1010, baseType: !3964, size: 512, offset: 11584)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 512, elements: !524)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !616, file: !617, line: 1011, baseType: !416, size: 128, offset: 12096)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !616, file: !617, line: 1012, baseType: !416, size: 128, offset: 12224)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !616, file: !617, line: 1014, baseType: !2215, size: 64, offset: 12352)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !616, file: !617, line: 1017, baseType: !2352, size: 64, offset: 12416)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !616, file: !617, line: 1020, baseType: !2352, size: 64, offset: 12480)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !616, file: !617, line: 1023, baseType: !233, size: 64, offset: 12544)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !616, file: !617, line: 1025, baseType: !344, size: 64, offset: 12608)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !616, file: !617, line: 1026, baseType: !344, size: 64, offset: 12672)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !616, file: !617, line: 1031, baseType: !344, size: 64, offset: 12736)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !616, file: !617, line: 1032, baseType: !3975, size: 192, offset: 12800)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !617, line: 324, size: 192, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3975, file: !617, line: 326, baseType: !344, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3975, file: !617, line: 327, baseType: !344, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3975, file: !617, line: 328, baseType: !442, size: 32, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !616, file: !617, line: 1041, baseType: !426, size: 64, offset: 12992)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !616, file: !617, line: 1042, baseType: !426, size: 64, offset: 13056)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !616, file: !617, line: 1045, baseType: !344, size: 64, offset: 13120)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !616, file: !617, line: 1048, baseType: !344, size: 64, offset: 13184)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !616, file: !617, line: 1051, baseType: !426, size: 64, offset: 13248)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !616, file: !617, line: 1052, baseType: !426, size: 64, offset: 13312)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !616, file: !617, line: 1055, baseType: !3987, size: 640, offset: 13376)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3988, line: 132, size: 640, elements: !3989)
!3988 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3989 = !{!3990, !3996, !3997}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3987, file: !3988, line: 133, baseType: !3991, size: 576)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 576, elements: !989)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3988, line: 117, size: 192, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3992, file: !3988, line: 118, baseType: !344, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3992, file: !3988, line: 119, baseType: !793, size: 128, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3987, file: !3988, line: 134, baseType: !12, size: 32, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3987, file: !3988, line: 135, baseType: !12, size: 32, offset: 608)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !616, file: !617, line: 1058, baseType: !3999, size: 448, offset: 14016)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3988, line: 144, size: 448, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3999, file: !3988, line: 145, baseType: !493, size: 128, align: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3999, file: !3988, line: 146, baseType: !955, size: 256, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3999, file: !3988, line: 147, baseType: !12, size: 32, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !616, file: !617, line: 1064, baseType: !360, size: 64, offset: 14464)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !616, file: !617, line: 1067, baseType: !360, size: 64, offset: 14528)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !616, file: !617, line: 1070, baseType: !360, size: 64, offset: 14592)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !616, file: !617, line: 1074, baseType: !402, size: 64, offset: 14656)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !616, file: !617, line: 1084, baseType: !4009, size: 128, offset: 14720)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3407)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !616, file: !617, line: 1086, baseType: !4011, size: 64, offset: 14848)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !617, line: 55, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !616, file: !617, line: 1089, baseType: !4014, size: 64, offset: 14912)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4015, line: 12, size: 64, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4016 = !{!4017}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4014, file: !4015, line: 13, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4015, line: 8, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !616, file: !617, line: 1090, baseType: !4021, size: 128, offset: 14976)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4022, line: 13, size: 128, elements: !4023)
!4022 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4023 = !{!4024}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4021, file: !4022, line: 14, baseType: !416, size: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !616, file: !617, line: 1097, baseType: !4026, size: 64, offset: 15104)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !617, line: 50, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !616, file: !617, line: 1100, baseType: !4029, size: 64, offset: 15168)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !617, line: 1100, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !616, file: !617, line: 1103, baseType: !4032, size: 64, offset: 15232)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !617, line: 53, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !616, file: !617, line: 1107, baseType: !4035, size: 64, offset: 15296)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4037, line: 31, size: 576, elements: !4038)
!4037 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4038 = !{!4039, !4040, !4068, !4071, !4074, !4075, !4078, !4081, !4082}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4036, file: !4037, line: 32, baseType: !333, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4036, file: !4037, line: 33, baseType: !4041, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4043, line: 24, size: 3456, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!4044 = !{!4045, !4055, !4056, !4057}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4042, file: !4043, line: 25, baseType: !4046, size: 3120)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !4047, line: 25, size: 3120, elements: !4048)
!4047 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !4046, file: !4047, line: 26, baseType: !326, size: 520)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4046, file: !4047, line: 27, baseType: !326, size: 520, offset: 520)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4046, file: !4047, line: 28, baseType: !326, size: 520, offset: 1040)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4046, file: !4047, line: 29, baseType: !326, size: 520, offset: 1560)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !4046, file: !4047, line: 30, baseType: !326, size: 520, offset: 2080)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !4046, file: !4047, line: 31, baseType: !326, size: 520, offset: 2600)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4042, file: !4043, line: 26, baseType: !589, size: 64, offset: 3136)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4042, file: !4043, line: 27, baseType: !592, size: 64, offset: 3200)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4042, file: !4043, line: 28, baseType: !4058, size: 192, offset: 3264)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !4059, line: 9, size: 192, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!4060 = !{!4061, !4062, !4066, !4067}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !4058, file: !4059, line: 10, baseType: !366, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4058, file: !4059, line: 11, baseType: !4063, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4065)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !4059, line: 7, flags: DIFlagFwdDecl)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !4058, file: !4059, line: 12, baseType: !12, size: 32, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4058, file: !4059, line: 13, baseType: !333, size: 32, offset: 160)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4036, file: !4037, line: 34, baseType: !4069, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4037, line: 10, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4036, file: !4037, line: 35, baseType: !4072, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4037, line: 8, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4036, file: !4037, line: 36, baseType: !1016, size: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4036, file: !4037, line: 37, baseType: !4076, size: 64, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !404, line: 34, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4036, file: !4037, line: 38, baseType: !4079, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4037, line: 38, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4036, file: !4037, line: 39, baseType: !4079, size: 64, offset: 448)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4036, file: !4037, line: 40, baseType: !4083, size: 64, offset: 512)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4037, line: 12, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !616, file: !617, line: 1110, baseType: !4086, size: 64, offset: 15360)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4088, line: 93, size: 8768, elements: !4089)
!4088 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4137, !4146, !4147, !4149, !4150, !4151, !4154, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4192, !4193, !4200, !4210, !4213, !4214, !4217, !4218, !4219, !4220, !4221, !4222}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4087, file: !4088, line: 94, baseType: !333, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4087, file: !4088, line: 95, baseType: !262, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4087, file: !4088, line: 96, baseType: !106, size: 32, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4087, file: !4088, line: 97, baseType: !106, size: 32, offset: 96)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4087, file: !4088, line: 98, baseType: !416, size: 128, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4087, file: !4088, line: 100, baseType: !1003, size: 192, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4087, file: !4088, line: 103, baseType: !615, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4087, file: !4088, line: 106, baseType: !4098, size: 192, offset: 512)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !594, line: 32, size: 192, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4098, file: !594, line: 33, baseType: !416, size: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4098, file: !594, line: 34, baseType: !4102, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4103, line: 25, baseType: !4104)
!4103 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4103, line: 23, size: 64, elements: !4105)
!4105 = !{!4106}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4104, file: !4103, line: 24, baseType: !864, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4087, file: !4088, line: 109, baseType: !223, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4087, file: !4088, line: 112, baseType: !106, size: 32, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4087, file: !4088, line: 114, baseType: !106, size: 32, offset: 800)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4087, file: !4088, line: 115, baseType: !615, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4087, file: !4088, line: 118, baseType: !106, size: 32, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4087, file: !4088, line: 119, baseType: !12, size: 32, offset: 928)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4087, file: !4088, line: 121, baseType: !4114, size: 64, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4088, line: 80, size: 448, elements: !4116)
!4116 = !{!4117, !4118, !4124}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4115, file: !4088, line: 81, baseType: !262, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4115, file: !4088, line: 82, baseType: !4119, size: 128, offset: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4088, line: 75, size: 128, elements: !4120)
!4120 = !{!4121, !4122}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4119, file: !4088, line: 76, baseType: !615, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4119, file: !4088, line: 77, baseType: !4123, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4115, file: !4088, line: 83, baseType: !1539, size: 256, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4087, file: !4088, line: 132, baseType: !12, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4087, file: !4088, line: 133, baseType: !12, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4087, file: !4088, line: 138, baseType: !12, size: 32, offset: 1056)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4087, file: !4088, line: 139, baseType: !416, size: 128, offset: 1088)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4087, file: !4088, line: 142, baseType: !732, size: 512, offset: 1216)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4087, file: !4088, line: 143, baseType: !740, size: 64, offset: 1728)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4087, file: !4088, line: 150, baseType: !4132, size: 256, offset: 1792)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4133, size: 256, elements: !2342)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4088, line: 38, size: 128, elements: !4134)
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4133, file: !4088, line: 39, baseType: !344, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4133, file: !4088, line: 40, baseType: !344, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4087, file: !4088, line: 156, baseType: !4138, size: 192, offset: 2048)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4088, line: 66, size: 192, elements: !4139)
!4139 = !{!4140}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4138, file: !4088, line: 67, baseType: !4141, size: 192)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4088, line: 47, size: 192, elements: !4142)
!4142 = !{!4143, !4144, !4145}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4141, file: !4088, line: 48, baseType: !368, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4141, file: !4088, line: 49, baseType: !368, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4141, file: !4088, line: 50, baseType: !368, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4087, file: !4088, line: 160, baseType: !3987, size: 640, offset: 2240)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4087, file: !4088, line: 163, baseType: !4148, size: 256, offset: 2880)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 256, elements: !524)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4087, file: !4088, line: 169, baseType: !993, size: 64, offset: 3136)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4087, file: !4088, line: 172, baseType: !106, size: 32, offset: 3200)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4087, file: !4088, line: 174, baseType: !4152, size: 64, offset: 3264)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4088, line: 174, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4087, file: !4088, line: 185, baseType: !4155, size: 64, offset: 3328)
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !783, line: 860, baseType: !4156)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !783, line: 853, size: 64, elements: !4157)
!4157 = !{!4158, !4159}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4156, file: !783, line: 858, baseType: !1048, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4156, file: !783, line: 859, baseType: !242, size: 32, offset: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4087, file: !4088, line: 186, baseType: !344, size: 64, offset: 3392)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4087, file: !4088, line: 186, baseType: !344, size: 64, offset: 3456)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4087, file: !4088, line: 186, baseType: !344, size: 64, offset: 3520)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4087, file: !4088, line: 186, baseType: !344, size: 64, offset: 3584)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4087, file: !4088, line: 187, baseType: !344, size: 64, offset: 3648)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4087, file: !4088, line: 188, baseType: !344, size: 64, offset: 3712)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4087, file: !4088, line: 189, baseType: !3975, size: 192, offset: 3776)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4087, file: !4088, line: 190, baseType: !426, size: 64, offset: 3968)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4087, file: !4088, line: 190, baseType: !426, size: 64, offset: 4032)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4087, file: !4088, line: 190, baseType: !426, size: 64, offset: 4096)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4087, file: !4088, line: 190, baseType: !426, size: 64, offset: 4160)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4087, file: !4088, line: 191, baseType: !426, size: 64, offset: 4224)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4087, file: !4088, line: 191, baseType: !426, size: 64, offset: 4288)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4087, file: !4088, line: 191, baseType: !426, size: 64, offset: 4352)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4087, file: !4088, line: 191, baseType: !426, size: 64, offset: 4416)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4087, file: !4088, line: 192, baseType: !426, size: 64, offset: 4480)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4087, file: !4088, line: 192, baseType: !426, size: 64, offset: 4544)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4087, file: !4088, line: 192, baseType: !426, size: 64, offset: 4608)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4087, file: !4088, line: 192, baseType: !426, size: 64, offset: 4672)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4087, file: !4088, line: 193, baseType: !426, size: 64, offset: 4736)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4087, file: !4088, line: 193, baseType: !426, size: 64, offset: 4800)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4087, file: !4088, line: 194, baseType: !4182, size: 448, offset: 4864)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4183, line: 12, size: 448, elements: !4184)
!4183 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4184 = !{!4185, !4186, !4187, !4188, !4189, !4190, !4191}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4182, file: !4183, line: 15, baseType: !344, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4182, file: !4183, line: 17, baseType: !344, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4182, file: !4183, line: 19, baseType: !344, size: 64, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4182, file: !4183, line: 21, baseType: !344, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4182, file: !4183, line: 29, baseType: !344, size: 64, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4182, file: !4183, line: 35, baseType: !344, size: 64, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4182, file: !4183, line: 44, baseType: !344, size: 64, offset: 384)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4087, file: !4088, line: 202, baseType: !346, size: 64, offset: 5312)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4087, file: !4088, line: 213, baseType: !4194, size: 2048, offset: 5376)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4195, size: 2048, elements: !3407)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4196, line: 43, size: 128, elements: !4197)
!4196 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4195, file: !4196, line: 44, baseType: !1236, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4195, file: !4196, line: 45, baseType: !1236, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4087, file: !4088, line: 216, baseType: !4201, size: 448, offset: 7424)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4088, line: 30, size: 448, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208, !4209}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4201, file: !4088, line: 31, baseType: !106, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4201, file: !4088, line: 32, baseType: !1192, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4201, file: !4088, line: 33, baseType: !426, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4201, file: !4088, line: 34, baseType: !344, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4201, file: !4088, line: 34, baseType: !344, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4201, file: !4088, line: 35, baseType: !426, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4201, file: !4088, line: 35, baseType: !426, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4087, file: !4088, line: 219, baseType: !4211, size: 64, offset: 7872)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4088, line: 219, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4087, file: !4088, line: 222, baseType: !12, size: 32, offset: 7936)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4087, file: !4088, line: 223, baseType: !4215, size: 64, offset: 8000)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4088, line: 223, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4087, file: !4088, line: 230, baseType: !308, size: 8, offset: 8064)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4087, file: !4088, line: 231, baseType: !464, size: 16, offset: 8080)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4087, file: !4088, line: 232, baseType: !464, size: 16, offset: 8096)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4087, file: !4088, line: 234, baseType: !913, size: 64, offset: 8128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4087, file: !4088, line: 237, baseType: !955, size: 256, offset: 8192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4087, file: !4088, line: 243, baseType: !431, size: 320, offset: 8448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !616, file: !617, line: 1111, baseType: !4224, size: 64, offset: 15424)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4088, line: 20, size: 16640, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4225, file: !4088, line: 21, baseType: !242, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4225, file: !4088, line: 22, baseType: !333, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4225, file: !4088, line: 23, baseType: !1003, size: 192, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4225, file: !4088, line: 24, baseType: !4231, size: 16384, offset: 256)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4232, size: 16384, elements: !1373)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !594, line: 51, size: 256, elements: !4233)
!4233 = !{!4234}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4232, file: !594, line: 52, baseType: !4235, size: 256)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !594, line: 37, size: 256, elements: !4236)
!4236 = !{!4237, !4244, !4245, !4249}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4235, file: !594, line: 39, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4239, line: 83, baseType: !4240)
!4239 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4239, line: 82, baseType: !4242)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !106}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4235, file: !594, line: 40, baseType: !426, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4235, file: !594, line: 46, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4239, line: 86, baseType: !4247)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4239, line: 85, baseType: !2570)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4235, file: !594, line: 48, baseType: !4102, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !616, file: !617, line: 1112, baseType: !4102, size: 64, offset: 15488)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !616, file: !617, line: 1113, baseType: !4102, size: 64, offset: 15552)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !616, file: !617, line: 1115, baseType: !4102, size: 64, offset: 15616)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !616, file: !617, line: 1116, baseType: !4098, size: 192, offset: 15680)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !616, file: !617, line: 1117, baseType: !426, size: 64, offset: 15872)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !616, file: !617, line: 1118, baseType: !1234, size: 64, offset: 15936)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !616, file: !617, line: 1119, baseType: !12, size: 32, offset: 16000)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !616, file: !617, line: 1121, baseType: !496, size: 64, offset: 16064)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !616, file: !617, line: 1125, baseType: !4259, size: 64, offset: 16128)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !617, line: 43, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !616, file: !617, line: 1127, baseType: !349, size: 32, offset: 16192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !616, file: !617, line: 1128, baseType: !12, size: 32, offset: 16224)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !616, file: !617, line: 1130, baseType: !4264, size: 128, offset: 16256)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4265, line: 37, size: 128, elements: !4266)
!4265 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4264, file: !4265, line: 38, baseType: !106, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4264, file: !4265, line: 39, baseType: !262, size: 32, offset: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4264, file: !4265, line: 40, baseType: !4270, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4265, line: 24, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !616, file: !617, line: 1131, baseType: !4273, size: 256, offset: 16384)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4274, line: 12, size: 256, elements: !4275)
!4274 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4273, file: !4274, line: 13, baseType: !514, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4273, file: !4274, line: 14, baseType: !426, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4273, file: !4274, line: 15, baseType: !426, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4273, file: !4274, line: 16, baseType: !308, size: 8, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !616, file: !617, line: 1134, baseType: !344, size: 64, offset: 16640)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !616, file: !617, line: 1135, baseType: !344, size: 64, offset: 16704)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !616, file: !617, line: 1138, baseType: !242, size: 32, offset: 16768)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !616, file: !617, line: 1141, baseType: !442, size: 32, offset: 16800)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !616, file: !617, line: 1143, baseType: !4285, size: 64, offset: 16832)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !617, line: 735, size: 64, elements: !4286)
!4286 = !{!4287}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4285, file: !617, line: 736, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !616, file: !617, line: 1147, baseType: !796, size: 128, offset: 16896)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !616, file: !617, line: 1149, baseType: !615, size: 64, offset: 17024)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !616, file: !617, line: 1151, baseType: !4292, size: 64, offset: 17088)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !617, line: 1151, flags: DIFlagFwdDecl)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !616, file: !617, line: 1188, baseType: !233, size: 64, offset: 17152)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !616, file: !617, line: 1191, baseType: !4296, size: 64, offset: 17216)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !617, line: 44, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !616, file: !617, line: 1194, baseType: !4299, size: 64, offset: 17280)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !617, line: 45, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !616, file: !617, line: 1197, baseType: !4302, size: 64, offset: 17344)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !617, line: 61, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !616, file: !617, line: 1199, baseType: !4305, size: 64, offset: 17408)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2875, line: 99, size: 128, elements: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4306, file: !2875, line: 100, baseType: !366, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4306, file: !2875, line: 101, baseType: !262, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4306, file: !2875, line: 103, baseType: !282, size: 16, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !616, file: !617, line: 1202, baseType: !4312, size: 64, offset: 17472)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !617, line: 48, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !616, file: !617, line: 1205, baseType: !426, size: 64, offset: 17536)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !616, file: !617, line: 1206, baseType: !4316, size: 64, offset: 17600)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !594, line: 14, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !594, line: 12, size: 384, elements: !4319)
!4319 = !{!4320}
!4320 = !DIDerivedType(tag: DW_TAG_member, scope: !4318, file: !594, line: 13, baseType: !4321, size: 384)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4318, file: !594, line: 13, size: 384, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4321, file: !594, line: 13, baseType: !106, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4321, file: !594, line: 13, baseType: !106, size: 32, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4321, file: !594, line: 13, baseType: !106, size: 32, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4321, file: !594, line: 13, baseType: !4327, size: 256, offset: 128)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4328, line: 37, size: 256, elements: !4329)
!4328 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4329 = !{!4330, !4335, !4348, !4354, !4363, !4390, !4395}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4327, file: !4328, line: 42, baseType: !4331, size: 64)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 39, size: 64, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4331, file: !4328, line: 40, baseType: !3952, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4331, file: !4328, line: 41, baseType: !355, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4327, file: !4328, line: 50, baseType: !4336, size: 192)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 45, size: 192, elements: !4337)
!4337 = !{!4338, !4340, !4341, !4347}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4336, file: !4328, line: 46, baseType: !4339, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !356, line: 95, baseType: !106)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4336, file: !4328, line: 47, baseType: !106, size: 32, offset: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4336, file: !4328, line: 48, baseType: !4342, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4328, line: 11, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4328, line: 8, size: 64, elements: !4344)
!4344 = !{!4345, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4343, file: !4328, line: 9, baseType: !106, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4343, file: !4328, line: 10, baseType: !233, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4336, file: !4328, line: 49, baseType: !106, size: 32, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4327, file: !4328, line: 57, baseType: !4349, size: 128)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 53, size: 128, elements: !4350)
!4350 = !{!4351, !4352, !4353}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4349, file: !4328, line: 54, baseType: !3952, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4349, file: !4328, line: 55, baseType: !355, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4349, file: !4328, line: 56, baseType: !4342, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4327, file: !4328, line: 66, baseType: !4355, size: 256)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 60, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4362}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4355, file: !4328, line: 61, baseType: !3952, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4355, file: !4328, line: 62, baseType: !355, size: 32, offset: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4355, file: !4328, line: 63, baseType: !106, size: 32, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4355, file: !4328, line: 64, baseType: !4361, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !356, line: 94, baseType: !1233)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4355, file: !4328, line: 65, baseType: !4361, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4327, file: !4328, line: 105, baseType: !4364, size: 256)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 69, size: 256, elements: !4365)
!4365 = !{!4366, !4367}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4364, file: !4328, line: 70, baseType: !233, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, scope: !4364, file: !4328, line: 79, baseType: !4368, size: 192, offset: 64)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4364, file: !4328, line: 79, size: 192, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4379, !4384}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4368, file: !4328, line: 81, baseType: !106, size: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4368, file: !4328, line: 86, baseType: !464, size: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4368, file: !4328, line: 92, baseType: !4373, size: 192)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4368, file: !4328, line: 88, size: 192, elements: !4374)
!4374 = !{!4375, !4377, !4378}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4373, file: !4328, line: 89, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !775)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4373, file: !4328, line: 90, baseType: !233, size: 64, offset: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4373, file: !4328, line: 91, baseType: !233, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4368, file: !4328, line: 97, baseType: !4380, size: 96)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4368, file: !4328, line: 94, size: 96, elements: !4381)
!4381 = !{!4382, !4383}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4380, file: !4328, line: 95, baseType: !4376, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4380, file: !4328, line: 96, baseType: !331, size: 32, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4368, file: !4328, line: 103, baseType: !4385, size: 128)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4368, file: !4328, line: 99, size: 128, elements: !4386)
!4386 = !{!4387, !4388, !4389}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4385, file: !4328, line: 100, baseType: !426, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4385, file: !4328, line: 101, baseType: !331, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4385, file: !4328, line: 102, baseType: !331, size: 32, offset: 96)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4327, file: !4328, line: 111, baseType: !4391, size: 128)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 108, size: 128, elements: !4392)
!4392 = !{!4393, !4394}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4391, file: !4328, line: 109, baseType: !1192, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4391, file: !4328, line: 110, baseType: !106, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4327, file: !4328, line: 118, baseType: !4396, size: 128)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4328, line: 114, size: 128, elements: !4397)
!4397 = !{!4398, !4399, !4400}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4396, file: !4328, line: 115, baseType: !233, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4396, file: !4328, line: 116, baseType: !106, size: 32, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4396, file: !4328, line: 117, baseType: !12, size: 32, offset: 96)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !616, file: !617, line: 1208, baseType: !4182, size: 448, offset: 17664)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !616, file: !617, line: 1215, baseType: !344, size: 64, offset: 18112)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !616, file: !617, line: 1217, baseType: !344, size: 64, offset: 18176)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !616, file: !617, line: 1219, baseType: !344, size: 64, offset: 18240)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !616, file: !617, line: 1223, baseType: !4406, size: 64, offset: 18304)
!4406 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4407, line: 99, baseType: !4408)
!4407 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4407, line: 99, size: 64, elements: !4409)
!4409 = !{!4410}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4408, file: !4407, line: 99, baseType: !864, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !616, file: !617, line: 1225, baseType: !1048, size: 32, offset: 18368)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !616, file: !617, line: 1226, baseType: !106, size: 32, offset: 18400)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !616, file: !617, line: 1227, baseType: !106, size: 32, offset: 18432)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !616, file: !617, line: 1231, baseType: !4415, size: 64, offset: 18496)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !617, line: 1231, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !616, file: !617, line: 1233, baseType: !416, size: 128, offset: 18560)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !616, file: !617, line: 1240, baseType: !4419, size: 64, offset: 18688)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !617, line: 62, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !616, file: !617, line: 1242, baseType: !4422, size: 64, offset: 18752)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !617, line: 1242, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !616, file: !617, line: 1244, baseType: !416, size: 128, offset: 18816)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !616, file: !617, line: 1245, baseType: !4426, size: 64, offset: 18944)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !617, line: 51, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !616, file: !617, line: 1246, baseType: !955, size: 256, offset: 19008)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !616, file: !617, line: 1247, baseType: !12, size: 32, offset: 19264)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !616, file: !617, line: 1250, baseType: !4431, size: 64, offset: 19328)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !617, line: 57, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !616, file: !617, line: 1251, baseType: !955, size: 256, offset: 19392)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !616, file: !617, line: 1252, baseType: !416, size: 128, offset: 19648)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !616, file: !617, line: 1259, baseType: !1667, size: 64, offset: 19776)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !616, file: !617, line: 1260, baseType: !464, size: 16, offset: 19840)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !616, file: !617, line: 1261, baseType: !464, size: 16, offset: 19856)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !616, file: !617, line: 1314, baseType: !4439, size: 64, offset: 19904)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4441, line: 62, size: 256, align: 256, elements: !4442)
!4441 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448, !4449}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4440, file: !4441, line: 75, baseType: !331, size: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4440, file: !4441, line: 90, baseType: !331, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4440, file: !4441, line: 112, baseType: !345, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4440, file: !4441, line: 132, baseType: !331, size: 32, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4440, file: !4441, line: 140, baseType: !331, size: 32, offset: 160)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4440, file: !4441, line: 149, baseType: !331, size: 32, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4440, file: !4441, line: 154, baseType: !4450, offset: 224)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !603)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !616, file: !617, line: 1315, baseType: !330, size: 32, offset: 19968)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !616, file: !617, line: 1316, baseType: !330, size: 32, offset: 20000)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !616, file: !617, line: 1321, baseType: !426, size: 64, offset: 20032)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !616, file: !617, line: 1325, baseType: !106, size: 32, offset: 20096)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !616, file: !617, line: 1326, baseType: !106, size: 32, offset: 20128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !616, file: !617, line: 1327, baseType: !106, size: 32, offset: 20160)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !616, file: !617, line: 1328, baseType: !106, size: 32, offset: 20192)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !616, file: !617, line: 1329, baseType: !493, size: 128, align: 64, offset: 20224)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !616, file: !617, line: 1332, baseType: !4460, size: 128, offset: 20352)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4461, line: 51, size: 128, elements: !4462)
!4461 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4462 = !{!4463, !4468, !4469}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4460, file: !4461, line: 60, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4465, line: 7, size: 64, elements: !4466)
!4465 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4466 = !{!4467}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4464, file: !4465, line: 12, baseType: !861, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4460, file: !4461, line: 63, baseType: !308, size: 8, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4460, file: !4461, line: 70, baseType: !308, size: 8, offset: 72)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !616, file: !617, line: 1335, baseType: !3645, size: 64, offset: 20480)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !616, file: !617, line: 1337, baseType: !4472, size: 128, offset: 20544)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4461, line: 39, size: 128, elements: !4473)
!4473 = !{!4474, !4475, !4476}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4472, file: !4461, line: 40, baseType: !1454, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4472, file: !4461, line: 42, baseType: !331, size: 32, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4472, file: !4461, line: 43, baseType: !331, size: 32, offset: 96)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !616, file: !617, line: 1340, baseType: !4478, size: 64, offset: 20672)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !617, line: 69, flags: DIFlagFwdDecl)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !616, file: !617, line: 1351, baseType: !106, size: 32, offset: 20736)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !616, file: !617, line: 1352, baseType: !106, size: 32, offset: 20768)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !616, file: !617, line: 1354, baseType: !426, size: 64, offset: 20800)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !616, file: !617, line: 1364, baseType: !344, size: 64, offset: 20864)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !616, file: !617, line: 1365, baseType: !344, size: 64, offset: 20928)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !616, file: !617, line: 1412, baseType: !426, size: 64, offset: 20992)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !616, file: !617, line: 1453, baseType: !2870, size: 64, offset: 21056)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !616, file: !617, line: 1457, baseType: !4488, size: 64, offset: 21120)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !157, line: 61, size: 576, elements: !4490)
!4490 = !{!4491, !4492, !4511, !4514, !4515, !4548, !4558}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4489, file: !157, line: 62, baseType: !156, size: 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, scope: !4489, file: !157, line: 64, baseType: !4493, size: 192, offset: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4489, file: !157, line: 64, size: 192, elements: !4494)
!4494 = !{!4495, !4506}
!4495 = !DIDerivedType(tag: DW_TAG_member, scope: !4493, file: !157, line: 65, baseType: !4496, size: 192)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4493, file: !157, line: 65, size: 192, elements: !4497)
!4497 = !{!4498, !4505}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4496, file: !157, line: 66, baseType: !4499, size: 128)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4500, line: 50, size: 128, elements: !4501)
!4500 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4501 = !{!4502, !4503, !4504}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4499, file: !4500, line: 52, baseType: !426, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4499, file: !4500, line: 54, baseType: !12, size: 32, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4499, file: !4500, line: 55, baseType: !12, size: 32, offset: 96)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4496, file: !157, line: 67, baseType: !426, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, scope: !4493, file: !157, line: 70, baseType: !4507, size: 192)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4493, file: !157, line: 70, size: 192, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4507, file: !157, line: 71, baseType: !493, size: 128, align: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4507, file: !157, line: 72, baseType: !426, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4489, file: !157, line: 76, baseType: !4512, size: 64, offset: 256)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !157, line: 76, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4489, file: !157, line: 77, baseType: !426, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4489, file: !157, line: 79, baseType: !4516, size: 64, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4500, line: 25, size: 256, elements: !4518)
!4518 = !{!4519, !4525, !4529}
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4517, file: !4500, line: 26, baseType: !4520, size: 128)
!4520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4517, file: !4500, line: 26, size: 128, elements: !4521)
!4521 = !{!4522, !4524}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4520, file: !4500, line: 27, baseType: !4523, size: 128)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 128, elements: !3407)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4520, file: !4500, line: 28, baseType: !4523, size: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4517, file: !4500, line: 31, baseType: !4526, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4528)
!4528 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4500, line: 23, flags: DIFlagFwdDecl)
!4529 = !DIDerivedType(tag: DW_TAG_member, scope: !4517, file: !4500, line: 33, baseType: !4530, size: 64, offset: 192)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4517, file: !4500, line: 33, size: 64, elements: !4531)
!4531 = !{!4532, !4538, !4543}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4530, file: !4500, line: 38, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4530, file: !4500, line: 34, size: 64, elements: !4534)
!4534 = !{!4535, !4536, !4537}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4533, file: !4500, line: 35, baseType: !410, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4533, file: !4500, line: 36, baseType: !270, size: 8, offset: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4533, file: !4500, line: 37, baseType: !270, size: 8, offset: 40)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4530, file: !4500, line: 42, baseType: !4539, size: 16)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4530, file: !4500, line: 39, size: 16, elements: !4540)
!4540 = !{!4541, !4542}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4539, file: !4500, line: 40, baseType: !270, size: 8)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4539, file: !4500, line: 41, baseType: !270, size: 8, offset: 8)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4530, file: !4500, line: 46, baseType: !4544, size: 16)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4530, file: !4500, line: 43, size: 16, elements: !4545)
!4545 = !{!4546, !4547}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4544, file: !4500, line: 44, baseType: !270, size: 8)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4544, file: !4500, line: 45, baseType: !270, size: 8, offset: 8)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4489, file: !157, line: 81, baseType: !4549, size: 64, offset: 448)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !157, line: 85, size: 384, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555, !4556, !4557}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4550, file: !157, line: 86, baseType: !4512, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4550, file: !157, line: 87, baseType: !426, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4550, file: !157, line: 88, baseType: !426, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4550, file: !157, line: 89, baseType: !426, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4550, file: !157, line: 90, baseType: !308, size: 8, offset: 256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4550, file: !157, line: 92, baseType: !4549, size: 64, offset: 320)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4489, file: !157, line: 82, baseType: !12, size: 32, offset: 512)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !616, file: !617, line: 1463, baseType: !4560, offset: 21184)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !617, line: 739, elements: !934)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !616, file: !617, line: 1470, baseType: !493, size: 128, align: 64, offset: 21184)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !616, file: !617, line: 1471, baseType: !333, size: 32, offset: 21312)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !616, file: !617, line: 1472, baseType: !106, size: 32, offset: 21344)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !616, file: !617, line: 1474, baseType: !615, size: 64, offset: 21376)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !616, file: !617, line: 1475, baseType: !2454, size: 320, offset: 21440)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !616, file: !617, line: 1478, baseType: !4567, size: 64, offset: 21760)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !617, line: 1478, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !616, file: !617, line: 1482, baseType: !333, size: 32, offset: 21824)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !616, file: !617, line: 1489, baseType: !233, size: 64, offset: 21888)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !616, file: !617, line: 1504, baseType: !233, size: 64, offset: 21952)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !616, file: !617, line: 1505, baseType: !345, size: 64, offset: 22016)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !616, file: !617, line: 1506, baseType: !344, size: 64, offset: 22080)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !616, file: !617, line: 1507, baseType: !345, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !616, file: !617, line: 1508, baseType: !345, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !616, file: !617, line: 1509, baseType: !345, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !616, file: !617, line: 1510, baseType: !493, size: 128, align: 64, offset: 22208)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !616, file: !617, line: 1511, baseType: !106, size: 32, offset: 22336)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !616, file: !617, line: 1515, baseType: !4580, size: 64, offset: 22400)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !639, line: 56, size: 64, elements: !4581)
!4581 = !{!4582}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4580, file: !639, line: 57, baseType: !642, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !616, file: !617, line: 1518, baseType: !4580, size: 64, offset: 22464)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !616, file: !617, line: 1528, baseType: !493, size: 128, align: 64, offset: 22528)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !616, file: !617, line: 1552, baseType: !4586, size: 35328, offset: 23040)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4587, line: 430, size: 35328, elements: !4588)
!4587 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4588 = !{!4589, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4618, !4619, !4620, !4621, !4622, !4623, !4626, !4627, !4628, !4629}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4586, file: !4587, line: 432, baseType: !4590, size: 192)
!4590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4591, size: 192, elements: !989)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4592, line: 16, size: 64, elements: !4593)
!4592 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4593 = !{!4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4591, file: !4592, line: 17, baseType: !280, size: 16)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4591, file: !4592, line: 18, baseType: !280, size: 16, offset: 16)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4591, file: !4592, line: 19, baseType: !280, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4591, file: !4592, line: 19, baseType: !280, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4591, file: !4592, line: 19, baseType: !280, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4591, file: !4592, line: 19, baseType: !280, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4591, file: !4592, line: 19, baseType: !280, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4591, file: !4592, line: 20, baseType: !280, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4591, file: !4592, line: 20, baseType: !280, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4591, file: !4592, line: 20, baseType: !280, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4591, file: !4592, line: 20, baseType: !280, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4591, file: !4592, line: 20, baseType: !280, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4591, file: !4592, line: 20, baseType: !280, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4586, file: !4587, line: 436, baseType: !426, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4586, file: !4587, line: 440, baseType: !282, size: 16, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4586, file: !4587, line: 441, baseType: !282, size: 16, offset: 272)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4586, file: !4587, line: 442, baseType: !282, size: 16, offset: 288)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4586, file: !4587, line: 443, baseType: !282, size: 16, offset: 304)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4586, file: !4587, line: 447, baseType: !426, size: 64, offset: 320)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4586, file: !4587, line: 448, baseType: !426, size: 64, offset: 384)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4586, file: !4587, line: 459, baseType: !4615, size: 256, offset: 448)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4616, size: 256, elements: !524)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4587, line: 428, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4586, file: !4587, line: 461, baseType: !426, size: 64, offset: 704)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4586, file: !4587, line: 463, baseType: !426, size: 64, offset: 768)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4586, file: !4587, line: 465, baseType: !426, size: 64, offset: 832)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4586, file: !4587, line: 466, baseType: !426, size: 64, offset: 896)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4586, file: !4587, line: 467, baseType: !426, size: 64, offset: 960)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4586, file: !4587, line: 473, baseType: !4624, size: 64, offset: 1024)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4587, line: 10, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4586, file: !4587, line: 480, baseType: !426, size: 64, offset: 1088)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4586, file: !4587, line: 482, baseType: !12, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4586, file: !4587, line: 491, baseType: !330, size: 32, offset: 1184)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4586, file: !4587, line: 501, baseType: !4630, size: 33792, offset: 1536)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4631, line: 448, size: 33792, elements: !4632)
!4631 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4632 = !{!4633, !4634, !4635, !4797, !4798, !4804, !4805}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4630, file: !4631, line: 461, baseType: !12, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4630, file: !4631, line: 468, baseType: !426, size: 64, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4630, file: !4631, line: 476, baseType: !4636, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4631, line: 356, size: 33280, align: 512, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4637, file: !4631, line: 358, baseType: !12, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4637, file: !4631, line: 361, baseType: !12, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4637, file: !4631, line: 364, baseType: !344, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4637, file: !4631, line: 367, baseType: !344, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4637, file: !4631, line: 370, baseType: !344, size: 64, offset: 192)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4637, file: !4631, line: 373, baseType: !12, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4637, file: !4631, line: 376, baseType: !12, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4637, file: !4631, line: 391, baseType: !12, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4637, file: !4631, line: 394, baseType: !12, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4637, file: !4631, line: 397, baseType: !4649, size: 32768, offset: 512)
!4649 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4631, line: 348, size: 32768, elements: !4650)
!4650 = !{!4651, !4666, !4703, !4780, !4793}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4649, file: !4631, line: 349, baseType: !4652, size: 896)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4631, line: 12, size: 896, elements: !4653)
!4653 = !{!4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4665}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4652, file: !4631, line: 13, baseType: !330, size: 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4652, file: !4631, line: 14, baseType: !330, size: 32, offset: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4652, file: !4631, line: 15, baseType: !330, size: 32, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4652, file: !4631, line: 16, baseType: !330, size: 32, offset: 96)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4652, file: !4631, line: 17, baseType: !330, size: 32, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4652, file: !4631, line: 18, baseType: !330, size: 32, offset: 160)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4652, file: !4631, line: 19, baseType: !330, size: 32, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4652, file: !4631, line: 22, baseType: !4662, size: 640, offset: 224)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 640, elements: !4663)
!4663 = !{!4664}
!4664 = !DISubrange(count: 20)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4652, file: !4631, line: 25, baseType: !330, size: 32, offset: 864)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4649, file: !4631, line: 350, baseType: !4667, size: 4096, align: 128)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4631, line: 34, size: 4096, align: 128, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4688, !4689, !4690, !4692, !4694, !4698}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4667, file: !4631, line: 35, baseType: !280, size: 16)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4667, file: !4631, line: 36, baseType: !280, size: 16, offset: 16)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4667, file: !4631, line: 37, baseType: !280, size: 16, offset: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4667, file: !4631, line: 38, baseType: !280, size: 16, offset: 48)
!4673 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !4631, line: 39, baseType: !4674, size: 128, offset: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4667, file: !4631, line: 39, size: 128, elements: !4675)
!4675 = !{!4676, !4681}
!4676 = !DIDerivedType(tag: DW_TAG_member, scope: !4674, file: !4631, line: 40, baseType: !4677, size: 128)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !4631, line: 40, size: 128, elements: !4678)
!4678 = !{!4679, !4680}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4677, file: !4631, line: 41, baseType: !344, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4677, file: !4631, line: 42, baseType: !344, size: 64, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, scope: !4674, file: !4631, line: 44, baseType: !4682, size: 128)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !4631, line: 44, size: 128, elements: !4683)
!4683 = !{!4684, !4685, !4686, !4687}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4682, file: !4631, line: 45, baseType: !330, size: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4682, file: !4631, line: 46, baseType: !330, size: 32, offset: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4682, file: !4631, line: 47, baseType: !330, size: 32, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4682, file: !4631, line: 48, baseType: !330, size: 32, offset: 96)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4667, file: !4631, line: 51, baseType: !330, size: 32, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4667, file: !4631, line: 52, baseType: !330, size: 32, offset: 224)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4667, file: !4631, line: 55, baseType: !4691, size: 1024, offset: 256)
!4691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 1024, elements: !3398)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4667, file: !4631, line: 58, baseType: !4693, size: 2048, offset: 1280)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 2048, elements: !1373)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4667, file: !4631, line: 60, baseType: !4695, size: 384, offset: 3328)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 384, elements: !4696)
!4696 = !{!4697}
!4697 = !DISubrange(count: 12)
!4698 = !DIDerivedType(tag: DW_TAG_member, scope: !4667, file: !4631, line: 62, baseType: !4699, size: 384, offset: 3712)
!4699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4667, file: !4631, line: 62, size: 384, elements: !4700)
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4699, file: !4631, line: 63, baseType: !4695, size: 384)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4699, file: !4631, line: 64, baseType: !4695, size: 384)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4649, file: !4631, line: 351, baseType: !4704, size: 1088)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4631, line: 79, size: 1088, elements: !4705)
!4705 = !{!4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4779}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4704, file: !4631, line: 80, baseType: !330, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4704, file: !4631, line: 81, baseType: !330, size: 32, offset: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4704, file: !4631, line: 82, baseType: !330, size: 32, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4704, file: !4631, line: 83, baseType: !330, size: 32, offset: 96)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4704, file: !4631, line: 84, baseType: !330, size: 32, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4704, file: !4631, line: 85, baseType: !330, size: 32, offset: 160)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4704, file: !4631, line: 86, baseType: !330, size: 32, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4704, file: !4631, line: 88, baseType: !4662, size: 640, offset: 224)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4704, file: !4631, line: 89, baseType: !270, size: 8, offset: 864)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4704, file: !4631, line: 90, baseType: !270, size: 8, offset: 872)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4704, file: !4631, line: 91, baseType: !270, size: 8, offset: 880)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4704, file: !4631, line: 92, baseType: !270, size: 8, offset: 888)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4704, file: !4631, line: 93, baseType: !270, size: 8, offset: 896)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4704, file: !4631, line: 94, baseType: !270, size: 8, offset: 904)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4704, file: !4631, line: 95, baseType: !4721, size: 64, offset: 960)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4723, line: 11, size: 128, elements: !4724)
!4723 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4724 = !{!4725, !4726}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4722, file: !4723, line: 12, baseType: !1192, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4722, file: !4723, line: 13, baseType: !4727, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4729, line: 103, size: 1344, elements: !4730)
!4729 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4730 = !{!4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4759, !4760, !4761}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4728, file: !4729, line: 109, baseType: !426, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4728, file: !4729, line: 110, baseType: !426, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4728, file: !4729, line: 111, baseType: !426, size: 64, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4728, file: !4729, line: 112, baseType: !426, size: 64, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4728, file: !4729, line: 113, baseType: !426, size: 64, offset: 256)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4728, file: !4729, line: 114, baseType: !426, size: 64, offset: 320)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4728, file: !4729, line: 117, baseType: !426, size: 64, offset: 384)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4728, file: !4729, line: 118, baseType: !426, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4728, file: !4729, line: 119, baseType: !426, size: 64, offset: 512)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4728, file: !4729, line: 120, baseType: !426, size: 64, offset: 576)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4728, file: !4729, line: 121, baseType: !426, size: 64, offset: 640)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4728, file: !4729, line: 122, baseType: !426, size: 64, offset: 704)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4728, file: !4729, line: 123, baseType: !426, size: 64, offset: 768)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4728, file: !4729, line: 124, baseType: !426, size: 64, offset: 832)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4728, file: !4729, line: 125, baseType: !426, size: 64, offset: 896)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4728, file: !4729, line: 139, baseType: !426, size: 64, offset: 960)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4728, file: !4729, line: 142, baseType: !426, size: 64, offset: 1024)
!4748 = !DIDerivedType(tag: DW_TAG_member, scope: !4728, file: !4729, line: 144, baseType: !4749, size: 64, offset: 1088)
!4749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4728, file: !4729, line: 144, size: 64, elements: !4750)
!4750 = !{!4751, !4752, !4753}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4749, file: !4729, line: 146, baseType: !280, size: 16)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4749, file: !4729, line: 148, baseType: !344, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4749, file: !4729, line: 150, baseType: !4754, size: 64)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4729, line: 59, size: 64, elements: !4755)
!4755 = !{!4756, !4757, !4758}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4754, file: !4729, line: 61, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4754, file: !4729, line: 63, baseType: !344, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4754, file: !4729, line: 65, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4728, file: !4729, line: 153, baseType: !426, size: 64, offset: 1152)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4728, file: !4729, line: 154, baseType: !426, size: 64, offset: 1216)
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !4728, file: !4729, line: 156, baseType: !4762, size: 64, offset: 1280)
!4762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4728, file: !4729, line: 156, size: 64, elements: !4763)
!4763 = !{!4764, !4765, !4766}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4762, file: !4729, line: 158, baseType: !280, size: 16)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4762, file: !4729, line: 160, baseType: !344, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4762, file: !4729, line: 162, baseType: !4767, size: 64)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4729, line: 69, size: 64, elements: !4768)
!4768 = !{!4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4767, file: !4729, line: 71, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4767, file: !4729, line: 73, baseType: !344, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4767, file: !4729, line: 75, baseType: !344, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4767, file: !4729, line: 77, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4767, file: !4729, line: 80, baseType: !344, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4767, file: !4729, line: 83, baseType: !344, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4767, file: !4729, line: 86, baseType: !344, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4767, file: !4729, line: 88, baseType: !344, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4767, file: !4729, line: 93, baseType: !344, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4767, file: !4729, line: 100, baseType: !344, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4704, file: !4631, line: 96, baseType: !330, size: 32, offset: 1024)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4649, file: !4631, line: 352, baseType: !4781, size: 4608, align: 512)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4631, line: 333, size: 4608, align: 512, elements: !4782)
!4782 = !{!4783, !4784, !4791}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4781, file: !4631, line: 334, baseType: !4667, size: 4096, align: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4781, file: !4631, line: 335, baseType: !4785, size: 512, offset: 4096)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4631, line: 312, size: 512, elements: !4786)
!4786 = !{!4787, !4788, !4789}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4785, file: !4631, line: 313, baseType: !344, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4785, file: !4631, line: 314, baseType: !344, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4785, file: !4631, line: 315, baseType: !4790, size: 384, offset: 128)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !482)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4781, file: !4631, line: 336, baseType: !4792, offset: 4608)
!4792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, elements: !603)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4649, file: !4631, line: 353, baseType: !4794, size: 32768)
!4794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 32768, elements: !4795)
!4795 = !{!4796}
!4796 = !DISubrange(count: 4096)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4630, file: !4631, line: 484, baseType: !4636, size: 64, offset: 192)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4630, file: !4631, line: 491, baseType: !4799, size: 128, offset: 256)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4631, line: 404, size: 128, elements: !4800)
!4800 = !{!4801, !4802, !4803}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4799, file: !4631, line: 424, baseType: !344, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4799, file: !4631, line: 432, baseType: !12, size: 32, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4799, file: !4631, line: 440, baseType: !12, size: 32, offset: 96)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4630, file: !4631, line: 498, baseType: !4799, size: 128, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4630, file: !4631, line: 508, baseType: !4637, size: 33280, align: 512, offset: 512)
!4806 = !{!0}
!4807 = !{i32 7, !"Dwarf Version", i32 5}
!4808 = !{i32 2, !"Debug Info Version", i32 3}
!4809 = !{i32 1, !"wchar_size", i32 2}
!4810 = !{i32 8, !"cf-protection-branch", i32 1}
!4811 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4812 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4813 = !{i32 1, !"Code Model", i32 2}
!4814 = !{i32 1, !"override-stack-alignment", i32 8}
!4815 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4816 = distinct !DISubprogram(name: "v9fs_fid_add", scope: !8, file: !8, line: 33, type: !4817, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4820)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{null, !1042, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!4820 = !{!4821, !4822, !4823}
!4821 = !DILocalVariable(name: "dentry", arg: 1, scope: !4816, file: !8, line: 33, type: !1042)
!4822 = !DILocalVariable(name: "pfid", arg: 2, scope: !4816, file: !8, line: 33, type: !4819)
!4823 = !DILocalVariable(name: "fid", scope: !4816, file: !8, line: 35, type: !234)
!4824 = !DILocation(line: 33, column: 34, scope: !4816)
!4825 = !DILocation(line: 33, column: 58, scope: !4816)
!4826 = !DILocation(line: 35, column: 2, scope: !4816)
!4827 = !DILocation(line: 35, column: 17, scope: !4816)
!4828 = !DILocation(line: 35, column: 24, scope: !4816)
!4829 = !DILocation(line: 35, column: 23, scope: !4816)
!4830 = !DILocation(line: 37, column: 13, scope: !4816)
!4831 = !DILocation(line: 37, column: 21, scope: !4816)
!4832 = !DILocation(line: 37, column: 2, scope: !4816)
!4833 = !DILocation(line: 38, column: 12, scope: !4816)
!4834 = !DILocation(line: 38, column: 20, scope: !4816)
!4835 = !DILocation(line: 38, column: 2, scope: !4816)
!4836 = !DILocation(line: 39, column: 15, scope: !4816)
!4837 = !DILocation(line: 39, column: 23, scope: !4816)
!4838 = !DILocation(line: 39, column: 2, scope: !4816)
!4839 = !DILocation(line: 41, column: 3, scope: !4816)
!4840 = !DILocation(line: 41, column: 8, scope: !4816)
!4841 = !DILocation(line: 42, column: 1, scope: !4816)
!4842 = distinct !DISubprogram(name: "spin_lock", scope: !4843, file: !4843, line: 349, type: !4844, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4846)
!4843 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4844 = !DISubroutineType(types: !4845)
!4845 = !{null, !1718}
!4846 = !{!4847}
!4847 = !DILocalVariable(name: "lock", arg: 1, scope: !4842, file: !4843, line: 349, type: !1718)
!4848 = !DILocation(line: 349, column: 51, scope: !4842)
!4849 = !DILocation(line: 351, column: 2, scope: !4842)
!4850 = !DILocation(line: 352, column: 1, scope: !4842)
!4851 = distinct !DISubprogram(name: "__add_fid", scope: !8, file: !8, line: 21, type: !4852, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !1042, !234}
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "dentry", arg: 1, scope: !4851, file: !8, line: 21, type: !1042)
!4856 = !DILocalVariable(name: "fid", arg: 2, scope: !4851, file: !8, line: 21, type: !234)
!4857 = !DILocation(line: 21, column: 45, scope: !4851)
!4858 = !DILocation(line: 21, column: 68, scope: !4851)
!4859 = !DILocation(line: 23, column: 18, scope: !4851)
!4860 = !DILocation(line: 23, column: 23, scope: !4851)
!4861 = !DILocation(line: 23, column: 52, scope: !4851)
!4862 = !DILocation(line: 23, column: 60, scope: !4851)
!4863 = !DILocation(line: 23, column: 2, scope: !4851)
!4864 = !DILocation(line: 24, column: 1, scope: !4851)
!4865 = distinct !DISubprogram(name: "spin_unlock", scope: !4843, file: !4843, line: 389, type: !4844, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4866)
!4866 = !{!4867}
!4867 = !DILocalVariable(name: "lock", arg: 1, scope: !4865, file: !4843, line: 389, type: !1718)
!4868 = !DILocation(line: 389, column: 53, scope: !4865)
!4869 = !DILocation(line: 391, column: 2, scope: !4865)
!4870 = !DILocation(line: 392, column: 1, scope: !4865)
!4871 = distinct !DISubprogram(name: "v9fs_fid_find_inode", scope: !8, file: !8, line: 60, type: !4872, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4874)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!234, !1077, !308, !349, !308}
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4885, !4887, !4890}
!4875 = !DILocalVariable(name: "inode", arg: 1, scope: !4871, file: !8, line: 60, type: !1077)
!4876 = !DILocalVariable(name: "want_writeable", arg: 2, scope: !4871, file: !8, line: 60, type: !308)
!4877 = !DILocalVariable(name: "uid", arg: 3, scope: !4871, file: !8, line: 61, type: !349)
!4878 = !DILocalVariable(name: "any", arg: 4, scope: !4871, file: !8, line: 61, type: !308)
!4879 = !DILocalVariable(name: "h", scope: !4871, file: !8, line: 63, type: !222)
!4880 = !DILocalVariable(name: "fid", scope: !4871, file: !8, line: 64, type: !234)
!4881 = !DILocalVariable(name: "ret", scope: !4871, file: !8, line: 64, type: !234)
!4882 = !DILocalVariable(name: "____ptr", scope: !4883, file: !8, line: 70, type: !227)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !8, line: 70, column: 2)
!4884 = distinct !DILexicalBlock(scope: !4871, file: !8, line: 70, column: 2)
!4885 = !DILocalVariable(name: "__mptr", scope: !4886, file: !8, line: 70, type: !233)
!4886 = distinct !DILexicalBlock(scope: !4883, file: !8, line: 70, column: 2)
!4887 = !DILocalVariable(name: "____ptr", scope: !4888, file: !8, line: 70, type: !227)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !8, line: 70, column: 2)
!4889 = distinct !DILexicalBlock(scope: !4884, file: !8, line: 70, column: 2)
!4890 = !DILocalVariable(name: "__mptr", scope: !4891, file: !8, line: 70, type: !233)
!4891 = distinct !DILexicalBlock(scope: !4888, file: !8, line: 70, column: 2)
!4892 = !DILocation(line: 60, column: 50, scope: !4871)
!4893 = !DILocation(line: 60, column: 62, scope: !4871)
!4894 = !DILocation(line: 61, column: 9, scope: !4871)
!4895 = !DILocation(line: 61, column: 19, scope: !4871)
!4896 = !DILocation(line: 63, column: 2, scope: !4871)
!4897 = !DILocation(line: 63, column: 21, scope: !4871)
!4898 = !DILocation(line: 64, column: 2, scope: !4871)
!4899 = !DILocation(line: 64, column: 17, scope: !4871)
!4900 = !DILocation(line: 64, column: 23, scope: !4871)
!4901 = !DILocation(line: 66, column: 2, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !8, line: 66, column: 2)
!4903 = distinct !DILexicalBlock(scope: !4871, file: !8, line: 66, column: 2)
!4904 = !DILocation(line: 66, column: 2, scope: !4903)
!4905 = !DILocation(line: 68, column: 13, scope: !4871)
!4906 = !DILocation(line: 68, column: 20, scope: !4871)
!4907 = !DILocation(line: 68, column: 2, scope: !4871)
!4908 = !DILocation(line: 69, column: 28, scope: !4871)
!4909 = !DILocation(line: 69, column: 35, scope: !4871)
!4910 = !DILocation(line: 69, column: 4, scope: !4871)
!4911 = !DILocation(line: 70, column: 2, scope: !4883)
!4912 = !DILocation(line: 70, column: 2, scope: !4886)
!4913 = !DILocation(line: 70, column: 2, scope: !4884)
!4914 = !DILocation(line: 70, column: 2, scope: !4889)
!4915 = !DILocation(line: 71, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !8, line: 71, column: 7)
!4917 = distinct !DILexicalBlock(scope: !4889, file: !8, line: 70, column: 38)
!4918 = !{i8 0, i8 2}
!4919 = !DILocation(line: 71, column: 11, scope: !4916)
!4920 = !DILocation(line: 71, column: 21, scope: !4916)
!4921 = !DILocation(line: 71, column: 26, scope: !4916)
!4922 = !DILocation(line: 71, column: 14, scope: !4916)
!4923 = !DILocation(line: 71, column: 7, scope: !4917)
!4924 = !DILocation(line: 72, column: 8, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !8, line: 72, column: 8)
!4926 = distinct !DILexicalBlock(scope: !4916, file: !8, line: 71, column: 37)
!4927 = !DILocation(line: 72, column: 23, scope: !4925)
!4928 = !DILocation(line: 72, column: 45, scope: !4925)
!4929 = !DILocation(line: 72, column: 50, scope: !4925)
!4930 = !DILocation(line: 72, column: 27, scope: !4925)
!4931 = !DILocation(line: 72, column: 8, scope: !4926)
!4932 = !DILocation(line: 73, column: 5, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !8, line: 73, column: 5)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !8, line: 73, column: 5)
!4935 = distinct !DILexicalBlock(scope: !4925, file: !8, line: 72, column: 57)
!4936 = !DILocation(line: 73, column: 5, scope: !4934)
!4937 = !DILocation(line: 75, column: 5, scope: !4935)
!4938 = !DILocation(line: 77, column: 15, scope: !4926)
!4939 = !DILocation(line: 77, column: 4, scope: !4926)
!4940 = !DILocation(line: 78, column: 10, scope: !4926)
!4941 = !DILocation(line: 78, column: 8, scope: !4926)
!4942 = !DILocation(line: 79, column: 4, scope: !4926)
!4943 = !DILocation(line: 81, column: 2, scope: !4917)
!4944 = !DILocation(line: 70, column: 2, scope: !4888)
!4945 = !DILocation(line: 70, column: 2, scope: !4891)
!4946 = distinct !{!4946, !4913, !4947, !4948, !4949}
!4947 = !DILocation(line: 81, column: 2, scope: !4884)
!4948 = !{!"llvm.loop.mustprogress"}
!4949 = !{!"llvm.loop.unroll.disable"}
!4950 = !DILocation(line: 82, column: 15, scope: !4871)
!4951 = !DILocation(line: 82, column: 22, scope: !4871)
!4952 = !DILocation(line: 82, column: 2, scope: !4871)
!4953 = !DILocation(line: 83, column: 9, scope: !4871)
!4954 = !DILocation(line: 84, column: 1, scope: !4871)
!4955 = !DILocation(line: 83, column: 2, scope: !4871)
!4956 = distinct !DISubprogram(name: "uid_eq", scope: !350, file: !350, line: 61, type: !4957, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4959)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!308, !349, !349}
!4959 = !{!4960, !4961}
!4960 = !DILocalVariable(name: "left", arg: 1, scope: !4956, file: !350, line: 61, type: !349)
!4961 = !DILocalVariable(name: "right", arg: 2, scope: !4956, file: !350, line: 61, type: !349)
!4962 = !DILocation(line: 61, column: 34, scope: !4956)
!4963 = !DILocation(line: 61, column: 47, scope: !4956)
!4964 = !DILocation(line: 63, column: 9, scope: !4956)
!4965 = !DILocation(line: 63, column: 29, scope: !4956)
!4966 = !DILocation(line: 63, column: 26, scope: !4956)
!4967 = !DILocation(line: 63, column: 2, scope: !4956)
!4968 = distinct !DISubprogram(name: "v9fs_is_writeable", scope: !8, file: !8, line: 44, type: !4969, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4971)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!308, !106}
!4971 = !{!4972}
!4972 = !DILocalVariable(name: "mode", arg: 1, scope: !4968, file: !8, line: 44, type: !106)
!4973 = !DILocation(line: 44, column: 35, scope: !4968)
!4974 = !DILocation(line: 46, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4968, file: !8, line: 46, column: 6)
!4976 = !DILocation(line: 46, column: 11, scope: !4975)
!4977 = !DILocation(line: 46, column: 6, scope: !4968)
!4978 = !DILocation(line: 47, column: 3, scope: !4975)
!4979 = !DILocation(line: 49, column: 3, scope: !4975)
!4980 = !DILocation(line: 50, column: 1, scope: !4968)
!4981 = distinct !DISubprogram(name: "p9_fid_get", scope: !164, file: !164, line: 257, type: !4982, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !4984)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!234, !234}
!4984 = !{!4985}
!4985 = !DILocalVariable(name: "fid", arg: 1, scope: !4981, file: !164, line: 257, type: !234)
!4986 = !DILocation(line: 257, column: 56, scope: !4981)
!4987 = !DILocation(line: 259, column: 6, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !164, line: 259, column: 6)
!4989 = !DILocation(line: 259, column: 6, scope: !4981)
!4990 = !DILocation(line: 260, column: 23, scope: !4988)
!4991 = !DILocation(line: 260, column: 3, scope: !4988)
!4992 = !DILocation(line: 262, column: 16, scope: !4981)
!4993 = !DILocation(line: 262, column: 21, scope: !4981)
!4994 = !DILocation(line: 262, column: 2, scope: !4981)
!4995 = !DILocation(line: 264, column: 9, scope: !4981)
!4996 = !DILocation(line: 264, column: 2, scope: !4981)
!4997 = distinct !DISubprogram(name: "v9fs_open_fid_add", scope: !8, file: !8, line: 93, type: !4998, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5000)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{null, !1077, !4819}
!5000 = !{!5001, !5002, !5003}
!5001 = !DILocalVariable(name: "inode", arg: 1, scope: !4997, file: !8, line: 93, type: !1077)
!5002 = !DILocalVariable(name: "pfid", arg: 2, scope: !4997, file: !8, line: 93, type: !4819)
!5003 = !DILocalVariable(name: "fid", scope: !4997, file: !8, line: 95, type: !234)
!5004 = !DILocation(line: 93, column: 38, scope: !4997)
!5005 = !DILocation(line: 93, column: 61, scope: !4997)
!5006 = !DILocation(line: 95, column: 2, scope: !4997)
!5007 = !DILocation(line: 95, column: 17, scope: !4997)
!5008 = !DILocation(line: 95, column: 24, scope: !4997)
!5009 = !DILocation(line: 95, column: 23, scope: !4997)
!5010 = !DILocation(line: 97, column: 13, scope: !4997)
!5011 = !DILocation(line: 97, column: 20, scope: !4997)
!5012 = !DILocation(line: 97, column: 2, scope: !4997)
!5013 = !DILocation(line: 98, column: 18, scope: !4997)
!5014 = !DILocation(line: 98, column: 23, scope: !4997)
!5015 = !DILocation(line: 98, column: 52, scope: !4997)
!5016 = !DILocation(line: 98, column: 59, scope: !4997)
!5017 = !DILocation(line: 98, column: 2, scope: !4997)
!5018 = !DILocation(line: 99, column: 15, scope: !4997)
!5019 = !DILocation(line: 99, column: 22, scope: !4997)
!5020 = !DILocation(line: 99, column: 2, scope: !4997)
!5021 = !DILocation(line: 101, column: 3, scope: !4997)
!5022 = !DILocation(line: 101, column: 8, scope: !4997)
!5023 = !DILocation(line: 102, column: 1, scope: !4997)
!5024 = distinct !DISubprogram(name: "hlist_add_head", scope: !5025, file: !5025, line: 1021, type: !5026, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5028)
!5025 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !227, !222}
!5028 = !{!5029, !5030, !5031}
!5029 = !DILocalVariable(name: "n", arg: 1, scope: !5024, file: !5025, line: 1021, type: !227)
!5030 = !DILocalVariable(name: "h", arg: 2, scope: !5024, file: !5025, line: 1021, type: !222)
!5031 = !DILocalVariable(name: "first", scope: !5024, file: !5025, line: 1023, type: !227)
!5032 = !DILocation(line: 1021, column: 54, scope: !5024)
!5033 = !DILocation(line: 1021, column: 76, scope: !5024)
!5034 = !DILocation(line: 1023, column: 2, scope: !5024)
!5035 = !DILocation(line: 1023, column: 21, scope: !5024)
!5036 = !DILocation(line: 1023, column: 29, scope: !5024)
!5037 = !DILocation(line: 1023, column: 32, scope: !5024)
!5038 = !DILocation(line: 1024, column: 2, scope: !5024)
!5039 = !DILocation(line: 1024, column: 2, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5024, file: !5025, line: 1024, column: 2)
!5041 = !DILocation(line: 1024, column: 2, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5040, file: !5025, line: 1024, column: 2)
!5043 = !DILocation(line: 1024, column: 2, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5040, file: !5025, line: 1024, column: 2)
!5045 = !DILocation(line: 1025, column: 6, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5024, file: !5025, line: 1025, column: 6)
!5047 = !DILocation(line: 1025, column: 6, scope: !5024)
!5048 = !DILocation(line: 1026, column: 3, scope: !5046)
!5049 = !DILocation(line: 1026, column: 3, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5046, file: !5025, line: 1026, column: 3)
!5051 = !DILocation(line: 1026, column: 3, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5050, file: !5025, line: 1026, column: 3)
!5053 = !DILocation(line: 1026, column: 3, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !5025, line: 1026, column: 3)
!5055 = !DILocation(line: 1027, column: 2, scope: !5024)
!5056 = !DILocation(line: 1027, column: 2, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5024, file: !5025, line: 1027, column: 2)
!5058 = !DILocation(line: 1027, column: 2, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5057, file: !5025, line: 1027, column: 2)
!5060 = !DILocation(line: 1027, column: 2, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5057, file: !5025, line: 1027, column: 2)
!5062 = !DILocation(line: 1028, column: 2, scope: !5024)
!5063 = !DILocation(line: 1028, column: 2, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5024, file: !5025, line: 1028, column: 2)
!5065 = !DILocation(line: 1028, column: 2, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5064, file: !5025, line: 1028, column: 2)
!5067 = !DILocation(line: 1028, column: 2, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !5025, line: 1028, column: 2)
!5069 = !DILocation(line: 1029, column: 1, scope: !5024)
!5070 = distinct !DISubprogram(name: "v9fs_fid_lookup", scope: !8, file: !8, line: 287, type: !5071, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5073)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!234, !1042}
!5073 = !{!5074, !5075, !5076, !5077, !5078}
!5074 = !DILocalVariable(name: "dentry", arg: 1, scope: !5070, file: !8, line: 287, type: !1042)
!5075 = !DILocalVariable(name: "uid", scope: !5070, file: !8, line: 289, type: !349)
!5076 = !DILocalVariable(name: "any", scope: !5070, file: !8, line: 290, type: !106)
!5077 = !DILocalVariable(name: "access", scope: !5070, file: !8, line: 290, type: !106)
!5078 = !DILocalVariable(name: "v9ses", scope: !5070, file: !8, line: 291, type: !5079)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v9fs_session_info", file: !171, line: 109, size: 960, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5080, file: !171, line: 111, baseType: !12, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "nodev", scope: !5080, file: !171, line: 112, baseType: !274, size: 8, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5080, file: !171, line: 113, baseType: !282, size: 16, offset: 48)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "afid", scope: !5080, file: !171, line: 114, baseType: !12, size: 32, offset: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !5080, file: !171, line: 115, baseType: !12, size: 32, offset: 96)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !5080, file: !171, line: 121, baseType: !514, size: 64, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !5080, file: !171, line: 122, baseType: !514, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !5080, file: !171, line: 123, baseType: !12, size: 32, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "dfltuid", scope: !5080, file: !171, line: 124, baseType: !349, size: 32, offset: 288)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "dfltgid", scope: !5080, file: !171, line: 125, baseType: !377, size: 32, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5080, file: !171, line: 126, baseType: !349, size: 32, offset: 352)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "clnt", scope: !5080, file: !171, line: 127, baseType: !238, size: 64, offset: 384)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "slist", scope: !5080, file: !171, line: 128, baseType: !416, size: 128, offset: 448)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "rename_sem", scope: !5080, file: !171, line: 129, baseType: !431, size: 320, offset: 576)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "session_lock_timeout", scope: !5080, file: !171, line: 130, baseType: !1192, size: 64, offset: 896)
!5097 = !DILocation(line: 287, column: 47, scope: !5070)
!5098 = !DILocation(line: 289, column: 2, scope: !5070)
!5099 = !DILocation(line: 289, column: 9, scope: !5070)
!5100 = !DILocation(line: 290, column: 2, scope: !5070)
!5101 = !DILocation(line: 290, column: 7, scope: !5070)
!5102 = !DILocation(line: 290, column: 12, scope: !5070)
!5103 = !DILocation(line: 291, column: 2, scope: !5070)
!5104 = !DILocation(line: 291, column: 28, scope: !5070)
!5105 = !DILocation(line: 293, column: 28, scope: !5070)
!5106 = !DILocation(line: 293, column: 10, scope: !5070)
!5107 = !DILocation(line: 293, column: 8, scope: !5070)
!5108 = !DILocation(line: 294, column: 11, scope: !5070)
!5109 = !DILocation(line: 294, column: 18, scope: !5070)
!5110 = !DILocation(line: 294, column: 24, scope: !5070)
!5111 = !DILocation(line: 294, column: 9, scope: !5070)
!5112 = !DILocation(line: 295, column: 10, scope: !5070)
!5113 = !DILocation(line: 295, column: 2, scope: !5070)
!5114 = !DILocation(line: 299, column: 9, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !8, line: 299, column: 9)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !8, line: 299, column: 9)
!5117 = distinct !DILexicalBlock(scope: !5070, file: !8, line: 295, column: 18)
!5118 = !DILocation(line: 299, column: 9, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5115, file: !8, line: 299, column: 9)
!5120 = !DILocation(line: 299, column: 9, scope: !5116)
!5121 = !DILocation(line: 300, column: 7, scope: !5117)
!5122 = !DILocation(line: 301, column: 3, scope: !5117)
!5123 = !DILocation(line: 304, column: 9, scope: !5117)
!5124 = !DILocation(line: 304, column: 16, scope: !5117)
!5125 = !DILocation(line: 305, column: 7, scope: !5117)
!5126 = !DILocation(line: 306, column: 3, scope: !5117)
!5127 = !DILocation(line: 309, column: 9, scope: !5117)
!5128 = !DILocation(line: 310, column: 7, scope: !5117)
!5129 = !DILocation(line: 311, column: 3, scope: !5117)
!5130 = !DILocation(line: 313, column: 34, scope: !5070)
!5131 = !DILocation(line: 313, column: 47, scope: !5070)
!5132 = !DILocation(line: 313, column: 9, scope: !5070)
!5133 = !DILocation(line: 314, column: 1, scope: !5070)
!5134 = !DILocation(line: 313, column: 2, scope: !5070)
!5135 = distinct !DISubprogram(name: "v9fs_dentry2v9ses", scope: !171, file: !171, line: 205, type: !5136, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5138)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!5079, !1042}
!5138 = !{!5139}
!5139 = !DILocalVariable(name: "dentry", arg: 1, scope: !5135, file: !171, line: 205, type: !1042)
!5140 = !DILocation(line: 205, column: 74, scope: !5135)
!5141 = !DILocation(line: 207, column: 9, scope: !5135)
!5142 = !DILocation(line: 207, column: 17, scope: !5135)
!5143 = !DILocation(line: 207, column: 23, scope: !5135)
!5144 = !DILocation(line: 207, column: 2, scope: !5135)
!5145 = distinct !DISubprogram(name: "get_current", scope: !5146, file: !5146, line: 39, type: !5147, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5149)
!5146 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!615}
!5149 = !{!5150, !5152, !5154}
!5150 = !DILocalVariable(name: "pscr_ret__", scope: !5151, file: !5146, line: 41, type: !615)
!5151 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 41, column: 9)
!5152 = !DILocalVariable(name: "__vpp_verify", scope: !5153, file: !5146, line: 41, type: !2070)
!5153 = distinct !DILexicalBlock(scope: !5151, file: !5146, line: 41, column: 9)
!5154 = !DILocalVariable(name: "pfo_val__", scope: !5155, file: !5146, line: 41, type: !344)
!5155 = distinct !DILexicalBlock(scope: !5151, file: !5146, line: 41, column: 9)
!5156 = !DILocation(line: 41, column: 9, scope: !5151)
!5157 = !DILocation(line: 41, column: 9, scope: !5153)
!5158 = !DILocation(line: 41, column: 9, scope: !5155)
!5159 = !{i64 2148538298}
!5160 = !DILocation(line: 41, column: 9, scope: !5145)
!5161 = !DILocation(line: 41, column: 2, scope: !5145)
!5162 = distinct !DISubprogram(name: "v9fs_fid_lookup_with_uid", scope: !8, file: !8, line: 169, type: !5163, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5165)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!234, !1042, !349, !106}
!5165 = !{!5166, !5167, !5168, !5169, !5170, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5184, !5185, !5186}
!5166 = !DILocalVariable(name: "dentry", arg: 1, scope: !5162, file: !8, line: 169, type: !1042)
!5167 = !DILocalVariable(name: "uid", arg: 2, scope: !5162, file: !8, line: 170, type: !349)
!5168 = !DILocalVariable(name: "any", arg: 3, scope: !5162, file: !8, line: 170, type: !106)
!5169 = !DILocalVariable(name: "ds", scope: !5162, file: !8, line: 172, type: !1042)
!5170 = !DILocalVariable(name: "wnames", scope: !5162, file: !8, line: 173, type: !5171)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!5172 = !DILocalVariable(name: "uname", scope: !5162, file: !8, line: 173, type: !1074)
!5173 = !DILocalVariable(name: "i", scope: !5162, file: !8, line: 174, type: !106)
!5174 = !DILocalVariable(name: "n", scope: !5162, file: !8, line: 174, type: !106)
!5175 = !DILocalVariable(name: "l", scope: !5162, file: !8, line: 174, type: !106)
!5176 = !DILocalVariable(name: "access", scope: !5162, file: !8, line: 174, type: !106)
!5177 = !DILocalVariable(name: "v9ses", scope: !5162, file: !8, line: 175, type: !5079)
!5178 = !DILocalVariable(name: "fid", scope: !5162, file: !8, line: 176, type: !234)
!5179 = !DILocalVariable(name: "root_fid", scope: !5162, file: !8, line: 176, type: !234)
!5180 = !DILocalVariable(name: "old_fid", scope: !5162, file: !8, line: 176, type: !234)
!5181 = !DILocalVariable(name: "__UNIQUE_ID___x320", scope: !5182, file: !8, line: 240, type: !106)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !8, line: 240, column: 7)
!5183 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 239, column: 16)
!5184 = !DILocalVariable(name: "__UNIQUE_ID___y321", scope: !5182, file: !8, line: 240, type: !106)
!5185 = !DILabel(scope: !5162, name: "fid_out", file: !8, line: 259)
!5186 = !DILabel(scope: !5162, name: "err_out", file: !8, line: 272)
!5187 = !DILocation(line: 169, column: 63, scope: !5162)
!5188 = !DILocation(line: 170, column: 20, scope: !5162)
!5189 = !DILocation(line: 170, column: 29, scope: !5162)
!5190 = !DILocation(line: 172, column: 2, scope: !5162)
!5191 = !DILocation(line: 172, column: 17, scope: !5162)
!5192 = !DILocation(line: 173, column: 2, scope: !5162)
!5193 = !DILocation(line: 173, column: 24, scope: !5162)
!5194 = !DILocation(line: 173, column: 33, scope: !5162)
!5195 = !DILocation(line: 174, column: 2, scope: !5162)
!5196 = !DILocation(line: 174, column: 6, scope: !5162)
!5197 = !DILocation(line: 174, column: 9, scope: !5162)
!5198 = !DILocation(line: 174, column: 12, scope: !5162)
!5199 = !DILocation(line: 174, column: 15, scope: !5162)
!5200 = !DILocation(line: 175, column: 2, scope: !5162)
!5201 = !DILocation(line: 175, column: 28, scope: !5162)
!5202 = !DILocation(line: 176, column: 2, scope: !5162)
!5203 = !DILocation(line: 176, column: 17, scope: !5162)
!5204 = !DILocation(line: 176, column: 23, scope: !5162)
!5205 = !DILocation(line: 176, column: 34, scope: !5162)
!5206 = !DILocation(line: 178, column: 28, scope: !5162)
!5207 = !DILocation(line: 178, column: 10, scope: !5162)
!5208 = !DILocation(line: 178, column: 8, scope: !5162)
!5209 = !DILocation(line: 179, column: 11, scope: !5162)
!5210 = !DILocation(line: 179, column: 18, scope: !5162)
!5211 = !DILocation(line: 179, column: 24, scope: !5162)
!5212 = !DILocation(line: 179, column: 9, scope: !5162)
!5213 = !DILocation(line: 180, column: 22, scope: !5162)
!5214 = !DILocation(line: 180, column: 35, scope: !5162)
!5215 = !DILocation(line: 180, column: 8, scope: !5162)
!5216 = !DILocation(line: 180, column: 6, scope: !5162)
!5217 = !DILocation(line: 181, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 181, column: 6)
!5219 = !DILocation(line: 181, column: 6, scope: !5162)
!5220 = !DILocation(line: 182, column: 10, scope: !5218)
!5221 = !DILocation(line: 182, column: 3, scope: !5218)
!5222 = !DILocation(line: 188, column: 13, scope: !5162)
!5223 = !DILocation(line: 188, column: 20, scope: !5162)
!5224 = !DILocation(line: 188, column: 2, scope: !5162)
!5225 = !DILocation(line: 189, column: 7, scope: !5162)
!5226 = !DILocation(line: 189, column: 15, scope: !5162)
!5227 = !DILocation(line: 189, column: 5, scope: !5162)
!5228 = !DILocation(line: 190, column: 22, scope: !5162)
!5229 = !DILocation(line: 190, column: 31, scope: !5162)
!5230 = !DILocation(line: 190, column: 8, scope: !5162)
!5231 = !DILocation(line: 190, column: 6, scope: !5162)
!5232 = !DILocation(line: 191, column: 6, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 191, column: 6)
!5234 = !DILocation(line: 191, column: 6, scope: !5162)
!5235 = !DILocation(line: 193, column: 13, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5233, file: !8, line: 191, column: 11)
!5237 = !DILocation(line: 193, column: 11, scope: !5236)
!5238 = !DILocation(line: 195, column: 24, scope: !5236)
!5239 = !DILocation(line: 195, column: 37, scope: !5236)
!5240 = !DILocation(line: 195, column: 45, scope: !5236)
!5241 = !DILocation(line: 195, column: 52, scope: !5236)
!5242 = !DILocation(line: 195, column: 9, scope: !5236)
!5243 = !DILocation(line: 195, column: 7, scope: !5236)
!5244 = !DILocation(line: 196, column: 14, scope: !5236)
!5245 = !DILocation(line: 196, column: 3, scope: !5236)
!5246 = !DILocation(line: 197, column: 3, scope: !5236)
!5247 = !DILocation(line: 199, column: 11, scope: !5162)
!5248 = !DILocation(line: 199, column: 18, scope: !5162)
!5249 = !DILocation(line: 199, column: 2, scope: !5162)
!5250 = !DILocation(line: 202, column: 27, scope: !5162)
!5251 = !DILocation(line: 202, column: 35, scope: !5162)
!5252 = !DILocation(line: 202, column: 41, scope: !5162)
!5253 = !DILocation(line: 202, column: 54, scope: !5162)
!5254 = !DILocation(line: 202, column: 13, scope: !5162)
!5255 = !DILocation(line: 202, column: 11, scope: !5162)
!5256 = !DILocation(line: 203, column: 7, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 203, column: 6)
!5258 = !DILocation(line: 203, column: 6, scope: !5162)
!5259 = !DILocation(line: 205, column: 7, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !8, line: 205, column: 7)
!5261 = distinct !DILexicalBlock(scope: !5257, file: !8, line: 203, column: 17)
!5262 = !DILocation(line: 205, column: 14, scope: !5260)
!5263 = !DILocation(line: 205, column: 7, scope: !5261)
!5264 = !DILocation(line: 206, column: 11, scope: !5260)
!5265 = !DILocation(line: 206, column: 4, scope: !5260)
!5266 = !DILocation(line: 208, column: 23, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5261, file: !8, line: 208, column: 7)
!5268 = !DILocation(line: 208, column: 7, scope: !5267)
!5269 = !DILocation(line: 208, column: 30, scope: !5267)
!5270 = !DILocation(line: 208, column: 49, scope: !5267)
!5271 = !DILocation(line: 208, column: 33, scope: !5267)
!5272 = !DILocation(line: 208, column: 7, scope: !5261)
!5273 = !DILocation(line: 209, column: 10, scope: !5267)
!5274 = !DILocation(line: 209, column: 4, scope: !5267)
!5275 = !DILocation(line: 211, column: 12, scope: !5267)
!5276 = !DILocation(line: 211, column: 19, scope: !5267)
!5277 = !DILocation(line: 211, column: 10, scope: !5267)
!5278 = !DILocation(line: 213, column: 26, scope: !5261)
!5279 = !DILocation(line: 213, column: 33, scope: !5261)
!5280 = !DILocation(line: 213, column: 45, scope: !5261)
!5281 = !DILocation(line: 214, column: 12, scope: !5261)
!5282 = !DILocation(line: 214, column: 19, scope: !5261)
!5283 = !DILocation(line: 213, column: 9, scope: !5261)
!5284 = !DILocation(line: 213, column: 7, scope: !5261)
!5285 = !DILocation(line: 215, column: 14, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5261, file: !8, line: 215, column: 7)
!5287 = !DILocation(line: 215, column: 7, scope: !5286)
!5288 = !DILocation(line: 215, column: 7, scope: !5261)
!5289 = !DILocation(line: 216, column: 11, scope: !5286)
!5290 = !DILocation(line: 216, column: 4, scope: !5286)
!5291 = !DILocation(line: 218, column: 25, scope: !5261)
!5292 = !DILocation(line: 218, column: 14, scope: !5261)
!5293 = !DILocation(line: 218, column: 12, scope: !5261)
!5294 = !DILocation(line: 219, column: 16, scope: !5261)
!5295 = !DILocation(line: 219, column: 24, scope: !5261)
!5296 = !DILocation(line: 219, column: 30, scope: !5261)
!5297 = !DILocation(line: 219, column: 3, scope: !5261)
!5298 = !DILocation(line: 220, column: 2, scope: !5261)
!5299 = !DILocation(line: 222, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 222, column: 6)
!5301 = !DILocation(line: 222, column: 14, scope: !5300)
!5302 = !DILocation(line: 222, column: 20, scope: !5300)
!5303 = !DILocation(line: 222, column: 30, scope: !5300)
!5304 = !DILocation(line: 222, column: 27, scope: !5300)
!5305 = !DILocation(line: 222, column: 6, scope: !5162)
!5306 = !DILocation(line: 223, column: 10, scope: !5300)
!5307 = !DILocation(line: 223, column: 3, scope: !5300)
!5308 = !DILocation(line: 230, column: 13, scope: !5162)
!5309 = !DILocation(line: 230, column: 20, scope: !5162)
!5310 = !DILocation(line: 230, column: 2, scope: !5162)
!5311 = !DILocation(line: 231, column: 30, scope: !5162)
!5312 = !DILocation(line: 231, column: 37, scope: !5162)
!5313 = !DILocation(line: 231, column: 7, scope: !5162)
!5314 = !DILocation(line: 231, column: 5, scope: !5162)
!5315 = !DILocation(line: 232, column: 6, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 232, column: 6)
!5317 = !DILocation(line: 232, column: 8, scope: !5316)
!5318 = !DILocation(line: 232, column: 6, scope: !5162)
!5319 = !DILocation(line: 233, column: 17, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5316, file: !8, line: 232, column: 13)
!5321 = !DILocation(line: 233, column: 9, scope: !5320)
!5322 = !DILocation(line: 233, column: 7, scope: !5320)
!5323 = !DILocation(line: 234, column: 3, scope: !5320)
!5324 = !DILocation(line: 236, column: 8, scope: !5162)
!5325 = !DILocation(line: 236, column: 6, scope: !5162)
!5326 = !DILocation(line: 237, column: 12, scope: !5162)
!5327 = !DILocation(line: 237, column: 10, scope: !5162)
!5328 = !DILocation(line: 238, column: 4, scope: !5162)
!5329 = !DILocation(line: 239, column: 2, scope: !5162)
!5330 = !DILocation(line: 239, column: 9, scope: !5162)
!5331 = !DILocation(line: 239, column: 13, scope: !5162)
!5332 = !DILocation(line: 239, column: 11, scope: !5162)
!5333 = !DILocation(line: 240, column: 7, scope: !5182)
!5334 = !DILocation(line: 240, column: 7, scope: !5183)
!5335 = !DILocation(line: 240, column: 5, scope: !5183)
!5336 = !DILocation(line: 245, column: 24, scope: !5183)
!5337 = !DILocation(line: 245, column: 33, scope: !5183)
!5338 = !DILocation(line: 245, column: 37, scope: !5183)
!5339 = !DILocation(line: 245, column: 44, scope: !5183)
!5340 = !DILocation(line: 246, column: 10, scope: !5183)
!5341 = !DILocation(line: 246, column: 21, scope: !5183)
!5342 = !DILocation(line: 246, column: 18, scope: !5183)
!5343 = !DILocation(line: 245, column: 9, scope: !5183)
!5344 = !DILocation(line: 245, column: 7, scope: !5183)
!5345 = !DILocation(line: 248, column: 7, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5183, file: !8, line: 248, column: 7)
!5347 = !DILocation(line: 248, column: 14, scope: !5346)
!5348 = !DILocation(line: 248, column: 11, scope: !5346)
!5349 = !DILocation(line: 248, column: 7, scope: !5183)
!5350 = !DILocation(line: 249, column: 15, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !8, line: 248, column: 23)
!5352 = !DILocation(line: 249, column: 4, scope: !5351)
!5353 = !DILocation(line: 250, column: 14, scope: !5351)
!5354 = !DILocation(line: 250, column: 12, scope: !5351)
!5355 = !DILocation(line: 251, column: 3, scope: !5351)
!5356 = !DILocation(line: 252, column: 14, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5183, file: !8, line: 252, column: 7)
!5358 = !DILocation(line: 252, column: 7, scope: !5357)
!5359 = !DILocation(line: 252, column: 7, scope: !5183)
!5360 = !DILocation(line: 253, column: 10, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !8, line: 252, column: 20)
!5362 = !DILocation(line: 253, column: 4, scope: !5361)
!5363 = !DILocation(line: 254, column: 4, scope: !5361)
!5364 = !DILocation(line: 256, column: 8, scope: !5183)
!5365 = !DILocation(line: 256, column: 5, scope: !5183)
!5366 = distinct !{!5366, !5329, !5367, !4948, !4949}
!5367 = !DILocation(line: 257, column: 2, scope: !5162)
!5368 = !DILocation(line: 258, column: 8, scope: !5162)
!5369 = !DILocation(line: 258, column: 2, scope: !5162)
!5370 = !DILocation(line: 259, column: 1, scope: !5162)
!5371 = !DILocation(line: 260, column: 14, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5162, file: !8, line: 260, column: 6)
!5373 = !DILocation(line: 260, column: 7, scope: !5372)
!5374 = !DILocation(line: 260, column: 6, scope: !5162)
!5375 = !DILocation(line: 261, column: 14, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5372, file: !8, line: 260, column: 20)
!5377 = !DILocation(line: 261, column: 22, scope: !5376)
!5378 = !DILocation(line: 261, column: 3, scope: !5376)
!5379 = !DILocation(line: 262, column: 18, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5376, file: !8, line: 262, column: 7)
!5381 = !DILocation(line: 262, column: 7, scope: !5380)
!5382 = !DILocation(line: 262, column: 7, scope: !5376)
!5383 = !DILocation(line: 263, column: 17, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !8, line: 262, column: 27)
!5385 = !DILocation(line: 263, column: 25, scope: !5384)
!5386 = !DILocation(line: 263, column: 4, scope: !5384)
!5387 = !DILocation(line: 264, column: 15, scope: !5384)
!5388 = !DILocation(line: 264, column: 4, scope: !5384)
!5389 = !DILocation(line: 265, column: 10, scope: !5384)
!5390 = !DILocation(line: 265, column: 8, scope: !5384)
!5391 = !DILocation(line: 266, column: 3, scope: !5384)
!5392 = !DILocation(line: 267, column: 14, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5380, file: !8, line: 266, column: 10)
!5394 = !DILocation(line: 267, column: 22, scope: !5393)
!5395 = !DILocation(line: 267, column: 4, scope: !5393)
!5396 = !DILocation(line: 268, column: 15, scope: !5393)
!5397 = !DILocation(line: 268, column: 4, scope: !5393)
!5398 = !DILocation(line: 269, column: 17, scope: !5393)
!5399 = !DILocation(line: 269, column: 25, scope: !5393)
!5400 = !DILocation(line: 269, column: 4, scope: !5393)
!5401 = !DILocation(line: 271, column: 2, scope: !5376)
!5402 = !DILocation(line: 260, column: 17, scope: !5372)
!5403 = !DILocation(line: 272, column: 1, scope: !5162)
!5404 = !DILocation(line: 273, column: 11, scope: !5162)
!5405 = !DILocation(line: 273, column: 18, scope: !5162)
!5406 = !DILocation(line: 273, column: 2, scope: !5162)
!5407 = !DILocation(line: 274, column: 9, scope: !5162)
!5408 = !DILocation(line: 274, column: 2, scope: !5162)
!5409 = !DILocation(line: 275, column: 1, scope: !5162)
!5410 = !DISubprogram(name: "_raw_spin_lock", scope: !5411, file: !5411, line: 22, type: !5412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5411 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5412 = !DISubroutineType(types: !5413)
!5413 = !{null, !5414}
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!5415 = !DISubprogram(name: "_raw_spin_unlock", scope: !5411, file: !5411, line: 39, type: !5412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5416 = distinct !DISubprogram(name: "__kuid_val", scope: !350, file: !350, line: 34, type: !5417, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5419)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!354, !349}
!5419 = !{!5420}
!5420 = !DILocalVariable(name: "uid", arg: 1, scope: !5416, file: !350, line: 34, type: !349)
!5421 = !DILocation(line: 34, column: 39, scope: !5416)
!5422 = !DILocation(line: 36, column: 13, scope: !5416)
!5423 = !DILocation(line: 36, column: 2, scope: !5416)
!5424 = distinct !DISubprogram(name: "static_key_false", scope: !2534, file: !2534, line: 205, type: !5425, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5439)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!308, !5427}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2534, line: 85, size: 128, elements: !5429)
!5429 = !{!5430, !5431}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5428, file: !2534, line: 86, baseType: !262, size: 32)
!5431 = !DIDerivedType(tag: DW_TAG_member, scope: !5428, file: !2534, line: 101, baseType: !5432, size: 64, offset: 64)
!5432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5428, file: !2534, line: 101, size: 64, elements: !5433)
!5433 = !{!5434, !5435, !5436}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5432, file: !2534, line: 102, baseType: !426, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5432, file: !2534, line: 103, baseType: !2532, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5432, file: !2534, line: 104, baseType: !5437, size: 64)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2534, line: 104, flags: DIFlagFwdDecl)
!5439 = !{!5440}
!5440 = !DILocalVariable(name: "key", arg: 1, scope: !5424, file: !2534, line: 205, type: !5427)
!5441 = !DILocation(line: 205, column: 65, scope: !5424)
!5442 = !DILocation(line: 207, column: 28, scope: !5424)
!5443 = !DILocation(line: 207, column: 9, scope: !5424)
!5444 = !DILocation(line: 207, column: 2, scope: !5424)
!5445 = !DISubprogram(name: "do_trace_9p_fid_get", scope: !164, file: !164, line: 244, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !234}
!5448 = distinct !DISubprogram(name: "refcount_inc", scope: !205, file: !205, line: 265, type: !5449, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5452)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{null, !5451}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!5452 = !{!5453}
!5453 = !DILocalVariable(name: "r", arg: 1, scope: !5448, file: !205, line: 265, type: !5451)
!5454 = !DILocation(line: 265, column: 45, scope: !5448)
!5455 = !DILocation(line: 267, column: 17, scope: !5448)
!5456 = !DILocation(line: 267, column: 2, scope: !5448)
!5457 = !DILocation(line: 268, column: 1, scope: !5448)
!5458 = distinct !DISubprogram(name: "arch_static_branch", scope: !5459, file: !5459, line: 25, type: !5460, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5462)
!5459 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!308, !5427, !308}
!5462 = !{!5463, !5464, !5465}
!5463 = !DILocalVariable(name: "key", arg: 1, scope: !5458, file: !5459, line: 25, type: !5427)
!5464 = !DILocalVariable(name: "branch", arg: 2, scope: !5458, file: !5459, line: 25, type: !308)
!5465 = !DILabel(scope: !5458, name: "l_yes", file: !5459, line: 33)
!5466 = !DILocation(line: 25, column: 67, scope: !5458)
!5467 = !DILocation(line: 25, column: 77, scope: !5458)
!5468 = !DILocation(line: 30, column: 13, scope: !5458)
!5469 = !DILocation(line: 30, column: 28, scope: !5458)
!5470 = !DILocation(line: 30, column: 26, scope: !5458)
!5471 = !DILocation(line: 27, column: 2, scope: !5458)
!5472 = !{i64 645862, i64 645906, i64 2148130589, i64 2148130610, i64 2148130636, i64 2148130669, i64 2148130703, i64 2148130727}
!5473 = !DILocation(line: 32, column: 2, scope: !5458)
!5474 = !DILocation(line: 33, column: 1, scope: !5458)
!5475 = !DILocation(line: 34, column: 2, scope: !5458)
!5476 = !DILocation(line: 35, column: 1, scope: !5458)
!5477 = distinct !DISubprogram(name: "__refcount_inc", scope: !205, file: !205, line: 248, type: !5478, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5480)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !5451, !2352}
!5480 = !{!5481, !5482}
!5481 = !DILocalVariable(name: "r", arg: 1, scope: !5477, file: !205, line: 248, type: !5451)
!5482 = !DILocalVariable(name: "oldp", arg: 2, scope: !5477, file: !205, line: 248, type: !2352)
!5483 = !DILocation(line: 248, column: 47, scope: !5477)
!5484 = !DILocation(line: 248, column: 55, scope: !5477)
!5485 = !DILocation(line: 250, column: 20, scope: !5477)
!5486 = !DILocation(line: 250, column: 23, scope: !5477)
!5487 = !DILocation(line: 250, column: 2, scope: !5477)
!5488 = !DILocation(line: 251, column: 1, scope: !5477)
!5489 = distinct !DISubprogram(name: "__refcount_add", scope: !205, file: !205, line: 191, type: !5490, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5492)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{null, !106, !5451, !2352}
!5492 = !{!5493, !5494, !5495, !5496}
!5493 = !DILocalVariable(name: "i", arg: 1, scope: !5489, file: !205, line: 191, type: !106)
!5494 = !DILocalVariable(name: "r", arg: 2, scope: !5489, file: !205, line: 191, type: !5451)
!5495 = !DILocalVariable(name: "oldp", arg: 3, scope: !5489, file: !205, line: 191, type: !2352)
!5496 = !DILocalVariable(name: "old", scope: !5489, file: !205, line: 193, type: !106)
!5497 = !DILocation(line: 191, column: 39, scope: !5489)
!5498 = !DILocation(line: 191, column: 54, scope: !5489)
!5499 = !DILocation(line: 191, column: 62, scope: !5489)
!5500 = !DILocation(line: 193, column: 2, scope: !5489)
!5501 = !DILocation(line: 193, column: 6, scope: !5489)
!5502 = !DILocation(line: 193, column: 37, scope: !5489)
!5503 = !DILocation(line: 193, column: 41, scope: !5489)
!5504 = !DILocation(line: 193, column: 44, scope: !5489)
!5505 = !DILocation(line: 193, column: 12, scope: !5489)
!5506 = !DILocation(line: 195, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5489, file: !205, line: 195, column: 6)
!5508 = !DILocation(line: 195, column: 6, scope: !5489)
!5509 = !DILocation(line: 196, column: 11, scope: !5507)
!5510 = !DILocation(line: 196, column: 4, scope: !5507)
!5511 = !DILocation(line: 196, column: 9, scope: !5507)
!5512 = !DILocation(line: 196, column: 3, scope: !5507)
!5513 = !DILocation(line: 198, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5489, file: !205, line: 198, column: 6)
!5515 = !DILocation(line: 198, column: 6, scope: !5489)
!5516 = !DILocation(line: 199, column: 26, scope: !5514)
!5517 = !DILocation(line: 199, column: 3, scope: !5514)
!5518 = !DILocation(line: 200, column: 11, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5514, file: !205, line: 200, column: 11)
!5520 = !DILocation(line: 200, column: 11, scope: !5514)
!5521 = !DILocation(line: 201, column: 26, scope: !5519)
!5522 = !DILocation(line: 201, column: 3, scope: !5519)
!5523 = !DILocation(line: 202, column: 1, scope: !5489)
!5524 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5525, file: !5525, line: 250, type: !5526, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5529)
!5525 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!106, !106, !5528}
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!5529 = !{!5530, !5531}
!5530 = !DILocalVariable(name: "i", arg: 1, scope: !5524, file: !5525, line: 250, type: !106)
!5531 = !DILocalVariable(name: "v", arg: 2, scope: !5524, file: !5525, line: 250, type: !5528)
!5532 = !DILocation(line: 250, column: 30, scope: !5524)
!5533 = !DILocation(line: 250, column: 43, scope: !5524)
!5534 = !DILocation(line: 252, column: 31, scope: !5524)
!5535 = !DILocation(line: 252, column: 2, scope: !5524)
!5536 = !DILocation(line: 253, column: 38, scope: !5524)
!5537 = !DILocation(line: 253, column: 41, scope: !5524)
!5538 = !DILocation(line: 253, column: 9, scope: !5524)
!5539 = !DILocation(line: 253, column: 2, scope: !5524)
!5540 = !DISubprogram(name: "refcount_warn_saturate", scope: !205, file: !205, line: 127, type: !5541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{null, !5451, !204}
!5543 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5544, file: !5544, line: 94, type: !5545, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5550)
!5544 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !5547, !1234}
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5549)
!5549 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5550 = !{!5551, !5552}
!5551 = !DILocalVariable(name: "v", arg: 1, scope: !5543, file: !5544, line: 94, type: !5547)
!5552 = !DILocalVariable(name: "size", arg: 2, scope: !5543, file: !5544, line: 94, type: !1234)
!5553 = !DILocation(line: 94, column: 79, scope: !5543)
!5554 = !DILocation(line: 94, column: 89, scope: !5543)
!5555 = !DILocation(line: 96, column: 20, scope: !5543)
!5556 = !DILocation(line: 96, column: 23, scope: !5543)
!5557 = !DILocation(line: 96, column: 2, scope: !5543)
!5558 = !DILocation(line: 97, column: 2, scope: !5543)
!5559 = !DILocation(line: 98, column: 1, scope: !5543)
!5560 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5561, file: !5561, line: 731, type: !5526, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5562)
!5561 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5562 = !{!5563, !5564}
!5563 = !DILocalVariable(name: "i", arg: 1, scope: !5560, file: !5561, line: 731, type: !106)
!5564 = !DILocalVariable(name: "v", arg: 2, scope: !5560, file: !5561, line: 731, type: !5528)
!5565 = !DILocation(line: 731, column: 34, scope: !5560)
!5566 = !DILocation(line: 731, column: 47, scope: !5560)
!5567 = !DILocation(line: 736, column: 31, scope: !5560)
!5568 = !DILocation(line: 736, column: 34, scope: !5560)
!5569 = !DILocation(line: 736, column: 9, scope: !5560)
!5570 = !DILocation(line: 736, column: 2, scope: !5560)
!5571 = distinct !DISubprogram(name: "kasan_check_write", scope: !5572, file: !5572, line: 44, type: !5573, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5575)
!5572 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!308, !5547, !12}
!5575 = !{!5576, !5577}
!5576 = !DILocalVariable(name: "p", arg: 1, scope: !5571, file: !5572, line: 44, type: !5547)
!5577 = !DILocalVariable(name: "size", arg: 2, scope: !5571, file: !5572, line: 44, type: !12)
!5578 = !DILocation(line: 44, column: 59, scope: !5571)
!5579 = !DILocation(line: 44, column: 75, scope: !5571)
!5580 = !DILocation(line: 46, column: 2, scope: !5571)
!5581 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5582, file: !5582, line: 229, type: !5583, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5585)
!5582 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !5547, !1234, !106}
!5585 = !{!5586, !5587, !5588}
!5586 = !DILocalVariable(name: "ptr", arg: 1, scope: !5581, file: !5582, line: 229, type: !5547)
!5587 = !DILocalVariable(name: "size", arg: 2, scope: !5581, file: !5582, line: 229, type: !1234)
!5588 = !DILocalVariable(name: "type", arg: 3, scope: !5581, file: !5582, line: 230, type: !106)
!5589 = !DILocation(line: 229, column: 60, scope: !5581)
!5590 = !DILocation(line: 229, column: 72, scope: !5581)
!5591 = !DILocation(line: 230, column: 15, scope: !5581)
!5592 = !DILocation(line: 230, column: 23, scope: !5581)
!5593 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5594, file: !5594, line: 95, type: !5526, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5595)
!5594 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5595 = !{!5596, !5597, !5598}
!5596 = !DILocalVariable(name: "i", arg: 1, scope: !5593, file: !5594, line: 95, type: !106)
!5597 = !DILocalVariable(name: "v", arg: 2, scope: !5593, file: !5594, line: 95, type: !5528)
!5598 = !DILocalVariable(name: "__ret", scope: !5599, file: !5594, line: 97, type: !106)
!5599 = distinct !DILexicalBlock(scope: !5593, file: !5594, line: 97, column: 9)
!5600 = !DILocation(line: 95, column: 54, scope: !5593)
!5601 = !DILocation(line: 95, column: 67, scope: !5593)
!5602 = !DILocation(line: 97, column: 9, scope: !5599)
!5603 = !{i64 2148798091, i64 2148798130, i64 2148798151, i64 2148798188, i64 2148798211, i64 2148798220}
!5604 = !DILocation(line: 97, column: 9, scope: !5593)
!5605 = !DILocation(line: 97, column: 2, scope: !5593)
!5606 = distinct !DISubprogram(name: "v9fs_fid_find", scope: !8, file: !8, line: 113, type: !5163, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5607)
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5613, !5616, !5619, !5621, !5624}
!5608 = !DILocalVariable(name: "dentry", arg: 1, scope: !5606, file: !8, line: 113, type: !1042)
!5609 = !DILocalVariable(name: "uid", arg: 2, scope: !5606, file: !8, line: 113, type: !349)
!5610 = !DILocalVariable(name: "any", arg: 3, scope: !5606, file: !8, line: 113, type: !106)
!5611 = !DILocalVariable(name: "fid", scope: !5606, file: !8, line: 115, type: !234)
!5612 = !DILocalVariable(name: "ret", scope: !5606, file: !8, line: 115, type: !234)
!5613 = !DILocalVariable(name: "h", scope: !5614, file: !8, line: 123, type: !222)
!5614 = distinct !DILexicalBlock(scope: !5615, file: !8, line: 122, column: 24)
!5615 = distinct !DILexicalBlock(scope: !5606, file: !8, line: 122, column: 6)
!5616 = !DILocalVariable(name: "____ptr", scope: !5617, file: !8, line: 126, type: !227)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !8, line: 126, column: 3)
!5618 = distinct !DILexicalBlock(scope: !5614, file: !8, line: 126, column: 3)
!5619 = !DILocalVariable(name: "__mptr", scope: !5620, file: !8, line: 126, type: !233)
!5620 = distinct !DILexicalBlock(scope: !5617, file: !8, line: 126, column: 3)
!5621 = !DILocalVariable(name: "____ptr", scope: !5622, file: !8, line: 126, type: !227)
!5622 = distinct !DILexicalBlock(scope: !5623, file: !8, line: 126, column: 3)
!5623 = distinct !DILexicalBlock(scope: !5618, file: !8, line: 126, column: 3)
!5624 = !DILocalVariable(name: "__mptr", scope: !5625, file: !8, line: 126, type: !233)
!5625 = distinct !DILexicalBlock(scope: !5622, file: !8, line: 126, column: 3)
!5626 = !DILocation(line: 113, column: 52, scope: !5606)
!5627 = !DILocation(line: 113, column: 67, scope: !5606)
!5628 = !DILocation(line: 113, column: 76, scope: !5606)
!5629 = !DILocation(line: 115, column: 2, scope: !5606)
!5630 = !DILocation(line: 115, column: 17, scope: !5606)
!5631 = !DILocation(line: 115, column: 23, scope: !5606)
!5632 = !DILocation(line: 117, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5634, file: !8, line: 117, column: 2)
!5634 = distinct !DILexicalBlock(scope: !5606, file: !8, line: 117, column: 2)
!5635 = !DILocation(line: 117, column: 2, scope: !5634)
!5636 = !DILocation(line: 120, column: 6, scope: !5606)
!5637 = !DILocation(line: 122, column: 6, scope: !5615)
!5638 = !DILocation(line: 122, column: 14, scope: !5615)
!5639 = !DILocation(line: 122, column: 6, scope: !5606)
!5640 = !DILocation(line: 123, column: 3, scope: !5614)
!5641 = !DILocation(line: 123, column: 22, scope: !5614)
!5642 = !DILocation(line: 123, column: 48, scope: !5614)
!5643 = !DILocation(line: 123, column: 56, scope: !5614)
!5644 = !DILocation(line: 125, column: 14, scope: !5614)
!5645 = !DILocation(line: 125, column: 22, scope: !5614)
!5646 = !DILocation(line: 125, column: 3, scope: !5614)
!5647 = !DILocation(line: 126, column: 3, scope: !5617)
!5648 = !DILocation(line: 126, column: 3, scope: !5620)
!5649 = !DILocation(line: 126, column: 3, scope: !5618)
!5650 = !DILocation(line: 126, column: 3, scope: !5623)
!5651 = !DILocation(line: 127, column: 8, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !8, line: 127, column: 8)
!5653 = distinct !DILexicalBlock(scope: !5623, file: !8, line: 126, column: 39)
!5654 = !DILocation(line: 127, column: 12, scope: !5652)
!5655 = !DILocation(line: 127, column: 22, scope: !5652)
!5656 = !DILocation(line: 127, column: 27, scope: !5652)
!5657 = !DILocation(line: 127, column: 15, scope: !5652)
!5658 = !DILocation(line: 127, column: 8, scope: !5653)
!5659 = !DILocation(line: 128, column: 11, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5652, file: !8, line: 127, column: 38)
!5661 = !DILocation(line: 128, column: 9, scope: !5660)
!5662 = !DILocation(line: 129, column: 16, scope: !5660)
!5663 = !DILocation(line: 129, column: 5, scope: !5660)
!5664 = !DILocation(line: 130, column: 5, scope: !5660)
!5665 = !DILocation(line: 132, column: 3, scope: !5653)
!5666 = !DILocation(line: 126, column: 3, scope: !5622)
!5667 = !DILocation(line: 126, column: 3, scope: !5625)
!5668 = distinct !{!5668, !5649, !5669, !4948, !4949}
!5669 = !DILocation(line: 132, column: 3, scope: !5618)
!5670 = !DILocation(line: 133, column: 16, scope: !5614)
!5671 = !DILocation(line: 133, column: 24, scope: !5614)
!5672 = !DILocation(line: 133, column: 3, scope: !5614)
!5673 = !DILocation(line: 134, column: 2, scope: !5615)
!5674 = !DILocation(line: 134, column: 2, scope: !5614)
!5675 = !DILocation(line: 135, column: 7, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5606, file: !8, line: 135, column: 6)
!5677 = !DILocation(line: 135, column: 11, scope: !5676)
!5678 = !DILocation(line: 135, column: 14, scope: !5676)
!5679 = !DILocation(line: 135, column: 22, scope: !5676)
!5680 = !DILocation(line: 135, column: 6, scope: !5606)
!5681 = !DILocation(line: 136, column: 29, scope: !5676)
!5682 = !DILocation(line: 136, column: 37, scope: !5676)
!5683 = !DILocation(line: 136, column: 58, scope: !5676)
!5684 = !DILocation(line: 136, column: 9, scope: !5676)
!5685 = !DILocation(line: 136, column: 7, scope: !5676)
!5686 = !DILocation(line: 136, column: 3, scope: !5676)
!5687 = !DILocation(line: 138, column: 9, scope: !5606)
!5688 = !DILocation(line: 139, column: 1, scope: !5606)
!5689 = !DILocation(line: 138, column: 2, scope: !5606)
!5690 = !DISubprogram(name: "down_read", scope: !432, file: !432, line: 175, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !5693}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!5694 = !DISubprogram(name: "p9_client_walk", scope: !164, file: !164, line: 192, type: !5695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!234, !234, !5697, !5698, !106}
!5697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !224, line: 109, baseType: !280)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!5700 = distinct !DISubprogram(name: "p9_fid_put", scope: !164, file: !164, line: 267, type: !5701, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5703)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!106, !234}
!5703 = !{!5704}
!5704 = !DILocalVariable(name: "fid", arg: 1, scope: !5700, file: !164, line: 267, type: !234)
!5705 = !DILocation(line: 267, column: 45, scope: !5700)
!5706 = !DILocation(line: 269, column: 7, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5700, file: !164, line: 269, column: 6)
!5708 = !DILocation(line: 269, column: 11, scope: !5707)
!5709 = !DILocation(line: 269, column: 21, scope: !5707)
!5710 = !DILocation(line: 269, column: 14, scope: !5707)
!5711 = !DILocation(line: 269, column: 6, scope: !5700)
!5712 = !DILocation(line: 270, column: 3, scope: !5707)
!5713 = !DILocation(line: 272, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5700, file: !164, line: 272, column: 6)
!5715 = !DILocation(line: 272, column: 6, scope: !5700)
!5716 = !DILocation(line: 273, column: 23, scope: !5714)
!5717 = !DILocation(line: 273, column: 3, scope: !5714)
!5718 = !DILocation(line: 275, column: 30, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5700, file: !164, line: 275, column: 6)
!5720 = !DILocation(line: 275, column: 35, scope: !5719)
!5721 = !DILocation(line: 275, column: 7, scope: !5719)
!5722 = !DILocation(line: 275, column: 6, scope: !5700)
!5723 = !DILocation(line: 276, column: 3, scope: !5719)
!5724 = !DILocation(line: 278, column: 25, scope: !5700)
!5725 = !DILocation(line: 278, column: 9, scope: !5700)
!5726 = !DILocation(line: 278, column: 2, scope: !5700)
!5727 = !DILocation(line: 279, column: 1, scope: !5700)
!5728 = !DISubprogram(name: "up_read", scope: !432, file: !432, line: 198, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = distinct !DISubprogram(name: "ERR_PTR", scope: !5730, file: !5730, line: 39, type: !5731, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5733)
!5730 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!233, !1192}
!5733 = !{!5734}
!5734 = !DILocalVariable(name: "error", arg: 1, scope: !5729, file: !5730, line: 39, type: !1192)
!5735 = !DILocation(line: 39, column: 48, scope: !5729)
!5736 = !DILocation(line: 41, column: 18, scope: !5729)
!5737 = !DILocation(line: 41, column: 9, scope: !5729)
!5738 = !DILocation(line: 41, column: 2, scope: !5729)
!5739 = distinct !DISubprogram(name: "v9fs_proto_dotu", scope: !171, file: !171, line: 210, type: !5740, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5742)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!106, !5079}
!5742 = !{!5743}
!5743 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5739, file: !171, line: 210, type: !5079)
!5744 = !DILocation(line: 210, column: 61, scope: !5739)
!5745 = !DILocation(line: 212, column: 9, scope: !5739)
!5746 = !DILocation(line: 212, column: 16, scope: !5739)
!5747 = !DILocation(line: 212, column: 22, scope: !5739)
!5748 = !DILocation(line: 212, column: 2, scope: !5739)
!5749 = distinct !DISubprogram(name: "v9fs_proto_dotl", scope: !171, file: !171, line: 215, type: !5740, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5750)
!5750 = !{!5751}
!5751 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5749, file: !171, line: 215, type: !5079)
!5752 = !DILocation(line: 215, column: 61, scope: !5749)
!5753 = !DILocation(line: 217, column: 9, scope: !5749)
!5754 = !DILocation(line: 217, column: 16, scope: !5749)
!5755 = !DILocation(line: 217, column: 22, scope: !5749)
!5756 = !DILocation(line: 217, column: 2, scope: !5749)
!5757 = !DISubprogram(name: "p9_client_attach", scope: !164, file: !164, line: 190, type: !5758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!234, !238, !234, !504, !349, !504}
!5760 = distinct !DISubprogram(name: "IS_ERR", scope: !5730, file: !5730, line: 59, type: !5761, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5763)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!308, !2070}
!5763 = !{!5764}
!5764 = !DILocalVariable(name: "ptr", arg: 1, scope: !5760, file: !5730, line: 59, type: !2070)
!5765 = !DILocation(line: 59, column: 60, scope: !5760)
!5766 = !DILocation(line: 61, column: 9, scope: !5760)
!5767 = !DILocation(line: 61, column: 2, scope: !5760)
!5768 = distinct !DISubprogram(name: "build_path_from_dentry", scope: !8, file: !8, line: 146, type: !5769, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5772)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!106, !5079, !1042, !5771}
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5772 = !{!5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780}
!5773 = !DILocalVariable(name: "v9ses", arg: 1, scope: !5768, file: !8, line: 146, type: !5079)
!5774 = !DILocalVariable(name: "dentry", arg: 2, scope: !5768, file: !8, line: 147, type: !1042)
!5775 = !DILocalVariable(name: "names", arg: 3, scope: !5768, file: !8, line: 147, type: !5771)
!5776 = !DILocalVariable(name: "n", scope: !5768, file: !8, line: 149, type: !106)
!5777 = !DILocalVariable(name: "i", scope: !5768, file: !8, line: 149, type: !106)
!5778 = !DILocalVariable(name: "wnames", scope: !5768, file: !8, line: 150, type: !5171)
!5779 = !DILocalVariable(name: "ds", scope: !5768, file: !8, line: 151, type: !1042)
!5780 = !DILabel(scope: !5768, name: "err_out", file: !8, line: 165)
!5781 = !DILocation(line: 146, column: 61, scope: !5768)
!5782 = !DILocation(line: 147, column: 22, scope: !5768)
!5783 = !DILocation(line: 147, column: 53, scope: !5768)
!5784 = !DILocation(line: 149, column: 2, scope: !5768)
!5785 = !DILocation(line: 149, column: 6, scope: !5768)
!5786 = !DILocation(line: 149, column: 13, scope: !5768)
!5787 = !DILocation(line: 150, column: 2, scope: !5768)
!5788 = !DILocation(line: 150, column: 24, scope: !5768)
!5789 = !DILocation(line: 151, column: 2, scope: !5768)
!5790 = !DILocation(line: 151, column: 17, scope: !5768)
!5791 = !DILocation(line: 153, column: 12, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5768, file: !8, line: 153, column: 2)
!5793 = !DILocation(line: 153, column: 10, scope: !5792)
!5794 = !DILocation(line: 153, column: 7, scope: !5792)
!5795 = !DILocation(line: 153, column: 21, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5792, file: !8, line: 153, column: 2)
!5797 = !DILocation(line: 153, column: 20, scope: !5796)
!5798 = !DILocation(line: 153, column: 2, scope: !5792)
!5799 = !DILocation(line: 154, column: 4, scope: !5796)
!5800 = !DILocation(line: 154, column: 3, scope: !5796)
!5801 = !DILocation(line: 153, column: 39, scope: !5796)
!5802 = !DILocation(line: 153, column: 43, scope: !5796)
!5803 = !DILocation(line: 153, column: 37, scope: !5796)
!5804 = !DILocation(line: 153, column: 2, scope: !5796)
!5805 = distinct !{!5805, !5798, !5806, !4948, !4949}
!5806 = !DILocation(line: 154, column: 4, scope: !5792)
!5807 = !DILocation(line: 156, column: 25, scope: !5768)
!5808 = !DILocation(line: 156, column: 11, scope: !5768)
!5809 = !DILocation(line: 156, column: 9, scope: !5768)
!5810 = !DILocation(line: 157, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5768, file: !8, line: 157, column: 6)
!5812 = !DILocation(line: 157, column: 6, scope: !5768)
!5813 = !DILocation(line: 158, column: 3, scope: !5811)
!5814 = !DILocation(line: 160, column: 12, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5768, file: !8, line: 160, column: 2)
!5816 = !DILocation(line: 160, column: 10, scope: !5815)
!5817 = !DILocation(line: 160, column: 25, scope: !5815)
!5818 = !DILocation(line: 160, column: 26, scope: !5815)
!5819 = !DILocation(line: 160, column: 22, scope: !5815)
!5820 = !DILocation(line: 160, column: 7, scope: !5815)
!5821 = !DILocation(line: 160, column: 31, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5815, file: !8, line: 160, column: 2)
!5823 = !DILocation(line: 160, column: 33, scope: !5822)
!5824 = !DILocation(line: 160, column: 2, scope: !5815)
!5825 = !DILocation(line: 161, column: 15, scope: !5822)
!5826 = !DILocation(line: 161, column: 19, scope: !5822)
!5827 = !DILocation(line: 161, column: 26, scope: !5822)
!5828 = !DILocation(line: 161, column: 3, scope: !5822)
!5829 = !DILocation(line: 161, column: 10, scope: !5822)
!5830 = !DILocation(line: 161, column: 13, scope: !5822)
!5831 = !DILocation(line: 160, column: 40, scope: !5822)
!5832 = !DILocation(line: 160, column: 49, scope: !5822)
!5833 = !DILocation(line: 160, column: 53, scope: !5822)
!5834 = !DILocation(line: 160, column: 47, scope: !5822)
!5835 = !DILocation(line: 160, column: 2, scope: !5822)
!5836 = distinct !{!5836, !5824, !5837, !4948, !4949}
!5837 = !DILocation(line: 161, column: 26, scope: !5815)
!5838 = !DILocation(line: 163, column: 11, scope: !5768)
!5839 = !DILocation(line: 163, column: 3, scope: !5768)
!5840 = !DILocation(line: 163, column: 9, scope: !5768)
!5841 = !DILocation(line: 164, column: 9, scope: !5768)
!5842 = !DILocation(line: 164, column: 2, scope: !5768)
!5843 = !DILocation(line: 165, column: 1, scope: !5768)
!5844 = !DILocation(line: 166, column: 2, scope: !5768)
!5845 = !DILocation(line: 167, column: 1, scope: !5768)
!5846 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !5847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{null, !2070}
!5849 = distinct !DISubprogram(name: "d_unhashed", scope: !1044, file: !1044, line: 333, type: !3437, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5850)
!5850 = !{!5851}
!5851 = !DILocalVariable(name: "dentry", arg: 1, scope: !5849, file: !1044, line: 333, type: !3426)
!5852 = !DILocation(line: 333, column: 51, scope: !5849)
!5853 = !DILocation(line: 335, column: 28, scope: !5849)
!5854 = !DILocation(line: 335, column: 36, scope: !5849)
!5855 = !DILocation(line: 335, column: 9, scope: !5849)
!5856 = !DILocation(line: 335, column: 2, scope: !5849)
!5857 = !DISubprogram(name: "do_trace_9p_fid_put", scope: !164, file: !164, line: 245, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5858 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !205, file: !205, line: 331, type: !5859, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5861)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{!308, !5451}
!5861 = !{!5862}
!5862 = !DILocalVariable(name: "r", arg: 1, scope: !5858, file: !205, line: 331, type: !5451)
!5863 = !DILocation(line: 331, column: 67, scope: !5858)
!5864 = !DILocation(line: 333, column: 33, scope: !5858)
!5865 = !DILocation(line: 333, column: 9, scope: !5858)
!5866 = !DILocation(line: 333, column: 2, scope: !5858)
!5867 = !DISubprogram(name: "p9_client_clunk", scope: !164, file: !164, line: 202, type: !5701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5868 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !205, file: !205, line: 313, type: !5869, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5871)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!308, !5451, !2352}
!5871 = !{!5872, !5873}
!5872 = !DILocalVariable(name: "r", arg: 1, scope: !5868, file: !205, line: 313, type: !5451)
!5873 = !DILocalVariable(name: "oldp", arg: 2, scope: !5868, file: !205, line: 313, type: !2352)
!5874 = !DILocation(line: 313, column: 69, scope: !5868)
!5875 = !DILocation(line: 313, column: 77, scope: !5868)
!5876 = !DILocation(line: 315, column: 36, scope: !5868)
!5877 = !DILocation(line: 315, column: 39, scope: !5868)
!5878 = !DILocation(line: 315, column: 9, scope: !5868)
!5879 = !DILocation(line: 315, column: 2, scope: !5868)
!5880 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !205, file: !205, line: 270, type: !5881, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5883)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!308, !106, !5451, !2352}
!5883 = !{!5884, !5885, !5886, !5887}
!5884 = !DILocalVariable(name: "i", arg: 1, scope: !5880, file: !205, line: 270, type: !106)
!5885 = !DILocalVariable(name: "r", arg: 2, scope: !5880, file: !205, line: 270, type: !5451)
!5886 = !DILocalVariable(name: "oldp", arg: 3, scope: !5880, file: !205, line: 270, type: !2352)
!5887 = !DILocalVariable(name: "old", scope: !5880, file: !205, line: 272, type: !106)
!5888 = !DILocation(line: 270, column: 61, scope: !5880)
!5889 = !DILocation(line: 270, column: 76, scope: !5880)
!5890 = !DILocation(line: 270, column: 84, scope: !5880)
!5891 = !DILocation(line: 272, column: 2, scope: !5880)
!5892 = !DILocation(line: 272, column: 6, scope: !5880)
!5893 = !DILocation(line: 272, column: 37, scope: !5880)
!5894 = !DILocation(line: 272, column: 41, scope: !5880)
!5895 = !DILocation(line: 272, column: 44, scope: !5880)
!5896 = !DILocation(line: 272, column: 12, scope: !5880)
!5897 = !DILocation(line: 274, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5880, file: !205, line: 274, column: 6)
!5899 = !DILocation(line: 274, column: 6, scope: !5880)
!5900 = !DILocation(line: 275, column: 11, scope: !5898)
!5901 = !DILocation(line: 275, column: 4, scope: !5898)
!5902 = !DILocation(line: 275, column: 9, scope: !5898)
!5903 = !DILocation(line: 275, column: 3, scope: !5898)
!5904 = !DILocation(line: 277, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5880, file: !205, line: 277, column: 6)
!5906 = !DILocation(line: 277, column: 13, scope: !5905)
!5907 = !DILocation(line: 277, column: 10, scope: !5905)
!5908 = !DILocation(line: 277, column: 6, scope: !5880)
!5909 = !DILocation(line: 278, column: 3, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5905, file: !205, line: 277, column: 16)
!5911 = !DILocation(line: 278, column: 3, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5910, file: !205, line: 278, column: 3)
!5913 = !DILocation(line: 278, column: 3, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5912, file: !205, line: 278, column: 3)
!5915 = !DILocation(line: 278, column: 3, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5912, file: !205, line: 278, column: 3)
!5917 = !DILocation(line: 278, column: 3, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5916, file: !205, line: 278, column: 3)
!5919 = !{i64 2149923354}
!5920 = !DILocation(line: 279, column: 3, scope: !5910)
!5921 = !DILocation(line: 282, column: 6, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5880, file: !205, line: 282, column: 6)
!5923 = !DILocation(line: 282, column: 6, scope: !5880)
!5924 = !DILocation(line: 283, column: 26, scope: !5922)
!5925 = !DILocation(line: 283, column: 3, scope: !5922)
!5926 = !DILocation(line: 285, column: 2, scope: !5880)
!5927 = !DILocation(line: 286, column: 1, scope: !5880)
!5928 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5525, file: !5525, line: 397, type: !5526, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5929)
!5929 = !{!5930, !5931}
!5930 = !DILocalVariable(name: "i", arg: 1, scope: !5928, file: !5525, line: 397, type: !106)
!5931 = !DILocalVariable(name: "v", arg: 2, scope: !5928, file: !5525, line: 397, type: !5528)
!5932 = !DILocation(line: 397, column: 30, scope: !5928)
!5933 = !DILocation(line: 397, column: 43, scope: !5928)
!5934 = !DILocation(line: 399, column: 2, scope: !5928)
!5935 = !DILocation(line: 399, column: 2, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5928, file: !5525, line: 399, column: 2)
!5937 = !DILocation(line: 400, column: 31, scope: !5928)
!5938 = !DILocation(line: 400, column: 2, scope: !5928)
!5939 = !DILocation(line: 401, column: 38, scope: !5928)
!5940 = !DILocation(line: 401, column: 41, scope: !5928)
!5941 = !DILocation(line: 401, column: 9, scope: !5928)
!5942 = !DILocation(line: 401, column: 2, scope: !5928)
!5943 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5561, file: !5561, line: 928, type: !5526, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5944)
!5944 = !{!5945, !5946}
!5945 = !DILocalVariable(name: "i", arg: 1, scope: !5943, file: !5561, line: 928, type: !106)
!5946 = !DILocalVariable(name: "v", arg: 2, scope: !5943, file: !5561, line: 928, type: !5528)
!5947 = !DILocation(line: 928, column: 34, scope: !5943)
!5948 = !DILocation(line: 928, column: 47, scope: !5943)
!5949 = !DILocation(line: 936, column: 31, scope: !5943)
!5950 = !DILocation(line: 936, column: 34, scope: !5943)
!5951 = !DILocation(line: 936, column: 9, scope: !5943)
!5952 = !DILocation(line: 936, column: 2, scope: !5943)
!5953 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5594, file: !5594, line: 101, type: !5526, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5954)
!5954 = !{!5955, !5956, !5957}
!5955 = !DILocalVariable(name: "i", arg: 1, scope: !5953, file: !5594, line: 101, type: !106)
!5956 = !DILocalVariable(name: "v", arg: 2, scope: !5953, file: !5594, line: 101, type: !5528)
!5957 = !DILocalVariable(name: "__ret", scope: !5958, file: !5594, line: 103, type: !106)
!5958 = distinct !DILexicalBlock(scope: !5953, file: !5594, line: 103, column: 9)
!5959 = !DILocation(line: 101, column: 54, scope: !5953)
!5960 = !DILocation(line: 101, column: 67, scope: !5953)
!5961 = !DILocation(line: 103, column: 9, scope: !5958)
!5962 = !{i64 2148800276, i64 2148800315, i64 2148800336, i64 2148800373, i64 2148800396, i64 2148800405}
!5963 = !DILocation(line: 103, column: 9, scope: !5953)
!5964 = !DILocation(line: 103, column: 2, scope: !5953)
!5965 = distinct !DISubprogram(name: "kmalloc_array", scope: !2, file: !2, line: 629, type: !5966, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !5968)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!233, !1234, !1234, !320}
!5968 = !{!5969, !5970, !5971, !5972}
!5969 = !DILocalVariable(name: "n", arg: 1, scope: !5965, file: !2, line: 629, type: !1234)
!5970 = !DILocalVariable(name: "size", arg: 2, scope: !5965, file: !2, line: 629, type: !1234)
!5971 = !DILocalVariable(name: "flags", arg: 3, scope: !5965, file: !2, line: 629, type: !320)
!5972 = !DILocalVariable(name: "bytes", scope: !5965, file: !2, line: 631, type: !1234)
!5973 = !DILocation(line: 629, column: 61, scope: !5965)
!5974 = !DILocation(line: 629, column: 71, scope: !5965)
!5975 = !DILocation(line: 629, column: 83, scope: !5965)
!5976 = !DILocation(line: 631, column: 2, scope: !5965)
!5977 = !DILocation(line: 631, column: 9, scope: !5965)
!5978 = !DILocation(line: 633, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 633, column: 6)
!5980 = !DILocation(line: 633, column: 6, scope: !5965)
!5981 = !DILocation(line: 634, column: 3, scope: !5979)
!5982 = !DILocation(line: 635, column: 27, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5965, file: !2, line: 635, column: 6)
!5984 = !DILocation(line: 635, column: 6, scope: !5983)
!5985 = !DILocation(line: 635, column: 30, scope: !5983)
!5986 = !DILocation(line: 635, column: 54, scope: !5983)
!5987 = !DILocation(line: 635, column: 33, scope: !5983)
!5988 = !DILocation(line: 635, column: 6, scope: !5965)
!5989 = !DILocation(line: 636, column: 18, scope: !5983)
!5990 = !DILocation(line: 636, column: 25, scope: !5983)
!5991 = !DILocation(line: 636, column: 10, scope: !5983)
!5992 = !DILocation(line: 636, column: 3, scope: !5983)
!5993 = !DILocation(line: 637, column: 19, scope: !5965)
!5994 = !DILocation(line: 637, column: 26, scope: !5965)
!5995 = !DILocation(line: 637, column: 9, scope: !5965)
!5996 = !DILocation(line: 637, column: 2, scope: !5965)
!5997 = !DILocation(line: 638, column: 1, scope: !5965)
!5998 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5999, file: !5999, line: 51, type: !6000, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6002)
!5999 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!308, !308}
!6002 = !{!6003}
!6003 = !DILocalVariable(name: "overflow", arg: 1, scope: !5998, file: !5999, line: 51, type: !308)
!6004 = !DILocation(line: 51, column: 60, scope: !5998)
!6005 = !DILocation(line: 53, column: 9, scope: !5998)
!6006 = !DILocation(line: 53, column: 2, scope: !5998)
!6007 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !6008, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6010)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!233, !1234, !320}
!6010 = !{!6011, !6012, !6013}
!6011 = !DILocalVariable(name: "size", arg: 1, scope: !6007, file: !2, line: 591, type: !1234)
!6012 = !DILocalVariable(name: "flags", arg: 2, scope: !6007, file: !2, line: 591, type: !320)
!6013 = !DILocalVariable(name: "index", scope: !6014, file: !2, line: 594, type: !12)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !2, line: 593, column: 42)
!6015 = distinct !DILexicalBlock(scope: !6007, file: !2, line: 593, column: 6)
!6016 = !DILocation(line: 591, column: 61, scope: !6007)
!6017 = !DILocation(line: 591, column: 73, scope: !6007)
!6018 = !DILocation(line: 593, column: 27, scope: !6015)
!6019 = !DILocation(line: 593, column: 6, scope: !6015)
!6020 = !DILocation(line: 593, column: 33, scope: !6015)
!6021 = !DILocation(line: 593, column: 36, scope: !6015)
!6022 = !DILocation(line: 593, column: 6, scope: !6007)
!6023 = !DILocation(line: 594, column: 3, scope: !6014)
!6024 = !DILocation(line: 594, column: 16, scope: !6014)
!6025 = !DILocation(line: 596, column: 7, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 596, column: 7)
!6027 = !DILocation(line: 596, column: 12, scope: !6026)
!6028 = !DILocation(line: 596, column: 7, scope: !6014)
!6029 = !DILocation(line: 597, column: 25, scope: !6026)
!6030 = !DILocation(line: 597, column: 31, scope: !6026)
!6031 = !DILocation(line: 597, column: 11, scope: !6026)
!6032 = !DILocation(line: 597, column: 4, scope: !6026)
!6033 = !DILocation(line: 599, column: 11, scope: !6014)
!6034 = !DILocation(line: 599, column: 9, scope: !6014)
!6035 = !DILocation(line: 601, column: 33, scope: !6014)
!6036 = !DILocation(line: 601, column: 40, scope: !6014)
!6037 = !DILocation(line: 601, column: 20, scope: !6014)
!6038 = !DILocation(line: 601, column: 5, scope: !6014)
!6039 = !DILocation(line: 601, column: 51, scope: !6014)
!6040 = !DILocation(line: 602, column: 5, scope: !6014)
!6041 = !DILocation(line: 602, column: 12, scope: !6014)
!6042 = !DILocation(line: 600, column: 10, scope: !6014)
!6043 = !DILocation(line: 600, column: 3, scope: !6014)
!6044 = !DILocation(line: 603, column: 2, scope: !6015)
!6045 = !DILocation(line: 604, column: 19, scope: !6007)
!6046 = !DILocation(line: 604, column: 25, scope: !6007)
!6047 = !DILocation(line: 604, column: 9, scope: !6007)
!6048 = !DILocation(line: 604, column: 2, scope: !6007)
!6049 = !DILocation(line: 605, column: 1, scope: !6007)
!6050 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6051 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !6053, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6055)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!12, !1234, !308}
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "size", arg: 1, scope: !6052, file: !2, line: 444, type: !1234)
!6057 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6052, file: !2, line: 445, type: !308)
!6058 = !DILocation(line: 444, column: 60, scope: !6052)
!6059 = !DILocation(line: 445, column: 16, scope: !6052)
!6060 = !DILocation(line: 447, column: 7, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 447, column: 6)
!6062 = !DILocation(line: 447, column: 6, scope: !6052)
!6063 = !DILocation(line: 448, column: 3, scope: !6061)
!6064 = !DILocation(line: 450, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 450, column: 6)
!6066 = !DILocation(line: 450, column: 11, scope: !6065)
!6067 = !DILocation(line: 450, column: 6, scope: !6052)
!6068 = !DILocation(line: 451, column: 3, scope: !6065)
!6069 = !DILocation(line: 453, column: 32, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 453, column: 6)
!6071 = !DILocation(line: 453, column: 37, scope: !6070)
!6072 = !DILocation(line: 453, column: 42, scope: !6070)
!6073 = !DILocation(line: 453, column: 45, scope: !6070)
!6074 = !DILocation(line: 453, column: 50, scope: !6070)
!6075 = !DILocation(line: 453, column: 6, scope: !6052)
!6076 = !DILocation(line: 454, column: 3, scope: !6070)
!6077 = !DILocation(line: 455, column: 32, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 455, column: 6)
!6079 = !DILocation(line: 455, column: 37, scope: !6078)
!6080 = !DILocation(line: 455, column: 43, scope: !6078)
!6081 = !DILocation(line: 455, column: 46, scope: !6078)
!6082 = !DILocation(line: 455, column: 51, scope: !6078)
!6083 = !DILocation(line: 455, column: 6, scope: !6052)
!6084 = !DILocation(line: 456, column: 3, scope: !6078)
!6085 = !DILocation(line: 457, column: 6, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 457, column: 6)
!6087 = !DILocation(line: 457, column: 11, scope: !6086)
!6088 = !DILocation(line: 457, column: 6, scope: !6052)
!6089 = !DILocation(line: 457, column: 26, scope: !6086)
!6090 = !DILocation(line: 458, column: 6, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 458, column: 6)
!6092 = !DILocation(line: 458, column: 11, scope: !6091)
!6093 = !DILocation(line: 458, column: 6, scope: !6052)
!6094 = !DILocation(line: 458, column: 26, scope: !6091)
!6095 = !DILocation(line: 459, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 459, column: 6)
!6097 = !DILocation(line: 459, column: 11, scope: !6096)
!6098 = !DILocation(line: 459, column: 6, scope: !6052)
!6099 = !DILocation(line: 459, column: 26, scope: !6096)
!6100 = !DILocation(line: 460, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 460, column: 6)
!6102 = !DILocation(line: 460, column: 11, scope: !6101)
!6103 = !DILocation(line: 460, column: 6, scope: !6052)
!6104 = !DILocation(line: 460, column: 26, scope: !6101)
!6105 = !DILocation(line: 461, column: 6, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 461, column: 6)
!6107 = !DILocation(line: 461, column: 11, scope: !6106)
!6108 = !DILocation(line: 461, column: 6, scope: !6052)
!6109 = !DILocation(line: 461, column: 26, scope: !6106)
!6110 = !DILocation(line: 462, column: 6, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 462, column: 6)
!6112 = !DILocation(line: 462, column: 11, scope: !6111)
!6113 = !DILocation(line: 462, column: 6, scope: !6052)
!6114 = !DILocation(line: 462, column: 26, scope: !6111)
!6115 = !DILocation(line: 463, column: 6, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 463, column: 6)
!6117 = !DILocation(line: 463, column: 11, scope: !6116)
!6118 = !DILocation(line: 463, column: 6, scope: !6052)
!6119 = !DILocation(line: 463, column: 26, scope: !6116)
!6120 = !DILocation(line: 464, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 464, column: 6)
!6122 = !DILocation(line: 464, column: 11, scope: !6121)
!6123 = !DILocation(line: 464, column: 6, scope: !6052)
!6124 = !DILocation(line: 464, column: 26, scope: !6121)
!6125 = !DILocation(line: 465, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 465, column: 6)
!6127 = !DILocation(line: 465, column: 11, scope: !6126)
!6128 = !DILocation(line: 465, column: 6, scope: !6052)
!6129 = !DILocation(line: 465, column: 26, scope: !6126)
!6130 = !DILocation(line: 466, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 466, column: 6)
!6132 = !DILocation(line: 466, column: 11, scope: !6131)
!6133 = !DILocation(line: 466, column: 6, scope: !6052)
!6134 = !DILocation(line: 466, column: 26, scope: !6131)
!6135 = !DILocation(line: 467, column: 6, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 467, column: 6)
!6137 = !DILocation(line: 467, column: 11, scope: !6136)
!6138 = !DILocation(line: 467, column: 6, scope: !6052)
!6139 = !DILocation(line: 467, column: 26, scope: !6136)
!6140 = !DILocation(line: 468, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 468, column: 6)
!6142 = !DILocation(line: 468, column: 11, scope: !6141)
!6143 = !DILocation(line: 468, column: 6, scope: !6052)
!6144 = !DILocation(line: 468, column: 26, scope: !6141)
!6145 = !DILocation(line: 469, column: 6, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 469, column: 6)
!6147 = !DILocation(line: 469, column: 11, scope: !6146)
!6148 = !DILocation(line: 469, column: 6, scope: !6052)
!6149 = !DILocation(line: 469, column: 26, scope: !6146)
!6150 = !DILocation(line: 470, column: 6, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 470, column: 6)
!6152 = !DILocation(line: 470, column: 11, scope: !6151)
!6153 = !DILocation(line: 470, column: 6, scope: !6052)
!6154 = !DILocation(line: 470, column: 26, scope: !6151)
!6155 = !DILocation(line: 471, column: 6, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 471, column: 6)
!6157 = !DILocation(line: 471, column: 11, scope: !6156)
!6158 = !DILocation(line: 471, column: 6, scope: !6052)
!6159 = !DILocation(line: 471, column: 26, scope: !6156)
!6160 = !DILocation(line: 472, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 472, column: 6)
!6162 = !DILocation(line: 472, column: 11, scope: !6161)
!6163 = !DILocation(line: 472, column: 6, scope: !6052)
!6164 = !DILocation(line: 472, column: 26, scope: !6161)
!6165 = !DILocation(line: 473, column: 6, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 473, column: 6)
!6167 = !DILocation(line: 473, column: 11, scope: !6166)
!6168 = !DILocation(line: 473, column: 6, scope: !6052)
!6169 = !DILocation(line: 473, column: 26, scope: !6166)
!6170 = !DILocation(line: 474, column: 6, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 474, column: 6)
!6172 = !DILocation(line: 474, column: 11, scope: !6171)
!6173 = !DILocation(line: 474, column: 6, scope: !6052)
!6174 = !DILocation(line: 474, column: 27, scope: !6171)
!6175 = !DILocation(line: 475, column: 6, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 475, column: 6)
!6177 = !DILocation(line: 475, column: 11, scope: !6176)
!6178 = !DILocation(line: 475, column: 6, scope: !6052)
!6179 = !DILocation(line: 475, column: 32, scope: !6176)
!6180 = !DILocation(line: 477, column: 50, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6052, file: !2, line: 477, column: 6)
!6182 = !DILocation(line: 477, column: 6, scope: !6052)
!6183 = !DILocation(line: 478, column: 3, scope: !6181)
!6184 = !DILocation(line: 478, column: 3, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !2, line: 478, column: 3)
!6186 = distinct !DILexicalBlock(scope: !6181, file: !2, line: 478, column: 3)
!6187 = !{i32 -2141475386}
!6188 = !DILocation(line: 478, column: 3, scope: !6186)
!6189 = !DILocation(line: 480, column: 3, scope: !6181)
!6190 = !DILocation(line: 480, column: 3, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6181, file: !2, line: 480, column: 3)
!6192 = !DILocation(line: 480, column: 3, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6191, file: !2, line: 480, column: 3)
!6194 = !DILocation(line: 480, column: 3, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6191, file: !2, line: 480, column: 3)
!6196 = !{i64 2153492113, i64 2153492142, i64 2153492188, i64 2153492246, i64 2153492300, i64 2153492354, i64 2153492409, i64 2153492440}
!6197 = !DILocation(line: 483, column: 2, scope: !6052)
!6198 = !DILocation(line: 484, column: 1, scope: !6052)
!6199 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !6200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6200 = !DISubroutineType(types: !6201)
!6201 = !{!233, !292, !320, !1234}
!6202 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !6203, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6205)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!212, !320, !426}
!6205 = !{!6206, !6207}
!6206 = !DILocalVariable(name: "flags", arg: 1, scope: !6202, file: !2, line: 401, type: !320)
!6207 = !DILocalVariable(name: "caller", arg: 2, scope: !6202, file: !2, line: 401, type: !426)
!6208 = !DILocation(line: 401, column: 67, scope: !6202)
!6209 = !DILocation(line: 401, column: 88, scope: !6202)
!6210 = !DILocation(line: 407, column: 6, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6202, file: !2, line: 407, column: 6)
!6212 = !DILocation(line: 407, column: 6, scope: !6202)
!6213 = !DILocation(line: 413, column: 3, scope: !6211)
!6214 = !DILocation(line: 423, column: 38, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6202, file: !2, line: 423, column: 6)
!6216 = !DILocation(line: 423, column: 44, scope: !6215)
!6217 = !DILocation(line: 423, column: 6, scope: !6202)
!6218 = !DILocation(line: 424, column: 3, scope: !6215)
!6219 = !DILocation(line: 426, column: 3, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6202, file: !2, line: 425, column: 6)
!6221 = !DILocation(line: 429, column: 1, scope: !6202)
!6222 = !DISubprogram(name: "__compiletime_assert_255", scope: !2, file: !2, line: 478, type: !2570, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6223 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !1054, file: !1054, line: 52, type: !6224, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !6228)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!308, !6226}
!6226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6227, size: 64)
!6227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!6228 = !{!6229}
!6229 = !DILocalVariable(name: "h", arg: 1, scope: !6223, file: !1054, line: 52, type: !6226)
!6230 = !DILocation(line: 52, column: 67, scope: !6223)
!6231 = !DILocation(line: 54, column: 10, scope: !6223)
!6232 = !DILocation(line: 54, column: 13, scope: !6223)
!6233 = !DILocation(line: 54, column: 9, scope: !6223)
!6234 = !DILocation(line: 54, column: 2, scope: !6223)
