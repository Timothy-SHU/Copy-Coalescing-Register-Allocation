; ModuleID = 'fs/fhandle.c'
source_filename = "fs/fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.32 }
%union.anon.32 = type { %struct.anon.33, [16 x i8] }
%struct.anon.33 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.path = type { ptr, ptr }
%struct.file_handle = type { i32, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.25, %struct.list_head, %struct.list_head, %union.anon.26 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.21, ptr }
%union.anon.21 = type { i64 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%union.anon.25 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.26 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.27, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.28, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.27 = type { %struct.callback_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.fd = type { ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.file = type { %union.anon.29, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.29 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.30, %struct.qspinlock }
%union.anon.30 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !13
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_name_to_handle_at(ptr noundef %regs) #0 align 16 !dbg !6070 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6077
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6077
  %1 = load i64, ptr %di, align 8, !dbg !6077
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6077
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6077
  %3 = load i64, ptr %si, align 8, !dbg !6077
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6077
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6077
  %5 = load i64, ptr %dx, align 8, !dbg !6077
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6077
  %r10 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 7, !dbg !6077
  %7 = load i64, ptr %r10, align 8, !dbg !6077
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6077
  %r8 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 9, !dbg !6077
  %9 = load i64, ptr %r8, align 8, !dbg !6077
  %call = call i64 @__se_sys_name_to_handle_at(i64 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #18, !dbg !6077
  ret i64 %call, !dbg !6077
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_name_to_handle_at(i64 noundef %dfd, i64 noundef %name, i64 noundef %handle, i64 noundef %mnt_id, i64 noundef %flag) #0 align 16 !dbg !6078 {
entry:
  %dfd.addr = alloca i64, align 8
  %name.addr = alloca i64, align 8
  %handle.addr = alloca i64, align 8
  %mnt_id.addr = alloca i64, align 8
  %flag.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %dfd, ptr %dfd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6082, metadata !DIExpression()), !dbg !6088
  store i64 %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6083, metadata !DIExpression()), !dbg !6088
  store i64 %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6084, metadata !DIExpression()), !dbg !6088
  store i64 %mnt_id, ptr %mnt_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt_id.addr, metadata !6085, metadata !DIExpression()), !dbg !6088
  store i64 %flag, ptr %flag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6086, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6088
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6087, metadata !DIExpression()), !dbg !6088
  %0 = load i64, ptr %dfd.addr, align 8, !dbg !6088
  %conv = trunc i64 %0 to i32, !dbg !6088
  %1 = load i64, ptr %name.addr, align 8, !dbg !6088
  %2 = inttoptr i64 %1 to ptr, !dbg !6088
  %3 = load i64, ptr %handle.addr, align 8, !dbg !6088
  %4 = inttoptr i64 %3 to ptr, !dbg !6088
  %5 = load i64, ptr %mnt_id.addr, align 8, !dbg !6088
  %6 = inttoptr i64 %5 to ptr, !dbg !6088
  %7 = load i64, ptr %flag.addr, align 8, !dbg !6088
  %conv1 = trunc i64 %7 to i32, !dbg !6088
  %call = call i64 @__do_sys_name_to_handle_at(i32 noundef %conv, ptr noundef %2, ptr noundef %4, ptr noundef %6, i32 noundef %conv1) #18, !dbg !6088
  store i64 %call, ptr %ret, align 8, !dbg !6088
  br label %do.body, !dbg !6088

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6089

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6089

do.end:                                           ; preds = %do.cond
  %8 = load i64, ptr %ret, align 8, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6088
  ret i64 %8, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_name_to_handle_at(ptr noundef %regs) #0 align 16 !dbg !6091 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6094
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6094
  %1 = load i64, ptr %bx, align 8, !dbg !6094
  %conv = trunc i64 %1 to i32, !dbg !6094
  %conv1 = zext i32 %conv to i64, !dbg !6094
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6094
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6094
  %3 = load i64, ptr %cx, align 8, !dbg !6094
  %conv2 = trunc i64 %3 to i32, !dbg !6094
  %conv3 = zext i32 %conv2 to i64, !dbg !6094
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6094
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6094
  %5 = load i64, ptr %dx, align 8, !dbg !6094
  %conv4 = trunc i64 %5 to i32, !dbg !6094
  %conv5 = zext i32 %conv4 to i64, !dbg !6094
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !6094
  %si = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 13, !dbg !6094
  %7 = load i64, ptr %si, align 8, !dbg !6094
  %conv6 = trunc i64 %7 to i32, !dbg !6094
  %conv7 = zext i32 %conv6 to i64, !dbg !6094
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !6094
  %di = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 14, !dbg !6094
  %9 = load i64, ptr %di, align 8, !dbg !6094
  %conv8 = trunc i64 %9 to i32, !dbg !6094
  %conv9 = zext i32 %conv8 to i64, !dbg !6094
  %call = call i64 @__se_sys_name_to_handle_at(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5, i64 noundef %conv7, i64 noundef %conv9) #18, !dbg !6094
  ret i64 %call, !dbg !6094
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_open_by_handle_at(ptr noundef %regs) #0 align 16 !dbg !6095 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6098
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6098
  %1 = load i64, ptr %di, align 8, !dbg !6098
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6098
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6098
  %3 = load i64, ptr %si, align 8, !dbg !6098
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6098
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6098
  %5 = load i64, ptr %dx, align 8, !dbg !6098
  %call = call i64 @__se_sys_open_by_handle_at(i64 noundef %1, i64 noundef %3, i64 noundef %5) #18, !dbg !6098
  ret i64 %call, !dbg !6098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_open_by_handle_at(i64 noundef %mountdirfd, i64 noundef %handle, i64 noundef %flags) #0 align 16 !dbg !6099 {
entry:
  %mountdirfd.addr = alloca i64, align 8
  %handle.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %mountdirfd, ptr %mountdirfd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6103, metadata !DIExpression()), !dbg !6107
  store i64 %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6104, metadata !DIExpression()), !dbg !6107
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6105, metadata !DIExpression()), !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6106, metadata !DIExpression()), !dbg !6107
  %0 = load i64, ptr %mountdirfd.addr, align 8, !dbg !6107
  %conv = trunc i64 %0 to i32, !dbg !6107
  %1 = load i64, ptr %handle.addr, align 8, !dbg !6107
  %2 = inttoptr i64 %1 to ptr, !dbg !6107
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6107
  %conv1 = trunc i64 %3 to i32, !dbg !6107
  %call = call i64 @__do_sys_open_by_handle_at(i32 noundef %conv, ptr noundef %2, i32 noundef %conv1) #18, !dbg !6107
  store i64 %call, ptr %ret, align 8, !dbg !6107
  br label %do.body, !dbg !6107

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6108

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6108

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6107
  ret i64 %4, !dbg !6107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_open_by_handle_at(ptr noundef %regs) #0 align 16 !dbg !6110 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6113
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6113
  %1 = load i64, ptr %bx, align 8, !dbg !6113
  %conv = trunc i64 %1 to i32, !dbg !6113
  %conv1 = zext i32 %conv to i64, !dbg !6113
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6113
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6113
  %3 = load i64, ptr %cx, align 8, !dbg !6113
  %conv2 = trunc i64 %3 to i32, !dbg !6113
  %conv3 = zext i32 %conv2 to i64, !dbg !6113
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6113
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6113
  %5 = load i64, ptr %dx, align 8, !dbg !6113
  %conv4 = trunc i64 %5 to i32, !dbg !6113
  %conv5 = zext i32 %conv4 to i64, !dbg !6113
  %call = call i64 @__se_sys_open_by_handle_at(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #18, !dbg !6113
  ret i64 %call, !dbg !6113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_open_by_handle_at(ptr noundef %regs) #0 align 16 !dbg !6114 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6117
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6117
  %1 = load i64, ptr %bx, align 8, !dbg !6117
  %conv = trunc i64 %1 to i32, !dbg !6117
  %conv1 = zext i32 %conv to i64, !dbg !6117
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6117
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6117
  %3 = load i64, ptr %cx, align 8, !dbg !6117
  %conv2 = trunc i64 %3 to i32, !dbg !6117
  %conv3 = zext i32 %conv2 to i64, !dbg !6117
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6117
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6117
  %5 = load i64, ptr %dx, align 8, !dbg !6117
  %conv4 = trunc i64 %5 to i32, !dbg !6117
  %conv5 = zext i32 %conv4 to i64, !dbg !6117
  %call = call i64 @__se_compat_sys_open_by_handle_at(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #18, !dbg !6117
  ret i64 %call, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_open_by_handle_at(i64 noundef %mountdirfd, i64 noundef %handle, i64 noundef %flags) #0 align 16 !dbg !6118 {
entry:
  %mountdirfd.addr = alloca i64, align 8
  %handle.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store i64 %mountdirfd, ptr %mountdirfd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6120, metadata !DIExpression()), !dbg !6123
  store i64 %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6121, metadata !DIExpression()), !dbg !6123
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  %0 = load i64, ptr %mountdirfd.addr, align 8, !dbg !6123
  %conv = trunc i64 %0 to i32, !dbg !6123
  %1 = load i64, ptr %handle.addr, align 8, !dbg !6123
  %2 = inttoptr i64 %1 to ptr, !dbg !6123
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6123
  %conv1 = trunc i64 %3 to i32, !dbg !6123
  %call = call i64 @__do_compat_sys_open_by_handle_at(i32 noundef %conv, ptr noundef %2, i32 noundef %conv1) #18, !dbg !6123
  ret i64 %call, !dbg !6123
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_name_to_handle_at(i32 noundef %dfd, ptr noundef %name, ptr noundef %handle, ptr noundef %mnt_id, i32 noundef %flag) #3 align 16 !dbg !6124 {
entry:
  %retval = alloca i64, align 8
  %dfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %mnt_id.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %path = alloca %struct.path, align 8
  %lookup_flags = alloca i32, align 4
  %fh_flags = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dfd, ptr %dfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6128, metadata !DIExpression()), !dbg !6137
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6129, metadata !DIExpression()), !dbg !6137
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6130, metadata !DIExpression()), !dbg !6137
  store ptr %mnt_id, ptr %mnt_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt_id.addr, metadata !6131, metadata !DIExpression()), !dbg !6137
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6132, metadata !DIExpression()), !dbg !6137
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #19, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6133, metadata !DIExpression()), !dbg !6139
  call void @llvm.lifetime.start.p0(i64 4, ptr %lookup_flags) #19, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %lookup_flags, metadata !6134, metadata !DIExpression()), !dbg !6141
  call void @llvm.lifetime.start.p0(i64 4, ptr %fh_flags) #19, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %fh_flags, metadata !6135, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #19, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6136, metadata !DIExpression()), !dbg !6145
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6146
  %and = and i32 %0, -5633, !dbg !6148
  %tobool = icmp ne i32 %and, 0, !dbg !6148
  br i1 %tobool, label %if.then, label %if.end, !dbg !6149

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6150

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6151
  %and1 = and i32 %1, 1024, !dbg !6152
  %tobool2 = icmp ne i32 %and1, 0, !dbg !6153
  %2 = zext i1 %tobool2 to i64, !dbg !6153
  %cond = select i1 %tobool2, i32 1, i32 0, !dbg !6153
  store i32 %cond, ptr %lookup_flags, align 4, !dbg !6154
  %3 = load i32, ptr %flag.addr, align 4, !dbg !6155
  %and3 = and i32 %3, 512, !dbg !6156
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6157
  %4 = zext i1 %tobool4 to i64, !dbg !6157
  %cond5 = select i1 %tobool4, i32 2, i32 0, !dbg !6157
  store i32 %cond5, ptr %fh_flags, align 4, !dbg !6158
  %5 = load i32, ptr %flag.addr, align 4, !dbg !6159
  %and6 = and i32 %5, 4096, !dbg !6161
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6161
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6162

if.then8:                                         ; preds = %if.end
  %6 = load i32, ptr %lookup_flags, align 4, !dbg !6163
  %or = or i32 %6, 16384, !dbg !6163
  store i32 %or, ptr %lookup_flags, align 4, !dbg !6163
  br label %if.end9, !dbg !6164

if.end9:                                          ; preds = %if.then8, %if.end
  %7 = load i32, ptr %dfd.addr, align 4, !dbg !6165
  %8 = load ptr, ptr %name.addr, align 8, !dbg !6166
  %9 = load i32, ptr %lookup_flags, align 4, !dbg !6167
  %call = call i32 @user_path_at(i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %path) #18, !dbg !6168
  store i32 %call, ptr %err, align 4, !dbg !6169
  %10 = load i32, ptr %err, align 4, !dbg !6170
  %tobool10 = icmp ne i32 %10, 0, !dbg !6170
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !6172

if.then11:                                        ; preds = %if.end9
  %11 = load ptr, ptr %handle.addr, align 8, !dbg !6173
  %12 = load ptr, ptr %mnt_id.addr, align 8, !dbg !6175
  %13 = load i32, ptr %fh_flags, align 4, !dbg !6176
  %call12 = call i64 @do_sys_name_to_handle(ptr noundef %path, ptr noundef %11, ptr noundef %12, i32 noundef %13) #18, !dbg !6177
  %conv = trunc i64 %call12 to i32, !dbg !6177
  store i32 %conv, ptr %err, align 4, !dbg !6178
  call void @path_put(ptr noundef %path) #18, !dbg !6179
  br label %if.end13, !dbg !6180

if.end13:                                         ; preds = %if.then11, %if.end9
  %14 = load i32, ptr %err, align 4, !dbg !6181
  %conv14 = sext i32 %14 to i64, !dbg !6181
  store i64 %conv14, ptr %retval, align 8, !dbg !6182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6182

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #19, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 4, ptr %fh_flags) #19, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 4, ptr %lookup_flags) #19, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #19, !dbg !6183
  %15 = load i64, ptr %retval, align 8, !dbg !6183
  ret i64 %15, !dbg !6183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_path_at(i32 noundef %dfd, ptr noundef %name, i32 noundef %flags, ptr noundef %path) #3 align 16 !dbg !6184 {
entry:
  %dfd.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  store i32 %dfd, ptr %dfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !6189, metadata !DIExpression()), !dbg !6193
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6190, metadata !DIExpression()), !dbg !6194
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6191, metadata !DIExpression()), !dbg !6195
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6192, metadata !DIExpression()), !dbg !6196
  %0 = load i32, ptr %dfd.addr, align 4, !dbg !6197
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6198
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6199
  %3 = load ptr, ptr %path.addr, align 8, !dbg !6200
  %call = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null) #18, !dbg !6201
  ret i32 %call, !dbg !6202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_sys_name_to_handle(ptr noundef %path, ptr noundef %ufh, ptr noundef %mnt_id, i32 noundef %fh_flags) #0 align 16 !dbg !6203 {
entry:
  %retval = alloca i64, align 8
  %path.addr = alloca ptr, align 8
  %ufh.addr = alloca ptr, align 8
  %mnt_id.addr = alloca ptr, align 8
  %fh_flags.addr = alloca i32, align 4
  %retval1 = alloca i64, align 8
  %f_handle = alloca %struct.file_handle, align 4
  %handle_dwords = alloca i32, align 4
  %handle_bytes = alloca i32, align 4
  %handle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp51 = alloca i64, align 8
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6207, metadata !DIExpression()), !dbg !6224
  store ptr %ufh, ptr %ufh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufh.addr, metadata !6208, metadata !DIExpression()), !dbg !6225
  store ptr %mnt_id, ptr %mnt_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt_id.addr, metadata !6209, metadata !DIExpression()), !dbg !6226
  store i32 %fh_flags, ptr %fh_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fh_flags.addr, metadata !6210, metadata !DIExpression()), !dbg !6227
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #19, !dbg !6228
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6211, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_handle) #19, !dbg !6230
  call void @llvm.dbg.declare(metadata ptr %f_handle, metadata !6212, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 4, ptr %handle_dwords) #19, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %handle_dwords, metadata !6213, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 4, ptr %handle_bytes) #19, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %handle_bytes, metadata !6214, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #19, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6215, metadata !DIExpression()), !dbg !6236
  store ptr null, ptr %handle, align 8, !dbg !6236
  %0 = load ptr, ptr %path.addr, align 8, !dbg !6237
  %dentry = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1, !dbg !6239
  %1 = load ptr, ptr %dentry, align 8, !dbg !6239
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9, !dbg !6240
  %2 = load ptr, ptr %d_sb, align 8, !dbg !6240
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 9, !dbg !6241
  %3 = load ptr, ptr %s_export_op, align 8, !dbg !6241
  %tobool = icmp ne ptr %3, null, !dbg !6237
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6242

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %fh_flags.addr, align 4, !dbg !6243
  %and = and i32 %4, 2, !dbg !6244
  %tobool2 = icmp ne i32 %and, 0, !dbg !6244
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !6245

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %path.addr, align 8, !dbg !6246
  %dentry3 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1, !dbg !6247
  %6 = load ptr, ptr %dentry3, align 8, !dbg !6247
  %d_sb4 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9, !dbg !6248
  %7 = load ptr, ptr %d_sb4, align 8, !dbg !6248
  %s_export_op5 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 9, !dbg !6249
  %8 = load ptr, ptr %s_export_op5, align 8, !dbg !6249
  %fh_to_dentry = getelementptr inbounds %struct.export_operations, ptr %8, i32 0, i32 1, !dbg !6250
  %9 = load ptr, ptr %fh_to_dentry, align 8, !dbg !6250
  %tobool6 = icmp ne ptr %9, null, !dbg !6246
  br i1 %tobool6, label %if.end, label %if.then, !dbg !6251

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 -95, ptr %retval, align 8, !dbg !6252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6252

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load ptr, ptr %ufh.addr, align 8, !dbg !6253
  %call = call i64 @copy_from_user(ptr noundef %f_handle, ptr noundef %10, i64 noundef 8) #18, !dbg !6255
  %tobool7 = icmp ne i64 %call, 0, !dbg !6255
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6256

if.then8:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !6257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6257

if.end9:                                          ; preds = %if.end
  %handle_bytes10 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6258
  %11 = load i32, ptr %handle_bytes10, align 4, !dbg !6258
  %cmp = icmp ugt i32 %11, 128, !dbg !6260
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !6261

if.then11:                                        ; preds = %if.end9
  store i64 -22, ptr %retval, align 8, !dbg !6262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6262

if.end12:                                         ; preds = %if.end9
  %handle_bytes13 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6263
  %12 = load i32, ptr %handle_bytes13, align 4, !dbg !6263
  %conv = zext i32 %12 to i64, !dbg !6263
  %call14 = call i64 @size_mul(i64 noundef %conv, i64 noundef 1) #18, !dbg !6263
  %call15 = call i64 @size_add(i64 noundef 8, i64 noundef %call14) #18, !dbg !6263
  %call16 = call noalias ptr @kzalloc(i64 noundef %call15, i32 noundef 3264) #20, !dbg !6264
  store ptr %call16, ptr %handle, align 8, !dbg !6265
  %13 = load ptr, ptr %handle, align 8, !dbg !6266
  %tobool17 = icmp ne ptr %13, null, !dbg !6266
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6268

if.then18:                                        ; preds = %if.end12
  store i64 -12, ptr %retval, align 8, !dbg !6269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6269

if.end19:                                         ; preds = %if.end12
  %handle_bytes20 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6270
  %14 = load i32, ptr %handle_bytes20, align 4, !dbg !6270
  %shr = lshr i32 %14, 2, !dbg !6271
  store i32 %shr, ptr %handle_dwords, align 4, !dbg !6272
  %15 = load ptr, ptr %path.addr, align 8, !dbg !6273
  %dentry21 = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1, !dbg !6274
  %16 = load ptr, ptr %dentry21, align 8, !dbg !6274
  %17 = load ptr, ptr %handle, align 8, !dbg !6275
  %f_handle22 = getelementptr inbounds %struct.file_handle, ptr %17, i32 0, i32 2, !dbg !6276
  %arraydecay = getelementptr inbounds [0 x i8], ptr %f_handle22, i64 0, i64 0, !dbg !6275
  %18 = load i32, ptr %fh_flags.addr, align 4, !dbg !6277
  %call23 = call i32 @exportfs_encode_fh(ptr noundef %16, ptr noundef %arraydecay, ptr noundef %handle_dwords, i32 noundef %18) #18, !dbg !6278
  %conv24 = sext i32 %call23 to i64, !dbg !6278
  store i64 %conv24, ptr %retval1, align 8, !dbg !6279
  %19 = load i64, ptr %retval1, align 8, !dbg !6280
  %conv25 = trunc i64 %19 to i32, !dbg !6280
  %20 = load ptr, ptr %handle, align 8, !dbg !6281
  %handle_type = getelementptr inbounds %struct.file_handle, ptr %20, i32 0, i32 1, !dbg !6282
  store i32 %conv25, ptr %handle_type, align 4, !dbg !6283
  %21 = load i32, ptr %handle_dwords, align 4, !dbg !6284
  %conv26 = sext i32 %21 to i64, !dbg !6284
  %mul = mul i64 %conv26, 4, !dbg !6285
  %conv27 = trunc i64 %mul to i32, !dbg !6284
  store i32 %conv27, ptr %handle_bytes, align 4, !dbg !6286
  %22 = load i32, ptr %handle_bytes, align 4, !dbg !6287
  %23 = load ptr, ptr %handle, align 8, !dbg !6288
  %handle_bytes28 = getelementptr inbounds %struct.file_handle, ptr %23, i32 0, i32 0, !dbg !6289
  store i32 %22, ptr %handle_bytes28, align 4, !dbg !6290
  %24 = load ptr, ptr %handle, align 8, !dbg !6291
  %handle_bytes29 = getelementptr inbounds %struct.file_handle, ptr %24, i32 0, i32 0, !dbg !6293
  %25 = load i32, ptr %handle_bytes29, align 4, !dbg !6293
  %handle_bytes30 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6294
  %26 = load i32, ptr %handle_bytes30, align 4, !dbg !6294
  %cmp31 = icmp ugt i32 %25, %26, !dbg !6295
  br i1 %cmp31, label %if.then39, label %lor.lhs.false33, !dbg !6296

lor.lhs.false33:                                  ; preds = %if.end19
  %27 = load i64, ptr %retval1, align 8, !dbg !6297
  %cmp34 = icmp eq i64 %27, 255, !dbg !6298
  br i1 %cmp34, label %if.then39, label %lor.lhs.false36, !dbg !6299

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %28 = load i64, ptr %retval1, align 8, !dbg !6300
  %cmp37 = icmp slt i64 %28, 0, !dbg !6301
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !6302

if.then39:                                        ; preds = %lor.lhs.false36, %lor.lhs.false33, %if.end19
  %29 = load i64, ptr %retval1, align 8, !dbg !6303
  %cmp40 = icmp eq i64 %29, 255, !dbg !6306
  br i1 %cmp40, label %if.then45, label %lor.lhs.false42, !dbg !6307

lor.lhs.false42:                                  ; preds = %if.then39
  %30 = load i64, ptr %retval1, align 8, !dbg !6308
  %cmp43 = icmp eq i64 %30, -28, !dbg !6309
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !6310

if.then45:                                        ; preds = %lor.lhs.false42, %if.then39
  store i64 -75, ptr %retval1, align 8, !dbg !6311
  br label %if.end46, !dbg !6312

if.end46:                                         ; preds = %if.then45, %lor.lhs.false42
  store i32 0, ptr %handle_bytes, align 4, !dbg !6313
  br label %if.end47, !dbg !6314

if.else:                                          ; preds = %lor.lhs.false36
  store i64 0, ptr %retval1, align 8, !dbg !6315
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end46
  call void @might_fault() #18, !dbg !6316
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6216, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6220, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6221, metadata !DIExpression()), !dbg !6317
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6222, metadata !DIExpression()), !dbg !6317
  %31 = load ptr, ptr %path.addr, align 8, !dbg !6317
  %mnt = getelementptr inbounds %struct.path, ptr %31, i32 0, i32 0, !dbg !6317
  %32 = load ptr, ptr %mnt, align 8, !dbg !6317
  %call48 = call ptr @real_mount(ptr noundef %32) #18, !dbg !6317
  %mnt_id49 = getelementptr inbounds %struct.mount, ptr %call48, i32 0, i32 22, !dbg !6317
  %33 = load i32, ptr %mnt_id49, align 4, !dbg !6317
  store i32 %33, ptr %__x, align 4, !dbg !6317
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6223, metadata !DIExpression()), !dbg !6317
  %34 = load ptr, ptr %mnt_id.addr, align 8, !dbg !6317
  store ptr %34, ptr %__ptr, align 8, !dbg !6317
  %35 = load ptr, ptr %__ptr, align 8, !dbg !6317
  store ptr %35, ptr %__ptr_pu, align 8, !dbg !6317
  %36 = load i32, ptr %__x, align 4, !dbg !6317
  store i32 %36, ptr %__val_pu, align 4, !dbg !6317
  %37 = call i64 @llvm.read_register.i64(metadata !6060), !dbg !6317
  %38 = load ptr, ptr %__ptr_pu, align 8, !dbg !6317
  %39 = load i32, ptr %__val_pu, align 4, !dbg !6317
  %40 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %38, i32 %39, i64 4, i64 %37) #19, !dbg !6317, !srcloc !6318
  %asmresult = extractvalue { ptr, i64 } %40, 0, !dbg !6317
  %asmresult50 = extractvalue { ptr, i64 } %40, 1, !dbg !6317
  %41 = ptrtoint ptr %asmresult to i64, !dbg !6317
  %42 = trunc i64 %41 to i32, !dbg !6317
  store i32 %42, ptr %__ret_pu, align 4, !dbg !6317
  call void @llvm.write_register.i64(metadata !6060, i64 %asmresult50), !dbg !6317
  %43 = load ptr, ptr %__ptr, align 8, !dbg !6319
  call void @kmsan_copy_to_user(ptr noundef %43, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #18, !dbg !6319
  %44 = load i32, ptr %__ret_pu, align 4, !dbg !6317
  %conv52 = sext i32 %44 to i64, !dbg !6317
  %expval = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !6317
  store i64 %expval, ptr %tmp51, align 8, !dbg !6317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !6316
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !6316
  %45 = load i64, ptr %tmp51, align 8, !dbg !6317
  store i64 %45, ptr %tmp, align 8, !dbg !6316
  %46 = load i64, ptr %tmp, align 8, !dbg !6316
  %tobool53 = icmp ne i64 %46, 0, !dbg !6321
  br i1 %tobool53, label %if.then60, label %lor.lhs.false54, !dbg !6322

lor.lhs.false54:                                  ; preds = %if.end47
  %47 = load ptr, ptr %ufh.addr, align 8, !dbg !6323
  %48 = load ptr, ptr %handle, align 8, !dbg !6324
  %49 = load i32, ptr %handle_bytes, align 4, !dbg !6325
  %conv55 = sext i32 %49 to i64, !dbg !6325
  %call56 = call i64 @size_mul(i64 noundef %conv55, i64 noundef 1) #18, !dbg !6325
  %call57 = call i64 @size_add(i64 noundef 8, i64 noundef %call56) #18, !dbg !6325
  %call58 = call i64 @copy_to_user(ptr noundef %47, ptr noundef %48, i64 noundef %call57) #18, !dbg !6326
  %tobool59 = icmp ne i64 %call58, 0, !dbg !6326
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !6327

if.then60:                                        ; preds = %lor.lhs.false54, %if.end47
  store i64 -14, ptr %retval1, align 8, !dbg !6328
  br label %if.end61, !dbg !6329

if.end61:                                         ; preds = %if.then60, %lor.lhs.false54
  %50 = load ptr, ptr %handle, align 8, !dbg !6330
  call void @kfree(ptr noundef %50) #18, !dbg !6331
  %51 = load i64, ptr %retval1, align 8, !dbg !6332
  store i64 %51, ptr %retval, align 8, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

cleanup:                                          ; preds = %if.end61, %if.then18, %if.then11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #19, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 4, ptr %handle_bytes) #19, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 4, ptr %handle_dwords) #19, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_handle) #19, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #19, !dbg !6334
  %52 = load i64, ptr %retval, align 8, !dbg !6334
  ret i64 %52, !dbg !6334
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6335 dso_local void @path_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6338 dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !6341 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6346, metadata !DIExpression()), !dbg !6349
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6347, metadata !DIExpression()), !dbg !6350
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6348, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6352
  %1 = load i64, ptr %n.addr, align 8, !dbg !6354
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !6355
  br i1 %call, label %if.then, label %if.end, !dbg !6356

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6357
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6358
  %4 = load i64, ptr %n.addr, align 8, !dbg !6359
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6360
  store i64 %call1, ptr %n.addr, align 8, !dbg !6361
  br label %if.end, !dbg !6362

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6363
  ret i64 %5, !dbg !6364
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6365 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6369, metadata !DIExpression()), !dbg !6371
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6370, metadata !DIExpression()), !dbg !6372
  %0 = load i64, ptr %size.addr, align 8, !dbg !6373
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6374
  %or = or i32 %1, 256, !dbg !6375
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !6376
  ret ptr %call, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #3 align 16 !dbg !6378 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !6383, metadata !DIExpression()), !dbg !6386
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !6384, metadata !DIExpression()), !dbg !6387
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6385, metadata !DIExpression()), !dbg !6389
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !6390
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !6390
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !6390
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6390
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6390
  store i64 %4, ptr %bytes, align 8, !dbg !6390
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6390
  br i1 %call, label %if.then, label %if.end, !dbg !6392

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6393

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6394
  store i64 %5, ptr %retval, align 8, !dbg !6395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6395

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !6396
  %6 = load i64, ptr %retval, align 8, !dbg !6396
  ret i64 %6, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #3 align 16 !dbg !6397 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !6399, metadata !DIExpression()), !dbg !6402
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !6400, metadata !DIExpression()), !dbg !6403
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6401, metadata !DIExpression()), !dbg !6405
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !6406
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !6406
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6406
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6406
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6406
  store i64 %4, ptr %bytes, align 8, !dbg !6406
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6406
  br i1 %call, label %if.then, label %if.end, !dbg !6408

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6409

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6410
  store i64 %5, ptr %retval, align 8, !dbg !6411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6411

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !6412
  %6 = load i64, ptr %retval, align 8, !dbg !6412
  ret i64 %6, !dbg !6412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6413 dso_local i32 @exportfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !6416 {
entry:
  ret void, !dbg !6418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @real_mount(ptr noundef %mnt) #3 align 16 !dbg !6419 {
entry:
  %mnt.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6423, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6424, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !6427
  store ptr %0, ptr %__mptr, align 8, !dbg !6427
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6427
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6427
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !6428
  %2 = load ptr, ptr %tmp, align 8, !dbg !6427
  ret ptr %2, !dbg !6429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !6430 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6435, metadata !DIExpression()), !dbg !6439
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6436, metadata !DIExpression()), !dbg !6440
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6437, metadata !DIExpression()), !dbg !6441
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6438, metadata !DIExpression()), !dbg !6442
  ret void, !dbg !6443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !6444 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6446, metadata !DIExpression()), !dbg !6449
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6447, metadata !DIExpression()), !dbg !6450
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6448, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6452
  %1 = load i64, ptr %n.addr, align 8, !dbg !6454
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #18, !dbg !6455
  br i1 %call, label %if.then, label %if.end, !dbg !6456

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6457
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6458
  %4 = load i64, ptr %n.addr, align 8, !dbg !6459
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6460
  store i64 %call1, ptr %n.addr, align 8, !dbg !6461
  br label %if.end, !dbg !6462

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6463
  ret i64 %5, !dbg !6464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6465 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6468 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6472, metadata !DIExpression()), !dbg !6482
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6473, metadata !DIExpression()), !dbg !6483
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6474, metadata !DIExpression()), !dbg !6484
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !6485
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6475, metadata !DIExpression()), !dbg !6486
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6487
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6488
  %conv = trunc i64 %1 to i32, !dbg !6488
  store i32 %conv, ptr %sz, align 4, !dbg !6486
  %2 = load i32, ptr %sz, align 4, !dbg !6489
  %cmp = icmp sge i32 %2, 0, !dbg !6489
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6489

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6489
  %conv2 = sext i32 %3 to i64, !dbg !6489
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6489
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6489
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6491
  %lnot = xor i1 %5, true, !dbg !6489
  %lnot5 = xor i1 %lnot, true, !dbg !6489
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6489
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6489
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6489
  %tobool = icmp ne i64 %expval, 0, !dbg !6489
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6492

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6493
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6496
  br i1 %7, label %if.else, label %if.then7, !dbg !6497

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6498
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6499
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !6500
  br label %if.end11, !dbg !6500

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6501, !range !6503, !noundef !350
  %tobool8 = trunc i8 %10 to i1, !dbg !6501
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6504

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !6505, !srcloc !6506
  br label %if.end, !dbg !6505

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !6507, !srcloc !6508
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6509

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6476, metadata !DIExpression()), !dbg !6510
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6510
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6510
  %lnot15 = xor i1 %cmp13, true, !dbg !6510
  %lnot17 = xor i1 %lnot15, true, !dbg !6510
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6510
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6510
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6511
  %tobool19 = icmp ne i32 %12, 0, !dbg !6511
  %lnot20 = xor i1 %tobool19, true, !dbg !6511
  %lnot22 = xor i1 %lnot20, true, !dbg !6511
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6511
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6511
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6511
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6511
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6510

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6511

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6512
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6479, metadata !DIExpression()), !dbg !6512
  store i32 2307, ptr %__flags, align 4, !dbg !6512
  br label %do.body28, !dbg !6512

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6513

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6513

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6512

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6515
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #19, !dbg !6515, !srcloc !6517
  br label %do.cond30, !dbg !6515

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6515

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6512

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6518

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6518

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6511
  br label %do.cond35, !dbg !6512

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6512

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6512

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6510
  %tobool38 = icmp ne i32 %14, 0, !dbg !6510
  %lnot39 = xor i1 %tobool38, true, !dbg !6510
  %lnot41 = xor i1 %lnot39, true, !dbg !6510
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6510
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6510
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6510
  store i64 %expval44, ptr %tmp, align 8, !dbg !6511
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6520
  %15 = load i64, ptr %tmp, align 8, !dbg !6510
  %tobool45 = icmp ne i64 %15, 0, !dbg !6520
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6521

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6522

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6523
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6524
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6525, !range !6503, !noundef !350
  %tobool48 = trunc i8 %18 to i1, !dbg !6525
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !6526
  store i1 true, ptr %retval, align 1, !dbg !6527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6527

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !6528
  %19 = load i1, ptr %retval, align 1, !dbg !6528
  ret i1 %19, !dbg !6528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6529 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !6530 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6534, metadata !DIExpression()), !dbg !6536
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6535, metadata !DIExpression()), !dbg !6537
  %0 = load i32, ptr %size.addr, align 4, !dbg !6538
  %1 = load i64, ptr %count.addr, align 8, !dbg !6540
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !6541
  ret void, !dbg !6542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6543 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6544 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !6545 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6549, metadata !DIExpression()), !dbg !6552
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6550, metadata !DIExpression()), !dbg !6553
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6551, metadata !DIExpression()), !dbg !6554
  ret void, !dbg !6555
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6556 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !6557 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6559, metadata !DIExpression()), !dbg !6564
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6560, metadata !DIExpression()), !dbg !6565
  %0 = load i64, ptr %size.addr, align 8, !dbg !6566
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6567
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6568

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6569
  %tobool = icmp ne i64 %2, 0, !dbg !6569
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6570

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6571
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6561, metadata !DIExpression()), !dbg !6572
  %3 = load i64, ptr %size.addr, align 8, !dbg !6573
  %cmp = icmp ugt i64 %3, 8192, !dbg !6575
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6576

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6577
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6578
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6579
  store ptr %call, ptr %retval, align 8, !dbg !6580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6580

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6581
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6581
  store i32 %call2, ptr %index, align 4, !dbg !6582
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6583
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6584
  %9 = ptrtoint ptr %8 to i64, !dbg !6584
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6585
  %idxprom = zext i32 %call3 to i64, !dbg !6586
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6586
  %10 = load i32, ptr %index, align 4, !dbg !6587
  %idxprom4 = zext i32 %10 to i64, !dbg !6586
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6586
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6586
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6588
  %13 = load i64, ptr %size.addr, align 8, !dbg !6589
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6590
  store ptr %call6, ptr %retval, align 8, !dbg !6591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6591

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6592
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6593
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6594
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6595
  store ptr %call8, ptr %retval, align 8, !dbg !6596
  br label %return, !dbg !6596

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6597
  ret ptr %16, !dbg !6597
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6598 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6599 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6604, metadata !DIExpression()), !dbg !6606
  %0 = load i64, ptr %size.addr, align 8, !dbg !6607
  %tobool = icmp ne i64 %0, 0, !dbg !6607
  br i1 %tobool, label %if.end, label %if.then, !dbg !6609

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6610
  br label %return, !dbg !6610

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6611
  %cmp = icmp ule i64 %1, 8, !dbg !6613
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6614

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6615
  br label %return, !dbg !6615

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6616
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6618
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6619

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6620
  %cmp4 = icmp ule i64 %3, 96, !dbg !6621
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6622

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6623
  br label %return, !dbg !6623

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6624
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6626
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6627

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6628
  %cmp9 = icmp ule i64 %5, 192, !dbg !6629
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6630

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6631
  br label %return, !dbg !6631

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6632
  %cmp12 = icmp ule i64 %6, 8, !dbg !6634
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6635

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6636
  br label %return, !dbg !6636

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6637
  %cmp15 = icmp ule i64 %7, 16, !dbg !6639
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6640

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6641
  br label %return, !dbg !6641

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6642
  %cmp18 = icmp ule i64 %8, 32, !dbg !6644
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6645

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6647
  %cmp21 = icmp ule i64 %9, 64, !dbg !6649
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6650

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6652
  %cmp24 = icmp ule i64 %10, 128, !dbg !6654
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6655

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6657
  %cmp27 = icmp ule i64 %11, 256, !dbg !6659
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6660

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6661
  br label %return, !dbg !6661

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6662
  %cmp30 = icmp ule i64 %12, 512, !dbg !6664
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6665

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6667
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6669
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6670

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6672
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6674
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6675

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6679
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6680

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6684
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6685

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6686
  br label %return, !dbg !6686

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6687
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6689
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6690

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6691
  br label %return, !dbg !6691

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6692
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6694
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6695

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6696
  br label %return, !dbg !6696

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6697
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6699
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6700

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6701
  br label %return, !dbg !6701

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6702
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6704
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6705

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6706
  br label %return, !dbg !6706

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6707
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6709
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6710

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6711
  br label %return, !dbg !6711

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6712
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6714
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6715

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6716
  br label %return, !dbg !6716

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6717
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6719
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6720

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6721
  br label %return, !dbg !6721

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6722
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6724
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6725

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6726
  br label %return, !dbg !6726

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6727, !range !6503, !noundef !350
  %tobool69 = trunc i8 %25 to i1, !dbg !6727
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6729

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6730

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #22, !dbg !6731, !srcloc !6734
  unreachable, !dbg !6731

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6735

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6736

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6737

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6739

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6737

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #19, !dbg !6741, !srcloc !6743
  br label %do.end75, !dbg !6741

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6737

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6744
  br label %return, !dbg !6744

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6745
  ret i32 %26, !dbg !6745
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6746 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6749 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6753, metadata !DIExpression()), !dbg !6755
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6757
  %and = and i32 %0, 17, !dbg !6757
  %cmp = icmp eq i32 %and, 0, !dbg !6757
  %lnot = xor i1 %cmp, true, !dbg !6757
  %lnot1 = xor i1 %lnot, true, !dbg !6757
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6757
  %conv = sext i32 %lnot.ext to i64, !dbg !6757
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6757
  %tobool = icmp ne i64 %expval, 0, !dbg !6757
  br i1 %tobool, label %if.then, label %if.end, !dbg !6759

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6760
  br label %return, !dbg !6760

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6761
  %and2 = and i32 %1, 1, !dbg !6763
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6763
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6764

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6765
  br label %return, !dbg !6765

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6766
  br label %return, !dbg !6766

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6768
  ret i32 %2, !dbg !6768
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6769 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6770 dso_local void @__compiletime_assert_245() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !6771 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6775, metadata !DIExpression()), !dbg !6776
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6777, !range !6503, !noundef !350
  %tobool = trunc i8 %0 to i1, !dbg !6777
  %lnot = xor i1 %tobool, true, !dbg !6777
  %lnot1 = xor i1 %lnot, true, !dbg !6777
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6777
  %conv = sext i32 %lnot.ext to i64, !dbg !6777
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6777
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6777
  ret i1 %tobool2, !dbg !6778
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6779 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_open_by_handle_at(i32 noundef %mountdirfd, ptr noundef %handle, i32 noundef %flags) #3 align 16 !dbg !6780 {
entry:
  %mountdirfd.addr = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  store i32 %mountdirfd, ptr %mountdirfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6784, metadata !DIExpression()), !dbg !6788
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6785, metadata !DIExpression()), !dbg !6788
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6786, metadata !DIExpression()), !dbg !6788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #19, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6787, metadata !DIExpression()), !dbg !6790
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6791
  %or = or i32 %0, 32768, !dbg !6791
  store i32 %or, ptr %flags.addr, align 4, !dbg !6791
  %1 = load i32, ptr %mountdirfd.addr, align 4, !dbg !6793
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !6794
  %3 = load i32, ptr %flags.addr, align 4, !dbg !6795
  %call = call i64 @do_handle_open(i32 noundef %1, ptr noundef %2, i32 noundef %3) #18, !dbg !6796
  store i64 %call, ptr %ret, align 8, !dbg !6797
  %4 = load i64, ptr %ret, align 8, !dbg !6798
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #19, !dbg !6799
  ret i64 %4, !dbg !6800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @do_handle_open(i32 noundef %mountdirfd, ptr noundef %ufh, i32 noundef %open_flag) #0 align 16 !dbg !6801 {
entry:
  %retval = alloca i64, align 8
  %mountdirfd.addr = alloca i32, align 4
  %ufh.addr = alloca ptr, align 8
  %open_flag.addr = alloca i32, align 4
  %retval1 = alloca i64, align 8
  %path = alloca %struct.path, align 8
  %file = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mountdirfd, ptr %mountdirfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6803, metadata !DIExpression()), !dbg !6810
  store ptr %ufh, ptr %ufh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufh.addr, metadata !6804, metadata !DIExpression()), !dbg !6811
  store i32 %open_flag, ptr %open_flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %open_flag.addr, metadata !6805, metadata !DIExpression()), !dbg !6812
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #19, !dbg !6813
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6806, metadata !DIExpression()), !dbg !6814
  store i64 0, ptr %retval1, align 8, !dbg !6814
  call void @llvm.lifetime.start.p0(i64 16, ptr %path) #19, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %path, metadata !6807, metadata !DIExpression()), !dbg !6816
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #19, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6808, metadata !DIExpression()), !dbg !6818
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #19, !dbg !6819
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !6809, metadata !DIExpression()), !dbg !6820
  %0 = load i32, ptr %mountdirfd.addr, align 4, !dbg !6821
  %1 = load ptr, ptr %ufh.addr, align 8, !dbg !6822
  %call = call i32 @handle_to_path(i32 noundef %0, ptr noundef %1, ptr noundef %path) #18, !dbg !6823
  %conv = sext i32 %call to i64, !dbg !6823
  store i64 %conv, ptr %retval1, align 8, !dbg !6824
  %2 = load i64, ptr %retval1, align 8, !dbg !6825
  %tobool = icmp ne i64 %2, 0, !dbg !6825
  br i1 %tobool, label %if.then, label %if.end, !dbg !6827

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %retval1, align 8, !dbg !6828
  store i64 %3, ptr %retval, align 8, !dbg !6829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6829

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %open_flag.addr, align 4, !dbg !6830
  %call2 = call i32 @get_unused_fd_flags(i32 noundef %4) #18, !dbg !6831
  store i32 %call2, ptr %fd, align 4, !dbg !6832
  %5 = load i32, ptr %fd, align 4, !dbg !6833
  %cmp = icmp slt i32 %5, 0, !dbg !6835
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !6836

if.then4:                                         ; preds = %if.end
  call void @path_put(ptr noundef %path) #18, !dbg !6837
  %6 = load i32, ptr %fd, align 4, !dbg !6839
  %conv5 = sext i32 %6 to i64, !dbg !6839
  store i64 %conv5, ptr %retval, align 8, !dbg !6840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6840

if.end6:                                          ; preds = %if.end
  %7 = load i32, ptr %open_flag.addr, align 4, !dbg !6841
  %call7 = call ptr @file_open_root(ptr noundef %path, ptr noundef @.str.2, i32 noundef %7, i16 noundef zeroext 0) #18, !dbg !6842
  store ptr %call7, ptr %file, align 8, !dbg !6843
  %8 = load ptr, ptr %file, align 8, !dbg !6844
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %8) #18, !dbg !6846
  br i1 %call8, label %if.then9, label %if.else, !dbg !6847

if.then9:                                         ; preds = %if.end6
  %9 = load i32, ptr %fd, align 4, !dbg !6848
  call void @put_unused_fd(i32 noundef %9) #18, !dbg !6850
  %10 = load ptr, ptr %file, align 8, !dbg !6851
  %call10 = call i64 @PTR_ERR(ptr noundef %10) #18, !dbg !6852
  store i64 %call10, ptr %retval1, align 8, !dbg !6853
  br label %if.end12, !dbg !6854

if.else:                                          ; preds = %if.end6
  %11 = load i32, ptr %fd, align 4, !dbg !6855
  %conv11 = sext i32 %11 to i64, !dbg !6855
  store i64 %conv11, ptr %retval1, align 8, !dbg !6857
  %12 = load i32, ptr %fd, align 4, !dbg !6858
  %13 = load ptr, ptr %file, align 8, !dbg !6859
  call void @fd_install(i32 noundef %12, ptr noundef %13) #18, !dbg !6860
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  call void @path_put(ptr noundef %path) #18, !dbg !6861
  %14 = load i64, ptr %retval1, align 8, !dbg !6862
  store i64 %14, ptr %retval, align 8, !dbg !6863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6863

cleanup:                                          ; preds = %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #19, !dbg !6864
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #19, !dbg !6864
  call void @llvm.lifetime.end.p0(i64 16, ptr %path) #19, !dbg !6864
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #19, !dbg !6864
  %15 = load i64, ptr %retval, align 8, !dbg !6864
  ret i64 %15, !dbg !6864
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_to_path(i32 noundef %mountdirfd, ptr noundef %ufh, ptr noundef %path) #0 align 16 !dbg !6865 {
entry:
  %mountdirfd.addr = alloca i32, align 4
  %ufh.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %f_handle = alloca %struct.file_handle, align 4
  %handle = alloca ptr, align 8
  store i32 %mountdirfd, ptr %mountdirfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6869, metadata !DIExpression()), !dbg !6877
  store ptr %ufh, ptr %ufh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufh.addr, metadata !6870, metadata !DIExpression()), !dbg !6878
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6871, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6872, metadata !DIExpression()), !dbg !6881
  store i32 0, ptr %retval1, align 4, !dbg !6881
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_handle) #19, !dbg !6882
  call void @llvm.dbg.declare(metadata ptr %f_handle, metadata !6873, metadata !DIExpression()), !dbg !6883
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #19, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !6874, metadata !DIExpression()), !dbg !6885
  store ptr null, ptr %handle, align 8, !dbg !6885
  %call = call zeroext i1 @capable(i32 noundef 2) #18, !dbg !6886
  br i1 %call, label %if.end, label %if.then, !dbg !6888

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval1, align 4, !dbg !6889
  br label %out_err, !dbg !6891

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %ufh.addr, align 8, !dbg !6892
  %call2 = call i64 @copy_from_user(ptr noundef %f_handle, ptr noundef %0, i64 noundef 8) #18, !dbg !6894
  %tobool = icmp ne i64 %call2, 0, !dbg !6894
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !6895

if.then3:                                         ; preds = %if.end
  store i32 -14, ptr %retval1, align 4, !dbg !6896
  br label %out_err, !dbg !6898

if.end4:                                          ; preds = %if.end
  %handle_bytes = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6899
  %1 = load i32, ptr %handle_bytes, align 4, !dbg !6899
  %cmp = icmp ugt i32 %1, 128, !dbg !6901
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !6902

lor.lhs.false:                                    ; preds = %if.end4
  %handle_bytes5 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6903
  %2 = load i32, ptr %handle_bytes5, align 4, !dbg !6903
  %cmp6 = icmp eq i32 %2, 0, !dbg !6904
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6905

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  store i32 -22, ptr %retval1, align 4, !dbg !6906
  br label %out_err, !dbg !6908

if.end8:                                          ; preds = %lor.lhs.false
  %handle_bytes9 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6909
  %3 = load i32, ptr %handle_bytes9, align 4, !dbg !6909
  %conv = zext i32 %3 to i64, !dbg !6909
  %call10 = call i64 @size_mul(i64 noundef %conv, i64 noundef 1) #18, !dbg !6909
  %call11 = call i64 @size_add(i64 noundef 8, i64 noundef %call10) #18, !dbg !6909
  %call12 = call noalias ptr @kmalloc(i64 noundef %call11, i32 noundef 3264) #20, !dbg !6910
  store ptr %call12, ptr %handle, align 8, !dbg !6911
  %4 = load ptr, ptr %handle, align 8, !dbg !6912
  %tobool13 = icmp ne ptr %4, null, !dbg !6912
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6914

if.then14:                                        ; preds = %if.end8
  store i32 -12, ptr %retval1, align 4, !dbg !6915
  br label %out_err, !dbg !6917

if.end15:                                         ; preds = %if.end8
  %5 = load ptr, ptr %handle, align 8, !dbg !6918
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %f_handle, i64 8, i1 false), !dbg !6919
  %6 = load ptr, ptr %handle, align 8, !dbg !6920
  %f_handle16 = getelementptr inbounds %struct.file_handle, ptr %6, i32 0, i32 2, !dbg !6922
  %7 = load ptr, ptr %ufh.addr, align 8, !dbg !6923
  %f_handle17 = getelementptr inbounds %struct.file_handle, ptr %7, i32 0, i32 2, !dbg !6924
  %handle_bytes18 = getelementptr inbounds %struct.file_handle, ptr %f_handle, i32 0, i32 0, !dbg !6925
  %8 = load i32, ptr %handle_bytes18, align 4, !dbg !6925
  %conv19 = zext i32 %8 to i64, !dbg !6926
  %call20 = call i64 @copy_from_user(ptr noundef %f_handle16, ptr noundef %f_handle17, i64 noundef %conv19) #18, !dbg !6927
  %tobool21 = icmp ne i64 %call20, 0, !dbg !6927
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !6928

if.then22:                                        ; preds = %if.end15
  store i32 -14, ptr %retval1, align 4, !dbg !6929
  br label %out_handle, !dbg !6931

if.end23:                                         ; preds = %if.end15
  %9 = load i32, ptr %mountdirfd.addr, align 4, !dbg !6932
  %10 = load ptr, ptr %handle, align 8, !dbg !6933
  %11 = load ptr, ptr %path.addr, align 8, !dbg !6934
  %call24 = call i32 @do_handle_to_path(i32 noundef %9, ptr noundef %10, ptr noundef %11) #18, !dbg !6935
  store i32 %call24, ptr %retval1, align 4, !dbg !6936
  br label %out_handle, !dbg !6937

out_handle:                                       ; preds = %if.end23, %if.then22
  call void @llvm.dbg.label(metadata !6875), !dbg !6938
  %12 = load ptr, ptr %handle, align 8, !dbg !6939
  call void @kfree(ptr noundef %12) #18, !dbg !6940
  br label %out_err, !dbg !6940

out_err:                                          ; preds = %out_handle, %if.then14, %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !6876), !dbg !6941
  %13 = load i32, ptr %retval1, align 4, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #19, !dbg !6943
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_handle) #19, !dbg !6943
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !6943
  ret i32 %13, !dbg !6944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local i32 @get_unused_fd_flags(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6949 dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !6952 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6957, metadata !DIExpression()), !dbg !6958
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6959
  %1 = ptrtoint ptr %0 to i64, !dbg !6959
  %2 = inttoptr i64 %1 to ptr, !dbg !6959
  %3 = ptrtoint ptr %2 to i64, !dbg !6959
  %cmp = icmp uge i64 %3, -4095, !dbg !6959
  %lnot = xor i1 %cmp, true, !dbg !6959
  %lnot1 = xor i1 %lnot, true, !dbg !6959
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6959
  %conv = sext i32 %lnot.ext to i64, !dbg !6959
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6959
  %tobool = icmp ne i64 %expval, 0, !dbg !6959
  ret i1 %tobool, !dbg !6960
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6961 dso_local void @put_unused_fd(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !6964 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6968, metadata !DIExpression()), !dbg !6969
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6970
  %1 = ptrtoint ptr %0 to i64, !dbg !6971
  ret i64 %1, !dbg !6972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6973 dso_local void @fd_install(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6976 dso_local zeroext i1 @capable(i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_handle_to_path(i32 noundef %mountdirfd, ptr noundef %handle, ptr noundef %path) #0 align 16 !dbg !6979 {
entry:
  %retval = alloca i32, align 4
  %mountdirfd.addr = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %handle_dwords = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mountdirfd, ptr %mountdirfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !6981, metadata !DIExpression()), !dbg !6988
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6982, metadata !DIExpression()), !dbg !6989
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6983, metadata !DIExpression()), !dbg !6990
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #19, !dbg !6991
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6984, metadata !DIExpression()), !dbg !6992
  store i32 0, ptr %retval1, align 4, !dbg !6992
  call void @llvm.lifetime.start.p0(i64 4, ptr %handle_dwords) #19, !dbg !6993
  call void @llvm.dbg.declare(metadata ptr %handle_dwords, metadata !6985, metadata !DIExpression()), !dbg !6994
  %0 = load i32, ptr %mountdirfd.addr, align 4, !dbg !6995
  %call = call ptr @get_vfsmount_from_fd(i32 noundef %0) #18, !dbg !6996
  %1 = load ptr, ptr %path.addr, align 8, !dbg !6997
  %mnt = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 0, !dbg !6998
  store ptr %call, ptr %mnt, align 8, !dbg !6999
  %2 = load ptr, ptr %path.addr, align 8, !dbg !7000
  %mnt2 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 0, !dbg !7002
  %3 = load ptr, ptr %mnt2, align 8, !dbg !7002
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %3) #18, !dbg !7003
  br i1 %call3, label %if.then, label %if.end, !dbg !7004

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %path.addr, align 8, !dbg !7005
  %mnt4 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 0, !dbg !7007
  %5 = load ptr, ptr %mnt4, align 8, !dbg !7007
  %call5 = call i64 @PTR_ERR(ptr noundef %5) #18, !dbg !7008
  %conv = trunc i64 %call5 to i32, !dbg !7008
  store i32 %conv, ptr %retval1, align 4, !dbg !7009
  br label %out_err, !dbg !7010

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !7011
  %handle_bytes = getelementptr inbounds %struct.file_handle, ptr %6, i32 0, i32 0, !dbg !7012
  %7 = load i32, ptr %handle_bytes, align 4, !dbg !7012
  %shr = lshr i32 %7, 2, !dbg !7013
  store i32 %shr, ptr %handle_dwords, align 4, !dbg !7014
  %8 = load ptr, ptr %path.addr, align 8, !dbg !7015
  %mnt6 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 0, !dbg !7016
  %9 = load ptr, ptr %mnt6, align 8, !dbg !7016
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !7017
  %f_handle = getelementptr inbounds %struct.file_handle, ptr %10, i32 0, i32 2, !dbg !7018
  %arraydecay = getelementptr inbounds [0 x i8], ptr %f_handle, i64 0, i64 0, !dbg !7017
  %11 = load i32, ptr %handle_dwords, align 4, !dbg !7019
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !7020
  %handle_type = getelementptr inbounds %struct.file_handle, ptr %12, i32 0, i32 1, !dbg !7021
  %13 = load i32, ptr %handle_type, align 4, !dbg !7021
  %call7 = call ptr @exportfs_decode_fh(ptr noundef %9, ptr noundef %arraydecay, i32 noundef %11, i32 noundef %13, ptr noundef @vfs_dentry_acceptable, ptr noundef null) #18, !dbg !7022
  %14 = load ptr, ptr %path.addr, align 8, !dbg !7023
  %dentry = getelementptr inbounds %struct.path, ptr %14, i32 0, i32 1, !dbg !7024
  store ptr %call7, ptr %dentry, align 8, !dbg !7025
  %15 = load ptr, ptr %path.addr, align 8, !dbg !7026
  %dentry8 = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1, !dbg !7028
  %16 = load ptr, ptr %dentry8, align 8, !dbg !7028
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %16) #18, !dbg !7029
  br i1 %call9, label %if.then10, label %if.end14, !dbg !7030

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %path.addr, align 8, !dbg !7031
  %dentry11 = getelementptr inbounds %struct.path, ptr %17, i32 0, i32 1, !dbg !7033
  %18 = load ptr, ptr %dentry11, align 8, !dbg !7033
  %call12 = call i64 @PTR_ERR(ptr noundef %18) #18, !dbg !7034
  %conv13 = trunc i64 %call12 to i32, !dbg !7034
  store i32 %conv13, ptr %retval1, align 4, !dbg !7035
  br label %out_mnt, !dbg !7036

if.end14:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7037

out_mnt:                                          ; preds = %if.then10
  call void @llvm.dbg.label(metadata !6986), !dbg !7038
  %19 = load ptr, ptr %path.addr, align 8, !dbg !7039
  %mnt15 = getelementptr inbounds %struct.path, ptr %19, i32 0, i32 0, !dbg !7040
  %20 = load ptr, ptr %mnt15, align 8, !dbg !7040
  call void @mntput(ptr noundef %20) #18, !dbg !7041
  br label %out_err, !dbg !7041

out_err:                                          ; preds = %out_mnt, %if.then
  call void @llvm.dbg.label(metadata !6987), !dbg !7042
  %21 = load i32, ptr %retval1, align 4, !dbg !7043
  store i32 %21, ptr %retval, align 4, !dbg !7044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7044

cleanup:                                          ; preds = %out_err, %if.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr %handle_dwords) #19, !dbg !7045
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #19, !dbg !7045
  %22 = load i32, ptr %retval, align 4, !dbg !7045
  ret i32 %22, !dbg !7045
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_vfsmount_from_fd(i32 noundef %fd) #0 align 16 !dbg !7046 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mnt = alloca ptr, align 8
  %fs = alloca ptr, align 8
  %f = alloca %struct.fd, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7050, metadata !DIExpression()), !dbg !7061
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt) #19, !dbg !7062
  call void @llvm.dbg.declare(metadata ptr %mnt, metadata !7051, metadata !DIExpression()), !dbg !7063
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7064
  %cmp = icmp eq i32 %0, -100, !dbg !7065
  br i1 %cmp, label %if.then, label %if.else, !dbg !7066

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #19, !dbg !7067
  call void @llvm.dbg.declare(metadata ptr %fs, metadata !7052, metadata !DIExpression()), !dbg !7068
  %call = call ptr @get_current() #18, !dbg !7069
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 100, !dbg !7070
  %1 = load ptr, ptr %fs1, align 32, !dbg !7070
  store ptr %1, ptr %fs, align 8, !dbg !7068
  %2 = load ptr, ptr %fs, align 8, !dbg !7071
  %lock = getelementptr inbounds %struct.fs_struct, ptr %2, i32 0, i32 1, !dbg !7072
  call void @spin_lock(ptr noundef %lock) #18, !dbg !7073
  %3 = load ptr, ptr %fs, align 8, !dbg !7074
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %3, i32 0, i32 6, !dbg !7075
  %mnt2 = getelementptr inbounds %struct.path, ptr %pwd, i32 0, i32 0, !dbg !7076
  %4 = load ptr, ptr %mnt2, align 8, !dbg !7076
  %call3 = call ptr @mntget(ptr noundef %4) #18, !dbg !7077
  store ptr %call3, ptr %mnt, align 8, !dbg !7078
  %5 = load ptr, ptr %fs, align 8, !dbg !7079
  %lock4 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1, !dbg !7080
  call void @spin_unlock(ptr noundef %lock4) #18, !dbg !7081
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #19, !dbg !7082
  br label %if.end11, !dbg !7083

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #19, !dbg !7084
  call void @llvm.dbg.declare(metadata ptr %f, metadata !7055, metadata !DIExpression()), !dbg !7085
  %6 = load i32, ptr %fd.addr, align 4, !dbg !7086
  %call5 = call { ptr, i32 } @fdget(i32 noundef %6) #18, !dbg !7087
  %7 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7087
  %8 = extractvalue { ptr, i32 } %call5, 0, !dbg !7087
  store ptr %8, ptr %7, align 8, !dbg !7087
  %9 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7087
  %10 = extractvalue { ptr, i32 } %call5, 1, !dbg !7087
  store i32 %10, ptr %9, align 8, !dbg !7087
  %file = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7088
  %11 = load ptr, ptr %file, align 8, !dbg !7088
  %tobool = icmp ne ptr %11, null, !dbg !7090
  br i1 %tobool, label %if.end, label %if.then6, !dbg !7091

if.then6:                                         ; preds = %if.else
  %call7 = call ptr @ERR_PTR(i64 noundef -9) #18, !dbg !7092
  store ptr %call7, ptr %retval, align 8, !dbg !7093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7093

if.end:                                           ; preds = %if.else
  %file8 = getelementptr inbounds %struct.fd, ptr %f, i32 0, i32 0, !dbg !7094
  %12 = load ptr, ptr %file8, align 8, !dbg !7094
  %f_path = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 10, !dbg !7095
  %mnt9 = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 0, !dbg !7096
  %13 = load ptr, ptr %mnt9, align 8, !dbg !7096
  %call10 = call ptr @mntget(ptr noundef %13) #18, !dbg !7097
  store ptr %call10, ptr %mnt, align 8, !dbg !7098
  %14 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 0, !dbg !7099
  %15 = load ptr, ptr %14, align 8, !dbg !7099
  %16 = getelementptr inbounds { ptr, i32 }, ptr %f, i32 0, i32 1, !dbg !7099
  %17 = load i32, ptr %16, align 8, !dbg !7099
  call void @fdput(ptr %15, i32 %17) #18, !dbg !7099
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7100
  br label %cleanup, !dbg !7100

cleanup:                                          ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #19, !dbg !7100
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11

if.end11:                                         ; preds = %cleanup.cont, %if.then
  %18 = load ptr, ptr %mnt, align 8, !dbg !7101
  store ptr %18, ptr %retval, align 8, !dbg !7102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !7102

cleanup12:                                        ; preds = %if.end11, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt) #19, !dbg !7103
  %19 = load ptr, ptr %retval, align 8, !dbg !7103
  ret ptr %19, !dbg !7103
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7104 dso_local ptr @exportfs_decode_fh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vfs_dentry_acceptable(ptr noundef %context, ptr noundef %dentry) #0 align 16 !dbg !7110 {
entry:
  %context.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !7112, metadata !DIExpression()), !dbg !7114
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !7113, metadata !DIExpression()), !dbg !7115
  ret i32 1, !dbg !7116
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7117 dso_local void @mntput(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !7120 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #19, !dbg !7131
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7125, metadata !DIExpression()), !dbg !7131
  br label %do.body, !dbg !7131

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !7132
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7127, metadata !DIExpression()), !dbg !7132
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7132
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !7131
  br label %do.cond, !dbg !7132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7132

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #19, !dbg !7133
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7129, metadata !DIExpression()), !dbg !7133
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #23, !dbg !7133, !srcloc !7134
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7133
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7133
  %3 = inttoptr i64 %2 to ptr, !dbg !7133
  store ptr %3, ptr %tmp, align 8, !dbg !7133
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #19, !dbg !7131
  %4 = load ptr, ptr %tmp, align 8, !dbg !7133
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7131
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7131
  store ptr %5, ptr %tmp1, align 8, !dbg !7131
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #19, !dbg !7135
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7131
  ret ptr %6, !dbg !7136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !7137 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7142, metadata !DIExpression()), !dbg !7143
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7144
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7144
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !7144
  ret void, !dbg !7145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7146 dso_local ptr @mntget(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !7149 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7151, metadata !DIExpression()), !dbg !7152
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7153
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !7153
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !7153
  ret void, !dbg !7154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @fdget(i32 noundef %fd) #3 align 16 !dbg !7155 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !7159, metadata !DIExpression()), !dbg !7160
  %0 = load i32, ptr %fd.addr, align 4, !dbg !7161
  %call = call i64 @__fdget(i32 noundef %0) #18, !dbg !7162
  %call1 = call { ptr, i32 } @__to_fd(i64 noundef %call) #18, !dbg !7163
  %1 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 0, !dbg !7163
  %2 = extractvalue { ptr, i32 } %call1, 0, !dbg !7163
  store ptr %2, ptr %1, align 8, !dbg !7163
  %3 = getelementptr inbounds { ptr, i32 }, ptr %retval, i32 0, i32 1, !dbg !7163
  %4 = extractvalue { ptr, i32 } %call1, 1, !dbg !7163
  store i32 %4, ptr %3, align 8, !dbg !7163
  %5 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7164
  ret { ptr, i32 } %5, !dbg !7164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !7165 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7169, metadata !DIExpression()), !dbg !7170
  %0 = load i64, ptr %error.addr, align 8, !dbg !7171
  %1 = inttoptr i64 %0 to ptr, !dbg !7172
  ret ptr %1, !dbg !7173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fdput(ptr %fd.coerce0, i32 %fd.coerce1) #3 align 16 !dbg !7174 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 0
  store ptr %fd.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %fd, i32 0, i32 1
  store i32 %fd.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !7178, metadata !DIExpression()), !dbg !7179
  %flags = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 1, !dbg !7180
  %2 = load i32, ptr %flags, align 8, !dbg !7180
  %and = and i32 %2, 1, !dbg !7182
  %tobool = icmp ne i32 %and, 0, !dbg !7182
  br i1 %tobool, label %if.then, label %if.end, !dbg !7183

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, ptr %fd, i32 0, i32 0, !dbg !7184
  %3 = load ptr, ptr %file, align 8, !dbg !7184
  call void @fput(ptr noundef %3) #18, !dbg !7185
  br label %if.end, !dbg !7185

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7187 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7192 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { ptr, i32 } @__to_fd(i64 noundef %v) #3 align 16 !dbg !7193 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7197, metadata !DIExpression()), !dbg !7198
  %file = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 0, !dbg !7199
  %0 = load i64, ptr %v.addr, align 8, !dbg !7200
  %and = and i64 %0, -4, !dbg !7201
  %1 = inttoptr i64 %and to ptr, !dbg !7202
  store ptr %1, ptr %file, align 8, !dbg !7199
  %flags = getelementptr inbounds %struct.fd, ptr %retval, i32 0, i32 1, !dbg !7199
  %2 = load i64, ptr %v.addr, align 8, !dbg !7203
  %and1 = and i64 %2, 3, !dbg !7204
  %conv = trunc i64 %and1 to i32, !dbg !7203
  store i32 %conv, ptr %flags, align 8, !dbg !7199
  %3 = load { ptr, i32 }, ptr %retval, align 8, !dbg !7205
  ret { ptr, i32 } %3, !dbg !7205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7206 dso_local i64 @__fdget(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7209 dso_local void @fput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_open_by_handle_at(i32 noundef %mountdirfd, ptr noundef %handle, i32 noundef %flags) #3 align 16 !dbg !7210 {
entry:
  %mountdirfd.addr = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store i32 %mountdirfd, ptr %mountdirfd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mountdirfd.addr, metadata !7212, metadata !DIExpression()), !dbg !7215
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !7213, metadata !DIExpression()), !dbg !7215
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7214, metadata !DIExpression()), !dbg !7215
  %0 = load i32, ptr %mountdirfd.addr, align 4, !dbg !7216
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !7217
  %2 = load i32, ptr %flags.addr, align 4, !dbg !7218
  %call = call i64 @do_handle_open(i32 noundef %0, ptr noundef %1, i32 noundef %2) #18, !dbg !7219
  ret i64 %call, !dbg !7220
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { nounwind memory(none) }

!llvm.dbg.cu = !{!19}
!llvm.named.register.rsp = !{!6060}
!llvm.module.flags = !{!6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068}
!llvm.ident = !{!6069}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !15, line: 239, type: !16, isLocal: true, isDefinition: true)
!15 = !DIFile(filename: "fs/fhandle.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9c34571380498da7acb44713f27643b")
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 1)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.fhandle.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fhandle\22 -D KBUILD_BASENAME=\22fhandle\22 -D KBUILD_MODNAME=\22fhandle\22 -D __KBUILD_MODNAME=kmod_fhandle -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fhandle.ll fs/fhandle.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !309, globals: !6059, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !27, !122, !128, !144, !151, !159, !166, !173, !179, !190, !196, !202, !209, !217, !224, !233, !238, !243, !249, !258, !266, !271, !277, !295, !300}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 147, baseType: !23, size: 32, elements: !119)
!28 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !28, line: 135, size: 512, elements: !30)
!30 = !{!31, !34, !36, !38, !42, !43, !59, !117, !118}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !29, file: !28, line: 136, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 137, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !29, file: !28, line: 138, baseType: !37, size: 32, offset: 128)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !29, file: !28, line: 139, baseType: !39, size: 16, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !28, line: 150, baseType: !27, size: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !29, file: !28, line: 151, baseType: !44, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !28, line: 64, baseType: !46)
!46 = !DISubroutineType(types: !47)
!47 = !{!37, !48, !37, !35, !49, !55}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !52, line: 72, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !52, line: 16, baseType: !54)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !40, line: 52, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !52, line: 88, baseType: !58)
!58 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !29, file: !28, line: 152, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !28, line: 117, size: 256, elements: !62)
!62 = !{!63, !68}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !61, file: !28, line: 118, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 174, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 172, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !65, file: !40, line: 173, baseType: !37, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !61, file: !28, line: 119, baseType: !69, size: 192, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !70, line: 41, baseType: !71)
!70 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !70, line: 37, size: 192, elements: !72)
!72 = !{!73, !111}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !71, file: !70, line: 38, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !75, line: 29, baseType: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !75, line: 17, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 18, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 18, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !79, file: !75, line: 19, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !83, line: 14, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !82, file: !83, line: 15, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !87, line: 44, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !87, line: 14, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !87, line: 15, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !87, line: 15, size: 32, elements: !92)
!92 = !{!93, !94, !104}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !91, file: !87, line: 16, baseType: !64, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 24, baseType: !95, size: 16)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 24, size: 16, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !95, file: !87, line: 25, baseType: !98, size: 8)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !95, file: !87, line: 26, baseType: !98, size: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 28, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 28, size: 32, elements: !106)
!106 = !{!107, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !105, file: !87, line: 29, baseType: !108, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !41)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !105, file: !87, line: 30, baseType: !108, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !71, file: !70, line: 39, baseType: !112, size: 128, offset: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !40, line: 191, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !40, line: 191, baseType: !115, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !29, file: !28, line: 153, baseType: !35, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !29, file: !28, line: 154, baseType: !35, size: 64, offset: 448)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !123, line: 16, baseType: !23, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "TT_NONE", value: 0)
!126 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!127 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !129, line: 1325, baseType: !23, size: 32, elements: !130)
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
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !145, line: 15, baseType: !23, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!148 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!149 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !152, line: 68, baseType: !23, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!155 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!156 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!157 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!158 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !160, line: 51, baseType: !23, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!163 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!164 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!165 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !167, line: 312, baseType: !23, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!170 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!171 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!172 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !174, line: 26, baseType: !23, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!177 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!178 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !180, line: 253, baseType: !23, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189}
!182 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!183 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!184 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!185 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!186 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!187 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!188 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!189 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !180, line: 158, baseType: !23, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!193 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!194 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!195 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !197, line: 45, baseType: !23, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!198 = !{!199, !200, !201}
!199 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!200 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!201 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !203, line: 487, baseType: !23, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!204 = !{!205, !206, !207, !208}
!205 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!206 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!207 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!208 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !210, line: 620, baseType: !23, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!213 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!214 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!215 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!216 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !210, line: 597, baseType: !37, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!220 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!221 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!222 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!223 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !203, line: 547, baseType: !23, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232}
!226 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!227 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!228 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!229 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!230 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!231 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!232 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !203, line: 564, baseType: !23, size: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!236 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !203, line: 577, baseType: !23, size: 32, elements: !239)
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!241 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !203, line: 503, baseType: !23, size: 32, elements: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!246 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!247 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !250, line: 593, baseType: !37, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!251 = !{!252, !253, !254, !255, !256, !257}
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!253 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!254 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!255 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!256 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!257 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !259, line: 9, baseType: !23, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!260 = !{!261, !262, !263, !264, !265}
!261 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!262 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!263 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!264 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!265 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !267, line: 2052, baseType: !23, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!268 = !{!269, !270}
!269 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!270 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !272, line: 54, baseType: !23, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!273 = !{!274, !275, !276}
!274 = !DIEnumerator(name: "USRQUOTA", value: 0)
!275 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!276 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fid_type", file: !278, line: 25, baseType: !23, size: 32, elements: !279)
!278 = !DIFile(filename: "./include/linux/exportfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b88049a7651ed625da9f6bb7042c568")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!280 = !DIEnumerator(name: "FILEID_ROOT", value: 0)
!281 = !DIEnumerator(name: "FILEID_INO32_GEN", value: 1)
!282 = !DIEnumerator(name: "FILEID_INO32_GEN_PARENT", value: 2)
!283 = !DIEnumerator(name: "FILEID_BTRFS_WITHOUT_PARENT", value: 77)
!284 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT", value: 78)
!285 = !DIEnumerator(name: "FILEID_BTRFS_WITH_PARENT_ROOT", value: 79)
!286 = !DIEnumerator(name: "FILEID_UDF_WITHOUT_PARENT", value: 81)
!287 = !DIEnumerator(name: "FILEID_UDF_WITH_PARENT", value: 82)
!288 = !DIEnumerator(name: "FILEID_NILFS_WITHOUT_PARENT", value: 97)
!289 = !DIEnumerator(name: "FILEID_NILFS_WITH_PARENT", value: 98)
!290 = !DIEnumerator(name: "FILEID_FAT_WITHOUT_PARENT", value: 113)
!291 = !DIEnumerator(name: "FILEID_FAT_WITH_PARENT", value: 114)
!292 = !DIEnumerator(name: "FILEID_LUSTRE", value: 151)
!293 = !DIEnumerator(name: "FILEID_KERNFS", value: 254)
!294 = !DIEnumerator(name: "FILEID_INVALID", value: 255)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 10, baseType: !23, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!297 = !{!298, !299}
!298 = !DIEnumerator(name: "false", value: 0)
!299 = !DIEnumerator(name: "true", value: 1)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !23, size: 32, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308}
!302 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!303 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!304 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!305 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!306 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!307 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!308 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!309 = !{!23, !37, !32, !310, !320, !321, !322, !54, !50, !35, !353, !6058, !669, !547, !543}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_handle", file: !267, line: 1035, size: 64, elements: !312)
!312 = !{!313, !315, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "handle_bytes", scope: !311, file: !267, line: 1036, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !23)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "handle_type", scope: !311, file: !267, line: 1037, baseType: !37, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_handle", scope: !311, file: !267, line: 1039, baseType: !317, offset: 64)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: -1)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !23)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fid", file: !278, line: 118, size: 160, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !278, line: 119, baseType: !326, size: 160)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !278, line: 119, size: 160, elements: !327)
!327 = !{!328, !336, !345}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !326, file: !278, line: 125, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !278, line: 120, size: 128, elements: !330)
!330 = !{!331, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !329, file: !278, line: 121, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !314)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !329, file: !278, line: 122, baseType: !332, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ino", scope: !329, file: !278, line: 123, baseType: !332, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !329, file: !278, line: 124, baseType: !332, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "udf", scope: !326, file: !278, line: 133, baseType: !337, size: 160)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !278, line: 126, size: 160, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !337, file: !278, line: 127, baseType: !332, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "partref", scope: !337, file: !278, line: 128, baseType: !108, size: 16, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parent_partref", scope: !337, file: !278, line: 129, baseType: !108, size: 16, offset: 48)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !337, file: !278, line: 130, baseType: !332, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "parent_block", scope: !337, file: !278, line: 131, baseType: !332, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "parent_generation", scope: !337, file: !278, line: 132, baseType: !332, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !278, line: 134, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !278, line: 134, elements: !347)
!347 = !{!348, !351}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_raw", scope: !346, file: !278, line: 134, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !278, line: 134, elements: !350)
!350 = !{}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !346, file: !278, line: 134, baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !318)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !355, line: 39, size: 2560, elements: !356)
!355 = !DIFile(filename: "fs/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!356 = !{!357, !364, !365, !6014, !6015, !6020, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034, !6035, !6036, !6037, !6045, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !354, file: !355, line: 40, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !40, line: 198, size: 128, elements: !359)
!359 = !{!360, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !40, line: 199, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !358, file: !40, line: 199, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !354, file: !355, line: 41, baseType: !353, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !354, file: !355, line: 42, baseType: !366, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !368, line: 82, size: 1536, elements: !369)
!368 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!369 = !{!370, !371, !381, !389, !390, !408, !5982, !5984, !5997, !5998, !5999, !6000, !6001, !6006, !6007, !6008}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !367, file: !368, line: 84, baseType: !23, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !367, file: !368, line: 85, baseType: !372, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !373, line: 275, baseType: !374)
!373 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !373, line: 275, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !374, file: !373, line: 275, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !373, line: 69, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !373, line: 64, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !378, file: !373, line: 65, baseType: !23, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !367, file: !368, line: 86, baseType: !382, size: 128, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !383, line: 38, size: 128, elements: !384)
!383 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 39, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !382, file: !383, line: 39, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !367, file: !368, line: 87, baseType: !366, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !367, file: !368, line: 88, baseType: !391, size: 128, offset: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !368, line: 49, size: 128, elements: !392)
!392 = !{!393, !405}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !368, line: 50, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !368, line: 50, size: 64, elements: !395)
!395 = !{!396, !401}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !368, line: 51, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !394, file: !368, line: 51, size: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !397, file: !368, line: 52, baseType: !332, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !397, file: !368, line: 52, baseType: !332, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !394, file: !368, line: 54, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !404)
!404 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !368, line: 56, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !367, file: !368, line: 89, baseType: !409, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !267, line: 641, size: 4800, elements: !411)
!411 = !{!412, !413, !414, !422, !423, !430, !431, !434, !435, !5921, !5922, !5923, !5924, !5925, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5964, !5967, !5968, !5969, !5978, !5979, !5980, !5981}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !410, file: !267, line: 642, baseType: !39, size: 16)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !410, file: !267, line: 643, baseType: !41, size: 16, offset: 16)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !410, file: !267, line: 644, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !416, line: 23, baseType: !417)
!416 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 21, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !416, line: 22, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !40, line: 37, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !52, line: 49, baseType: !23)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !410, file: !267, line: 645, baseType: !112, size: 128, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !410, file: !267, line: 646, baseType: !424, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !416, line: 28, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 26, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !425, file: !416, line: 27, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !40, line: 38, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !52, line: 50, baseType: !23)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !410, file: !267, line: 647, baseType: !23, size: 32, offset: 224)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !410, file: !267, line: 650, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !267, line: 607, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !410, file: !267, line: 651, baseType: !432, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !410, file: !267, line: 654, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !267, line: 1966, size: 2048, align: 512, elements: !439)
!439 = !{!440, !444, !457, !464, !470, !475, !479, !483, !487, !491, !495, !496, !502, !506, !5843, !5872, !5876, !5882, !5886, !5890, !5894, !5898, !5902, !5908, !5912}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !438, file: !267, line: 1967, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!366, !409, !366, !23}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !438, file: !267, line: 1968, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!32, !366, !409, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !450, line: 10, size: 128, elements: !451)
!450 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!451 = !{!452, !456}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !449, file: !450, line: 11, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !35}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !449, file: !450, line: 12, baseType: !35, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !438, file: !267, line: 1969, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!37, !461, !409, !37}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !463, line: 42, flags: DIFlagFwdDecl)
!463 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !438, file: !267, line: 1970, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!432, !409, !37, !468}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !469)
!469 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !438, file: !267, line: 1972, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!37, !366, !474, !37}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !438, file: !267, line: 1974, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!37, !461, !409, !366, !39, !468}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !438, file: !267, line: 1976, baseType: !480, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!37, !366, !409, !366}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !438, file: !267, line: 1977, baseType: !484, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!37, !409, !366}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !438, file: !267, line: 1978, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!37, !461, !409, !366, !32}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !438, file: !267, line: 1980, baseType: !492, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!37, !461, !409, !366, !39}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !438, file: !267, line: 1982, baseType: !484, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !438, file: !267, line: 1983, baseType: !497, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!37, !461, !409, !366, !39, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !40, line: 21, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !40, line: 18, baseType: !332)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !438, file: !267, line: 1985, baseType: !503, size: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!37, !461, !409, !366, !409, !366, !23}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !438, file: !267, line: 1987, baseType: !507, size: 64, offset: 832)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!37, !461, !366, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !267, line: 226, size: 640, elements: !512)
!512 = !{!513, !514, !515, !525, !534, !535, !544, !545, !546}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !511, file: !267, line: 227, baseType: !23, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !511, file: !267, line: 228, baseType: !39, size: 16, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !267, line: 241, baseType: !516, size: 32, offset: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !267, line: 241, size: 32, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !516, file: !267, line: 242, baseType: !415, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !516, file: !267, line: 243, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !521, line: 16, baseType: !522)
!521 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 14, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !522, file: !521, line: 15, baseType: !420, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !267, line: 245, baseType: !526, size: 32, offset: 96)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !267, line: 245, size: 32, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !526, file: !267, line: 246, baseType: !424, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !526, file: !267, line: 247, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !521, line: 20, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 18, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !531, file: !521, line: 19, baseType: !428, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !511, file: !267, line: 249, baseType: !56, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !511, file: !267, line: 250, baseType: !536, size: 128, offset: 192)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !537, line: 13, size: 128, elements: !538)
!537 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!538 = !{!539, !542}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !536, file: !537, line: 14, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !537, line: 8, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !58)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !536, file: !537, line: 15, baseType: !543, size: 64, offset: 64)
!543 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !511, file: !267, line: 251, baseType: !536, size: 128, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !511, file: !267, line: 252, baseType: !536, size: 128, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !511, file: !267, line: 259, baseType: !547, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !267, line: 994, size: 1856, align: 64, elements: !549)
!549 = !{!550, !569, !570, !572, !580, !593, !594, !595, !5700, !5701, !5710, !5711, !5712, !5836, !5837, !5838, !5839, !5840, !5841, !5842}
!550 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !267, line: 995, baseType: !551, size: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !267, line: 995, size: 128, elements: !552)
!552 = !{!553, !559, !568}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !551, file: !267, line: 996, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !555, line: 60, size: 64, elements: !556)
!555 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !555, line: 61, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !551, file: !267, line: 997, baseType: !560, size: 128, align: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 232, size: 128, align: 64, elements: !561)
!561 = !{!562, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !40, line: 233, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !560, file: !40, line: 234, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !563}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !551, file: !267, line: 998, baseType: !23, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !548, file: !267, line: 1005, baseType: !74, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !548, file: !267, line: 1006, baseType: !571, size: 32, offset: 160)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !40, line: 156, baseType: !23)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !548, file: !267, line: 1007, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !574, line: 13, baseType: !575)
!574 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !40, line: 181, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 179, size: 64, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !576, file: !40, line: 180, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !541)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !548, file: !267, line: 1008, baseType: !581, size: 256, offset: 256)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !582, line: 66, size: 256, elements: !583)
!582 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!583 = !{!584, !585, !587, !592}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !581, file: !582, line: 67, baseType: !573, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !581, file: !582, line: 68, baseType: !586, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !83, line: 23, baseType: !82)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !581, file: !582, line: 70, baseType: !588, size: 32, offset: 96)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !589, line: 15, size: 32, elements: !590)
!589 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !588, file: !589, line: 20, baseType: !64, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !581, file: !582, line: 72, baseType: !112, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !548, file: !267, line: 1009, baseType: !56, size: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !548, file: !267, line: 1010, baseType: !23, size: 32, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !548, file: !267, line: 1011, baseType: !596, size: 256, offset: 640)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !267, line: 948, size: 256, elements: !597)
!597 = !{!598, !621, !5696, !5697, !5698, !5699}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !267, line: 949, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !600, line: 34, baseType: !601)
!600 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !600, line: 25, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !601, file: !600, line: 26, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !605, line: 27, baseType: !606)
!605 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !605, line: 13, size: 64, elements: !607)
!607 = !{!608, !620}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !605, line: 14, baseType: !609, size: 32)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !605, line: 14, size: 32, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !609, file: !605, line: 15, baseType: !64, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !605, line: 16, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !605, line: 16, size: 32, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !613, file: !605, line: 18, baseType: !98, size: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !613, file: !605, line: 19, baseType: !617, size: 24, offset: 8)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 3)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !606, file: !605, line: 26, baseType: !86, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !596, file: !267, line: 950, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !259, line: 59, size: 768, elements: !624)
!624 = !{!625, !631, !632, !633, !640, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !623, file: !259, line: 61, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !627, line: 113, baseType: !628)
!627 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !627, line: 111, size: 32, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !628, file: !627, line: 112, baseType: !64, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !623, file: !259, line: 62, baseType: !23, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !259, line: 63, baseType: !74, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !623, file: !259, line: 65, baseType: !634, size: 256, offset: 128)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !638)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !40, line: 194, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !635, file: !40, line: 195, baseType: !361, size: 64)
!638 = !{!639}
!639 = !DISubrange(count: 4)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !623, file: !259, line: 66, baseType: !635, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !623, file: !259, line: 68, baseType: !69, size: 192, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !623, file: !259, line: 69, baseType: !560, size: 128, align: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !623, file: !259, line: 70, baseType: !644, offset: 768)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, elements: !318)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !259, line: 54, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !645, file: !259, line: 55, baseType: !37, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !645, file: !259, line: 56, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !651, line: 26, size: 1152, elements: !652)
!651 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!652 = !{!653, !666, !667, !668, !5675, !5676, !5677, !5678, !5691, !5692, !5693, !5694, !5695}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !650, file: !651, line: 27, baseType: !654, size: 192)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !655, line: 19, size: 192, elements: !656)
!655 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!656 = !{!657, !664, !665}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !654, file: !655, line: 20, baseType: !658, size: 128)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !659, line: 296, size: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !658, file: !659, line: 297, baseType: !74, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !658, file: !659, line: 299, baseType: !321, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !658, file: !659, line: 300, baseType: !35, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !654, file: !655, line: 21, baseType: !23, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !654, file: !655, line: 22, baseType: !23, size: 32, offset: 160)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !650, file: !651, line: 28, baseType: !560, size: 128, align: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !650, file: !651, line: 29, baseType: !23, size: 32, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !650, file: !651, line: 30, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !671, line: 746, size: 58368, elements: !672)
!671 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!672 = !{!673, !681, !682, !683, !684, !685, !686, !687, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !760, !771, !866, !870, !873, !904, !905, !906, !907, !916, !918, !919, !920, !921, !922, !923, !934, !935, !938, !939, !940, !941, !942, !943, !944, !945, !952, !953, !960, !961, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1477, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1525, !1531, !1600, !1601, !1602, !1603, !1607, !1610, !1617, !1622, !4887, !4890, !4893, !4937, !5135, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5173, !5174, !5175, !5184, !5192, !5193, !5194, !5195, !5196, !5201, !5202, !5203, !5206, !5207, !5210, !5213, !5216, !5224, !5227, !5228, !5314, !5315, !5316, !5317, !5318, !5324, !5325, !5326, !5327, !5328, !5329, !5333, !5347, !5348, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5391, !5394, !5400, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5412, !5484, !5486, !5487, !5488, !5489, !5490, !5491, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5508, !5509, !5510}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !670, file: !671, line: 752, baseType: !674, size: 192)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !675, line: 56, size: 192, elements: !676)
!675 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!676 = !{!677, !678, !679, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !675, line: 57, baseType: !54, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !674, file: !675, line: 58, baseType: !54, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !674, file: !675, line: 59, baseType: !332, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !674, file: !675, line: 61, baseType: !332, size: 32, offset: 160)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !670, file: !671, line: 754, baseType: !23, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !670, file: !671, line: 767, baseType: !35, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !670, file: !671, line: 768, baseType: !626, size: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !671, line: 770, baseType: !23, size: 32, offset: 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !670, file: !671, line: 771, baseType: !23, size: 32, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !670, file: !671, line: 774, baseType: !37, size: 32, offset: 416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !670, file: !671, line: 775, baseType: !688, size: 128, offset: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !689, line: 58, size: 128, elements: !690)
!689 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!690 = !{!691, !692, !697, !698}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !688, file: !689, line: 59, baseType: !554, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 60, baseType: !693, size: 32, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 60, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !693, file: !689, line: 61, baseType: !23, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !693, file: !689, line: 62, baseType: !64, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !688, file: !689, line: 65, baseType: !108, size: 16, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !688, file: !689, line: 65, baseType: !108, size: 16, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !670, file: !671, line: 776, baseType: !23, size: 32, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !670, file: !671, line: 777, baseType: !54, size: 64, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !670, file: !671, line: 778, baseType: !669, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !670, file: !671, line: 787, baseType: !37, size: 32, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !670, file: !671, line: 788, baseType: !37, size: 32, offset: 800)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !670, file: !671, line: 790, baseType: !37, size: 32, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !670, file: !671, line: 792, baseType: !37, size: 32, offset: 864)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !670, file: !671, line: 793, baseType: !37, size: 32, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !670, file: !671, line: 794, baseType: !37, size: 32, offset: 928)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !670, file: !671, line: 795, baseType: !23, size: 32, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !670, file: !671, line: 797, baseType: !710, size: 2048, offset: 1024)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !671, line: 551, size: 2048, elements: !711)
!711 = !{!712, !717, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !739, !742, !743, !744}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !710, file: !671, line: 553, baseType: !713, size: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !671, line: 411, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !713, file: !671, line: 412, baseType: !54, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !713, file: !671, line: 413, baseType: !332, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !710, file: !671, line: 554, baseType: !718, size: 192, align: 64, offset: 128)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !719, line: 5, size: 192, align: 64, elements: !720)
!719 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!720 = !{!721, !722, !724}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !718, file: !719, line: 6, baseType: !54, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !718, file: !719, line: 7, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !718, file: !719, line: 8, baseType: !723, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !710, file: !671, line: 555, baseType: !402, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !710, file: !671, line: 556, baseType: !402, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !710, file: !671, line: 558, baseType: !112, size: 128, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !710, file: !671, line: 559, baseType: !23, size: 32, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !710, file: !671, line: 561, baseType: !402, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !710, file: !671, line: 562, baseType: !402, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !710, file: !671, line: 563, baseType: !402, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !710, file: !671, line: 564, baseType: !402, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !710, file: !671, line: 565, baseType: !579, size: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !710, file: !671, line: 566, baseType: !402, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !710, file: !671, line: 568, baseType: !402, size: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !710, file: !671, line: 571, baseType: !37, size: 32, offset: 1088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !710, file: !671, line: 572, baseType: !738, size: 64, offset: 1152)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !710, file: !671, line: 574, baseType: !740, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !671, line: 49, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !710, file: !671, line: 576, baseType: !740, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !710, file: !671, line: 578, baseType: !54, size: 64, offset: 1344)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !710, file: !671, line: 588, baseType: !745, size: 512, align: 512, offset: 1536)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !671, line: 497, size: 512, align: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !745, file: !671, line: 498, baseType: !402, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !745, file: !671, line: 499, baseType: !402, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !745, file: !671, line: 500, baseType: !402, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !745, file: !671, line: 501, baseType: !332, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !745, file: !671, line: 502, baseType: !332, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !745, file: !671, line: 503, baseType: !54, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !745, file: !671, line: 504, baseType: !54, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !745, file: !671, line: 505, baseType: !54, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !745, file: !671, line: 506, baseType: !756, size: 64, align: 64, offset: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !671, line: 445, size: 64, align: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !756, file: !671, line: 446, baseType: !23, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !756, file: !671, line: 447, baseType: !23, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !670, file: !671, line: 798, baseType: !761, size: 384, offset: 3072)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !671, line: 592, size: 384, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !761, file: !671, line: 593, baseType: !112, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !761, file: !671, line: 594, baseType: !54, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !761, file: !671, line: 595, baseType: !54, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !761, file: !671, line: 596, baseType: !23, size: 32, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !761, file: !671, line: 597, baseType: !41, size: 16, offset: 288)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !761, file: !671, line: 598, baseType: !41, size: 16, offset: 304)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !761, file: !671, line: 600, baseType: !770, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !670, file: !671, line: 799, baseType: !772, size: 1792, offset: 3456)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !671, line: 610, size: 1792, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !863, !864}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !772, file: !671, line: 611, baseType: !718, size: 192, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !772, file: !671, line: 618, baseType: !402, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !772, file: !671, line: 619, baseType: !402, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !772, file: !671, line: 620, baseType: !402, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !772, file: !671, line: 621, baseType: !402, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !772, file: !671, line: 622, baseType: !402, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !772, file: !671, line: 629, baseType: !579, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !772, file: !671, line: 630, baseType: !402, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !671, line: 631, baseType: !23, size: 32, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !772, file: !671, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !772, file: !671, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !772, file: !671, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !772, file: !671, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !772, file: !671, line: 662, baseType: !788, size: 512, offset: 704)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !789)
!789 = !{!790, !798, !799, !804, !859, !860, !861, !862}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !788, file: !22, line: 119, baseType: !791, size: 256)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !792, line: 9, size: 256, elements: !793)
!792 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !791, file: !792, line: 10, baseType: !718, size: 192, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !791, file: !792, line: 11, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !797, line: 29, baseType: !579)
!797 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !788, file: !22, line: 120, baseType: !796, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !788, file: !22, line: 121, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!21, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !788, file: !22, line: 122, baseType: !805, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !807)
!807 = !{!808, !833, !834, !837, !842, !843, !854, !858}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !806, file: !22, line: 160, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !22, line: 216, baseType: !586, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !810, file: !22, line: 217, baseType: !23, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !810, file: !22, line: 218, baseType: !23, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !810, file: !22, line: 219, baseType: !23, size: 32, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !810, file: !22, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !810, file: !22, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !810, file: !22, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !810, file: !22, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !810, file: !22, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !810, file: !22, line: 226, baseType: !23, size: 32, offset: 160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !810, file: !22, line: 227, baseType: !41, size: 16, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !810, file: !22, line: 228, baseType: !41, size: 16, offset: 208)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !810, file: !22, line: 229, baseType: !23, size: 32, offset: 224)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !810, file: !22, line: 235, baseType: !796, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !810, file: !22, line: 236, baseType: !803, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !810, file: !22, line: 237, baseType: !796, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !810, file: !22, line: 238, baseType: !803, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !810, file: !22, line: 239, baseType: !830, size: 4096, align: 512, offset: 512)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 4096, align: 512, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !806, file: !22, line: 161, baseType: !23, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !806, file: !22, line: 162, baseType: !835, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !40, line: 32, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !52, line: 96, baseType: !37)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !806, file: !22, line: 163, baseType: !838, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !373, line: 274, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !373, line: 274, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !839, file: !373, line: 274, baseType: !377, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !806, file: !22, line: 164, baseType: !803, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !806, file: !22, line: 165, baseType: !844, size: 128, offset: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !792, line: 14, size: 128, elements: !845)
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !844, file: !792, line: 15, baseType: !847, size: 128)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !719, line: 26, size: 128, elements: !848)
!848 = !{!849, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !847, file: !719, line: 27, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !719, line: 12, size: 64, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !850, file: !719, line: 13, baseType: !723, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !847, file: !719, line: 28, baseType: !723, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !806, file: !22, line: 166, baseType: !855, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!796}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !806, file: !22, line: 167, baseType: !796, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !788, file: !22, line: 123, baseType: !98, size: 8, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !788, file: !22, line: 124, baseType: !98, size: 8, offset: 456)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !788, file: !22, line: 125, baseType: !98, size: 8, offset: 464)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !788, file: !22, line: 126, baseType: !98, size: 8, offset: 472)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !772, file: !671, line: 671, baseType: !788, size: 512, offset: 1216)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !772, file: !671, line: 679, baseType: !865, size: 64, offset: 1728)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !670, file: !671, line: 800, baseType: !867, size: 64, offset: 5248)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !671, line: 800, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !670, file: !671, line: 809, baseType: !871, size: 64, offset: 5312)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !671, line: 70, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !670, file: !671, line: 825, baseType: !874, size: 2048, align: 512, offset: 5632)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !671, line: 509, size: 2048, align: 512, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !874, file: !671, line: 511, baseType: !402, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !874, file: !671, line: 512, baseType: !402, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !874, file: !671, line: 513, baseType: !402, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !874, file: !671, line: 514, baseType: !402, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !874, file: !671, line: 515, baseType: !402, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !874, file: !671, line: 516, baseType: !402, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !874, file: !671, line: 518, baseType: !402, size: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !874, file: !671, line: 519, baseType: !402, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !874, file: !671, line: 520, baseType: !579, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !874, file: !671, line: 522, baseType: !402, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !874, file: !671, line: 523, baseType: !402, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !874, file: !671, line: 524, baseType: !579, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !874, file: !671, line: 526, baseType: !579, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !874, file: !671, line: 527, baseType: !402, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !874, file: !671, line: 529, baseType: !402, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !874, file: !671, line: 530, baseType: !402, size: 64, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !874, file: !671, line: 531, baseType: !402, size: 64, offset: 1024)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !874, file: !671, line: 532, baseType: !402, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !874, file: !671, line: 533, baseType: !402, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !874, file: !671, line: 535, baseType: !402, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !874, file: !671, line: 536, baseType: !402, size: 64, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !874, file: !671, line: 537, baseType: !402, size: 64, offset: 1344)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !874, file: !671, line: 538, baseType: !402, size: 64, offset: 1408)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !874, file: !671, line: 539, baseType: !402, size: 64, offset: 1472)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !874, file: !671, line: 540, baseType: !402, size: 64, offset: 1536)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !874, file: !671, line: 541, baseType: !402, size: 64, offset: 1600)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !874, file: !671, line: 542, baseType: !402, size: 64, offset: 1664)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !874, file: !671, line: 543, baseType: !402, size: 64, offset: 1728)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !670, file: !671, line: 833, baseType: !23, size: 32, offset: 7680)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !670, file: !671, line: 836, baseType: !23, size: 32, offset: 7712)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !670, file: !671, line: 837, baseType: !37, size: 32, offset: 7744)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !670, file: !671, line: 838, baseType: !908, size: 64, offset: 7808)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !911, line: 19, baseType: !912)
!911 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !911, line: 19, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !912, file: !911, line: 19, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !17)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !670, file: !671, line: 839, baseType: !917, size: 64, offset: 7872)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !670, file: !671, line: 840, baseType: !910, size: 64, offset: 7936)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !670, file: !671, line: 841, baseType: !35, size: 64, offset: 8000)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !670, file: !671, line: 843, baseType: !41, size: 16, offset: 8064)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !670, file: !671, line: 845, baseType: !41, size: 16, offset: 8080)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !670, file: !671, line: 848, baseType: !37, size: 32, offset: 8096)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !670, file: !671, line: 849, baseType: !924, size: 32, offset: 8128)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !671, line: 718, size: 32, elements: !925)
!925 = !{!926, !933}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !924, file: !671, line: 724, baseType: !927, size: 32)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !671, line: 719, size: 32, elements: !928)
!928 = !{!929, !930, !931, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !927, file: !671, line: 720, baseType: !98, size: 8)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !927, file: !671, line: 721, baseType: !98, size: 8, offset: 8)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !927, file: !671, line: 722, baseType: !98, size: 8, offset: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !927, file: !671, line: 723, baseType: !98, size: 8, offset: 24)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !924, file: !671, line: 725, baseType: !332, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !670, file: !671, line: 850, baseType: !112, size: 128, offset: 8192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !670, file: !671, line: 851, baseType: !936, size: 64, offset: 8320)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !671, line: 60, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !670, file: !671, line: 855, baseType: !54, size: 64, offset: 8384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !670, file: !671, line: 856, baseType: !98, size: 8, offset: 8448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !670, file: !671, line: 857, baseType: !98, size: 8, offset: 8456)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !670, file: !671, line: 858, baseType: !37, size: 32, offset: 8480)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !670, file: !671, line: 859, baseType: !112, size: 128, offset: 8512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !670, file: !671, line: 860, baseType: !37, size: 32, offset: 8640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !670, file: !671, line: 861, baseType: !112, size: 128, offset: 8704)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !670, file: !671, line: 873, baseType: !946, size: 256, offset: 8832)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !671, line: 376, size: 256, elements: !947)
!947 = !{!948, !949, !950, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !946, file: !671, line: 381, baseType: !54, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !946, file: !671, line: 384, baseType: !404, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !946, file: !671, line: 389, baseType: !404, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !946, file: !671, line: 392, baseType: !404, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !670, file: !671, line: 875, baseType: !112, size: 128, offset: 9088)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !670, file: !671, line: 877, baseType: !954, size: 320, offset: 9216)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !955, line: 86, size: 320, elements: !956)
!955 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !954, file: !955, line: 87, baseType: !37, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !954, file: !955, line: 88, baseType: !112, size: 128, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !954, file: !955, line: 89, baseType: !112, size: 128, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !670, file: !671, line: 878, baseType: !718, size: 192, align: 64, offset: 9536)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !670, file: !671, line: 881, baseType: !962, size: 64, offset: 9728)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !129, line: 733, size: 10240, elements: !964)
!964 = !{!965, !1391}
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !129, line: 734, baseType: !966, size: 10240)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !129, line: 734, size: 10240, elements: !967)
!967 = !{!968, !972, !985, !989, !990, !991, !992, !993, !994, !1003, !1004, !1005, !1011, !1012, !1013, !1014, !1015, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1052, !1064, !1067, !1115, !1116, !1117, !1120, !1377, !1378, !1381, !1382, !1383, !1389, !1390}
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !129, line: 739, baseType: !969, size: 512, align: 512)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !129, line: 739, size: 512, align: 512, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !969, file: !129, line: 747, baseType: !64, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !966, file: !129, line: 750, baseType: !973, size: 128, offset: 512)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !974, line: 218, size: 128, elements: !975)
!974 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!975 = !{!976, !983, !984}
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !974, line: 219, baseType: !977, size: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !974, line: 219, size: 32, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !977, file: !974, line: 220, baseType: !74, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !977, file: !974, line: 221, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !974, line: 197, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 197, elements: !350)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !973, file: !974, line: 223, baseType: !23, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !973, file: !974, line: 224, baseType: !35, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !966, file: !129, line: 752, baseType: !986, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!54, !547, !54, !54, !54, !54}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !966, file: !129, line: 756, baseType: !54, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !966, file: !129, line: 757, baseType: !54, size: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !966, file: !129, line: 760, baseType: !54, size: 64, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !966, file: !129, line: 761, baseType: !54, size: 64, offset: 896)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !966, file: !129, line: 763, baseType: !54, size: 64, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !966, file: !129, line: 764, baseType: !995, size: 64, offset: 1024)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !997, line: 299, baseType: !998)
!997 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 299, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !998, file: !997, line: 299, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1002, line: 18, baseType: !54)
!1002 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !966, file: !129, line: 773, baseType: !64, size: 32, offset: 1088)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !966, file: !129, line: 785, baseType: !64, size: 32, offset: 1120)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !966, file: !129, line: 795, baseType: !1006, size: 64, offset: 1152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !129, line: 726, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1007, file: !129, line: 727, baseType: !402, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1007, file: !129, line: 728, baseType: !37, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !966, file: !129, line: 801, baseType: !54, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !966, file: !129, line: 804, baseType: !573, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !966, file: !129, line: 806, baseType: !37, size: 32, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !966, file: !129, line: 808, baseType: !74, size: 32, offset: 1376)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !966, file: !129, line: 823, baseType: !1016, size: 320, offset: 1408)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1017, line: 48, size: 320, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1018 = !{!1019, !1020, !1021, !1022, !1023}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1016, file: !1017, line: 49, baseType: !573, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1016, file: !1017, line: 55, baseType: !573, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1016, file: !1017, line: 57, baseType: !588, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1016, file: !1017, line: 59, baseType: !586, size: 32, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1016, file: !1017, line: 60, baseType: !112, size: 128, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !966, file: !129, line: 825, baseType: !112, size: 128, offset: 1728)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !966, file: !129, line: 845, baseType: !37, size: 32, offset: 1856)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !966, file: !129, line: 849, baseType: !54, size: 64, offset: 1920)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !966, file: !129, line: 850, baseType: !54, size: 64, offset: 1984)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !966, file: !129, line: 852, baseType: !54, size: 64, offset: 2048)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !966, file: !129, line: 853, baseType: !54, size: 64, offset: 2112)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !966, file: !129, line: 854, baseType: !575, size: 64, offset: 2176)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !966, file: !129, line: 855, baseType: !54, size: 64, offset: 2240)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !966, file: !129, line: 856, baseType: !54, size: 64, offset: 2304)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !966, file: !129, line: 857, baseType: !54, size: 64, offset: 2368)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !966, file: !129, line: 858, baseType: !54, size: 64, offset: 2432)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !966, file: !129, line: 865, baseType: !377, size: 32, offset: 2496)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !966, file: !129, line: 867, baseType: !74, size: 32, offset: 2528)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !966, file: !129, line: 869, baseType: !54, size: 64, offset: 2560)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !966, file: !129, line: 869, baseType: !54, size: 64, offset: 2624)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !966, file: !129, line: 869, baseType: !54, size: 64, offset: 2688)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !966, file: !129, line: 869, baseType: !54, size: 64, offset: 2752)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !966, file: !129, line: 870, baseType: !54, size: 64, offset: 2816)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !966, file: !129, line: 870, baseType: !54, size: 64, offset: 2880)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !966, file: !129, line: 870, baseType: !54, size: 64, offset: 2944)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !966, file: !129, line: 871, baseType: !54, size: 64, offset: 3008)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !966, file: !129, line: 871, baseType: !54, size: 64, offset: 3072)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !966, file: !129, line: 871, baseType: !54, size: 64, offset: 3136)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !966, file: !129, line: 871, baseType: !54, size: 64, offset: 3200)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !966, file: !129, line: 873, baseType: !1049, size: 3328, offset: 3264)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 3328, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 52)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !966, file: !129, line: 875, baseType: !1053, size: 1280, offset: 6592)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, size: 1280, elements: !638)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1055, line: 22, size: 320, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !1055, line: 23, baseType: !586, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1054, file: !1055, line: 24, baseType: !579, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1054, file: !1055, line: 26, baseType: !112, size: 128, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1054, file: !1055, line: 28, baseType: !1061, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !37)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !966, file: !129, line: 877, baseType: !1065, size: 64, offset: 7872)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !129, line: 877, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !966, file: !129, line: 880, baseType: !1068, size: 1088, offset: 7936)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1069, line: 72, baseType: !1070)
!1069 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 23, size: 1088, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1082, !1109, !1110, !1111}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1070, file: !1069, line: 28, baseType: !402, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1070, file: !1069, line: 38, baseType: !575, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1070, file: !1069, line: 40, baseType: !54, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1070, file: !1069, line: 43, baseType: !1016, size: 320, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1070, file: !1069, line: 44, baseType: !1077, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1069, line: 44, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !1069, line: 48, baseType: !54, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1070, file: !1069, line: 59, baseType: !581, size: 256, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1070, file: !1069, line: 60, baseType: !35, size: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1070, file: !1069, line: 61, baseType: !1083, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1086, line: 13, size: 1216, elements: !1087)
!1086 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1085, file: !1086, line: 14, baseType: !35, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1085, file: !1086, line: 15, baseType: !54, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1085, file: !1086, line: 17, baseType: !54, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1085, file: !1086, line: 17, baseType: !54, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1085, file: !1086, line: 18, baseType: !54, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1085, file: !1086, line: 18, baseType: !54, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1085, file: !1086, line: 19, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1085, file: !1086, line: 21, baseType: !543, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1085, file: !1086, line: 23, baseType: !543, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1085, file: !1086, line: 24, baseType: !543, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1085, file: !1086, line: 25, baseType: !543, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1085, file: !1086, line: 26, baseType: !543, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1085, file: !1086, line: 27, baseType: !543, size: 64, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1085, file: !1086, line: 28, baseType: !543, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1085, file: !1086, line: 29, baseType: !543, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1085, file: !1086, line: 30, baseType: !543, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1085, file: !1086, line: 31, baseType: !543, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1085, file: !1086, line: 32, baseType: !543, size: 64, offset: 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1085, file: !1086, line: 33, baseType: !543, size: 64, offset: 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1070, file: !1069, line: 63, baseType: !64, size: 32, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1070, file: !1069, line: 69, baseType: !108, size: 16, offset: 1056)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1070, file: !1069, line: 70, baseType: !1112, size: 16, offset: 1072)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !1114)
!1114 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !129, line: 882, baseType: !54, size: 64, offset: 9024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !966, file: !129, line: 885, baseType: !74, size: 32, offset: 9088)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !966, file: !129, line: 886, baseType: !1118, size: 64, offset: 9152)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !129, line: 732, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !966, file: !129, line: 901, baseType: !1121, size: 64, offset: 9216)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1123, line: 68, size: 4800, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1124 = !{!1125, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1164, !1165, !1166, !1167, !1275, !1276, !1288, !1358, !1359, !1373, !1375}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1122, file: !1123, line: 69, baseType: !1126, size: 576)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1123, line: 23, size: 576, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1126, file: !1123, line: 24, baseType: !332, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1123, line: 25, baseType: !1130, size: 512, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1123, line: 25, size: 512, elements: !1131)
!1131 = !{!1132, !1141}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1130, file: !1123, line: 26, baseType: !1133, size: 480)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 480, elements: !1139)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1123, line: 17, size: 96, elements: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1134, file: !1123, line: 18, baseType: !332, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1134, file: !1123, line: 19, baseType: !332, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1134, file: !1123, line: 20, baseType: !332, size: 32, offset: 64)
!1139 = !{!1140}
!1140 = !DISubrange(count: 5)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !1123, line: 27, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1123, line: 27, size: 128, elements: !1143)
!1143 = !{!1144, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1142, file: !1123, line: 28, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1142, file: !1123, line: 29, baseType: !1145, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1122, file: !1123, line: 70, baseType: !1126, size: 576, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1122, file: !1123, line: 71, baseType: !1126, size: 576, offset: 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1122, file: !1123, line: 72, baseType: !1121, size: 64, offset: 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1122, file: !1123, line: 73, baseType: !37, size: 32, offset: 1792)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1122, file: !1123, line: 74, baseType: !415, size: 32, offset: 1824)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1122, file: !1123, line: 75, baseType: !424, size: 32, offset: 1856)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1122, file: !1123, line: 76, baseType: !1154, size: 192, offset: 1920)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1155, line: 9, size: 192, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1156 = !{!1157, !1158, !1162, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1154, file: !1155, line: 10, baseType: !573, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1154, file: !1155, line: 11, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1155, line: 7, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1154, file: !1155, line: 12, baseType: !23, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1154, file: !1155, line: 13, baseType: !626, size: 32, offset: 160)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !1123, line: 77, baseType: !54, size: 64, offset: 2112)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1122, file: !1123, line: 80, baseType: !468, size: 8, offset: 2176)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1122, file: !1123, line: 88, baseType: !112, size: 128, offset: 2240)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1122, file: !1123, line: 89, baseType: !1168, size: 64, offset: 2368)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1170, line: 195, size: 1728, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1171 = !{!1172, !1173, !1176, !1181, !1182, !1185, !1186, !1191, !1192, !1193, !1194, !1197, !1198, !1199, !1200, !1201, !1239, !1260}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1169, file: !1170, line: 196, baseType: !626, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1169, file: !1170, line: 197, baseType: !1174, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1170, line: 28, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !40, line: 104, baseType: !1062)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1170, line: 198, baseType: !1177, size: 192, offset: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1170, line: 198, size: 192, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1177, file: !1170, line: 199, baseType: !112, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1177, file: !1170, line: 200, baseType: !718, size: 192, align: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1169, file: !1170, line: 205, baseType: !1016, size: 320, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1169, file: !1170, line: 206, baseType: !1183, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1170, line: 206, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1169, file: !1170, line: 207, baseType: !35, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1170, line: 208, baseType: !1187, size: 64, offset: 704)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1170, line: 208, size: 64, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1187, file: !1170, line: 209, baseType: !540, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1187, file: !1170, line: 210, baseType: !540, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1169, file: !1170, line: 212, baseType: !540, size: 64, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1169, file: !1170, line: 213, baseType: !415, size: 32, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1169, file: !1170, line: 214, baseType: !424, size: 32, offset: 864)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1169, file: !1170, line: 215, baseType: !1195, size: 32, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1170, line: 31, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 110, baseType: !332)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1169, file: !1170, line: 216, baseType: !41, size: 16, offset: 928)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1169, file: !1170, line: 217, baseType: !41, size: 16, offset: 944)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1169, file: !1170, line: 221, baseType: !1114, size: 16, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !1170, line: 228, baseType: !54, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1170, line: 245, baseType: !1202, size: 320, offset: 1088)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1170, line: 245, size: 320, elements: !1203)
!1203 = !{!1204, !1231}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1202, file: !1170, line: 246, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1170, line: 114, size: 320, elements: !1206)
!1206 = !{!1207, !1208, !1220, !1223, !1230}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1205, file: !1170, line: 116, baseType: !54, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1170, line: 117, baseType: !1209, size: 64, offset: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1170, line: 117, size: 64, elements: !1210)
!1210 = !{!1211, !1219}
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1170, line: 118, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1209, file: !1170, line: 118, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1212, file: !1170, line: 120, baseType: !108, size: 16)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1212, file: !1170, line: 121, baseType: !1216, size: 48, offset: 16)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 6)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1209, file: !1170, line: 127, baseType: !54, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1205, file: !1170, line: 129, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1170, line: 102, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1205, file: !1170, line: 130, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1170, line: 108, size: 192, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1225, file: !1170, line: 109, baseType: !560, size: 128, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1225, file: !1170, line: 110, baseType: !626, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1225, file: !1170, line: 111, baseType: !468, size: 8, offset: 160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1205, file: !1170, line: 131, baseType: !32, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1170, line: 247, baseType: !1232, size: 320)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1170, line: 247, size: 320, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1232, file: !1170, line: 248, baseType: !54, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1232, file: !1170, line: 249, baseType: !54, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1232, file: !1170, line: 250, baseType: !1221, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1232, file: !1170, line: 251, baseType: !1224, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1232, file: !1170, line: 252, baseType: !474, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1170, line: 260, baseType: !1240, size: 256, offset: 1408)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1170, line: 260, size: 256, elements: !1241)
!1241 = !{!1242, !1248}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1240, file: !1170, line: 261, baseType: !1243, size: 256)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1170, line: 134, size: 256, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1243, file: !1170, line: 135, baseType: !35, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1243, file: !1170, line: 136, baseType: !1247, size: 256)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !638)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1170, line: 262, baseType: !1249, size: 256)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !1170, line: 262, size: 256, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1249, file: !1170, line: 264, baseType: !112, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1249, file: !1170, line: 265, baseType: !1253, size: 128, offset: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1254, line: 22, size: 128, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1255 = !{!1256, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1253, file: !1254, line: 23, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1254, line: 23, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1253, file: !1254, line: 24, baseType: !54, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1169, file: !1170, line: 280, baseType: !1261, size: 64, offset: 1664)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1170, line: 176, size: 192, elements: !1263)
!1263 = !{!1264, !1273, !1274}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1262, file: !1170, line: 177, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1170, line: 171, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!37, !1168, !1269, !1271, !1168}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1262, file: !1170, line: 178, baseType: !1168, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1262, file: !1170, line: 179, baseType: !1221, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1122, file: !1123, line: 90, baseType: !1016, size: 320, offset: 2432)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1122, file: !1123, line: 97, baseType: !1277, size: 256, offset: 2752)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1278, line: 98, size: 256, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1277, file: !1278, line: 99, baseType: !573, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1277, file: !1278, line: 100, baseType: !112, size: 128, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1277, file: !1278, line: 101, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1278, line: 21, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1122, file: !1123, line: 99, baseType: !1289, size: 768, offset: 3008)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !28, line: 199, size: 768, elements: !1290)
!1290 = !{!1291, !1296}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1289, file: !28, line: 200, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!37, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1289, file: !28, line: 201, baseType: !1297, size: 704, offset: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !28, line: 193, size: 704, elements: !1298)
!1298 = !{!1299, !1357}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1297, file: !28, line: 195, baseType: !1300, size: 640)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !28, line: 173, size: 640, elements: !1301)
!1301 = !{!1302, !1314, !1326, !1327, !1347, !1348, !1350, !1356}
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !28, line: 174, baseType: !1303, size: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !28, line: 174, size: 192, elements: !1304)
!1304 = !{!1305, !1313}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !28, line: 175, baseType: !1306, size: 192)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1303, file: !28, line: 175, size: 192, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1306, file: !28, line: 176, baseType: !48, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1306, file: !28, line: 177, baseType: !37, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1306, file: !28, line: 178, baseType: !37, size: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1306, file: !28, line: 179, baseType: !37, size: 32, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1306, file: !28, line: 180, baseType: !37, size: 32, offset: 160)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1303, file: !28, line: 182, baseType: !560, size: 128, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1300, file: !28, line: 184, baseType: !1315, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1317, line: 26, size: 256, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1316, file: !1317, line: 27, baseType: !23, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1316, file: !1317, line: 28, baseType: !1321, size: 192, offset: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1322, line: 43, size: 192, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1321, file: !1322, line: 44, baseType: !586, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1321, file: !1322, line: 45, baseType: !112, size: 128, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1300, file: !28, line: 185, baseType: !48, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1300, file: !28, line: 186, baseType: !1328, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !28, line: 204, size: 960, elements: !1330)
!1330 = !{!1331, !1332, !1336, !1343}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1329, file: !28, line: 205, baseType: !1289, size: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1329, file: !28, line: 206, baseType: !1333, size: 64, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1295, !1328}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1329, file: !28, line: 207, baseType: !1337, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1329, file: !28, line: 209, baseType: !1344, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!37, !1340, !48}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1300, file: !28, line: 187, baseType: !1295, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1300, file: !28, line: 188, baseType: !1349, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1300, file: !28, line: 189, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !28, line: 157, size: 256, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1352, file: !28, line: 158, baseType: !718, size: 192, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1352, file: !28, line: 159, baseType: !1340, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1300, file: !28, line: 190, baseType: !635, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1297, file: !28, line: 196, baseType: !850, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1122, file: !1123, line: 100, baseType: !1340, size: 64, offset: 3776)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1122, file: !1123, line: 102, baseType: !1360, size: 64, offset: 3840)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1123, line: 107, size: 1152, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1371}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1361, file: !1123, line: 108, baseType: !358, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1361, file: !1123, line: 109, baseType: !1121, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1361, file: !1123, line: 110, baseType: !415, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1361, file: !1123, line: 111, baseType: !64, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1361, file: !1123, line: 112, baseType: !1368, size: 640, offset: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 640, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 10)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1361, file: !1123, line: 113, baseType: !1372, size: 256, offset: 896)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 256, elements: !638)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1122, file: !1123, line: 103, baseType: !1374, size: 640, offset: 3904)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 640, elements: !1369)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1122, file: !1123, line: 104, baseType: !1376, size: 256, offset: 4544)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 256, elements: !638)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !966, file: !129, line: 904, baseType: !547, size: 64, offset: 9280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !966, file: !129, line: 906, baseType: !1379, size: 64, offset: 9344)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !129, line: 906, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !966, file: !129, line: 930, baseType: !64, size: 32, offset: 9408)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !966, file: !129, line: 933, baseType: !64, size: 32, offset: 9440)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !966, file: !129, line: 935, baseType: !1384, size: 64, offset: 9472)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !160, line: 103, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1384, file: !160, line: 104, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !160, line: 101, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !966, file: !129, line: 940, baseType: !573, size: 64, offset: 9536)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !966, file: !129, line: 942, baseType: !1277, size: 256, offset: 9600)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !963, file: !129, line: 986, baseType: !1392, offset: 10240)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !318)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !670, file: !671, line: 882, baseType: !962, size: 64, offset: 9792)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !670, file: !671, line: 884, baseType: !37, size: 32, offset: 9856)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !670, file: !671, line: 885, baseType: !37, size: 32, offset: 9888)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !670, file: !671, line: 886, baseType: !37, size: 32, offset: 9920)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !670, file: !671, line: 888, baseType: !37, size: 32, offset: 9952)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !670, file: !671, line: 890, baseType: !54, size: 64, offset: 9984)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !670, file: !671, line: 893, baseType: !23, size: 32, offset: 10048)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !670, file: !671, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !670, file: !671, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !670, file: !671, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !670, file: !671, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !670, file: !671, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !670, file: !671, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !670, file: !671, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !670, file: !671, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !670, file: !671, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !670, file: !671, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !670, file: !671, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !670, file: !671, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !670, file: !671, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !670, file: !671, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !670, file: !671, line: 969, baseType: !54, size: 64, offset: 10176)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !670, file: !671, line: 971, baseType: !1416, size: 448, offset: 10240)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !123, line: 25, size: 448, elements: !1417)
!1417 = !{!1418, !1419, !1424}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1416, file: !123, line: 26, baseType: !54, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1416, file: !123, line: 27, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!543, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !123, line: 28, baseType: !1425, size: 320, offset: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !123, line: 28, size: 320, elements: !1426)
!1426 = !{!1427, !1437, !1462}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1425, file: !123, line: 37, baseType: !1428, size: 320)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !123, line: 30, size: 320, elements: !1429)
!1429 = !{!1430, !1432, !1433, !1434, !1435, !1436}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1428, file: !123, line: 31, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1428, file: !123, line: 32, baseType: !332, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1428, file: !123, line: 33, baseType: !332, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1428, file: !123, line: 34, baseType: !332, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1428, file: !123, line: 35, baseType: !402, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1428, file: !123, line: 36, baseType: !1431, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1425, file: !123, line: 47, baseType: !1438, size: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !123, line: 39, size: 192, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1461}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1438, file: !123, line: 40, baseType: !835, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1438, file: !123, line: 41, baseType: !122, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !123, line: 42, baseType: !1443, size: 64, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !123, line: 42, size: 64, elements: !1444)
!1444 = !{!1445, !1453}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1443, file: !123, line: 43, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1448, line: 7, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1449 = !{!1450, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1447, file: !1448, line: 8, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !52, line: 93, baseType: !58)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1447, file: !1448, line: 9, baseType: !58, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1443, file: !123, line: 44, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1456, line: 7, size: 64, elements: !1457)
!1456 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1457 = !{!1458, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1455, file: !1456, line: 8, baseType: !1459, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1456, line: 5, baseType: !1062)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1455, file: !1456, line: 9, baseType: !1062, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1438, file: !123, line: 46, baseType: !402, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1425, file: !123, line: 55, baseType: !1463, size: 256)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !123, line: 49, size: 256, elements: !1464)
!1464 = !{!1465, !1473, !1474, !1475, !1476}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1463, file: !123, line: 50, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1468, line: 36, size: 64, elements: !1469)
!1468 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1467, file: !1468, line: 37, baseType: !37, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1467, file: !1468, line: 38, baseType: !1114, size: 16, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1467, file: !1468, line: 39, baseType: !1114, size: 16, offset: 48)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1463, file: !123, line: 51, baseType: !37, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1463, file: !123, line: 52, baseType: !37, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1463, file: !123, line: 53, baseType: !54, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1463, file: !123, line: 54, baseType: !54, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !670, file: !671, line: 973, baseType: !1478, size: 32, offset: 10688)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !40, line: 27, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !52, line: 28, baseType: !37)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !670, file: !671, line: 974, baseType: !1478, size: 32, offset: 10720)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !670, file: !671, line: 978, baseType: !54, size: 64, offset: 10752)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !670, file: !671, line: 987, baseType: !669, size: 64, offset: 10816)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !670, file: !671, line: 990, baseType: !669, size: 64, offset: 10880)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !670, file: !671, line: 995, baseType: !112, size: 128, offset: 10944)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !670, file: !671, line: 996, baseType: !112, size: 128, offset: 11072)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !670, file: !671, line: 997, baseType: !669, size: 64, offset: 11200)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !670, file: !671, line: 1005, baseType: !112, size: 128, offset: 11264)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !670, file: !671, line: 1006, baseType: !112, size: 128, offset: 11392)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !670, file: !671, line: 1009, baseType: !622, size: 64, offset: 11520)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !670, file: !671, line: 1010, baseType: !1491, size: 512, offset: 11584)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 512, elements: !638)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !670, file: !671, line: 1011, baseType: !112, size: 128, offset: 12096)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !670, file: !671, line: 1012, baseType: !112, size: 128, offset: 12224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !670, file: !671, line: 1014, baseType: !1315, size: 64, offset: 12352)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !670, file: !671, line: 1017, baseType: !320, size: 64, offset: 12416)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !670, file: !671, line: 1020, baseType: !320, size: 64, offset: 12480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !670, file: !671, line: 1023, baseType: !35, size: 64, offset: 12544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !670, file: !671, line: 1025, baseType: !402, size: 64, offset: 12608)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !670, file: !671, line: 1026, baseType: !402, size: 64, offset: 12672)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !670, file: !671, line: 1031, baseType: !402, size: 64, offset: 12736)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !670, file: !671, line: 1032, baseType: !1502, size: 192, offset: 12800)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !671, line: 324, size: 192, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1502, file: !671, line: 326, baseType: !402, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1502, file: !671, line: 327, baseType: !402, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !671, line: 328, baseType: !586, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !670, file: !671, line: 1041, baseType: !54, size: 64, offset: 12992)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !670, file: !671, line: 1042, baseType: !54, size: 64, offset: 13056)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !670, file: !671, line: 1045, baseType: !402, size: 64, offset: 13120)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !670, file: !671, line: 1048, baseType: !402, size: 64, offset: 13184)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !670, file: !671, line: 1051, baseType: !54, size: 64, offset: 13248)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !670, file: !671, line: 1052, baseType: !54, size: 64, offset: 13312)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !670, file: !671, line: 1055, baseType: !1514, size: 640, offset: 13376)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1515, line: 132, size: 640, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1516 = !{!1517, !1523, !1524}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1514, file: !1515, line: 133, baseType: !1518, size: 576)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 576, elements: !618)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1515, line: 117, size: 192, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1519, file: !1515, line: 118, baseType: !402, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1519, file: !1515, line: 119, baseType: !844, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1514, file: !1515, line: 134, baseType: !23, size: 32, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1514, file: !1515, line: 135, baseType: !23, size: 32, offset: 608)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !670, file: !671, line: 1058, baseType: !1526, size: 448, offset: 14016)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1515, line: 144, size: 448, elements: !1527)
!1527 = !{!1528, !1529, !1530}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1526, file: !1515, line: 145, baseType: !560, size: 128, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1526, file: !1515, line: 146, baseType: !581, size: 256, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1526, file: !1515, line: 147, baseType: !23, size: 32, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !670, file: !671, line: 1064, baseType: !1532, size: 64, offset: 14464)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1535, line: 110, size: 1472, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1585, !1586, !1587, !1595}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1534, file: !1535, line: 111, baseType: !573, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1534, file: !1535, line: 112, baseType: !415, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1534, file: !1535, line: 113, baseType: !424, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1534, file: !1535, line: 114, baseType: !415, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1534, file: !1535, line: 115, baseType: !424, size: 32, offset: 160)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1534, file: !1535, line: 116, baseType: !415, size: 32, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1534, file: !1535, line: 117, baseType: !424, size: 32, offset: 224)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1534, file: !1535, line: 118, baseType: !415, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1534, file: !1535, line: 119, baseType: !424, size: 32, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1534, file: !1535, line: 120, baseType: !23, size: 32, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1534, file: !1535, line: 121, baseType: !1548, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !463, line: 24, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 24, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1549, file: !463, line: 24, baseType: !402, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1534, file: !1535, line: 122, baseType: !1548, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1534, file: !1535, line: 123, baseType: !1548, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1534, file: !1535, line: 124, baseType: !1548, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1534, file: !1535, line: 125, baseType: !1548, size: 64, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1534, file: !1535, line: 127, baseType: !102, size: 8, offset: 704)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1534, file: !1535, line: 129, baseType: !1168, size: 64, offset: 768)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1534, file: !1535, line: 130, baseType: !1168, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1534, file: !1535, line: 131, baseType: !1168, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1534, file: !1535, line: 132, baseType: !1168, size: 64, offset: 960)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1534, file: !1535, line: 135, baseType: !35, size: 64, offset: 1024)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1534, file: !1535, line: 137, baseType: !1563, size: 64, offset: 1088)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1565, line: 14, size: 1088, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1564, file: !1565, line: 15, baseType: !626, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1564, file: !1565, line: 17, baseType: !1054, size: 320, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1564, file: !1565, line: 19, baseType: !54, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1564, file: !1565, line: 20, baseType: !573, size: 64, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1564, file: !1565, line: 23, baseType: !358, size: 128, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1564, file: !1565, line: 24, baseType: !415, size: 32, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1564, file: !1565, line: 29, baseType: !573, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1564, file: !1565, line: 36, baseType: !1575, size: 320, offset: 768)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1576, line: 15, size: 320, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !1576, line: 16, baseType: !586, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1575, file: !1576, line: 18, baseType: !37, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1575, file: !1576, line: 19, baseType: !37, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1575, file: !1576, line: 20, baseType: !37, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1575, file: !1576, line: 21, baseType: !37, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1575, file: !1576, line: 22, baseType: !54, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1576, line: 23, baseType: !54, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1534, file: !1535, line: 138, baseType: !1121, size: 64, offset: 1152)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1534, file: !1535, line: 139, baseType: !1360, size: 64, offset: 1216)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1534, file: !1535, line: 140, baseType: !1588, size: 64, offset: 1280)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1535, line: 25, size: 64, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1535, line: 26, baseType: !64, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1589, file: !1535, line: 27, baseType: !37, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1535, line: 28, baseType: !1594, offset: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, elements: !318)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1535, line: 142, baseType: !1596, size: 128, offset: 1344)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1535, line: 142, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1596, file: !1535, line: 143, baseType: !37, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1596, file: !1535, line: 144, baseType: !560, size: 128, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !670, file: !671, line: 1067, baseType: !1532, size: 64, offset: 14528)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !670, file: !671, line: 1070, baseType: !1532, size: 64, offset: 14592)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !670, file: !671, line: 1074, baseType: !1168, size: 64, offset: 14656)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !670, file: !671, line: 1084, baseType: !1604, size: 128, offset: 14720)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1605)
!1605 = !{!1606}
!1606 = !DISubrange(count: 16)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !670, file: !671, line: 1086, baseType: !1608, size: 64, offset: 14848)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !671, line: 55, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !670, file: !671, line: 1089, baseType: !1611, size: 64, offset: 14912)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1612, line: 12, size: 64, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1611, file: !1612, line: 13, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1612, line: 8, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !670, file: !671, line: 1090, baseType: !1618, size: 128, offset: 14976)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1619, line: 13, size: 128, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1618, file: !1619, line: 14, baseType: !112, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !670, file: !671, line: 1097, baseType: !1623, size: 64, offset: 15104)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1625, line: 9, size: 448, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !4886}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !1624, file: !1625, line: 10, baseType: !37, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1624, file: !1625, line: 11, baseType: !74, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1624, file: !1625, line: 12, baseType: !372, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !1624, file: !1625, line: 13, baseType: !37, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !1624, file: !1625, line: 14, baseType: !37, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1624, file: !1625, line: 15, baseType: !1633, size: 128, offset: 192)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1634, line: 8, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1635 = !{!1636, !4885}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1633, file: !1634, line: 9, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1639, line: 70, size: 256, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1640 = !{!1641, !1642, !4883, !4884}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1638, file: !1639, line: 71, baseType: !366, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1638, file: !1639, line: 72, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !267, line: 1190, size: 10752, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !4345, !4477, !4517, !4602, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4655, !4659, !4660, !4663, !4666, !4669, !4672, !4673, !4674, !4715, !4737, !4738, !4739, !4740, !4741, !4742, !4764, !4768, !4775, !4776, !4777, !4778, !4837, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1644, file: !267, line: 1191, baseType: !112, size: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1644, file: !267, line: 1192, baseType: !500, size: 32, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1644, file: !267, line: 1193, baseType: !102, size: 8, offset: 160)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1644, file: !267, line: 1194, baseType: !54, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1644, file: !267, line: 1195, baseType: !56, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1644, file: !267, line: 1196, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !267, line: 2366, size: 576, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1663, !1667, !1671, !1675, !4333, !4334, !4335, !4337, !4338, !4339, !4341, !4342, !4343, !4344}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1653, file: !267, line: 2367, baseType: !32, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1653, file: !267, line: 2368, baseType: !37, size: 32, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1653, file: !267, line: 2376, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!37, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1639, line: 21, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1653, file: !267, line: 2377, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !267, line: 75, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1653, file: !267, line: 2378, baseType: !1668, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!366, !1652, !37, !32, !35}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1653, file: !267, line: 2380, baseType: !1672, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1643}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1653, file: !267, line: 2381, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !167, line: 402, size: 9216, align: 512, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1685, !2544, !2570, !2571, !2572, !2573, !2577, !2580, !2581, !2582, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2650, !2654, !2674, !2691, !2692, !2693, !2694, !2703, !2726, !2727, !2730, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2744, !2745, !2844, !2852, !2853, !2854, !2856, !4311, !4312, !4321, !4322, !4323, !4324, !4326, !4327, !4328, !4329, !4330, !4331, !4332}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1677, file: !167, line: 403, baseType: !166, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1677, file: !167, line: 406, baseType: !112, size: 128, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1677, file: !167, line: 409, baseType: !1682, size: 448, offset: 192)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 56)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1677, file: !167, line: 417, baseType: !1686, size: 768, offset: 640)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !167, line: 45, size: 768, elements: !1687)
!1687 = !{!1688, !2538, !2539, !2540, !2543}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1686, file: !167, line: 46, baseType: !1689, size: 512)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1690, line: 64, size: 512, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1691 = !{!1692, !1693, !1694, !1696, !1740, !2385, !2528, !2533, !2534, !2535, !2536, !2537}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !1690, line: 65, baseType: !32, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1689, file: !1690, line: 66, baseType: !112, size: 128, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1689, file: !1690, line: 67, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1689, file: !1690, line: 68, baseType: !1697, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1690, line: 168, size: 768, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1698, file: !1690, line: 169, baseType: !112, size: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1698, file: !1690, line: 170, baseType: !74, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1698, file: !1690, line: 171, baseType: !1689, size: 512, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1698, file: !1690, line: 172, baseType: !1704, size: 64, offset: 704)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1690, line: 133, size: 192, elements: !1707)
!1707 = !{!1708, !1715, !1720}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1706, file: !1690, line: 134, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!37, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1706, file: !1690, line: 135, baseType: !1716, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!32, !1713}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1706, file: !1690, line: 136, baseType: !1721, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!37, !1713, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1690, line: 125, size: 20736, elements: !1727)
!1727 = !{!1728, !1730, !1734, !1735, !1739}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1726, file: !1690, line: 126, baseType: !1729, size: 192)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 192, elements: !618)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1726, file: !1690, line: 127, baseType: !1731, size: 4096, offset: 192)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 4096, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1726, file: !1690, line: 128, baseType: !37, size: 32, offset: 4288)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1726, file: !1690, line: 129, baseType: !1736, size: 16384, offset: 4320)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 2048)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1726, file: !1690, line: 130, baseType: !37, size: 32, offset: 20704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1689, file: !1690, line: 69, baseType: !1741, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1690, line: 116, size: 384, elements: !1744)
!1744 = !{!1745, !1749, !1771, !2349, !2377, !2381}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1743, file: !1690, line: 117, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1695}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1743, file: !1690, line: 118, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1753, line: 254, size: 128, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1754 = !{!1755, !1767}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1752, file: !1753, line: 255, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1759, !1695, !1762, !474}
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 66, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !52, line: 73, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !52, line: 15, baseType: !543)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1753, line: 30, size: 128, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1763, file: !1753, line: 31, baseType: !32, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1763, file: !1753, line: 32, baseType: !39, size: 16, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1752, file: !1753, line: 256, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1759, !1695, !1762, !32, !50}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1743, file: !1690, line: 119, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1753, line: 84, size: 320, elements: !1776)
!1776 = !{!1777, !1778, !1782, !2345, !2347}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1775, file: !1753, line: 85, baseType: !32, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1775, file: !1753, line: 86, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!39, !1695, !1762, !37}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1775, file: !1753, line: 88, baseType: !1783, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!39, !1695, !1786, !37}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1753, line: 175, size: 512, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !2336, !2340, !2341}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1787, file: !1753, line: 176, baseType: !1763, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1787, file: !1753, line: 177, baseType: !50, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1787, file: !1753, line: 178, baseType: !35, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1787, file: !1753, line: 179, baseType: !1793, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !267, line: 472, size: 1536, align: 64, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !2328, !2329, !2330, !2333, !2334, !2335}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1797, file: !267, line: 473, baseType: !409, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1797, file: !267, line: 474, baseType: !658, size: 128, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1797, file: !267, line: 475, baseType: !1016, size: 320, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1797, file: !267, line: 476, baseType: !321, size: 32, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1797, file: !267, line: 477, baseType: !64, size: 32, offset: 544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1797, file: !267, line: 482, baseType: !847, size: 128, offset: 576)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1797, file: !267, line: 483, baseType: !54, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1797, file: !267, line: 484, baseType: !54, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1797, file: !267, line: 485, baseType: !1808, size: 64, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !267, line: 404, size: 1280, elements: !1811)
!1811 = !{!1812, !2103, !2173, !2177, !2181, !2187, !2193, !2197, !2202, !2206, !2210, !2214, !2292, !2296, !2300, !2304, !2309, !2313, !2320, !2324}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1810, file: !267, line: 405, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!37, !1816, !2101}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !129, line: 74, size: 512, align: 128, elements: !1818)
!1818 = !{!1819, !1820, !2095, !2100}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1817, file: !129, line: 75, baseType: !54, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !129, line: 83, baseType: !1821, size: 320, offset: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !129, line: 83, size: 320, elements: !1822)
!1822 = !{!1823, !1844, !1858, !1862, !2094}
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !129, line: 84, baseType: !1824, size: 320)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !129, line: 84, size: 320, elements: !1825)
!1825 = !{!1826, !1837, !1838, !1843}
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !129, line: 90, baseType: !1827, size: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !129, line: 90, size: 128, elements: !1828)
!1828 = !{!1829, !1830, !1835, !1836}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1827, file: !129, line: 91, baseType: !112, size: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !129, line: 94, baseType: !1831, size: 128)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !129, line: 94, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1831, file: !129, line: 96, baseType: !35, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1831, file: !129, line: 98, baseType: !23, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1827, file: !129, line: 102, baseType: !112, size: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1827, file: !129, line: 103, baseType: !112, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1824, file: !129, line: 106, baseType: !1796, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !129, line: 107, baseType: !1839, size: 64, offset: 192)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !129, line: 107, size: 64, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1839, file: !129, line: 108, baseType: !54, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1839, file: !129, line: 109, baseType: !54, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1824, file: !129, line: 117, baseType: !54, size: 64, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !129, line: 119, baseType: !1845, size: 320)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !129, line: 119, size: 320, elements: !1846)
!1846 = !{!1847, !1848, !1851, !1852, !1853}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1845, file: !129, line: 124, baseType: !54, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1845, file: !129, line: 125, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !129, line: 125, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1845, file: !129, line: 126, baseType: !54, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1845, file: !129, line: 127, baseType: !54, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !129, line: 128, baseType: !1854, size: 64, offset: 256)
!1854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !129, line: 128, size: 64, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1854, file: !129, line: 133, baseType: !54, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1854, file: !129, line: 138, baseType: !573, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !129, line: 141, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !129, line: 141, size: 64, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1859, file: !129, line: 142, baseType: !54, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !129, line: 144, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1821, file: !129, line: 144, size: 128, elements: !1864)
!1864 = !{!1865, !2093}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1863, file: !129, line: 146, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !152, line: 126, size: 1216, elements: !1868)
!1868 = !{!1869, !1879, !1900, !1901, !1902, !1903, !1904, !2075, !2076, !2077}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1867, file: !152, line: 127, baseType: !1870, size: 384)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !152, line: 21, size: 384, elements: !1871)
!1871 = !{!1872, !1873, !1875, !1876, !1877, !1878}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1870, file: !152, line: 22, baseType: !54, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1870, file: !152, line: 23, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1870, file: !152, line: 24, baseType: !1874, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1870, file: !152, line: 25, baseType: !54, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1870, file: !152, line: 26, baseType: !54, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1870, file: !152, line: 27, baseType: !54, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1867, file: !152, line: 128, baseType: !1880, size: 128, offset: 384)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1881, line: 105, size: 128, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1880, file: !1881, line: 110, baseType: !54, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1880, file: !1881, line: 118, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1881, line: 95, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1895, !1896, !1897, !1898, !1899}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1886, file: !1881, line: 96, baseType: !573, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1886, file: !1881, line: 97, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1881, line: 60, baseType: !1892)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1886, file: !1881, line: 98, baseType: !1890, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1886, file: !1881, line: 99, baseType: !468, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1886, file: !1881, line: 100, baseType: !468, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1886, file: !1881, line: 101, baseType: !560, size: 128, align: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1886, file: !1881, line: 102, baseType: !1894, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1867, file: !152, line: 129, baseType: !1316, size: 256, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1867, file: !152, line: 130, baseType: !151, size: 32, offset: 768)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !152, line: 131, baseType: !23, size: 32, offset: 800)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1867, file: !152, line: 132, baseType: !54, size: 64, offset: 832)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1867, file: !152, line: 133, baseType: !1905, size: 64, offset: 896)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !152, line: 77, size: 192, elements: !1908)
!1908 = !{!1909, !1913, !2071}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1907, file: !152, line: 83, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1816}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1907, file: !152, line: 89, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !129, line: 1184, baseType: !23)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1920, line: 512, size: 896, elements: !1921)
!1920 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1921 = !{!1922, !2038, !2039, !2046, !2053, !2063, !2064, !2065, !2067, !2069}
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !1920, line: 513, baseType: !1923, size: 320)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 513, size: 320, elements: !1924)
!1924 = !{!1925, !2034, !2035, !2036, !2037}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1923, file: !1920, line: 514, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !129, line: 625, size: 1344, elements: !1928)
!1928 = !{!1929, !1938, !1939, !1945, !1952, !1953, !1958, !1959, !1964, !1965, !1968, !2027, !2028, !2029, !2030, !2031, !2032}
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !129, line: 628, baseType: !1930, size: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1927, file: !129, line: 628, size: 128, elements: !1931)
!1931 = !{!1932, !1937}
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1930, file: !129, line: 629, baseType: !1933, size: 128)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1930, file: !129, line: 629, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1933, file: !129, line: 631, baseType: !54, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1933, file: !129, line: 632, baseType: !54, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1930, file: !129, line: 635, baseType: !560, size: 128, align: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1927, file: !129, line: 639, baseType: !962, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1927, file: !129, line: 640, baseType: !1940, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !997, line: 297, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !997, line: 297, size: 64, elements: !1942)
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1941, file: !997, line: 297, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1002, line: 19, baseType: !54)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !129, line: 646, baseType: !1946, size: 64, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1927, file: !129, line: 646, size: 64, elements: !1947)
!1947 = !{!1948, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1946, file: !129, line: 647, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !129, line: 542, baseType: !54)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1946, file: !129, line: 648, baseType: !1950, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1927, file: !129, line: 666, baseType: !37, size: 32, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1927, file: !129, line: 667, baseType: !1954, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !129, line: 579, size: 320, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1955, file: !129, line: 580, baseType: !1016, size: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1927, file: !129, line: 670, baseType: !468, size: 8, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1927, file: !129, line: 681, baseType: !1960, size: 256, offset: 512)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !129, line: 678, size: 256, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1960, file: !129, line: 679, baseType: !718, size: 192, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1960, file: !129, line: 680, baseType: !54, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1927, file: !129, line: 689, baseType: !112, size: 128, offset: 768)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1927, file: !129, line: 691, baseType: !1966, size: 64, offset: 896)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !129, line: 691, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1927, file: !129, line: 694, baseType: !1969, size: 64, offset: 960)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1920, line: 563, size: 1024, elements: !1972)
!1972 = !{!1973, !1977, !1978, !1982, !1986, !1990, !1991, !1995, !1999, !2003, !2004, !2005, !2009, !2013, !2019, !2023}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1971, file: !1920, line: 564, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1926}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1971, file: !1920, line: 569, baseType: !1974, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1971, file: !1920, line: 571, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!37, !1926, !54}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1971, file: !1920, line: 572, baseType: !1983, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!37, !1926}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1971, file: !1920, line: 578, baseType: !1987, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!37, !1926, !54, !54, !54}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1971, file: !1920, line: 580, baseType: !1914, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1971, file: !1920, line: 581, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1917, !1918, !23}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1971, file: !1920, line: 582, baseType: !1996, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1917, !1918, !54, !54}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1971, file: !1920, line: 584, baseType: !2000, size: 64, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!54, !1926}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1971, file: !1920, line: 588, baseType: !1914, size: 64, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1971, file: !1920, line: 591, baseType: !1914, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1971, file: !1920, line: 597, baseType: !2006, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!37, !1926, !54, !35, !37, !37}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1971, file: !1920, line: 603, baseType: !2010, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!32, !1926}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1971, file: !1920, line: 613, baseType: !2014, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!37, !1926, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !129, line: 717, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1971, file: !1920, line: 625, baseType: !2020, size: 64, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!2017, !1926, !54}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1971, file: !1920, line: 633, baseType: !2024, size: 64, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1816, !1926, !54}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1927, file: !129, line: 697, baseType: !54, size: 64, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1927, file: !129, line: 699, baseType: !547, size: 64, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1927, file: !129, line: 700, baseType: !35, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1927, file: !129, line: 711, baseType: !573, size: 64, offset: 1216)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1927, file: !129, line: 717, baseType: !2017, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1927, file: !129, line: 722, baseType: !2033, offset: 1344)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !129, line: 570, elements: !350)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1923, file: !1920, line: 515, baseType: !321, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1923, file: !1920, line: 516, baseType: !54, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1923, file: !1920, line: 517, baseType: !54, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1923, file: !1920, line: 518, baseType: !54, size: 64, offset: 256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1919, file: !1920, line: 520, baseType: !128, size: 32, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1919, file: !1920, line: 522, baseType: !2040, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1002, line: 22, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1002, line: 22, size: 64, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2042, file: !1002, line: 22, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1002, line: 15, baseType: !54)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1919, file: !1920, line: 524, baseType: !2047, size: 64, offset: 448)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !997, line: 372, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 372, size: 64, elements: !2050)
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2049, file: !997, line: 372, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1002, line: 16, baseType: !54)
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !1920, line: 527, baseType: !2054, size: 64, offset: 512)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !1920, line: 527, size: 64, elements: !2055)
!2055 = !{!2056, !2062}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2054, file: !1920, line: 528, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1002, line: 21, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1002, line: 21, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2058, file: !1002, line: 21, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1002, line: 14, baseType: !54)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2054, file: !1920, line: 529, baseType: !2041, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1919, file: !1920, line: 534, baseType: !1816, size: 64, offset: 576)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1919, file: !1920, line: 535, baseType: !1816, size: 64, offset: 640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1919, file: !1920, line: 541, baseType: !2066, size: 64, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1919, file: !1920, line: 545, baseType: !2068, size: 64, offset: 768)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1919, file: !1920, line: 549, baseType: !2070, size: 64, offset: 832)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !997, line: 520, baseType: !1816)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1907, file: !152, line: 100, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!37, !1866, !54, !54, !37}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1867, file: !152, line: 134, baseType: !35, size: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1867, file: !152, line: 135, baseType: !37, size: 32, offset: 1024)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !152, line: 136, baseType: !2078, size: 128, offset: 1088)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1867, file: !152, line: 136, size: 128, elements: !2079)
!2079 = !{!2080, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2078, file: !152, line: 137, baseType: !2081, size: 128)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2082, line: 6, size: 128, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2081, file: !2082, line: 7, baseType: !402, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2081, file: !2082, line: 8, baseType: !402, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !152, line: 138, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !152, line: 138, elements: !2088)
!2088 = !{!2089, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2087, file: !152, line: 138, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2087, file: !152, line: 138, elements: !350)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2087, file: !152, line: 138, baseType: !2092)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, elements: !318)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1863, file: !129, line: 147, baseType: !35, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1821, file: !129, line: 161, baseType: !560, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !1817, file: !129, line: 164, baseType: !2096, size: 32, offset: 384)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !129, line: 164, size: 32, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2096, file: !129, line: 169, baseType: !64, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2096, file: !129, line: 177, baseType: !23, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1817, file: !129, line: 181, baseType: !64, size: 32, offset: 416)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !267, line: 309, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1810, file: !267, line: 406, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!37, !547, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !129, line: 293, size: 1536, elements: !2109)
!2109 = !{!2110, !2140, !2154}
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !129, line: 295, baseType: !2111, size: 512)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !129, line: 295, size: 512, elements: !2112)
!2112 = !{!2113, !2139}
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2111, file: !129, line: 296, baseType: !2114, size: 448)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2111, file: !129, line: 296, size: 448, elements: !2115)
!2115 = !{!2116, !2117, !2126, !2127, !2128, !2137, !2138}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2114, file: !129, line: 298, baseType: !54, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !129, line: 299, baseType: !2118, size: 128, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !129, line: 299, size: 128, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2118, file: !129, line: 300, baseType: !112, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2118, file: !129, line: 302, baseType: !2122, size: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2118, file: !129, line: 302, size: 128, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2122, file: !129, line: 303, baseType: !35, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2122, file: !129, line: 305, baseType: !23, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2114, file: !129, line: 310, baseType: !1796, size: 64, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2114, file: !129, line: 311, baseType: !54, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2114, file: !129, line: 312, baseType: !2129, size: 64, offset: 320)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !129, line: 312, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2129, file: !129, line: 313, baseType: !35, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2129, file: !129, line: 314, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !129, line: 257, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 255, size: 64, elements: !2135)
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2134, file: !129, line: 256, baseType: !54, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2114, file: !129, line: 316, baseType: !64, size: 32, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2114, file: !129, line: 317, baseType: !64, size: 32, offset: 416)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2111, file: !129, line: 323, baseType: !1817, size: 512, align: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !129, line: 325, baseType: !2141, size: 512, offset: 512)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !129, line: 325, size: 512, elements: !2142)
!2142 = !{!2143, !2153}
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !129, line: 326, baseType: !2144, size: 320)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2141, file: !129, line: 326, size: 320, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2144, file: !129, line: 327, baseType: !54, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2144, file: !129, line: 328, baseType: !54, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2144, file: !129, line: 329, baseType: !54, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2144, file: !129, line: 331, baseType: !64, size: 32, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2144, file: !129, line: 332, baseType: !64, size: 32, offset: 224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2144, file: !129, line: 333, baseType: !64, size: 32, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2144, file: !129, line: 335, baseType: !23, size: 32, offset: 288)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2141, file: !129, line: 339, baseType: !1817, size: 512, align: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !129, line: 341, baseType: !2155, size: 512, offset: 1024)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !129, line: 341, size: 512, elements: !2156)
!2156 = !{!2157, !2166, !2172}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !129, line: 342, baseType: !2158, size: 384)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !129, line: 342, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2158, file: !129, line: 343, baseType: !54, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2158, file: !129, line: 344, baseType: !54, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2158, file: !129, line: 346, baseType: !35, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2158, file: !129, line: 347, baseType: !35, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2158, file: !129, line: 348, baseType: !35, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2158, file: !129, line: 349, baseType: !35, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !129, line: 352, baseType: !2167, size: 256)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !129, line: 352, size: 256, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2167, file: !129, line: 353, baseType: !54, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2167, file: !129, line: 354, baseType: !54, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2167, file: !129, line: 356, baseType: !112, size: 128, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2155, file: !129, line: 359, baseType: !1817, size: 512, align: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1810, file: !267, line: 409, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!37, !1796, !2101}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1810, file: !267, line: 412, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!468, !1796, !2107}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1810, file: !267, line: 414, baseType: !2182, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !267, line: 310, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1810, file: !267, line: 416, baseType: !2188, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!37, !547, !1796, !56, !23, !2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1810, file: !267, line: 419, baseType: !2194, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!37, !547, !1796, !56, !23, !23, !1816, !35}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1810, file: !267, line: 424, baseType: !2198, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2201, !1796, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !40, line: 131, baseType: !402)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1810, file: !267, line: 425, baseType: !2203, size: 64, offset: 512)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !2107, !50, !50}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1810, file: !267, line: 426, baseType: !2207, size: 64, offset: 576)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!468, !2107, !321}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1810, file: !267, line: 427, baseType: !2211, size: 64, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !2107}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1810, file: !267, line: 428, baseType: !2215, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!1759, !2218, !2240}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !267, line: 373, size: 384, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2227, !2228, !2229, !2230}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2219, file: !267, line: 374, baseType: !547, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2219, file: !267, line: 375, baseType: !56, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2219, file: !267, line: 376, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2218, !543}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2219, file: !267, line: 377, baseType: !35, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2219, file: !267, line: 378, baseType: !37, size: 32, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2219, file: !267, line: 379, baseType: !108, size: 16, offset: 288)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !267, line: 380, baseType: !2231, size: 64, offset: 320)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2219, file: !267, line: 380, size: 64, elements: !2232)
!2232 = !{!2233, !2236}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2231, file: !267, line: 386, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !267, line: 386, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2231, file: !267, line: 395, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!1759, !35}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2242, line: 41, size: 320, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2254, !2287}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2241, file: !2242, line: 42, baseType: !98, size: 8)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2241, file: !2242, line: 43, baseType: !468, size: 8, offset: 8)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2241, file: !2242, line: 44, baseType: !468, size: 8, offset: 16)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2241, file: !2242, line: 45, baseType: !468, size: 8, offset: 24)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2241, file: !2242, line: 46, baseType: !468, size: 8, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2242, line: 47, baseType: !2250, size: 64, offset: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2241, file: !2242, line: 47, size: 64, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2250, file: !2242, line: 48, baseType: !50, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2250, file: !2242, line: 49, baseType: !37, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2242, line: 61, baseType: !2255, size: 128, offset: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2241, file: !2242, line: 61, size: 128, elements: !2256)
!2256 = !{!2257, !2263}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2255, file: !2242, line: 67, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2259, line: 17, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2258, file: !2259, line: 19, baseType: !35, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2258, file: !2259, line: 20, baseType: !51, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !2242, line: 68, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2255, file: !2242, line: 68, size: 128, elements: !2265)
!2265 = !{!2266, !2286}
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !2242, line: 69, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !2242, line: 69, size: 64, elements: !2268)
!2268 = !{!2269, !2272, !2279, !2283, !2285}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2267, file: !2242, line: 71, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2267, file: !2242, line: 72, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2242, line: 17, size: 128, elements: !2276)
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2275, file: !2242, line: 18, baseType: !35, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2275, file: !2242, line: 19, baseType: !50, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2267, file: !2242, line: 73, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2282)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2242, line: 73, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2267, file: !2242, line: 74, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2267, file: !2242, line: 75, baseType: !35, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2264, file: !2242, line: 77, baseType: !50, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2241, file: !2242, line: 80, baseType: !2288, size: 64, offset: 256)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2241, file: !2242, line: 80, size: 64, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2288, file: !2242, line: 81, baseType: !54, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2288, file: !2242, line: 82, baseType: !56, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1810, file: !267, line: 433, baseType: !2293, size: 64, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!37, !1796, !2107, !2107, !144}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1810, file: !267, line: 435, baseType: !2297, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!37, !2107}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1810, file: !267, line: 436, baseType: !2301, size: 64, offset: 896)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!468, !2107, !50, !50}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1810, file: !267, line: 438, baseType: !2305, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2107, !2308, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1810, file: !267, line: 439, baseType: !2310, size: 64, offset: 1024)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!37, !1796, !1816}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1810, file: !267, line: 442, baseType: !2314, size: 64, offset: 1088)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!37, !2317, !547, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !267, line: 66, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1810, file: !267, line: 444, baseType: !2321, size: 64, offset: 1152)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !547}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1810, file: !267, line: 445, baseType: !2325, size: 64, offset: 1216)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!37, !2218, !2240}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !267, line: 486, baseType: !54, size: 64, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1797, file: !267, line: 487, baseType: !1016, size: 320, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1797, file: !267, line: 488, baseType: !2331, size: 32, offset: 1280)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2332, line: 8, baseType: !332)
!2332 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1797, file: !267, line: 489, baseType: !74, size: 32, offset: 1312)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1797, file: !267, line: 490, baseType: !112, size: 128, offset: 1344)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1797, file: !267, line: 491, baseType: !35, size: 64, offset: 1472)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1787, file: !1753, line: 180, baseType: !2337, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!1759, !547, !1695, !1786, !474, !56, !50}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1787, file: !1753, line: 182, baseType: !2337, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1787, file: !1753, line: 184, baseType: !2342, size: 64, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!37, !547, !1695, !1786, !1926}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1775, file: !1753, line: 90, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1775, file: !1753, line: 91, baseType: !2348, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1743, file: !1690, line: 120, baseType: !2350, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2353, !1713}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !174, line: 39, size: 384, elements: !2356)
!2356 = !{!2357, !2358, !2362, !2366, !2372, !2376}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2355, file: !174, line: 40, baseType: !173, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2355, file: !174, line: 41, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!468}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2355, file: !174, line: 42, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!35}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2355, file: !174, line: 43, baseType: !2367, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!1095, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !174, line: 19, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2355, file: !174, line: 44, baseType: !2373, size: 64, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!1095}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2355, file: !174, line: 45, baseType: !453, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1743, file: !1690, line: 121, baseType: !2378, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!1095, !1713}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1743, file: !1690, line: 122, baseType: !2382, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !1713, !1341, !1342}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1689, file: !1690, line: 70, baseType: !2386, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2388, line: 190, size: 1152, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2520, !2521, !2522, !2523, !2524, !2527}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2387, file: !2388, line: 191, baseType: !64, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2387, file: !2388, line: 192, baseType: !64, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2387, file: !2388, line: 202, baseType: !2386, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2387, file: !2388, line: 203, baseType: !32, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2387, file: !2388, line: 205, baseType: !718, size: 192, align: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2387, file: !2388, line: 207, baseType: !1095, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2387, file: !2388, line: 208, baseType: !23, size: 32, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !2388, line: 209, baseType: !2398, size: 256, offset: 512)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2387, file: !2388, line: 209, size: 256, elements: !2399)
!2399 = !{!2400, !2409, !2413}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2398, file: !2388, line: 210, baseType: !2401, size: 256)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2388, line: 153, size: 256, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2408}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2401, file: !2388, line: 154, baseType: !54, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2401, file: !2388, line: 156, baseType: !850, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2401, file: !2388, line: 162, baseType: !2406, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2388, line: 162, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2401, file: !2388, line: 167, baseType: !54, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2398, file: !2388, line: 211, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2388, line: 170, size: 64, elements: !2411)
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2410, file: !2388, line: 171, baseType: !2386, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2398, file: !2388, line: 212, baseType: !2414, size: 256)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2388, line: 174, size: 256, elements: !2415)
!2415 = !{!2416, !2515, !2518, !2519}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2414, file: !2388, line: 175, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2388, line: 271, size: 768, elements: !2420)
!2420 = !{!2421, !2479, !2483, !2484, !2485, !2486, !2487, !2491, !2492, !2493, !2494, !2511}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2419, file: !2388, line: 276, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!37, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2388, line: 251, size: 1216, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2426, file: !2388, line: 253, baseType: !2386, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2426, file: !2388, line: 254, baseType: !547, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2426, file: !2388, line: 255, baseType: !2431, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2433, line: 17, size: 960, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2464, !2465, !2468}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2432, file: !2433, line: 18, baseType: !474, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2432, file: !2433, line: 19, baseType: !50, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2432, file: !2433, line: 20, baseType: !50, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2432, file: !2433, line: 21, baseType: !50, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2432, file: !2433, line: 22, baseType: !50, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2432, file: !2433, line: 23, baseType: !56, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2432, file: !2433, line: 24, baseType: !56, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2432, file: !2433, line: 25, baseType: !581, size: 256, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2432, file: !2433, line: 26, baseType: !2444, size: 64, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2433, line: 32, size: 256, elements: !2447)
!2447 = !{!2448, !2452, !2456, !2460}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2446, file: !2433, line: 33, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!35, !2431, !55}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2446, file: !2433, line: 34, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !2431, !35}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2446, file: !2433, line: 35, baseType: !2457, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!35, !2431, !35, !55}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2446, file: !2433, line: 36, baseType: !2461, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!37, !2431, !35}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2432, file: !2433, line: 27, baseType: !37, size: 32, offset: 768)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2432, file: !2433, line: 28, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2432, file: !2433, line: 29, baseType: !35, size: 64, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2426, file: !2388, line: 256, baseType: !35, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2426, file: !2388, line: 259, baseType: !581, size: 256, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2426, file: !2388, line: 260, baseType: !581, size: 256, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2426, file: !2388, line: 261, baseType: !37, size: 32, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2426, file: !2388, line: 262, baseType: !112, size: 128, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2426, file: !2388, line: 263, baseType: !474, size: 64, offset: 960)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2426, file: !2388, line: 265, baseType: !50, size: 64, offset: 1024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2426, file: !2388, line: 266, baseType: !468, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2426, file: !2388, line: 267, baseType: !468, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2426, file: !2388, line: 268, baseType: !1969, size: 64, offset: 1152)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2419, file: !2388, line: 277, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2425}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2419, file: !2388, line: 290, baseType: !2461, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2419, file: !2388, line: 292, baseType: !2449, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2419, file: !2388, line: 293, baseType: !2457, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2419, file: !2388, line: 294, baseType: !2453, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2419, file: !2388, line: 296, baseType: !2488, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!1759, !2425, !474, !50, !56}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2419, file: !2388, line: 306, baseType: !50, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2419, file: !2388, line: 313, baseType: !468, size: 8, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2419, file: !2388, line: 314, baseType: !2488, size: 64, offset: 576)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2419, file: !2388, line: 317, baseType: !2495, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!2498, !2425, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2499, line: 59, baseType: !23)
!2499 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2502, line: 37, size: 128, elements: !2503)
!2502 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2503 = !{!2504, !2510}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2501, file: !2502, line: 38, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2502, line: 31, baseType: !2506)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !547, !2509, !2500}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2501, file: !2502, line: 39, baseType: !2498, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2419, file: !2388, line: 320, baseType: !2512, size: 64, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!37, !2425, !1926}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2414, file: !2388, line: 176, baseType: !2516, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2388, line: 35, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2414, file: !2388, line: 177, baseType: !56, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2414, file: !2388, line: 178, baseType: !2386, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2387, file: !2388, line: 215, baseType: !35, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2387, file: !2388, line: 221, baseType: !402, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2387, file: !2388, line: 223, baseType: !41, size: 16, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2387, file: !2388, line: 224, baseType: !39, size: 16, offset: 912)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2387, file: !2388, line: 225, baseType: !2525, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2388, line: 36, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2387, file: !2388, line: 227, baseType: !560, size: 128, align: 64, offset: 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1689, file: !1690, line: 71, baseType: !2529, size: 32, offset: 448)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2530, line: 19, size: 32, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2529, file: !2530, line: 20, baseType: !626, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1689, file: !1690, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1689, file: !1690, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1689, file: !1690, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1689, file: !1690, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1689, file: !1690, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1686, file: !167, line: 47, baseType: !1676, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1686, file: !167, line: 48, baseType: !1695, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1686, file: !167, line: 49, baseType: !2541, size: 64, offset: 640)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !167, line: 49, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1686, file: !167, line: 50, baseType: !1315, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1677, file: !167, line: 418, baseType: !2545, size: 64, offset: 1408)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !167, line: 53, size: 448, elements: !2547)
!2547 = !{!2548, !2549, !2554, !2558, !2562, !2566}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2546, file: !167, line: 54, baseType: !1763, size: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2546, file: !167, line: 55, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!1759, !2545, !2553, !474}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2546, file: !167, line: 57, baseType: !2555, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!1759, !2545, !2553, !32, !50}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2546, file: !167, line: 59, baseType: !2559, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !1676, !32}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2546, file: !167, line: 60, baseType: !2563, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!37, !1676}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2546, file: !167, line: 61, baseType: !2567, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !1676}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1677, file: !167, line: 419, baseType: !32, size: 64, offset: 1472)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1677, file: !167, line: 420, baseType: !32, size: 64, offset: 1536)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1677, file: !167, line: 421, baseType: !1695, size: 64, offset: 1600)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1677, file: !167, line: 424, baseType: !2574, size: 64, offset: 1664)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !167, line: 424, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1677, file: !167, line: 425, baseType: !2578, size: 64, offset: 1728)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1677, file: !167, line: 426, baseType: !23, size: 32, offset: 1792)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1677, file: !167, line: 435, baseType: !581, size: 256, offset: 1856)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1677, file: !167, line: 437, baseType: !2583, size: 64, offset: 2112)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2585, line: 69, size: 320, elements: !2586)
!2585 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2586 = !{!2587, !2588, !2589, !2606, !2608, !2612, !2613}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2584, file: !2585, line: 70, baseType: !32, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2584, file: !2585, line: 71, baseType: !1676, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2584, file: !2585, line: 72, baseType: !2590, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2585, line: 47, size: 256, elements: !2593)
!2593 = !{!2594, !2595, !2601, !2605}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !2585, line: 49, baseType: !23, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2592, file: !2585, line: 51, baseType: !2596, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!37, !32, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2592, file: !2585, line: 53, baseType: !2602, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!37, !474, !2599}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2592, file: !2585, line: 55, baseType: !453, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2584, file: !2585, line: 73, baseType: !2607, size: 16, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2584, file: !2585, line: 74, baseType: !2609, size: 8, offset: 208)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !99, line: 16, baseType: !2610)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !101, line: 20, baseType: !2611)
!2611 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2584, file: !2585, line: 75, baseType: !98, size: 8, offset: 216)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2584, file: !2585, line: 76, baseType: !2614, size: 64, offset: 256)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2584, file: !2585, line: 76, size: 64, elements: !2615)
!2615 = !{!2616, !2617, !2624}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2614, file: !2585, line: 77, baseType: !35, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2614, file: !2585, line: 78, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2620)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2585, line: 86, size: 128, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2620, file: !2585, line: 87, baseType: !23, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2620, file: !2585, line: 88, baseType: !474, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2614, file: !2585, line: 79, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2585, line: 92, size: 256, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2633, !2634}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2627, file: !2585, line: 94, baseType: !23, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2627, file: !2585, line: 95, baseType: !23, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2627, file: !2585, line: 96, baseType: !2632, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2627, file: !2585, line: 97, baseType: !2590, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2627, file: !2585, line: 98, baseType: !35, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1677, file: !167, line: 438, baseType: !23, size: 32, offset: 2176)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1677, file: !167, line: 441, baseType: !23, size: 32, offset: 2208)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1677, file: !167, line: 442, baseType: !2574, size: 64, offset: 2240)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1677, file: !167, line: 443, baseType: !2578, size: 64, offset: 2304)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1677, file: !167, line: 444, baseType: !468, size: 8, offset: 2368)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1677, file: !167, line: 451, baseType: !468, size: 8, offset: 2376)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1677, file: !167, line: 454, baseType: !23, size: 32, offset: 2400)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1677, file: !167, line: 455, baseType: !2643, size: 64, offset: 2432)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2645, line: 23, size: 96, elements: !2646)
!2645 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2644, file: !2645, line: 24, baseType: !37, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2644, file: !2645, line: 24, baseType: !37, size: 32, offset: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2644, file: !2645, line: 24, baseType: !37, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1677, file: !167, line: 458, baseType: !2651, size: 64, offset: 2496)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!37}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1677, file: !167, line: 460, baseType: !2655, size: 4032, align: 512, offset: 2560)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2656, size: 4032, elements: !2672)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !167, line: 362, size: 576, elements: !2657)
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2656, file: !167, line: 363, baseType: !35, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2656, file: !167, line: 364, baseType: !23, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2656, file: !167, line: 367, baseType: !2661, size: 448, offset: 128)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !167, line: 319, size: 448, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2661, file: !167, line: 320, baseType: !1676, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2661, file: !167, line: 321, baseType: !2665, size: 384, offset: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2666, line: 40, size: 384, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2665, file: !2666, line: 41, baseType: !2669, size: 384, align: 64)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 384, align: 64, elements: !2670)
!2670 = !{!2671}
!2671 = !DISubrange(count: 2)
!2672 = !{!2673}
!2673 = !DISubrange(count: 7)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1677, file: !167, line: 463, baseType: !2675, size: 192, offset: 6592)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2676, line: 8, size: 192, elements: !2677)
!2676 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2675, file: !2676, line: 10, baseType: !23, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2675, file: !2676, line: 11, baseType: !320, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2675, file: !2676, line: 12, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2683, line: 59, size: 48, elements: !2684)
!2683 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2682, file: !2683, line: 60, baseType: !1112, size: 16)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2682, file: !2683, line: 61, baseType: !1112, size: 16, offset: 16)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2682, file: !2683, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2682, file: !2683, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !2683, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2682, file: !2683, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1677, file: !167, line: 465, baseType: !54, size: 64, offset: 6784)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1677, file: !167, line: 469, baseType: !23, size: 32, offset: 6848)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1677, file: !167, line: 470, baseType: !112, size: 128, offset: 6912)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1677, file: !167, line: 471, baseType: !2695, size: 64, offset: 7040)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2697, line: 33, size: 96, elements: !2698)
!2697 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2696, file: !2697, line: 37, baseType: !37, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2696, file: !2697, line: 43, baseType: !37, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2696, file: !2697, line: 45, baseType: !41, size: 16, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !2697, line: 47, baseType: !41, size: 16, offset: 80)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1677, file: !167, line: 476, baseType: !2704, size: 64, offset: 7104)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !167, line: 378, size: 256, elements: !2706)
!2706 = !{!2707, !2723, !2724, !2725}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2705, file: !167, line: 379, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2710, line: 204, baseType: !2711)
!2710 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2710, line: 197, size: 192, elements: !2712)
!2712 = !{!2713, !2715, !2716, !2717, !2719, !2721}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2711, file: !2710, line: 198, baseType: !2714, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2710, line: 21, baseType: !314)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2711, file: !2710, line: 199, baseType: !102, size: 8, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2711, file: !2710, line: 200, baseType: !102, size: 8, offset: 40)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2711, file: !2710, line: 201, baseType: !2718, size: 16, offset: 48)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2710, line: 17, baseType: !109)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2711, file: !2710, line: 202, baseType: !2720, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2710, line: 16, baseType: !403)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2711, file: !2710, line: 203, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2710, line: 22, baseType: !403)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2705, file: !167, line: 380, baseType: !23, size: 32, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2705, file: !167, line: 381, baseType: !474, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2705, file: !167, line: 382, baseType: !474, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1677, file: !167, line: 477, baseType: !2705, size: 256, offset: 7168)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1677, file: !167, line: 480, baseType: !2728, size: 64, offset: 7424)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !167, line: 480, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1677, file: !167, line: 483, baseType: !2731, size: 64, offset: 7488)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !167, line: 483, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1677, file: !167, line: 488, baseType: !474, size: 64, offset: 7552)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1677, file: !167, line: 492, baseType: !35, size: 64, offset: 7616)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1677, file: !167, line: 493, baseType: !23, size: 32, offset: 7680)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1677, file: !167, line: 495, baseType: !35, size: 64, offset: 7744)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1677, file: !167, line: 496, baseType: !23, size: 32, offset: 7808)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1677, file: !167, line: 499, baseType: !23, size: 32, offset: 7840)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1677, file: !167, line: 500, baseType: !2740, size: 64, offset: 7872)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2742, line: 45, baseType: !2743)
!2742 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1677, file: !167, line: 503, baseType: !23, size: 32, offset: 7936)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1677, file: !167, line: 504, baseType: !2746, size: 64, offset: 8000)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2749, line: 96, size: 192, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2750 = !{!2751, !2752, !2805, !2808}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2748, file: !2749, line: 97, baseType: !23, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2748, file: !2749, line: 98, baseType: !2753, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2749, line: 24, size: 3072, elements: !2755)
!2755 = !{!2756, !2758, !2759, !2760, !2761, !2774, !2775, !2776, !2777, !2789, !2790, !2791, !2802, !2803, !2804}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2754, file: !2749, line: 26, baseType: !2757, size: 128)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 128, elements: !2670)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2754, file: !2749, line: 27, baseType: !2757, size: 128, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2754, file: !2749, line: 28, baseType: !37, size: 32, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2754, file: !2749, line: 31, baseType: !74, size: 32, align: 512, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2754, file: !2749, line: 32, baseType: !2762, size: 960, offset: 576)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2763, line: 206, size: 960, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2764 = !{!2765, !2766, !2769, !2771, !2772, !2773}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2762, file: !2763, line: 207, baseType: !563, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2762, file: !2763, line: 208, baseType: !2767, size: 256, offset: 64)
!2767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2768, size: 256, elements: !638)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2762, file: !2763, line: 209, baseType: !2770, size: 256, offset: 320)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !638)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2762, file: !2763, line: 213, baseType: !543, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2762, file: !2763, line: 215, baseType: !1376, size: 256, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2762, file: !2763, line: 216, baseType: !98, size: 8, offset: 896)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2754, file: !2749, line: 33, baseType: !54, size: 64, offset: 1536)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2754, file: !2749, line: 34, baseType: !54, size: 64, offset: 1600)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2754, file: !2749, line: 35, baseType: !468, size: 8, offset: 1664)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2754, file: !2749, line: 36, baseType: !2778, size: 320, offset: 1728)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2779, line: 11, size: 320, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2780 = !{!2781, !2782, !2783, !2788}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2778, file: !2779, line: 16, baseType: !358, size: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2778, file: !2779, line: 17, baseType: !54, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2778, file: !2779, line: 18, baseType: !2784, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !2787}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2778, file: !2779, line: 19, baseType: !332, size: 32, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2754, file: !2749, line: 37, baseType: !1277, size: 256, offset: 2048)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2754, file: !2749, line: 38, baseType: !560, size: 128, align: 64, offset: 2304)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2754, file: !2749, line: 39, baseType: !2792, size: 64, offset: 2432)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2749, line: 49, size: 768, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2793, file: !2749, line: 50, baseType: !74, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2793, file: !2749, line: 51, baseType: !2770, size: 256, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2793, file: !2749, line: 53, baseType: !2770, size: 256, offset: 320)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2793, file: !2749, line: 54, baseType: !54, size: 64, offset: 576)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2793, file: !2749, line: 55, baseType: !2792, size: 64, offset: 640)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2793, file: !2749, line: 56, baseType: !37, size: 32, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2793, file: !2749, line: 57, baseType: !37, size: 32, offset: 736)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2754, file: !2749, line: 40, baseType: !54, size: 64, offset: 2496)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2754, file: !2749, line: 42, baseType: !37, size: 32, offset: 2560)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2754, file: !2749, line: 43, baseType: !2747, size: 64, offset: 2624)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2748, file: !2749, line: 99, baseType: !2806, offset: 128)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2807, line: 211, elements: !350)
!2807 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2748, file: !2749, line: 100, baseType: !2809, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2749, line: 63, size: 3008, elements: !2811)
!2811 = !{!2812, !2813, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2843}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2810, file: !2749, line: 64, baseType: !2792, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2810, file: !2749, line: 65, baseType: !2814, size: 192, offset: 64)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2792, size: 192, elements: !618)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2810, file: !2749, line: 67, baseType: !37, size: 32, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2810, file: !2749, line: 68, baseType: !581, size: 256, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2810, file: !2749, line: 69, baseType: !74, size: 32, offset: 576)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2810, file: !2749, line: 70, baseType: !581, size: 256, offset: 640)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2810, file: !2749, line: 71, baseType: !54, size: 64, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2810, file: !2749, line: 72, baseType: !54, size: 64, offset: 960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2810, file: !2749, line: 73, baseType: !54, size: 64, offset: 1024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2810, file: !2749, line: 74, baseType: !54, size: 64, offset: 1088)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2810, file: !2749, line: 75, baseType: !54, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2810, file: !2749, line: 76, baseType: !54, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2810, file: !2749, line: 77, baseType: !54, size: 64, offset: 1280)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2810, file: !2749, line: 78, baseType: !54, size: 64, offset: 1344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2810, file: !2749, line: 79, baseType: !468, size: 8, offset: 1408)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2810, file: !2749, line: 80, baseType: !54, size: 64, offset: 1472)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2810, file: !2749, line: 81, baseType: !581, size: 256, offset: 1536)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2810, file: !2749, line: 82, baseType: !1316, size: 256, offset: 1792)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2810, file: !2749, line: 84, baseType: !64, size: 32, offset: 2048)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2810, file: !2749, line: 87, baseType: !54, size: 64, offset: 2112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2810, file: !2749, line: 88, baseType: !54, size: 64, offset: 2176)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2810, file: !2749, line: 89, baseType: !2835, size: 704, offset: 2240)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1278, line: 111, size: 704, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2842}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2835, file: !1278, line: 112, baseType: !1277, size: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2835, file: !1278, line: 113, baseType: !2778, size: 320, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2835, file: !1278, line: 116, baseType: !2840, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1278, line: 18, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2835, file: !1278, line: 117, baseType: !37, size: 32, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2810, file: !2749, line: 90, baseType: !2747, size: 64, offset: 2944)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1677, file: !167, line: 515, baseType: !2845, size: 64, offset: 8064)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2847, line: 117, size: 128, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2848 = !{!2849, !2850, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2846, file: !2847, line: 118, baseType: !1062, size: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2846, file: !2847, line: 119, baseType: !1062, size: 32, offset: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2846, file: !2847, line: 120, baseType: !543, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1677, file: !167, line: 516, baseType: !23, size: 32, offset: 8128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1677, file: !167, line: 519, baseType: !23, size: 32, offset: 8160)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1677, file: !167, line: 520, baseType: !2855, size: 64, offset: 8192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1677, file: !167, line: 523, baseType: !2857, size: 64, offset: 8256)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !180, line: 372, size: 1024, elements: !2860)
!2860 = !{!2861, !2862, !2902, !2962, !3043, !3044, !3047, !3052, !3053, !3054, !3055, !3057, !3060}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2859, file: !180, line: 373, baseType: !112, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2859, file: !180, line: 374, baseType: !2863, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !180, line: 291, size: 576, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2873, !2896, !2900, !2901}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2864, file: !180, line: 292, baseType: !32, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2864, file: !180, line: 293, baseType: !35, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2864, file: !180, line: 295, baseType: !35, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2864, file: !180, line: 297, baseType: !2870, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!37, !2858, !179, !35}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2864, file: !180, line: 299, baseType: !2874, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !180, line: 275, size: 320, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2875, file: !180, line: 276, baseType: !32, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2875, file: !180, line: 277, baseType: !2879, size: 256, offset: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2875, file: !180, line: 277, size: 256, elements: !2880)
!2880 = !{!2881, !2892}
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !180, line: 278, baseType: !2882, size: 256)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2879, file: !180, line: 278, size: 256, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2889, !2890, !2891}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2882, file: !180, line: 279, baseType: !32, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2882, file: !180, line: 280, baseType: !2743, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2882, file: !180, line: 281, baseType: !2743, size: 32, offset: 96)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2882, file: !180, line: 282, baseType: !2888, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2882, file: !180, line: 283, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2882, file: !180, line: 284, baseType: !2743, size: 32, offset: 160)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2882, file: !180, line: 285, baseType: !2743, size: 32, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2879, file: !180, line: 287, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!37, !2858}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2864, file: !180, line: 300, baseType: !2897, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!115, !2858}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2864, file: !180, line: 301, baseType: !112, size: 128, offset: 384)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2864, file: !180, line: 302, baseType: !2893, size: 64, offset: 512)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2859, file: !180, line: 375, baseType: !2903, size: 64, offset: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2859, file: !180, line: 375, size: 64, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2903, file: !180, line: 376, baseType: !32, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2903, file: !180, line: 378, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2742, line: 32, size: 640, elements: !2909)
!2909 = !{!2910, !2911, !2923, !2947, !2948, !2949, !2950, !2951, !2955}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2908, file: !2742, line: 33, baseType: !32, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2908, file: !2742, line: 34, baseType: !2912, size: 128, offset: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2847, line: 85, size: 128, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2912, file: !2847, line: 86, baseType: !64, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !2847, line: 101, baseType: !2916, size: 64, offset: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !2847, line: 101, size: 64, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2916, file: !2847, line: 102, baseType: !54, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2916, file: !2847, line: 103, baseType: !2845, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2916, file: !2847, line: 104, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2847, line: 104, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2908, file: !2742, line: 35, baseType: !2924, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2926, line: 61, size: 128, elements: !2927)
!2926 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2925, file: !2926, line: 62, baseType: !35, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2926, line: 63, baseType: !2930, size: 64, offset: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !2926, line: 63, size: 64, elements: !2931)
!2931 = !{!2932, !2933, !2946}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2930, file: !2926, line: 65, baseType: !54, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2930, file: !2926, line: 66, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2936, line: 169, size: 192, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2935, file: !2936, line: 170, baseType: !2934, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2935, file: !2936, line: 171, baseType: !1676, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2935, file: !2936, line: 172, baseType: !2941, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2926, line: 32, size: 64, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2942, file: !2926, line: 33, baseType: !1062, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2942, file: !2926, line: 34, baseType: !1062, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2930, file: !2926, line: 67, baseType: !2941, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2908, file: !2742, line: 36, baseType: !35, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2908, file: !2742, line: 37, baseType: !35, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2908, file: !2742, line: 38, baseType: !35, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2908, file: !2742, line: 39, baseType: !2651, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2908, file: !2742, line: 40, baseType: !2952, size: 64, offset: 512)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2908, file: !2742, line: 41, baseType: !2956, size: 64, offset: 576)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2742, line: 26, size: 192, elements: !2958)
!2958 = !{!2959, !2960, !2961}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2957, file: !2742, line: 27, baseType: !35, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2957, file: !2742, line: 28, baseType: !35, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2957, file: !2742, line: 29, baseType: !37, size: 32, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2859, file: !180, line: 380, baseType: !2963, size: 256, offset: 256)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !180, line: 148, size: 256, elements: !2964)
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2963, file: !180, line: 149, baseType: !358, size: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2963, file: !180, line: 150, baseType: !37, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2963, file: !180, line: 151, baseType: !2968, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !180, line: 141, size: 256, elements: !2970)
!2970 = !{!2971, !3040, !3041, !3042}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2969, file: !180, line: 142, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !180, line: 138, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!190, !2976, !37, !3039}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !180, line: 93, size: 67776, elements: !2978)
!2978 = !{!2979, !2982, !2985, !2988, !2989, !2990, !2991, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3019, !3022, !3023, !3024, !3032, !3033, !3034, !3035, !3036, !3037, !3038}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2977, file: !180, line: 94, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !180, line: 13, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2977, file: !180, line: 95, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !180, line: 15, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2977, file: !180, line: 96, baseType: !2986, size: 64, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !180, line: 14, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2977, file: !180, line: 97, baseType: !35, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2977, file: !180, line: 98, baseType: !37, size: 32, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2977, file: !180, line: 99, baseType: !581, size: 256, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2977, file: !180, line: 100, baseType: !2992, size: 64, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2995, line: 10, flags: DIFlagFwdDecl)
!2995 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2977, file: !180, line: 101, baseType: !54, size: 64, offset: 640)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2977, file: !180, line: 102, baseType: !35, size: 64, offset: 704)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2977, file: !180, line: 103, baseType: !23, size: 32, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2977, file: !180, line: 104, baseType: !474, size: 64, offset: 832)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2977, file: !180, line: 105, baseType: !23, size: 32, offset: 896)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2977, file: !180, line: 106, baseType: !543, size: 64, offset: 960)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2977, file: !180, line: 109, baseType: !3003, size: 33088, offset: 1024)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3004, line: 14, size: 33088, elements: !3005)
!3004 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3005 = !{!3006, !3010, !3017, !3018}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3003, file: !3004, line: 15, baseType: !3007, size: 32768)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !3008)
!3008 = !{!3009}
!3009 = !DISubrange(count: 4096)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3003, file: !3004, line: 16, baseType: !3011, size: 192, offset: 32768)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3012, line: 18, size: 192, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3011, file: !3012, line: 19, baseType: !474, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3011, file: !3012, line: 20, baseType: !50, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3011, file: !3012, line: 21, baseType: !50, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3003, file: !3004, line: 17, baseType: !50, size: 64, offset: 32960)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3003, file: !3004, line: 18, baseType: !37, size: 32, offset: 33024)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2977, file: !180, line: 111, baseType: !3020, size: 64, offset: 34112)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !911, line: 913, baseType: !3021)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 64, elements: !17)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2977, file: !180, line: 114, baseType: !468, size: 8, offset: 34176)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2977, file: !180, line: 117, baseType: !3003, size: 33088, offset: 34240)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2977, file: !180, line: 118, baseType: !3025, size: 64, offset: 67328)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !180, line: 79, size: 64, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3026, file: !180, line: 80, baseType: !41, size: 16)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3026, file: !180, line: 81, baseType: !102, size: 8, offset: 16)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3026, file: !180, line: 82, baseType: !102, size: 8, offset: 24)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3026, file: !180, line: 83, baseType: !37, size: 32, offset: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2977, file: !180, line: 119, baseType: !54, size: 64, offset: 67392)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2977, file: !180, line: 120, baseType: !37, size: 32, offset: 67456)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2977, file: !180, line: 121, baseType: !37, size: 32, offset: 67488)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2977, file: !180, line: 122, baseType: !37, size: 32, offset: 67520)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2977, file: !180, line: 123, baseType: !402, size: 64, offset: 67584)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2977, file: !180, line: 125, baseType: !56, size: 64, offset: 67648)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2977, file: !180, line: 126, baseType: !543, size: 64, offset: 67712)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2969, file: !180, line: 143, baseType: !2972, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2969, file: !180, line: 144, baseType: !2972, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2969, file: !180, line: 145, baseType: !2972, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2859, file: !180, line: 381, baseType: !474, size: 64, offset: 512)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2859, file: !180, line: 382, baseType: !3045, size: 64, offset: 576)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !250, line: 821, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !2859, file: !180, line: 387, baseType: !3048, size: 64, offset: 640)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2859, file: !180, line: 387, size: 64, elements: !3049)
!3049 = !{!3050, !3051}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3048, file: !180, line: 388, baseType: !35, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3048, file: !180, line: 389, baseType: !64, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2859, file: !180, line: 391, baseType: !35, size: 64, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2859, file: !180, line: 394, baseType: !37, size: 32, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2859, file: !180, line: 397, baseType: !37, size: 32, offset: 800)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2859, file: !180, line: 398, baseType: !3056, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2859, file: !180, line: 399, baseType: !3058, size: 64, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !180, line: 399, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2859, file: !180, line: 401, baseType: !3061, size: 64, offset: 960)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!37, !2858, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !250, line: 671, size: 8512, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3602, !3603, !3604, !3605, !3611, !3612, !3613, !3614, !3615, !3699, !3700, !3701, !3702, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3822, !3823, !3824, !3825, !3826, !3827, !3842, !3843, !3844, !3845, !3846, !3852, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3869, !4040, !4041, !4042, !4043, !4308, !4309, !4310}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3065, file: !250, line: 678, baseType: !112, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3065, file: !250, line: 684, baseType: !112, size: 128, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3065, file: !250, line: 685, baseType: !112, size: 128, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3065, file: !250, line: 689, baseType: !718, size: 192, align: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3065, file: !250, line: 690, baseType: !402, size: 64, offset: 576)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3065, file: !250, line: 696, baseType: !112, size: 128, offset: 640)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3065, file: !250, line: 698, baseType: !358, size: 128, offset: 768)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3065, file: !250, line: 699, baseType: !112, size: 128, offset: 896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3065, file: !250, line: 700, baseType: !37, size: 32, offset: 1024)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3065, file: !250, line: 703, baseType: !37, size: 32, offset: 1056)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3065, file: !250, line: 705, baseType: !37, size: 32, offset: 1088)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3065, file: !250, line: 707, baseType: !23, size: 32, offset: 1120)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3065, file: !250, line: 708, baseType: !3064, size: 64, offset: 1152)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3065, file: !250, line: 714, baseType: !3081, size: 64, offset: 1216)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !250, line: 302, size: 2432, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3509, !3510, !3511, !3512, !3513, !3517, !3518, !3522, !3526, !3527, !3531, !3535, !3536, !3537, !3541, !3545, !3549, !3550, !3551, !3555, !3559, !3563, !3567, !3568, !3588, !3592, !3593, !3594, !3598}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3082, file: !250, line: 303, baseType: !112, size: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3082, file: !250, line: 305, baseType: !1676, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3082, file: !250, line: 306, baseType: !3087, size: 64, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !203, line: 705, size: 5824, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3095, !3096, !3149, !3219, !3220, !3221, !3222, !3223, !3230, !3322, !3335, !3345, !3349, !3351, !3352, !3353, !3357, !3364, !3365, !3368, !3371, !3375, !3378, !3379, !3380, !3381, !3382, !3383, !3413, !3414, !3415, !3418, !3421, !3430, !3431, !3432, !3433, !3434, !3435}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3088, file: !203, line: 706, baseType: !1689, size: 512)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3088, file: !203, line: 707, baseType: !3087, size: 64, offset: 512)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3088, file: !203, line: 709, baseType: !3093, size: 64, offset: 576)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !203, line: 37, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3088, file: !203, line: 711, baseType: !32, size: 64, offset: 640)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3088, file: !203, line: 712, baseType: !3097, size: 64, offset: 704)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !203, line: 89, size: 384, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3109, !3114, !3118}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3099, file: !203, line: 90, baseType: !32, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3099, file: !203, line: 91, baseType: !1772, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3099, file: !203, line: 92, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!37, !3107, !1725}
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3088)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3099, file: !203, line: 93, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!474, !3107, !3113, !1341, !1342}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !203, line: 95, baseType: !3115, size: 64, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3087}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3099, file: !203, line: 97, baseType: !3119, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !210, line: 286, size: 1472, elements: !3122)
!3122 = !{!3123, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3121, file: !210, line: 287, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!37, !3087}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3121, file: !210, line: 288, baseType: !3115, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3121, file: !210, line: 289, baseType: !3124, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3121, file: !210, line: 290, baseType: !3124, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3121, file: !210, line: 291, baseType: !3124, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3121, file: !210, line: 292, baseType: !3124, size: 64, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3121, file: !210, line: 293, baseType: !3124, size: 64, offset: 384)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3121, file: !210, line: 294, baseType: !3124, size: 64, offset: 448)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3121, file: !210, line: 295, baseType: !3124, size: 64, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3121, file: !210, line: 296, baseType: !3124, size: 64, offset: 576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3121, file: !210, line: 297, baseType: !3124, size: 64, offset: 640)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3121, file: !210, line: 298, baseType: !3124, size: 64, offset: 704)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3121, file: !210, line: 299, baseType: !3124, size: 64, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3121, file: !210, line: 300, baseType: !3124, size: 64, offset: 832)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3121, file: !210, line: 301, baseType: !3124, size: 64, offset: 896)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3121, file: !210, line: 302, baseType: !3124, size: 64, offset: 960)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3121, file: !210, line: 303, baseType: !3124, size: 64, offset: 1024)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3121, file: !210, line: 304, baseType: !3124, size: 64, offset: 1088)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3121, file: !210, line: 305, baseType: !3124, size: 64, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3121, file: !210, line: 306, baseType: !3124, size: 64, offset: 1216)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3121, file: !210, line: 307, baseType: !3124, size: 64, offset: 1280)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3121, file: !210, line: 308, baseType: !3124, size: 64, offset: 1344)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3121, file: !210, line: 309, baseType: !3124, size: 64, offset: 1408)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3088, file: !203, line: 714, baseType: !3150, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3153, line: 80, size: 1344, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3218}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3152, file: !3153, line: 81, baseType: !32, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3152, file: !3153, line: 82, baseType: !32, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3152, file: !3153, line: 83, baseType: !1772, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3152, file: !3153, line: 84, baseType: !1772, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3152, file: !3153, line: 85, baseType: !1772, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3152, file: !3153, line: 87, baseType: !3161, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!37, !3087, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !197, line: 96, size: 1152, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172, !3173, !3177, !3181, !3182, !3183, !3184, !3185, !3193, !3194, !3195, !3196, !3197, !3198}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3165, file: !197, line: 97, baseType: !32, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3165, file: !197, line: 98, baseType: !3150, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3165, file: !197, line: 100, baseType: !1676, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3165, file: !197, line: 101, baseType: !32, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3165, file: !197, line: 103, baseType: !468, size: 8, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3165, file: !197, line: 104, baseType: !196, size: 32, offset: 288)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3165, file: !197, line: 106, baseType: !3174, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3176)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !197, line: 106, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3165, file: !197, line: 107, baseType: !3178, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3180)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !197, line: 107, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3165, file: !197, line: 109, baseType: !3124, size: 64, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3165, file: !197, line: 110, baseType: !3115, size: 64, offset: 512)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3165, file: !197, line: 111, baseType: !3124, size: 64, offset: 576)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3165, file: !197, line: 112, baseType: !3115, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3165, file: !197, line: 113, baseType: !3186, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!37, !3087, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !210, line: 60, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !210, line: 58, size: 32, elements: !3191)
!3191 = !{!3192}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3190, file: !210, line: 59, baseType: !37, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3165, file: !197, line: 114, baseType: !3124, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3165, file: !197, line: 115, baseType: !1772, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3165, file: !197, line: 116, baseType: !1772, size: 64, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3165, file: !197, line: 118, baseType: !3119, size: 64, offset: 960)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3165, file: !197, line: 119, baseType: !3115, size: 64, offset: 1024)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3165, file: !197, line: 121, baseType: !3199, size: 64, offset: 1088)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !197, line: 121, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3152, file: !3153, line: 88, baseType: !3104, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3152, file: !3153, line: 89, baseType: !3124, size: 64, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3152, file: !3153, line: 90, baseType: !3115, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3152, file: !3153, line: 91, baseType: !3115, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3152, file: !3153, line: 92, baseType: !3115, size: 64, offset: 640)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3152, file: !3153, line: 94, baseType: !3124, size: 64, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3152, file: !3153, line: 95, baseType: !3124, size: 64, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3152, file: !3153, line: 97, baseType: !3186, size: 64, offset: 832)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3152, file: !3153, line: 98, baseType: !3124, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3152, file: !3153, line: 100, baseType: !3124, size: 64, offset: 960)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3152, file: !3153, line: 102, baseType: !3124, size: 64, offset: 1024)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3152, file: !3153, line: 103, baseType: !3115, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3152, file: !3153, line: 105, baseType: !3119, size: 64, offset: 1152)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3152, file: !3153, line: 107, baseType: !3215, size: 64, offset: 1216)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3153, line: 107, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3152, file: !3153, line: 109, baseType: !468, size: 8, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3088, file: !203, line: 715, baseType: !3164, size: 64, offset: 832)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3088, file: !203, line: 717, baseType: !35, size: 64, offset: 896)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3088, file: !203, line: 719, baseType: !35, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3088, file: !203, line: 721, baseType: !581, size: 256, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3088, file: !203, line: 725, baseType: !3224, size: 448, offset: 1280)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !203, line: 517, size: 448, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3224, file: !203, line: 518, baseType: !112, size: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3224, file: !203, line: 519, baseType: !112, size: 128, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3224, file: !203, line: 520, baseType: !112, size: 128, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3224, file: !203, line: 521, baseType: !202, size: 32, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3088, file: !203, line: 726, baseType: !3231, size: 2496, offset: 1728)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !210, line: 663, size: 2496, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3315, !3319}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3231, file: !210, line: 664, baseType: !3189, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3231, file: !210, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3231, file: !210, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3231, file: !210, line: 667, baseType: !468, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3231, file: !210, line: 668, baseType: !468, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3231, file: !210, line: 669, baseType: !468, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3231, file: !210, line: 670, baseType: !468, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3231, file: !210, line: 671, baseType: !468, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3231, file: !210, line: 672, baseType: !468, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3231, file: !210, line: 673, baseType: !468, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3231, file: !210, line: 674, baseType: !468, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3231, file: !210, line: 675, baseType: !332, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3231, file: !210, line: 676, baseType: !74, size: 32, offset: 96)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3231, file: !210, line: 678, baseType: !112, size: 128, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3231, file: !210, line: 679, baseType: !1316, size: 256, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3231, file: !210, line: 680, baseType: !3249, size: 64, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3251, line: 43, size: 1536, elements: !3252)
!3251 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !3251, line: 44, baseType: !32, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3250, file: !3251, line: 45, baseType: !37, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3250, file: !3251, line: 46, baseType: !112, size: 128, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3250, file: !3251, line: 47, baseType: !74, size: 32, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3250, file: !3251, line: 48, baseType: !3258, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !210, line: 629, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3250, file: !3251, line: 49, baseType: !2778, size: 320, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3250, file: !3251, line: 50, baseType: !54, size: 64, offset: 704)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3250, file: !3251, line: 51, baseType: !796, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3250, file: !3251, line: 52, baseType: !796, size: 64, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3250, file: !3251, line: 53, baseType: !796, size: 64, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3250, file: !3251, line: 54, baseType: !796, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3250, file: !3251, line: 55, baseType: !796, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3250, file: !3251, line: 56, baseType: !54, size: 64, offset: 1088)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3250, file: !3251, line: 57, baseType: !54, size: 64, offset: 1152)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3250, file: !3251, line: 58, baseType: !54, size: 64, offset: 1216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3250, file: !3251, line: 59, baseType: !54, size: 64, offset: 1280)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3250, file: !3251, line: 60, baseType: !54, size: 64, offset: 1344)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3250, file: !3251, line: 61, baseType: !3087, size: 64, offset: 1408)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3250, file: !3251, line: 62, baseType: !468, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3250, file: !3251, line: 63, baseType: !468, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3231, file: !210, line: 681, baseType: !468, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3231, file: !210, line: 682, baseType: !468, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3231, file: !210, line: 683, baseType: !468, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3231, file: !210, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3231, file: !210, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3231, file: !210, line: 690, baseType: !788, size: 512, offset: 640)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3231, file: !210, line: 691, baseType: !402, size: 64, offset: 1152)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3231, file: !210, line: 692, baseType: !1277, size: 256, offset: 1216)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3231, file: !210, line: 693, baseType: !69, size: 192, offset: 1472)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3231, file: !210, line: 694, baseType: !3258, size: 64, offset: 1664)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3231, file: !210, line: 695, baseType: !64, size: 32, offset: 1728)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3231, file: !210, line: 696, baseType: !64, size: 32, offset: 1760)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3231, file: !210, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3231, file: !210, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3231, file: !210, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3231, file: !210, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3231, file: !210, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3231, file: !210, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3231, file: !210, line: 703, baseType: !468, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3231, file: !210, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3231, file: !210, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3231, file: !210, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3231, file: !210, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3231, file: !210, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3231, file: !210, line: 709, baseType: !23, size: 32, offset: 1824)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3231, file: !210, line: 710, baseType: !209, size: 32, offset: 1856)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3231, file: !210, line: 711, baseType: !217, size: 32, offset: 1888)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3231, file: !210, line: 712, baseType: !217, size: 32, offset: 1920)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3231, file: !210, line: 713, baseType: !37, size: 32, offset: 1952)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3231, file: !210, line: 714, baseType: !37, size: 32, offset: 1984)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3231, file: !210, line: 715, baseType: !402, size: 64, offset: 2048)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3231, file: !210, line: 716, baseType: !402, size: 64, offset: 2112)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3231, file: !210, line: 717, baseType: !402, size: 64, offset: 2176)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3231, file: !210, line: 718, baseType: !402, size: 64, offset: 2240)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3231, file: !210, line: 720, baseType: !3310, size: 64, offset: 2304)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !210, line: 632, size: 64, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3311, file: !210, line: 633, baseType: !74, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3311, file: !210, line: 634, baseType: !23, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3231, file: !210, line: 721, baseType: !3316, size: 64, offset: 2368)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !3087, !1062}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3231, file: !210, line: 722, baseType: !3320, size: 64, offset: 2432)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !210, line: 722, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3088, file: !203, line: 727, baseType: !3323, size: 64, offset: 4224)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !210, line: 742, size: 1792, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3332, !3333, !3334}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3324, file: !210, line: 743, baseType: !3121, size: 1472)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3324, file: !210, line: 744, baseType: !3124, size: 64, offset: 1472)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3324, file: !210, line: 745, baseType: !3329, size: 64, offset: 1536)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3087, !468}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3324, file: !210, line: 746, baseType: !3124, size: 64, offset: 1600)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3324, file: !210, line: 747, baseType: !3115, size: 64, offset: 1664)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3324, file: !210, line: 748, baseType: !3115, size: 64, offset: 1728)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3088, file: !203, line: 736, baseType: !3336, size: 128, offset: 4288)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !203, line: 529, size: 128, elements: !3337)
!3337 = !{!3338, !3342}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3336, file: !203, line: 531, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3341, line: 13, flags: DIFlagFwdDecl)
!3341 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3336, file: !203, line: 532, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !203, line: 49, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3088, file: !203, line: 738, baseType: !3346, size: 64, offset: 4416)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !203, line: 738, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3088, file: !203, line: 740, baseType: !3350, size: 64, offset: 4480)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3088, file: !203, line: 741, baseType: !402, size: 64, offset: 4544)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3088, file: !203, line: 746, baseType: !402, size: 64, offset: 4608)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3088, file: !203, line: 747, baseType: !3354, size: 64, offset: 4672)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3356)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !203, line: 747, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3088, file: !203, line: 749, baseType: !3358, size: 64, offset: 4736)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !203, line: 428, size: 128, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3359, file: !203, line: 433, baseType: !23, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3359, file: !203, line: 434, baseType: !23, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3359, file: !203, line: 435, baseType: !54, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3088, file: !203, line: 751, baseType: !112, size: 128, offset: 4800)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3088, file: !203, line: 762, baseType: !3366, size: 64, offset: 4928)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !203, line: 762, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3088, file: !203, line: 770, baseType: !3369, offset: 4992)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3370, line: 5, elements: !350)
!3370 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3088, file: !203, line: 772, baseType: !3372, size: 64, offset: 4992)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3374, line: 18, flags: DIFlagFwdDecl)
!3374 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3088, file: !203, line: 773, baseType: !3376, size: 64, offset: 5056)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3153, line: 22, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3088, file: !203, line: 776, baseType: !37, size: 32, offset: 5120)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3088, file: !203, line: 778, baseType: !500, size: 32, offset: 5152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3088, file: !203, line: 779, baseType: !332, size: 32, offset: 5184)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3088, file: !203, line: 781, baseType: !74, size: 32, offset: 5216)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3088, file: !203, line: 782, baseType: !112, size: 128, offset: 5248)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3088, file: !203, line: 784, baseType: !3384, size: 64, offset: 5376)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3386)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3387, line: 52, size: 768, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3397, !3401, !3402, !3403, !3404, !3408, !3412}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3386, file: !3387, line: 53, baseType: !32, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3386, file: !3387, line: 55, baseType: !1772, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3386, file: !3387, line: 56, baseType: !1772, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3386, file: !3387, line: 58, baseType: !3104, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3386, file: !3387, line: 59, baseType: !3394, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!474, !3107, !3113}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3386, file: !3387, line: 61, baseType: !3398, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !3384}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3386, file: !3387, line: 62, baseType: !3115, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3386, file: !3387, line: 64, baseType: !3124, size: 64, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3386, file: !3387, line: 66, baseType: !2353, size: 64, offset: 512)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3386, file: !3387, line: 67, baseType: !3405, size: 64, offset: 576)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!1095, !3107}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3386, file: !3387, line: 69, baseType: !3409, size: 64, offset: 640)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !3107, !1341, !1342}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3386, file: !3387, line: 71, baseType: !3119, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3088, file: !203, line: 785, baseType: !1772, size: 64, offset: 5440)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3088, file: !203, line: 787, baseType: !3115, size: 64, offset: 5504)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3088, file: !203, line: 788, baseType: !3416, size: 64, offset: 5568)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !203, line: 46, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3088, file: !203, line: 789, baseType: !3419, size: 64, offset: 5632)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !203, line: 48, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3088, file: !203, line: 791, baseType: !3422, size: 64, offset: 5696)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !203, line: 597, size: 128, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3423, file: !203, line: 598, baseType: !224, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3423, file: !203, line: 599, baseType: !233, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3423, file: !203, line: 600, baseType: !238, size: 32, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3423, file: !203, line: 601, baseType: !468, size: 8, offset: 96)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3423, file: !203, line: 602, baseType: !468, size: 8, offset: 104)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3088, file: !203, line: 793, baseType: !243, size: 32, offset: 5760)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3088, file: !203, line: 795, baseType: !468, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3088, file: !203, line: 796, baseType: !468, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3088, file: !203, line: 797, baseType: !468, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3088, file: !203, line: 798, baseType: !468, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3088, file: !203, line: 799, baseType: !468, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3082, file: !250, line: 307, baseType: !3087, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3082, file: !250, line: 308, baseType: !1772, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3082, file: !250, line: 309, baseType: !1772, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3082, file: !250, line: 310, baseType: !32, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3082, file: !250, line: 311, baseType: !37, size: 32, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3082, file: !250, line: 316, baseType: !37, size: 32, offset: 544)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3082, file: !250, line: 318, baseType: !320, size: 64, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3082, file: !250, line: 319, baseType: !3444, size: 64, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !250, line: 977, size: 1856, elements: !3446)
!3446 = !{!3447, !3499, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3445, file: !250, line: 978, baseType: !3448, size: 896)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !250, line: 873, size: 896, elements: !3449)
!3449 = !{!3450, !3451, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3448, file: !250, line: 874, baseType: !3081, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3448, file: !250, line: 875, baseType: !3452, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !250, line: 912, size: 1792, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3453, file: !250, line: 917, baseType: !586, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3453, file: !250, line: 923, baseType: !581, size: 256, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3453, file: !250, line: 925, baseType: !112, size: 128, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3453, file: !250, line: 926, baseType: !3459, size: 128, offset: 448)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !250, line: 901, size: 128, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3459, file: !250, line: 902, baseType: !850, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3459, file: !250, line: 903, baseType: !402, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3453, file: !250, line: 927, baseType: !3459, size: 128, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3453, file: !250, line: 928, baseType: !112, size: 128, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3453, file: !250, line: 930, baseType: !37, size: 32, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3453, file: !250, line: 931, baseType: !37, size: 32, offset: 864)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3453, file: !250, line: 932, baseType: !37, size: 32, offset: 896)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3453, file: !250, line: 934, baseType: !37, size: 32, offset: 928)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3453, file: !250, line: 935, baseType: !37, size: 32, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3453, file: !250, line: 936, baseType: !37, size: 32, offset: 992)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3453, file: !250, line: 937, baseType: !37, size: 32, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3453, file: !250, line: 939, baseType: !626, size: 32, offset: 1056)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3453, file: !250, line: 940, baseType: !669, size: 64, offset: 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3453, file: !250, line: 945, baseType: !402, size: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3453, file: !250, line: 946, baseType: !402, size: 64, offset: 1216)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3453, file: !250, line: 947, baseType: !402, size: 64, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3453, file: !250, line: 953, baseType: !3452, size: 64, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3453, file: !250, line: 954, baseType: !402, size: 64, offset: 1408)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3453, file: !250, line: 955, baseType: !402, size: 64, offset: 1472)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3453, file: !250, line: 956, baseType: !37, size: 32, offset: 1536)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3453, file: !250, line: 958, baseType: !37, size: 32, offset: 1568)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3453, file: !250, line: 960, baseType: !560, size: 128, align: 64, offset: 1600)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3453, file: !250, line: 968, baseType: !3484, size: 64, offset: 1728)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3485, line: 12, baseType: !3486)
!3485 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3485, line: 10, size: 64, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3486, file: !3485, line: 11, baseType: !573, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3448, file: !250, line: 877, baseType: !112, size: 128, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3448, file: !250, line: 879, baseType: !112, size: 128, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3448, file: !250, line: 880, baseType: !112, size: 128, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3448, file: !250, line: 883, baseType: !23, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3448, file: !250, line: 885, baseType: !23, size: 32, offset: 544)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3448, file: !250, line: 886, baseType: !23, size: 32, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3448, file: !250, line: 888, baseType: !64, size: 32, offset: 608)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3448, file: !250, line: 889, baseType: !560, size: 128, align: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3448, file: !250, line: 891, baseType: !35, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3448, file: !250, line: 898, baseType: !37, size: 32, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3445, file: !250, line: 979, baseType: !3500, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3445, file: !250, line: 981, baseType: !112, size: 128, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3445, file: !250, line: 982, baseType: !37, size: 32, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3445, file: !250, line: 984, baseType: !37, size: 32, offset: 1120)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3445, file: !250, line: 985, baseType: !37, size: 32, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3445, file: !250, line: 987, baseType: !586, size: 32, offset: 1184)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3445, file: !250, line: 988, baseType: !788, size: 512, offset: 1216)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3445, file: !250, line: 989, baseType: !796, size: 64, offset: 1728)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3445, file: !250, line: 990, baseType: !23, size: 32, offset: 1792)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3082, file: !250, line: 320, baseType: !64, size: 32, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3082, file: !250, line: 321, baseType: !37, size: 32, offset: 736)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3082, file: !250, line: 322, baseType: !37, size: 32, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3082, file: !250, line: 325, baseType: !23, size: 32, offset: 800)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3082, file: !250, line: 331, baseType: !3514, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{null, !3081}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3082, file: !250, line: 332, baseType: !3514, size: 64, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3082, file: !250, line: 350, baseType: !3519, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!37, !3064}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3082, file: !250, line: 356, baseType: !3523, size: 64, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !3064, !962}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3082, file: !250, line: 357, baseType: !3523, size: 64, offset: 1088)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3082, file: !250, line: 385, baseType: !3528, size: 64, offset: 1152)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!37, !3064, !37}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3082, file: !250, line: 386, baseType: !3532, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !3064, !37}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3082, file: !250, line: 406, baseType: !3532, size: 64, offset: 1280)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3082, file: !250, line: 407, baseType: !3532, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3082, file: !250, line: 415, baseType: !3538, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3064}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3082, file: !250, line: 427, baseType: !3542, size: 64, offset: 1472)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !3081, !23}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3082, file: !250, line: 436, baseType: !3546, size: 64, offset: 1536)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!37, !3081}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3082, file: !250, line: 443, baseType: !3514, size: 64, offset: 1600)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3082, file: !250, line: 450, baseType: !3519, size: 64, offset: 1664)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3082, file: !250, line: 455, baseType: !3552, size: 64, offset: 1728)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3500, !468}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3082, file: !250, line: 461, baseType: !3556, size: 64, offset: 1792)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3558, line: 325, flags: DIFlagFwdDecl)
!3558 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3082, file: !250, line: 469, baseType: !3560, size: 64, offset: 1856)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3500, !3500}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3082, file: !250, line: 476, baseType: !3564, size: 64, offset: 1920)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!35, !3064, !2192, !37, !468}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3082, file: !250, line: 483, baseType: !453, size: 64, offset: 1984)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3082, file: !250, line: 494, baseType: !3569, size: 64, offset: 2048)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!543, !3064, !3572, !54}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !250, line: 1014, size: 448, elements: !3574)
!3574 = !{!3575, !3576, !3579, !3580, !3581, !3582, !3587}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3573, file: !250, line: 1015, baseType: !3064, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3573, file: !250, line: 1016, baseType: !3577, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !250, line: 641, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3573, file: !250, line: 1017, baseType: !54, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3573, file: !250, line: 1018, baseType: !54, size: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3573, file: !250, line: 1019, baseType: !402, size: 64, offset: 256)
!3582 = !DIDerivedType(tag: DW_TAG_member, scope: !3573, file: !250, line: 1020, baseType: !3583, size: 64, offset: 320)
!3583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3573, file: !250, line: 1020, size: 64, elements: !3584)
!3584 = !{!3585, !3586}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3583, file: !250, line: 1021, baseType: !35, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3583, file: !250, line: 1022, baseType: !54, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3573, file: !250, line: 1024, baseType: !37, size: 32, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3082, file: !250, line: 506, baseType: !3589, size: 64, offset: 2112)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!37, !115}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3082, file: !250, line: 520, baseType: !3538, size: 64, offset: 2176)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3082, file: !250, line: 530, baseType: !3519, size: 64, offset: 2240)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3082, file: !250, line: 537, baseType: !3595, size: 64, offset: 2304)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!468, !3081, !37}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3082, file: !250, line: 542, baseType: !3599, size: 64, offset: 2368)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!37, !3064, !402}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3065, file: !250, line: 715, baseType: !35, size: 64, offset: 1280)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3065, file: !250, line: 717, baseType: !249, size: 32, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3065, file: !250, line: 718, baseType: !23, size: 32, offset: 1376)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3065, file: !250, line: 719, baseType: !3606, size: 64, offset: 1408)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3607, line: 26, baseType: !3608)
!3607 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3607, line: 24, size: 64, elements: !3609)
!3609 = !{!3610}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3608, file: !3607, line: 25, baseType: !3484, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3065, file: !250, line: 720, baseType: !575, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3065, file: !250, line: 728, baseType: !402, size: 64, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3065, file: !250, line: 729, baseType: !402, size: 64, offset: 1600)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3065, file: !250, line: 730, baseType: !402, size: 64, offset: 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3065, file: !250, line: 732, baseType: !3616, size: 1088, offset: 1728)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3617, line: 385, size: 1088, elements: !3618)
!3617 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3618 = !{!3619, !3620, !3621, !3622, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3672, !3673, !3680, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3616, file: !3617, line: 390, baseType: !314, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3616, file: !3617, line: 395, baseType: !314, size: 32, offset: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3616, file: !3617, line: 400, baseType: !403, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !3617, line: 402, baseType: !3623, size: 64, offset: 128)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !3617, line: 402, size: 64, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3623, file: !3617, line: 403, baseType: !403, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3623, file: !3617, line: 404, baseType: !403, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3616, file: !3617, line: 407, baseType: !403, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3616, file: !3617, line: 408, baseType: !403, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3616, file: !3617, line: 410, baseType: !403, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3616, file: !3617, line: 411, baseType: !403, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3616, file: !3617, line: 412, baseType: !403, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3616, file: !3617, line: 413, baseType: !403, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3616, file: !3617, line: 414, baseType: !403, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3616, file: !3617, line: 415, baseType: !403, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3616, file: !3617, line: 416, baseType: !403, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3616, file: !3617, line: 417, baseType: !403, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3616, file: !3617, line: 418, baseType: !403, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3616, file: !3617, line: 419, baseType: !403, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3616, file: !3617, line: 420, baseType: !403, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3616, file: !3617, line: 421, baseType: !403, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3616, file: !3617, line: 422, baseType: !403, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3616, file: !3617, line: 423, baseType: !403, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3616, file: !3617, line: 424, baseType: !403, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3616, file: !3617, line: 435, baseType: !403, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3616, file: !3617, line: 436, baseType: !403, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3616, file: !3617, line: 437, baseType: !403, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3616, file: !3617, line: 439, baseType: !403, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3616, file: !3617, line: 440, baseType: !403, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3616, file: !3617, line: 442, baseType: !403, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3616, file: !3617, line: 443, baseType: !403, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3616, file: !3617, line: 444, baseType: !403, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3616, file: !3617, line: 445, baseType: !403, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3616, file: !3617, line: 446, baseType: !403, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3616, file: !3617, line: 447, baseType: !403, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3616, file: !3617, line: 448, baseType: !403, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3616, file: !3617, line: 449, baseType: !403, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3616, file: !3617, line: 450, baseType: !403, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3616, file: !3617, line: 451, baseType: !403, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3616, file: !3617, line: 452, baseType: !403, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3616, file: !3617, line: 453, baseType: !403, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3616, file: !3617, line: 454, baseType: !403, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3616, file: !3617, line: 455, baseType: !403, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3616, file: !3617, line: 456, baseType: !403, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3616, file: !3617, line: 457, baseType: !403, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3616, file: !3617, line: 458, baseType: !403, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3616, file: !3617, line: 459, baseType: !403, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !3617, line: 461, baseType: !3668, size: 32, offset: 384)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !3617, line: 461, size: 32, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3668, file: !3617, line: 462, baseType: !314, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3668, file: !3617, line: 463, baseType: !314, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3616, file: !3617, line: 466, baseType: !314, size: 32, offset: 416)
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !3617, line: 467, baseType: !3674, size: 64, offset: 448)
!3674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !3617, line: 467, size: 64, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3674, file: !3617, line: 468, baseType: !403, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3674, file: !3617, line: 469, baseType: !403, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3674, file: !3617, line: 470, baseType: !403, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3674, file: !3617, line: 471, baseType: !403, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !3617, line: 473, baseType: !3681, size: 64, offset: 512)
!3681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !3617, line: 473, size: 64, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3681, file: !3617, line: 474, baseType: !403, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3681, file: !3617, line: 475, baseType: !403, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3681, file: !3617, line: 476, baseType: !403, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3681, file: !3617, line: 477, baseType: !403, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3616, file: !3617, line: 479, baseType: !403, size: 64, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3616, file: !3617, line: 485, baseType: !403, size: 64, offset: 640)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3616, file: !3617, line: 490, baseType: !314, size: 32, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3616, file: !3617, line: 492, baseType: !1063, size: 32, offset: 736)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3616, file: !3617, line: 501, baseType: !403, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3616, file: !3617, line: 506, baseType: !314, size: 32, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3616, file: !3617, line: 507, baseType: !109, size: 16, offset: 864)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3616, file: !3617, line: 508, baseType: !109, size: 16, offset: 880)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3616, file: !3617, line: 509, baseType: !314, size: 32, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3616, file: !3617, line: 510, baseType: !314, size: 32, offset: 928)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3616, file: !3617, line: 518, baseType: !403, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3616, file: !3617, line: 520, baseType: !403, size: 64, offset: 1024)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3065, file: !250, line: 733, baseType: !108, size: 16, offset: 2816)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3065, file: !250, line: 734, baseType: !108, size: 16, offset: 2832)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3065, file: !250, line: 735, baseType: !108, size: 16, offset: 2848)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3065, file: !250, line: 736, baseType: !3703, size: 1536, offset: 2880)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !250, line: 155, size: 1536, elements: !3704)
!3704 = !{!3705, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3789, !3790, !3791, !3792}
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !250, line: 157, baseType: !3706, size: 768)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !250, line: 157, size: 768, elements: !3707)
!3707 = !{!3708, !3727, !3731, !3735, !3740, !3762}
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 158, baseType: !3709, size: 768)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 158, size: 768, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3726}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3709, file: !250, line: 159, baseType: !402, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3709, file: !250, line: 160, baseType: !402, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3709, file: !250, line: 161, baseType: !54, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3709, file: !250, line: 162, baseType: !54, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3709, file: !250, line: 163, baseType: !37, size: 32, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3709, file: !250, line: 164, baseType: !37, size: 32, offset: 288)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3709, file: !250, line: 165, baseType: !37, size: 32, offset: 320)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3709, file: !250, line: 166, baseType: !37, size: 32, offset: 352)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3709, file: !250, line: 168, baseType: !3720, size: 192, offset: 384)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !250, line: 134, size: 192, elements: !3721)
!3721 = !{!3722, !3723, !3724, !3725}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3720, file: !250, line: 135, baseType: !402, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3720, file: !250, line: 136, baseType: !23, size: 32, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3720, file: !250, line: 137, baseType: !37, size: 32, offset: 96)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3720, file: !250, line: 138, baseType: !37, size: 32, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3709, file: !250, line: 169, baseType: !3720, size: 192, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 171, baseType: !3728, size: 512)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 171, size: 512, elements: !3729)
!3729 = !{!3730}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3728, file: !250, line: 172, baseType: !788, size: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 174, baseType: !3732, size: 128)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 174, size: 128, elements: !3733)
!3733 = !{!3734}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3732, file: !250, line: 176, baseType: !112, size: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 178, baseType: !3736, size: 128)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 178, size: 128, elements: !3737)
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3736, file: !250, line: 179, baseType: !402, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3736, file: !250, line: 180, baseType: !402, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 183, baseType: !3741, size: 320)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 183, size: 320, elements: !3742)
!3742 = !{!3743, !3751}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3741, file: !250, line: 189, baseType: !3744, size: 192)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3745, line: 14, size: 192, elements: !3746)
!3745 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3744, file: !3745, line: 15, baseType: !54, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3744, file: !3745, line: 16, baseType: !54, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3744, file: !3745, line: 17, baseType: !98, size: 8, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3744, file: !3745, line: 18, baseType: !98, size: 8, offset: 136)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3741, file: !250, line: 190, baseType: !3752, size: 128, offset: 192)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3753, line: 21, size: 128, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3754 = !{!3755, !3760}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3752, file: !3753, line: 22, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3753, line: 17, size: 64, elements: !3757)
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3756, file: !3753, line: 18, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3752, file: !3753, line: 23, baseType: !3761, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !250, line: 193, baseType: !3763, size: 192)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !250, line: 193, size: 192, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3763, file: !250, line: 194, baseType: !98, size: 8)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3763, file: !250, line: 195, baseType: !98, size: 8, offset: 8)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3763, file: !250, line: 196, baseType: !108, size: 16, offset: 16)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3763, file: !250, line: 197, baseType: !402, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3763, file: !250, line: 198, baseType: !402, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3703, file: !250, line: 205, baseType: !669, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3703, file: !250, line: 211, baseType: !35, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3703, file: !250, line: 214, baseType: !54, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3703, file: !250, line: 223, baseType: !37, size: 32, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3703, file: !250, line: 229, baseType: !3606, size: 64, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3703, file: !250, line: 234, baseType: !402, size: 64, offset: 1088)
!3776 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !250, line: 236, baseType: !3777, size: 128, offset: 1152)
!3777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !250, line: 236, size: 128, elements: !3778)
!3778 = !{!3779, !3784}
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !3777, file: !250, line: 237, baseType: !3780, size: 128)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3777, file: !250, line: 237, size: 128, elements: !3781)
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3780, file: !250, line: 241, baseType: !402, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3780, file: !250, line: 249, baseType: !3606, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !3777, file: !250, line: 251, baseType: !3785, size: 128)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3777, file: !250, line: 251, size: 128, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3785, file: !250, line: 252, baseType: !402, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3785, file: !250, line: 253, baseType: !402, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3703, file: !250, line: 261, baseType: !402, size: 64, offset: 1280)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3703, file: !250, line: 262, baseType: !402, size: 64, offset: 1344)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3703, file: !250, line: 268, baseType: !402, size: 64, offset: 1408)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3703, file: !250, line: 269, baseType: !402, size: 64, offset: 1472)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3065, file: !250, line: 738, baseType: !3452, size: 64, offset: 4416)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3065, file: !250, line: 744, baseType: !3500, size: 64, offset: 4480)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3065, file: !250, line: 745, baseType: !573, size: 64, offset: 4544)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3065, file: !250, line: 751, baseType: !575, size: 64, offset: 4608)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3065, file: !250, line: 752, baseType: !575, size: 64, offset: 4672)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3065, file: !250, line: 757, baseType: !581, size: 256, offset: 4736)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3065, file: !250, line: 758, baseType: !112, size: 128, offset: 4992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3065, file: !250, line: 759, baseType: !3064, size: 64, offset: 5120)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3065, file: !250, line: 761, baseType: !37, size: 32, offset: 5184)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3065, file: !250, line: 762, baseType: !37, size: 32, offset: 5216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3065, file: !250, line: 764, baseType: !112, size: 128, offset: 5248)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3065, file: !250, line: 765, baseType: !669, size: 64, offset: 5376)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3065, file: !250, line: 768, baseType: !581, size: 256, offset: 5440)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3065, file: !250, line: 769, baseType: !64, size: 32, offset: 5696)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3065, file: !250, line: 771, baseType: !3577, size: 64, offset: 5760)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3065, file: !250, line: 772, baseType: !112, size: 128, offset: 5824)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3065, file: !250, line: 773, baseType: !54, size: 64, offset: 5952)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3065, file: !250, line: 774, baseType: !37, size: 32, offset: 6016)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3065, file: !250, line: 777, baseType: !69, size: 192, offset: 6080)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3065, file: !250, line: 778, baseType: !3813, size: 64, offset: 6272)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !267, line: 1083, size: 384, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3814, file: !267, line: 1084, baseType: !599, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3814, file: !267, line: 1085, baseType: !37, size: 32, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3814, file: !267, line: 1086, baseType: !37, size: 32, offset: 96)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3814, file: !267, line: 1087, baseType: !3813, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3814, file: !267, line: 1088, baseType: !547, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3814, file: !267, line: 1089, baseType: !560, size: 128, align: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3065, file: !250, line: 781, baseType: !23, size: 32, offset: 6336)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3065, file: !250, line: 782, baseType: !23, size: 32, offset: 6368)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3065, file: !250, line: 783, baseType: !23, size: 32, offset: 6400)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3065, file: !250, line: 784, baseType: !23, size: 32, offset: 6432)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3065, file: !250, line: 785, baseType: !54, size: 64, offset: 6464)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3065, file: !250, line: 786, baseType: !3828, size: 256, offset: 6528)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3829, line: 17, size: 256, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3830 = !{!3831, !3832, !3837}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3828, file: !3829, line: 18, baseType: !688, size: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3828, file: !3829, line: 19, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3828, file: !3829, line: 20, baseType: !3838, size: 64, offset: 192)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3839, line: 16, size: 64, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3840 = !{!3841}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3838, file: !3839, line: 17, baseType: !669, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3065, file: !250, line: 787, baseType: !560, size: 128, align: 64, offset: 6784)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3065, file: !250, line: 788, baseType: !23, size: 32, offset: 6912)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3065, file: !250, line: 789, baseType: !3838, size: 64, offset: 6976)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3065, file: !250, line: 791, baseType: !64, size: 32, offset: 7040)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3065, file: !250, line: 794, baseType: !3847, size: 192, offset: 7104)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !250, line: 579, size: 192, elements: !3848)
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3847, file: !250, line: 580, baseType: !112, size: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3847, file: !250, line: 581, baseType: !586, size: 32, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3847, file: !250, line: 582, baseType: !23, size: 32, offset: 160)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3065, file: !250, line: 796, baseType: !3853, size: 64, offset: 7296)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !250, line: 585, size: 128, elements: !3855)
!3855 = !{!3856, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3854, file: !250, line: 586, baseType: !54, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3854, file: !250, line: 587, baseType: !54, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3065, file: !250, line: 797, baseType: !54, size: 64, offset: 7360)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3065, file: !250, line: 800, baseType: !3064, size: 64, offset: 7424)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3065, file: !250, line: 802, baseType: !3538, size: 64, offset: 7488)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3065, file: !250, line: 803, baseType: !560, size: 128, align: 64, offset: 7552)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3065, file: !250, line: 805, baseType: !649, size: 64, offset: 7680)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3065, file: !250, line: 806, baseType: !402, size: 64, offset: 7744)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3065, file: !250, line: 808, baseType: !575, size: 64, offset: 7808)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3065, file: !250, line: 810, baseType: !3866, size: 64, offset: 7872)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!402}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3065, file: !250, line: 811, baseType: !3870, size: 64, offset: 7936)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !250, line: 605, baseType: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3064, !3874, !3979}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !250, line: 1148, size: 2048, align: 512, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3886, !3887, !3888, !3893, !3894, !3901, !3922, !3944, !3954, !3972, !3973, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3875, file: !250, line: 1153, baseType: !402, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3875, file: !250, line: 1154, baseType: !402, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3875, file: !250, line: 1155, baseType: !402, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3875, file: !250, line: 1161, baseType: !402, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3875, file: !250, line: 1165, baseType: !3882, size: 64, offset: 256)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !250, line: 1162, size: 64, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3882, file: !250, line: 1163, baseType: !332, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3882, file: !250, line: 1164, baseType: !332, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3875, file: !250, line: 1166, baseType: !402, size: 64, offset: 320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3875, file: !250, line: 1167, baseType: !402, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3875, file: !250, line: 1171, baseType: !3889, size: 64, offset: 448)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !250, line: 1168, size: 64, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3889, file: !250, line: 1169, baseType: !332, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3889, file: !250, line: 1170, baseType: !332, size: 32, offset: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3875, file: !250, line: 1177, baseType: !402, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3875, file: !250, line: 1178, baseType: !3895, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !250, line: 67, size: 64, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3896, file: !250, line: 68, baseType: !403, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3896, file: !250, line: 69, baseType: !3900, offset: 64)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, elements: !318)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3875, file: !250, line: 1179, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !250, line: 93, size: 256, elements: !3904)
!3904 = !{!3905, !3921}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3903, file: !250, line: 94, baseType: !3906, size: 224)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !250, line: 83, size: 224, elements: !3907)
!3907 = !{!3908, !3914, !3919, !3920}
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !250, line: 84, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3906, file: !250, line: 84, size: 64, elements: !3910)
!3910 = !{!3911, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3909, file: !250, line: 85, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3909, file: !250, line: 86, baseType: !54, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3906, file: !250, line: 88, baseType: !3915, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !250, line: 80, baseType: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!54, !35, !1095, !54, !54}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3906, file: !250, line: 89, baseType: !35, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3906, file: !250, line: 90, baseType: !332, size: 32, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3903, file: !250, line: 95, baseType: !332, size: 32, offset: 224)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3875, file: !250, line: 1180, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !250, line: 123, size: 128, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3924, file: !250, line: 124, baseType: !403, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3924, file: !250, line: 125, baseType: !403, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3924, file: !250, line: 126, baseType: !3929, offset: 128)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3930, elements: !318)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3617, line: 1415, size: 192, elements: !3931)
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3930, file: !3617, line: 1416, baseType: !403, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3930, file: !3617, line: 1417, baseType: !403, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3930, file: !3617, line: 1418, baseType: !403, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3930, file: !3617, line: 1419, baseType: !403, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3930, file: !3617, line: 1420, baseType: !403, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3930, file: !3617, line: 1421, baseType: !403, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3930, file: !3617, line: 1422, baseType: !403, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3930, file: !3617, line: 1423, baseType: !403, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3930, file: !3617, line: 1424, baseType: !403, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3930, file: !3617, line: 1425, baseType: !403, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3930, file: !3617, line: 1426, baseType: !403, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3930, file: !3617, line: 1427, baseType: !403, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3875, file: !250, line: 1181, baseType: !3945, size: 64, offset: 768)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3617, line: 1430, size: 64, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3945, file: !3617, line: 1431, baseType: !403, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !3617, line: 1433, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3945, file: !3617, line: 1433, size: 64, elements: !3950)
!3950 = !{!3951, !3952, !3953}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3949, file: !3617, line: 1434, baseType: !314, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3949, file: !3617, line: 1435, baseType: !109, size: 16, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3949, file: !3617, line: 1436, baseType: !109, size: 16, offset: 48)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3875, file: !250, line: 1182, baseType: !3955, size: 64, offset: 832)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3617, line: 1267, size: 64, elements: !3956)
!3956 = !{!3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3955, file: !3617, line: 1268, baseType: !403, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, scope: !3955, file: !3617, line: 1269, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3617, line: 1269, size: 64, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3959, file: !3617, line: 1270, baseType: !403, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3959, file: !3617, line: 1271, baseType: !403, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3959, file: !3617, line: 1272, baseType: !403, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3959, file: !3617, line: 1273, baseType: !403, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3959, file: !3617, line: 1274, baseType: !403, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3959, file: !3617, line: 1275, baseType: !403, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3959, file: !3617, line: 1276, baseType: !403, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3959, file: !3617, line: 1277, baseType: !403, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3959, file: !3617, line: 1278, baseType: !403, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3959, file: !3617, line: 1279, baseType: !403, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3959, file: !3617, line: 1280, baseType: !403, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3875, file: !250, line: 1183, baseType: !402, size: 64, offset: 896)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3875, file: !250, line: 1185, baseType: !3974, size: 128, offset: 960)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3975, line: 7, size: 128, elements: !3976)
!3975 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3974, file: !3975, line: 8, baseType: !403, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3974, file: !3975, line: 9, baseType: !3979, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3981, line: 103, size: 1344, elements: !3982)
!3981 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4011, !4012, !4013}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3980, file: !3981, line: 109, baseType: !54, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3980, file: !3981, line: 110, baseType: !54, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3980, file: !3981, line: 111, baseType: !54, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3980, file: !3981, line: 112, baseType: !54, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3980, file: !3981, line: 113, baseType: !54, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3980, file: !3981, line: 114, baseType: !54, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3980, file: !3981, line: 117, baseType: !54, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3980, file: !3981, line: 118, baseType: !54, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3980, file: !3981, line: 119, baseType: !54, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3980, file: !3981, line: 120, baseType: !54, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3980, file: !3981, line: 121, baseType: !54, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3980, file: !3981, line: 122, baseType: !54, size: 64, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3980, file: !3981, line: 123, baseType: !54, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3980, file: !3981, line: 124, baseType: !54, size: 64, offset: 832)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3980, file: !3981, line: 125, baseType: !54, size: 64, offset: 896)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3980, file: !3981, line: 139, baseType: !54, size: 64, offset: 960)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3980, file: !3981, line: 142, baseType: !54, size: 64, offset: 1024)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !3981, line: 144, baseType: !4001, size: 64, offset: 1088)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3980, file: !3981, line: 144, size: 64, elements: !4002)
!4002 = !{!4003, !4004, !4005}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4001, file: !3981, line: 146, baseType: !108, size: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4001, file: !3981, line: 148, baseType: !402, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4001, file: !3981, line: 150, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3981, line: 59, size: 64, elements: !4007)
!4007 = !{!4008, !4009, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4006, file: !3981, line: 61, baseType: !402, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4006, file: !3981, line: 63, baseType: !402, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4006, file: !3981, line: 65, baseType: !402, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3980, file: !3981, line: 153, baseType: !54, size: 64, offset: 1152)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3980, file: !3981, line: 154, baseType: !54, size: 64, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, scope: !3980, file: !3981, line: 156, baseType: !4014, size: 64, offset: 1280)
!4014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3980, file: !3981, line: 156, size: 64, elements: !4015)
!4015 = !{!4016, !4017, !4018}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4014, file: !3981, line: 158, baseType: !108, size: 16)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4014, file: !3981, line: 160, baseType: !402, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4014, file: !3981, line: 162, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3981, line: 69, size: 64, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4019, file: !3981, line: 71, baseType: !402, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4019, file: !3981, line: 73, baseType: !402, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4019, file: !3981, line: 75, baseType: !402, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4019, file: !3981, line: 77, baseType: !402, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4019, file: !3981, line: 80, baseType: !402, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4019, file: !3981, line: 83, baseType: !402, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4019, file: !3981, line: 86, baseType: !402, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4019, file: !3981, line: 88, baseType: !402, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4019, file: !3981, line: 93, baseType: !402, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4019, file: !3981, line: 100, baseType: !402, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3875, file: !250, line: 1186, baseType: !3974, size: 128, offset: 1088)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3875, file: !250, line: 1187, baseType: !402, size: 64, offset: 1216)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3875, file: !250, line: 1189, baseType: !402, size: 64, offset: 1280)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3875, file: !250, line: 1190, baseType: !402, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3875, file: !250, line: 1191, baseType: !402, size: 64, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3875, file: !250, line: 1192, baseType: !402, size: 64, offset: 1472)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3875, file: !250, line: 1193, baseType: !402, size: 64, offset: 1536)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3875, file: !250, line: 1194, baseType: !402, size: 64, offset: 1600)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3875, file: !250, line: 1195, baseType: !402, size: 64, offset: 1664)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3065, file: !250, line: 812, baseType: !35, size: 64, offset: 8000)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3065, file: !250, line: 820, baseType: !2858, size: 64, offset: 8064)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3065, file: !250, line: 821, baseType: !3045, size: 64, offset: 8128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3065, file: !250, line: 828, baseType: !4044, size: 64, offset: 8192)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !250, line: 1046, size: 1664, elements: !4046)
!4046 = !{!4047, !4300}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4045, file: !250, line: 1047, baseType: !4048, size: 1600)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4049, line: 152, size: 1600, elements: !4050)
!4049 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4050 = !{!4051, !4156, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4299}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4048, file: !4049, line: 154, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4049, line: 389, size: 7872, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4074, !4075, !4079, !4080, !4081, !4082, !4083, !4088, !4104, !4105, !4107, !4108, !4109, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4143, !4146, !4147, !4154}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4053, file: !4049, line: 391, baseType: !4048, size: 1600)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4053, file: !4049, line: 393, baseType: !54, size: 64, offset: 1600)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4053, file: !4049, line: 401, baseType: !37, size: 32, offset: 1664)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4053, file: !4049, line: 404, baseType: !37, size: 32, offset: 1696)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4053, file: !4049, line: 417, baseType: !37, size: 32, offset: 1728)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4053, file: !4049, line: 418, baseType: !37, size: 32, offset: 1760)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4053, file: !4049, line: 419, baseType: !37, size: 32, offset: 1792)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4053, file: !4049, line: 432, baseType: !37, size: 32, offset: 1824)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4053, file: !4049, line: 433, baseType: !37, size: 32, offset: 1856)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4053, file: !4049, line: 434, baseType: !37, size: 32, offset: 1888)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4053, file: !4049, line: 436, baseType: !37, size: 32, offset: 1920)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4053, file: !4049, line: 439, baseType: !23, size: 32, offset: 1952)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4053, file: !4049, line: 441, baseType: !2386, size: 64, offset: 1984)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4053, file: !4049, line: 442, baseType: !4069, size: 448, offset: 2048)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4049, line: 138, size: 448, elements: !4070)
!4070 = !{!4071, !4072, !4073}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4069, file: !4049, line: 140, baseType: !2386, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4069, file: !4049, line: 141, baseType: !54, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4069, file: !4049, line: 142, baseType: !2778, size: 320, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4053, file: !4049, line: 443, baseType: !4069, size: 448, offset: 2496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4053, file: !4049, line: 446, baseType: !4076, offset: 2944)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4069, elements: !4077)
!4077 = !{!4078}
!4078 = !DISubrange(count: 0)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4053, file: !4049, line: 455, baseType: !108, size: 16, offset: 2944)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4053, file: !4049, line: 456, baseType: !108, size: 16, offset: 2960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4053, file: !4049, line: 457, baseType: !108, size: 16, offset: 2976)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4053, file: !4049, line: 458, baseType: !108, size: 16, offset: 2992)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4053, file: !4049, line: 461, baseType: !4084, size: 896, offset: 3008)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 896, elements: !4086)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4086 = !{!4087}
!4087 = !DISubrange(count: 14)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4053, file: !4049, line: 463, baseType: !4089, size: 64, offset: 3904)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4049, line: 537, size: 41664, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4090, file: !4049, line: 538, baseType: !2406, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4090, file: !4049, line: 541, baseType: !23, size: 32, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4090, file: !4049, line: 544, baseType: !37, size: 32, offset: 96)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4090, file: !4049, line: 547, baseType: !112, size: 128, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4090, file: !4049, line: 548, baseType: !560, size: 128, align: 64, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4090, file: !4049, line: 555, baseType: !4053, size: 7872, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4090, file: !4049, line: 558, baseType: !4052, size: 64, offset: 8256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4090, file: !4049, line: 561, baseType: !64, size: 32, offset: 8320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4090, file: !4049, line: 564, baseType: !23, size: 32, offset: 8352)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4090, file: !4049, line: 567, baseType: !3007, size: 32768, offset: 8384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4090, file: !4049, line: 570, baseType: !4103, size: 512, offset: 41152)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1732)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4053, file: !4049, line: 469, baseType: !112, size: 128, offset: 3968)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4053, file: !4049, line: 478, baseType: !4106, size: 1792, offset: 4096)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1792, elements: !4086)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4053, file: !4049, line: 487, baseType: !4052, size: 64, offset: 5888)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4053, file: !4049, line: 488, baseType: !4052, size: 64, offset: 5952)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4053, file: !4049, line: 491, baseType: !4110, size: 64, offset: 6016)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4049, line: 327, size: 896, elements: !4112)
!4112 = !{!4113, !4116, !4126, !4127, !4128, !4129, !4130}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4111, file: !4049, line: 332, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4115, line: 64, elements: !350)
!4115 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4111, file: !4049, line: 333, baseType: !4117, size: 192)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4049, line: 299, size: 192, elements: !4118)
!4118 = !{!4119}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4117, file: !4049, line: 300, baseType: !4120, size: 192)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4121, line: 17, size: 192, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4120, file: !4121, line: 18, baseType: !402, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4120, file: !4121, line: 19, baseType: !402, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4120, file: !4121, line: 20, baseType: !404, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4111, file: !4049, line: 339, baseType: !4117, size: 192, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4111, file: !4049, line: 347, baseType: !4117, size: 192, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4111, file: !4049, line: 353, baseType: !4117, size: 192, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4111, file: !4049, line: 366, baseType: !4052, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4111, file: !4049, line: 367, baseType: !4052, size: 64, offset: 832)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4053, file: !4049, line: 492, baseType: !112, size: 128, offset: 6080)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4053, file: !4049, line: 495, baseType: !4117, size: 192, offset: 6208)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4053, file: !4049, line: 496, baseType: !4117, size: 192, offset: 6400)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4053, file: !4049, line: 497, baseType: !1502, size: 192, offset: 6592)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4053, file: !4049, line: 503, baseType: !112, size: 128, offset: 6784)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4053, file: !4049, line: 504, baseType: !581, size: 256, offset: 6912)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4053, file: !4049, line: 507, baseType: !69, size: 192, offset: 7168)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4053, file: !4049, line: 510, baseType: !1277, size: 256, offset: 7360)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4053, file: !4049, line: 513, baseType: !4140, size: 64, offset: 7616)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4142, line: 214, elements: !350)
!4142 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4053, file: !4049, line: 516, baseType: !4144, offset: 7680)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4145, line: 76, elements: !350)
!4145 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4053, file: !4049, line: 519, baseType: !64, size: 32, offset: 7680)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4053, file: !4049, line: 522, baseType: !4148, size: 128, offset: 7712)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4049, line: 370, size: 128, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4148, file: !4049, line: 372, baseType: !468, size: 8)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4148, file: !4049, line: 375, baseType: !37, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4148, file: !4049, line: 380, baseType: !37, size: 32, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4148, file: !4049, line: 386, baseType: !37, size: 32, offset: 96)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4053, file: !4049, line: 529, baseType: !4155, offset: 7872)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4052, elements: !318)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4048, file: !4049, line: 157, baseType: !4157, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4049, line: 669, size: 1984, elements: !4159)
!4159 = !{!4160, !4164, !4168, !4172, !4173, !4174, !4175, !4179, !4183, !4184, !4190, !4194, !4195, !4196, !4225, !4229, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4282, !4283}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4158, file: !4049, line: 670, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!4085, !4085}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4158, file: !4049, line: 671, baseType: !4165, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!37, !4085}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4158, file: !4049, line: 672, baseType: !4169, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{null, !4085}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4158, file: !4049, line: 673, baseType: !4169, size: 64, offset: 192)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4158, file: !4049, line: 674, baseType: !4169, size: 64, offset: 256)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4158, file: !4049, line: 675, baseType: !4169, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4158, file: !4049, line: 676, baseType: !4176, size: 64, offset: 384)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4085, !37}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4158, file: !4049, line: 677, baseType: !4180, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!37, !2431, !4085}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4158, file: !4049, line: 679, baseType: !4180, size: 64, offset: 512)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4158, file: !4049, line: 682, baseType: !4185, size: 64, offset: 576)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!37, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4049, line: 30, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4158, file: !4049, line: 683, baseType: !4191, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{null, !4188}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4158, file: !4049, line: 684, baseType: !4191, size: 64, offset: 704)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4158, file: !4049, line: 685, baseType: !2952, size: 64, offset: 768)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4158, file: !4049, line: 686, baseType: !4197, size: 64, offset: 832)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!37, !669, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4049, line: 209, size: 4736, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4201, file: !4049, line: 215, baseType: !4084, size: 896)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4201, file: !4049, line: 218, baseType: !626, size: 32, offset: 896)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4201, file: !4049, line: 226, baseType: !4200, size: 64, offset: 960)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4201, file: !4049, line: 229, baseType: !4052, size: 64, offset: 1024)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4201, file: !4049, line: 232, baseType: !37, size: 32, offset: 1088)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4201, file: !4049, line: 241, baseType: !112, size: 128, offset: 1152)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4201, file: !4049, line: 242, baseType: !112, size: 128, offset: 1280)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4201, file: !4049, line: 243, baseType: !112, size: 128, offset: 1408)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4201, file: !4049, line: 246, baseType: !112, size: 128, offset: 1536)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4201, file: !4049, line: 255, baseType: !4106, size: 1792, offset: 1664)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4201, file: !4049, line: 258, baseType: !112, size: 128, offset: 3456)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4201, file: !4049, line: 259, baseType: !112, size: 128, offset: 3584)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4201, file: !4049, line: 265, baseType: !358, size: 128, offset: 3712)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4201, file: !4049, line: 271, baseType: !112, size: 128, offset: 3840)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4201, file: !4049, line: 277, baseType: !112, size: 128, offset: 3968)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4201, file: !4049, line: 278, baseType: !112, size: 128, offset: 4096)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4201, file: !4049, line: 279, baseType: !112, size: 128, offset: 4224)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4201, file: !4049, line: 288, baseType: !4052, size: 64, offset: 4352)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4201, file: !4049, line: 289, baseType: !4052, size: 64, offset: 4416)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4201, file: !4049, line: 290, baseType: !4200, size: 64, offset: 4480)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4201, file: !4049, line: 293, baseType: !468, size: 8, offset: 4544)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4201, file: !4049, line: 296, baseType: !560, size: 128, align: 64, offset: 4608)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4158, file: !4049, line: 688, baseType: !4226, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !669, !4200}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4158, file: !4049, line: 689, baseType: !4230, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !669}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4158, file: !4049, line: 690, baseType: !4230, size: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4158, file: !4049, line: 691, baseType: !4230, size: 64, offset: 1088)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4158, file: !4049, line: 692, baseType: !4169, size: 64, offset: 1152)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4158, file: !4049, line: 694, baseType: !468, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4158, file: !4049, line: 707, baseType: !468, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4158, file: !4049, line: 719, baseType: !468, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4158, file: !4049, line: 722, baseType: !37, size: 32, offset: 1248)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4158, file: !4049, line: 723, baseType: !32, size: 64, offset: 1280)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4158, file: !4049, line: 726, baseType: !32, size: 64, offset: 1344)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4158, file: !4049, line: 729, baseType: !4089, size: 64, offset: 1408)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4158, file: !4049, line: 732, baseType: !654, size: 192, offset: 1472)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4158, file: !4049, line: 738, baseType: !112, size: 128, offset: 1664)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4158, file: !4049, line: 744, baseType: !4246, size: 64, offset: 1792)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4049, line: 580, size: 1728, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4258, !4259, !4260, !4264, !4268, !4269, !4270, !4271, !4272, !4276, !4280, !4281}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4247, file: !4049, line: 586, baseType: !4103, size: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4247, file: !4049, line: 587, baseType: !54, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4247, file: !4049, line: 593, baseType: !50, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4247, file: !4049, line: 596, baseType: !23, size: 32, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4247, file: !4049, line: 604, baseType: !23, size: 32, offset: 672)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4247, file: !4049, line: 610, baseType: !4157, size: 64, offset: 704)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4247, file: !4049, line: 611, baseType: !112, size: 128, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4247, file: !4049, line: 612, baseType: !4257, size: 64, offset: 896)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4247, file: !4049, line: 614, baseType: !2422, size: 64, offset: 960)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4247, file: !4049, line: 615, baseType: !2480, size: 64, offset: 1024)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4247, file: !4049, line: 621, baseType: !4261, size: 64, offset: 1088)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!402, !4085, !4246}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4247, file: !4049, line: 625, baseType: !4265, size: 64, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!579, !4085, !4246}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4247, file: !4049, line: 628, baseType: !2461, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4247, file: !4049, line: 631, baseType: !2449, size: 64, offset: 1280)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4247, file: !4049, line: 632, baseType: !2457, size: 64, offset: 1344)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4247, file: !4049, line: 633, baseType: !2453, size: 64, offset: 1408)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4247, file: !4049, line: 640, baseType: !4273, size: 64, offset: 1472)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!37, !4085, !4246, !402}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4247, file: !4049, line: 645, baseType: !4277, size: 64, offset: 1536)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!37, !4085, !4246, !579}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4247, file: !4049, line: 654, baseType: !2488, size: 64, offset: 1600)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4247, file: !4049, line: 657, baseType: !2495, size: 64, offset: 1664)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4158, file: !4049, line: 745, baseType: !4246, size: 64, offset: 1856)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4158, file: !4049, line: 754, baseType: !23, size: 32, offset: 1920)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4048, file: !4049, line: 160, baseType: !1880, size: 128, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4048, file: !4049, line: 163, baseType: !112, size: 128, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4048, file: !4049, line: 164, baseType: !112, size: 128, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4048, file: !4049, line: 167, baseType: !112, size: 128, offset: 512)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4048, file: !4049, line: 173, baseType: !37, size: 32, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4048, file: !4049, line: 175, baseType: !23, size: 32, offset: 672)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4048, file: !4049, line: 183, baseType: !402, size: 64, offset: 704)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4048, file: !4049, line: 189, baseType: !64, size: 32, offset: 768)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4048, file: !4049, line: 192, baseType: !1277, size: 256, offset: 832)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4048, file: !4049, line: 193, baseType: !4294, size: 448, offset: 1088)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1278, line: 120, size: 448, elements: !4295)
!4295 = !{!4296, !4297, !4298}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4294, file: !1278, line: 121, baseType: !1277, size: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4294, file: !1278, line: 122, baseType: !560, size: 128, align: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4294, file: !1278, line: 125, baseType: !2840, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4048, file: !4049, line: 199, baseType: !4085, size: 64, offset: 1536)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4045, file: !250, line: 1048, baseType: !4301, size: 64, offset: 1600)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !250, line: 1039, size: 256, elements: !4303)
!4303 = !{!4304, !4305, !4306, !4307}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4302, file: !250, line: 1040, baseType: !402, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4302, file: !250, line: 1041, baseType: !402, size: 64, offset: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4302, file: !250, line: 1042, baseType: !402, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4302, file: !250, line: 1043, baseType: !37, size: 32, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3065, file: !250, line: 832, baseType: !35, size: 64, offset: 8256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3065, file: !250, line: 834, baseType: !112, size: 128, offset: 8320)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3065, file: !250, line: 842, baseType: !314, size: 32, offset: 8448)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1677, file: !167, line: 524, baseType: !23, size: 32, offset: 8320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1677, file: !167, line: 525, baseType: !4313, size: 64, offset: 8384)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4316, line: 28, size: 192, elements: !4317)
!4316 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4315, file: !4316, line: 29, baseType: !32, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4315, file: !4316, line: 30, baseType: !32, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4315, file: !4316, line: 31, baseType: !54, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1677, file: !167, line: 526, baseType: !23, size: 32, offset: 8448)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1677, file: !167, line: 533, baseType: !35, size: 64, offset: 8512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1677, file: !167, line: 534, baseType: !23, size: 32, offset: 8576)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1677, file: !167, line: 535, baseType: !4325, size: 64, offset: 8640)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1677, file: !167, line: 536, baseType: !23, size: 32, offset: 8704)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1677, file: !167, line: 539, baseType: !37, size: 32, offset: 8736)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1677, file: !167, line: 540, baseType: !2941, size: 64, offset: 8768)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1677, file: !167, line: 563, baseType: !112, size: 128, offset: 8832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1677, file: !167, line: 565, baseType: !112, size: 128, offset: 8960)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1677, file: !167, line: 568, baseType: !2952, size: 64, offset: 9088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1677, file: !167, line: 570, baseType: !64, size: 32, offset: 9152)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1653, file: !267, line: 2382, baseType: !1652, size: 64, offset: 448)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1653, file: !267, line: 2383, baseType: !635, size: 64, offset: 512)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1653, file: !267, line: 2385, baseType: !4336, offset: 576)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2807, line: 206, elements: !350)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1653, file: !267, line: 2386, baseType: !4336, offset: 576)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1653, file: !267, line: 2387, baseType: !4336, offset: 576)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1653, file: !267, line: 2388, baseType: !4340, offset: 576)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4336, elements: !618)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1653, file: !267, line: 2390, baseType: !4336, offset: 576)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1653, file: !267, line: 2391, baseType: !4336, offset: 576)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1653, file: !267, line: 2392, baseType: !4336, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1653, file: !267, line: 2393, baseType: !4336, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1644, file: !267, line: 1197, baseType: !4346, size: 64, offset: 384)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !267, line: 2057, size: 1664, elements: !4349)
!4349 = !{!4350, !4354, !4358, !4359, !4363, !4367, !4371, !4372, !4373, !4377, !4381, !4385, !4386, !4387, !4393, !4397, !4398, !4402, !4403, !4404, !4405, !4409, !4413, !4460, !4475, !4476}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4348, file: !267, line: 2058, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!409, !1643}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4348, file: !267, line: 2059, baseType: !4355, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !409}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4348, file: !267, line: 2060, baseType: !4355, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4348, file: !267, line: 2062, baseType: !4360, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !409, !37}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4348, file: !267, line: 2063, baseType: !4364, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!37, !409, !2101}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4348, file: !267, line: 2064, baseType: !4368, size: 64, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!37, !409}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4348, file: !267, line: 2065, baseType: !4355, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4348, file: !267, line: 2066, baseType: !1672, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4348, file: !267, line: 2067, baseType: !4374, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!37, !1643, !37}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4348, file: !267, line: 2068, baseType: !4378, size: 64, offset: 576)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!37, !1643, !266}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4348, file: !267, line: 2069, baseType: !4382, size: 64, offset: 640)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!37, !1643}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4348, file: !267, line: 2070, baseType: !4378, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4348, file: !267, line: 2071, baseType: !4382, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4348, file: !267, line: 2072, baseType: !4388, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!37, !366, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !267, line: 62, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4348, file: !267, line: 2073, baseType: !4394, size: 64, offset: 896)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!37, !1643, !320, !474}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4348, file: !267, line: 2074, baseType: !1672, size: 64, offset: 960)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4348, file: !267, line: 2076, baseType: !4399, size: 64, offset: 1024)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!37, !2431, !366}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4348, file: !267, line: 2077, baseType: !4399, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4348, file: !267, line: 2078, baseType: !4399, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4348, file: !267, line: 2079, baseType: !4399, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4348, file: !267, line: 2081, baseType: !4406, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!1759, !1643, !37, !474, !50, !56}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4348, file: !267, line: 2082, baseType: !4410, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!1759, !1643, !37, !32, !50, !56}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4348, file: !267, line: 2083, baseType: !4414, size: 64, offset: 1408)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!4417, !409}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !272, line: 296, size: 1664, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4445, !4446, !4447}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4419, file: !272, line: 297, baseType: !358, size: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4419, file: !272, line: 298, baseType: !112, size: 128, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4419, file: !272, line: 299, baseType: !112, size: 128, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4419, file: !272, line: 300, baseType: !112, size: 128, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4419, file: !272, line: 301, baseType: !581, size: 256, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4419, file: !272, line: 302, baseType: !74, size: 32, offset: 768)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4419, file: !272, line: 303, baseType: !64, size: 32, offset: 800)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4419, file: !272, line: 304, baseType: !1643, size: 64, offset: 832)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4419, file: !272, line: 305, baseType: !4430, size: 64, offset: 896)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !272, line: 68, size: 64, elements: !4431)
!4431 = !{!4432, !4444}
!4432 = !DIDerivedType(tag: DW_TAG_member, scope: !4430, file: !272, line: 69, baseType: !4433, size: 32)
!4433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4430, file: !272, line: 69, size: 32, elements: !4434)
!4434 = !{!4435, !4436, !4437}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4433, file: !272, line: 70, baseType: !415, size: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4433, file: !272, line: 71, baseType: !424, size: 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4433, file: !272, line: 72, baseType: !4438, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4439, line: 24, baseType: !4440)
!4439 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4439, line: 22, size: 32, elements: !4441)
!4441 = !{!4442}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4440, file: !4439, line: 23, baseType: !4443, size: 32)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4439, line: 20, baseType: !421)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4430, file: !272, line: 74, baseType: !271, size: 32, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4419, file: !272, line: 306, baseType: !56, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4419, file: !272, line: 307, baseType: !54, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4419, file: !272, line: 308, baseType: !4448, size: 576, offset: 1088)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !272, line: 205, size: 576, elements: !4449)
!4449 = !{!4450, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4448, file: !272, line: 206, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !272, line: 66, baseType: !58)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4448, file: !272, line: 207, baseType: !4451, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4448, file: !272, line: 208, baseType: !4451, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4448, file: !272, line: 209, baseType: !4451, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4448, file: !272, line: 210, baseType: !4451, size: 64, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4448, file: !272, line: 211, baseType: !4451, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4448, file: !272, line: 212, baseType: !4451, size: 64, offset: 384)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4448, file: !272, line: 213, baseType: !540, size: 64, offset: 448)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4448, file: !272, line: 214, baseType: !540, size: 64, offset: 512)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4348, file: !267, line: 2085, baseType: !4461, size: 64, offset: 1472)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!543, !1643, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4466, line: 15, size: 256, elements: !4467)
!4466 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4467 = !{!4468, !4469, !4470, !4471, !4472}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4465, file: !4466, line: 16, baseType: !321, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4465, file: !4466, line: 19, baseType: !37, size: 32, offset: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4465, file: !4466, line: 26, baseType: !54, size: 64, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4465, file: !4466, line: 33, baseType: !54, size: 64, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4465, file: !4466, line: 36, baseType: !4473, size: 64, offset: 192)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4466, line: 36, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4348, file: !267, line: 2087, baseType: !4461, size: 64, offset: 1536)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4348, file: !267, line: 2089, baseType: !1672, size: 64, offset: 1600)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1644, file: !267, line: 1198, baseType: !4478, size: 64, offset: 448)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !272, line: 324, size: 704, elements: !4481)
!4481 = !{!4482, !4486, !4490, !4494, !4495, !4496, !4497, !4498, !4503, !4508, !4512}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4480, file: !272, line: 325, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!37, !4418}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4480, file: !272, line: 326, baseType: !4487, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!4418, !1643, !37}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4480, file: !272, line: 327, baseType: !4491, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{null, !4418}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4480, file: !272, line: 328, baseType: !4483, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4480, file: !272, line: 329, baseType: !4483, size: 64, offset: 256)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4480, file: !272, line: 330, baseType: !4483, size: 64, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4480, file: !272, line: 331, baseType: !4374, size: 64, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4480, file: !272, line: 334, baseType: !4499, size: 64, offset: 448)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!4502, !409}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4480, file: !272, line: 335, baseType: !4504, size: 64, offset: 512)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!37, !409, !4507}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4480, file: !272, line: 337, baseType: !4509, size: 64, offset: 576)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!37, !409, !4502}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4480, file: !272, line: 339, baseType: !4513, size: 64, offset: 640)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!37, !1643, !4516}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1644, file: !267, line: 1199, baseType: !4518, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !272, line: 430, size: 704, elements: !4521)
!4521 = !{!4522, !4528, !4529, !4533, !4534, !4535, !4550, !4573, !4577, !4578, !4601}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4520, file: !272, line: 431, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!37, !1643, !37, !37, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4520, file: !272, line: 432, baseType: !4374, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4520, file: !272, line: 433, baseType: !4530, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!37, !1643, !23}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4520, file: !272, line: 434, baseType: !4530, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4520, file: !272, line: 435, baseType: !4374, size: 64, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4520, file: !272, line: 436, baseType: !4536, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!37, !1643, !37, !4539}
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !272, line: 417, size: 256, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4540, file: !272, line: 418, baseType: !37, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4540, file: !272, line: 419, baseType: !23, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4540, file: !272, line: 420, baseType: !23, size: 32, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4540, file: !272, line: 422, baseType: !23, size: 32, offset: 96)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4540, file: !272, line: 423, baseType: !23, size: 32, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4540, file: !272, line: 424, baseType: !23, size: 32, offset: 160)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4540, file: !272, line: 425, baseType: !23, size: 32, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4540, file: !272, line: 426, baseType: !23, size: 32, offset: 224)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4520, file: !272, line: 437, baseType: !4551, size: 64, offset: 384)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!37, !1643, !4430, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !272, line: 345, size: 960, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4555, file: !272, line: 346, baseType: !37, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4555, file: !272, line: 347, baseType: !402, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4555, file: !272, line: 348, baseType: !402, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4555, file: !272, line: 349, baseType: !402, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4555, file: !272, line: 350, baseType: !402, size: 64, offset: 256)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4555, file: !272, line: 351, baseType: !402, size: 64, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4555, file: !272, line: 352, baseType: !402, size: 64, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4555, file: !272, line: 353, baseType: !579, size: 64, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4555, file: !272, line: 355, baseType: !579, size: 64, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4555, file: !272, line: 356, baseType: !37, size: 32, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4555, file: !272, line: 357, baseType: !37, size: 32, offset: 608)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4555, file: !272, line: 358, baseType: !402, size: 64, offset: 640)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4555, file: !272, line: 359, baseType: !402, size: 64, offset: 704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4555, file: !272, line: 360, baseType: !402, size: 64, offset: 768)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4555, file: !272, line: 361, baseType: !579, size: 64, offset: 832)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4555, file: !272, line: 362, baseType: !37, size: 32, offset: 896)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4520, file: !272, line: 438, baseType: !4574, size: 64, offset: 448)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!37, !1643, !4516, !4554}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4520, file: !272, line: 440, baseType: !4551, size: 64, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4520, file: !272, line: 441, baseType: !4579, size: 64, offset: 576)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!37, !1643, !4582}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !272, line: 411, size: 1408, elements: !4584)
!4584 = !{!4585, !4586}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4583, file: !272, line: 412, baseType: !23, size: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4583, file: !272, line: 413, baseType: !4587, size: 1344, offset: 64)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4588, size: 1344, elements: !618)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !272, line: 397, size: 448, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4600}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4588, file: !272, line: 398, baseType: !23, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4588, file: !272, line: 399, baseType: !23, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4588, file: !272, line: 401, baseType: !23, size: 32, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4588, file: !272, line: 402, baseType: !23, size: 32, offset: 96)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4588, file: !272, line: 403, baseType: !23, size: 32, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4588, file: !272, line: 404, baseType: !23, size: 32, offset: 160)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4588, file: !272, line: 405, baseType: !23, size: 32, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4588, file: !272, line: 406, baseType: !404, size: 64, offset: 256)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4588, file: !272, line: 407, baseType: !4599, size: 64, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !40, line: 132, baseType: !402)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4588, file: !272, line: 408, baseType: !4599, size: 64, offset: 384)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4520, file: !272, line: 442, baseType: !4530, size: 64, offset: 640)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1644, file: !267, line: 1200, baseType: !4603, size: 64, offset: 576)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4605)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !278, line: 201, size: 640, elements: !4606)
!4606 = !{!4607, !4612, !4616, !4617, !4621, !4625, !4626, !4631, !4637, !4641}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "encode_fh", scope: !4605, file: !278, line: 202, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!37, !409, !4611, !320, !409}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_dentry", scope: !4605, file: !278, line: 204, baseType: !4613, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!366, !1643, !322, !37, !37}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "fh_to_parent", scope: !4605, file: !278, line: 206, baseType: !4613, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4605, file: !278, line: 208, baseType: !4618, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!37, !366, !474, !366}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4605, file: !278, line: 210, baseType: !4622, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!366, !366}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "commit_metadata", scope: !4605, file: !278, line: 211, baseType: !4368, size: 64, offset: 320)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_uuid", scope: !4605, file: !278, line: 213, baseType: !4627, size: 64, offset: 384)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!37, !1643, !4630, !1431, !3350}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "map_blocks", scope: !4605, file: !278, line: 214, baseType: !4632, size: 64, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!37, !409, !56, !402, !4635, !468, !1431}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "iomap", file: !278, line: 10, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "commit_blocks", scope: !4605, file: !278, line: 217, baseType: !4638, size: 64, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!37, !409, !4635, !37, !510}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4605, file: !278, line: 227, baseType: !54, size: 64, offset: 576)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1644, file: !267, line: 1201, baseType: !54, size: 64, offset: 640)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1644, file: !267, line: 1202, baseType: !54, size: 64, offset: 704)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1644, file: !267, line: 1203, baseType: !54, size: 64, offset: 768)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1644, file: !267, line: 1204, baseType: !366, size: 64, offset: 832)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1644, file: !267, line: 1205, baseType: !1016, size: 320, offset: 896)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1644, file: !267, line: 1206, baseType: !37, size: 32, offset: 1216)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1644, file: !267, line: 1207, baseType: !64, size: 32, offset: 1248)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1644, file: !267, line: 1209, baseType: !35, size: 64, offset: 1280)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1644, file: !267, line: 1211, baseType: !4651, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4654)
!4654 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !267, line: 1211, flags: DIFlagFwdDecl)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1644, file: !267, line: 1223, baseType: !4656, size: 64, offset: 1408)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !383, line: 34, size: 64, elements: !4657)
!4657 = !{!4658}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4656, file: !383, line: 35, baseType: !386, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1644, file: !267, line: 1224, baseType: !112, size: 128, offset: 1472)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1644, file: !267, line: 1225, baseType: !4661, size: 64, offset: 1600)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !267, line: 1225, flags: DIFlagFwdDecl)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1644, file: !267, line: 1226, baseType: !4664, size: 64, offset: 1664)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !267, line: 1226, flags: DIFlagFwdDecl)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1644, file: !267, line: 1227, baseType: !4667, size: 64, offset: 1728)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !267, line: 50, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1644, file: !267, line: 1228, baseType: !4670, size: 64, offset: 1792)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !267, line: 1228, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1644, file: !267, line: 1229, baseType: !358, size: 128, offset: 1856)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1644, file: !267, line: 1230, baseType: !23, size: 32, offset: 1984)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1644, file: !267, line: 1231, baseType: !4675, size: 2496, offset: 2048)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !272, line: 521, size: 2496, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4681, !4713}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4675, file: !272, line: 522, baseType: !23, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4675, file: !272, line: 523, baseType: !1016, size: 320, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4675, file: !272, line: 524, baseType: !4680, size: 192, offset: 384)
!4680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 192, elements: !618)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4675, file: !272, line: 525, baseType: !4682, size: 1728, offset: 576)
!4682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4683, size: 1728, elements: !618)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !272, line: 222, size: 576, elements: !4684)
!4684 = !{!4685, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4683, file: !272, line: 223, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !272, line: 445, size: 256, elements: !4688)
!4688 = !{!4689, !4690, !4703, !4704}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4687, file: !272, line: 446, baseType: !37, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4687, file: !272, line: 447, baseType: !4691, size: 64, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4693)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !272, line: 312, size: 512, elements: !4694)
!4694 = !{!4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4693, file: !272, line: 313, baseType: !4374, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4693, file: !272, line: 314, baseType: !4374, size: 64, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4693, file: !272, line: 315, baseType: !4374, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4693, file: !272, line: 316, baseType: !4374, size: 64, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4693, file: !272, line: 317, baseType: !4483, size: 64, offset: 256)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4693, file: !272, line: 318, baseType: !4483, size: 64, offset: 320)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4693, file: !272, line: 319, baseType: !4483, size: 64, offset: 384)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4693, file: !272, line: 320, baseType: !4513, size: 64, offset: 448)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4687, file: !272, line: 448, baseType: !1676, size: 64, offset: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4687, file: !272, line: 449, baseType: !4686, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4683, file: !272, line: 224, baseType: !37, size: 32, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4683, file: !272, line: 226, baseType: !112, size: 128, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4683, file: !272, line: 227, baseType: !54, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4683, file: !272, line: 228, baseType: !23, size: 32, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4683, file: !272, line: 229, baseType: !23, size: 32, offset: 352)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4683, file: !272, line: 230, baseType: !4451, size: 64, offset: 384)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4683, file: !272, line: 231, baseType: !4451, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4683, file: !272, line: 232, baseType: !35, size: 64, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4675, file: !272, line: 526, baseType: !4714, size: 192, offset: 2304)
!4714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4691, size: 192, elements: !618)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1644, file: !267, line: 1233, baseType: !4716, size: 2368, offset: 4544)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !267, line: 1184, size: 2368, elements: !4717)
!4717 = !{!4718, !4719, !4720}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4716, file: !267, line: 1185, baseType: !41, size: 16)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4716, file: !267, line: 1186, baseType: !41, size: 16, offset: 16)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4716, file: !267, line: 1187, baseType: !4721, size: 2304, offset: 64)
!4721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4722, size: 2304, elements: !618)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4723, line: 12, size: 768, elements: !4724)
!4723 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4724 = !{!4725, !4733, !4734, !4735, !4736}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4722, file: !4723, line: 13, baseType: !4726, size: 384)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4727, line: 17, size: 384, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4728 = !{!4729, !4730, !4731, !4732}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4726, file: !4727, line: 18, baseType: !37, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4726, file: !4727, line: 19, baseType: !37, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4726, file: !4727, line: 20, baseType: !69, size: 192, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4726, file: !4727, line: 22, baseType: !560, size: 128, align: 64, offset: 256)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4722, file: !4723, line: 14, baseType: !2632, size: 64, offset: 384)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4722, file: !4723, line: 15, baseType: !3838, size: 64, offset: 448)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4722, file: !4723, line: 16, baseType: !69, size: 192, offset: 512)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4722, file: !4723, line: 17, baseType: !64, size: 32, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1644, file: !267, line: 1240, baseType: !35, size: 64, offset: 6912)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1644, file: !267, line: 1243, baseType: !332, size: 32, offset: 6976)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1644, file: !267, line: 1245, baseType: !540, size: 64, offset: 7040)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1644, file: !267, line: 1246, baseType: !540, size: 64, offset: 7104)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1644, file: !267, line: 1248, baseType: !314, size: 32, offset: 7168)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1644, file: !267, line: 1249, baseType: !4743, size: 64, offset: 7232)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !4745, line: 472, size: 256, elements: !4746)
!4745 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!4746 = !{!4747, !4748, !4749, !4750, !4756, !4763}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4744, file: !4745, line: 473, baseType: !74, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4744, file: !4745, line: 474, baseType: !41, size: 16, offset: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4744, file: !4745, line: 477, baseType: !41, size: 16, offset: 48)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !4744, file: !4745, line: 478, baseType: !4751, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !52, line: 81, baseType: !4752)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 79, size: 64, elements: !4753)
!4753 = !{!4754}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4752, file: !52, line: 80, baseType: !4755, size: 64)
!4755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !2670)
!4756 = !DIDerivedType(tag: DW_TAG_member, scope: !4744, file: !4745, line: 479, baseType: !4757, size: 64, offset: 128)
!4757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4744, file: !4745, line: 479, size: 64, elements: !4758)
!4758 = !{!4759, !4762}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4757, file: !4745, line: 481, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !4745, line: 464, baseType: !4743)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !4757, file: !4745, line: 483, baseType: !4743, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4744, file: !4745, line: 485, baseType: !635, size: 64, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1644, file: !267, line: 1252, baseType: !4765, size: 256, offset: 7296)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1644, file: !267, line: 1253, baseType: !4769, size: 128, offset: 7552)
!4769 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4770, line: 21, baseType: !4771)
!4770 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4770, line: 19, size: 128, elements: !4772)
!4772 = !{!4773}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4771, file: !4770, line: 20, baseType: !4774, size: 128)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !1605)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1644, file: !267, line: 1255, baseType: !23, size: 32, offset: 7680)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1644, file: !267, line: 1261, baseType: !581, size: 256, offset: 7744)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1644, file: !267, line: 1267, baseType: !32, size: 64, offset: 8000)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1644, file: !267, line: 1269, baseType: !4779, size: 64, offset: 8064)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !368, line: 128, size: 1024, align: 512, elements: !4782)
!4782 = !{!4783, !4787, !4788, !4795, !4801, !4805, !4809, !4813, !4814, !4818, !4822, !4827, !4831}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4781, file: !368, line: 129, baseType: !4784, size: 64)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!37, !366, !23}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4781, file: !368, line: 130, baseType: !4784, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4781, file: !368, line: 131, baseType: !4789, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!37, !4792, !4794}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4781, file: !368, line: 132, baseType: !4796, size: 64, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!37, !4792, !23, !32, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4781, file: !368, line: 134, baseType: !4802, size: 64, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!37, !4792}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4781, file: !368, line: 135, baseType: !4806, size: 64, offset: 320)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!37, !366}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4781, file: !368, line: 136, baseType: !4810, size: 64, offset: 384)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !366}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4781, file: !368, line: 137, baseType: !4810, size: 64, offset: 448)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4781, file: !368, line: 138, baseType: !4815, size: 64, offset: 512)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !366, !409}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4781, file: !368, line: 139, baseType: !4819, size: 64, offset: 576)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!474, !366, !474, !37}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4781, file: !368, line: 140, baseType: !4823, size: 64, offset: 640)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!1637, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4781, file: !368, line: 141, baseType: !4828, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!37, !4526, !468}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4781, file: !368, line: 142, baseType: !4832, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!366, !366, !4835}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1644, file: !267, line: 1271, baseType: !4838, size: 448, offset: 8128)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4466, line: 63, size: 448, elements: !4839)
!4839 = !{!4840, !4845, !4846, !4847, !4848, !4849, !4850}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4838, file: !4466, line: 64, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!54, !4844, !4464}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4838, file: !4466, line: 66, baseType: !4841, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4838, file: !4466, line: 69, baseType: !543, size: 64, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4838, file: !4466, line: 70, baseType: !37, size: 32, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4838, file: !4466, line: 71, baseType: !23, size: 32, offset: 224)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4838, file: !4466, line: 74, baseType: !112, size: 128, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4838, file: !4466, line: 85, baseType: !4851, size: 64, offset: 384)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1644, file: !267, line: 1274, baseType: !573, size: 64, offset: 8576)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1644, file: !267, line: 1280, baseType: !573, size: 64, offset: 8640)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1644, file: !267, line: 1283, baseType: !37, size: 32, offset: 8704)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1644, file: !267, line: 1286, baseType: !2331, size: 32, offset: 8736)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1644, file: !267, line: 1289, baseType: !2840, size: 64, offset: 8768)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1644, file: !267, line: 1290, baseType: !635, size: 64, offset: 8832)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1644, file: !267, line: 1297, baseType: !1121, size: 64, offset: 8896)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1644, file: !267, line: 1304, baseType: !4860, size: 64, offset: 8960)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4861, line: 49, size: 64, elements: !4862)
!4861 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4862 = !{!4863}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4860, file: !4861, line: 50, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4861, line: 41, size: 512, align: 512, elements: !4866)
!4866 = !{!4867, !4868, !4873}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4865, file: !4861, line: 43, baseType: !74, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4865, file: !4861, line: 45, baseType: !4869, size: 192, offset: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4861, line: 29, size: 192, elements: !4870)
!4870 = !{!4871, !4872}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4869, file: !4861, line: 30, baseType: !112, size: 128)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4869, file: !4861, line: 32, baseType: !543, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4865, file: !4861, line: 46, baseType: !543, size: 64, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1644, file: !267, line: 1305, baseType: !4860, size: 64, offset: 9024)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1644, file: !267, line: 1306, baseType: !560, size: 128, align: 64, offset: 9088)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1644, file: !267, line: 1307, baseType: !1277, size: 256, offset: 9216)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1644, file: !267, line: 1309, baseType: !581, size: 256, offset: 9472)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1644, file: !267, line: 1314, baseType: !37, size: 32, offset: 9728)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1644, file: !267, line: 1317, baseType: !74, size: 32, align: 512, offset: 10240)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1644, file: !267, line: 1318, baseType: !112, size: 128, offset: 10304)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1644, file: !267, line: 1320, baseType: !74, size: 32, offset: 10432)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1644, file: !267, line: 1321, baseType: !112, size: 128, offset: 10496)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1638, file: !1639, line: 73, baseType: !37, size: 32, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1638, file: !1639, line: 74, baseType: !461, size: 64, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1633, file: !1634, line: 10, baseType: !366, size: 64, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !1624, file: !1625, line: 15, baseType: !1633, size: 128, offset: 320)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !670, file: !671, line: 1100, baseType: !4888, size: 64, offset: 15168)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !671, line: 1100, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !670, file: !671, line: 1103, baseType: !4891, size: 64, offset: 15232)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !671, line: 53, flags: DIFlagFwdDecl)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !670, file: !671, line: 1107, baseType: !4894, size: 64, offset: 15296)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4896, line: 31, size: 576, elements: !4897)
!4896 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4897 = !{!4898, !4899, !4902, !4905, !4920, !4921, !4924, !4927, !4928}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4895, file: !4896, line: 32, baseType: !626, size: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4895, file: !4896, line: 33, baseType: !4900, size: 64, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4896, line: 9, flags: DIFlagFwdDecl)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4895, file: !4896, line: 34, baseType: !4903, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4896, line: 10, flags: DIFlagFwdDecl)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4895, file: !4896, line: 35, baseType: !4906, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !355, line: 8, size: 960, elements: !4908)
!4908 = !{!4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4907, file: !355, line: 9, baseType: !1154, size: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4907, file: !355, line: 10, baseType: !353, size: 64, offset: 192)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4907, file: !355, line: 16, baseType: !112, size: 128, offset: 256)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !4907, file: !355, line: 17, baseType: !74, size: 32, offset: 384)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4907, file: !355, line: 18, baseType: !1121, size: 64, offset: 448)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4907, file: !355, line: 19, baseType: !1360, size: 64, offset: 512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4907, file: !355, line: 20, baseType: !402, size: 64, offset: 576)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4907, file: !355, line: 21, baseType: !69, size: 192, offset: 640)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4907, file: !355, line: 22, baseType: !402, size: 64, offset: 832)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !4907, file: !355, line: 23, baseType: !23, size: 32, offset: 896)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !4907, file: !355, line: 24, baseType: !23, size: 32, offset: 928)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4895, file: !4896, line: 36, baseType: !649, size: 64, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4895, file: !4896, line: 37, baseType: !4922, size: 64, offset: 320)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1170, line: 34, flags: DIFlagFwdDecl)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4895, file: !4896, line: 38, baseType: !4925, size: 64, offset: 384)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4896, line: 38, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4895, file: !4896, line: 39, baseType: !4925, size: 64, offset: 448)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4895, file: !4896, line: 40, baseType: !4929, size: 64, offset: 512)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4931, line: 771, size: 384, elements: !4932)
!4931 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4932 = !{!4933, !4934, !4935, !4936}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4930, file: !4931, line: 772, baseType: !1154, size: 192)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4930, file: !4931, line: 773, baseType: !1121, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4930, file: !4931, line: 774, baseType: !1360, size: 64, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4930, file: !4931, line: 775, baseType: !4200, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !670, file: !671, line: 1110, baseType: !4938, size: 64, offset: 15360)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4940, line: 93, size: 8768, elements: !4941)
!4940 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4941 = !{!4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4990, !4999, !5000, !5002, !5003, !5004, !5007, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5045, !5046, !5053, !5063, !5125, !5126, !5129, !5130, !5131, !5132, !5133, !5134}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4939, file: !4940, line: 94, baseType: !626, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4939, file: !4940, line: 95, baseType: !64, size: 32, offset: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4939, file: !4940, line: 96, baseType: !37, size: 32, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4939, file: !4940, line: 97, baseType: !37, size: 32, offset: 96)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4939, file: !4940, line: 98, baseType: !112, size: 128, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4939, file: !4940, line: 100, baseType: !69, size: 192, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4939, file: !4940, line: 103, baseType: !669, size: 64, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4939, file: !4940, line: 106, baseType: !4950, size: 192, offset: 512)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4951, line: 32, size: 192, elements: !4952)
!4951 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4952 = !{!4953, !4954}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4950, file: !4951, line: 33, baseType: !112, size: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4950, file: !4951, line: 34, baseType: !4955, size: 64, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4956, line: 25, baseType: !4957)
!4956 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4956, line: 23, size: 64, elements: !4958)
!4958 = !{!4959}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4957, file: !4956, line: 24, baseType: !915, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4939, file: !4940, line: 109, baseType: !635, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4939, file: !4940, line: 112, baseType: !37, size: 32, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4939, file: !4940, line: 114, baseType: !37, size: 32, offset: 800)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4939, file: !4940, line: 115, baseType: !669, size: 64, offset: 832)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4939, file: !4940, line: 118, baseType: !37, size: 32, offset: 896)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4939, file: !4940, line: 119, baseType: !23, size: 32, offset: 928)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4939, file: !4940, line: 121, baseType: !4967, size: 64, offset: 960)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4940, line: 80, size: 448, elements: !4969)
!4969 = !{!4970, !4971, !4977}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4968, file: !4940, line: 81, baseType: !64, size: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4968, file: !4940, line: 82, baseType: !4972, size: 128, offset: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4940, line: 75, size: 128, elements: !4973)
!4973 = !{!4974, !4975}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4972, file: !4940, line: 76, baseType: !669, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4972, file: !4940, line: 77, baseType: !4976, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4968, file: !4940, line: 83, baseType: !1316, size: 256, offset: 192)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4939, file: !4940, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4939, file: !4940, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4939, file: !4940, line: 138, baseType: !23, size: 32, offset: 1056)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4939, file: !4940, line: 139, baseType: !112, size: 128, offset: 1088)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4939, file: !4940, line: 142, baseType: !788, size: 512, offset: 1216)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4939, file: !4940, line: 143, baseType: !796, size: 64, offset: 1728)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4939, file: !4940, line: 150, baseType: !4985, size: 256, offset: 1792)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4986, size: 256, elements: !2670)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4940, line: 38, size: 128, elements: !4987)
!4987 = !{!4988, !4989}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4986, file: !4940, line: 39, baseType: !402, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4986, file: !4940, line: 40, baseType: !402, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4939, file: !4940, line: 156, baseType: !4991, size: 192, offset: 2048)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4940, line: 66, size: 192, elements: !4992)
!4992 = !{!4993}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4991, file: !4940, line: 67, baseType: !4994, size: 192)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4940, line: 47, size: 192, elements: !4995)
!4995 = !{!4996, !4997, !4998}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4994, file: !4940, line: 48, baseType: !575, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4994, file: !4940, line: 49, baseType: !575, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4994, file: !4940, line: 50, baseType: !575, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4939, file: !4940, line: 160, baseType: !1514, size: 640, offset: 2240)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4939, file: !4940, line: 163, baseType: !5001, size: 256, offset: 2880)
!5001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 256, elements: !638)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4939, file: !4940, line: 169, baseType: !622, size: 64, offset: 3136)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4939, file: !4940, line: 172, baseType: !37, size: 32, offset: 3200)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4939, file: !4940, line: 174, baseType: !5005, size: 64, offset: 3264)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4940, line: 174, flags: DIFlagFwdDecl)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4939, file: !4940, line: 185, baseType: !5008, size: 64, offset: 3328)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !373, line: 860, baseType: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 853, size: 64, elements: !5010)
!5010 = !{!5011, !5012}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5009, file: !373, line: 858, baseType: !372, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5009, file: !373, line: 859, baseType: !74, size: 32, offset: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4939, file: !4940, line: 186, baseType: !402, size: 64, offset: 3392)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4939, file: !4940, line: 186, baseType: !402, size: 64, offset: 3456)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4939, file: !4940, line: 186, baseType: !402, size: 64, offset: 3520)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4939, file: !4940, line: 186, baseType: !402, size: 64, offset: 3584)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4939, file: !4940, line: 187, baseType: !402, size: 64, offset: 3648)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4939, file: !4940, line: 188, baseType: !402, size: 64, offset: 3712)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4939, file: !4940, line: 189, baseType: !1502, size: 192, offset: 3776)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4939, file: !4940, line: 190, baseType: !54, size: 64, offset: 3968)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4939, file: !4940, line: 190, baseType: !54, size: 64, offset: 4032)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4939, file: !4940, line: 190, baseType: !54, size: 64, offset: 4096)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4939, file: !4940, line: 190, baseType: !54, size: 64, offset: 4160)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4939, file: !4940, line: 191, baseType: !54, size: 64, offset: 4224)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4939, file: !4940, line: 191, baseType: !54, size: 64, offset: 4288)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4939, file: !4940, line: 191, baseType: !54, size: 64, offset: 4352)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4939, file: !4940, line: 191, baseType: !54, size: 64, offset: 4416)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4939, file: !4940, line: 192, baseType: !54, size: 64, offset: 4480)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4939, file: !4940, line: 192, baseType: !54, size: 64, offset: 4544)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4939, file: !4940, line: 192, baseType: !54, size: 64, offset: 4608)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4939, file: !4940, line: 192, baseType: !54, size: 64, offset: 4672)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4939, file: !4940, line: 193, baseType: !54, size: 64, offset: 4736)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4939, file: !4940, line: 193, baseType: !54, size: 64, offset: 4800)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4939, file: !4940, line: 194, baseType: !5035, size: 448, offset: 4864)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5036, line: 12, size: 448, elements: !5037)
!5036 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5037 = !{!5038, !5039, !5040, !5041, !5042, !5043, !5044}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5035, file: !5036, line: 15, baseType: !402, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5035, file: !5036, line: 17, baseType: !402, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5035, file: !5036, line: 19, baseType: !402, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5035, file: !5036, line: 21, baseType: !402, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5035, file: !5036, line: 29, baseType: !402, size: 64, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5035, file: !5036, line: 35, baseType: !402, size: 64, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5035, file: !5036, line: 44, baseType: !402, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4939, file: !4940, line: 202, baseType: !404, size: 64, offset: 5312)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4939, file: !4940, line: 213, baseType: !5047, size: 2048, offset: 5376)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5048, size: 2048, elements: !1605)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5049, line: 43, size: 128, elements: !5050)
!5049 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5050 = !{!5051, !5052}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5048, file: !5049, line: 44, baseType: !53, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5048, file: !5049, line: 45, baseType: !53, size: 64, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4939, file: !4940, line: 216, baseType: !5054, size: 448, offset: 7424)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4940, line: 30, size: 448, elements: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5060, !5061, !5062}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5054, file: !4940, line: 31, baseType: !37, size: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5054, file: !4940, line: 32, baseType: !543, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5054, file: !4940, line: 33, baseType: !54, size: 64, offset: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5054, file: !4940, line: 34, baseType: !402, size: 64, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5054, file: !4940, line: 34, baseType: !402, size: 64, offset: 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5054, file: !4940, line: 35, baseType: !54, size: 64, offset: 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5054, file: !4940, line: 35, baseType: !54, size: 64, offset: 384)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4939, file: !4940, line: 219, baseType: !5064, size: 64, offset: 7872)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5066, line: 41, size: 3456, elements: !5067)
!5066 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5067 = !{!5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5065, file: !5066, line: 47, baseType: !109, size: 16)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5065, file: !5066, line: 48, baseType: !314, size: 32, offset: 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5065, file: !5066, line: 54, baseType: !100, size: 8, offset: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5065, file: !5066, line: 55, baseType: !100, size: 8, offset: 72)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5065, file: !5066, line: 73, baseType: !403, size: 64, align: 64, offset: 128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5065, file: !5066, line: 74, baseType: !403, size: 64, offset: 192)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5065, file: !5066, line: 81, baseType: !403, size: 64, offset: 256)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5065, file: !5066, line: 82, baseType: !403, size: 64, offset: 320)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5065, file: !5066, line: 85, baseType: !403, size: 64, offset: 384)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5065, file: !5066, line: 86, baseType: !403, size: 64, offset: 448)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5065, file: !5066, line: 94, baseType: !403, size: 64, offset: 512)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5065, file: !5066, line: 102, baseType: !403, size: 64, offset: 576)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5065, file: !5066, line: 107, baseType: !4765, size: 256, offset: 640)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5065, file: !5066, line: 108, baseType: !100, size: 8, align: 64, offset: 896)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5065, file: !5066, line: 110, baseType: !5083, size: 24, offset: 904)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, elements: !618)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5065, file: !5066, line: 111, baseType: !314, size: 32, align: 64, offset: 960)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5065, file: !5066, line: 113, baseType: !314, size: 32, offset: 992)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5065, file: !5066, line: 114, baseType: !314, size: 32, offset: 1024)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5065, file: !5066, line: 115, baseType: !314, size: 32, offset: 1056)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5065, file: !5066, line: 117, baseType: !314, size: 32, offset: 1088)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5065, file: !5066, line: 118, baseType: !403, size: 64, align: 64, offset: 1152)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5065, file: !5066, line: 120, baseType: !403, size: 64, offset: 1216)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5065, file: !5066, line: 121, baseType: !403, size: 64, offset: 1280)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5065, file: !5066, line: 122, baseType: !403, size: 64, offset: 1344)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5065, file: !5066, line: 123, baseType: !403, size: 64, offset: 1408)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5065, file: !5066, line: 133, baseType: !403, size: 64, offset: 1472)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5065, file: !5066, line: 137, baseType: !403, size: 64, offset: 1536)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5065, file: !5066, line: 142, baseType: !403, size: 64, offset: 1600)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5065, file: !5066, line: 143, baseType: !403, size: 64, offset: 1664)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5065, file: !5066, line: 146, baseType: !403, size: 64, offset: 1728)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5065, file: !5066, line: 147, baseType: !403, size: 64, offset: 1792)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5065, file: !5066, line: 148, baseType: !403, size: 64, offset: 1856)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5065, file: !5066, line: 149, baseType: !403, size: 64, offset: 1920)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5065, file: !5066, line: 154, baseType: !403, size: 64, offset: 1984)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5065, file: !5066, line: 155, baseType: !403, size: 64, offset: 2048)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5065, file: !5066, line: 156, baseType: !403, size: 64, offset: 2112)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5065, file: !5066, line: 158, baseType: !403, size: 64, offset: 2176)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5065, file: !5066, line: 159, baseType: !403, size: 64, offset: 2240)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5065, file: !5066, line: 162, baseType: !403, size: 64, offset: 2304)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5065, file: !5066, line: 163, baseType: !403, size: 64, offset: 2368)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5065, file: !5066, line: 164, baseType: !403, size: 64, offset: 2432)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5065, file: !5066, line: 167, baseType: !403, size: 64, offset: 2496)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5065, file: !5066, line: 168, baseType: !403, size: 64, offset: 2560)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5065, file: !5066, line: 171, baseType: !403, size: 64, offset: 2624)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5065, file: !5066, line: 172, baseType: !403, size: 64, offset: 2688)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5065, file: !5066, line: 175, baseType: !403, size: 64, offset: 2752)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5065, file: !5066, line: 178, baseType: !403, size: 64, offset: 2816)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5065, file: !5066, line: 179, baseType: !403, size: 64, offset: 2880)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5065, file: !5066, line: 182, baseType: !314, size: 32, offset: 2944)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5065, file: !5066, line: 186, baseType: !403, size: 64, align: 64, offset: 3008)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5065, file: !5066, line: 194, baseType: !403, size: 64, offset: 3072)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5065, file: !5066, line: 195, baseType: !403, size: 64, offset: 3136)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5065, file: !5066, line: 199, baseType: !403, size: 64, offset: 3200)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5065, file: !5066, line: 200, baseType: !403, size: 64, offset: 3264)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5065, file: !5066, line: 203, baseType: !403, size: 64, offset: 3328)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5065, file: !5066, line: 204, baseType: !403, size: 64, offset: 3392)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4939, file: !4940, line: 222, baseType: !23, size: 32, offset: 7936)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4939, file: !4940, line: 223, baseType: !5127, size: 64, offset: 8000)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4940, line: 223, flags: DIFlagFwdDecl)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4939, file: !4940, line: 230, baseType: !468, size: 8, offset: 8064)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4939, file: !4940, line: 231, baseType: !1114, size: 16, offset: 8080)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4939, file: !4940, line: 232, baseType: !1114, size: 16, offset: 8096)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4939, file: !4940, line: 234, baseType: !962, size: 64, offset: 8128)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4939, file: !4940, line: 237, baseType: !581, size: 256, offset: 8192)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4939, file: !4940, line: 243, baseType: !1016, size: 320, offset: 8448)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !670, file: !671, line: 1111, baseType: !5136, size: 64, offset: 15424)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4940, line: 20, size: 16640, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5142}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5137, file: !4940, line: 21, baseType: !74, size: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5137, file: !4940, line: 22, baseType: !626, size: 32, offset: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5137, file: !4940, line: 23, baseType: !69, size: 192, offset: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5137, file: !4940, line: 24, baseType: !5143, size: 16384, offset: 256)
!5143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5144, size: 16384, elements: !1732)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4951, line: 51, size: 256, elements: !5145)
!5145 = !{!5146}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5144, file: !4951, line: 52, baseType: !5147, size: 256)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4951, line: 37, size: 256, elements: !5148)
!5148 = !{!5149, !5156, !5157, !5161}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5147, file: !4951, line: 39, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5151, line: 83, baseType: !5152)
!5151 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5151, line: 82, baseType: !5154)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{null, !37}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5147, file: !4951, line: 40, baseType: !54, size: 64, offset: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5147, file: !4951, line: 46, baseType: !5158, size: 64, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5151, line: 86, baseType: !5159)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5151, line: 85, baseType: !2953)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5147, file: !4951, line: 48, baseType: !4955, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !670, file: !671, line: 1112, baseType: !4955, size: 64, offset: 15488)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !670, file: !671, line: 1113, baseType: !4955, size: 64, offset: 15552)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !670, file: !671, line: 1115, baseType: !4955, size: 64, offset: 15616)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !670, file: !671, line: 1116, baseType: !4950, size: 192, offset: 15680)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !670, file: !671, line: 1117, baseType: !54, size: 64, offset: 15872)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !670, file: !671, line: 1118, baseType: !50, size: 64, offset: 15936)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !670, file: !671, line: 1119, baseType: !23, size: 32, offset: 16000)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !670, file: !671, line: 1121, baseType: !563, size: 64, offset: 16064)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !670, file: !671, line: 1125, baseType: !5171, size: 64, offset: 16128)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !671, line: 43, flags: DIFlagFwdDecl)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !670, file: !671, line: 1127, baseType: !415, size: 32, offset: 16192)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !670, file: !671, line: 1128, baseType: !23, size: 32, offset: 16224)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !670, file: !671, line: 1130, baseType: !5176, size: 128, offset: 16256)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5177, line: 37, size: 128, elements: !5178)
!5177 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5178 = !{!5179, !5180, !5181}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5176, file: !5177, line: 38, baseType: !37, size: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5176, file: !5177, line: 39, baseType: !64, size: 32, offset: 32)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5176, file: !5177, line: 40, baseType: !5182, size: 64, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5177, line: 24, flags: DIFlagFwdDecl)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !670, file: !671, line: 1131, baseType: !5185, size: 256, offset: 16384)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5186, line: 12, size: 256, elements: !5187)
!5186 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5187 = !{!5188, !5189, !5190, !5191}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5185, file: !5186, line: 13, baseType: !474, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5185, file: !5186, line: 14, baseType: !54, size: 64, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5185, file: !5186, line: 15, baseType: !54, size: 64, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5185, file: !5186, line: 16, baseType: !468, size: 8, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !670, file: !671, line: 1134, baseType: !402, size: 64, offset: 16640)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !670, file: !671, line: 1135, baseType: !402, size: 64, offset: 16704)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !670, file: !671, line: 1138, baseType: !74, size: 32, offset: 16768)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !670, file: !671, line: 1141, baseType: !586, size: 32, offset: 16800)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !670, file: !671, line: 1143, baseType: !5197, size: 64, offset: 16832)
!5197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !671, line: 735, size: 64, elements: !5198)
!5198 = !{!5199}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5197, file: !671, line: 736, baseType: !5200, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !670, file: !671, line: 1147, baseType: !847, size: 128, offset: 16896)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !670, file: !671, line: 1149, baseType: !669, size: 64, offset: 17024)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !670, file: !671, line: 1151, baseType: !5204, size: 64, offset: 17088)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !671, line: 1151, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !670, file: !671, line: 1188, baseType: !35, size: 64, offset: 17152)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !670, file: !671, line: 1191, baseType: !5208, size: 64, offset: 17216)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !671, line: 44, flags: DIFlagFwdDecl)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !670, file: !671, line: 1194, baseType: !5211, size: 64, offset: 17280)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !671, line: 45, flags: DIFlagFwdDecl)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !670, file: !671, line: 1197, baseType: !5214, size: 64, offset: 17344)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !671, line: 61, flags: DIFlagFwdDecl)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !670, file: !671, line: 1199, baseType: !5217, size: 64, offset: 17408)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5219, line: 99, size: 128, elements: !5220)
!5219 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5220 = !{!5221, !5222, !5223}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5218, file: !5219, line: 100, baseType: !573, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5218, file: !5219, line: 101, baseType: !64, size: 32, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5218, file: !5219, line: 103, baseType: !41, size: 16, offset: 96)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !670, file: !671, line: 1202, baseType: !5225, size: 64, offset: 17472)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !671, line: 48, flags: DIFlagFwdDecl)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !670, file: !671, line: 1205, baseType: !54, size: 64, offset: 17536)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !670, file: !671, line: 1206, baseType: !5229, size: 64, offset: 17600)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4951, line: 14, baseType: !5231)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4951, line: 12, size: 384, elements: !5232)
!5232 = !{!5233}
!5233 = !DIDerivedType(tag: DW_TAG_member, scope: !5231, file: !4951, line: 13, baseType: !5234, size: 384)
!5234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5231, file: !4951, line: 13, size: 384, elements: !5235)
!5235 = !{!5236, !5237, !5238, !5239}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5234, file: !4951, line: 13, baseType: !37, size: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5234, file: !4951, line: 13, baseType: !37, size: 32, offset: 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5234, file: !4951, line: 13, baseType: !37, size: 32, offset: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5234, file: !4951, line: 13, baseType: !5240, size: 256, offset: 128)
!5240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5241, line: 37, size: 256, elements: !5242)
!5241 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5242 = !{!5243, !5248, !5261, !5267, !5276, !5303, !5308}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5240, file: !5241, line: 42, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 39, size: 64, elements: !5245)
!5245 = !{!5246, !5247}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5244, file: !5241, line: 40, baseType: !1479, size: 32)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5244, file: !5241, line: 41, baseType: !421, size: 32, offset: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5240, file: !5241, line: 50, baseType: !5249, size: 192)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 45, size: 192, elements: !5250)
!5250 = !{!5251, !5253, !5254, !5260}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5249, file: !5241, line: 46, baseType: !5252, size: 32)
!5252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !52, line: 95, baseType: !37)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5249, file: !5241, line: 47, baseType: !37, size: 32, offset: 32)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5249, file: !5241, line: 48, baseType: !5255, size: 64, offset: 64)
!5255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5241, line: 11, baseType: !5256)
!5256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5241, line: 8, size: 64, elements: !5257)
!5257 = !{!5258, !5259}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5256, file: !5241, line: 9, baseType: !37, size: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5256, file: !5241, line: 10, baseType: !35, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5249, file: !5241, line: 49, baseType: !37, size: 32, offset: 128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5240, file: !5241, line: 57, baseType: !5262, size: 128)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 53, size: 128, elements: !5263)
!5263 = !{!5264, !5265, !5266}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5262, file: !5241, line: 54, baseType: !1479, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5262, file: !5241, line: 55, baseType: !421, size: 32, offset: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5262, file: !5241, line: 56, baseType: !5255, size: 64, offset: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5240, file: !5241, line: 66, baseType: !5268, size: 256)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 60, size: 256, elements: !5269)
!5269 = !{!5270, !5271, !5272, !5273, !5275}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5268, file: !5241, line: 61, baseType: !1479, size: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5268, file: !5241, line: 62, baseType: !421, size: 32, offset: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5268, file: !5241, line: 63, baseType: !37, size: 32, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5268, file: !5241, line: 64, baseType: !5274, size: 64, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !52, line: 94, baseType: !1761)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5268, file: !5241, line: 65, baseType: !5274, size: 64, offset: 192)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5240, file: !5241, line: 105, baseType: !5277, size: 256)
!5277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 69, size: 256, elements: !5278)
!5278 = !{!5279, !5280}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5277, file: !5241, line: 70, baseType: !35, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, scope: !5277, file: !5241, line: 79, baseType: !5281, size: 192, offset: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5277, file: !5241, line: 79, size: 192, elements: !5282)
!5282 = !{!5283, !5284, !5285, !5292, !5297}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5281, file: !5241, line: 81, baseType: !37, size: 32)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5281, file: !5241, line: 86, baseType: !1114, size: 16)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5281, file: !5241, line: 92, baseType: !5286, size: 192)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5281, file: !5241, line: 88, size: 192, elements: !5287)
!5287 = !{!5288, !5290, !5291}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5286, file: !5241, line: 89, baseType: !5289, size: 64)
!5289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !831)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5286, file: !5241, line: 90, baseType: !35, size: 64, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5286, file: !5241, line: 91, baseType: !35, size: 64, offset: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5281, file: !5241, line: 97, baseType: !5293, size: 96)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5281, file: !5241, line: 94, size: 96, elements: !5294)
!5294 = !{!5295, !5296}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5293, file: !5241, line: 95, baseType: !5289, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5293, file: !5241, line: 96, baseType: !314, size: 32, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5281, file: !5241, line: 103, baseType: !5298, size: 128)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5281, file: !5241, line: 99, size: 128, elements: !5299)
!5299 = !{!5300, !5301, !5302}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5298, file: !5241, line: 100, baseType: !54, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5298, file: !5241, line: 101, baseType: !314, size: 32, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5298, file: !5241, line: 102, baseType: !314, size: 32, offset: 96)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5240, file: !5241, line: 111, baseType: !5304, size: 128)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 108, size: 128, elements: !5305)
!5305 = !{!5306, !5307}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5304, file: !5241, line: 109, baseType: !543, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5304, file: !5241, line: 110, baseType: !37, size: 32, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5240, file: !5241, line: 118, baseType: !5309, size: 128)
!5309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5241, line: 114, size: 128, elements: !5310)
!5310 = !{!5311, !5312, !5313}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5309, file: !5241, line: 115, baseType: !35, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5309, file: !5241, line: 116, baseType: !37, size: 32, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5309, file: !5241, line: 117, baseType: !23, size: 32, offset: 96)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !670, file: !671, line: 1208, baseType: !5035, size: 448, offset: 17664)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !670, file: !671, line: 1215, baseType: !402, size: 64, offset: 18112)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !670, file: !671, line: 1217, baseType: !402, size: 64, offset: 18176)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !670, file: !671, line: 1219, baseType: !402, size: 64, offset: 18240)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !670, file: !671, line: 1223, baseType: !5319, size: 64, offset: 18304)
!5319 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5320, line: 99, baseType: !5321)
!5320 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5320, line: 99, size: 64, elements: !5322)
!5322 = !{!5323}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5321, file: !5320, line: 99, baseType: !915, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !670, file: !671, line: 1225, baseType: !372, size: 32, offset: 18368)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !670, file: !671, line: 1226, baseType: !37, size: 32, offset: 18400)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !670, file: !671, line: 1227, baseType: !37, size: 32, offset: 18432)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !670, file: !671, line: 1231, baseType: !4200, size: 64, offset: 18496)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !670, file: !671, line: 1233, baseType: !112, size: 128, offset: 18560)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !670, file: !671, line: 1240, baseType: !5330, size: 64, offset: 18688)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !5332, line: 60, flags: DIFlagFwdDecl)
!5332 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !670, file: !671, line: 1242, baseType: !5334, size: 64, offset: 18752)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5336, line: 392, size: 96, elements: !5337)
!5336 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5337 = !{!5338, !5344, !5346}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5335, file: !5336, line: 393, baseType: !5339, size: 32)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5336, line: 388, size: 32, elements: !5340)
!5340 = !{!5341}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5339, file: !5336, line: 389, baseType: !5342, size: 32)
!5342 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !5343, line: 46, baseType: !332)
!5343 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5335, file: !5336, line: 394, baseType: !5345, size: 32, offset: 32)
!5345 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !5343, line: 42, baseType: !1062)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5335, file: !5336, line: 395, baseType: !5342, size: 32, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !670, file: !671, line: 1244, baseType: !112, size: 128, offset: 18816)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !670, file: !671, line: 1245, baseType: !5349, size: 64, offset: 18944)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !671, line: 51, flags: DIFlagFwdDecl)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !670, file: !671, line: 1246, baseType: !581, size: 256, offset: 19008)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !670, file: !671, line: 1247, baseType: !23, size: 32, offset: 19264)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !670, file: !671, line: 1250, baseType: !3452, size: 64, offset: 19328)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !670, file: !671, line: 1251, baseType: !581, size: 256, offset: 19392)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !670, file: !671, line: 1252, baseType: !112, size: 128, offset: 19648)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !670, file: !671, line: 1259, baseType: !2017, size: 64, offset: 19776)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !670, file: !671, line: 1260, baseType: !1114, size: 16, offset: 19840)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !670, file: !671, line: 1261, baseType: !1114, size: 16, offset: 19856)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !670, file: !671, line: 1314, baseType: !5360, size: 64, offset: 19904)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5362, line: 62, size: 256, align: 256, elements: !5363)
!5362 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5363 = !{!5364, !5365, !5366, !5367, !5368, !5369, !5370}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5361, file: !5362, line: 75, baseType: !314, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5361, file: !5362, line: 90, baseType: !314, size: 32, offset: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5361, file: !5362, line: 112, baseType: !403, size: 64, offset: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5361, file: !5362, line: 132, baseType: !314, size: 32, offset: 128)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5361, file: !5362, line: 140, baseType: !314, size: 32, offset: 160)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5361, file: !5362, line: 149, baseType: !314, size: 32, offset: 192)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5361, file: !5362, line: 154, baseType: !5371, offset: 224)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !318)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !670, file: !671, line: 1315, baseType: !332, size: 32, offset: 19968)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !670, file: !671, line: 1316, baseType: !332, size: 32, offset: 20000)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !670, file: !671, line: 1321, baseType: !54, size: 64, offset: 20032)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !670, file: !671, line: 1325, baseType: !37, size: 32, offset: 20096)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !670, file: !671, line: 1326, baseType: !37, size: 32, offset: 20128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !670, file: !671, line: 1327, baseType: !37, size: 32, offset: 20160)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !670, file: !671, line: 1328, baseType: !37, size: 32, offset: 20192)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !670, file: !671, line: 1329, baseType: !560, size: 128, align: 64, offset: 20224)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !670, file: !671, line: 1332, baseType: !5381, size: 128, offset: 20352)
!5381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5382, line: 51, size: 128, elements: !5383)
!5382 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5383 = !{!5384, !5389, !5390}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5381, file: !5382, line: 60, baseType: !5385, size: 64)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5386, line: 7, size: 64, elements: !5387)
!5386 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5387 = !{!5388}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5385, file: !5386, line: 12, baseType: !912, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5381, file: !5382, line: 63, baseType: !468, size: 8, offset: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5381, file: !5382, line: 70, baseType: !468, size: 8, offset: 72)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !670, file: !671, line: 1335, baseType: !5392, size: 64, offset: 20480)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !671, line: 59, flags: DIFlagFwdDecl)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !670, file: !671, line: 1337, baseType: !5395, size: 128, offset: 20544)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5382, line: 39, size: 128, elements: !5396)
!5396 = !{!5397, !5398, !5399}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5395, file: !5382, line: 40, baseType: !1816, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5395, file: !5382, line: 42, baseType: !314, size: 32, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5395, file: !5382, line: 43, baseType: !314, size: 32, offset: 96)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !670, file: !671, line: 1340, baseType: !5401, size: 64, offset: 20672)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !671, line: 69, flags: DIFlagFwdDecl)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !670, file: !671, line: 1351, baseType: !37, size: 32, offset: 20736)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !670, file: !671, line: 1352, baseType: !37, size: 32, offset: 20768)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !670, file: !671, line: 1354, baseType: !54, size: 64, offset: 20800)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !670, file: !671, line: 1364, baseType: !402, size: 64, offset: 20864)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !670, file: !671, line: 1365, baseType: !402, size: 64, offset: 20928)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !670, file: !671, line: 1412, baseType: !54, size: 64, offset: 20992)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !670, file: !671, line: 1453, baseType: !5410, size: 64, offset: 21056)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !671, line: 1453, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !670, file: !671, line: 1457, baseType: !5413, size: 64, offset: 21120)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !160, line: 61, size: 576, elements: !5415)
!5415 = !{!5416, !5417, !5436, !5439, !5440, !5473, !5483}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5414, file: !160, line: 62, baseType: !159, size: 32)
!5417 = !DIDerivedType(tag: DW_TAG_member, scope: !5414, file: !160, line: 64, baseType: !5418, size: 192, offset: 64)
!5418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5414, file: !160, line: 64, size: 192, elements: !5419)
!5419 = !{!5420, !5431}
!5420 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !160, line: 65, baseType: !5421, size: 192)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5418, file: !160, line: 65, size: 192, elements: !5422)
!5422 = !{!5423, !5430}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5421, file: !160, line: 66, baseType: !5424, size: 128)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5425, line: 50, size: 128, elements: !5426)
!5425 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5426 = !{!5427, !5428, !5429}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5424, file: !5425, line: 52, baseType: !54, size: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5424, file: !5425, line: 54, baseType: !23, size: 32, offset: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5424, file: !5425, line: 55, baseType: !23, size: 32, offset: 96)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5421, file: !160, line: 67, baseType: !54, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, scope: !5418, file: !160, line: 70, baseType: !5432, size: 192)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5418, file: !160, line: 70, size: 192, elements: !5433)
!5433 = !{!5434, !5435}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5432, file: !160, line: 71, baseType: !560, size: 128, align: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5432, file: !160, line: 72, baseType: !54, size: 64, offset: 128)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5414, file: !160, line: 76, baseType: !5437, size: 64, offset: 256)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !160, line: 76, flags: DIFlagFwdDecl)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5414, file: !160, line: 77, baseType: !54, size: 64, offset: 320)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5414, file: !160, line: 79, baseType: !5441, size: 64, offset: 384)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5425, line: 25, size: 256, elements: !5443)
!5443 = !{!5444, !5450, !5454}
!5444 = !DIDerivedType(tag: DW_TAG_member, scope: !5442, file: !5425, line: 26, baseType: !5445, size: 128)
!5445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5442, file: !5425, line: 26, size: 128, elements: !5446)
!5446 = !{!5447, !5449}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5445, file: !5425, line: 27, baseType: !5448, size: 128)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !1605)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5445, file: !5425, line: 28, baseType: !5448, size: 128)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5442, file: !5425, line: 31, baseType: !5451, size: 64, offset: 128)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5453)
!5453 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5425, line: 23, flags: DIFlagFwdDecl)
!5454 = !DIDerivedType(tag: DW_TAG_member, scope: !5442, file: !5425, line: 33, baseType: !5455, size: 64, offset: 192)
!5455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5442, file: !5425, line: 33, size: 64, elements: !5456)
!5456 = !{!5457, !5463, !5468}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5455, file: !5425, line: 38, baseType: !5458, size: 64)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5425, line: 34, size: 64, elements: !5459)
!5459 = !{!5460, !5461, !5462}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5458, file: !5425, line: 35, baseType: !1062, size: 32)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5458, file: !5425, line: 36, baseType: !98, size: 8, offset: 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5458, file: !5425, line: 37, baseType: !98, size: 8, offset: 40)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5455, file: !5425, line: 42, baseType: !5464, size: 16)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5425, line: 39, size: 16, elements: !5465)
!5465 = !{!5466, !5467}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5464, file: !5425, line: 40, baseType: !98, size: 8)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5464, file: !5425, line: 41, baseType: !98, size: 8, offset: 8)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5455, file: !5425, line: 46, baseType: !5469, size: 16)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5455, file: !5425, line: 43, size: 16, elements: !5470)
!5470 = !{!5471, !5472}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5469, file: !5425, line: 44, baseType: !98, size: 8)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5469, file: !5425, line: 45, baseType: !98, size: 8, offset: 8)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5414, file: !160, line: 81, baseType: !5474, size: 64, offset: 448)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !160, line: 85, size: 384, elements: !5476)
!5476 = !{!5477, !5478, !5479, !5480, !5481, !5482}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5475, file: !160, line: 86, baseType: !5437, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5475, file: !160, line: 87, baseType: !54, size: 64, offset: 64)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5475, file: !160, line: 88, baseType: !54, size: 64, offset: 128)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5475, file: !160, line: 89, baseType: !54, size: 64, offset: 192)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5475, file: !160, line: 90, baseType: !468, size: 8, offset: 256)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5475, file: !160, line: 92, baseType: !5474, size: 64, offset: 320)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5414, file: !160, line: 82, baseType: !23, size: 32, offset: 512)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !670, file: !671, line: 1463, baseType: !5485, offset: 21184)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !671, line: 739, elements: !350)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !671, line: 1470, baseType: !560, size: 128, align: 64, offset: 21184)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !670, file: !671, line: 1471, baseType: !626, size: 32, offset: 21312)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !670, file: !671, line: 1472, baseType: !37, size: 32, offset: 21344)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !670, file: !671, line: 1474, baseType: !669, size: 64, offset: 21376)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !670, file: !671, line: 1475, baseType: !2778, size: 320, offset: 21440)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !670, file: !671, line: 1478, baseType: !5492, size: 64, offset: 21760)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !671, line: 1478, flags: DIFlagFwdDecl)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !670, file: !671, line: 1482, baseType: !626, size: 32, offset: 21824)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !670, file: !671, line: 1489, baseType: !35, size: 64, offset: 21888)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !670, file: !671, line: 1504, baseType: !35, size: 64, offset: 21952)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !670, file: !671, line: 1505, baseType: !403, size: 64, offset: 22016)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !670, file: !671, line: 1506, baseType: !402, size: 64, offset: 22080)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !670, file: !671, line: 1507, baseType: !403, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !670, file: !671, line: 1508, baseType: !403, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !670, file: !671, line: 1509, baseType: !403, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !670, file: !671, line: 1510, baseType: !560, size: 128, align: 64, offset: 22208)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !670, file: !671, line: 1511, baseType: !37, size: 32, offset: 22336)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !670, file: !671, line: 1515, baseType: !5505, size: 64, offset: 22400)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !555, line: 56, size: 64, elements: !5506)
!5506 = !{!5507}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5505, file: !555, line: 57, baseType: !558, size: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !670, file: !671, line: 1518, baseType: !5505, size: 64, offset: 22464)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !670, file: !671, line: 1528, baseType: !560, size: 128, align: 64, offset: 22528)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !670, file: !671, line: 1552, baseType: !5511, size: 35328, offset: 23040)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5512, line: 430, size: 35328, elements: !5513)
!5512 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5513 = !{!5514, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5541, !5542, !5543, !5544, !5545, !5546, !5549, !5550, !5551, !5552}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5511, file: !5512, line: 432, baseType: !5515, size: 192)
!5515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5516, size: 192, elements: !618)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5517, line: 16, size: 64, elements: !5518)
!5517 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5518 = !{!5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5516, file: !5517, line: 17, baseType: !108, size: 16)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5516, file: !5517, line: 18, baseType: !108, size: 16, offset: 16)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5516, file: !5517, line: 19, baseType: !108, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5516, file: !5517, line: 19, baseType: !108, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5516, file: !5517, line: 19, baseType: !108, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5516, file: !5517, line: 19, baseType: !108, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5516, file: !5517, line: 19, baseType: !108, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5516, file: !5517, line: 20, baseType: !108, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5516, file: !5517, line: 20, baseType: !108, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5516, file: !5517, line: 20, baseType: !108, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5516, file: !5517, line: 20, baseType: !108, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5516, file: !5517, line: 20, baseType: !108, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5516, file: !5517, line: 20, baseType: !108, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5511, file: !5512, line: 436, baseType: !54, size: 64, offset: 192)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5511, file: !5512, line: 440, baseType: !41, size: 16, offset: 256)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5511, file: !5512, line: 441, baseType: !41, size: 16, offset: 272)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5511, file: !5512, line: 442, baseType: !41, size: 16, offset: 288)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5511, file: !5512, line: 443, baseType: !41, size: 16, offset: 304)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5511, file: !5512, line: 447, baseType: !54, size: 64, offset: 320)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5511, file: !5512, line: 448, baseType: !54, size: 64, offset: 384)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5511, file: !5512, line: 459, baseType: !5540, size: 256, offset: 448)
!5540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3064, size: 256, elements: !638)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5511, file: !5512, line: 461, baseType: !54, size: 64, offset: 704)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5511, file: !5512, line: 463, baseType: !54, size: 64, offset: 768)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5511, file: !5512, line: 465, baseType: !54, size: 64, offset: 832)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5511, file: !5512, line: 466, baseType: !54, size: 64, offset: 896)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5511, file: !5512, line: 467, baseType: !54, size: 64, offset: 960)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5511, file: !5512, line: 473, baseType: !5547, size: 64, offset: 1024)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5512, line: 10, flags: DIFlagFwdDecl)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5511, file: !5512, line: 480, baseType: !54, size: 64, offset: 1088)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5511, file: !5512, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5511, file: !5512, line: 491, baseType: !332, size: 32, offset: 1184)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5511, file: !5512, line: 501, baseType: !5553, size: 33792, offset: 1536)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5554, line: 448, size: 33792, elements: !5555)
!5554 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5555 = !{!5556, !5557, !5558, !5666, !5667, !5673, !5674}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5553, file: !5554, line: 461, baseType: !23, size: 32)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5553, file: !5554, line: 468, baseType: !54, size: 64, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5553, file: !5554, line: 476, baseType: !5559, size: 64, offset: 128)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5554, line: 356, size: 33280, align: 512, elements: !5561)
!5561 = !{!5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5560, file: !5554, line: 358, baseType: !23, size: 32)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5560, file: !5554, line: 361, baseType: !23, size: 32, offset: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5560, file: !5554, line: 364, baseType: !402, size: 64, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5560, file: !5554, line: 367, baseType: !402, size: 64, offset: 128)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5560, file: !5554, line: 370, baseType: !402, size: 64, offset: 192)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5560, file: !5554, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5560, file: !5554, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5560, file: !5554, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5560, file: !5554, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5560, file: !5554, line: 397, baseType: !5572, size: 32768, offset: 512)
!5572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5554, line: 348, size: 32768, elements: !5573)
!5573 = !{!5574, !5589, !5626, !5651, !5664}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5572, file: !5554, line: 349, baseType: !5575, size: 896)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5554, line: 12, size: 896, elements: !5576)
!5576 = !{!5577, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5588}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5575, file: !5554, line: 13, baseType: !332, size: 32)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5575, file: !5554, line: 14, baseType: !332, size: 32, offset: 32)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5575, file: !5554, line: 15, baseType: !332, size: 32, offset: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5575, file: !5554, line: 16, baseType: !332, size: 32, offset: 96)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5575, file: !5554, line: 17, baseType: !332, size: 32, offset: 128)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5575, file: !5554, line: 18, baseType: !332, size: 32, offset: 160)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5575, file: !5554, line: 19, baseType: !332, size: 32, offset: 192)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5575, file: !5554, line: 22, baseType: !5585, size: 640, offset: 224)
!5585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 640, elements: !5586)
!5586 = !{!5587}
!5587 = !DISubrange(count: 20)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5575, file: !5554, line: 25, baseType: !332, size: 32, offset: 864)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5572, file: !5554, line: 350, baseType: !5590, size: 4096, align: 128)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5554, line: 34, size: 4096, align: 128, elements: !5591)
!5591 = !{!5592, !5593, !5594, !5595, !5596, !5611, !5612, !5613, !5615, !5617, !5621}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5590, file: !5554, line: 35, baseType: !108, size: 16)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5590, file: !5554, line: 36, baseType: !108, size: 16, offset: 16)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5590, file: !5554, line: 37, baseType: !108, size: 16, offset: 32)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5590, file: !5554, line: 38, baseType: !108, size: 16, offset: 48)
!5596 = !DIDerivedType(tag: DW_TAG_member, scope: !5590, file: !5554, line: 39, baseType: !5597, size: 128, offset: 64)
!5597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5590, file: !5554, line: 39, size: 128, elements: !5598)
!5598 = !{!5599, !5604}
!5599 = !DIDerivedType(tag: DW_TAG_member, scope: !5597, file: !5554, line: 40, baseType: !5600, size: 128)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5554, line: 40, size: 128, elements: !5601)
!5601 = !{!5602, !5603}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5600, file: !5554, line: 41, baseType: !402, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5600, file: !5554, line: 42, baseType: !402, size: 64, offset: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, scope: !5597, file: !5554, line: 44, baseType: !5605, size: 128)
!5605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5554, line: 44, size: 128, elements: !5606)
!5606 = !{!5607, !5608, !5609, !5610}
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5605, file: !5554, line: 45, baseType: !332, size: 32)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5605, file: !5554, line: 46, baseType: !332, size: 32, offset: 32)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5605, file: !5554, line: 47, baseType: !332, size: 32, offset: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5605, file: !5554, line: 48, baseType: !332, size: 32, offset: 96)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5590, file: !5554, line: 51, baseType: !332, size: 32, offset: 192)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5590, file: !5554, line: 52, baseType: !332, size: 32, offset: 224)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5590, file: !5554, line: 55, baseType: !5614, size: 1024, offset: 256)
!5614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !4766)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5590, file: !5554, line: 58, baseType: !5616, size: 2048, offset: 1280)
!5616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 2048, elements: !1732)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5590, file: !5554, line: 60, baseType: !5618, size: 384, offset: 3328)
!5618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !5619)
!5619 = !{!5620}
!5620 = !DISubrange(count: 12)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5590, file: !5554, line: 62, baseType: !5622, size: 384, offset: 3712)
!5622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5590, file: !5554, line: 62, size: 384, elements: !5623)
!5623 = !{!5624, !5625}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5622, file: !5554, line: 63, baseType: !5618, size: 384)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5622, file: !5554, line: 64, baseType: !5618, size: 384)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5572, file: !5554, line: 351, baseType: !5627, size: 1088)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5554, line: 79, size: 1088, elements: !5628)
!5628 = !{!5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5650}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5627, file: !5554, line: 80, baseType: !332, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5627, file: !5554, line: 81, baseType: !332, size: 32, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5627, file: !5554, line: 82, baseType: !332, size: 32, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5627, file: !5554, line: 83, baseType: !332, size: 32, offset: 96)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5627, file: !5554, line: 84, baseType: !332, size: 32, offset: 128)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5627, file: !5554, line: 85, baseType: !332, size: 32, offset: 160)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5627, file: !5554, line: 86, baseType: !332, size: 32, offset: 192)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5627, file: !5554, line: 88, baseType: !5585, size: 640, offset: 224)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5627, file: !5554, line: 89, baseType: !98, size: 8, offset: 864)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5627, file: !5554, line: 90, baseType: !98, size: 8, offset: 872)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5627, file: !5554, line: 91, baseType: !98, size: 8, offset: 880)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5627, file: !5554, line: 92, baseType: !98, size: 8, offset: 888)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5627, file: !5554, line: 93, baseType: !98, size: 8, offset: 896)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5627, file: !5554, line: 94, baseType: !98, size: 8, offset: 904)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5627, file: !5554, line: 95, baseType: !5644, size: 64, offset: 960)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5646, line: 11, size: 128, elements: !5647)
!5646 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5647 = !{!5648, !5649}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5645, file: !5646, line: 12, baseType: !543, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5645, file: !5646, line: 13, baseType: !3979, size: 64, offset: 64)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5627, file: !5554, line: 96, baseType: !332, size: 32, offset: 1024)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5572, file: !5554, line: 352, baseType: !5652, size: 4608, align: 512)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5554, line: 333, size: 4608, align: 512, elements: !5653)
!5653 = !{!5654, !5655, !5662}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5652, file: !5554, line: 334, baseType: !5590, size: 4096, align: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5652, file: !5554, line: 335, baseType: !5656, size: 512, offset: 4096)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5554, line: 312, size: 512, elements: !5657)
!5657 = !{!5658, !5659, !5660}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5656, file: !5554, line: 313, baseType: !402, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5656, file: !5554, line: 314, baseType: !402, size: 64, offset: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5656, file: !5554, line: 315, baseType: !5661, size: 384, offset: 128)
!5661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 384, elements: !1217)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5652, file: !5554, line: 336, baseType: !5663, offset: 4608)
!5663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !318)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5572, file: !5554, line: 353, baseType: !5665, size: 32768)
!5665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !3008)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5553, file: !5554, line: 484, baseType: !5559, size: 64, offset: 192)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5553, file: !5554, line: 491, baseType: !5668, size: 128, offset: 256)
!5668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5554, line: 404, size: 128, elements: !5669)
!5669 = !{!5670, !5671, !5672}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5668, file: !5554, line: 424, baseType: !402, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5668, file: !5554, line: 432, baseType: !23, size: 32, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5668, file: !5554, line: 440, baseType: !23, size: 32, offset: 96)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5553, file: !5554, line: 498, baseType: !5668, size: 128, offset: 384)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5553, file: !5554, line: 508, baseType: !5560, size: 33280, align: 512, offset: 512)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !650, file: !651, line: 31, baseType: !3556, size: 64, offset: 448)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !650, file: !651, line: 32, baseType: !23, size: 32, offset: 512)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !650, file: !651, line: 33, baseType: !649, size: 64, offset: 576)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !650, file: !651, line: 35, baseType: !5679, size: 64, offset: 640)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !5681, line: 4, size: 576, elements: !5682)
!5681 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!5682 = !{!5683, !5684, !5685, !5686, !5687}
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5680, file: !5681, line: 5, baseType: !69, size: 192)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5680, file: !5681, line: 6, baseType: !37, size: 32, offset: 192)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !5680, file: !5681, line: 7, baseType: !358, size: 128, offset: 256)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !5680, file: !5681, line: 8, baseType: !358, size: 128, offset: 384)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !5680, file: !5681, line: 9, baseType: !5688, size: 64, offset: 512)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{null, !5679}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !650, file: !651, line: 37, baseType: !1121, size: 64, offset: 704)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !650, file: !651, line: 38, baseType: !1360, size: 64, offset: 768)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !650, file: !651, line: 39, baseType: !37, size: 32, offset: 832)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !650, file: !651, line: 40, baseType: !1154, size: 192, offset: 896)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !650, file: !651, line: 42, baseType: !37, size: 32, offset: 1088)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !596, file: !267, line: 951, baseType: !258, size: 32, offset: 128)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !596, file: !267, line: 952, baseType: !415, size: 32, offset: 160)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !596, file: !267, line: 952, baseType: !415, size: 32, offset: 192)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !596, file: !267, line: 953, baseType: !37, size: 32, offset: 224)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !548, file: !267, line: 1012, baseType: !1532, size: 64, offset: 896)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !548, file: !267, line: 1013, baseType: !5702, size: 256, offset: 960)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !267, line: 970, size: 256, elements: !5703)
!5703 = !{!5704, !5705, !5706, !5707, !5708, !5709}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5702, file: !267, line: 971, baseType: !54, size: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5702, file: !267, line: 972, baseType: !23, size: 32, offset: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5702, file: !267, line: 973, baseType: !23, size: 32, offset: 96)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5702, file: !267, line: 974, baseType: !23, size: 32, offset: 128)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5702, file: !267, line: 975, baseType: !23, size: 32, offset: 160)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5702, file: !267, line: 976, baseType: !56, size: 64, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !548, file: !267, line: 1014, baseType: !1633, size: 128, offset: 1216)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !548, file: !267, line: 1015, baseType: !409, size: 64, offset: 1344)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !548, file: !267, line: 1016, baseType: !5713, size: 64, offset: 1408)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5715)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !267, line: 1914, size: 2112, elements: !5716)
!5716 = !{!5717, !5718, !5722, !5726, !5730, !5731, !5732, !5738, !5751, !5755, !5759, !5760, !5764, !5765, !5769, !5774, !5775, !5779, !5783, !5789, !5790, !5794, !5795, !5799, !5803, !5804, !5809, !5813, !5817, !5821, !5825, !5826, !5832}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5715, file: !267, line: 1915, baseType: !1676, size: 64)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5715, file: !267, line: 1916, baseType: !5719, size: 64, offset: 64)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!56, !547, !56, !37}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5715, file: !267, line: 1917, baseType: !5723, size: 64, offset: 128)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!1759, !547, !474, !50, !55}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5715, file: !267, line: 1918, baseType: !5727, size: 64, offset: 192)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!1759, !547, !32, !50, !55}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5715, file: !267, line: 1919, baseType: !2215, size: 64, offset: 256)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5715, file: !267, line: 1920, baseType: !2215, size: 64, offset: 320)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5715, file: !267, line: 1921, baseType: !5733, size: 64, offset: 384)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!37, !2218, !5736, !23}
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !267, line: 53, flags: DIFlagFwdDecl)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5715, file: !267, line: 1923, baseType: !5739, size: 64, offset: 448)
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!37, !547, !5742}
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !267, line: 1858, size: 128, elements: !5744)
!5744 = !{!5745, !5750}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5743, file: !267, line: 1859, baseType: !5746, size: 64)
!5746 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !267, line: 1855, baseType: !5747)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!468, !5742, !32, !37, !56, !402, !23}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5743, file: !267, line: 1860, baseType: !56, size: 64, offset: 64)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5715, file: !267, line: 1924, baseType: !5752, size: 64, offset: 512)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{!2498, !547, !2500}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5715, file: !267, line: 1925, baseType: !5756, size: 64, offset: 576)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!543, !547, !23, !54}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5715, file: !267, line: 1926, baseType: !5756, size: 64, offset: 640)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5715, file: !267, line: 1927, baseType: !5761, size: 64, offset: 704)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!37, !547, !1926}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5715, file: !267, line: 1928, baseType: !54, size: 64, offset: 768)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5715, file: !267, line: 1929, baseType: !5766, size: 64, offset: 832)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!37, !409, !547}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5715, file: !267, line: 1930, baseType: !5770, size: 64, offset: 896)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!37, !547, !5773}
!5773 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !267, line: 1061, baseType: !35)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5715, file: !267, line: 1931, baseType: !5766, size: 64, offset: 960)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5715, file: !267, line: 1932, baseType: !5776, size: 64, offset: 1024)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!37, !547, !56, !56, !37}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5715, file: !267, line: 1933, baseType: !5780, size: 64, offset: 1088)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!37, !37, !547, !37}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5715, file: !267, line: 1934, baseType: !5784, size: 64, offset: 1152)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!37, !547, !37, !5787}
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !267, line: 1063, flags: DIFlagFwdDecl)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5715, file: !267, line: 1935, baseType: !986, size: 64, offset: 1216)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5715, file: !267, line: 1936, baseType: !5791, size: 64, offset: 1280)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!37, !37}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5715, file: !267, line: 1937, baseType: !5784, size: 64, offset: 1344)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5715, file: !267, line: 1938, baseType: !5796, size: 64, offset: 1408)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!1759, !5392, !547, !55, !50, !23}
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5715, file: !267, line: 1939, baseType: !5800, size: 64, offset: 1472)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!1759, !547, !55, !5392, !50, !23}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5715, file: !267, line: 1940, baseType: !2321, size: 64, offset: 1536)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5715, file: !267, line: 1941, baseType: !5805, size: 64, offset: 1600)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!37, !547, !37, !5808, !2192}
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5715, file: !267, line: 1942, baseType: !5810, size: 64, offset: 1664)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!543, !547, !37, !56, !56}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5715, file: !267, line: 1944, baseType: !5814, size: 64, offset: 1728)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !2431, !547}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5715, file: !267, line: 1948, baseType: !5818, size: 64, offset: 1792)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!1759, !547, !56, !547, !56, !50, !23}
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5715, file: !267, line: 1950, baseType: !5822, size: 64, offset: 1856)
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5823, size: 64)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!56, !547, !56, !547, !56, !56, !23}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5715, file: !267, line: 1953, baseType: !5776, size: 64, offset: 1920)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5715, file: !267, line: 1954, baseType: !5827, size: 64, offset: 1984)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!37, !5830, !23}
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !267, line: 1911, flags: DIFlagFwdDecl)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5715, file: !267, line: 1955, baseType: !5833, size: 64, offset: 2048)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!37, !5830, !5736, !23}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !548, file: !267, line: 1018, baseType: !402, size: 64, offset: 1472)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !548, file: !267, line: 1020, baseType: !35, size: 64, offset: 1536)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !548, file: !267, line: 1023, baseType: !35, size: 64, offset: 1600)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !548, file: !267, line: 1027, baseType: !3056, size: 64, offset: 1664)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !548, file: !267, line: 1029, baseType: !1796, size: 64, offset: 1728)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !548, file: !267, line: 1030, baseType: !2331, size: 32, offset: 1792)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !548, file: !267, line: 1031, baseType: !2331, size: 32, offset: 1824)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !438, file: !267, line: 1988, baseType: !5844, size: 64, offset: 896)
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!37, !461, !4526, !5847, !332, !23}
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5849, line: 22, size: 1280, elements: !5850)
!5849 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5850 = !{!5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5848, file: !5849, line: 23, baseType: !332, size: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5848, file: !5849, line: 24, baseType: !39, size: 16, offset: 32)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5848, file: !5849, line: 25, baseType: !23, size: 32, offset: 64)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5848, file: !5849, line: 26, baseType: !1196, size: 32, offset: 96)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5848, file: !5849, line: 27, baseType: !402, size: 64, offset: 128)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5848, file: !5849, line: 28, baseType: !402, size: 64, offset: 192)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5848, file: !5849, line: 41, baseType: !402, size: 64, offset: 256)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5848, file: !5849, line: 42, baseType: !500, size: 32, offset: 320)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5848, file: !5849, line: 43, baseType: !500, size: 32, offset: 352)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5848, file: !5849, line: 44, baseType: !415, size: 32, offset: 384)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5848, file: !5849, line: 45, baseType: !424, size: 32, offset: 416)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5848, file: !5849, line: 46, baseType: !56, size: 64, offset: 448)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5848, file: !5849, line: 47, baseType: !536, size: 128, offset: 512)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5848, file: !5849, line: 48, baseType: !536, size: 128, offset: 640)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5848, file: !5849, line: 49, baseType: !536, size: 128, offset: 768)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5848, file: !5849, line: 50, baseType: !536, size: 128, offset: 896)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5848, file: !5849, line: 51, baseType: !402, size: 64, offset: 1024)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5848, file: !5849, line: 52, baseType: !402, size: 64, offset: 1088)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5848, file: !5849, line: 53, baseType: !332, size: 32, offset: 1152)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5848, file: !5849, line: 54, baseType: !332, size: 32, offset: 1184)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5848, file: !5849, line: 55, baseType: !402, size: 64, offset: 1216)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !438, file: !267, line: 1990, baseType: !5873, size: 64, offset: 960)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{!1759, !366, !474, !50}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !438, file: !267, line: 1991, baseType: !5877, size: 64, offset: 1024)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!37, !409, !5880, !402, !402}
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !267, line: 55, flags: DIFlagFwdDecl)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !438, file: !267, line: 1993, baseType: !5883, size: 64, offset: 1088)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!37, !409, !37}
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !438, file: !267, line: 1994, baseType: !5887, size: 64, offset: 1152)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!37, !409, !366, !547, !23, !39}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !438, file: !267, line: 1997, baseType: !5891, size: 64, offset: 1216)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!37, !461, !409, !547, !39}
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !438, file: !267, line: 1999, baseType: !5895, size: 64, offset: 1280)
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!432, !461, !366, !37}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !438, file: !267, line: 2001, baseType: !5899, size: 64, offset: 1344)
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DISubroutineType(types: !5901)
!5901 = !{!37, !461, !366, !432, !37}
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !438, file: !267, line: 2003, baseType: !5903, size: 64, offset: 1408)
!5903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5904, size: 64)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!37, !461, !366, !5906}
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5907, size: 64)
!5907 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !267, line: 76, flags: DIFlagFwdDecl)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !438, file: !267, line: 2005, baseType: !5909, size: 64, offset: 1472)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!37, !366, !5906}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !438, file: !267, line: 2006, baseType: !5913, size: 64, offset: 1536)
!5913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5914, size: 64)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{!5916, !409}
!5916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5917, size: 64)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !267, line: 3192, size: 192, elements: !5918)
!5918 = !{!5919, !5920}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5917, file: !267, line: 3193, baseType: !658, size: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5917, file: !267, line: 3194, baseType: !332, size: 32, offset: 128)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !410, file: !267, line: 655, baseType: !1643, size: 64, offset: 448)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !410, file: !267, line: 656, baseType: !1796, size: 64, offset: 512)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !410, file: !267, line: 659, baseType: !35, size: 64, offset: 576)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !410, file: !267, line: 663, baseType: !54, size: 64, offset: 640)
!5925 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !267, line: 671, baseType: !5926, size: 32, offset: 704)
!5926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !267, line: 671, size: 32, elements: !5927)
!5927 = !{!5928, !5929}
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5926, file: !267, line: 672, baseType: !2888, size: 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5926, file: !267, line: 673, baseType: !23, size: 32)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !410, file: !267, line: 675, baseType: !500, size: 32, offset: 736)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !410, file: !267, line: 676, baseType: !56, size: 64, offset: 768)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !410, file: !267, line: 677, baseType: !536, size: 128, offset: 832)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !410, file: !267, line: 678, baseType: !536, size: 128, offset: 960)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !410, file: !267, line: 679, baseType: !536, size: 128, offset: 1088)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !410, file: !267, line: 680, baseType: !74, size: 32, offset: 1216)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !410, file: !267, line: 681, baseType: !41, size: 16, offset: 1248)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !410, file: !267, line: 682, baseType: !98, size: 8, offset: 1264)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !410, file: !267, line: 683, baseType: !98, size: 8, offset: 1272)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !410, file: !267, line: 684, baseType: !4599, size: 64, offset: 1280)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !410, file: !267, line: 691, baseType: !54, size: 64, offset: 1344)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !410, file: !267, line: 692, baseType: !1016, size: 320, offset: 1408)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !410, file: !267, line: 694, baseType: !54, size: 64, offset: 1728)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !410, file: !267, line: 695, baseType: !54, size: 64, offset: 1792)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !410, file: !267, line: 697, baseType: !358, size: 128, offset: 1856)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !410, file: !267, line: 698, baseType: !112, size: 128, offset: 1984)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !410, file: !267, line: 707, baseType: !112, size: 128, offset: 2112)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !410, file: !267, line: 708, baseType: !112, size: 128, offset: 2240)
!5948 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !267, line: 709, baseType: !5949, size: 128, offset: 2368)
!5949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !267, line: 709, size: 128, elements: !5950)
!5950 = !{!5951, !5952}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5949, file: !267, line: 710, baseType: !635, size: 64)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5949, file: !267, line: 711, baseType: !560, size: 128, align: 64)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !410, file: !267, line: 713, baseType: !575, size: 64, offset: 2496)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !410, file: !267, line: 714, baseType: !575, size: 64, offset: 2560)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !410, file: !267, line: 715, baseType: !64, size: 32, offset: 2624)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !410, file: !267, line: 716, baseType: !64, size: 32, offset: 2656)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !410, file: !267, line: 717, baseType: !64, size: 32, offset: 2688)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !410, file: !267, line: 719, baseType: !64, size: 32, offset: 2720)
!5959 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !267, line: 721, baseType: !5960, size: 64, offset: 2752)
!5960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !267, line: 721, size: 64, elements: !5961)
!5961 = !{!5962, !5963}
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5960, file: !267, line: 722, baseType: !5713, size: 64)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5960, file: !267, line: 723, baseType: !4355, size: 64)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !410, file: !267, line: 725, baseType: !5965, size: 64, offset: 2816)
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !267, line: 725, flags: DIFlagFwdDecl)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !410, file: !267, line: 726, baseType: !1797, size: 1536, align: 64, offset: 2880)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !410, file: !267, line: 727, baseType: !112, size: 128, offset: 4416)
!5969 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !267, line: 728, baseType: !5970, size: 64, offset: 4544)
!5970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !267, line: 728, size: 64, elements: !5971)
!5971 = !{!5972, !5973, !5976, !5977}
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5970, file: !267, line: 729, baseType: !5392, size: 64)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5970, file: !267, line: 730, baseType: !5974, size: 64)
!5974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5975, size: 64)
!5975 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !267, line: 730, flags: DIFlagFwdDecl)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5970, file: !267, line: 731, baseType: !474, size: 64)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5970, file: !267, line: 732, baseType: !23, size: 32)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !410, file: !267, line: 735, baseType: !314, size: 32, offset: 4608)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !410, file: !267, line: 738, baseType: !314, size: 32, offset: 4640)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !410, file: !267, line: 739, baseType: !4743, size: 64, offset: 4672)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !410, file: !267, line: 750, baseType: !35, size: 64, offset: 4736)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !367, file: !368, line: 91, baseType: !5983, size: 256, offset: 448)
!5983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !4766)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !367, file: !368, line: 94, baseType: !5985, size: 64, offset: 704)
!5985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5986, line: 25, size: 64, elements: !5987)
!5986 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5987 = !{!5988}
!5988 = !DIDerivedType(tag: DW_TAG_member, scope: !5985, file: !5986, line: 26, baseType: !5989, size: 64)
!5989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5985, file: !5986, line: 26, size: 64, elements: !5990)
!5990 = !{!5991, !5992}
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5989, file: !5986, line: 28, baseType: !403, size: 64, align: 64)
!5992 = !DIDerivedType(tag: DW_TAG_member, scope: !5989, file: !5986, line: 30, baseType: !5993, size: 64)
!5993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5989, file: !5986, line: 30, size: 64, elements: !5994)
!5994 = !{!5995, !5996}
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5993, file: !5986, line: 31, baseType: !74, size: 32)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5993, file: !5986, line: 32, baseType: !37, size: 32, offset: 32)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !367, file: !368, line: 95, baseType: !4779, size: 64, offset: 768)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !367, file: !368, line: 96, baseType: !1643, size: 64, offset: 832)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !367, file: !368, line: 97, baseType: !54, size: 64, offset: 896)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !367, file: !368, line: 98, baseType: !35, size: 64, offset: 960)
!6001 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !368, line: 100, baseType: !6002, size: 128, offset: 1024)
!6002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 100, size: 128, elements: !6003)
!6003 = !{!6004, !6005}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !6002, file: !368, line: 101, baseType: !112, size: 128)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !6002, file: !368, line: 102, baseType: !2509, size: 64)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !367, file: !368, line: 104, baseType: !112, size: 128, offset: 1152)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !367, file: !368, line: 105, baseType: !112, size: 128, offset: 1280)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !367, file: !368, line: 113, baseType: !6009, size: 128, offset: 1408)
!6009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 109, size: 128, elements: !6010)
!6010 = !{!6011, !6012, !6013}
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !6009, file: !368, line: 110, baseType: !358, size: 128)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !6009, file: !368, line: 111, baseType: !382, size: 128)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !6009, file: !368, line: 112, baseType: !560, size: 128, align: 64)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !354, file: !355, line: 43, baseType: !1638, size: 256, offset: 256)
!6015 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 44, baseType: !6016, size: 128, offset: 512)
!6016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 44, size: 128, elements: !6017)
!6017 = !{!6018, !6019}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !6016, file: !355, line: 45, baseType: !560, size: 128, align: 64)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !6016, file: !355, line: 46, baseType: !554, size: 64)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !354, file: !355, line: 49, baseType: !6021, size: 64, offset: 640)
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6022, size: 64)
!6022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !355, line: 27, size: 64, elements: !6023)
!6023 = !{!6024, !6025}
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !6022, file: !355, line: 28, baseType: !37, size: 32)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !6022, file: !355, line: 29, baseType: !37, size: 32, offset: 32)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !354, file: !355, line: 54, baseType: !112, size: 128, offset: 704)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !354, file: !355, line: 55, baseType: !112, size: 128, offset: 832)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !354, file: !355, line: 56, baseType: !112, size: 128, offset: 960)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !354, file: !355, line: 57, baseType: !32, size: 64, offset: 1088)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !354, file: !355, line: 58, baseType: !112, size: 128, offset: 1152)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !354, file: !355, line: 59, baseType: !112, size: 128, offset: 1280)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !354, file: !355, line: 60, baseType: !112, size: 128, offset: 1408)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !354, file: !355, line: 61, baseType: !112, size: 128, offset: 1536)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !354, file: !355, line: 62, baseType: !112, size: 128, offset: 1664)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !354, file: !355, line: 63, baseType: !353, size: 64, offset: 1792)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !354, file: !355, line: 64, baseType: !4906, size: 64, offset: 1856)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !354, file: !355, line: 65, baseType: !6038, size: 64, offset: 1920)
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !355, line: 32, size: 320, elements: !6040)
!6040 = !{!6041, !6042, !6043, !6044}
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !6039, file: !355, line: 33, baseType: !358, size: 128)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !6039, file: !355, line: 34, baseType: !366, size: 64, offset: 128)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !6039, file: !355, line: 35, baseType: !635, size: 64, offset: 192)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !6039, file: !355, line: 36, baseType: !37, size: 32, offset: 256)
!6045 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 66, baseType: !6046, size: 128, offset: 1984)
!6046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 66, size: 128, elements: !6047)
!6047 = !{!6048, !6049}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !6046, file: !355, line: 67, baseType: !358, size: 128)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !6046, file: !355, line: 68, baseType: !358, size: 128)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !354, file: !355, line: 70, baseType: !112, size: 128, offset: 2112)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !354, file: !355, line: 72, baseType: !4743, size: 64, offset: 2240)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !354, file: !355, line: 73, baseType: !314, size: 32, offset: 2304)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !354, file: !355, line: 75, baseType: !37, size: 32, offset: 2336)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !354, file: !355, line: 76, baseType: !37, size: 32, offset: 2368)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !354, file: !355, line: 77, baseType: !37, size: 32, offset: 2400)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !354, file: !355, line: 78, baseType: !635, size: 64, offset: 2432)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !354, file: !355, line: 79, baseType: !635, size: 64, offset: 2496)
!6058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!6059 = !{!0, !7, !13}
!6060 = !{!"rsp"}
!6061 = !{i32 7, !"Dwarf Version", i32 5}
!6062 = !{i32 2, !"Debug Info Version", i32 3}
!6063 = !{i32 1, !"wchar_size", i32 2}
!6064 = !{i32 8, !"cf-protection-branch", i32 1}
!6065 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6066 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6067 = !{i32 1, !"Code Model", i32 2}
!6068 = !{i32 1, !"override-stack-alignment", i32 8}
!6069 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6070 = distinct !DISubprogram(name: "__x64_sys_name_to_handle_at", scope: !15, file: !15, line: 98, type: !6071, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6075)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!543, !6073}
!6073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6074, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3980)
!6075 = !{!6076}
!6076 = !DILocalVariable(name: "regs", arg: 1, scope: !6070, file: !15, line: 98, type: !6073)
!6077 = !DILocation(line: 98, column: 1, scope: !6070)
!6078 = distinct !DISubprogram(name: "__se_sys_name_to_handle_at", scope: !15, file: !15, line: 98, type: !6079, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6081)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!543, !543, !543, !543, !543, !543}
!6081 = !{!6082, !6083, !6084, !6085, !6086, !6087}
!6082 = !DILocalVariable(name: "dfd", arg: 1, scope: !6078, file: !15, line: 98, type: !543)
!6083 = !DILocalVariable(name: "name", arg: 2, scope: !6078, file: !15, line: 98, type: !543)
!6084 = !DILocalVariable(name: "handle", arg: 3, scope: !6078, file: !15, line: 98, type: !543)
!6085 = !DILocalVariable(name: "mnt_id", arg: 4, scope: !6078, file: !15, line: 98, type: !543)
!6086 = !DILocalVariable(name: "flag", arg: 5, scope: !6078, file: !15, line: 98, type: !543)
!6087 = !DILocalVariable(name: "ret", scope: !6078, file: !15, line: 98, type: !543)
!6088 = !DILocation(line: 98, column: 1, scope: !6078)
!6089 = !DILocation(line: 98, column: 1, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6078, file: !15, line: 98, column: 1)
!6091 = distinct !DISubprogram(name: "__ia32_sys_name_to_handle_at", scope: !15, file: !15, line: 98, type: !6071, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6092)
!6092 = !{!6093}
!6093 = !DILocalVariable(name: "regs", arg: 1, scope: !6091, file: !15, line: 98, type: !6073)
!6094 = !DILocation(line: 98, column: 1, scope: !6091)
!6095 = distinct !DISubprogram(name: "__x64_sys_open_by_handle_at", scope: !15, file: !15, line: 262, type: !6071, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6096)
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "regs", arg: 1, scope: !6095, file: !15, line: 262, type: !6073)
!6098 = !DILocation(line: 262, column: 1, scope: !6095)
!6099 = distinct !DISubprogram(name: "__se_sys_open_by_handle_at", scope: !15, file: !15, line: 262, type: !6100, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6102)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!543, !543, !543, !543}
!6102 = !{!6103, !6104, !6105, !6106}
!6103 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6099, file: !15, line: 262, type: !543)
!6104 = !DILocalVariable(name: "handle", arg: 2, scope: !6099, file: !15, line: 262, type: !543)
!6105 = !DILocalVariable(name: "flags", arg: 3, scope: !6099, file: !15, line: 262, type: !543)
!6106 = !DILocalVariable(name: "ret", scope: !6099, file: !15, line: 262, type: !543)
!6107 = !DILocation(line: 262, column: 1, scope: !6099)
!6108 = !DILocation(line: 262, column: 1, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6099, file: !15, line: 262, column: 1)
!6110 = distinct !DISubprogram(name: "__ia32_sys_open_by_handle_at", scope: !15, file: !15, line: 262, type: !6071, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6111)
!6111 = !{!6112}
!6112 = !DILocalVariable(name: "regs", arg: 1, scope: !6110, file: !15, line: 262, type: !6073)
!6113 = !DILocation(line: 262, column: 1, scope: !6110)
!6114 = distinct !DISubprogram(name: "__ia32_compat_sys_open_by_handle_at", scope: !15, file: !15, line: 280, type: !6071, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6115)
!6115 = !{!6116}
!6116 = !DILocalVariable(name: "regs", arg: 1, scope: !6114, file: !15, line: 280, type: !6073)
!6117 = !DILocation(line: 280, column: 1, scope: !6114)
!6118 = distinct !DISubprogram(name: "__se_compat_sys_open_by_handle_at", scope: !15, file: !15, line: 280, type: !6100, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6119)
!6119 = !{!6120, !6121, !6122}
!6120 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6118, file: !15, line: 280, type: !543)
!6121 = !DILocalVariable(name: "handle", arg: 2, scope: !6118, file: !15, line: 280, type: !543)
!6122 = !DILocalVariable(name: "flags", arg: 3, scope: !6118, file: !15, line: 280, type: !543)
!6123 = !DILocation(line: 280, column: 1, scope: !6118)
!6124 = distinct !DISubprogram(name: "__do_sys_name_to_handle_at", scope: !15, file: !15, line: 98, type: !6125, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6127)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!543, !37, !32, !310, !320, !37}
!6127 = !{!6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136}
!6128 = !DILocalVariable(name: "dfd", arg: 1, scope: !6124, file: !15, line: 98, type: !37)
!6129 = !DILocalVariable(name: "name", arg: 2, scope: !6124, file: !15, line: 98, type: !32)
!6130 = !DILocalVariable(name: "handle", arg: 3, scope: !6124, file: !15, line: 98, type: !310)
!6131 = !DILocalVariable(name: "mnt_id", arg: 4, scope: !6124, file: !15, line: 98, type: !320)
!6132 = !DILocalVariable(name: "flag", arg: 5, scope: !6124, file: !15, line: 98, type: !37)
!6133 = !DILocalVariable(name: "path", scope: !6124, file: !15, line: 102, type: !1633)
!6134 = !DILocalVariable(name: "lookup_flags", scope: !6124, file: !15, line: 103, type: !37)
!6135 = !DILocalVariable(name: "fh_flags", scope: !6124, file: !15, line: 104, type: !37)
!6136 = !DILocalVariable(name: "err", scope: !6124, file: !15, line: 105, type: !37)
!6137 = !DILocation(line: 98, column: 1, scope: !6124)
!6138 = !DILocation(line: 102, column: 2, scope: !6124)
!6139 = !DILocation(line: 102, column: 14, scope: !6124)
!6140 = !DILocation(line: 103, column: 2, scope: !6124)
!6141 = !DILocation(line: 103, column: 6, scope: !6124)
!6142 = !DILocation(line: 104, column: 2, scope: !6124)
!6143 = !DILocation(line: 104, column: 6, scope: !6124)
!6144 = !DILocation(line: 105, column: 2, scope: !6124)
!6145 = !DILocation(line: 105, column: 6, scope: !6124)
!6146 = !DILocation(line: 107, column: 6, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6124, file: !15, line: 107, column: 6)
!6148 = !DILocation(line: 107, column: 11, scope: !6147)
!6149 = !DILocation(line: 107, column: 6, scope: !6124)
!6150 = !DILocation(line: 108, column: 3, scope: !6147)
!6151 = !DILocation(line: 110, column: 18, scope: !6124)
!6152 = !DILocation(line: 110, column: 23, scope: !6124)
!6153 = !DILocation(line: 110, column: 17, scope: !6124)
!6154 = !DILocation(line: 110, column: 15, scope: !6124)
!6155 = !DILocation(line: 111, column: 14, scope: !6124)
!6156 = !DILocation(line: 111, column: 19, scope: !6124)
!6157 = !DILocation(line: 111, column: 13, scope: !6124)
!6158 = !DILocation(line: 111, column: 11, scope: !6124)
!6159 = !DILocation(line: 112, column: 6, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6124, file: !15, line: 112, column: 6)
!6161 = !DILocation(line: 112, column: 11, scope: !6160)
!6162 = !DILocation(line: 112, column: 6, scope: !6124)
!6163 = !DILocation(line: 113, column: 16, scope: !6160)
!6164 = !DILocation(line: 113, column: 3, scope: !6160)
!6165 = !DILocation(line: 114, column: 21, scope: !6124)
!6166 = !DILocation(line: 114, column: 26, scope: !6124)
!6167 = !DILocation(line: 114, column: 32, scope: !6124)
!6168 = !DILocation(line: 114, column: 8, scope: !6124)
!6169 = !DILocation(line: 114, column: 6, scope: !6124)
!6170 = !DILocation(line: 115, column: 7, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6124, file: !15, line: 115, column: 6)
!6172 = !DILocation(line: 115, column: 6, scope: !6124)
!6173 = !DILocation(line: 116, column: 38, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6171, file: !15, line: 115, column: 12)
!6175 = !DILocation(line: 116, column: 46, scope: !6174)
!6176 = !DILocation(line: 116, column: 54, scope: !6174)
!6177 = !DILocation(line: 116, column: 9, scope: !6174)
!6178 = !DILocation(line: 116, column: 7, scope: !6174)
!6179 = !DILocation(line: 117, column: 3, scope: !6174)
!6180 = !DILocation(line: 118, column: 2, scope: !6174)
!6181 = !DILocation(line: 119, column: 9, scope: !6124)
!6182 = !DILocation(line: 119, column: 2, scope: !6124)
!6183 = !DILocation(line: 120, column: 1, scope: !6124)
!6184 = distinct !DISubprogram(name: "user_path_at", scope: !6185, file: !6185, line: 54, type: !6186, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6188)
!6185 = !DIFile(filename: "./include/linux/namei.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "661c5a60bb5f888b1125c4324650f35a")
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!37, !37, !32, !23, !4826}
!6188 = !{!6189, !6190, !6191, !6192}
!6189 = !DILocalVariable(name: "dfd", arg: 1, scope: !6184, file: !6185, line: 54, type: !37)
!6190 = !DILocalVariable(name: "name", arg: 2, scope: !6184, file: !6185, line: 54, type: !32)
!6191 = !DILocalVariable(name: "flags", arg: 3, scope: !6184, file: !6185, line: 54, type: !23)
!6192 = !DILocalVariable(name: "path", arg: 4, scope: !6184, file: !6185, line: 55, type: !4826)
!6193 = !DILocation(line: 54, column: 36, scope: !6184)
!6194 = !DILocation(line: 54, column: 60, scope: !6184)
!6195 = !DILocation(line: 54, column: 75, scope: !6184)
!6196 = !DILocation(line: 55, column: 17, scope: !6184)
!6197 = !DILocation(line: 57, column: 28, scope: !6184)
!6198 = !DILocation(line: 57, column: 33, scope: !6184)
!6199 = !DILocation(line: 57, column: 39, scope: !6184)
!6200 = !DILocation(line: 57, column: 46, scope: !6184)
!6201 = !DILocation(line: 57, column: 9, scope: !6184)
!6202 = !DILocation(line: 57, column: 2, scope: !6184)
!6203 = distinct !DISubprogram(name: "do_sys_name_to_handle", scope: !15, file: !15, line: 17, type: !6204, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6206)
!6204 = !DISubroutineType(types: !6205)
!6205 = !{!543, !4526, !310, !320, !37}
!6206 = !{!6207, !6208, !6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6220, !6221, !6222, !6223}
!6207 = !DILocalVariable(name: "path", arg: 1, scope: !6203, file: !15, line: 17, type: !4526)
!6208 = !DILocalVariable(name: "ufh", arg: 2, scope: !6203, file: !15, line: 18, type: !310)
!6209 = !DILocalVariable(name: "mnt_id", arg: 3, scope: !6203, file: !15, line: 19, type: !320)
!6210 = !DILocalVariable(name: "fh_flags", arg: 4, scope: !6203, file: !15, line: 19, type: !37)
!6211 = !DILocalVariable(name: "retval", scope: !6203, file: !15, line: 21, type: !543)
!6212 = !DILocalVariable(name: "f_handle", scope: !6203, file: !15, line: 22, type: !311)
!6213 = !DILocalVariable(name: "handle_dwords", scope: !6203, file: !15, line: 23, type: !37)
!6214 = !DILocalVariable(name: "handle_bytes", scope: !6203, file: !15, line: 23, type: !37)
!6215 = !DILocalVariable(name: "handle", scope: !6203, file: !15, line: 24, type: !310)
!6216 = !DILocalVariable(name: "__ret_pu", scope: !6217, file: !15, line: 76, type: !37)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !15, line: 76, column: 6)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !15, line: 76, column: 6)
!6219 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 76, column: 6)
!6220 = !DILocalVariable(name: "__ptr_pu", scope: !6217, file: !15, line: 76, type: !35)
!6221 = !DILocalVariable(name: "__val_pu", scope: !6217, file: !15, line: 76, type: !37)
!6222 = !DILocalVariable(name: "__x", scope: !6217, file: !15, line: 76, type: !37)
!6223 = !DILocalVariable(name: "__ptr", scope: !6217, file: !15, line: 76, type: !320)
!6224 = !DILocation(line: 17, column: 54, scope: !6203)
!6225 = !DILocation(line: 18, column: 34, scope: !6203)
!6226 = !DILocation(line: 19, column: 19, scope: !6203)
!6227 = !DILocation(line: 19, column: 31, scope: !6203)
!6228 = !DILocation(line: 21, column: 2, scope: !6203)
!6229 = !DILocation(line: 21, column: 7, scope: !6203)
!6230 = !DILocation(line: 22, column: 2, scope: !6203)
!6231 = !DILocation(line: 22, column: 21, scope: !6203)
!6232 = !DILocation(line: 23, column: 2, scope: !6203)
!6233 = !DILocation(line: 23, column: 6, scope: !6203)
!6234 = !DILocation(line: 23, column: 21, scope: !6203)
!6235 = !DILocation(line: 24, column: 2, scope: !6203)
!6236 = !DILocation(line: 24, column: 22, scope: !6203)
!6237 = !DILocation(line: 32, column: 7, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 32, column: 6)
!6239 = !DILocation(line: 32, column: 13, scope: !6238)
!6240 = !DILocation(line: 32, column: 21, scope: !6238)
!6241 = !DILocation(line: 32, column: 27, scope: !6238)
!6242 = !DILocation(line: 32, column: 39, scope: !6238)
!6243 = !DILocation(line: 33, column: 9, scope: !6238)
!6244 = !DILocation(line: 33, column: 18, scope: !6238)
!6245 = !DILocation(line: 33, column: 35, scope: !6238)
!6246 = !DILocation(line: 34, column: 8, scope: !6238)
!6247 = !DILocation(line: 34, column: 14, scope: !6238)
!6248 = !DILocation(line: 34, column: 22, scope: !6238)
!6249 = !DILocation(line: 34, column: 28, scope: !6238)
!6250 = !DILocation(line: 34, column: 41, scope: !6238)
!6251 = !DILocation(line: 32, column: 6, scope: !6203)
!6252 = !DILocation(line: 35, column: 3, scope: !6238)
!6253 = !DILocation(line: 37, column: 32, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 37, column: 6)
!6255 = !DILocation(line: 37, column: 6, scope: !6254)
!6256 = !DILocation(line: 37, column: 6, scope: !6203)
!6257 = !DILocation(line: 38, column: 3, scope: !6254)
!6258 = !DILocation(line: 40, column: 15, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 40, column: 6)
!6260 = !DILocation(line: 40, column: 28, scope: !6259)
!6261 = !DILocation(line: 40, column: 6, scope: !6203)
!6262 = !DILocation(line: 41, column: 3, scope: !6259)
!6263 = !DILocation(line: 43, column: 19, scope: !6203)
!6264 = !DILocation(line: 43, column: 11, scope: !6203)
!6265 = !DILocation(line: 43, column: 9, scope: !6203)
!6266 = !DILocation(line: 45, column: 7, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 45, column: 6)
!6268 = !DILocation(line: 45, column: 6, scope: !6203)
!6269 = !DILocation(line: 46, column: 3, scope: !6267)
!6270 = !DILocation(line: 49, column: 27, scope: !6203)
!6271 = !DILocation(line: 49, column: 40, scope: !6203)
!6272 = !DILocation(line: 49, column: 16, scope: !6203)
!6273 = !DILocation(line: 52, column: 30, scope: !6203)
!6274 = !DILocation(line: 52, column: 36, scope: !6203)
!6275 = !DILocation(line: 53, column: 23, scope: !6203)
!6276 = !DILocation(line: 53, column: 31, scope: !6203)
!6277 = !DILocation(line: 54, column: 25, scope: !6203)
!6278 = !DILocation(line: 52, column: 11, scope: !6203)
!6279 = !DILocation(line: 52, column: 9, scope: !6203)
!6280 = !DILocation(line: 55, column: 24, scope: !6203)
!6281 = !DILocation(line: 55, column: 2, scope: !6203)
!6282 = !DILocation(line: 55, column: 10, scope: !6203)
!6283 = !DILocation(line: 55, column: 22, scope: !6203)
!6284 = !DILocation(line: 57, column: 17, scope: !6203)
!6285 = !DILocation(line: 57, column: 31, scope: !6203)
!6286 = !DILocation(line: 57, column: 15, scope: !6203)
!6287 = !DILocation(line: 58, column: 25, scope: !6203)
!6288 = !DILocation(line: 58, column: 2, scope: !6203)
!6289 = !DILocation(line: 58, column: 10, scope: !6203)
!6290 = !DILocation(line: 58, column: 23, scope: !6203)
!6291 = !DILocation(line: 59, column: 7, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6203, file: !15, line: 59, column: 6)
!6293 = !DILocation(line: 59, column: 15, scope: !6292)
!6294 = !DILocation(line: 59, column: 39, scope: !6292)
!6295 = !DILocation(line: 59, column: 28, scope: !6292)
!6296 = !DILocation(line: 59, column: 53, scope: !6292)
!6297 = !DILocation(line: 60, column: 7, scope: !6292)
!6298 = !DILocation(line: 60, column: 14, scope: !6292)
!6299 = !DILocation(line: 60, column: 33, scope: !6292)
!6300 = !DILocation(line: 60, column: 37, scope: !6292)
!6301 = !DILocation(line: 60, column: 44, scope: !6292)
!6302 = !DILocation(line: 59, column: 6, scope: !6203)
!6303 = !DILocation(line: 66, column: 7, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !15, line: 66, column: 7)
!6305 = distinct !DILexicalBlock(scope: !6292, file: !15, line: 60, column: 50)
!6306 = !DILocation(line: 66, column: 14, scope: !6304)
!6307 = !DILocation(line: 66, column: 32, scope: !6304)
!6308 = !DILocation(line: 66, column: 35, scope: !6304)
!6309 = !DILocation(line: 66, column: 42, scope: !6304)
!6310 = !DILocation(line: 66, column: 7, scope: !6305)
!6311 = !DILocation(line: 67, column: 11, scope: !6304)
!6312 = !DILocation(line: 67, column: 4, scope: !6304)
!6313 = !DILocation(line: 72, column: 16, scope: !6305)
!6314 = !DILocation(line: 73, column: 2, scope: !6305)
!6315 = !DILocation(line: 74, column: 10, scope: !6292)
!6316 = !DILocation(line: 76, column: 6, scope: !6218)
!6317 = !DILocation(line: 76, column: 6, scope: !6217)
!6318 = !{i64 2155822758}
!6319 = !DILocation(line: 76, column: 6, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6217, file: !15, line: 76, column: 6)
!6321 = !DILocation(line: 76, column: 6, scope: !6219)
!6322 = !DILocation(line: 76, column: 54, scope: !6219)
!6323 = !DILocation(line: 77, column: 19, scope: !6219)
!6324 = !DILocation(line: 77, column: 24, scope: !6219)
!6325 = !DILocation(line: 78, column: 5, scope: !6219)
!6326 = !DILocation(line: 77, column: 6, scope: !6219)
!6327 = !DILocation(line: 76, column: 6, scope: !6203)
!6328 = !DILocation(line: 79, column: 10, scope: !6219)
!6329 = !DILocation(line: 79, column: 3, scope: !6219)
!6330 = !DILocation(line: 80, column: 8, scope: !6203)
!6331 = !DILocation(line: 80, column: 2, scope: !6203)
!6332 = !DILocation(line: 81, column: 9, scope: !6203)
!6333 = !DILocation(line: 81, column: 2, scope: !6203)
!6334 = !DILocation(line: 82, column: 1, scope: !6203)
!6335 = !DISubprogram(name: "path_put", scope: !1634, file: !1634, line: 14, type: !6336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{null, !4526}
!6338 = !DISubprogram(name: "user_path_at_empty", scope: !6185, file: !6185, line: 52, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!37, !37, !32, !23, !4826, !320}
!6341 = distinct !DISubprogram(name: "copy_from_user", scope: !6342, file: !6342, line: 180, type: !6343, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6345)
!6342 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!54, !35, !1095, !54}
!6345 = !{!6346, !6347, !6348}
!6346 = !DILocalVariable(name: "to", arg: 1, scope: !6341, file: !6342, line: 180, type: !35)
!6347 = !DILocalVariable(name: "from", arg: 2, scope: !6341, file: !6342, line: 180, type: !1095)
!6348 = !DILocalVariable(name: "n", arg: 3, scope: !6341, file: !6342, line: 180, type: !54)
!6349 = !DILocation(line: 180, column: 22, scope: !6341)
!6350 = !DILocation(line: 180, column: 45, scope: !6341)
!6351 = !DILocation(line: 180, column: 65, scope: !6341)
!6352 = !DILocation(line: 182, column: 22, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6341, file: !6342, line: 182, column: 6)
!6354 = !DILocation(line: 182, column: 26, scope: !6353)
!6355 = !DILocation(line: 182, column: 6, scope: !6353)
!6356 = !DILocation(line: 182, column: 6, scope: !6341)
!6357 = !DILocation(line: 183, column: 23, scope: !6353)
!6358 = !DILocation(line: 183, column: 27, scope: !6353)
!6359 = !DILocation(line: 183, column: 33, scope: !6353)
!6360 = !DILocation(line: 183, column: 7, scope: !6353)
!6361 = !DILocation(line: 183, column: 5, scope: !6353)
!6362 = !DILocation(line: 183, column: 3, scope: !6353)
!6363 = !DILocation(line: 184, column: 9, scope: !6341)
!6364 = !DILocation(line: 184, column: 2, scope: !6341)
!6365 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !6366, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6368)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!35, !50, !321}
!6368 = !{!6369, !6370}
!6369 = !DILocalVariable(name: "size", arg: 1, scope: !6365, file: !9, line: 719, type: !50)
!6370 = !DILocalVariable(name: "flags", arg: 2, scope: !6365, file: !9, line: 719, type: !321)
!6371 = !DILocation(line: 719, column: 52, scope: !6365)
!6372 = !DILocation(line: 719, column: 64, scope: !6365)
!6373 = !DILocation(line: 721, column: 17, scope: !6365)
!6374 = !DILocation(line: 721, column: 23, scope: !6365)
!6375 = !DILocation(line: 721, column: 29, scope: !6365)
!6376 = !DILocation(line: 721, column: 9, scope: !6365)
!6377 = !DILocation(line: 721, column: 2, scope: !6365)
!6378 = distinct !DISubprogram(name: "size_add", scope: !6379, file: !6379, line: 208, type: !6380, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6382)
!6379 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!50, !50, !50}
!6382 = !{!6383, !6384, !6385}
!6383 = !DILocalVariable(name: "addend1", arg: 1, scope: !6378, file: !6379, line: 208, type: !50)
!6384 = !DILocalVariable(name: "addend2", arg: 2, scope: !6378, file: !6379, line: 208, type: !50)
!6385 = !DILocalVariable(name: "bytes", scope: !6378, file: !6379, line: 210, type: !50)
!6386 = !DILocation(line: 208, column: 51, scope: !6378)
!6387 = !DILocation(line: 208, column: 67, scope: !6378)
!6388 = !DILocation(line: 210, column: 2, scope: !6378)
!6389 = !DILocation(line: 210, column: 9, scope: !6378)
!6390 = !DILocation(line: 212, column: 6, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6378, file: !6379, line: 212, column: 6)
!6392 = !DILocation(line: 212, column: 6, scope: !6378)
!6393 = !DILocation(line: 213, column: 3, scope: !6391)
!6394 = !DILocation(line: 215, column: 9, scope: !6378)
!6395 = !DILocation(line: 215, column: 2, scope: !6378)
!6396 = !DILocation(line: 216, column: 1, scope: !6378)
!6397 = distinct !DISubprogram(name: "size_mul", scope: !6379, file: !6379, line: 189, type: !6380, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6398)
!6398 = !{!6399, !6400, !6401}
!6399 = !DILocalVariable(name: "factor1", arg: 1, scope: !6397, file: !6379, line: 189, type: !50)
!6400 = !DILocalVariable(name: "factor2", arg: 2, scope: !6397, file: !6379, line: 189, type: !50)
!6401 = !DILocalVariable(name: "bytes", scope: !6397, file: !6379, line: 191, type: !50)
!6402 = !DILocation(line: 189, column: 51, scope: !6397)
!6403 = !DILocation(line: 189, column: 67, scope: !6397)
!6404 = !DILocation(line: 191, column: 2, scope: !6397)
!6405 = !DILocation(line: 191, column: 9, scope: !6397)
!6406 = !DILocation(line: 193, column: 6, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6397, file: !6379, line: 193, column: 6)
!6408 = !DILocation(line: 193, column: 6, scope: !6397)
!6409 = !DILocation(line: 194, column: 3, scope: !6407)
!6410 = !DILocation(line: 196, column: 9, scope: !6397)
!6411 = !DILocation(line: 196, column: 2, scope: !6397)
!6412 = !DILocation(line: 197, column: 1, scope: !6397)
!6413 = !DISubprogram(name: "exportfs_encode_fh", scope: !278, file: !278, line: 233, type: !6414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6414 = !DISubroutineType(types: !6415)
!6415 = !{!37, !366, !322, !320, !37}
!6416 = distinct !DISubprogram(name: "might_fault", scope: !6417, file: !6417, line: 202, type: !2953, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!6417 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6418 = !DILocation(line: 202, column: 40, scope: !6416)
!6419 = distinct !DISubprogram(name: "real_mount", scope: !355, file: !355, line: 84, type: !6420, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6422)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!353, !1637}
!6422 = !{!6423, !6424}
!6423 = !DILocalVariable(name: "mnt", arg: 1, scope: !6419, file: !355, line: 84, type: !1637)
!6424 = !DILocalVariable(name: "__mptr", scope: !6425, file: !355, line: 86, type: !35)
!6425 = distinct !DILexicalBlock(scope: !6419, file: !355, line: 86, column: 9)
!6426 = !DILocation(line: 84, column: 57, scope: !6419)
!6427 = !DILocation(line: 86, column: 9, scope: !6425)
!6428 = !DILocation(line: 86, column: 9, scope: !6419)
!6429 = !DILocation(line: 86, column: 2, scope: !6419)
!6430 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6431, file: !6431, line: 76, type: !6432, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6434)
!6431 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6432 = !DISubroutineType(types: !6433)
!6433 = !{null, !35, !1095, !50, !50}
!6434 = !{!6435, !6436, !6437, !6438}
!6435 = !DILocalVariable(name: "to", arg: 1, scope: !6430, file: !6431, line: 76, type: !35)
!6436 = !DILocalVariable(name: "from", arg: 2, scope: !6430, file: !6431, line: 76, type: !1095)
!6437 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6430, file: !6431, line: 77, type: !50)
!6438 = !DILocalVariable(name: "left", arg: 4, scope: !6430, file: !6431, line: 77, type: !50)
!6439 = !DILocation(line: 76, column: 52, scope: !6430)
!6440 = !DILocation(line: 76, column: 68, scope: !6430)
!6441 = !DILocation(line: 77, column: 18, scope: !6430)
!6442 = !DILocation(line: 77, column: 34, scope: !6430)
!6443 = !DILocation(line: 79, column: 1, scope: !6430)
!6444 = distinct !DISubprogram(name: "copy_to_user", scope: !6342, file: !6342, line: 188, type: !6343, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6445)
!6445 = !{!6446, !6447, !6448}
!6446 = !DILocalVariable(name: "to", arg: 1, scope: !6444, file: !6342, line: 188, type: !35)
!6447 = !DILocalVariable(name: "from", arg: 2, scope: !6444, file: !6342, line: 188, type: !1095)
!6448 = !DILocalVariable(name: "n", arg: 3, scope: !6444, file: !6342, line: 188, type: !54)
!6449 = !DILocation(line: 188, column: 27, scope: !6444)
!6450 = !DILocation(line: 188, column: 43, scope: !6444)
!6451 = !DILocation(line: 188, column: 63, scope: !6444)
!6452 = !DILocation(line: 190, column: 22, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6444, file: !6342, line: 190, column: 6)
!6454 = !DILocation(line: 190, column: 28, scope: !6453)
!6455 = !DILocation(line: 190, column: 6, scope: !6453)
!6456 = !DILocation(line: 190, column: 6, scope: !6444)
!6457 = !DILocation(line: 191, column: 21, scope: !6453)
!6458 = !DILocation(line: 191, column: 25, scope: !6453)
!6459 = !DILocation(line: 191, column: 31, scope: !6453)
!6460 = !DILocation(line: 191, column: 7, scope: !6453)
!6461 = !DILocation(line: 191, column: 5, scope: !6453)
!6462 = !DILocation(line: 191, column: 3, scope: !6453)
!6463 = !DILocation(line: 192, column: 9, scope: !6444)
!6464 = !DILocation(line: 192, column: 2, scope: !6444)
!6465 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !6466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6466 = !DISubroutineType(types: !6467)
!6467 = !{null, !1095}
!6468 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !6469, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6471)
!6469 = !DISubroutineType(types: !6470)
!6470 = !{!468, !1095, !50, !468}
!6471 = !{!6472, !6473, !6474, !6475, !6476, !6479}
!6472 = !DILocalVariable(name: "addr", arg: 1, scope: !6468, file: !2, line: 237, type: !1095)
!6473 = !DILocalVariable(name: "bytes", arg: 2, scope: !6468, file: !2, line: 237, type: !50)
!6474 = !DILocalVariable(name: "is_source", arg: 3, scope: !6468, file: !2, line: 237, type: !468)
!6475 = !DILocalVariable(name: "sz", scope: !6468, file: !2, line: 239, type: !37)
!6476 = !DILocalVariable(name: "__ret_warn_on", scope: !6477, file: !2, line: 249, type: !37)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !2, line: 249, column: 6)
!6478 = distinct !DILexicalBlock(scope: !6468, file: !2, line: 249, column: 6)
!6479 = !DILocalVariable(name: "__flags", scope: !6480, file: !2, line: 249, type: !37)
!6480 = distinct !DILexicalBlock(scope: !6481, file: !2, line: 249, column: 6)
!6481 = distinct !DILexicalBlock(scope: !6477, file: !2, line: 249, column: 6)
!6482 = !DILocation(line: 237, column: 29, scope: !6468)
!6483 = !DILocation(line: 237, column: 42, scope: !6468)
!6484 = !DILocation(line: 237, column: 54, scope: !6468)
!6485 = !DILocation(line: 239, column: 2, scope: !6468)
!6486 = !DILocation(line: 239, column: 6, scope: !6468)
!6487 = !DILocation(line: 239, column: 33, scope: !6468)
!6488 = !DILocation(line: 239, column: 11, scope: !6468)
!6489 = !DILocation(line: 240, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6468, file: !2, line: 240, column: 6)
!6491 = !DILocation(line: 0, scope: !6490)
!6492 = !DILocation(line: 240, column: 6, scope: !6468)
!6493 = !DILocation(line: 241, column: 29, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6495, file: !2, line: 241, column: 7)
!6495 = distinct !DILexicalBlock(scope: !6490, file: !2, line: 240, column: 39)
!6496 = !DILocation(line: 241, column: 8, scope: !6494)
!6497 = !DILocation(line: 241, column: 7, scope: !6495)
!6498 = !DILocation(line: 242, column: 18, scope: !6494)
!6499 = !DILocation(line: 242, column: 22, scope: !6494)
!6500 = !DILocation(line: 242, column: 4, scope: !6494)
!6501 = !DILocation(line: 243, column: 12, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6494, file: !2, line: 243, column: 12)
!6503 = !{i8 0, i8 2}
!6504 = !DILocation(line: 243, column: 12, scope: !6494)
!6505 = !DILocation(line: 244, column: 4, scope: !6502)
!6506 = !{i32 1023644}
!6507 = !DILocation(line: 246, column: 4, scope: !6502)
!6508 = !{i32 1023673}
!6509 = !DILocation(line: 247, column: 3, scope: !6495)
!6510 = !DILocation(line: 249, column: 6, scope: !6477)
!6511 = !DILocation(line: 249, column: 6, scope: !6481)
!6512 = !DILocation(line: 249, column: 6, scope: !6480)
!6513 = !DILocation(line: 249, column: 6, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 249, column: 6)
!6515 = !DILocation(line: 249, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 249, column: 6)
!6517 = !{i64 2149675915, i64 2149675944, i64 2149675990, i64 2149676048, i64 2149676102, i64 2149676156, i64 2149676211, i64 2149676242, i64 2149676550, i64 2149676556, i64 2149676603, i64 2149676626, i64 2149676652}
!6518 = !DILocation(line: 249, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6480, file: !2, line: 249, column: 6)
!6520 = !DILocation(line: 249, column: 6, scope: !6478)
!6521 = !DILocation(line: 249, column: 6, scope: !6468)
!6522 = !DILocation(line: 250, column: 3, scope: !6478)
!6523 = !DILocation(line: 251, column: 20, scope: !6468)
!6524 = !DILocation(line: 251, column: 26, scope: !6468)
!6525 = !DILocation(line: 251, column: 33, scope: !6468)
!6526 = !DILocation(line: 251, column: 2, scope: !6468)
!6527 = !DILocation(line: 252, column: 2, scope: !6468)
!6528 = !DILocation(line: 253, column: 1, scope: !6468)
!6529 = !DISubprogram(name: "_copy_from_user", scope: !6342, file: !6342, line: 158, type: !6343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6530 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !6531, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6533)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{null, !37, !54}
!6533 = !{!6534, !6535}
!6534 = !DILocalVariable(name: "size", arg: 1, scope: !6530, file: !2, line: 230, type: !37)
!6535 = !DILocalVariable(name: "count", arg: 2, scope: !6530, file: !2, line: 230, type: !54)
!6536 = !DILocation(line: 230, column: 38, scope: !6530)
!6537 = !DILocation(line: 230, column: 58, scope: !6530)
!6538 = !DILocation(line: 233, column: 19, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6530, file: !2, line: 232, column: 6)
!6540 = !DILocation(line: 233, column: 25, scope: !6539)
!6541 = !DILocation(line: 233, column: 3, scope: !6539)
!6542 = !DILocation(line: 234, column: 1, scope: !6530)
!6543 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !2953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6544 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !2953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6545 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !6546, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6548)
!6546 = !DISubroutineType(types: !6547)
!6547 = !{null, !1095, !54, !468}
!6548 = !{!6549, !6550, !6551}
!6549 = !DILocalVariable(name: "ptr", arg: 1, scope: !6545, file: !2, line: 218, type: !1095)
!6550 = !DILocalVariable(name: "n", arg: 2, scope: !6545, file: !2, line: 218, type: !54)
!6551 = !DILocalVariable(name: "to_user", arg: 3, scope: !6545, file: !2, line: 219, type: !468)
!6552 = !DILocation(line: 218, column: 50, scope: !6545)
!6553 = !DILocation(line: 218, column: 69, scope: !6545)
!6554 = !DILocation(line: 219, column: 15, scope: !6545)
!6555 = !DILocation(line: 220, column: 3, scope: !6545)
!6556 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !6531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6557 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !6366, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6558)
!6558 = !{!6559, !6560, !6561}
!6559 = !DILocalVariable(name: "size", arg: 1, scope: !6557, file: !9, line: 591, type: !50)
!6560 = !DILocalVariable(name: "flags", arg: 2, scope: !6557, file: !9, line: 591, type: !321)
!6561 = !DILocalVariable(name: "index", scope: !6562, file: !9, line: 594, type: !23)
!6562 = distinct !DILexicalBlock(scope: !6563, file: !9, line: 593, column: 42)
!6563 = distinct !DILexicalBlock(scope: !6557, file: !9, line: 593, column: 6)
!6564 = !DILocation(line: 591, column: 61, scope: !6557)
!6565 = !DILocation(line: 591, column: 73, scope: !6557)
!6566 = !DILocation(line: 593, column: 27, scope: !6563)
!6567 = !DILocation(line: 593, column: 6, scope: !6563)
!6568 = !DILocation(line: 593, column: 33, scope: !6563)
!6569 = !DILocation(line: 593, column: 36, scope: !6563)
!6570 = !DILocation(line: 593, column: 6, scope: !6557)
!6571 = !DILocation(line: 594, column: 3, scope: !6562)
!6572 = !DILocation(line: 594, column: 16, scope: !6562)
!6573 = !DILocation(line: 596, column: 7, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6562, file: !9, line: 596, column: 7)
!6575 = !DILocation(line: 596, column: 12, scope: !6574)
!6576 = !DILocation(line: 596, column: 7, scope: !6562)
!6577 = !DILocation(line: 597, column: 25, scope: !6574)
!6578 = !DILocation(line: 597, column: 31, scope: !6574)
!6579 = !DILocation(line: 597, column: 11, scope: !6574)
!6580 = !DILocation(line: 597, column: 4, scope: !6574)
!6581 = !DILocation(line: 599, column: 11, scope: !6562)
!6582 = !DILocation(line: 599, column: 9, scope: !6562)
!6583 = !DILocation(line: 601, column: 33, scope: !6562)
!6584 = !DILocation(line: 601, column: 40, scope: !6562)
!6585 = !DILocation(line: 601, column: 20, scope: !6562)
!6586 = !DILocation(line: 601, column: 5, scope: !6562)
!6587 = !DILocation(line: 601, column: 51, scope: !6562)
!6588 = !DILocation(line: 602, column: 5, scope: !6562)
!6589 = !DILocation(line: 602, column: 12, scope: !6562)
!6590 = !DILocation(line: 600, column: 10, scope: !6562)
!6591 = !DILocation(line: 600, column: 3, scope: !6562)
!6592 = !DILocation(line: 603, column: 2, scope: !6563)
!6593 = !DILocation(line: 604, column: 19, scope: !6557)
!6594 = !DILocation(line: 604, column: 25, scope: !6557)
!6595 = !DILocation(line: 604, column: 9, scope: !6557)
!6596 = !DILocation(line: 604, column: 2, scope: !6557)
!6597 = !DILocation(line: 605, column: 1, scope: !6557)
!6598 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !6366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6599 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !6600, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6602)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!23, !50, !468}
!6602 = !{!6603, !6604}
!6603 = !DILocalVariable(name: "size", arg: 1, scope: !6599, file: !9, line: 444, type: !50)
!6604 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6599, file: !9, line: 445, type: !468)
!6605 = !DILocation(line: 444, column: 60, scope: !6599)
!6606 = !DILocation(line: 445, column: 16, scope: !6599)
!6607 = !DILocation(line: 447, column: 7, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 447, column: 6)
!6609 = !DILocation(line: 447, column: 6, scope: !6599)
!6610 = !DILocation(line: 448, column: 3, scope: !6608)
!6611 = !DILocation(line: 450, column: 6, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 450, column: 6)
!6613 = !DILocation(line: 450, column: 11, scope: !6612)
!6614 = !DILocation(line: 450, column: 6, scope: !6599)
!6615 = !DILocation(line: 451, column: 3, scope: !6612)
!6616 = !DILocation(line: 453, column: 32, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 453, column: 6)
!6618 = !DILocation(line: 453, column: 37, scope: !6617)
!6619 = !DILocation(line: 453, column: 42, scope: !6617)
!6620 = !DILocation(line: 453, column: 45, scope: !6617)
!6621 = !DILocation(line: 453, column: 50, scope: !6617)
!6622 = !DILocation(line: 453, column: 6, scope: !6599)
!6623 = !DILocation(line: 454, column: 3, scope: !6617)
!6624 = !DILocation(line: 455, column: 32, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 455, column: 6)
!6626 = !DILocation(line: 455, column: 37, scope: !6625)
!6627 = !DILocation(line: 455, column: 43, scope: !6625)
!6628 = !DILocation(line: 455, column: 46, scope: !6625)
!6629 = !DILocation(line: 455, column: 51, scope: !6625)
!6630 = !DILocation(line: 455, column: 6, scope: !6599)
!6631 = !DILocation(line: 456, column: 3, scope: !6625)
!6632 = !DILocation(line: 457, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 457, column: 6)
!6634 = !DILocation(line: 457, column: 11, scope: !6633)
!6635 = !DILocation(line: 457, column: 6, scope: !6599)
!6636 = !DILocation(line: 457, column: 26, scope: !6633)
!6637 = !DILocation(line: 458, column: 6, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 458, column: 6)
!6639 = !DILocation(line: 458, column: 11, scope: !6638)
!6640 = !DILocation(line: 458, column: 6, scope: !6599)
!6641 = !DILocation(line: 458, column: 26, scope: !6638)
!6642 = !DILocation(line: 459, column: 6, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 459, column: 6)
!6644 = !DILocation(line: 459, column: 11, scope: !6643)
!6645 = !DILocation(line: 459, column: 6, scope: !6599)
!6646 = !DILocation(line: 459, column: 26, scope: !6643)
!6647 = !DILocation(line: 460, column: 6, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 460, column: 6)
!6649 = !DILocation(line: 460, column: 11, scope: !6648)
!6650 = !DILocation(line: 460, column: 6, scope: !6599)
!6651 = !DILocation(line: 460, column: 26, scope: !6648)
!6652 = !DILocation(line: 461, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 461, column: 6)
!6654 = !DILocation(line: 461, column: 11, scope: !6653)
!6655 = !DILocation(line: 461, column: 6, scope: !6599)
!6656 = !DILocation(line: 461, column: 26, scope: !6653)
!6657 = !DILocation(line: 462, column: 6, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 462, column: 6)
!6659 = !DILocation(line: 462, column: 11, scope: !6658)
!6660 = !DILocation(line: 462, column: 6, scope: !6599)
!6661 = !DILocation(line: 462, column: 26, scope: !6658)
!6662 = !DILocation(line: 463, column: 6, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 463, column: 6)
!6664 = !DILocation(line: 463, column: 11, scope: !6663)
!6665 = !DILocation(line: 463, column: 6, scope: !6599)
!6666 = !DILocation(line: 463, column: 26, scope: !6663)
!6667 = !DILocation(line: 464, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 464, column: 6)
!6669 = !DILocation(line: 464, column: 11, scope: !6668)
!6670 = !DILocation(line: 464, column: 6, scope: !6599)
!6671 = !DILocation(line: 464, column: 26, scope: !6668)
!6672 = !DILocation(line: 465, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 465, column: 6)
!6674 = !DILocation(line: 465, column: 11, scope: !6673)
!6675 = !DILocation(line: 465, column: 6, scope: !6599)
!6676 = !DILocation(line: 465, column: 26, scope: !6673)
!6677 = !DILocation(line: 466, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 466, column: 6)
!6679 = !DILocation(line: 466, column: 11, scope: !6678)
!6680 = !DILocation(line: 466, column: 6, scope: !6599)
!6681 = !DILocation(line: 466, column: 26, scope: !6678)
!6682 = !DILocation(line: 467, column: 6, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 467, column: 6)
!6684 = !DILocation(line: 467, column: 11, scope: !6683)
!6685 = !DILocation(line: 467, column: 6, scope: !6599)
!6686 = !DILocation(line: 467, column: 26, scope: !6683)
!6687 = !DILocation(line: 468, column: 6, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 468, column: 6)
!6689 = !DILocation(line: 468, column: 11, scope: !6688)
!6690 = !DILocation(line: 468, column: 6, scope: !6599)
!6691 = !DILocation(line: 468, column: 26, scope: !6688)
!6692 = !DILocation(line: 469, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 469, column: 6)
!6694 = !DILocation(line: 469, column: 11, scope: !6693)
!6695 = !DILocation(line: 469, column: 6, scope: !6599)
!6696 = !DILocation(line: 469, column: 26, scope: !6693)
!6697 = !DILocation(line: 470, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 470, column: 6)
!6699 = !DILocation(line: 470, column: 11, scope: !6698)
!6700 = !DILocation(line: 470, column: 6, scope: !6599)
!6701 = !DILocation(line: 470, column: 26, scope: !6698)
!6702 = !DILocation(line: 471, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 471, column: 6)
!6704 = !DILocation(line: 471, column: 11, scope: !6703)
!6705 = !DILocation(line: 471, column: 6, scope: !6599)
!6706 = !DILocation(line: 471, column: 26, scope: !6703)
!6707 = !DILocation(line: 472, column: 6, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 472, column: 6)
!6709 = !DILocation(line: 472, column: 11, scope: !6708)
!6710 = !DILocation(line: 472, column: 6, scope: !6599)
!6711 = !DILocation(line: 472, column: 26, scope: !6708)
!6712 = !DILocation(line: 473, column: 6, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 473, column: 6)
!6714 = !DILocation(line: 473, column: 11, scope: !6713)
!6715 = !DILocation(line: 473, column: 6, scope: !6599)
!6716 = !DILocation(line: 473, column: 26, scope: !6713)
!6717 = !DILocation(line: 474, column: 6, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 474, column: 6)
!6719 = !DILocation(line: 474, column: 11, scope: !6718)
!6720 = !DILocation(line: 474, column: 6, scope: !6599)
!6721 = !DILocation(line: 474, column: 27, scope: !6718)
!6722 = !DILocation(line: 475, column: 6, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 475, column: 6)
!6724 = !DILocation(line: 475, column: 11, scope: !6723)
!6725 = !DILocation(line: 475, column: 6, scope: !6599)
!6726 = !DILocation(line: 475, column: 32, scope: !6723)
!6727 = !DILocation(line: 477, column: 50, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6599, file: !9, line: 477, column: 6)
!6729 = !DILocation(line: 477, column: 6, scope: !6599)
!6730 = !DILocation(line: 478, column: 3, scope: !6728)
!6731 = !DILocation(line: 478, column: 3, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6733, file: !9, line: 478, column: 3)
!6733 = distinct !DILexicalBlock(scope: !6728, file: !9, line: 478, column: 3)
!6734 = !{i32 -2141658477}
!6735 = !DILocation(line: 478, column: 3, scope: !6733)
!6736 = !DILocation(line: 480, column: 3, scope: !6728)
!6737 = !DILocation(line: 480, column: 3, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6728, file: !9, line: 480, column: 3)
!6739 = !DILocation(line: 480, column: 3, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6738, file: !9, line: 480, column: 3)
!6741 = !DILocation(line: 480, column: 3, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6738, file: !9, line: 480, column: 3)
!6743 = !{i64 2153309022, i64 2153309051, i64 2153309097, i64 2153309155, i64 2153309209, i64 2153309263, i64 2153309318, i64 2153309349}
!6744 = !DILocation(line: 483, column: 2, scope: !6599)
!6745 = !DILocation(line: 484, column: 1, scope: !6599)
!6746 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !6747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{!35, !3556, !321, !50}
!6749 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !6750, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6752)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!300, !321, !54}
!6752 = !{!6753, !6754}
!6753 = !DILocalVariable(name: "flags", arg: 1, scope: !6749, file: !9, line: 401, type: !321)
!6754 = !DILocalVariable(name: "caller", arg: 2, scope: !6749, file: !9, line: 401, type: !54)
!6755 = !DILocation(line: 401, column: 67, scope: !6749)
!6756 = !DILocation(line: 401, column: 88, scope: !6749)
!6757 = !DILocation(line: 407, column: 6, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6749, file: !9, line: 407, column: 6)
!6759 = !DILocation(line: 407, column: 6, scope: !6749)
!6760 = !DILocation(line: 413, column: 3, scope: !6758)
!6761 = !DILocation(line: 423, column: 38, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6749, file: !9, line: 423, column: 6)
!6763 = !DILocation(line: 423, column: 44, scope: !6762)
!6764 = !DILocation(line: 423, column: 6, scope: !6749)
!6765 = !DILocation(line: 424, column: 3, scope: !6762)
!6766 = !DILocation(line: 426, column: 3, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6749, file: !9, line: 425, column: 6)
!6768 = !DILocation(line: 429, column: 1, scope: !6749)
!6769 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !6366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6770 = !DISubprogram(name: "__compiletime_assert_245", scope: !9, file: !9, line: 478, type: !2953, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6771 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6379, file: !6379, line: 51, type: !6772, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6774)
!6772 = !DISubroutineType(types: !6773)
!6773 = !{!468, !468}
!6774 = !{!6775}
!6775 = !DILocalVariable(name: "overflow", arg: 1, scope: !6771, file: !6379, line: 51, type: !468)
!6776 = !DILocation(line: 51, column: 60, scope: !6771)
!6777 = !DILocation(line: 53, column: 9, scope: !6771)
!6778 = !DILocation(line: 53, column: 2, scope: !6771)
!6779 = !DISubprogram(name: "_copy_to_user", scope: !6342, file: !6342, line: 176, type: !6343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6780 = distinct !DISubprogram(name: "__do_sys_open_by_handle_at", scope: !15, file: !15, line: 262, type: !6781, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6783)
!6781 = !DISubroutineType(types: !6782)
!6782 = !{!543, !37, !310, !37}
!6783 = !{!6784, !6785, !6786, !6787}
!6784 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6780, file: !15, line: 262, type: !37)
!6785 = !DILocalVariable(name: "handle", arg: 2, scope: !6780, file: !15, line: 262, type: !310)
!6786 = !DILocalVariable(name: "flags", arg: 3, scope: !6780, file: !15, line: 262, type: !37)
!6787 = !DILocalVariable(name: "ret", scope: !6780, file: !15, line: 266, type: !543)
!6788 = !DILocation(line: 262, column: 1, scope: !6780)
!6789 = !DILocation(line: 266, column: 2, scope: !6780)
!6790 = !DILocation(line: 266, column: 7, scope: !6780)
!6791 = !DILocation(line: 269, column: 9, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6780, file: !15, line: 268, column: 6)
!6793 = !DILocation(line: 271, column: 23, scope: !6780)
!6794 = !DILocation(line: 271, column: 35, scope: !6780)
!6795 = !DILocation(line: 271, column: 43, scope: !6780)
!6796 = !DILocation(line: 271, column: 8, scope: !6780)
!6797 = !DILocation(line: 271, column: 6, scope: !6780)
!6798 = !DILocation(line: 272, column: 9, scope: !6780)
!6799 = !DILocation(line: 273, column: 1, scope: !6780)
!6800 = !DILocation(line: 272, column: 2, scope: !6780)
!6801 = distinct !DISubprogram(name: "do_handle_open", scope: !15, file: !15, line: 222, type: !6781, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6802)
!6802 = !{!6803, !6804, !6805, !6806, !6807, !6808, !6809}
!6803 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6801, file: !15, line: 222, type: !37)
!6804 = !DILocalVariable(name: "ufh", arg: 2, scope: !6801, file: !15, line: 222, type: !310)
!6805 = !DILocalVariable(name: "open_flag", arg: 3, scope: !6801, file: !15, line: 223, type: !37)
!6806 = !DILocalVariable(name: "retval", scope: !6801, file: !15, line: 225, type: !543)
!6807 = !DILocalVariable(name: "path", scope: !6801, file: !15, line: 226, type: !1633)
!6808 = !DILocalVariable(name: "file", scope: !6801, file: !15, line: 227, type: !547)
!6809 = !DILocalVariable(name: "fd", scope: !6801, file: !15, line: 228, type: !37)
!6810 = !DILocation(line: 222, column: 32, scope: !6801)
!6811 = !DILocation(line: 222, column: 71, scope: !6801)
!6812 = !DILocation(line: 223, column: 11, scope: !6801)
!6813 = !DILocation(line: 225, column: 2, scope: !6801)
!6814 = !DILocation(line: 225, column: 7, scope: !6801)
!6815 = !DILocation(line: 226, column: 2, scope: !6801)
!6816 = !DILocation(line: 226, column: 14, scope: !6801)
!6817 = !DILocation(line: 227, column: 2, scope: !6801)
!6818 = !DILocation(line: 227, column: 15, scope: !6801)
!6819 = !DILocation(line: 228, column: 2, scope: !6801)
!6820 = !DILocation(line: 228, column: 6, scope: !6801)
!6821 = !DILocation(line: 230, column: 26, scope: !6801)
!6822 = !DILocation(line: 230, column: 38, scope: !6801)
!6823 = !DILocation(line: 230, column: 11, scope: !6801)
!6824 = !DILocation(line: 230, column: 9, scope: !6801)
!6825 = !DILocation(line: 231, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6801, file: !15, line: 231, column: 6)
!6827 = !DILocation(line: 231, column: 6, scope: !6801)
!6828 = !DILocation(line: 232, column: 10, scope: !6826)
!6829 = !DILocation(line: 232, column: 3, scope: !6826)
!6830 = !DILocation(line: 234, column: 27, scope: !6801)
!6831 = !DILocation(line: 234, column: 7, scope: !6801)
!6832 = !DILocation(line: 234, column: 5, scope: !6801)
!6833 = !DILocation(line: 235, column: 6, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6801, file: !15, line: 235, column: 6)
!6835 = !DILocation(line: 235, column: 9, scope: !6834)
!6836 = !DILocation(line: 235, column: 6, scope: !6801)
!6837 = !DILocation(line: 236, column: 3, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6834, file: !15, line: 235, column: 14)
!6839 = !DILocation(line: 237, column: 10, scope: !6838)
!6840 = !DILocation(line: 237, column: 3, scope: !6838)
!6841 = !DILocation(line: 239, column: 35, scope: !6801)
!6842 = !DILocation(line: 239, column: 9, scope: !6801)
!6843 = !DILocation(line: 239, column: 7, scope: !6801)
!6844 = !DILocation(line: 240, column: 13, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6801, file: !15, line: 240, column: 6)
!6846 = !DILocation(line: 240, column: 6, scope: !6845)
!6847 = !DILocation(line: 240, column: 6, scope: !6801)
!6848 = !DILocation(line: 241, column: 17, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6845, file: !15, line: 240, column: 20)
!6850 = !DILocation(line: 241, column: 3, scope: !6849)
!6851 = !DILocation(line: 242, column: 21, scope: !6849)
!6852 = !DILocation(line: 242, column: 13, scope: !6849)
!6853 = !DILocation(line: 242, column: 10, scope: !6849)
!6854 = !DILocation(line: 243, column: 2, scope: !6849)
!6855 = !DILocation(line: 244, column: 12, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6845, file: !15, line: 243, column: 9)
!6857 = !DILocation(line: 244, column: 10, scope: !6856)
!6858 = !DILocation(line: 245, column: 14, scope: !6856)
!6859 = !DILocation(line: 245, column: 18, scope: !6856)
!6860 = !DILocation(line: 245, column: 3, scope: !6856)
!6861 = !DILocation(line: 247, column: 2, scope: !6801)
!6862 = !DILocation(line: 248, column: 9, scope: !6801)
!6863 = !DILocation(line: 248, column: 2, scope: !6801)
!6864 = !DILocation(line: 249, column: 1, scope: !6801)
!6865 = distinct !DISubprogram(name: "handle_to_path", scope: !15, file: !15, line: 174, type: !6866, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6868)
!6866 = !DISubroutineType(types: !6867)
!6867 = !{!37, !37, !310, !4826}
!6868 = !{!6869, !6870, !6871, !6872, !6873, !6874, !6875, !6876}
!6869 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6865, file: !15, line: 174, type: !37)
!6870 = !DILocalVariable(name: "ufh", arg: 2, scope: !6865, file: !15, line: 174, type: !310)
!6871 = !DILocalVariable(name: "path", arg: 3, scope: !6865, file: !15, line: 175, type: !4826)
!6872 = !DILocalVariable(name: "retval", scope: !6865, file: !15, line: 177, type: !37)
!6873 = !DILocalVariable(name: "f_handle", scope: !6865, file: !15, line: 178, type: !311)
!6874 = !DILocalVariable(name: "handle", scope: !6865, file: !15, line: 179, type: !310)
!6875 = !DILabel(scope: !6865, name: "out_handle", file: !15, line: 216)
!6876 = !DILabel(scope: !6865, name: "out_err", file: !15, line: 218)
!6877 = !DILocation(line: 174, column: 31, scope: !6865)
!6878 = !DILocation(line: 174, column: 70, scope: !6865)
!6879 = !DILocation(line: 175, column: 19, scope: !6865)
!6880 = !DILocation(line: 177, column: 2, scope: !6865)
!6881 = !DILocation(line: 177, column: 6, scope: !6865)
!6882 = !DILocation(line: 178, column: 2, scope: !6865)
!6883 = !DILocation(line: 178, column: 21, scope: !6865)
!6884 = !DILocation(line: 179, column: 2, scope: !6865)
!6885 = !DILocation(line: 179, column: 22, scope: !6865)
!6886 = !DILocation(line: 186, column: 7, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6865, file: !15, line: 186, column: 6)
!6888 = !DILocation(line: 186, column: 6, scope: !6865)
!6889 = !DILocation(line: 187, column: 10, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6887, file: !15, line: 186, column: 37)
!6891 = !DILocation(line: 188, column: 3, scope: !6890)
!6892 = !DILocation(line: 190, column: 32, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6865, file: !15, line: 190, column: 6)
!6894 = !DILocation(line: 190, column: 6, scope: !6893)
!6895 = !DILocation(line: 190, column: 6, scope: !6865)
!6896 = !DILocation(line: 191, column: 10, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6893, file: !15, line: 190, column: 66)
!6898 = !DILocation(line: 192, column: 3, scope: !6897)
!6899 = !DILocation(line: 194, column: 16, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6865, file: !15, line: 194, column: 6)
!6901 = !DILocation(line: 194, column: 29, scope: !6900)
!6902 = !DILocation(line: 194, column: 46, scope: !6900)
!6903 = !DILocation(line: 195, column: 16, scope: !6900)
!6904 = !DILocation(line: 195, column: 29, scope: !6900)
!6905 = !DILocation(line: 194, column: 6, scope: !6865)
!6906 = !DILocation(line: 196, column: 10, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6900, file: !15, line: 195, column: 36)
!6908 = !DILocation(line: 197, column: 3, scope: !6907)
!6909 = !DILocation(line: 199, column: 19, scope: !6865)
!6910 = !DILocation(line: 199, column: 11, scope: !6865)
!6911 = !DILocation(line: 199, column: 9, scope: !6865)
!6912 = !DILocation(line: 201, column: 7, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6865, file: !15, line: 201, column: 6)
!6914 = !DILocation(line: 201, column: 6, scope: !6865)
!6915 = !DILocation(line: 202, column: 10, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6913, file: !15, line: 201, column: 15)
!6917 = !DILocation(line: 203, column: 3, scope: !6916)
!6918 = !DILocation(line: 206, column: 3, scope: !6865)
!6919 = !DILocation(line: 206, column: 12, scope: !6865)
!6920 = !DILocation(line: 207, column: 22, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6865, file: !15, line: 207, column: 6)
!6922 = !DILocation(line: 207, column: 30, scope: !6921)
!6923 = !DILocation(line: 208, column: 8, scope: !6921)
!6924 = !DILocation(line: 208, column: 13, scope: !6921)
!6925 = !DILocation(line: 209, column: 16, scope: !6921)
!6926 = !DILocation(line: 209, column: 7, scope: !6921)
!6927 = !DILocation(line: 207, column: 6, scope: !6921)
!6928 = !DILocation(line: 207, column: 6, scope: !6865)
!6929 = !DILocation(line: 210, column: 10, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6921, file: !15, line: 209, column: 31)
!6931 = !DILocation(line: 211, column: 3, scope: !6930)
!6932 = !DILocation(line: 214, column: 29, scope: !6865)
!6933 = !DILocation(line: 214, column: 41, scope: !6865)
!6934 = !DILocation(line: 214, column: 49, scope: !6865)
!6935 = !DILocation(line: 214, column: 11, scope: !6865)
!6936 = !DILocation(line: 214, column: 9, scope: !6865)
!6937 = !DILocation(line: 214, column: 2, scope: !6865)
!6938 = !DILocation(line: 216, column: 1, scope: !6865)
!6939 = !DILocation(line: 217, column: 8, scope: !6865)
!6940 = !DILocation(line: 217, column: 2, scope: !6865)
!6941 = !DILocation(line: 218, column: 1, scope: !6865)
!6942 = !DILocation(line: 219, column: 9, scope: !6865)
!6943 = !DILocation(line: 220, column: 1, scope: !6865)
!6944 = !DILocation(line: 219, column: 2, scope: !6865)
!6945 = !DISubprogram(name: "get_unused_fd_flags", scope: !6946, file: !6946, line: 91, type: !6947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!37, !23}
!6949 = !DISubprogram(name: "file_open_root", scope: !267, file: !267, line: 2506, type: !6950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{!547, !4526, !32, !37, !39}
!6952 = distinct !DISubprogram(name: "IS_ERR", scope: !6953, file: !6953, line: 59, type: !6954, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6956)
!6953 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6954 = !DISubroutineType(types: !6955)
!6955 = !{!468, !1095}
!6956 = !{!6957}
!6957 = !DILocalVariable(name: "ptr", arg: 1, scope: !6952, file: !6953, line: 59, type: !1095)
!6958 = !DILocation(line: 59, column: 60, scope: !6952)
!6959 = !DILocation(line: 61, column: 9, scope: !6952)
!6960 = !DILocation(line: 61, column: 2, scope: !6952)
!6961 = !DISubprogram(name: "put_unused_fd", scope: !6946, file: !6946, line: 92, type: !6962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6962 = !DISubroutineType(types: !6963)
!6963 = !{null, !23}
!6964 = distinct !DISubprogram(name: "PTR_ERR", scope: !6953, file: !6953, line: 49, type: !6965, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6967)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{!543, !1095}
!6967 = !{!6968}
!6968 = !DILocalVariable(name: "ptr", arg: 1, scope: !6964, file: !6953, line: 49, type: !1095)
!6969 = !DILocation(line: 49, column: 61, scope: !6964)
!6970 = !DILocation(line: 51, column: 16, scope: !6964)
!6971 = !DILocation(line: 51, column: 9, scope: !6964)
!6972 = !DILocation(line: 51, column: 2, scope: !6964)
!6973 = !DISubprogram(name: "fd_install", scope: !6946, file: !6946, line: 97, type: !6974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6974 = !DISubroutineType(types: !6975)
!6975 = !{null, !23, !547}
!6976 = !DISubprogram(name: "capable", scope: !463, file: !463, line: 148, type: !6977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6977 = !DISubroutineType(types: !6978)
!6978 = !{!468, !37}
!6979 = distinct !DISubprogram(name: "do_handle_to_path", scope: !15, file: !15, line: 146, type: !6866, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6980)
!6980 = !{!6981, !6982, !6983, !6984, !6985, !6986, !6987}
!6981 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !6979, file: !15, line: 146, type: !37)
!6982 = !DILocalVariable(name: "handle", arg: 2, scope: !6979, file: !15, line: 146, type: !310)
!6983 = !DILocalVariable(name: "path", arg: 3, scope: !6979, file: !15, line: 147, type: !4826)
!6984 = !DILocalVariable(name: "retval", scope: !6979, file: !15, line: 149, type: !37)
!6985 = !DILocalVariable(name: "handle_dwords", scope: !6979, file: !15, line: 150, type: !37)
!6986 = !DILabel(scope: !6979, name: "out_mnt", file: !15, line: 168)
!6987 = !DILabel(scope: !6979, name: "out_err", file: !15, line: 170)
!6988 = !DILocation(line: 146, column: 34, scope: !6979)
!6989 = !DILocation(line: 146, column: 66, scope: !6979)
!6990 = !DILocation(line: 147, column: 22, scope: !6979)
!6991 = !DILocation(line: 149, column: 2, scope: !6979)
!6992 = !DILocation(line: 149, column: 6, scope: !6979)
!6993 = !DILocation(line: 150, column: 2, scope: !6979)
!6994 = !DILocation(line: 150, column: 6, scope: !6979)
!6995 = !DILocation(line: 152, column: 35, scope: !6979)
!6996 = !DILocation(line: 152, column: 14, scope: !6979)
!6997 = !DILocation(line: 152, column: 2, scope: !6979)
!6998 = !DILocation(line: 152, column: 8, scope: !6979)
!6999 = !DILocation(line: 152, column: 12, scope: !6979)
!7000 = !DILocation(line: 153, column: 13, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6979, file: !15, line: 153, column: 6)
!7002 = !DILocation(line: 153, column: 19, scope: !7001)
!7003 = !DILocation(line: 153, column: 6, scope: !7001)
!7004 = !DILocation(line: 153, column: 6, scope: !6979)
!7005 = !DILocation(line: 154, column: 20, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !7001, file: !15, line: 153, column: 25)
!7007 = !DILocation(line: 154, column: 26, scope: !7006)
!7008 = !DILocation(line: 154, column: 12, scope: !7006)
!7009 = !DILocation(line: 154, column: 10, scope: !7006)
!7010 = !DILocation(line: 155, column: 3, scope: !7006)
!7011 = !DILocation(line: 158, column: 18, scope: !6979)
!7012 = !DILocation(line: 158, column: 26, scope: !6979)
!7013 = !DILocation(line: 158, column: 39, scope: !6979)
!7014 = !DILocation(line: 158, column: 16, scope: !6979)
!7015 = !DILocation(line: 159, column: 36, scope: !6979)
!7016 = !DILocation(line: 159, column: 42, scope: !6979)
!7017 = !DILocation(line: 160, column: 22, scope: !6979)
!7018 = !DILocation(line: 160, column: 30, scope: !6979)
!7019 = !DILocation(line: 161, column: 8, scope: !6979)
!7020 = !DILocation(line: 161, column: 23, scope: !6979)
!7021 = !DILocation(line: 161, column: 31, scope: !6979)
!7022 = !DILocation(line: 159, column: 17, scope: !6979)
!7023 = !DILocation(line: 159, column: 2, scope: !6979)
!7024 = !DILocation(line: 159, column: 8, scope: !6979)
!7025 = !DILocation(line: 159, column: 15, scope: !6979)
!7026 = !DILocation(line: 163, column: 13, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !6979, file: !15, line: 163, column: 6)
!7028 = !DILocation(line: 163, column: 19, scope: !7027)
!7029 = !DILocation(line: 163, column: 6, scope: !7027)
!7030 = !DILocation(line: 163, column: 6, scope: !6979)
!7031 = !DILocation(line: 164, column: 20, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !7027, file: !15, line: 163, column: 28)
!7033 = !DILocation(line: 164, column: 26, scope: !7032)
!7034 = !DILocation(line: 164, column: 12, scope: !7032)
!7035 = !DILocation(line: 164, column: 10, scope: !7032)
!7036 = !DILocation(line: 165, column: 3, scope: !7032)
!7037 = !DILocation(line: 167, column: 2, scope: !6979)
!7038 = !DILocation(line: 168, column: 1, scope: !6979)
!7039 = !DILocation(line: 169, column: 9, scope: !6979)
!7040 = !DILocation(line: 169, column: 15, scope: !6979)
!7041 = !DILocation(line: 169, column: 2, scope: !6979)
!7042 = !DILocation(line: 170, column: 1, scope: !6979)
!7043 = !DILocation(line: 171, column: 9, scope: !6979)
!7044 = !DILocation(line: 171, column: 2, scope: !6979)
!7045 = !DILocation(line: 172, column: 1, scope: !6979)
!7046 = distinct !DISubprogram(name: "get_vfsmount_from_fd", scope: !15, file: !15, line: 122, type: !7047, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7049)
!7047 = !DISubroutineType(types: !7048)
!7048 = !{!1637, !37}
!7049 = !{!7050, !7051, !7052, !7055}
!7050 = !DILocalVariable(name: "fd", arg: 1, scope: !7046, file: !15, line: 122, type: !37)
!7051 = !DILocalVariable(name: "mnt", scope: !7046, file: !15, line: 124, type: !1637)
!7052 = !DILocalVariable(name: "fs", scope: !7053, file: !15, line: 127, type: !1623)
!7053 = distinct !DILexicalBlock(scope: !7054, file: !15, line: 126, column: 22)
!7054 = distinct !DILexicalBlock(scope: !7046, file: !15, line: 126, column: 6)
!7055 = !DILocalVariable(name: "f", scope: !7056, file: !15, line: 132, type: !7057)
!7056 = distinct !DILexicalBlock(scope: !7054, file: !15, line: 131, column: 9)
!7057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !6946, line: 36, size: 128, elements: !7058)
!7058 = !{!7059, !7060}
!7059 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !7057, file: !6946, line: 37, baseType: !547, size: 64)
!7060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7057, file: !6946, line: 38, baseType: !23, size: 32, offset: 64)
!7061 = !DILocation(line: 122, column: 50, scope: !7046)
!7062 = !DILocation(line: 124, column: 2, scope: !7046)
!7063 = !DILocation(line: 124, column: 19, scope: !7046)
!7064 = !DILocation(line: 126, column: 6, scope: !7054)
!7065 = !DILocation(line: 126, column: 9, scope: !7054)
!7066 = !DILocation(line: 126, column: 6, scope: !7046)
!7067 = !DILocation(line: 127, column: 3, scope: !7053)
!7068 = !DILocation(line: 127, column: 21, scope: !7053)
!7069 = !DILocation(line: 127, column: 26, scope: !7053)
!7070 = !DILocation(line: 127, column: 35, scope: !7053)
!7071 = !DILocation(line: 128, column: 14, scope: !7053)
!7072 = !DILocation(line: 128, column: 18, scope: !7053)
!7073 = !DILocation(line: 128, column: 3, scope: !7053)
!7074 = !DILocation(line: 129, column: 16, scope: !7053)
!7075 = !DILocation(line: 129, column: 20, scope: !7053)
!7076 = !DILocation(line: 129, column: 24, scope: !7053)
!7077 = !DILocation(line: 129, column: 9, scope: !7053)
!7078 = !DILocation(line: 129, column: 7, scope: !7053)
!7079 = !DILocation(line: 130, column: 16, scope: !7053)
!7080 = !DILocation(line: 130, column: 20, scope: !7053)
!7081 = !DILocation(line: 130, column: 3, scope: !7053)
!7082 = !DILocation(line: 131, column: 2, scope: !7054)
!7083 = !DILocation(line: 131, column: 2, scope: !7053)
!7084 = !DILocation(line: 132, column: 3, scope: !7056)
!7085 = !DILocation(line: 132, column: 13, scope: !7056)
!7086 = !DILocation(line: 132, column: 23, scope: !7056)
!7087 = !DILocation(line: 132, column: 17, scope: !7056)
!7088 = !DILocation(line: 133, column: 10, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7056, file: !15, line: 133, column: 7)
!7090 = !DILocation(line: 133, column: 8, scope: !7089)
!7091 = !DILocation(line: 133, column: 7, scope: !7056)
!7092 = !DILocation(line: 134, column: 11, scope: !7089)
!7093 = !DILocation(line: 134, column: 4, scope: !7089)
!7094 = !DILocation(line: 135, column: 18, scope: !7056)
!7095 = !DILocation(line: 135, column: 24, scope: !7056)
!7096 = !DILocation(line: 135, column: 31, scope: !7056)
!7097 = !DILocation(line: 135, column: 9, scope: !7056)
!7098 = !DILocation(line: 135, column: 7, scope: !7056)
!7099 = !DILocation(line: 136, column: 3, scope: !7056)
!7100 = !DILocation(line: 137, column: 2, scope: !7054)
!7101 = !DILocation(line: 138, column: 9, scope: !7046)
!7102 = !DILocation(line: 138, column: 2, scope: !7046)
!7103 = !DILocation(line: 139, column: 1, scope: !7046)
!7104 = !DISubprogram(name: "exportfs_decode_fh", scope: !278, file: !278, line: 248, type: !7105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7105 = !DISubroutineType(types: !7106)
!7106 = !{!366, !1637, !322, !37, !37, !7107, !35}
!7107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7108, size: 64)
!7108 = !DISubroutineType(types: !7109)
!7109 = !{!37, !35, !366}
!7110 = distinct !DISubprogram(name: "vfs_dentry_acceptable", scope: !15, file: !15, line: 141, type: !7108, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7111)
!7111 = !{!7112, !7113}
!7112 = !DILocalVariable(name: "context", arg: 1, scope: !7110, file: !15, line: 141, type: !35)
!7113 = !DILocalVariable(name: "dentry", arg: 2, scope: !7110, file: !15, line: 141, type: !366)
!7114 = !DILocation(line: 141, column: 40, scope: !7110)
!7115 = !DILocation(line: 141, column: 64, scope: !7110)
!7116 = !DILocation(line: 143, column: 2, scope: !7110)
!7117 = !DISubprogram(name: "mntput", scope: !1639, file: !1639, line: 87, type: !7118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{null, !1637}
!7120 = distinct !DISubprogram(name: "get_current", scope: !7121, file: !7121, line: 39, type: !7122, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7124)
!7121 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7122 = !DISubroutineType(types: !7123)
!7123 = !{!669}
!7124 = !{!7125, !7127, !7129}
!7125 = !DILocalVariable(name: "pscr_ret__", scope: !7126, file: !7121, line: 41, type: !669)
!7126 = distinct !DILexicalBlock(scope: !7120, file: !7121, line: 41, column: 9)
!7127 = !DILocalVariable(name: "__vpp_verify", scope: !7128, file: !7121, line: 41, type: !1095)
!7128 = distinct !DILexicalBlock(scope: !7126, file: !7121, line: 41, column: 9)
!7129 = !DILocalVariable(name: "pfo_val__", scope: !7130, file: !7121, line: 41, type: !402)
!7130 = distinct !DILexicalBlock(scope: !7126, file: !7121, line: 41, column: 9)
!7131 = !DILocation(line: 41, column: 9, scope: !7126)
!7132 = !DILocation(line: 41, column: 9, scope: !7128)
!7133 = !DILocation(line: 41, column: 9, scope: !7130)
!7134 = !{i64 2148499974}
!7135 = !DILocation(line: 41, column: 9, scope: !7120)
!7136 = !DILocation(line: 41, column: 2, scope: !7120)
!7137 = distinct !DISubprogram(name: "spin_lock", scope: !7138, file: !7138, line: 349, type: !7139, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7141)
!7138 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!7139 = !DISubroutineType(types: !7140)
!7140 = !{null, !2068}
!7141 = !{!7142}
!7142 = !DILocalVariable(name: "lock", arg: 1, scope: !7137, file: !7138, line: 349, type: !2068)
!7143 = !DILocation(line: 349, column: 51, scope: !7137)
!7144 = !DILocation(line: 351, column: 2, scope: !7137)
!7145 = !DILocation(line: 352, column: 1, scope: !7137)
!7146 = !DISubprogram(name: "mntget", scope: !1639, file: !1639, line: 88, type: !7147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7147 = !DISubroutineType(types: !7148)
!7148 = !{!1637, !1637}
!7149 = distinct !DISubprogram(name: "spin_unlock", scope: !7138, file: !7138, line: 389, type: !7139, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7150)
!7150 = !{!7151}
!7151 = !DILocalVariable(name: "lock", arg: 1, scope: !7149, file: !7138, line: 389, type: !2068)
!7152 = !DILocation(line: 389, column: 53, scope: !7149)
!7153 = !DILocation(line: 391, column: 2, scope: !7149)
!7154 = !DILocation(line: 392, column: 1, scope: !7149)
!7155 = distinct !DISubprogram(name: "fdget", scope: !6946, file: !6946, line: 62, type: !7156, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7158)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!7057, !23}
!7158 = !{!7159}
!7159 = !DILocalVariable(name: "fd", arg: 1, scope: !7155, file: !6946, line: 62, type: !23)
!7160 = !DILocation(line: 62, column: 44, scope: !7155)
!7161 = !DILocation(line: 64, column: 25, scope: !7155)
!7162 = !DILocation(line: 64, column: 17, scope: !7155)
!7163 = !DILocation(line: 64, column: 9, scope: !7155)
!7164 = !DILocation(line: 64, column: 2, scope: !7155)
!7165 = distinct !DISubprogram(name: "ERR_PTR", scope: !6953, file: !6953, line: 39, type: !7166, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7168)
!7166 = !DISubroutineType(types: !7167)
!7167 = !{!35, !543}
!7168 = !{!7169}
!7169 = !DILocalVariable(name: "error", arg: 1, scope: !7165, file: !6953, line: 39, type: !543)
!7170 = !DILocation(line: 39, column: 48, scope: !7165)
!7171 = !DILocation(line: 41, column: 18, scope: !7165)
!7172 = !DILocation(line: 41, column: 9, scope: !7165)
!7173 = !DILocation(line: 41, column: 2, scope: !7165)
!7174 = distinct !DISubprogram(name: "fdput", scope: !6946, file: !6946, line: 43, type: !7175, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7177)
!7175 = !DISubroutineType(types: !7176)
!7176 = !{null, !7057}
!7177 = !{!7178}
!7178 = !DILocalVariable(name: "fd", arg: 1, scope: !7174, file: !6946, line: 43, type: !7057)
!7179 = !DILocation(line: 43, column: 36, scope: !7174)
!7180 = !DILocation(line: 45, column: 9, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !7174, file: !6946, line: 45, column: 6)
!7182 = !DILocation(line: 45, column: 15, scope: !7181)
!7183 = !DILocation(line: 45, column: 6, scope: !7174)
!7184 = !DILocation(line: 46, column: 11, scope: !7181)
!7185 = !DILocation(line: 46, column: 3, scope: !7181)
!7186 = !DILocation(line: 47, column: 1, scope: !7174)
!7187 = !DISubprogram(name: "_raw_spin_lock", scope: !7188, file: !7188, line: 22, type: !7189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7188 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7189 = !DISubroutineType(types: !7190)
!7190 = !{null, !7191}
!7191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!7192 = !DISubprogram(name: "_raw_spin_unlock", scope: !7188, file: !7188, line: 39, type: !7189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7193 = distinct !DISubprogram(name: "__to_fd", scope: !6946, file: !6946, line: 57, type: !7194, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7196)
!7194 = !DISubroutineType(types: !7195)
!7195 = !{!7057, !54}
!7196 = !{!7197}
!7197 = !DILocalVariable(name: "v", arg: 1, scope: !7193, file: !6946, line: 57, type: !54)
!7198 = !DILocation(line: 57, column: 47, scope: !7193)
!7199 = !DILocation(line: 59, column: 20, scope: !7193)
!7200 = !DILocation(line: 59, column: 37, scope: !7193)
!7201 = !DILocation(line: 59, column: 39, scope: !7193)
!7202 = !DILocation(line: 59, column: 21, scope: !7193)
!7203 = !DILocation(line: 59, column: 45, scope: !7193)
!7204 = !DILocation(line: 59, column: 47, scope: !7193)
!7205 = !DILocation(line: 59, column: 2, scope: !7193)
!7206 = !DISubprogram(name: "__fdget", scope: !6946, file: !6946, line: 52, type: !7207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7207 = !DISubroutineType(types: !7208)
!7208 = !{!54, !23}
!7209 = !DISubprogram(name: "fput", scope: !6946, file: !6946, line: 17, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7210 = distinct !DISubprogram(name: "__do_compat_sys_open_by_handle_at", scope: !15, file: !15, line: 280, type: !6781, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !7211)
!7211 = !{!7212, !7213, !7214}
!7212 = !DILocalVariable(name: "mountdirfd", arg: 1, scope: !7210, file: !15, line: 280, type: !37)
!7213 = !DILocalVariable(name: "handle", arg: 2, scope: !7210, file: !15, line: 280, type: !310)
!7214 = !DILocalVariable(name: "flags", arg: 3, scope: !7210, file: !15, line: 280, type: !37)
!7215 = !DILocation(line: 280, column: 1, scope: !7210)
!7216 = !DILocation(line: 283, column: 24, scope: !7210)
!7217 = !DILocation(line: 283, column: 36, scope: !7210)
!7218 = !DILocation(line: 283, column: 44, scope: !7210)
!7219 = !DILocation(line: 283, column: 9, scope: !7210)
!7220 = !DILocation(line: 283, column: 2, scope: !7210)
