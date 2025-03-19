; ModuleID = 'kernel/uid16.c'
source_filename = "kernel/uid16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [10 x i64], [4 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25, [48 x i8] }
%struct.anon.25 = type { ptr, ptr }
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
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.26, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
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
%struct.restart_block = type { i64, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.11, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.14 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { i64, i64 }
%union.anon.14 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.15 }
%struct.kernel_cap_t = type { i64 }
%union.anon.15 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }

@overflowuid = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@overflowgid = external dso_local global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8

@__x64_sys_getuid16 = hidden alias i64 (ptr), ptr @__do_sys_getuid16
@__ia32_sys_getuid16 = hidden alias i64 (ptr), ptr @__do_sys_getuid16
@__x64_sys_geteuid16 = hidden alias i64 (ptr), ptr @__do_sys_geteuid16
@__ia32_sys_geteuid16 = hidden alias i64 (ptr), ptr @__do_sys_geteuid16
@__x64_sys_getgid16 = hidden alias i64 (ptr), ptr @__do_sys_getgid16
@__ia32_sys_getgid16 = hidden alias i64 (ptr), ptr @__do_sys_getgid16
@__x64_sys_getegid16 = hidden alias i64 (ptr), ptr @__do_sys_getegid16
@__ia32_sys_getegid16 = hidden alias i64 (ptr), ptr @__do_sys_getegid16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_chown16(ptr noundef %regs) #0 align 16 !dbg !5800 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5807
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5807
  %1 = load i64, ptr %di, align 8, !dbg !5807
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5807
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5807
  %3 = load i64, ptr %si, align 8, !dbg !5807
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5807
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5807
  %5 = load i64, ptr %dx, align 8, !dbg !5807
  %call = call i64 @__se_sys_chown16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5807
  ret i64 %call, !dbg !5807
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_chown16(i64 noundef %filename, i64 noundef %user, i64 noundef %group) #0 align 16 !dbg !5808 {
entry:
  %filename.addr = alloca i64, align 8
  %user.addr = alloca i64, align 8
  %group.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !5812, metadata !DIExpression()), !dbg !5816
  store i64 %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !5813, metadata !DIExpression()), !dbg !5816
  store i64 %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5814, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load i64, ptr %filename.addr, align 8, !dbg !5816
  %1 = inttoptr i64 %0 to ptr, !dbg !5816
  %2 = load i64, ptr %user.addr, align 8, !dbg !5816
  %conv = trunc i64 %2 to i16, !dbg !5816
  %3 = load i64, ptr %group.addr, align 8, !dbg !5816
  %conv1 = trunc i64 %3 to i16, !dbg !5816
  %call = call i64 @__do_sys_chown16(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #11, !dbg !5816
  store i64 %call, ptr %ret, align 8, !dbg !5816
  br label %do.body, !dbg !5816

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5817

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5817

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !5816
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5816
  ret i64 %4, !dbg !5816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_chown16(ptr noundef %regs) #0 align 16 !dbg !5819 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5822
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5822
  %1 = load i64, ptr %bx, align 8, !dbg !5822
  %conv = trunc i64 %1 to i32, !dbg !5822
  %conv1 = zext i32 %conv to i64, !dbg !5822
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5822
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5822
  %3 = load i64, ptr %cx, align 8, !dbg !5822
  %conv2 = trunc i64 %3 to i32, !dbg !5822
  %conv3 = zext i32 %conv2 to i64, !dbg !5822
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5822
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5822
  %5 = load i64, ptr %dx, align 8, !dbg !5822
  %conv4 = trunc i64 %5 to i32, !dbg !5822
  %conv5 = zext i32 %conv4 to i64, !dbg !5822
  %call = call i64 @__se_sys_chown16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5822
  ret i64 %call, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_lchown16(ptr noundef %regs) #0 align 16 !dbg !5823 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5826
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5826
  %1 = load i64, ptr %di, align 8, !dbg !5826
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5826
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5826
  %3 = load i64, ptr %si, align 8, !dbg !5826
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5826
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5826
  %5 = load i64, ptr %dx, align 8, !dbg !5826
  %call = call i64 @__se_sys_lchown16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5826
  ret i64 %call, !dbg !5826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_lchown16(i64 noundef %filename, i64 noundef %user, i64 noundef %group) #0 align 16 !dbg !5827 {
entry:
  %filename.addr = alloca i64, align 8
  %user.addr = alloca i64, align 8
  %group.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store i64 %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !5830, metadata !DIExpression()), !dbg !5833
  store i64 %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5832, metadata !DIExpression()), !dbg !5833
  %0 = load i64, ptr %filename.addr, align 8, !dbg !5833
  %1 = inttoptr i64 %0 to ptr, !dbg !5833
  %2 = load i64, ptr %user.addr, align 8, !dbg !5833
  %conv = trunc i64 %2 to i16, !dbg !5833
  %3 = load i64, ptr %group.addr, align 8, !dbg !5833
  %conv1 = trunc i64 %3 to i16, !dbg !5833
  %call = call i64 @__do_sys_lchown16(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #11, !dbg !5833
  store i64 %call, ptr %ret, align 8, !dbg !5833
  br label %do.body, !dbg !5833

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5834

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5834

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %ret, align 8, !dbg !5833
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5833
  ret i64 %4, !dbg !5833
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_lchown16(ptr noundef %regs) #0 align 16 !dbg !5836 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5839
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5839
  %1 = load i64, ptr %bx, align 8, !dbg !5839
  %conv = trunc i64 %1 to i32, !dbg !5839
  %conv1 = zext i32 %conv to i64, !dbg !5839
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5839
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5839
  %3 = load i64, ptr %cx, align 8, !dbg !5839
  %conv2 = trunc i64 %3 to i32, !dbg !5839
  %conv3 = zext i32 %conv2 to i64, !dbg !5839
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5839
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5839
  %5 = load i64, ptr %dx, align 8, !dbg !5839
  %conv4 = trunc i64 %5 to i32, !dbg !5839
  %conv5 = zext i32 %conv4 to i64, !dbg !5839
  %call = call i64 @__se_sys_lchown16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5839
  ret i64 %call, !dbg !5839
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_fchown16(ptr noundef %regs) #0 align 16 !dbg !5840 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5843
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5843
  %1 = load i64, ptr %di, align 8, !dbg !5843
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5843
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5843
  %3 = load i64, ptr %si, align 8, !dbg !5843
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5843
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5843
  %5 = load i64, ptr %dx, align 8, !dbg !5843
  %call = call i64 @__se_sys_fchown16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5843
  ret i64 %call, !dbg !5843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_fchown16(i64 noundef %fd, i64 noundef %user, i64 noundef %group) #0 align 16 !dbg !5844 {
entry:
  %fd.addr = alloca i64, align 8
  %user.addr = alloca i64, align 8
  %group.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5846, metadata !DIExpression()), !dbg !5850
  store i64 %user, ptr %user.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !5847, metadata !DIExpression()), !dbg !5850
  store i64 %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load i64, ptr %fd.addr, align 8, !dbg !5850
  %conv = trunc i64 %0 to i32, !dbg !5850
  %1 = load i64, ptr %user.addr, align 8, !dbg !5850
  %conv1 = trunc i64 %1 to i16, !dbg !5850
  %2 = load i64, ptr %group.addr, align 8, !dbg !5850
  %conv2 = trunc i64 %2 to i16, !dbg !5850
  %call = call i64 @__do_sys_fchown16(i32 noundef %conv, i16 noundef zeroext %conv1, i16 noundef zeroext %conv2) #11, !dbg !5850
  store i64 %call, ptr %ret, align 8, !dbg !5850
  br label %do.body, !dbg !5850

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5851

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5851

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5850
  ret i64 %3, !dbg !5850
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_fchown16(ptr noundef %regs) #0 align 16 !dbg !5853 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5856
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5856
  %1 = load i64, ptr %bx, align 8, !dbg !5856
  %conv = trunc i64 %1 to i32, !dbg !5856
  %conv1 = zext i32 %conv to i64, !dbg !5856
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5856
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5856
  %3 = load i64, ptr %cx, align 8, !dbg !5856
  %conv2 = trunc i64 %3 to i32, !dbg !5856
  %conv3 = zext i32 %conv2 to i64, !dbg !5856
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5856
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5856
  %5 = load i64, ptr %dx, align 8, !dbg !5856
  %conv4 = trunc i64 %5 to i32, !dbg !5856
  %conv5 = zext i32 %conv4 to i64, !dbg !5856
  %call = call i64 @__se_sys_fchown16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5856
  ret i64 %call, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setregid16(ptr noundef %regs) #0 align 16 !dbg !5857 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5860
  %1 = load i64, ptr %di, align 8, !dbg !5860
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5860
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5860
  %3 = load i64, ptr %si, align 8, !dbg !5860
  %call = call i64 @__se_sys_setregid16(i64 noundef %1, i64 noundef %3) #11, !dbg !5860
  ret i64 %call, !dbg !5860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setregid16(i64 noundef %rgid, i64 noundef %egid) #0 align 16 !dbg !5861 {
entry:
  %rgid.addr = alloca i64, align 8
  %egid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %rgid, ptr %rgid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rgid.addr, metadata !5865, metadata !DIExpression()), !dbg !5868
  store i64 %egid, ptr %egid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %egid.addr, metadata !5866, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5867, metadata !DIExpression()), !dbg !5868
  %0 = load i64, ptr %rgid.addr, align 8, !dbg !5868
  %conv = trunc i64 %0 to i16, !dbg !5868
  %1 = load i64, ptr %egid.addr, align 8, !dbg !5868
  %conv1 = trunc i64 %1 to i16, !dbg !5868
  %call = call i64 @__do_sys_setregid16(i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #11, !dbg !5868
  store i64 %call, ptr %ret, align 8, !dbg !5868
  br label %do.body, !dbg !5868

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5869

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5869

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5868
  ret i64 %2, !dbg !5868
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setregid16(ptr noundef %regs) #0 align 16 !dbg !5871 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5874
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5874
  %1 = load i64, ptr %bx, align 8, !dbg !5874
  %conv = trunc i64 %1 to i32, !dbg !5874
  %conv1 = zext i32 %conv to i64, !dbg !5874
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5874
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5874
  %3 = load i64, ptr %cx, align 8, !dbg !5874
  %conv2 = trunc i64 %3 to i32, !dbg !5874
  %conv3 = zext i32 %conv2 to i64, !dbg !5874
  %call = call i64 @__se_sys_setregid16(i64 noundef %conv1, i64 noundef %conv3) #11, !dbg !5874
  ret i64 %call, !dbg !5874
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setgid16(ptr noundef %regs) #0 align 16 !dbg !5875 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5878
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5878
  %1 = load i64, ptr %di, align 8, !dbg !5878
  %call = call i64 @__se_sys_setgid16(i64 noundef %1) #11, !dbg !5878
  ret i64 %call, !dbg !5878
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setgid16(i64 noundef %gid) #0 align 16 !dbg !5879 {
entry:
  %gid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gid, ptr %gid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5883, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5884, metadata !DIExpression()), !dbg !5885
  %0 = load i64, ptr %gid.addr, align 8, !dbg !5885
  %conv = trunc i64 %0 to i16, !dbg !5885
  %call = call i64 @__do_sys_setgid16(i16 noundef zeroext %conv) #11, !dbg !5885
  store i64 %call, ptr %ret, align 8, !dbg !5885
  br label %do.body, !dbg !5885

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5886

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5885
  ret i64 %1, !dbg !5885
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setgid16(ptr noundef %regs) #0 align 16 !dbg !5888 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5891
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5891
  %1 = load i64, ptr %bx, align 8, !dbg !5891
  %conv = trunc i64 %1 to i32, !dbg !5891
  %conv1 = zext i32 %conv to i64, !dbg !5891
  %call = call i64 @__se_sys_setgid16(i64 noundef %conv1) #11, !dbg !5891
  ret i64 %call, !dbg !5891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setreuid16(ptr noundef %regs) #0 align 16 !dbg !5892 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5895
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5895
  %1 = load i64, ptr %di, align 8, !dbg !5895
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5895
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5895
  %3 = load i64, ptr %si, align 8, !dbg !5895
  %call = call i64 @__se_sys_setreuid16(i64 noundef %1, i64 noundef %3) #11, !dbg !5895
  ret i64 %call, !dbg !5895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setreuid16(i64 noundef %ruid, i64 noundef %euid) #0 align 16 !dbg !5896 {
entry:
  %ruid.addr = alloca i64, align 8
  %euid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %ruid, ptr %ruid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ruid.addr, metadata !5898, metadata !DIExpression()), !dbg !5901
  store i64 %euid, ptr %euid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %euid.addr, metadata !5899, metadata !DIExpression()), !dbg !5901
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load i64, ptr %ruid.addr, align 8, !dbg !5901
  %conv = trunc i64 %0 to i16, !dbg !5901
  %1 = load i64, ptr %euid.addr, align 8, !dbg !5901
  %conv1 = trunc i64 %1 to i16, !dbg !5901
  %call = call i64 @__do_sys_setreuid16(i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #11, !dbg !5901
  store i64 %call, ptr %ret, align 8, !dbg !5901
  br label %do.body, !dbg !5901

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5902

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5902

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !5901
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5901
  ret i64 %2, !dbg !5901
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setreuid16(ptr noundef %regs) #0 align 16 !dbg !5904 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5907
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5907
  %1 = load i64, ptr %bx, align 8, !dbg !5907
  %conv = trunc i64 %1 to i32, !dbg !5907
  %conv1 = zext i32 %conv to i64, !dbg !5907
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5907
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5907
  %3 = load i64, ptr %cx, align 8, !dbg !5907
  %conv2 = trunc i64 %3 to i32, !dbg !5907
  %conv3 = zext i32 %conv2 to i64, !dbg !5907
  %call = call i64 @__se_sys_setreuid16(i64 noundef %conv1, i64 noundef %conv3) #11, !dbg !5907
  ret i64 %call, !dbg !5907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setuid16(ptr noundef %regs) #0 align 16 !dbg !5908 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5910, metadata !DIExpression()), !dbg !5911
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5911
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5911
  %1 = load i64, ptr %di, align 8, !dbg !5911
  %call = call i64 @__se_sys_setuid16(i64 noundef %1) #11, !dbg !5911
  ret i64 %call, !dbg !5911
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setuid16(i64 noundef %uid) #0 align 16 !dbg !5912 {
entry:
  %uid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5914, metadata !DIExpression()), !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5915, metadata !DIExpression()), !dbg !5916
  %0 = load i64, ptr %uid.addr, align 8, !dbg !5916
  %conv = trunc i64 %0 to i16, !dbg !5916
  %call = call i64 @__do_sys_setuid16(i16 noundef zeroext %conv) #11, !dbg !5916
  store i64 %call, ptr %ret, align 8, !dbg !5916
  br label %do.body, !dbg !5916

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5917

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5917

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5916
  ret i64 %1, !dbg !5916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setuid16(ptr noundef %regs) #0 align 16 !dbg !5919 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5922
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5922
  %1 = load i64, ptr %bx, align 8, !dbg !5922
  %conv = trunc i64 %1 to i32, !dbg !5922
  %conv1 = zext i32 %conv to i64, !dbg !5922
  %call = call i64 @__se_sys_setuid16(i64 noundef %conv1) #11, !dbg !5922
  ret i64 %call, !dbg !5922
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setresuid16(ptr noundef %regs) #0 align 16 !dbg !5923 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5926
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5926
  %1 = load i64, ptr %di, align 8, !dbg !5926
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5926
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5926
  %3 = load i64, ptr %si, align 8, !dbg !5926
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5926
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5926
  %5 = load i64, ptr %dx, align 8, !dbg !5926
  %call = call i64 @__se_sys_setresuid16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5926
  ret i64 %call, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setresuid16(i64 noundef %ruid, i64 noundef %euid, i64 noundef %suid) #0 align 16 !dbg !5927 {
entry:
  %ruid.addr = alloca i64, align 8
  %euid.addr = alloca i64, align 8
  %suid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %ruid, ptr %ruid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ruid.addr, metadata !5929, metadata !DIExpression()), !dbg !5933
  store i64 %euid, ptr %euid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %euid.addr, metadata !5930, metadata !DIExpression()), !dbg !5933
  store i64 %suid, ptr %suid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suid.addr, metadata !5931, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5932, metadata !DIExpression()), !dbg !5933
  %0 = load i64, ptr %ruid.addr, align 8, !dbg !5933
  %conv = trunc i64 %0 to i16, !dbg !5933
  %1 = load i64, ptr %euid.addr, align 8, !dbg !5933
  %conv1 = trunc i64 %1 to i16, !dbg !5933
  %2 = load i64, ptr %suid.addr, align 8, !dbg !5933
  %conv2 = trunc i64 %2 to i16, !dbg !5933
  %call = call i64 @__do_sys_setresuid16(i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i16 noundef zeroext %conv2) #11, !dbg !5933
  store i64 %call, ptr %ret, align 8, !dbg !5933
  br label %do.body, !dbg !5933

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5934

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5934

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !5933
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5933
  ret i64 %3, !dbg !5933
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setresuid16(ptr noundef %regs) #0 align 16 !dbg !5936 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5939
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5939
  %1 = load i64, ptr %bx, align 8, !dbg !5939
  %conv = trunc i64 %1 to i32, !dbg !5939
  %conv1 = zext i32 %conv to i64, !dbg !5939
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5939
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5939
  %3 = load i64, ptr %cx, align 8, !dbg !5939
  %conv2 = trunc i64 %3 to i32, !dbg !5939
  %conv3 = zext i32 %conv2 to i64, !dbg !5939
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5939
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5939
  %5 = load i64, ptr %dx, align 8, !dbg !5939
  %conv4 = trunc i64 %5 to i32, !dbg !5939
  %conv5 = zext i32 %conv4 to i64, !dbg !5939
  %call = call i64 @__se_sys_setresuid16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5939
  ret i64 %call, !dbg !5939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getresuid16(ptr noundef %regs) #0 align 16 !dbg !5940 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5943
  %1 = load i64, ptr %di, align 8, !dbg !5943
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5943
  %3 = load i64, ptr %si, align 8, !dbg !5943
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5943
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5943
  %5 = load i64, ptr %dx, align 8, !dbg !5943
  %call = call i64 @__se_sys_getresuid16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5943
  ret i64 %call, !dbg !5943
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getresuid16(i64 noundef %ruidp, i64 noundef %euidp, i64 noundef %suidp) #0 align 16 !dbg !5944 {
entry:
  %ruidp.addr = alloca i64, align 8
  %euidp.addr = alloca i64, align 8
  %suidp.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %ruidp, ptr %ruidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ruidp.addr, metadata !5946, metadata !DIExpression()), !dbg !5950
  store i64 %euidp, ptr %euidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %euidp.addr, metadata !5947, metadata !DIExpression()), !dbg !5950
  store i64 %suidp, ptr %suidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suidp.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5949, metadata !DIExpression()), !dbg !5950
  %0 = load i64, ptr %ruidp.addr, align 8, !dbg !5950
  %1 = inttoptr i64 %0 to ptr, !dbg !5950
  %2 = load i64, ptr %euidp.addr, align 8, !dbg !5950
  %3 = inttoptr i64 %2 to ptr, !dbg !5950
  %4 = load i64, ptr %suidp.addr, align 8, !dbg !5950
  %5 = inttoptr i64 %4 to ptr, !dbg !5950
  %call = call i64 @__do_sys_getresuid16(ptr noundef %1, ptr noundef %3, ptr noundef %5) #11, !dbg !5950
  store i64 %call, ptr %ret, align 8, !dbg !5950
  br label %do.body, !dbg !5950

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5951

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5951

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %ret, align 8, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5950
  ret i64 %6, !dbg !5950
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getresuid16(ptr noundef %regs) #0 align 16 !dbg !5953 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5956
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5956
  %1 = load i64, ptr %bx, align 8, !dbg !5956
  %conv = trunc i64 %1 to i32, !dbg !5956
  %conv1 = zext i32 %conv to i64, !dbg !5956
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5956
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5956
  %3 = load i64, ptr %cx, align 8, !dbg !5956
  %conv2 = trunc i64 %3 to i32, !dbg !5956
  %conv3 = zext i32 %conv2 to i64, !dbg !5956
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5956
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5956
  %5 = load i64, ptr %dx, align 8, !dbg !5956
  %conv4 = trunc i64 %5 to i32, !dbg !5956
  %conv5 = zext i32 %conv4 to i64, !dbg !5956
  %call = call i64 @__se_sys_getresuid16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5956
  ret i64 %call, !dbg !5956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setresgid16(ptr noundef %regs) #0 align 16 !dbg !5957 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5960
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5960
  %1 = load i64, ptr %di, align 8, !dbg !5960
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5960
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5960
  %3 = load i64, ptr %si, align 8, !dbg !5960
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5960
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5960
  %5 = load i64, ptr %dx, align 8, !dbg !5960
  %call = call i64 @__se_sys_setresgid16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5960
  ret i64 %call, !dbg !5960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setresgid16(i64 noundef %rgid, i64 noundef %egid, i64 noundef %sgid) #0 align 16 !dbg !5961 {
entry:
  %rgid.addr = alloca i64, align 8
  %egid.addr = alloca i64, align 8
  %sgid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %rgid, ptr %rgid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rgid.addr, metadata !5963, metadata !DIExpression()), !dbg !5967
  store i64 %egid, ptr %egid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %egid.addr, metadata !5964, metadata !DIExpression()), !dbg !5967
  store i64 %sgid, ptr %sgid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgid.addr, metadata !5965, metadata !DIExpression()), !dbg !5967
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5966, metadata !DIExpression()), !dbg !5967
  %0 = load i64, ptr %rgid.addr, align 8, !dbg !5967
  %conv = trunc i64 %0 to i16, !dbg !5967
  %1 = load i64, ptr %egid.addr, align 8, !dbg !5967
  %conv1 = trunc i64 %1 to i16, !dbg !5967
  %2 = load i64, ptr %sgid.addr, align 8, !dbg !5967
  %conv2 = trunc i64 %2 to i16, !dbg !5967
  %call = call i64 @__do_sys_setresgid16(i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i16 noundef zeroext %conv2) #11, !dbg !5967
  store i64 %call, ptr %ret, align 8, !dbg !5967
  br label %do.body, !dbg !5967

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5968

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5968

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5967
  ret i64 %3, !dbg !5967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setresgid16(ptr noundef %regs) #0 align 16 !dbg !5970 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5973
  %1 = load i64, ptr %bx, align 8, !dbg !5973
  %conv = trunc i64 %1 to i32, !dbg !5973
  %conv1 = zext i32 %conv to i64, !dbg !5973
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5973
  %3 = load i64, ptr %cx, align 8, !dbg !5973
  %conv2 = trunc i64 %3 to i32, !dbg !5973
  %conv3 = zext i32 %conv2 to i64, !dbg !5973
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5973
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5973
  %5 = load i64, ptr %dx, align 8, !dbg !5973
  %conv4 = trunc i64 %5 to i32, !dbg !5973
  %conv5 = zext i32 %conv4 to i64, !dbg !5973
  %call = call i64 @__se_sys_setresgid16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5973
  ret i64 %call, !dbg !5973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getresgid16(ptr noundef %regs) #0 align 16 !dbg !5974 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5977
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5977
  %1 = load i64, ptr %di, align 8, !dbg !5977
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5977
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !5977
  %3 = load i64, ptr %si, align 8, !dbg !5977
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5977
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5977
  %5 = load i64, ptr %dx, align 8, !dbg !5977
  %call = call i64 @__se_sys_getresgid16(i64 noundef %1, i64 noundef %3, i64 noundef %5) #11, !dbg !5977
  ret i64 %call, !dbg !5977
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getresgid16(i64 noundef %rgidp, i64 noundef %egidp, i64 noundef %sgidp) #0 align 16 !dbg !5978 {
entry:
  %rgidp.addr = alloca i64, align 8
  %egidp.addr = alloca i64, align 8
  %sgidp.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %rgidp, ptr %rgidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rgidp.addr, metadata !5980, metadata !DIExpression()), !dbg !5984
  store i64 %egidp, ptr %egidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %egidp.addr, metadata !5981, metadata !DIExpression()), !dbg !5984
  store i64 %sgidp, ptr %sgidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgidp.addr, metadata !5982, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load i64, ptr %rgidp.addr, align 8, !dbg !5984
  %1 = inttoptr i64 %0 to ptr, !dbg !5984
  %2 = load i64, ptr %egidp.addr, align 8, !dbg !5984
  %3 = inttoptr i64 %2 to ptr, !dbg !5984
  %4 = load i64, ptr %sgidp.addr, align 8, !dbg !5984
  %5 = inttoptr i64 %4 to ptr, !dbg !5984
  %call = call i64 @__do_sys_getresgid16(ptr noundef %1, ptr noundef %3, ptr noundef %5) #11, !dbg !5984
  store i64 %call, ptr %ret, align 8, !dbg !5984
  br label %do.body, !dbg !5984

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5985

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %ret, align 8, !dbg !5984
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5984
  ret i64 %6, !dbg !5984
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getresgid16(ptr noundef %regs) #0 align 16 !dbg !5987 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !5990
  %1 = load i64, ptr %bx, align 8, !dbg !5990
  %conv = trunc i64 %1 to i32, !dbg !5990
  %conv1 = zext i32 %conv to i64, !dbg !5990
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !5990
  %3 = load i64, ptr %cx, align 8, !dbg !5990
  %conv2 = trunc i64 %3 to i32, !dbg !5990
  %conv3 = zext i32 %conv2 to i64, !dbg !5990
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5990
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !5990
  %5 = load i64, ptr %dx, align 8, !dbg !5990
  %conv4 = trunc i64 %5 to i32, !dbg !5990
  %conv5 = zext i32 %conv4 to i64, !dbg !5990
  %call = call i64 @__se_sys_getresgid16(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #11, !dbg !5990
  ret i64 %call, !dbg !5990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setfsuid16(ptr noundef %regs) #0 align 16 !dbg !5991 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5994
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !5994
  %1 = load i64, ptr %di, align 8, !dbg !5994
  %call = call i64 @__se_sys_setfsuid16(i64 noundef %1) #11, !dbg !5994
  ret i64 %call, !dbg !5994
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setfsuid16(i64 noundef %uid) #0 align 16 !dbg !5995 {
entry:
  %uid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5997, metadata !DIExpression()), !dbg !5999
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5998, metadata !DIExpression()), !dbg !5999
  %0 = load i64, ptr %uid.addr, align 8, !dbg !5999
  %conv = trunc i64 %0 to i16, !dbg !5999
  %call = call i64 @__do_sys_setfsuid16(i16 noundef zeroext %conv) #11, !dbg !5999
  store i64 %call, ptr %ret, align 8, !dbg !5999
  br label %do.body, !dbg !5999

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6000

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6000

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !5999
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !5999
  ret i64 %1, !dbg !5999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setfsuid16(ptr noundef %regs) #0 align 16 !dbg !6002 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6005
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6005
  %1 = load i64, ptr %bx, align 8, !dbg !6005
  %conv = trunc i64 %1 to i32, !dbg !6005
  %conv1 = zext i32 %conv to i64, !dbg !6005
  %call = call i64 @__se_sys_setfsuid16(i64 noundef %conv1) #11, !dbg !6005
  ret i64 %call, !dbg !6005
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setfsgid16(ptr noundef %regs) #0 align 16 !dbg !6006 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6009
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6009
  %1 = load i64, ptr %di, align 8, !dbg !6009
  %call = call i64 @__se_sys_setfsgid16(i64 noundef %1) #11, !dbg !6009
  ret i64 %call, !dbg !6009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setfsgid16(i64 noundef %gid) #0 align 16 !dbg !6010 {
entry:
  %gid.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gid, ptr %gid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6012, metadata !DIExpression()), !dbg !6014
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load i64, ptr %gid.addr, align 8, !dbg !6014
  %conv = trunc i64 %0 to i16, !dbg !6014
  %call = call i64 @__do_sys_setfsgid16(i16 noundef zeroext %conv) #11, !dbg !6014
  store i64 %call, ptr %ret, align 8, !dbg !6014
  br label %do.body, !dbg !6014

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6015

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6015

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !6014
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6014
  ret i64 %1, !dbg !6014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setfsgid16(ptr noundef %regs) #0 align 16 !dbg !6017 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6019, metadata !DIExpression()), !dbg !6020
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6020
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6020
  %1 = load i64, ptr %bx, align 8, !dbg !6020
  %conv = trunc i64 %1 to i32, !dbg !6020
  %conv1 = zext i32 %conv to i64, !dbg !6020
  %call = call i64 @__se_sys_setfsgid16(i64 noundef %conv1) #11, !dbg !6020
  ret i64 %call, !dbg !6020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getgroups16(ptr noundef %regs) #0 align 16 !dbg !6021 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6023, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6024
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6024
  %1 = load i64, ptr %di, align 8, !dbg !6024
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6024
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6024
  %3 = load i64, ptr %si, align 8, !dbg !6024
  %call = call i64 @__se_sys_getgroups16(i64 noundef %1, i64 noundef %3) #11, !dbg !6024
  ret i64 %call, !dbg !6024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getgroups16(i64 noundef %gidsetsize, i64 noundef %grouplist) #0 align 16 !dbg !6025 {
entry:
  %gidsetsize.addr = alloca i64, align 8
  %grouplist.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gidsetsize, ptr %gidsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6027, metadata !DIExpression()), !dbg !6030
  store i64 %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6028, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load i64, ptr %gidsetsize.addr, align 8, !dbg !6030
  %conv = trunc i64 %0 to i32, !dbg !6030
  %1 = load i64, ptr %grouplist.addr, align 8, !dbg !6030
  %2 = inttoptr i64 %1 to ptr, !dbg !6030
  %call = call i64 @__do_sys_getgroups16(i32 noundef %conv, ptr noundef %2) #11, !dbg !6030
  store i64 %call, ptr %ret, align 8, !dbg !6030
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6031

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6031

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6030
  ret i64 %3, !dbg !6030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getgroups16(ptr noundef %regs) #0 align 16 !dbg !6033 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6036
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6036
  %1 = load i64, ptr %bx, align 8, !dbg !6036
  %conv = trunc i64 %1 to i32, !dbg !6036
  %conv1 = zext i32 %conv to i64, !dbg !6036
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6036
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6036
  %3 = load i64, ptr %cx, align 8, !dbg !6036
  %conv2 = trunc i64 %3 to i32, !dbg !6036
  %conv3 = zext i32 %conv2 to i64, !dbg !6036
  %call = call i64 @__se_sys_getgroups16(i64 noundef %conv1, i64 noundef %conv3) #11, !dbg !6036
  ret i64 %call, !dbg !6036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_setgroups16(ptr noundef %regs) #0 align 16 !dbg !6037 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6040
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6040
  %1 = load i64, ptr %di, align 8, !dbg !6040
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6040
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6040
  %3 = load i64, ptr %si, align 8, !dbg !6040
  %call = call i64 @__se_sys_setgroups16(i64 noundef %1, i64 noundef %3) #11, !dbg !6040
  ret i64 %call, !dbg !6040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_setgroups16(i64 noundef %gidsetsize, i64 noundef %grouplist) #0 align 16 !dbg !6041 {
entry:
  %gidsetsize.addr = alloca i64, align 8
  %grouplist.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %gidsetsize, ptr %gidsetsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6043, metadata !DIExpression()), !dbg !6046
  store i64 %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6044, metadata !DIExpression()), !dbg !6046
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #12, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6045, metadata !DIExpression()), !dbg !6046
  %0 = load i64, ptr %gidsetsize.addr, align 8, !dbg !6046
  %conv = trunc i64 %0 to i32, !dbg !6046
  %1 = load i64, ptr %grouplist.addr, align 8, !dbg !6046
  %2 = inttoptr i64 %1 to ptr, !dbg !6046
  %call = call i64 @__do_sys_setgroups16(i32 noundef %conv, ptr noundef %2) #11, !dbg !6046
  store i64 %call, ptr %ret, align 8, !dbg !6046
  br label %do.body, !dbg !6046

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6047

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6047

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #12, !dbg !6046
  ret i64 %3, !dbg !6046
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_setgroups16(ptr noundef %regs) #0 align 16 !dbg !6049 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6052
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6052
  %1 = load i64, ptr %bx, align 8, !dbg !6052
  %conv = trunc i64 %1 to i32, !dbg !6052
  %conv1 = zext i32 %conv to i64, !dbg !6052
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6052
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6052
  %3 = load i64, ptr %cx, align 8, !dbg !6052
  %conv2 = trunc i64 %3 to i32, !dbg !6052
  %conv3 = zext i32 %conv2 to i64, !dbg !6052
  %call = call i64 @__se_sys_setgroups16(i64 noundef %conv1, i64 noundef %conv3) #11, !dbg !6052
  ret i64 %call, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getuid16(ptr noundef %__unused) #0 align 16 !dbg !6053 {
entry:
  %__unused.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  %agg.tmp5 = alloca %struct.kuid_t, align 4
  %tmp8 = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6055, metadata !DIExpression()), !dbg !6056
  %call = call ptr @current_user_ns() #11, !dbg !6057
  br label %do.body, !dbg !6058

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6061

do.end:                                           ; preds = %do.body
  %call1 = call ptr @get_current() #11, !dbg !6058
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6058
  %0 = load ptr, ptr %cred, align 32, !dbg !6058
  store ptr %0, ptr %tmp, align 8, !dbg !6061
  %1 = load ptr, ptr %tmp, align 8, !dbg !6058
  %uid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 1, !dbg !6063
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %uid, i64 4, i1 false), !dbg !6063
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6057
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !6057
  %call2 = call i32 @from_kuid_munged(ptr noundef %call, i32 %2) #11, !dbg !6057
  %and = and i32 %call2, -65536, !dbg !6057
  %tobool = icmp ne i32 %and, 0, !dbg !6057
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6057

cond.true:                                        ; preds = %do.end
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6057
  %conv = trunc i32 %3 to i16, !dbg !6057
  %conv3 = zext i16 %conv to i32, !dbg !6057
  br label %cond.end, !dbg !6057

cond.false:                                       ; preds = %do.end
  %call4 = call ptr @current_user_ns() #11, !dbg !6057
  br label %do.body6, !dbg !6064

do.body6:                                         ; preds = %cond.false
  br label %do.end7, !dbg !6067

do.end7:                                          ; preds = %do.body6
  %call9 = call ptr @get_current() #11, !dbg !6064
  %cred10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 94, !dbg !6064
  %4 = load ptr, ptr %cred10, align 32, !dbg !6064
  store ptr %4, ptr %tmp8, align 8, !dbg !6067
  %5 = load ptr, ptr %tmp8, align 8, !dbg !6064
  %uid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1, !dbg !6069
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp5, ptr align 8 %uid11, i64 4, i1 false), !dbg !6069
  %coerce.dive12 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp5, i32 0, i32 0, !dbg !6057
  %6 = load i32, ptr %coerce.dive12, align 4, !dbg !6057
  %call13 = call i32 @from_kuid_munged(ptr noundef %call4, i32 %6) #11, !dbg !6057
  %conv14 = trunc i32 %call13 to i16, !dbg !6057
  %conv15 = zext i16 %conv14 to i32, !dbg !6057
  br label %cond.end, !dbg !6057

cond.end:                                         ; preds = %do.end7, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv15, %do.end7 ], !dbg !6057
  %conv16 = sext i32 %cond to i64, !dbg !6057
  ret i64 %conv16, !dbg !6070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_geteuid16(ptr noundef %__unused) #0 align 16 !dbg !6071 {
entry:
  %__unused.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kuid_t, align 4
  %tmp = alloca ptr, align 8
  %agg.tmp5 = alloca %struct.kuid_t, align 4
  %tmp8 = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  %call = call ptr @current_user_ns() #11, !dbg !6075
  br label %do.body, !dbg !6076

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.body
  %call1 = call ptr @get_current() #11, !dbg !6076
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6076
  %0 = load ptr, ptr %cred, align 32, !dbg !6076
  store ptr %0, ptr %tmp, align 8, !dbg !6079
  %1 = load ptr, ptr %tmp, align 8, !dbg !6076
  %euid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 5, !dbg !6081
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 8 %euid, i64 4, i1 false), !dbg !6081
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6075
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !6075
  %call2 = call i32 @from_kuid_munged(ptr noundef %call, i32 %2) #11, !dbg !6075
  %and = and i32 %call2, -65536, !dbg !6075
  %tobool = icmp ne i32 %and, 0, !dbg !6075
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6075

cond.true:                                        ; preds = %do.end
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6075
  %conv = trunc i32 %3 to i16, !dbg !6075
  %conv3 = zext i16 %conv to i32, !dbg !6075
  br label %cond.end, !dbg !6075

cond.false:                                       ; preds = %do.end
  %call4 = call ptr @current_user_ns() #11, !dbg !6075
  br label %do.body6, !dbg !6082

do.body6:                                         ; preds = %cond.false
  br label %do.end7, !dbg !6085

do.end7:                                          ; preds = %do.body6
  %call9 = call ptr @get_current() #11, !dbg !6082
  %cred10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 94, !dbg !6082
  %4 = load ptr, ptr %cred10, align 32, !dbg !6082
  store ptr %4, ptr %tmp8, align 8, !dbg !6085
  %5 = load ptr, ptr %tmp8, align 8, !dbg !6082
  %euid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5, !dbg !6087
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp5, ptr align 8 %euid11, i64 4, i1 false), !dbg !6087
  %coerce.dive12 = getelementptr inbounds %struct.kuid_t, ptr %agg.tmp5, i32 0, i32 0, !dbg !6075
  %6 = load i32, ptr %coerce.dive12, align 4, !dbg !6075
  %call13 = call i32 @from_kuid_munged(ptr noundef %call4, i32 %6) #11, !dbg !6075
  %conv14 = trunc i32 %call13 to i16, !dbg !6075
  %conv15 = zext i16 %conv14 to i32, !dbg !6075
  br label %cond.end, !dbg !6075

cond.end:                                         ; preds = %do.end7, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv15, %do.end7 ], !dbg !6075
  %conv16 = sext i32 %cond to i64, !dbg !6075
  ret i64 %conv16, !dbg !6088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getgid16(ptr noundef %__unused) #0 align 16 !dbg !6089 {
entry:
  %__unused.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kgid_t, align 4
  %tmp = alloca ptr, align 8
  %agg.tmp5 = alloca %struct.kgid_t, align 4
  %tmp8 = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  %call = call ptr @current_user_ns() #11, !dbg !6093
  br label %do.body, !dbg !6094

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6097

do.end:                                           ; preds = %do.body
  %call1 = call ptr @get_current() #11, !dbg !6094
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6094
  %0 = load ptr, ptr %cred, align 32, !dbg !6094
  store ptr %0, ptr %tmp, align 8, !dbg !6097
  %1 = load ptr, ptr %tmp, align 8, !dbg !6094
  %gid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 2, !dbg !6099
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 4 %gid, i64 4, i1 false), !dbg !6099
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6093
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !6093
  %call2 = call i32 @from_kgid_munged(ptr noundef %call, i32 %2) #11, !dbg !6093
  %and = and i32 %call2, -65536, !dbg !6093
  %tobool = icmp ne i32 %and, 0, !dbg !6093
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6093

cond.true:                                        ; preds = %do.end
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6093
  %conv = trunc i32 %3 to i16, !dbg !6093
  %conv3 = zext i16 %conv to i32, !dbg !6093
  br label %cond.end, !dbg !6093

cond.false:                                       ; preds = %do.end
  %call4 = call ptr @current_user_ns() #11, !dbg !6093
  br label %do.body6, !dbg !6100

do.body6:                                         ; preds = %cond.false
  br label %do.end7, !dbg !6103

do.end7:                                          ; preds = %do.body6
  %call9 = call ptr @get_current() #11, !dbg !6100
  %cred10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 94, !dbg !6100
  %4 = load ptr, ptr %cred10, align 32, !dbg !6100
  store ptr %4, ptr %tmp8, align 8, !dbg !6103
  %5 = load ptr, ptr %tmp8, align 8, !dbg !6100
  %gid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 2, !dbg !6105
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp5, ptr align 4 %gid11, i64 4, i1 false), !dbg !6105
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp5, i32 0, i32 0, !dbg !6093
  %6 = load i32, ptr %coerce.dive12, align 4, !dbg !6093
  %call13 = call i32 @from_kgid_munged(ptr noundef %call4, i32 %6) #11, !dbg !6093
  %conv14 = trunc i32 %call13 to i16, !dbg !6093
  %conv15 = zext i16 %conv14 to i32, !dbg !6093
  br label %cond.end, !dbg !6093

cond.end:                                         ; preds = %do.end7, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv15, %do.end7 ], !dbg !6093
  %conv16 = sext i32 %cond to i64, !dbg !6093
  ret i64 %conv16, !dbg !6106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getegid16(ptr noundef %__unused) #0 align 16 !dbg !6107 {
entry:
  %__unused.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.kgid_t, align 4
  %tmp = alloca ptr, align 8
  %agg.tmp5 = alloca %struct.kgid_t, align 4
  %tmp8 = alloca ptr, align 8
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  %call = call ptr @current_user_ns() #11, !dbg !6111
  br label %do.body, !dbg !6112

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6115

do.end:                                           ; preds = %do.body
  %call1 = call ptr @get_current() #11, !dbg !6112
  %cred = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 94, !dbg !6112
  %0 = load ptr, ptr %cred, align 32, !dbg !6112
  store ptr %0, ptr %tmp, align 8, !dbg !6115
  %1 = load ptr, ptr %tmp, align 8, !dbg !6112
  %egid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 6, !dbg !6117
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp, ptr align 4 %egid, i64 4, i1 false), !dbg !6117
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp, i32 0, i32 0, !dbg !6111
  %2 = load i32, ptr %coerce.dive, align 4, !dbg !6111
  %call2 = call i32 @from_kgid_munged(ptr noundef %call, i32 %2) #11, !dbg !6111
  %and = and i32 %call2, -65536, !dbg !6111
  %tobool = icmp ne i32 %and, 0, !dbg !6111
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6111

cond.true:                                        ; preds = %do.end
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6111
  %conv = trunc i32 %3 to i16, !dbg !6111
  %conv3 = zext i16 %conv to i32, !dbg !6111
  br label %cond.end, !dbg !6111

cond.false:                                       ; preds = %do.end
  %call4 = call ptr @current_user_ns() #11, !dbg !6111
  br label %do.body6, !dbg !6118

do.body6:                                         ; preds = %cond.false
  br label %do.end7, !dbg !6121

do.end7:                                          ; preds = %do.body6
  %call9 = call ptr @get_current() #11, !dbg !6118
  %cred10 = getelementptr inbounds %struct.task_struct, ptr %call9, i32 0, i32 94, !dbg !6118
  %4 = load ptr, ptr %cred10, align 32, !dbg !6118
  store ptr %4, ptr %tmp8, align 8, !dbg !6121
  %5 = load ptr, ptr %tmp8, align 8, !dbg !6118
  %egid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6, !dbg !6123
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.tmp5, ptr align 4 %egid11, i64 4, i1 false), !dbg !6123
  %coerce.dive12 = getelementptr inbounds %struct.kgid_t, ptr %agg.tmp5, i32 0, i32 0, !dbg !6111
  %6 = load i32, ptr %coerce.dive12, align 4, !dbg !6111
  %call13 = call i32 @from_kgid_munged(ptr noundef %call4, i32 %6) #11, !dbg !6111
  %conv14 = trunc i32 %call13 to i16, !dbg !6111
  %conv15 = zext i16 %conv14 to i32, !dbg !6111
  br label %cond.end, !dbg !6111

cond.end:                                         ; preds = %do.end7, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %conv15, %do.end7 ], !dbg !6111
  %conv16 = sext i32 %cond to i64, !dbg !6111
  ret i64 %conv16, !dbg !6124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_chown16(ptr noundef %filename, i16 noundef zeroext %user, i16 noundef zeroext %group) #3 align 16 !dbg !6125 {
entry:
  %filename.addr = alloca ptr, align 8
  %user.addr = alloca i16, align 2
  %group.addr = alloca i16, align 2
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !6129, metadata !DIExpression()), !dbg !6132
  store i16 %user, ptr %user.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6130, metadata !DIExpression()), !dbg !6132
  store i16 %group, ptr %group.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !6133
  %1 = load i16, ptr %user.addr, align 2, !dbg !6134
  %conv = zext i16 %1 to i32, !dbg !6134
  %cmp = icmp eq i32 %conv, 65535, !dbg !6134
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6134

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6134

cond.false:                                       ; preds = %entry
  %2 = load i16, ptr %user.addr, align 2, !dbg !6134
  %conv2 = zext i16 %2 to i32, !dbg !6134
  br label %cond.end, !dbg !6134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6134
  %3 = load i16, ptr %group.addr, align 2, !dbg !6135
  %conv3 = zext i16 %3 to i32, !dbg !6135
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6135
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6135

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6135

cond.false7:                                      ; preds = %cond.end
  %4 = load i16, ptr %group.addr, align 2, !dbg !6135
  %conv8 = zext i16 %4 to i32, !dbg !6135
  br label %cond.end9, !dbg !6135

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6135
  %call = call i64 @ksys_chown(ptr noundef %0, i32 noundef %cond, i32 noundef %cond10) #11, !dbg !6136
  ret i64 %call, !dbg !6137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ksys_chown(ptr noundef %filename, i32 noundef %user, i32 noundef %group) #3 align 16 !dbg !6138 {
entry:
  %filename.addr = alloca ptr, align 8
  %user.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !6143, metadata !DIExpression()), !dbg !6146
  store i32 %user, ptr %user.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6144, metadata !DIExpression()), !dbg !6147
  store i32 %group, ptr %group.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6145, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !6149
  %1 = load i32, ptr %user.addr, align 4, !dbg !6150
  %2 = load i32, ptr %group.addr, align 4, !dbg !6151
  %call = call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #11, !dbg !6152
  %conv = sext i32 %call to i64, !dbg !6152
  ret i64 %conv, !dbg !6153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6154 dso_local i32 @do_fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_lchown16(ptr noundef %filename, i16 noundef zeroext %user, i16 noundef zeroext %group) #3 align 16 !dbg !6157 {
entry:
  %filename.addr = alloca ptr, align 8
  %user.addr = alloca i16, align 2
  %group.addr = alloca i16, align 2
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !6159, metadata !DIExpression()), !dbg !6162
  store i16 %user, ptr %user.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  store i16 %group, ptr %group.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !6163
  %1 = load i16, ptr %user.addr, align 2, !dbg !6164
  %conv = zext i16 %1 to i32, !dbg !6164
  %cmp = icmp eq i32 %conv, 65535, !dbg !6164
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6164

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6164

cond.false:                                       ; preds = %entry
  %2 = load i16, ptr %user.addr, align 2, !dbg !6164
  %conv2 = zext i16 %2 to i32, !dbg !6164
  br label %cond.end, !dbg !6164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6164
  %3 = load i16, ptr %group.addr, align 2, !dbg !6165
  %conv3 = zext i16 %3 to i32, !dbg !6165
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6165
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6165

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6165

cond.false7:                                      ; preds = %cond.end
  %4 = load i16, ptr %group.addr, align 2, !dbg !6165
  %conv8 = zext i16 %4 to i32, !dbg !6165
  br label %cond.end9, !dbg !6165

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6165
  %call = call i64 @ksys_lchown(ptr noundef %0, i32 noundef %cond, i32 noundef %cond10) #11, !dbg !6166
  ret i64 %call, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ksys_lchown(ptr noundef %filename, i32 noundef %user, i32 noundef %group) #3 align 16 !dbg !6168 {
entry:
  %filename.addr = alloca ptr, align 8
  %user.addr = alloca i32, align 4
  %group.addr = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !6170, metadata !DIExpression()), !dbg !6173
  store i32 %user, ptr %user.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6171, metadata !DIExpression()), !dbg !6174
  store i32 %group, ptr %group.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6172, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !6176
  %1 = load i32, ptr %user.addr, align 4, !dbg !6177
  %2 = load i32, ptr %group.addr, align 4, !dbg !6178
  %call = call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 256) #11, !dbg !6179
  %conv = sext i32 %call to i64, !dbg !6179
  ret i64 %conv, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_fchown16(i32 noundef %fd, i16 noundef zeroext %user, i16 noundef zeroext %group) #3 align 16 !dbg !6181 {
entry:
  %fd.addr = alloca i32, align 4
  %user.addr = alloca i16, align 2
  %group.addr = alloca i16, align 2
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !6185, metadata !DIExpression()), !dbg !6188
  store i16 %user, ptr %user.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  store i16 %group, ptr %group.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  %0 = load i32, ptr %fd.addr, align 4, !dbg !6189
  %1 = load i16, ptr %user.addr, align 2, !dbg !6190
  %conv = zext i16 %1 to i32, !dbg !6190
  %cmp = icmp eq i32 %conv, 65535, !dbg !6190
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6190

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6190

cond.false:                                       ; preds = %entry
  %2 = load i16, ptr %user.addr, align 2, !dbg !6190
  %conv2 = zext i16 %2 to i32, !dbg !6190
  br label %cond.end, !dbg !6190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6190
  %3 = load i16, ptr %group.addr, align 2, !dbg !6191
  %conv3 = zext i16 %3 to i32, !dbg !6191
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6191
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6191

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6191

cond.false7:                                      ; preds = %cond.end
  %4 = load i16, ptr %group.addr, align 2, !dbg !6191
  %conv8 = zext i16 %4 to i32, !dbg !6191
  br label %cond.end9, !dbg !6191

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6191
  %call = call i32 @ksys_fchown(i32 noundef %0, i32 noundef %cond, i32 noundef %cond10) #11, !dbg !6192
  %conv11 = sext i32 %call to i64, !dbg !6192
  ret i64 %conv11, !dbg !6193
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6194 dso_local i32 @ksys_fchown(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setregid16(i16 noundef zeroext %rgid, i16 noundef zeroext %egid) #3 align 16 !dbg !6197 {
entry:
  %rgid.addr = alloca i16, align 2
  %egid.addr = alloca i16, align 2
  store i16 %rgid, ptr %rgid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %rgid.addr, metadata !6201, metadata !DIExpression()), !dbg !6203
  store i16 %egid, ptr %egid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %egid.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load i16, ptr %rgid.addr, align 2, !dbg !6204
  %conv = zext i16 %0 to i32, !dbg !6204
  %cmp = icmp eq i32 %conv, 65535, !dbg !6204
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6204

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6204

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %rgid.addr, align 2, !dbg !6204
  %conv2 = zext i16 %1 to i32, !dbg !6204
  br label %cond.end, !dbg !6204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6204
  %2 = load i16, ptr %egid.addr, align 2, !dbg !6205
  %conv3 = zext i16 %2 to i32, !dbg !6205
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6205
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6205

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6205

cond.false7:                                      ; preds = %cond.end
  %3 = load i16, ptr %egid.addr, align 2, !dbg !6205
  %conv8 = zext i16 %3 to i32, !dbg !6205
  br label %cond.end9, !dbg !6205

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6205
  %call = call i64 @__sys_setregid(i32 noundef %cond, i32 noundef %cond10) #11, !dbg !6206
  ret i64 %call, !dbg !6207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6208 dso_local i64 @__sys_setregid(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setgid16(i16 noundef zeroext %gid) #3 align 16 !dbg !6212 {
entry:
  %gid.addr = alloca i16, align 2
  store i16 %gid, ptr %gid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  %0 = load i16, ptr %gid.addr, align 2, !dbg !6218
  %conv = zext i16 %0 to i32, !dbg !6218
  %cmp = icmp eq i32 %conv, 65535, !dbg !6218
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6218

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6218

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %gid.addr, align 2, !dbg !6218
  %conv2 = zext i16 %1 to i32, !dbg !6218
  br label %cond.end, !dbg !6218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6218
  %call = call i64 @__sys_setgid(i32 noundef %cond) #11, !dbg !6219
  ret i64 %call, !dbg !6220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6221 dso_local i64 @__sys_setgid(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setreuid16(i16 noundef zeroext %ruid, i16 noundef zeroext %euid) #3 align 16 !dbg !6224 {
entry:
  %ruid.addr = alloca i16, align 2
  %euid.addr = alloca i16, align 2
  store i16 %ruid, ptr %ruid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ruid.addr, metadata !6228, metadata !DIExpression()), !dbg !6230
  store i16 %euid, ptr %euid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %euid.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  %0 = load i16, ptr %ruid.addr, align 2, !dbg !6231
  %conv = zext i16 %0 to i32, !dbg !6231
  %cmp = icmp eq i32 %conv, 65535, !dbg !6231
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6231

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6231

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %ruid.addr, align 2, !dbg !6231
  %conv2 = zext i16 %1 to i32, !dbg !6231
  br label %cond.end, !dbg !6231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6231
  %2 = load i16, ptr %euid.addr, align 2, !dbg !6232
  %conv3 = zext i16 %2 to i32, !dbg !6232
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6232
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6232

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6232

cond.false7:                                      ; preds = %cond.end
  %3 = load i16, ptr %euid.addr, align 2, !dbg !6232
  %conv8 = zext i16 %3 to i32, !dbg !6232
  br label %cond.end9, !dbg !6232

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6232
  %call = call i64 @__sys_setreuid(i32 noundef %cond, i32 noundef %cond10) #11, !dbg !6233
  ret i64 %call, !dbg !6234
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6235 dso_local i64 @__sys_setreuid(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setuid16(i16 noundef zeroext %uid) #3 align 16 !dbg !6238 {
entry:
  %uid.addr = alloca i16, align 2
  store i16 %uid, ptr %uid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load i16, ptr %uid.addr, align 2, !dbg !6244
  %conv = zext i16 %0 to i32, !dbg !6244
  %cmp = icmp eq i32 %conv, 65535, !dbg !6244
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6244

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6244

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %uid.addr, align 2, !dbg !6244
  %conv2 = zext i16 %1 to i32, !dbg !6244
  br label %cond.end, !dbg !6244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6244
  %call = call i64 @__sys_setuid(i32 noundef %cond) #11, !dbg !6245
  ret i64 %call, !dbg !6246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local i64 @__sys_setuid(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setresuid16(i16 noundef zeroext %ruid, i16 noundef zeroext %euid, i16 noundef zeroext %suid) #3 align 16 !dbg !6250 {
entry:
  %ruid.addr = alloca i16, align 2
  %euid.addr = alloca i16, align 2
  %suid.addr = alloca i16, align 2
  store i16 %ruid, ptr %ruid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %ruid.addr, metadata !6254, metadata !DIExpression()), !dbg !6257
  store i16 %euid, ptr %euid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %euid.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  store i16 %suid, ptr %suid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %suid.addr, metadata !6256, metadata !DIExpression()), !dbg !6257
  %0 = load i16, ptr %ruid.addr, align 2, !dbg !6258
  %conv = zext i16 %0 to i32, !dbg !6258
  %cmp = icmp eq i32 %conv, 65535, !dbg !6258
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6258

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6258

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %ruid.addr, align 2, !dbg !6258
  %conv2 = zext i16 %1 to i32, !dbg !6258
  br label %cond.end, !dbg !6258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6258
  %2 = load i16, ptr %euid.addr, align 2, !dbg !6259
  %conv3 = zext i16 %2 to i32, !dbg !6259
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6259
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6259

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6259

cond.false7:                                      ; preds = %cond.end
  %3 = load i16, ptr %euid.addr, align 2, !dbg !6259
  %conv8 = zext i16 %3 to i32, !dbg !6259
  br label %cond.end9, !dbg !6259

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6259
  %4 = load i16, ptr %suid.addr, align 2, !dbg !6260
  %conv11 = zext i16 %4 to i32, !dbg !6260
  %cmp12 = icmp eq i32 %conv11, 65535, !dbg !6260
  br i1 %cmp12, label %cond.true14, label %cond.false15, !dbg !6260

cond.true14:                                      ; preds = %cond.end9
  br label %cond.end17, !dbg !6260

cond.false15:                                     ; preds = %cond.end9
  %5 = load i16, ptr %suid.addr, align 2, !dbg !6260
  %conv16 = zext i16 %5 to i32, !dbg !6260
  br label %cond.end17, !dbg !6260

cond.end17:                                       ; preds = %cond.false15, %cond.true14
  %cond18 = phi i32 [ -1, %cond.true14 ], [ %conv16, %cond.false15 ], !dbg !6260
  %call = call i64 @__sys_setresuid(i32 noundef %cond, i32 noundef %cond10, i32 noundef %cond18) #11, !dbg !6261
  ret i64 %call, !dbg !6262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6263 dso_local i64 @__sys_setresuid(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getresuid16(ptr noundef %ruidp, ptr noundef %euidp, ptr noundef %suidp) #3 align 16 !dbg !6266 {
entry:
  %ruidp.addr = alloca ptr, align 8
  %euidp.addr = alloca ptr, align 8
  %suidp.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %ruid = alloca i16, align 2
  %euid = alloca i16, align 2
  %suid = alloca i16, align 2
  %tmp50 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i16, align 2
  %__x = alloca i16, align 2
  %__ptr = alloca ptr, align 8
  %tmp52 = alloca i64, align 8
  %tmp56 = alloca i64, align 8
  %__ret_pu57 = alloca i32, align 4
  %__ptr_pu58 = alloca ptr, align 8
  %__val_pu59 = alloca i16, align 2
  %__x60 = alloca i16, align 2
  %__ptr61 = alloca ptr, align 8
  %tmp64 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  %__ret_pu70 = alloca i32, align 4
  %__ptr_pu71 = alloca ptr, align 8
  %__val_pu72 = alloca i16, align 2
  %__x73 = alloca i16, align 2
  %__ptr74 = alloca ptr, align 8
  %tmp77 = alloca i64, align 8
  store ptr %ruidp, ptr %ruidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ruidp.addr, metadata !6270, metadata !DIExpression()), !dbg !6300
  store ptr %euidp, ptr %euidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %euidp.addr, metadata !6271, metadata !DIExpression()), !dbg !6300
  store ptr %suidp, ptr %suidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %suidp.addr, metadata !6272, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #12, !dbg !6301
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6273, metadata !DIExpression()), !dbg !6302
  br label %do.body, !dbg !6303

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6305

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #11, !dbg !6303
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6303
  %0 = load ptr, ptr %cred1, align 32, !dbg !6303
  store ptr %0, ptr %tmp, align 8, !dbg !6305
  %1 = load ptr, ptr %tmp, align 8, !dbg !6303
  store ptr %1, ptr %cred, align 8, !dbg !6302
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #12, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6274, metadata !DIExpression()), !dbg !6308
  call void @llvm.lifetime.start.p0(i64 2, ptr %ruid) #12, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %ruid, metadata !6275, metadata !DIExpression()), !dbg !6310
  call void @llvm.lifetime.start.p0(i64 2, ptr %euid) #12, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %euid, metadata !6276, metadata !DIExpression()), !dbg !6311
  call void @llvm.lifetime.start.p0(i64 2, ptr %suid) #12, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %suid, metadata !6277, metadata !DIExpression()), !dbg !6312
  %2 = load ptr, ptr %cred, align 8, !dbg !6313
  %user_ns = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 22, !dbg !6313
  %3 = load ptr, ptr %user_ns, align 8, !dbg !6313
  %4 = load ptr, ptr %cred, align 8, !dbg !6313
  %uid = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 1, !dbg !6313
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6313
  %5 = load i32, ptr %coerce.dive, align 8, !dbg !6313
  %call3 = call i32 @from_kuid_munged(ptr noundef %3, i32 %5) #11, !dbg !6313
  %and = and i32 %call3, -65536, !dbg !6313
  %tobool = icmp ne i32 %and, 0, !dbg !6313
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6313

cond.true:                                        ; preds = %do.end
  %6 = load i32, ptr @overflowuid, align 4, !dbg !6313
  %conv = trunc i32 %6 to i16, !dbg !6313
  %conv4 = zext i16 %conv to i32, !dbg !6313
  br label %cond.end, !dbg !6313

cond.false:                                       ; preds = %do.end
  %7 = load ptr, ptr %cred, align 8, !dbg !6313
  %user_ns5 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 22, !dbg !6313
  %8 = load ptr, ptr %user_ns5, align 8, !dbg !6313
  %9 = load ptr, ptr %cred, align 8, !dbg !6313
  %uid6 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 1, !dbg !6313
  %coerce.dive7 = getelementptr inbounds %struct.kuid_t, ptr %uid6, i32 0, i32 0, !dbg !6313
  %10 = load i32, ptr %coerce.dive7, align 8, !dbg !6313
  %call8 = call i32 @from_kuid_munged(ptr noundef %8, i32 %10) #11, !dbg !6313
  %conv9 = trunc i32 %call8 to i16, !dbg !6313
  %conv10 = zext i16 %conv9 to i32, !dbg !6313
  br label %cond.end, !dbg !6313

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv10, %cond.false ], !dbg !6313
  %conv11 = trunc i32 %cond to i16, !dbg !6313
  store i16 %conv11, ptr %ruid, align 2, !dbg !6314
  %11 = load ptr, ptr %cred, align 8, !dbg !6315
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 22, !dbg !6315
  %12 = load ptr, ptr %user_ns12, align 8, !dbg !6315
  %13 = load ptr, ptr %cred, align 8, !dbg !6315
  %euid13 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5, !dbg !6315
  %coerce.dive14 = getelementptr inbounds %struct.kuid_t, ptr %euid13, i32 0, i32 0, !dbg !6315
  %14 = load i32, ptr %coerce.dive14, align 8, !dbg !6315
  %call15 = call i32 @from_kuid_munged(ptr noundef %12, i32 %14) #11, !dbg !6315
  %and16 = and i32 %call15, -65536, !dbg !6315
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6315
  br i1 %tobool17, label %cond.true18, label %cond.false21, !dbg !6315

cond.true18:                                      ; preds = %cond.end
  %15 = load i32, ptr @overflowuid, align 4, !dbg !6315
  %conv19 = trunc i32 %15 to i16, !dbg !6315
  %conv20 = zext i16 %conv19 to i32, !dbg !6315
  br label %cond.end28, !dbg !6315

cond.false21:                                     ; preds = %cond.end
  %16 = load ptr, ptr %cred, align 8, !dbg !6315
  %user_ns22 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 22, !dbg !6315
  %17 = load ptr, ptr %user_ns22, align 8, !dbg !6315
  %18 = load ptr, ptr %cred, align 8, !dbg !6315
  %euid23 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 5, !dbg !6315
  %coerce.dive24 = getelementptr inbounds %struct.kuid_t, ptr %euid23, i32 0, i32 0, !dbg !6315
  %19 = load i32, ptr %coerce.dive24, align 8, !dbg !6315
  %call25 = call i32 @from_kuid_munged(ptr noundef %17, i32 %19) #11, !dbg !6315
  %conv26 = trunc i32 %call25 to i16, !dbg !6315
  %conv27 = zext i16 %conv26 to i32, !dbg !6315
  br label %cond.end28, !dbg !6315

cond.end28:                                       ; preds = %cond.false21, %cond.true18
  %cond29 = phi i32 [ %conv20, %cond.true18 ], [ %conv27, %cond.false21 ], !dbg !6315
  %conv30 = trunc i32 %cond29 to i16, !dbg !6315
  store i16 %conv30, ptr %euid, align 2, !dbg !6316
  %20 = load ptr, ptr %cred, align 8, !dbg !6317
  %user_ns31 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 22, !dbg !6317
  %21 = load ptr, ptr %user_ns31, align 8, !dbg !6317
  %22 = load ptr, ptr %cred, align 8, !dbg !6317
  %suid32 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 3, !dbg !6317
  %coerce.dive33 = getelementptr inbounds %struct.kuid_t, ptr %suid32, i32 0, i32 0, !dbg !6317
  %23 = load i32, ptr %coerce.dive33, align 8, !dbg !6317
  %call34 = call i32 @from_kuid_munged(ptr noundef %21, i32 %23) #11, !dbg !6317
  %and35 = and i32 %call34, -65536, !dbg !6317
  %tobool36 = icmp ne i32 %and35, 0, !dbg !6317
  br i1 %tobool36, label %cond.true37, label %cond.false40, !dbg !6317

cond.true37:                                      ; preds = %cond.end28
  %24 = load i32, ptr @overflowuid, align 4, !dbg !6317
  %conv38 = trunc i32 %24 to i16, !dbg !6317
  %conv39 = zext i16 %conv38 to i32, !dbg !6317
  br label %cond.end47, !dbg !6317

cond.false40:                                     ; preds = %cond.end28
  %25 = load ptr, ptr %cred, align 8, !dbg !6317
  %user_ns41 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 22, !dbg !6317
  %26 = load ptr, ptr %user_ns41, align 8, !dbg !6317
  %27 = load ptr, ptr %cred, align 8, !dbg !6317
  %suid42 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 3, !dbg !6317
  %coerce.dive43 = getelementptr inbounds %struct.kuid_t, ptr %suid42, i32 0, i32 0, !dbg !6317
  %28 = load i32, ptr %coerce.dive43, align 8, !dbg !6317
  %call44 = call i32 @from_kuid_munged(ptr noundef %26, i32 %28) #11, !dbg !6317
  %conv45 = trunc i32 %call44 to i16, !dbg !6317
  %conv46 = zext i16 %conv45 to i32, !dbg !6317
  br label %cond.end47, !dbg !6317

cond.end47:                                       ; preds = %cond.false40, %cond.true37
  %cond48 = phi i32 [ %conv39, %cond.true37 ], [ %conv46, %cond.false40 ], !dbg !6317
  %conv49 = trunc i32 %cond48 to i16, !dbg !6317
  store i16 %conv49, ptr %suid, align 2, !dbg !6318
  call void @might_fault() #11, !dbg !6319
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6278, metadata !DIExpression()), !dbg !6320
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6282, metadata !DIExpression()), !dbg !6320
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6283, metadata !DIExpression()), !dbg !6320
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6284, metadata !DIExpression()), !dbg !6320
  %29 = load i16, ptr %ruid, align 2, !dbg !6320
  store i16 %29, ptr %__x, align 2, !dbg !6320
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6285, metadata !DIExpression()), !dbg !6320
  %30 = load ptr, ptr %ruidp.addr, align 8, !dbg !6320
  store ptr %30, ptr %__ptr, align 8, !dbg !6320
  %31 = load ptr, ptr %__ptr, align 8, !dbg !6320
  store ptr %31, ptr %__ptr_pu, align 8, !dbg !6320
  %32 = load i16, ptr %__x, align 2, !dbg !6320
  store i16 %32, ptr %__val_pu, align 2, !dbg !6320
  %33 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6320
  %34 = load ptr, ptr %__ptr_pu, align 8, !dbg !6320
  %35 = load i16, ptr %__val_pu, align 2, !dbg !6320
  %36 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %34, i16 %35, i64 2, i64 %33) #12, !dbg !6320, !srcloc !6321
  %asmresult = extractvalue { ptr, i64 } %36, 0, !dbg !6320
  %asmresult51 = extractvalue { ptr, i64 } %36, 1, !dbg !6320
  %37 = ptrtoint ptr %asmresult to i64, !dbg !6320
  %38 = trunc i64 %37 to i32, !dbg !6320
  store i32 %38, ptr %__ret_pu, align 4, !dbg !6320
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult51), !dbg !6320
  %39 = load ptr, ptr %__ptr, align 8, !dbg !6322
  call void @kmsan_copy_to_user(ptr noundef %39, ptr noundef %__x, i64 noundef 2, i64 noundef 0) #11, !dbg !6322
  %40 = load i32, ptr %__ret_pu, align 4, !dbg !6320
  %conv53 = sext i32 %40 to i64, !dbg !6320
  %expval = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !6320
  store i64 %expval, ptr %tmp52, align 8, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x) #12, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu) #12, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6319
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !6319
  %41 = load i64, ptr %tmp52, align 8, !dbg !6320
  store i64 %41, ptr %tmp50, align 8, !dbg !6319
  %42 = load i64, ptr %tmp50, align 8, !dbg !6319
  %conv54 = trunc i64 %42 to i32, !dbg !6324
  store i32 %conv54, ptr %retval2, align 4, !dbg !6325
  %tobool55 = icmp ne i32 %conv54, 0, !dbg !6325
  br i1 %tobool55, label %if.end, label %land.lhs.true, !dbg !6326

land.lhs.true:                                    ; preds = %cond.end47
  call void @might_fault() #11, !dbg !6327
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu57) #12, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %__ret_pu57, metadata !6286, metadata !DIExpression()), !dbg !6328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu58) #12, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu58, metadata !6289, metadata !DIExpression()), !dbg !6328
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu59) #12, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %__val_pu59, metadata !6290, metadata !DIExpression()), !dbg !6328
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x60) #12, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %__x60, metadata !6291, metadata !DIExpression()), !dbg !6328
  %43 = load i16, ptr %euid, align 2, !dbg !6328
  store i16 %43, ptr %__x60, align 2, !dbg !6328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr61) #12, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %__ptr61, metadata !6292, metadata !DIExpression()), !dbg !6328
  %44 = load ptr, ptr %euidp.addr, align 8, !dbg !6328
  store ptr %44, ptr %__ptr61, align 8, !dbg !6328
  %45 = load ptr, ptr %__ptr61, align 8, !dbg !6328
  store ptr %45, ptr %__ptr_pu58, align 8, !dbg !6328
  %46 = load i16, ptr %__x60, align 2, !dbg !6328
  store i16 %46, ptr %__val_pu59, align 2, !dbg !6328
  %47 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6328
  %48 = load ptr, ptr %__ptr_pu58, align 8, !dbg !6328
  %49 = load i16, ptr %__val_pu59, align 2, !dbg !6328
  %50 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %48, i16 %49, i64 2, i64 %47) #12, !dbg !6328, !srcloc !6329
  %asmresult62 = extractvalue { ptr, i64 } %50, 0, !dbg !6328
  %asmresult63 = extractvalue { ptr, i64 } %50, 1, !dbg !6328
  %51 = ptrtoint ptr %asmresult62 to i64, !dbg !6328
  %52 = trunc i64 %51 to i32, !dbg !6328
  store i32 %52, ptr %__ret_pu57, align 4, !dbg !6328
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult63), !dbg !6328
  %53 = load ptr, ptr %__ptr61, align 8, !dbg !6330
  call void @kmsan_copy_to_user(ptr noundef %53, ptr noundef %__x60, i64 noundef 2, i64 noundef 0) #11, !dbg !6330
  %54 = load i32, ptr %__ret_pu57, align 4, !dbg !6328
  %conv65 = sext i32 %54 to i64, !dbg !6328
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !6328
  store i64 %expval66, ptr %tmp64, align 8, !dbg !6328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr61) #12, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x60) #12, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu59) #12, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu58) #12, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu57) #12, !dbg !6327
  %55 = load i64, ptr %tmp64, align 8, !dbg !6328
  store i64 %55, ptr %tmp56, align 8, !dbg !6327
  %56 = load i64, ptr %tmp56, align 8, !dbg !6327
  %conv67 = trunc i64 %56 to i32, !dbg !6332
  store i32 %conv67, ptr %retval2, align 4, !dbg !6333
  %tobool68 = icmp ne i32 %conv67, 0, !dbg !6333
  br i1 %tobool68, label %if.end, label %if.then, !dbg !6334

if.then:                                          ; preds = %land.lhs.true
  call void @might_fault() #11, !dbg !6335
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu70) #12, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__ret_pu70, metadata !6293, metadata !DIExpression()), !dbg !6336
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu71) #12, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu71, metadata !6296, metadata !DIExpression()), !dbg !6336
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu72) #12, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__val_pu72, metadata !6297, metadata !DIExpression()), !dbg !6336
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x73) #12, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__x73, metadata !6298, metadata !DIExpression()), !dbg !6336
  %57 = load i16, ptr %suid, align 2, !dbg !6336
  store i16 %57, ptr %__x73, align 2, !dbg !6336
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr74) #12, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__ptr74, metadata !6299, metadata !DIExpression()), !dbg !6336
  %58 = load ptr, ptr %suidp.addr, align 8, !dbg !6336
  store ptr %58, ptr %__ptr74, align 8, !dbg !6336
  %59 = load ptr, ptr %__ptr74, align 8, !dbg !6336
  store ptr %59, ptr %__ptr_pu71, align 8, !dbg !6336
  %60 = load i16, ptr %__x73, align 2, !dbg !6336
  store i16 %60, ptr %__val_pu72, align 2, !dbg !6336
  %61 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6336
  %62 = load ptr, ptr %__ptr_pu71, align 8, !dbg !6336
  %63 = load i16, ptr %__val_pu72, align 2, !dbg !6336
  %64 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %62, i16 %63, i64 2, i64 %61) #12, !dbg !6336, !srcloc !6337
  %asmresult75 = extractvalue { ptr, i64 } %64, 0, !dbg !6336
  %asmresult76 = extractvalue { ptr, i64 } %64, 1, !dbg !6336
  %65 = ptrtoint ptr %asmresult75 to i64, !dbg !6336
  %66 = trunc i64 %65 to i32, !dbg !6336
  store i32 %66, ptr %__ret_pu70, align 4, !dbg !6336
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult76), !dbg !6336
  %67 = load ptr, ptr %__ptr74, align 8, !dbg !6338
  call void @kmsan_copy_to_user(ptr noundef %67, ptr noundef %__x73, i64 noundef 2, i64 noundef 0) #11, !dbg !6338
  %68 = load i32, ptr %__ret_pu70, align 4, !dbg !6336
  %conv78 = sext i32 %68 to i64, !dbg !6336
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !6336
  store i64 %expval79, ptr %tmp77, align 8, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr74) #12, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x73) #12, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu72) #12, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu71) #12, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu70) #12, !dbg !6335
  %69 = load i64, ptr %tmp77, align 8, !dbg !6336
  store i64 %69, ptr %tmp69, align 8, !dbg !6335
  %70 = load i64, ptr %tmp69, align 8, !dbg !6335
  %conv80 = trunc i64 %70 to i32, !dbg !6340
  store i32 %conv80, ptr %retval2, align 4, !dbg !6341
  br label %if.end, !dbg !6342

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end47
  %71 = load i32, ptr %retval2, align 4, !dbg !6343
  %conv81 = sext i32 %71 to i64, !dbg !6343
  call void @llvm.lifetime.end.p0(i64 2, ptr %suid) #12, !dbg !6344
  call void @llvm.lifetime.end.p0(i64 2, ptr %euid) #12, !dbg !6344
  call void @llvm.lifetime.end.p0(i64 2, ptr %ruid) #12, !dbg !6344
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #12, !dbg !6344
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #12, !dbg !6344
  ret i64 %conv81, !dbg !6345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !6346 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6351, metadata !DIExpression()), !dbg !6357
  br label %do.body, !dbg !6357

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6353, metadata !DIExpression()), !dbg !6358
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6358
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6357
  br label %do.cond, !dbg !6358

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6358

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6355, metadata !DIExpression()), !dbg !6359
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !6359, !srcloc !6360
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6359
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6359
  %3 = inttoptr i64 %2 to ptr, !dbg !6359
  store ptr %3, ptr %tmp, align 8, !dbg !6359
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !6357
  %4 = load ptr, ptr %tmp, align 8, !dbg !6359
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6357
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6357
  store ptr %5, ptr %tmp1, align 8, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6361
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6357
  ret ptr %6, !dbg !6362
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !6363 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6367, metadata !DIExpression()), !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6368, metadata !DIExpression()), !dbg !6371
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #12, !dbg !6372
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6369, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6374
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6375
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6375
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #11, !dbg !6375
  store i32 %call, ptr %uid, align 4, !dbg !6373
  %2 = load i32, ptr %uid, align 4, !dbg !6376
  %cmp = icmp eq i32 %2, -1, !dbg !6378
  br i1 %cmp, label %if.then, label %if.end, !dbg !6379

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !6380
  store i32 %3, ptr %uid, align 4, !dbg !6381
  br label %if.end, !dbg !6382

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #12, !dbg !6384
  ret i32 %4, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #3 align 16 !dbg !6386 {
entry:
  ret void, !dbg !6388
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #3 align 16 !dbg !6389 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6394, metadata !DIExpression()), !dbg !6398
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6395, metadata !DIExpression()), !dbg !6399
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6396, metadata !DIExpression()), !dbg !6400
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6397, metadata !DIExpression()), !dbg !6401
  ret void, !dbg !6402
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #3 align 16 !dbg !6403 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6405, metadata !DIExpression()), !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !6406, metadata !DIExpression()), !dbg !6408
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !6409
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6409
  %call = call i32 @__kuid_val(i32 %0) #11, !dbg !6409
  ret i32 %call, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #3 align 16 !dbg !6411 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !6415, metadata !DIExpression()), !dbg !6416
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !6417
  %0 = load i32, ptr %val, align 4, !dbg !6417
  ret i32 %0, !dbg !6418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setresgid16(i16 noundef zeroext %rgid, i16 noundef zeroext %egid, i16 noundef zeroext %sgid) #3 align 16 !dbg !6419 {
entry:
  %rgid.addr = alloca i16, align 2
  %egid.addr = alloca i16, align 2
  %sgid.addr = alloca i16, align 2
  store i16 %rgid, ptr %rgid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %rgid.addr, metadata !6423, metadata !DIExpression()), !dbg !6426
  store i16 %egid, ptr %egid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %egid.addr, metadata !6424, metadata !DIExpression()), !dbg !6426
  store i16 %sgid, ptr %sgid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %sgid.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load i16, ptr %rgid.addr, align 2, !dbg !6427
  %conv = zext i16 %0 to i32, !dbg !6427
  %cmp = icmp eq i32 %conv, 65535, !dbg !6427
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6427

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6427

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %rgid.addr, align 2, !dbg !6427
  %conv2 = zext i16 %1 to i32, !dbg !6427
  br label %cond.end, !dbg !6427

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6427
  %2 = load i16, ptr %egid.addr, align 2, !dbg !6428
  %conv3 = zext i16 %2 to i32, !dbg !6428
  %cmp4 = icmp eq i32 %conv3, 65535, !dbg !6428
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !6428

cond.true6:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !6428

cond.false7:                                      ; preds = %cond.end
  %3 = load i16, ptr %egid.addr, align 2, !dbg !6428
  %conv8 = zext i16 %3 to i32, !dbg !6428
  br label %cond.end9, !dbg !6428

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ -1, %cond.true6 ], [ %conv8, %cond.false7 ], !dbg !6428
  %4 = load i16, ptr %sgid.addr, align 2, !dbg !6429
  %conv11 = zext i16 %4 to i32, !dbg !6429
  %cmp12 = icmp eq i32 %conv11, 65535, !dbg !6429
  br i1 %cmp12, label %cond.true14, label %cond.false15, !dbg !6429

cond.true14:                                      ; preds = %cond.end9
  br label %cond.end17, !dbg !6429

cond.false15:                                     ; preds = %cond.end9
  %5 = load i16, ptr %sgid.addr, align 2, !dbg !6429
  %conv16 = zext i16 %5 to i32, !dbg !6429
  br label %cond.end17, !dbg !6429

cond.end17:                                       ; preds = %cond.false15, %cond.true14
  %cond18 = phi i32 [ -1, %cond.true14 ], [ %conv16, %cond.false15 ], !dbg !6429
  %call = call i64 @__sys_setresgid(i32 noundef %cond, i32 noundef %cond10, i32 noundef %cond18) #11, !dbg !6430
  ret i64 %call, !dbg !6431
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6432 dso_local i64 @__sys_setresgid(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getresgid16(ptr noundef %rgidp, ptr noundef %egidp, ptr noundef %sgidp) #3 align 16 !dbg !6435 {
entry:
  %rgidp.addr = alloca ptr, align 8
  %egidp.addr = alloca ptr, align 8
  %sgidp.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %rgid = alloca i16, align 2
  %egid = alloca i16, align 2
  %sgid = alloca i16, align 2
  %tmp50 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i16, align 2
  %__x = alloca i16, align 2
  %__ptr = alloca ptr, align 8
  %tmp52 = alloca i64, align 8
  %tmp56 = alloca i64, align 8
  %__ret_pu57 = alloca i32, align 4
  %__ptr_pu58 = alloca ptr, align 8
  %__val_pu59 = alloca i16, align 2
  %__x60 = alloca i16, align 2
  %__ptr61 = alloca ptr, align 8
  %tmp64 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  %__ret_pu70 = alloca i32, align 4
  %__ptr_pu71 = alloca ptr, align 8
  %__val_pu72 = alloca i16, align 2
  %__x73 = alloca i16, align 2
  %__ptr74 = alloca ptr, align 8
  %tmp77 = alloca i64, align 8
  store ptr %rgidp, ptr %rgidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rgidp.addr, metadata !6439, metadata !DIExpression()), !dbg !6469
  store ptr %egidp, ptr %egidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %egidp.addr, metadata !6440, metadata !DIExpression()), !dbg !6469
  store ptr %sgidp, ptr %sgidp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgidp.addr, metadata !6441, metadata !DIExpression()), !dbg !6469
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #12, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6442, metadata !DIExpression()), !dbg !6471
  br label %do.body, !dbg !6472

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6474

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6474

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #11, !dbg !6472
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6472
  %0 = load ptr, ptr %cred1, align 32, !dbg !6472
  store ptr %0, ptr %tmp, align 8, !dbg !6474
  %1 = load ptr, ptr %tmp, align 8, !dbg !6472
  store ptr %1, ptr %cred, align 8, !dbg !6471
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #12, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6443, metadata !DIExpression()), !dbg !6477
  call void @llvm.lifetime.start.p0(i64 2, ptr %rgid) #12, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %rgid, metadata !6444, metadata !DIExpression()), !dbg !6479
  call void @llvm.lifetime.start.p0(i64 2, ptr %egid) #12, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %egid, metadata !6445, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 2, ptr %sgid) #12, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %sgid, metadata !6446, metadata !DIExpression()), !dbg !6481
  %2 = load ptr, ptr %cred, align 8, !dbg !6482
  %user_ns = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 22, !dbg !6482
  %3 = load ptr, ptr %user_ns, align 8, !dbg !6482
  %4 = load ptr, ptr %cred, align 8, !dbg !6482
  %gid = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 2, !dbg !6482
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6482
  %5 = load i32, ptr %coerce.dive, align 4, !dbg !6482
  %call3 = call i32 @from_kgid_munged(ptr noundef %3, i32 %5) #11, !dbg !6482
  %and = and i32 %call3, -65536, !dbg !6482
  %tobool = icmp ne i32 %and, 0, !dbg !6482
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6482

cond.true:                                        ; preds = %do.end
  %6 = load i32, ptr @overflowgid, align 4, !dbg !6482
  %conv = trunc i32 %6 to i16, !dbg !6482
  %conv4 = zext i16 %conv to i32, !dbg !6482
  br label %cond.end, !dbg !6482

cond.false:                                       ; preds = %do.end
  %7 = load ptr, ptr %cred, align 8, !dbg !6482
  %user_ns5 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 22, !dbg !6482
  %8 = load ptr, ptr %user_ns5, align 8, !dbg !6482
  %9 = load ptr, ptr %cred, align 8, !dbg !6482
  %gid6 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 2, !dbg !6482
  %coerce.dive7 = getelementptr inbounds %struct.kgid_t, ptr %gid6, i32 0, i32 0, !dbg !6482
  %10 = load i32, ptr %coerce.dive7, align 4, !dbg !6482
  %call8 = call i32 @from_kgid_munged(ptr noundef %8, i32 %10) #11, !dbg !6482
  %conv9 = trunc i32 %call8 to i16, !dbg !6482
  %conv10 = zext i16 %conv9 to i32, !dbg !6482
  br label %cond.end, !dbg !6482

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ %conv10, %cond.false ], !dbg !6482
  %conv11 = trunc i32 %cond to i16, !dbg !6482
  store i16 %conv11, ptr %rgid, align 2, !dbg !6483
  %11 = load ptr, ptr %cred, align 8, !dbg !6484
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 22, !dbg !6484
  %12 = load ptr, ptr %user_ns12, align 8, !dbg !6484
  %13 = load ptr, ptr %cred, align 8, !dbg !6484
  %egid13 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 6, !dbg !6484
  %coerce.dive14 = getelementptr inbounds %struct.kgid_t, ptr %egid13, i32 0, i32 0, !dbg !6484
  %14 = load i32, ptr %coerce.dive14, align 4, !dbg !6484
  %call15 = call i32 @from_kgid_munged(ptr noundef %12, i32 %14) #11, !dbg !6484
  %and16 = and i32 %call15, -65536, !dbg !6484
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6484
  br i1 %tobool17, label %cond.true18, label %cond.false21, !dbg !6484

cond.true18:                                      ; preds = %cond.end
  %15 = load i32, ptr @overflowgid, align 4, !dbg !6484
  %conv19 = trunc i32 %15 to i16, !dbg !6484
  %conv20 = zext i16 %conv19 to i32, !dbg !6484
  br label %cond.end28, !dbg !6484

cond.false21:                                     ; preds = %cond.end
  %16 = load ptr, ptr %cred, align 8, !dbg !6484
  %user_ns22 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 22, !dbg !6484
  %17 = load ptr, ptr %user_ns22, align 8, !dbg !6484
  %18 = load ptr, ptr %cred, align 8, !dbg !6484
  %egid23 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 6, !dbg !6484
  %coerce.dive24 = getelementptr inbounds %struct.kgid_t, ptr %egid23, i32 0, i32 0, !dbg !6484
  %19 = load i32, ptr %coerce.dive24, align 4, !dbg !6484
  %call25 = call i32 @from_kgid_munged(ptr noundef %17, i32 %19) #11, !dbg !6484
  %conv26 = trunc i32 %call25 to i16, !dbg !6484
  %conv27 = zext i16 %conv26 to i32, !dbg !6484
  br label %cond.end28, !dbg !6484

cond.end28:                                       ; preds = %cond.false21, %cond.true18
  %cond29 = phi i32 [ %conv20, %cond.true18 ], [ %conv27, %cond.false21 ], !dbg !6484
  %conv30 = trunc i32 %cond29 to i16, !dbg !6484
  store i16 %conv30, ptr %egid, align 2, !dbg !6485
  %20 = load ptr, ptr %cred, align 8, !dbg !6486
  %user_ns31 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 22, !dbg !6486
  %21 = load ptr, ptr %user_ns31, align 8, !dbg !6486
  %22 = load ptr, ptr %cred, align 8, !dbg !6486
  %sgid32 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 4, !dbg !6486
  %coerce.dive33 = getelementptr inbounds %struct.kgid_t, ptr %sgid32, i32 0, i32 0, !dbg !6486
  %23 = load i32, ptr %coerce.dive33, align 4, !dbg !6486
  %call34 = call i32 @from_kgid_munged(ptr noundef %21, i32 %23) #11, !dbg !6486
  %and35 = and i32 %call34, -65536, !dbg !6486
  %tobool36 = icmp ne i32 %and35, 0, !dbg !6486
  br i1 %tobool36, label %cond.true37, label %cond.false40, !dbg !6486

cond.true37:                                      ; preds = %cond.end28
  %24 = load i32, ptr @overflowgid, align 4, !dbg !6486
  %conv38 = trunc i32 %24 to i16, !dbg !6486
  %conv39 = zext i16 %conv38 to i32, !dbg !6486
  br label %cond.end47, !dbg !6486

cond.false40:                                     ; preds = %cond.end28
  %25 = load ptr, ptr %cred, align 8, !dbg !6486
  %user_ns41 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 22, !dbg !6486
  %26 = load ptr, ptr %user_ns41, align 8, !dbg !6486
  %27 = load ptr, ptr %cred, align 8, !dbg !6486
  %sgid42 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 4, !dbg !6486
  %coerce.dive43 = getelementptr inbounds %struct.kgid_t, ptr %sgid42, i32 0, i32 0, !dbg !6486
  %28 = load i32, ptr %coerce.dive43, align 4, !dbg !6486
  %call44 = call i32 @from_kgid_munged(ptr noundef %26, i32 %28) #11, !dbg !6486
  %conv45 = trunc i32 %call44 to i16, !dbg !6486
  %conv46 = zext i16 %conv45 to i32, !dbg !6486
  br label %cond.end47, !dbg !6486

cond.end47:                                       ; preds = %cond.false40, %cond.true37
  %cond48 = phi i32 [ %conv39, %cond.true37 ], [ %conv46, %cond.false40 ], !dbg !6486
  %conv49 = trunc i32 %cond48 to i16, !dbg !6486
  store i16 %conv49, ptr %sgid, align 2, !dbg !6487
  call void @might_fault() #11, !dbg !6488
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6447, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6451, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6452, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6453, metadata !DIExpression()), !dbg !6489
  %29 = load i16, ptr %rgid, align 2, !dbg !6489
  store i16 %29, ptr %__x, align 2, !dbg !6489
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6454, metadata !DIExpression()), !dbg !6489
  %30 = load ptr, ptr %rgidp.addr, align 8, !dbg !6489
  store ptr %30, ptr %__ptr, align 8, !dbg !6489
  %31 = load ptr, ptr %__ptr, align 8, !dbg !6489
  store ptr %31, ptr %__ptr_pu, align 8, !dbg !6489
  %32 = load i16, ptr %__x, align 2, !dbg !6489
  store i16 %32, ptr %__val_pu, align 2, !dbg !6489
  %33 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6489
  %34 = load ptr, ptr %__ptr_pu, align 8, !dbg !6489
  %35 = load i16, ptr %__val_pu, align 2, !dbg !6489
  %36 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %34, i16 %35, i64 2, i64 %33) #12, !dbg !6489, !srcloc !6490
  %asmresult = extractvalue { ptr, i64 } %36, 0, !dbg !6489
  %asmresult51 = extractvalue { ptr, i64 } %36, 1, !dbg !6489
  %37 = ptrtoint ptr %asmresult to i64, !dbg !6489
  %38 = trunc i64 %37 to i32, !dbg !6489
  store i32 %38, ptr %__ret_pu, align 4, !dbg !6489
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult51), !dbg !6489
  %39 = load ptr, ptr %__ptr, align 8, !dbg !6491
  call void @kmsan_copy_to_user(ptr noundef %39, ptr noundef %__x, i64 noundef 2, i64 noundef 0) #11, !dbg !6491
  %40 = load i32, ptr %__ret_pu, align 4, !dbg !6489
  %conv53 = sext i32 %40 to i64, !dbg !6489
  %expval = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !6489
  store i64 %expval, ptr %tmp52, align 8, !dbg !6489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x) #12, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu) #12, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !6488
  %41 = load i64, ptr %tmp52, align 8, !dbg !6489
  store i64 %41, ptr %tmp50, align 8, !dbg !6488
  %42 = load i64, ptr %tmp50, align 8, !dbg !6488
  %conv54 = trunc i64 %42 to i32, !dbg !6493
  store i32 %conv54, ptr %retval2, align 4, !dbg !6494
  %tobool55 = icmp ne i32 %conv54, 0, !dbg !6494
  br i1 %tobool55, label %if.end, label %land.lhs.true, !dbg !6495

land.lhs.true:                                    ; preds = %cond.end47
  call void @might_fault() #11, !dbg !6496
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu57) #12, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__ret_pu57, metadata !6455, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu58) #12, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu58, metadata !6458, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu59) #12, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__val_pu59, metadata !6459, metadata !DIExpression()), !dbg !6497
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x60) #12, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__x60, metadata !6460, metadata !DIExpression()), !dbg !6497
  %43 = load i16, ptr %egid, align 2, !dbg !6497
  store i16 %43, ptr %__x60, align 2, !dbg !6497
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr61) #12, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__ptr61, metadata !6461, metadata !DIExpression()), !dbg !6497
  %44 = load ptr, ptr %egidp.addr, align 8, !dbg !6497
  store ptr %44, ptr %__ptr61, align 8, !dbg !6497
  %45 = load ptr, ptr %__ptr61, align 8, !dbg !6497
  store ptr %45, ptr %__ptr_pu58, align 8, !dbg !6497
  %46 = load i16, ptr %__x60, align 2, !dbg !6497
  store i16 %46, ptr %__val_pu59, align 2, !dbg !6497
  %47 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6497
  %48 = load ptr, ptr %__ptr_pu58, align 8, !dbg !6497
  %49 = load i16, ptr %__val_pu59, align 2, !dbg !6497
  %50 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %48, i16 %49, i64 2, i64 %47) #12, !dbg !6497, !srcloc !6498
  %asmresult62 = extractvalue { ptr, i64 } %50, 0, !dbg !6497
  %asmresult63 = extractvalue { ptr, i64 } %50, 1, !dbg !6497
  %51 = ptrtoint ptr %asmresult62 to i64, !dbg !6497
  %52 = trunc i64 %51 to i32, !dbg !6497
  store i32 %52, ptr %__ret_pu57, align 4, !dbg !6497
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult63), !dbg !6497
  %53 = load ptr, ptr %__ptr61, align 8, !dbg !6499
  call void @kmsan_copy_to_user(ptr noundef %53, ptr noundef %__x60, i64 noundef 2, i64 noundef 0) #11, !dbg !6499
  %54 = load i32, ptr %__ret_pu57, align 4, !dbg !6497
  %conv65 = sext i32 %54 to i64, !dbg !6497
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !6497
  store i64 %expval66, ptr %tmp64, align 8, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr61) #12, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x60) #12, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu59) #12, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu58) #12, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu57) #12, !dbg !6496
  %55 = load i64, ptr %tmp64, align 8, !dbg !6497
  store i64 %55, ptr %tmp56, align 8, !dbg !6496
  %56 = load i64, ptr %tmp56, align 8, !dbg !6496
  %conv67 = trunc i64 %56 to i32, !dbg !6501
  store i32 %conv67, ptr %retval2, align 4, !dbg !6502
  %tobool68 = icmp ne i32 %conv67, 0, !dbg !6502
  br i1 %tobool68, label %if.end, label %if.then, !dbg !6503

if.then:                                          ; preds = %land.lhs.true
  call void @might_fault() #11, !dbg !6504
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu70) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__ret_pu70, metadata !6462, metadata !DIExpression()), !dbg !6505
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu71) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu71, metadata !6465, metadata !DIExpression()), !dbg !6505
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu72) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__val_pu72, metadata !6466, metadata !DIExpression()), !dbg !6505
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x73) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__x73, metadata !6467, metadata !DIExpression()), !dbg !6505
  %57 = load i16, ptr %sgid, align 2, !dbg !6505
  store i16 %57, ptr %__x73, align 2, !dbg !6505
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr74) #12, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__ptr74, metadata !6468, metadata !DIExpression()), !dbg !6505
  %58 = load ptr, ptr %sgidp.addr, align 8, !dbg !6505
  store ptr %58, ptr %__ptr74, align 8, !dbg !6505
  %59 = load ptr, ptr %__ptr74, align 8, !dbg !6505
  store ptr %59, ptr %__ptr_pu71, align 8, !dbg !6505
  %60 = load i16, ptr %__x73, align 2, !dbg !6505
  store i16 %60, ptr %__val_pu72, align 2, !dbg !6505
  %61 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6505
  %62 = load ptr, ptr %__ptr_pu71, align 8, !dbg !6505
  %63 = load i16, ptr %__val_pu72, align 2, !dbg !6505
  %64 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %62, i16 %63, i64 2, i64 %61) #12, !dbg !6505, !srcloc !6506
  %asmresult75 = extractvalue { ptr, i64 } %64, 0, !dbg !6505
  %asmresult76 = extractvalue { ptr, i64 } %64, 1, !dbg !6505
  %65 = ptrtoint ptr %asmresult75 to i64, !dbg !6505
  %66 = trunc i64 %65 to i32, !dbg !6505
  store i32 %66, ptr %__ret_pu70, align 4, !dbg !6505
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult76), !dbg !6505
  %67 = load ptr, ptr %__ptr74, align 8, !dbg !6507
  call void @kmsan_copy_to_user(ptr noundef %67, ptr noundef %__x73, i64 noundef 2, i64 noundef 0) #11, !dbg !6507
  %68 = load i32, ptr %__ret_pu70, align 4, !dbg !6505
  %conv78 = sext i32 %68 to i64, !dbg !6505
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !6505
  store i64 %expval79, ptr %tmp77, align 8, !dbg !6505
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr74) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x73) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu72) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu71) #12, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu70) #12, !dbg !6504
  %69 = load i64, ptr %tmp77, align 8, !dbg !6505
  store i64 %69, ptr %tmp69, align 8, !dbg !6504
  %70 = load i64, ptr %tmp69, align 8, !dbg !6504
  %conv80 = trunc i64 %70 to i32, !dbg !6509
  store i32 %conv80, ptr %retval2, align 4, !dbg !6510
  br label %if.end, !dbg !6511

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end47
  %71 = load i32, ptr %retval2, align 4, !dbg !6512
  %conv81 = sext i32 %71 to i64, !dbg !6512
  call void @llvm.lifetime.end.p0(i64 2, ptr %sgid) #12, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 2, ptr %egid) #12, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 2, ptr %rgid) #12, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #12, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #12, !dbg !6513
  ret i64 %conv81, !dbg !6514
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !6515 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6519, metadata !DIExpression()), !dbg !6522
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6520, metadata !DIExpression()), !dbg !6523
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #12, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6521, metadata !DIExpression()), !dbg !6525
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6526
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6527
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !6527
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #11, !dbg !6527
  store i32 %call, ptr %gid, align 4, !dbg !6525
  %2 = load i32, ptr %gid, align 4, !dbg !6528
  %cmp = icmp eq i32 %2, -1, !dbg !6530
  br i1 %cmp, label %if.then, label %if.end, !dbg !6531

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !6532
  store i32 %3, ptr %gid, align 4, !dbg !6533
  br label %if.end, !dbg !6534

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #12, !dbg !6536
  ret i32 %4, !dbg !6537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #3 align 16 !dbg !6538 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6540, metadata !DIExpression()), !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6541, metadata !DIExpression()), !dbg !6543
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6544
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6544
  %call = call i32 @__kgid_val(i32 %0) #11, !dbg !6544
  ret i32 %call, !dbg !6545
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #3 align 16 !dbg !6546 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6550, metadata !DIExpression()), !dbg !6551
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6552
  %0 = load i32, ptr %val, align 4, !dbg !6552
  ret i32 %0, !dbg !6553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setfsuid16(i16 noundef zeroext %uid) #3 align 16 !dbg !6554 {
entry:
  %uid.addr = alloca i16, align 2
  store i16 %uid, ptr %uid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load i16, ptr %uid.addr, align 2, !dbg !6558
  %conv = zext i16 %0 to i32, !dbg !6558
  %cmp = icmp eq i32 %conv, 65535, !dbg !6558
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6558

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6558

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %uid.addr, align 2, !dbg !6558
  %conv2 = zext i16 %1 to i32, !dbg !6558
  br label %cond.end, !dbg !6558

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6558
  %call = call i64 @__sys_setfsuid(i32 noundef %cond) #11, !dbg !6559
  ret i64 %call, !dbg !6560
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6561 dso_local i64 @__sys_setfsuid(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setfsgid16(i16 noundef zeroext %gid) #3 align 16 !dbg !6562 {
entry:
  %gid.addr = alloca i16, align 2
  store i16 %gid, ptr %gid.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6564, metadata !DIExpression()), !dbg !6565
  %0 = load i16, ptr %gid.addr, align 2, !dbg !6566
  %conv = zext i16 %0 to i32, !dbg !6566
  %cmp = icmp eq i32 %conv, 65535, !dbg !6566
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6566

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6566

cond.false:                                       ; preds = %entry
  %1 = load i16, ptr %gid.addr, align 2, !dbg !6566
  %conv2 = zext i16 %1 to i32, !dbg !6566
  br label %cond.end, !dbg !6566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv2, %cond.false ], !dbg !6566
  %call = call i64 @__sys_setfsgid(i32 noundef %cond) #11, !dbg !6567
  ret i64 %call, !dbg !6568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6569 dso_local i64 @__sys_setfsgid(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getgroups16(i32 noundef %gidsetsize, ptr noundef %grouplist) #3 align 16 !dbg !6570 {
entry:
  %retval = alloca i64, align 8
  %gidsetsize.addr = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %cred = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gidsetsize, ptr %gidsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6574, metadata !DIExpression()), !dbg !6579
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6575, metadata !DIExpression()), !dbg !6579
  call void @llvm.lifetime.start.p0(i64 8, ptr %cred) #12, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %cred, metadata !6576, metadata !DIExpression()), !dbg !6581
  br label %do.body, !dbg !6582

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6584

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6584

do.end:                                           ; preds = %do.cond
  %call = call ptr @get_current() #11, !dbg !6582
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 94, !dbg !6582
  %0 = load ptr, ptr %cred1, align 32, !dbg !6582
  store ptr %0, ptr %tmp, align 8, !dbg !6584
  %1 = load ptr, ptr %tmp, align 8, !dbg !6582
  store ptr %1, ptr %cred, align 8, !dbg !6581
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6577, metadata !DIExpression()), !dbg !6587
  %2 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6588
  %cmp = icmp slt i32 %2, 0, !dbg !6590
  br i1 %cmp, label %if.then, label %if.end, !dbg !6591

if.then:                                          ; preds = %do.end
  store i64 -22, ptr %retval, align 8, !dbg !6592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6592

if.end:                                           ; preds = %do.end
  %3 = load ptr, ptr %cred, align 8, !dbg !6593
  %group_info = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24, !dbg !6594
  %4 = load ptr, ptr %group_info, align 8, !dbg !6594
  %ngroups = getelementptr inbounds %struct.group_info, ptr %4, i32 0, i32 1, !dbg !6595
  %5 = load i32, ptr %ngroups, align 4, !dbg !6595
  store i32 %5, ptr %i, align 4, !dbg !6596
  %6 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6597
  %tobool = icmp ne i32 %6, 0, !dbg !6597
  br i1 %tobool, label %if.then2, label %if.end11, !dbg !6599

if.then2:                                         ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !6600
  %8 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6603
  %cmp3 = icmp sgt i32 %7, %8, !dbg !6604
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6605

if.then4:                                         ; preds = %if.then2
  store i32 -22, ptr %i, align 4, !dbg !6606
  br label %out, !dbg !6608

if.end5:                                          ; preds = %if.then2
  %9 = load ptr, ptr %grouplist.addr, align 8, !dbg !6609
  %10 = load ptr, ptr %cred, align 8, !dbg !6611
  %group_info6 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 24, !dbg !6612
  %11 = load ptr, ptr %group_info6, align 8, !dbg !6612
  %call7 = call i32 @groups16_to_user(ptr noundef %9, ptr noundef %11) #11, !dbg !6613
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6613
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6614

if.then9:                                         ; preds = %if.end5
  store i32 -14, ptr %i, align 4, !dbg !6615
  br label %out, !dbg !6617

if.end10:                                         ; preds = %if.end5
  br label %if.end11, !dbg !6618

if.end11:                                         ; preds = %if.end10, %if.end
  br label %out, !dbg !6597

out:                                              ; preds = %if.end11, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !6578), !dbg !6619
  %12 = load i32, ptr %i, align 4, !dbg !6620
  %conv = sext i32 %12 to i64, !dbg !6620
  store i64 %conv, ptr %retval, align 8, !dbg !6621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6621

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6622
  call void @llvm.lifetime.end.p0(i64 8, ptr %cred) #12, !dbg !6622
  %13 = load i64, ptr %retval, align 8, !dbg !6622
  ret i64 %13, !dbg !6622
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @groups16_to_user(ptr noundef %grouplist, ptr noundef %group_info) #0 align 16 !dbg !6623 {
entry:
  %retval = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %group_info.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %i = alloca i32, align 4
  %group = alloca i16, align 2
  %kgid = alloca %struct.kgid_t, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i16, align 2
  %__x = alloca i16, align 2
  %__ptr = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6627, metadata !DIExpression()), !dbg !6644
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6628, metadata !DIExpression()), !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #12, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !6629, metadata !DIExpression()), !dbg !6647
  %call = call ptr @current_user_ns() #11, !dbg !6648
  store ptr %call, ptr %user_ns, align 8, !dbg !6647
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6649
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6630, metadata !DIExpression()), !dbg !6650
  call void @llvm.lifetime.start.p0(i64 2, ptr %group) #12, !dbg !6651
  call void @llvm.dbg.declare(metadata ptr %group, metadata !6631, metadata !DIExpression()), !dbg !6652
  call void @llvm.lifetime.start.p0(i64 4, ptr %kgid) #12, !dbg !6653
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6632, metadata !DIExpression()), !dbg !6654
  store i32 0, ptr %i, align 4, !dbg !6655
  br label %for.cond, !dbg !6656

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6657
  %1 = load ptr, ptr %group_info.addr, align 8, !dbg !6658
  %ngroups = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 1, !dbg !6659
  %2 = load i32, ptr %ngroups, align 4, !dbg !6659
  %cmp = icmp slt i32 %0, %2, !dbg !6660
  br i1 %cmp, label %for.body, label %for.end, !dbg !6661

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %group_info.addr, align 8, !dbg !6662
  %gid = getelementptr inbounds %struct.group_info, ptr %3, i32 0, i32 2, !dbg !6663
  %4 = load i32, ptr %i, align 4, !dbg !6664
  %idxprom = sext i32 %4 to i64, !dbg !6662
  %arrayidx = getelementptr [0 x %struct.kgid_t], ptr %gid, i64 0, i64 %idxprom, !dbg !6662
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %kgid, ptr align 4 %arrayidx, i64 4, i1 false), !dbg !6662
  %5 = load ptr, ptr %user_ns, align 8, !dbg !6665
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6665
  %6 = load i32, ptr %coerce.dive, align 4, !dbg !6665
  %call1 = call i32 @from_kgid_munged(ptr noundef %5, i32 %6) #11, !dbg !6665
  %and = and i32 %call1, -65536, !dbg !6665
  %tobool = icmp ne i32 %and, 0, !dbg !6665
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6665

cond.true:                                        ; preds = %for.body
  %7 = load i32, ptr @overflowgid, align 4, !dbg !6665
  %conv = trunc i32 %7 to i16, !dbg !6665
  %conv2 = zext i16 %conv to i32, !dbg !6665
  br label %cond.end, !dbg !6665

cond.false:                                       ; preds = %for.body
  %8 = load ptr, ptr %user_ns, align 8, !dbg !6665
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6665
  %9 = load i32, ptr %coerce.dive3, align 4, !dbg !6665
  %call4 = call i32 @from_kgid_munged(ptr noundef %8, i32 %9) #11, !dbg !6665
  %conv5 = trunc i32 %call4 to i16, !dbg !6665
  %conv6 = zext i16 %conv5 to i32, !dbg !6665
  br label %cond.end, !dbg !6665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %conv6, %cond.false ], !dbg !6665
  %conv7 = trunc i32 %cond to i16, !dbg !6665
  store i16 %conv7, ptr %group, align 2, !dbg !6666
  call void @might_fault() #11, !dbg !6667
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6633, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6640, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6641, metadata !DIExpression()), !dbg !6668
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6642, metadata !DIExpression()), !dbg !6668
  %10 = load i16, ptr %group, align 2, !dbg !6668
  store i16 %10, ptr %__x, align 2, !dbg !6668
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6643, metadata !DIExpression()), !dbg !6668
  %11 = load ptr, ptr %grouplist.addr, align 8, !dbg !6668
  %12 = load i32, ptr %i, align 4, !dbg !6668
  %idx.ext = sext i32 %12 to i64, !dbg !6668
  %add.ptr = getelementptr i16, ptr %11, i64 %idx.ext, !dbg !6668
  store ptr %add.ptr, ptr %__ptr, align 8, !dbg !6668
  %13 = load ptr, ptr %__ptr, align 8, !dbg !6668
  store ptr %13, ptr %__ptr_pu, align 8, !dbg !6668
  %14 = load i16, ptr %__x, align 2, !dbg !6668
  store i16 %14, ptr %__val_pu, align 2, !dbg !6668
  %15 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6668
  %16 = load ptr, ptr %__ptr_pu, align 8, !dbg !6668
  %17 = load i16, ptr %__val_pu, align 2, !dbg !6668
  %18 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %16, i16 %17, i64 2, i64 %15) #12, !dbg !6668, !srcloc !6669
  %asmresult = extractvalue { ptr, i64 } %18, 0, !dbg !6668
  %asmresult8 = extractvalue { ptr, i64 } %18, 1, !dbg !6668
  %19 = ptrtoint ptr %asmresult to i64, !dbg !6668
  %20 = trunc i64 %19 to i32, !dbg !6668
  store i32 %20, ptr %__ret_pu, align 4, !dbg !6668
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult8), !dbg !6668
  %21 = load ptr, ptr %__ptr, align 8, !dbg !6670
  call void @kmsan_copy_to_user(ptr noundef %21, ptr noundef %__x, i64 noundef 2, i64 noundef 0) #11, !dbg !6670
  %22 = load i32, ptr %__ret_pu, align 4, !dbg !6668
  %conv10 = sext i32 %22 to i64, !dbg !6668
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !6668
  store i64 %expval, ptr %tmp9, align 8, !dbg !6668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x) #12, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu) #12, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #12, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #12, !dbg !6667
  %23 = load i64, ptr %tmp9, align 8, !dbg !6668
  store i64 %23, ptr %tmp, align 8, !dbg !6667
  %24 = load i64, ptr %tmp, align 8, !dbg !6667
  %tobool11 = icmp ne i64 %24, 0, !dbg !6672
  br i1 %tobool11, label %if.then, label %if.end, !dbg !6673

if.then:                                          ; preds = %cond.end
  store i32 -14, ptr %retval, align 4, !dbg !6674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6674

if.end:                                           ; preds = %cond.end
  br label %for.inc, !dbg !6675

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4, !dbg !6676
  %inc = add i32 %25, 1, !dbg !6676
  store i32 %inc, ptr %i, align 4, !dbg !6676
  br label %for.cond, !dbg !6677, !llvm.loop !6678

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6682

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kgid) #12, !dbg !6683
  call void @llvm.lifetime.end.p0(i64 2, ptr %group) #12, !dbg !6683
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6683
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #12, !dbg !6683
  %26 = load i32, ptr %retval, align 4, !dbg !6683
  ret i32 %26, !dbg !6683
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_user_ns() #3 align 16 !dbg !6684 {
entry:
  ret ptr @init_user_ns, !dbg !6687
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_setgroups16(i32 noundef %gidsetsize, ptr noundef %grouplist) #3 align 16 !dbg !6688 {
entry:
  %retval = alloca i64, align 8
  %gidsetsize.addr = alloca i32, align 4
  %grouplist.addr = alloca ptr, align 8
  %group_info = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gidsetsize, ptr %gidsetsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gidsetsize.addr, metadata !6690, metadata !DIExpression()), !dbg !6694
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6691, metadata !DIExpression()), !dbg !6694
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_info) #12, !dbg !6695
  call void @llvm.dbg.declare(metadata ptr %group_info, metadata !6692, metadata !DIExpression()), !dbg !6696
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #12, !dbg !6697
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6693, metadata !DIExpression()), !dbg !6698
  %call = call zeroext i1 @may_setgroups() #11, !dbg !6699
  br i1 %call, label %if.end, label %if.then, !dbg !6701

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6702

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6703
  %cmp = icmp ugt i32 %0, 65536, !dbg !6705
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6706

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6707

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr %gidsetsize.addr, align 4, !dbg !6708
  %call4 = call ptr @groups_alloc(i32 noundef %1) #11, !dbg !6709
  store ptr %call4, ptr %group_info, align 8, !dbg !6710
  %2 = load ptr, ptr %group_info, align 8, !dbg !6711
  %tobool = icmp ne ptr %2, null, !dbg !6711
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6713

if.then5:                                         ; preds = %if.end3
  store i64 -12, ptr %retval, align 8, !dbg !6714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6714

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %group_info, align 8, !dbg !6715
  %4 = load ptr, ptr %grouplist.addr, align 8, !dbg !6716
  %call7 = call i32 @groups16_from_user(ptr noundef %3, ptr noundef %4) #11, !dbg !6717
  store i32 %call7, ptr %retval1, align 4, !dbg !6718
  %5 = load i32, ptr %retval1, align 4, !dbg !6719
  %tobool8 = icmp ne i32 %5, 0, !dbg !6719
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !6721

if.then9:                                         ; preds = %if.end6
  br label %do.body, !dbg !6722

do.body:                                          ; preds = %if.then9
  %6 = load ptr, ptr %group_info, align 8, !dbg !6724
  %usage = getelementptr inbounds %struct.group_info, ptr %6, i32 0, i32 0, !dbg !6724
  %call10 = call zeroext i1 @atomic_dec_and_test(ptr noundef %usage) #11, !dbg !6724
  br i1 %call10, label %if.then11, label %if.end12, !dbg !6727

if.then11:                                        ; preds = %do.body
  %7 = load ptr, ptr %group_info, align 8, !dbg !6724
  call void @groups_free(ptr noundef %7) #11, !dbg !6724
  br label %if.end12, !dbg !6724

if.end12:                                         ; preds = %if.then11, %do.body
  br label %do.cond, !dbg !6727

do.cond:                                          ; preds = %if.end12
  br label %do.end, !dbg !6727

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %retval1, align 4, !dbg !6728
  %conv = sext i32 %8 to i64, !dbg !6728
  store i64 %conv, ptr %retval, align 8, !dbg !6729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6729

if.end13:                                         ; preds = %if.end6
  %9 = load ptr, ptr %group_info, align 8, !dbg !6730
  call void @groups_sort(ptr noundef %9) #11, !dbg !6731
  %10 = load ptr, ptr %group_info, align 8, !dbg !6732
  %call14 = call i32 @set_current_groups(ptr noundef %10) #11, !dbg !6733
  store i32 %call14, ptr %retval1, align 4, !dbg !6734
  br label %do.body15, !dbg !6735

do.body15:                                        ; preds = %if.end13
  %11 = load ptr, ptr %group_info, align 8, !dbg !6736
  %usage16 = getelementptr inbounds %struct.group_info, ptr %11, i32 0, i32 0, !dbg !6736
  %call17 = call zeroext i1 @atomic_dec_and_test(ptr noundef %usage16) #11, !dbg !6736
  br i1 %call17, label %if.then18, label %if.end19, !dbg !6739

if.then18:                                        ; preds = %do.body15
  %12 = load ptr, ptr %group_info, align 8, !dbg !6736
  call void @groups_free(ptr noundef %12) #11, !dbg !6736
  br label %if.end19, !dbg !6736

if.end19:                                         ; preds = %if.then18, %do.body15
  br label %do.cond20, !dbg !6739

do.cond20:                                        ; preds = %if.end19
  br label %do.end21, !dbg !6739

do.end21:                                         ; preds = %do.cond20
  %13 = load i32, ptr %retval1, align 4, !dbg !6740
  %conv22 = sext i32 %13 to i64, !dbg !6740
  store i64 %conv22, ptr %retval, align 8, !dbg !6741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6741

cleanup:                                          ; preds = %do.end21, %do.end, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #12, !dbg !6742
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_info) #12, !dbg !6742
  %14 = load i64, ptr %retval, align 8, !dbg !6742
  ret i64 %14, !dbg !6742
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6743 dso_local zeroext i1 @may_setgroups() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6744 dso_local ptr @groups_alloc(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @groups16_from_user(ptr noundef %group_info, ptr noundef %grouplist) #0 align 16 !dbg !6747 {
entry:
  %retval = alloca i32, align 4
  %group_info.addr = alloca ptr, align 8
  %grouplist.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %i = alloca i32, align 4
  %group = alloca i16, align 2
  %kgid = alloca %struct.kgid_t, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i16, align 2
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i16, align 2
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca %struct.kgid_t, align 4
  store ptr %group_info, ptr %group_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_info.addr, metadata !6751, metadata !DIExpression()), !dbg !6767
  store ptr %grouplist, ptr %grouplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grouplist.addr, metadata !6752, metadata !DIExpression()), !dbg !6768
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #12, !dbg !6769
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !6753, metadata !DIExpression()), !dbg !6770
  %call = call ptr @current_user_ns() #11, !dbg !6771
  store ptr %call, ptr %user_ns, align 8, !dbg !6770
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6754, metadata !DIExpression()), !dbg !6773
  call void @llvm.lifetime.start.p0(i64 2, ptr %group) #12, !dbg !6774
  call void @llvm.dbg.declare(metadata ptr %group, metadata !6755, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 4, ptr %kgid) #12, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !6756, metadata !DIExpression()), !dbg !6777
  store i32 0, ptr %i, align 4, !dbg !6778
  br label %for.cond, !dbg !6779

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6780
  %1 = load ptr, ptr %group_info.addr, align 8, !dbg !6781
  %ngroups = getelementptr inbounds %struct.group_info, ptr %1, i32 0, i32 1, !dbg !6782
  %2 = load i32, ptr %ngroups, align 4, !dbg !6782
  %cmp = icmp slt i32 %0, %2, !dbg !6783
  br i1 %cmp, label %for.body, label %for.end, !dbg !6784

for.body:                                         ; preds = %for.cond
  call void @might_fault() #11, !dbg !6785
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #12, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6757, metadata !DIExpression()), !dbg !6786
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_gu) #12, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6764, metadata !DIExpression()), !dbg !6786
  %3 = call i64 @llvm.read_register.i64(metadata !5790), !dbg !6786
  %4 = load ptr, ptr %grouplist.addr, align 8, !dbg !6786
  %5 = load i32, ptr %i, align 4, !dbg !6786
  %idx.ext = sext i32 %5 to i64, !dbg !6786
  %add.ptr = getelementptr i16, ptr %4, i64 %idx.ext, !dbg !6786
  %6 = call { ptr, i16, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %add.ptr, i64 2, i64 %3) #12, !dbg !6786, !srcloc !6787
  %asmresult = extractvalue { ptr, i16, i64 } %6, 0, !dbg !6786
  %asmresult1 = extractvalue { ptr, i16, i64 } %6, 1, !dbg !6786
  %asmresult2 = extractvalue { ptr, i16, i64 } %6, 2, !dbg !6786
  %7 = ptrtoint ptr %asmresult to i64, !dbg !6786
  %8 = trunc i64 %7 to i32, !dbg !6786
  store i32 %8, ptr %__ret_gu, align 4, !dbg !6786
  store i16 %asmresult1, ptr %__val_gu, align 2, !dbg !6786
  call void @llvm.write_register.i64(metadata !5790, i64 %asmresult2), !dbg !6786
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #12, !dbg !6788
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6765, metadata !DIExpression()), !dbg !6788
  %9 = load i16, ptr %__val_gu, align 2, !dbg !6788
  %conv = zext i16 %9 to i64, !dbg !6788
  store i64 %conv, ptr %__tmp, align 8, !dbg !6788
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #11, !dbg !6788
  %10 = load i64, ptr %__tmp, align 8, !dbg !6788
  %conv4 = trunc i64 %10 to i16, !dbg !6788
  store i16 %conv4, ptr %__val_gu, align 2, !dbg !6788
  store i16 %conv4, ptr %tmp3, align 2, !dbg !6788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #12, !dbg !6786
  %11 = load i16, ptr %tmp3, align 2, !dbg !6788
  %12 = load i16, ptr %__val_gu, align 2, !dbg !6786
  store i16 %12, ptr %group, align 2, !dbg !6786
  %13 = load i32, ptr %__ret_gu, align 4, !dbg !6786
  %conv6 = sext i32 %13 to i64, !dbg !6786
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6786
  store i64 %expval, ptr %tmp5, align 8, !dbg !6786
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_gu) #12, !dbg !6785
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #12, !dbg !6785
  %14 = load i64, ptr %tmp5, align 8, !dbg !6786
  store i64 %14, ptr %tmp, align 8, !dbg !6785
  %15 = load i64, ptr %tmp, align 8, !dbg !6785
  %tobool = icmp ne i64 %15, 0, !dbg !6789
  br i1 %tobool, label %if.then, label %if.end, !dbg !6790

if.then:                                          ; preds = %for.body
  store i32 -14, ptr %retval, align 4, !dbg !6791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6791

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp7) #12, !dbg !6792
  %16 = load ptr, ptr %user_ns, align 8, !dbg !6793
  %17 = load i16, ptr %group, align 2, !dbg !6794
  %conv8 = zext i16 %17 to i32, !dbg !6794
  %cmp9 = icmp eq i32 %conv8, 65535, !dbg !6794
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !6794

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !6794

cond.false:                                       ; preds = %if.end
  %18 = load i16, ptr %group, align 2, !dbg !6794
  %conv11 = zext i16 %18 to i32, !dbg !6794
  br label %cond.end, !dbg !6794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv11, %cond.false ], !dbg !6794
  %call12 = call i32 @make_kgid(ptr noundef %16, i32 noundef %cond) #11, !dbg !6792
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %tmp7, i32 0, i32 0, !dbg !6792
  store i32 %call12, ptr %coerce.dive, align 4, !dbg !6792
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %kgid, ptr align 4 %tmp7, i64 4, i1 false), !dbg !6792
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp7) #12, !dbg !6792
  %coerce.dive13 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !6795
  %19 = load i32, ptr %coerce.dive13, align 4, !dbg !6795
  %call14 = call zeroext i1 @gid_valid(i32 %19) #11, !dbg !6795
  br i1 %call14, label %if.end16, label %if.then15, !dbg !6797

if.then15:                                        ; preds = %cond.end
  store i32 -22, ptr %retval, align 4, !dbg !6798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6798

if.end16:                                         ; preds = %cond.end
  %20 = load ptr, ptr %group_info.addr, align 8, !dbg !6799
  %gid = getelementptr inbounds %struct.group_info, ptr %20, i32 0, i32 2, !dbg !6800
  %21 = load i32, ptr %i, align 4, !dbg !6801
  %idxprom = sext i32 %21 to i64, !dbg !6799
  %arrayidx = getelementptr [0 x %struct.kgid_t], ptr %gid, i64 0, i64 %idxprom, !dbg !6799
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %kgid, i64 4, i1 false), !dbg !6802
  br label %for.inc, !dbg !6803

for.inc:                                          ; preds = %if.end16
  %22 = load i32, ptr %i, align 4, !dbg !6804
  %inc = add i32 %22, 1, !dbg !6804
  store i32 %inc, ptr %i, align 4, !dbg !6804
  br label %for.cond, !dbg !6805, !llvm.loop !6806

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6808

cleanup:                                          ; preds = %for.end, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kgid) #12, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 2, ptr %group) #12, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #12, !dbg !6809
  %23 = load i32, ptr %retval, align 4, !dbg !6809
  ret i32 %23, !dbg !6809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6810 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6816, metadata !DIExpression()), !dbg !6817
  br label %do.body, !dbg !6818

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6819

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6821
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #11, !dbg !6822
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6823
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #11, !dbg !6824
  ret i1 %call, !dbg !6825
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6826 dso_local void @groups_free(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6829 dso_local void @groups_sort(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6830 dso_local i32 @set_current_groups(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !6833 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6837, metadata !DIExpression()), !dbg !6839
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6838, metadata !DIExpression()), !dbg !6840
  ret void, !dbg !6841
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #3 align 16 !dbg !6842 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6846, metadata !DIExpression()), !dbg !6848
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6847, metadata !DIExpression()), !dbg !6849
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6850
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6850
  store i32 %0, ptr %val, align 4, !dbg !6850
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6851
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6851
  ret i32 %1, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #3 align 16 !dbg !6852 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !6856, metadata !DIExpression()), !dbg !6857
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !6858
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !6858
  %call = call i32 @__kgid_val(i32 %0) #11, !dbg !6858
  %cmp = icmp ne i32 %call, -1, !dbg !6859
  ret i1 %cmp, !dbg !6860
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6861 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6869, metadata !DIExpression()), !dbg !6871
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6870, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6873
  %1 = load i64, ptr %size.addr, align 8, !dbg !6874
  %conv = trunc i64 %1 to i32, !dbg !6874
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !6875
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6876
  %3 = load i64, ptr %size.addr, align 8, !dbg !6876
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #11, !dbg !6876
  ret void, !dbg !6877
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6878 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6881, metadata !DIExpression()), !dbg !6882
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6883
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #11, !dbg !6884
  ret i1 %call, !dbg !6885
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6886 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  ret i1 true, !dbg !6895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6896 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6901, metadata !DIExpression()), !dbg !6904
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6902, metadata !DIExpression()), !dbg !6905
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6903, metadata !DIExpression()), !dbg !6906
  ret void, !dbg !6907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #5 align 16 !dbg !6908 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6911, metadata !DIExpression()), !dbg !6914
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6912, metadata !DIExpression()), !dbg !6915
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6915
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6915
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #12, !dbg !6915, !srcloc !6916
  %2 = icmp ult i8 %1, 2, !dbg !6915
  call void @llvm.assume(i1 %2), !dbg !6915
  store i8 %1, ptr %c, align 1, !dbg !6915
  %3 = load i8, ptr %c, align 1, !dbg !6915, !range !6917, !noundef !1006
  %tobool = trunc i8 %3 to i1, !dbg !6915
  %frombool = zext i1 %tobool to i8, !dbg !6915
  store i8 %frombool, ptr %tmp, align 1, !dbg !6915
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !6918
  %4 = load i8, ptr %tmp, align 1, !dbg !6915, !range !6917, !noundef !1006
  %tobool1 = trunc i8 %4 to i1, !dbg !6915
  ret i1 %tobool1, !dbg !6919
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!5790}
!llvm.module.flags = !{!5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798}
!llvm.ident = !{!5799}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.uid16.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/uid16\22 -D KBUILD_BASENAME=\22uid16\22 -D KBUILD_MODNAME=\22uid16\22 -D __KBUILD_MODNAME=kmod_uid16 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/uid16.ll kernel/uid16.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kernel/uid16.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c69b7bd96cfe10744ae005dbbf210b3a")
!2 = !{!3, !100, !105, !113, !120, !128, !144, !151, !157, !168, !174, !180, !187, !195, !202, !211, !216, !221, !227, !236, !241, !247, !253, !260}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !5, file: !4, line: 147, baseType: !96, size: 32, elements: !97)
!4 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !4, line: 135, size: 512, elements: !6)
!6 = !{!7, !11, !13, !15, !19, !20, !36, !94, !95}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !5, file: !4, line: 136, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !4, line: 137, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5, file: !4, line: 138, baseType: !14, size: 32, offset: 128)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5, file: !4, line: 139, baseType: !16, size: 16, offset: 160)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !17, line: 24, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !4, line: 150, baseType: !3, size: 32, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !5, file: !4, line: 151, baseType: !21, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !4, line: 64, baseType: !23)
!23 = !DISubroutineType(types: !24)
!24 = !{!14, !25, !14, !12, !26, !32}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 61, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !29, line: 72, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !29, line: 16, baseType: !31)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !17, line: 52, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !29, line: 88, baseType: !35)
!35 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5, file: !4, line: 152, baseType: !37, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !4, line: 117, size: 256, elements: !39)
!39 = !{!40, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !38, file: !4, line: 118, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !17, line: 174, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 172, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !42, file: !17, line: 173, baseType: !14, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !38, file: !4, line: 119, baseType: !46, size: 192, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !47, line: 41, baseType: !48)
!47 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !47, line: 37, size: 192, elements: !49)
!49 = !{!50, !88}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !48, file: !47, line: 38, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !52, line: 29, baseType: !53)
!52 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !52, line: 17, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !52, line: 18, baseType: !56, size: 32)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !53, file: !52, line: 18, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !56, file: !52, line: 19, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !60, line: 14, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !59, file: !60, line: 15, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !64, line: 44, baseType: !65)
!64 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !64, line: 14, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, scope: !65, file: !64, line: 15, baseType: !68, size: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !64, line: 15, size: 32, elements: !69)
!69 = !{!70, !71, !81}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !64, line: 16, baseType: !41, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !64, line: 24, baseType: !72, size: 16)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !64, line: 24, size: 16, elements: !73)
!73 = !{!74, !80}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !72, file: !64, line: 25, baseType: !75, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !76, line: 17, baseType: !77)
!76 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !78, line: 21, baseType: !79)
!78 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !72, file: !64, line: 26, baseType: !75, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !64, line: 28, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !64, line: 28, size: 32, elements: !83)
!83 = !{!84, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !82, file: !64, line: 29, baseType: !85, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !76, line: 19, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !78, line: 24, baseType: !18)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !82, file: !64, line: 30, baseType: !85, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !48, file: !47, line: 39, baseType: !89, size: 128, offset: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !17, line: 190, size: 128, elements: !90)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !17, line: 191, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !89, file: !17, line: 191, baseType: !92, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !5, file: !4, line: 153, baseType: !12, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !5, file: !4, line: 154, baseType: !12, size: 64, offset: 448)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!99 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !101, line: 65, baseType: !96, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!104 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !106, line: 9, baseType: !96, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!109 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!110 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!111 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!112 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !114, line: 312, baseType: !96, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!117 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!118 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!119 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !121, line: 68, baseType: !96, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !129, line: 1325, baseType: !96, size: 32, elements: !130)
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
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !145, line: 15, baseType: !96, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!148 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!149 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!150 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !152, line: 26, baseType: !96, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!155 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!156 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !158, line: 253, baseType: !96, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167}
!160 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!161 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!162 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!163 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!164 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!165 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!166 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!167 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !158, line: 158, baseType: !96, size: 32, elements: !169)
!169 = !{!170, !171, !172, !173}
!170 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!171 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!172 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!173 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !175, line: 45, baseType: !96, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!178 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!179 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !181, line: 487, baseType: !96, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!182 = !{!183, !184, !185, !186}
!183 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!184 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!185 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!186 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !188, line: 620, baseType: !96, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!189 = !{!190, !191, !192, !193, !194}
!190 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!191 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!192 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!193 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!194 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !188, line: 597, baseType: !14, size: 32, elements: !196)
!196 = !{!197, !198, !199, !200, !201}
!197 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!198 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!199 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!200 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!201 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !181, line: 547, baseType: !96, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210}
!204 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!205 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!206 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!207 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!208 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!209 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!210 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !181, line: 564, baseType: !96, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !181, line: 577, baseType: !96, size: 32, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !181, line: 503, baseType: !96, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!224 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!225 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !228, line: 593, baseType: !14, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!231 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!232 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!233 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!234 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!235 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !237, line: 2052, baseType: !96, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!238 = !{!239, !240}
!239 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!240 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !242, line: 54, baseType: !96, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!243 = !{!244, !245, !246}
!244 = !DIEnumerator(name: "USRQUOTA", value: 0)
!245 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!246 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !248, line: 16, baseType: !96, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!249 = !{!250, !251, !252}
!250 = !DIEnumerator(name: "TT_NONE", value: 0)
!251 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!252 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !254, line: 51, baseType: !96, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!255 = !{!256, !257, !258, !259}
!256 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!257 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!258 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!259 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 10, baseType: !96, size: 32, elements: !262)
!261 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!262 = !{!263, !264}
!263 = !DIEnumerator(name: "false", value: 0)
!264 = !DIEnumerator(name: "true", value: 1)
!265 = !{!96, !8, !266, !269, !14, !271, !273, !275, !276, !689, !12, !690, !31, !5789, !314}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_uid_t", file: !17, line: 47, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_uid_t", file: !268, line: 11, baseType: !18)
!268 = !DIFile(filename: "./arch/x86/include/uapi/asm/posix_types_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f05987f20e03443d3f48e800a94d0669")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_gid_t", file: !17, line: 48, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_gid_t", file: !268, line: 12, baseType: !18)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !17, line: 37, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !29, line: 49, baseType: !96)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !17, line: 38, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !29, line: 50, baseType: !96)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !279, line: 110, size: 1472, elements: !280)
!279 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!280 = !{!281, !290, !296, !301, !302, !303, !304, !305, !306, !307, !308, !317, !318, !319, !320, !321, !322, !475, !476, !477, !478, !479, !516, !673, !674, !684}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !278, file: !279, line: 111, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !283, line: 13, baseType: !284)
!283 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !17, line: 181, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 179, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !17, line: 180, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !76, line: 22, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !78, line: 30, baseType: !35)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !278, file: !279, line: 112, baseType: !291, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !292, line: 23, baseType: !293)
!292 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 21, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !293, file: !292, line: 22, baseType: !271, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !278, file: !279, line: 113, baseType: !297, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !292, line: 28, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 26, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !292, line: 27, baseType: !273, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !278, file: !279, line: 114, baseType: !291, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !278, file: !279, line: 115, baseType: !297, size: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !278, file: !279, line: 116, baseType: !291, size: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !278, file: !279, line: 117, baseType: !297, size: 32, offset: 224)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !278, file: !279, line: 118, baseType: !291, size: 32, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !278, file: !279, line: 119, baseType: !297, size: 32, offset: 288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !278, file: !279, line: 120, baseType: !96, size: 32, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !278, file: !279, line: 121, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !310, line: 24, baseType: !311)
!310 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 24, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !310, line: 24, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !76, line: 23, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !78, line: 31, baseType: !316)
!316 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !278, file: !279, line: 122, baseType: !309, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !278, file: !279, line: 123, baseType: !309, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !278, file: !279, line: 124, baseType: !309, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !278, file: !279, line: 125, baseType: !309, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !278, file: !279, line: 127, baseType: !79, size: 8, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !278, file: !279, line: 129, baseType: !323, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !325, line: 195, size: 1728, elements: !326)
!325 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!326 = !{!327, !333, !338, !350, !364, !367, !368, !375, !376, !377, !378, !383, !384, !385, !387, !388, !437, !460}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !324, file: !325, line: 196, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !329, line: 113, baseType: !330)
!329 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !329, line: 111, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !330, file: !329, line: 112, baseType: !41, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !324, file: !325, line: 197, baseType: !334, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !325, line: 28, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !17, line: 104, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !76, line: 20, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !78, line: 26, baseType: !14)
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 198, baseType: !339, size: 192, offset: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 198, size: 192, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !339, file: !325, line: 199, baseType: !89, size: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !339, file: !325, line: 200, baseType: !343, size: 192, align: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !344, line: 5, size: 192, align: 64, elements: !345)
!344 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!345 = !{!346, !347, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !343, file: !344, line: 6, baseType: !31, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !343, file: !344, line: 7, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !343, file: !344, line: 8, baseType: !348, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !324, file: !325, line: 205, baseType: !351, size: 320, offset: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !352, line: 48, size: 320, elements: !353)
!352 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!353 = !{!354, !355, !356, !361, !363}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !352, line: 49, baseType: !282, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 55, baseType: !282, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !351, file: !352, line: 57, baseType: !357, size: 32, offset: 128)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !358, line: 15, size: 32, elements: !359)
!358 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !357, file: !358, line: 20, baseType: !41, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 59, baseType: !362, size: 32, offset: 160)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !60, line: 23, baseType: !59)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 60, baseType: !89, size: 128, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !324, file: !325, line: 206, baseType: !365, size: 64, offset: 576)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !325, line: 206, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !324, file: !325, line: 207, baseType: !12, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 208, baseType: !369, size: 64, offset: 704)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 208, size: 64, elements: !370)
!370 = !{!371, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !369, file: !325, line: 209, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !373, line: 8, baseType: !289)
!373 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !369, file: !325, line: 210, baseType: !372, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !324, file: !325, line: 212, baseType: !372, size: 64, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !324, file: !325, line: 213, baseType: !291, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !324, file: !325, line: 214, baseType: !297, size: 32, offset: 864)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !324, file: !325, line: 215, baseType: !379, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !325, line: 31, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 110, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !76, line: 21, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !78, line: 27, baseType: !96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !324, file: !325, line: 216, baseType: !18, size: 16, offset: 928)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !324, file: !325, line: 217, baseType: !18, size: 16, offset: 944)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !325, line: 221, baseType: !386, size: 16, offset: 960)
!386 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !325, line: 228, baseType: !31, size: 64, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 245, baseType: !389, size: 320, offset: 1088)
!389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 245, size: 320, elements: !390)
!390 = !{!391, !428}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !389, file: !325, line: 246, baseType: !392, size: 320)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !325, line: 114, size: 320, elements: !393)
!393 = !{!394, !395, !407, !410, !427}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !392, file: !325, line: 116, baseType: !31, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !325, line: 117, baseType: !396, size: 64, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !325, line: 117, size: 64, elements: !397)
!397 = !{!398, !406}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !325, line: 118, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !325, line: 118, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !399, file: !325, line: 120, baseType: !85, size: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !399, file: !325, line: 121, baseType: !403, size: 48, offset: 16)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 6)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !396, file: !325, line: 127, baseType: !31, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !325, line: 129, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !325, line: 102, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !392, file: !325, line: 130, baseType: !411, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !325, line: 108, size: 192, elements: !413)
!413 = !{!414, !423, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !412, file: !325, line: 109, baseType: !415, size: 128, align: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !17, line: 232, size: 128, align: 64, elements: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !17, line: 233, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !415, file: !17, line: 234, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !418}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !412, file: !325, line: 110, baseType: !328, size: 32, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !412, file: !325, line: 111, baseType: !425, size: 8, offset: 160)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !17, line: 35, baseType: !426)
!426 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !392, file: !325, line: 131, baseType: !8, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !325, line: 247, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !325, line: 247, size: 320, elements: !430)
!430 = !{!431, !432, !433, !434, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !429, file: !325, line: 248, baseType: !31, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !429, file: !325, line: 249, baseType: !31, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !325, line: 250, baseType: !408, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !429, file: !325, line: 251, baseType: !411, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !429, file: !325, line: 252, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 260, baseType: !438, size: 256, offset: 1408)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 260, size: 256, elements: !439)
!439 = !{!440, !448}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !438, file: !325, line: 261, baseType: !441, size: 256)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !325, line: 134, size: 256, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !441, file: !325, line: 135, baseType: !12, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !325, line: 136, baseType: !445, size: 256)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 4)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !325, line: 262, baseType: !449, size: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !325, line: 262, size: 256, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !449, file: !325, line: 264, baseType: !89, size: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !449, file: !325, line: 265, baseType: !453, size: 128, offset: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !454, line: 22, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!455 = !{!456, !459}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !453, file: !454, line: 23, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !454, line: 23, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !453, file: !454, line: 24, baseType: !31, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !324, file: !325, line: 280, baseType: !461, size: 64, offset: 1664)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !325, line: 176, size: 192, elements: !463)
!463 = !{!464, !473, !474}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !462, file: !325, line: 177, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !325, line: 171, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!14, !323, !469, !471, !323}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !462, file: !325, line: 178, baseType: !323, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !462, file: !325, line: 179, baseType: !408, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !278, file: !279, line: 130, baseType: !323, size: 64, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !278, file: !279, line: 131, baseType: !323, size: 64, offset: 896)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !278, file: !279, line: 132, baseType: !323, size: 64, offset: 960)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !278, file: !279, line: 135, baseType: !12, size: 64, offset: 1024)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !278, file: !279, line: 137, baseType: !480, size: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !482, line: 14, size: 1088, elements: !483)
!482 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!483 = !{!484, !485, !494, !495, !496, !503, !504, !505}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !481, file: !482, line: 15, baseType: !328, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !481, file: !482, line: 17, baseType: !486, size: 320, offset: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !487, line: 22, size: 320, elements: !488)
!487 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!488 = !{!489, !490, !491, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !487, line: 23, baseType: !362, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !486, file: !487, line: 24, baseType: !288, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !486, file: !487, line: 26, baseType: !89, size: 128, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !486, file: !487, line: 28, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !481, file: !482, line: 19, baseType: !31, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !481, file: !482, line: 20, baseType: !282, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !481, file: !482, line: 23, baseType: !497, size: 128, offset: 512)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !17, line: 198, size: 128, elements: !498)
!498 = !{!499, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !17, line: 199, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !497, file: !17, line: 199, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !481, file: !482, line: 24, baseType: !291, size: 32, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !481, file: !482, line: 29, baseType: !282, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !481, file: !482, line: 36, baseType: !506, size: 320, offset: 768)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !507, line: 15, size: 320, elements: !508)
!507 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!508 = !{!509, !510, !511, !512, !513, !514, !515}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !507, line: 16, baseType: !362, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !506, file: !507, line: 18, baseType: !14, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !506, file: !507, line: 19, baseType: !14, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !506, file: !507, line: 20, baseType: !14, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !506, file: !507, line: 21, baseType: !14, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !506, file: !507, line: 22, baseType: !31, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !507, line: 23, baseType: !31, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !278, file: !279, line: 138, baseType: !517, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !519, line: 68, size: 4800, elements: !520)
!519 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!520 = !{!521, !543, !544, !545, !546, !547, !548, !549, !560, !561, !562, !563, !564, !565, !577, !653, !654, !668, !671}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !518, file: !519, line: 69, baseType: !522, size: 576)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !519, line: 23, size: 576, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !522, file: !519, line: 24, baseType: !381, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !522, file: !519, line: 25, baseType: !526, size: 512, offset: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !522, file: !519, line: 25, size: 512, elements: !527)
!527 = !{!528, !537}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !526, file: !519, line: 26, baseType: !529, size: 480)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 480, elements: !535)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !519, line: 17, size: 96, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !530, file: !519, line: 18, baseType: !381, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !530, file: !519, line: 19, baseType: !381, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !530, file: !519, line: 20, baseType: !381, size: 32, offset: 64)
!535 = !{!536}
!536 = !DISubrange(count: 5)
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !519, line: 27, baseType: !538, size: 128)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !519, line: 27, size: 128, elements: !539)
!539 = !{!540, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !538, file: !519, line: 28, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !538, file: !519, line: 29, baseType: !541, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !518, file: !519, line: 70, baseType: !522, size: 576, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !518, file: !519, line: 71, baseType: !522, size: 576, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !518, file: !519, line: 72, baseType: !517, size: 64, offset: 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !518, file: !519, line: 73, baseType: !14, size: 32, offset: 1792)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !518, file: !519, line: 74, baseType: !291, size: 32, offset: 1824)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !518, file: !519, line: 75, baseType: !297, size: 32, offset: 1856)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !518, file: !519, line: 76, baseType: !550, size: 192, offset: 1920)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !551, line: 9, size: 192, elements: !552)
!551 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!552 = !{!553, !554, !558, !559}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !550, file: !551, line: 10, baseType: !282, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !550, file: !551, line: 11, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !551, line: 7, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !550, file: !551, line: 12, baseType: !96, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !550, file: !551, line: 13, baseType: !328, size: 32, offset: 160)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !519, line: 77, baseType: !31, size: 64, offset: 2112)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !518, file: !519, line: 80, baseType: !425, size: 8, offset: 2176)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !518, file: !519, line: 88, baseType: !89, size: 128, offset: 2240)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !518, file: !519, line: 89, baseType: !323, size: 64, offset: 2368)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !518, file: !519, line: 90, baseType: !351, size: 320, offset: 2432)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !518, file: !519, line: 97, baseType: !566, size: 256, offset: 2752)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !567, line: 98, size: 256, elements: !568)
!567 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !566, file: !567, line: 99, baseType: !282, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !566, file: !567, line: 100, baseType: !89, size: 128, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !566, file: !567, line: 101, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !567, line: 21, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !518, file: !519, line: 99, baseType: !578, size: 768, offset: 3008)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !4, line: 199, size: 768, elements: !579)
!579 = !{!580, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !578, file: !4, line: 200, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!14, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !578, file: !4, line: 201, baseType: !586, size: 704, offset: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !4, line: 193, size: 704, elements: !587)
!587 = !{!588, !649}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !586, file: !4, line: 195, baseType: !589, size: 640)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !4, line: 173, size: 640, elements: !590)
!590 = !{!591, !603, !615, !616, !636, !637, !639, !645}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !4, line: 174, baseType: !592, size: 192)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !4, line: 174, size: 192, elements: !593)
!593 = !{!594, !602}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !4, line: 175, baseType: !595, size: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !4, line: 175, size: 192, elements: !596)
!596 = !{!597, !598, !599, !600, !601}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !595, file: !4, line: 176, baseType: !25, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !595, file: !4, line: 177, baseType: !14, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !595, file: !4, line: 178, baseType: !14, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !595, file: !4, line: 179, baseType: !14, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !595, file: !4, line: 180, baseType: !14, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !592, file: !4, line: 182, baseType: !415, size: 128, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !589, file: !4, line: 184, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !606, line: 26, size: 256, elements: !607)
!606 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !605, file: !606, line: 27, baseType: !96, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !605, file: !606, line: 28, baseType: !610, size: 192, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !611, line: 43, size: 192, elements: !612)
!611 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !610, file: !611, line: 44, baseType: !362, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !610, file: !611, line: 45, baseType: !89, size: 128, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !589, file: !4, line: 185, baseType: !25, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !589, file: !4, line: 186, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !4, line: 204, size: 960, elements: !619)
!619 = !{!620, !621, !625, !632}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !618, file: !4, line: 205, baseType: !578, size: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !618, file: !4, line: 206, baseType: !622, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!584, !617}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !618, file: !4, line: 207, baseType: !626, size: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629, !630, !631}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !618, file: !4, line: 209, baseType: !633, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!14, !629, !25}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !589, file: !4, line: 187, baseType: !584, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !589, file: !4, line: 188, baseType: !638, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !4, line: 189, baseType: !640, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !4, line: 157, size: 256, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !4, line: 158, baseType: !343, size: 192, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !641, file: !4, line: 159, baseType: !629, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !589, file: !4, line: 190, baseType: !646, size: 64, offset: 576)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !17, line: 194, size: 64, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !646, file: !17, line: 195, baseType: !500, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !586, file: !4, line: 196, baseType: !650, size: 64, offset: 640)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !344, line: 12, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !650, file: !344, line: 13, baseType: !348, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !518, file: !519, line: 100, baseType: !629, size: 64, offset: 3776)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !518, file: !519, line: 102, baseType: !655, size: 64, offset: 3840)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !519, line: 107, size: 1152, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !666}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !519, line: 108, baseType: !497, size: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !656, file: !519, line: 109, baseType: !517, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !656, file: !519, line: 110, baseType: !291, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !519, line: 111, baseType: !41, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !656, file: !519, line: 112, baseType: !663, size: 640, offset: 256)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 640, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 10)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !656, file: !519, line: 113, baseType: !667, size: 256, offset: 896)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !446)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !518, file: !519, line: 103, baseType: !669, size: 640, offset: 3904)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 640, elements: !664)
!670 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !518, file: !519, line: 104, baseType: !672, size: 256, offset: 4544)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !446)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !278, file: !279, line: 139, baseType: !655, size: 64, offset: 1216)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !278, file: !279, line: 140, baseType: !675, size: 64, offset: 1280)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !279, line: 25, size: 64, elements: !677)
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !676, file: !279, line: 26, baseType: !41, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !676, file: !279, line: 27, baseType: !14, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !676, file: !279, line: 28, baseType: !681, offset: 64)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: -1)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !279, line: 142, baseType: !685, size: 128, offset: 1344)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !279, line: 142, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !685, file: !279, line: 143, baseType: !14, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !685, file: !279, line: 144, baseType: !415, size: 128, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !692, line: 746, size: 58368, elements: !693)
!692 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!693 = !{!694, !702, !703, !704, !705, !706, !707, !708, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !779, !790, !887, !891, !894, !925, !926, !927, !928, !939, !941, !942, !943, !944, !945, !946, !957, !958, !961, !962, !963, !964, !965, !966, !967, !968, !975, !976, !983, !984, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4954, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4997, !5003, !5004, !5005, !5006, !5007, !5009, !5012, !5019, !5024, !5027, !5030, !5033, !5065, !5263, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5301, !5302, !5303, !5312, !5320, !5321, !5322, !5323, !5324, !5329, !5330, !5331, !5334, !5335, !5338, !5341, !5344, !5352, !5355, !5356, !5442, !5443, !5444, !5445, !5446, !5452, !5453, !5454, !5455, !5456, !5457, !5460, !5463, !5464, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5507, !5508, !5514, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5526, !5598, !5600, !5601, !5602, !5603, !5604, !5605, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5622, !5623, !5624}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !691, file: !692, line: 752, baseType: !695, size: 192)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !696, line: 56, size: 192, elements: !697)
!696 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!697 = !{!698, !699, !700, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 57, baseType: !31, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !695, file: !696, line: 58, baseType: !31, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !695, file: !696, line: 59, baseType: !381, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !695, file: !696, line: 61, baseType: !381, size: 32, offset: 160)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !691, file: !692, line: 754, baseType: !96, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !691, file: !692, line: 767, baseType: !12, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !691, file: !692, line: 768, baseType: !328, size: 32, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 770, baseType: !96, size: 32, offset: 352)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !691, file: !692, line: 771, baseType: !96, size: 32, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !691, file: !692, line: 774, baseType: !14, size: 32, offset: 416)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !691, file: !692, line: 775, baseType: !709, size: 128, offset: 448)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !710, line: 58, size: 128, elements: !711)
!710 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!711 = !{!712, !718, !723, !724}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !709, file: !710, line: 59, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !714, line: 60, size: 64, elements: !715)
!714 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !714, line: 61, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !710, line: 60, baseType: !719, size: 32, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !710, line: 60, size: 32, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !719, file: !710, line: 61, baseType: !96, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !719, file: !710, line: 62, baseType: !41, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !709, file: !710, line: 65, baseType: !85, size: 16, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !709, file: !710, line: 65, baseType: !85, size: 16, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !691, file: !692, line: 776, baseType: !96, size: 32, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !691, file: !692, line: 777, baseType: !31, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !691, file: !692, line: 778, baseType: !690, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !691, file: !692, line: 787, baseType: !14, size: 32, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !691, file: !692, line: 788, baseType: !14, size: 32, offset: 800)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !691, file: !692, line: 790, baseType: !14, size: 32, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !691, file: !692, line: 792, baseType: !14, size: 32, offset: 864)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !691, file: !692, line: 793, baseType: !14, size: 32, offset: 896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !691, file: !692, line: 794, baseType: !14, size: 32, offset: 928)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !691, file: !692, line: 795, baseType: !96, size: 32, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !691, file: !692, line: 797, baseType: !736, size: 2048, offset: 1024)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !692, line: 551, size: 2048, elements: !737)
!737 = !{!738, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !758, !761, !762, !763}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !736, file: !692, line: 553, baseType: !739, size: 128)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !692, line: 411, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !739, file: !692, line: 412, baseType: !31, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !739, file: !692, line: 413, baseType: !381, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !736, file: !692, line: 554, baseType: !343, size: 192, align: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !736, file: !692, line: 555, baseType: !314, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !736, file: !692, line: 556, baseType: !314, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !736, file: !692, line: 558, baseType: !89, size: 128, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !736, file: !692, line: 559, baseType: !96, size: 32, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !736, file: !692, line: 561, baseType: !314, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !736, file: !692, line: 562, baseType: !314, size: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !736, file: !692, line: 563, baseType: !314, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !736, file: !692, line: 564, baseType: !314, size: 64, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !736, file: !692, line: 565, baseType: !288, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !736, file: !692, line: 566, baseType: !314, size: 64, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !736, file: !692, line: 568, baseType: !314, size: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !736, file: !692, line: 571, baseType: !14, size: 32, offset: 1088)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !736, file: !692, line: 572, baseType: !757, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !736, file: !692, line: 574, baseType: !759, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !692, line: 49, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !736, file: !692, line: 576, baseType: !759, size: 64, offset: 1280)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !736, file: !692, line: 578, baseType: !31, size: 64, offset: 1344)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !736, file: !692, line: 588, baseType: !764, size: 512, align: 512, offset: 1536)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !692, line: 497, size: 512, align: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !764, file: !692, line: 498, baseType: !314, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !764, file: !692, line: 499, baseType: !314, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !764, file: !692, line: 500, baseType: !314, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !764, file: !692, line: 501, baseType: !381, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !764, file: !692, line: 502, baseType: !381, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !764, file: !692, line: 503, baseType: !31, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !764, file: !692, line: 504, baseType: !31, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !764, file: !692, line: 505, baseType: !31, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !764, file: !692, line: 506, baseType: !775, size: 64, align: 64, offset: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !692, line: 445, size: 64, align: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !775, file: !692, line: 446, baseType: !96, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !775, file: !692, line: 447, baseType: !96, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !691, file: !692, line: 798, baseType: !780, size: 384, offset: 3072)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !692, line: 592, size: 384, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !780, file: !692, line: 593, baseType: !89, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !780, file: !692, line: 594, baseType: !31, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !780, file: !692, line: 595, baseType: !31, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !780, file: !692, line: 596, baseType: !96, size: 32, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !780, file: !692, line: 597, baseType: !18, size: 16, offset: 288)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !780, file: !692, line: 598, baseType: !18, size: 16, offset: 304)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !780, file: !692, line: 600, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !691, file: !692, line: 799, baseType: !791, size: 1792, offset: 3456)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !692, line: 610, size: 1792, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !884, !885}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !791, file: !692, line: 611, baseType: !343, size: 192, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !791, file: !692, line: 618, baseType: !314, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !791, file: !692, line: 619, baseType: !314, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !791, file: !692, line: 620, baseType: !314, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !791, file: !692, line: 621, baseType: !314, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !791, file: !692, line: 622, baseType: !314, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !791, file: !692, line: 629, baseType: !288, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !791, file: !692, line: 630, baseType: !314, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !692, line: 631, baseType: !96, size: 32, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !791, file: !692, line: 653, baseType: !96, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !791, file: !692, line: 654, baseType: !96, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !791, file: !692, line: 655, baseType: !96, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !791, file: !692, line: 656, baseType: !96, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !791, file: !692, line: 662, baseType: !807, size: 512, offset: 704)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !101, line: 118, size: 512, elements: !808)
!808 = !{!809, !817, !818, !823, !880, !881, !882, !883}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !807, file: !101, line: 119, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !811, line: 9, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !810, file: !811, line: 10, baseType: !343, size: 192, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !810, file: !811, line: 11, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !816, line: 29, baseType: !288)
!816 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !807, file: !101, line: 120, baseType: !815, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !807, file: !101, line: 121, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!100, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !807, file: !101, line: 122, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !101, line: 159, size: 512, align: 512, elements: !826)
!826 = !{!827, !852, !853, !856, !866, !867, !875, !879}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !825, file: !101, line: 160, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !101, line: 215, size: 4608, align: 512, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !101, line: 216, baseType: !362, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !829, file: !101, line: 217, baseType: !96, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !829, file: !101, line: 218, baseType: !96, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !829, file: !101, line: 219, baseType: !96, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !829, file: !101, line: 220, baseType: !96, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !829, file: !101, line: 221, baseType: !96, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !829, file: !101, line: 222, baseType: !96, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !829, file: !101, line: 223, baseType: !96, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !829, file: !101, line: 224, baseType: !96, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !829, file: !101, line: 226, baseType: !96, size: 32, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !829, file: !101, line: 227, baseType: !18, size: 16, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !829, file: !101, line: 228, baseType: !18, size: 16, offset: 208)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !829, file: !101, line: 229, baseType: !96, size: 32, offset: 224)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !829, file: !101, line: 235, baseType: !815, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !829, file: !101, line: 236, baseType: !822, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !829, file: !101, line: 237, baseType: !815, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !829, file: !101, line: 238, baseType: !822, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !829, file: !101, line: 239, baseType: !849, size: 4096, align: 512, offset: 512)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 4096, align: 512, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 8)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !825, file: !101, line: 161, baseType: !96, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !825, file: !101, line: 162, baseType: !854, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !17, line: 32, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !29, line: 96, baseType: !14)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !825, file: !101, line: 163, baseType: !857, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !858, line: 274, baseType: !859)
!858 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !858, line: 274, size: 32, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !859, file: !858, line: 274, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !858, line: 69, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !858, line: 64, size: 32, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !863, file: !858, line: 65, baseType: !96, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !825, file: !101, line: 164, baseType: !822, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !825, file: !101, line: 165, baseType: !868, size: 128, offset: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !811, line: 14, size: 128, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !868, file: !811, line: 15, baseType: !871, size: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !344, line: 26, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !871, file: !344, line: 27, baseType: !650, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !871, file: !344, line: 28, baseType: !348, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !825, file: !101, line: 166, baseType: !876, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!815}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !825, file: !101, line: 167, baseType: !815, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !807, file: !101, line: 123, baseType: !75, size: 8, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !807, file: !101, line: 124, baseType: !75, size: 8, offset: 456)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !807, file: !101, line: 125, baseType: !75, size: 8, offset: 464)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !807, file: !101, line: 126, baseType: !75, size: 8, offset: 472)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !791, file: !692, line: 671, baseType: !807, size: 512, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !791, file: !692, line: 679, baseType: !886, size: 64, offset: 1728)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !691, file: !692, line: 800, baseType: !888, size: 64, offset: 5248)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !692, line: 800, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !691, file: !692, line: 809, baseType: !892, size: 64, offset: 5312)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !692, line: 70, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !691, file: !692, line: 825, baseType: !895, size: 2048, align: 512, offset: 5632)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !692, line: 509, size: 2048, align: 512, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !895, file: !692, line: 511, baseType: !314, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !895, file: !692, line: 512, baseType: !314, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !895, file: !692, line: 513, baseType: !314, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !895, file: !692, line: 514, baseType: !314, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !895, file: !692, line: 515, baseType: !314, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !895, file: !692, line: 516, baseType: !314, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !895, file: !692, line: 518, baseType: !314, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !895, file: !692, line: 519, baseType: !314, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !895, file: !692, line: 520, baseType: !288, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !895, file: !692, line: 522, baseType: !314, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !895, file: !692, line: 523, baseType: !314, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !895, file: !692, line: 524, baseType: !288, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !895, file: !692, line: 526, baseType: !288, size: 64, offset: 768)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !895, file: !692, line: 527, baseType: !314, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !895, file: !692, line: 529, baseType: !314, size: 64, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !895, file: !692, line: 530, baseType: !314, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !895, file: !692, line: 531, baseType: !314, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !895, file: !692, line: 532, baseType: !314, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !895, file: !692, line: 533, baseType: !314, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !895, file: !692, line: 535, baseType: !314, size: 64, offset: 1216)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !895, file: !692, line: 536, baseType: !314, size: 64, offset: 1280)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !895, file: !692, line: 537, baseType: !314, size: 64, offset: 1344)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !895, file: !692, line: 538, baseType: !314, size: 64, offset: 1408)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !895, file: !692, line: 539, baseType: !314, size: 64, offset: 1472)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !895, file: !692, line: 540, baseType: !314, size: 64, offset: 1536)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !895, file: !692, line: 541, baseType: !314, size: 64, offset: 1600)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !895, file: !692, line: 542, baseType: !314, size: 64, offset: 1664)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !895, file: !692, line: 543, baseType: !314, size: 64, offset: 1728)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !691, file: !692, line: 833, baseType: !96, size: 32, offset: 7680)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !691, file: !692, line: 836, baseType: !96, size: 32, offset: 7712)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !691, file: !692, line: 837, baseType: !14, size: 32, offset: 7744)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !691, file: !692, line: 838, baseType: !929, size: 64, offset: 7808)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !932, line: 19, baseType: !933)
!932 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !932, line: 19, size: 64, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !933, file: !932, line: 19, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 1)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !691, file: !692, line: 839, baseType: !940, size: 64, offset: 7872)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !691, file: !692, line: 840, baseType: !931, size: 64, offset: 7936)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !691, file: !692, line: 841, baseType: !12, size: 64, offset: 8000)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !691, file: !692, line: 843, baseType: !18, size: 16, offset: 8064)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !691, file: !692, line: 845, baseType: !18, size: 16, offset: 8080)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !691, file: !692, line: 848, baseType: !14, size: 32, offset: 8096)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !691, file: !692, line: 849, baseType: !947, size: 32, offset: 8128)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !692, line: 718, size: 32, elements: !948)
!948 = !{!949, !956}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !947, file: !692, line: 724, baseType: !950, size: 32)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !947, file: !692, line: 719, size: 32, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !950, file: !692, line: 720, baseType: !75, size: 8)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !950, file: !692, line: 721, baseType: !75, size: 8, offset: 8)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !950, file: !692, line: 722, baseType: !75, size: 8, offset: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !950, file: !692, line: 723, baseType: !75, size: 8, offset: 24)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !947, file: !692, line: 725, baseType: !381, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !691, file: !692, line: 850, baseType: !89, size: 128, offset: 8192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !691, file: !692, line: 851, baseType: !959, size: 64, offset: 8320)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !692, line: 60, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !691, file: !692, line: 855, baseType: !31, size: 64, offset: 8384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !691, file: !692, line: 856, baseType: !75, size: 8, offset: 8448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !691, file: !692, line: 857, baseType: !75, size: 8, offset: 8456)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !691, file: !692, line: 858, baseType: !14, size: 32, offset: 8480)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !691, file: !692, line: 859, baseType: !89, size: 128, offset: 8512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !691, file: !692, line: 860, baseType: !14, size: 32, offset: 8640)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !691, file: !692, line: 861, baseType: !89, size: 128, offset: 8704)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !691, file: !692, line: 873, baseType: !969, size: 256, offset: 8832)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !692, line: 376, size: 256, elements: !970)
!970 = !{!971, !972, !973, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !969, file: !692, line: 381, baseType: !31, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !969, file: !692, line: 384, baseType: !316, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !969, file: !692, line: 389, baseType: !316, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !969, file: !692, line: 392, baseType: !316, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !691, file: !692, line: 875, baseType: !89, size: 128, offset: 9088)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !691, file: !692, line: 877, baseType: !977, size: 320, offset: 9216)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !978, line: 86, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !977, file: !978, line: 87, baseType: !14, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !977, file: !978, line: 88, baseType: !89, size: 128, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !977, file: !978, line: 89, baseType: !89, size: 128, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !691, file: !692, line: 878, baseType: !343, size: 192, align: 64, offset: 9536)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !691, file: !692, line: 881, baseType: !985, size: 64, offset: 9728)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !129, line: 733, size: 10240, elements: !987)
!987 = !{!988, !4868}
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !129, line: 734, baseType: !989, size: 10240)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !129, line: 734, size: 10240, elements: !990)
!990 = !{!991, !995, !1009, !4747, !4748, !4749, !4750, !4751, !4752, !4759, !4760, !4761, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4800, !4802, !4805, !4848, !4849, !4850, !4853, !4854, !4855, !4858, !4859, !4860, !4866, !4867}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !129, line: 739, baseType: !992, size: 512, align: 512)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !129, line: 739, size: 512, align: 512, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !992, file: !129, line: 747, baseType: !41, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !989, file: !129, line: 750, baseType: !996, size: 128, offset: 512)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !997, line: 218, size: 128, elements: !998)
!997 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!998 = !{!999, !1007, !1008}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !997, line: 219, baseType: !1000, size: 32)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !997, line: 219, size: 32, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1000, file: !997, line: 220, baseType: !51, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1000, file: !997, line: 221, baseType: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !997, line: 197, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 197, elements: !1006)
!1006 = !{}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !996, file: !997, line: 223, baseType: !96, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !996, file: !997, line: 224, baseType: !12, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !989, file: !129, line: 752, baseType: !1010, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!31, !1013, !31, !31, !31, !31}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !237, line: 994, size: 1856, align: 64, elements: !1015)
!1015 = !{!1016, !1022, !1023, !1025, !1026, !1034, !1035, !1036, !1119, !1120, !1129, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !237, line: 995, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !237, line: 995, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1017, file: !237, line: 996, baseType: !713, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1017, file: !237, line: 997, baseType: !415, size: 128, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1017, file: !237, line: 998, baseType: !96, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1014, file: !237, line: 1005, baseType: !51, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1014, file: !237, line: 1006, baseType: !1024, size: 32, offset: 160)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !17, line: 156, baseType: !96)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1014, file: !237, line: 1007, baseType: !282, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1014, file: !237, line: 1008, baseType: !1027, size: 256, offset: 256)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1028, line: 66, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1027, file: !1028, line: 67, baseType: !282, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1027, file: !1028, line: 68, baseType: !362, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1027, file: !1028, line: 70, baseType: !357, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1027, file: !1028, line: 72, baseType: !89, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1014, file: !237, line: 1009, baseType: !33, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1014, file: !237, line: 1010, baseType: !96, size: 32, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1014, file: !237, line: 1011, baseType: !1037, size: 256, offset: 640)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !237, line: 948, size: 256, elements: !1038)
!1038 = !{!1039, !1062, !1115, !1116, !1117, !1118}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !237, line: 949, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1041, line: 34, baseType: !1042)
!1041 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1041, line: 25, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1042, file: !1041, line: 26, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1046, line: 27, baseType: !1047)
!1046 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1046, line: 13, size: 64, elements: !1048)
!1048 = !{!1049, !1061}
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !1046, line: 14, baseType: !1050, size: 32)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !1046, line: 14, size: 32, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1050, file: !1046, line: 15, baseType: !41, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !1046, line: 16, baseType: !1054, size: 32)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !1046, line: 16, size: 32, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1054, file: !1046, line: 18, baseType: !75, size: 8)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1054, file: !1046, line: 19, baseType: !1058, size: 24, offset: 8)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 24, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 3)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1047, file: !1046, line: 26, baseType: !63, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1037, file: !237, line: 950, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !106, line: 59, size: 768, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1071, !1072, !1073, !1074}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1064, file: !106, line: 61, baseType: !328, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1064, file: !106, line: 62, baseType: !96, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !106, line: 63, baseType: !51, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1064, file: !106, line: 65, baseType: !1070, size: 256, offset: 128)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 256, elements: !446)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1064, file: !106, line: 66, baseType: !646, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1064, file: !106, line: 68, baseType: !46, size: 192, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1064, file: !106, line: 69, baseType: !415, size: 128, align: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1064, file: !106, line: 70, baseType: !1075, offset: 768)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, elements: !682)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !106, line: 54, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1076, file: !106, line: 55, baseType: !14, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1076, file: !106, line: 56, baseType: !1080, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1082, line: 26, size: 1152, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1083 = !{!1084, !1098, !1099, !1100, !1101, !1105, !1106, !1107, !1110, !1111, !1112, !1113, !1114}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1081, file: !1082, line: 27, baseType: !1085, size: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1086, line: 19, size: 192, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1087 = !{!1088, !1096, !1097}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1085, file: !1086, line: 20, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1090, line: 296, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1091 = !{!1092, !1093, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1089, file: !1090, line: 297, baseType: !51, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1089, file: !1090, line: 299, baseType: !1094, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !17, line: 154, baseType: !96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1089, file: !1090, line: 300, baseType: !12, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1085, file: !1086, line: 21, baseType: !96, size: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1085, file: !1086, line: 22, baseType: !96, size: 32, offset: 160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1081, file: !1082, line: 28, baseType: !415, size: 128, align: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1081, file: !1082, line: 29, baseType: !96, size: 32, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1081, file: !1082, line: 30, baseType: !690, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1081, file: !1082, line: 31, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1104, line: 11, flags: DIFlagFwdDecl)
!1104 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1081, file: !1082, line: 32, baseType: !96, size: 32, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1081, file: !1082, line: 33, baseType: !1080, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1081, file: !1082, line: 35, baseType: !1108, size: 64, offset: 640)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1082, line: 17, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1081, file: !1082, line: 37, baseType: !517, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1081, file: !1082, line: 38, baseType: !655, size: 64, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1081, file: !1082, line: 39, baseType: !14, size: 32, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1081, file: !1082, line: 40, baseType: !550, size: 192, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1081, file: !1082, line: 42, baseType: !14, size: 32, offset: 1088)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1037, file: !237, line: 951, baseType: !105, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1037, file: !237, line: 952, baseType: !291, size: 32, offset: 160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1037, file: !237, line: 952, baseType: !291, size: 32, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1037, file: !237, line: 953, baseType: !14, size: 32, offset: 224)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1014, file: !237, line: 1012, baseType: !276, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1014, file: !237, line: 1013, baseType: !1121, size: 256, offset: 960)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !237, line: 970, size: 256, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1121, file: !237, line: 971, baseType: !31, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1121, file: !237, line: 972, baseType: !96, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1121, file: !237, line: 973, baseType: !96, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1121, file: !237, line: 974, baseType: !96, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1121, file: !237, line: 975, baseType: !96, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1121, file: !237, line: 976, baseType: !33, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1014, file: !237, line: 1014, baseType: !1130, size: 128, offset: 1216)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1131, line: 8, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1132 = !{!1133, !4737}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1130, file: !1131, line: 9, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1136, line: 70, size: 256, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1137 = !{!1138, !4734, !4735, !4736}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1135, file: !1136, line: 71, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1141, line: 82, size: 1536, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1142 = !{!1143, !1144, !1149, !1157, !1158, !1173, !4702, !4704, !4717, !4718, !4719, !4720, !4721, !4726, !4727, !4728}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1140, file: !1141, line: 84, baseType: !96, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1140, file: !1141, line: 85, baseType: !1145, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !858, line: 275, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !858, line: 275, size: 32, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1146, file: !858, line: 275, baseType: !862, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1140, file: !1141, line: 86, baseType: !1150, size: 128, offset: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1151, line: 38, size: 128, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1152 = !{!1153, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !1151, line: 39, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1150, file: !1151, line: 39, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1140, file: !1141, line: 87, baseType: !1139, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1140, file: !1141, line: 88, baseType: !1159, size: 128, offset: 256)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1141, line: 49, size: 128, elements: !1160)
!1160 = !{!1161, !1170}
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1159, file: !1141, line: 50, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1159, file: !1141, line: 50, size: 64, elements: !1163)
!1163 = !{!1164, !1169}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1141, line: 51, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1162, file: !1141, line: 51, size: 64, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1165, file: !1141, line: 52, baseType: !381, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1165, file: !1141, line: 52, baseType: !381, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1162, file: !1141, line: 54, baseType: !314, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1159, file: !1141, line: 56, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1140, file: !1141, line: 89, baseType: !1174, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !237, line: 641, size: 4800, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1186, !1187, !1374, !4517, !4518, !4519, !4520, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4684, !4687, !4688, !4689, !4698, !4699, !4700, !4701}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1175, file: !237, line: 642, baseType: !16, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1175, file: !237, line: 643, baseType: !18, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1175, file: !237, line: 644, baseType: !291, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1175, file: !237, line: 645, baseType: !89, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1175, file: !237, line: 646, baseType: !297, size: 32, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1175, file: !237, line: 647, baseType: !96, size: 32, offset: 224)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1175, file: !237, line: 650, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !237, line: 607, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1175, file: !237, line: 651, baseType: !1184, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1175, file: !237, line: 654, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !237, line: 1966, size: 2048, align: 512, elements: !1191)
!1191 = !{!1192, !1196, !1209, !1215, !1219, !1223, !1227, !1231, !1235, !1239, !1243, !1244, !1250, !1254, !1291, !1322, !1329, !1335, !1339, !1343, !1347, !1351, !1355, !1361, !1365}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1190, file: !237, line: 1967, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1139, !1174, !1139, !96}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1190, file: !237, line: 1968, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!8, !1139, !1174, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1202, line: 10, size: 128, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1203 = !{!1204, !1208}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1201, file: !1202, line: 11, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !12}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1201, file: !1202, line: 12, baseType: !12, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1190, file: !237, line: 1969, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!14, !1213, !1174, !14}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !310, line: 42, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1190, file: !237, line: 1970, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1184, !1174, !14, !425}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1190, file: !237, line: 1972, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!14, !1139, !436, !14}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1190, file: !237, line: 1974, baseType: !1224, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!14, !1213, !1174, !1139, !16, !425}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1190, file: !237, line: 1976, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!14, !1139, !1174, !1139}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1190, file: !237, line: 1977, baseType: !1232, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!14, !1174, !1139}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1190, file: !237, line: 1978, baseType: !1236, size: 64, offset: 512)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!14, !1213, !1174, !1139, !8}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1190, file: !237, line: 1980, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!14, !1213, !1174, !1139, !16}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1190, file: !237, line: 1982, baseType: !1232, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1190, file: !237, line: 1983, baseType: !1245, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!14, !1213, !1174, !1139, !16, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !17, line: 21, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !17, line: 18, baseType: !381)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1190, file: !237, line: 1985, baseType: !1251, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!14, !1213, !1174, !1139, !1174, !1139, !96}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1190, file: !237, line: 1987, baseType: !1255, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!14, !1213, !1139, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !237, line: 226, size: 640, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1273, !1282, !1283, !1288, !1289, !1290}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1259, file: !237, line: 227, baseType: !96, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1259, file: !237, line: 228, baseType: !16, size: 16, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !237, line: 241, baseType: !1264, size: 32, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !237, line: 241, size: 32, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1264, file: !237, line: 242, baseType: !291, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1264, file: !237, line: 243, baseType: !1268, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1269, line: 16, baseType: !1270)
!1269 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 14, size: 32, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1270, file: !1269, line: 15, baseType: !271, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !237, line: 245, baseType: !1274, size: 32, offset: 96)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !237, line: 245, size: 32, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1274, file: !237, line: 246, baseType: !297, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1274, file: !237, line: 247, baseType: !1278, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1269, line: 20, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1269, line: 18, size: 32, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1279, file: !1269, line: 19, baseType: !273, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1259, file: !237, line: 249, baseType: !33, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1259, file: !237, line: 250, baseType: !1284, size: 128, offset: 192)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !373, line: 13, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1284, file: !373, line: 14, baseType: !372, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1284, file: !373, line: 15, baseType: !670, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1259, file: !237, line: 251, baseType: !1284, size: 128, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1259, file: !237, line: 252, baseType: !1284, size: 128, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1259, file: !237, line: 259, baseType: !1013, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1190, file: !237, line: 1988, baseType: !1292, size: 64, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!14, !1213, !1295, !1297, !381, !96}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1299, line: 22, size: 1280, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1298, file: !1299, line: 23, baseType: !381, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1298, file: !1299, line: 24, baseType: !16, size: 16, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1298, file: !1299, line: 25, baseType: !96, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1298, file: !1299, line: 26, baseType: !380, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1298, file: !1299, line: 27, baseType: !314, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1298, file: !1299, line: 28, baseType: !314, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1298, file: !1299, line: 41, baseType: !314, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1298, file: !1299, line: 42, baseType: !1248, size: 32, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1298, file: !1299, line: 43, baseType: !1248, size: 32, offset: 352)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1298, file: !1299, line: 44, baseType: !291, size: 32, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1298, file: !1299, line: 45, baseType: !297, size: 32, offset: 416)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1298, file: !1299, line: 46, baseType: !33, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1298, file: !1299, line: 47, baseType: !1284, size: 128, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1298, file: !1299, line: 48, baseType: !1284, size: 128, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1298, file: !1299, line: 49, baseType: !1284, size: 128, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1298, file: !1299, line: 50, baseType: !1284, size: 128, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1298, file: !1299, line: 51, baseType: !314, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1298, file: !1299, line: 52, baseType: !314, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1298, file: !1299, line: 53, baseType: !381, size: 32, offset: 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1298, file: !1299, line: 54, baseType: !381, size: 32, offset: 1184)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1298, file: !1299, line: 55, baseType: !314, size: 64, offset: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1190, file: !237, line: 1990, baseType: !1323, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1326, !1139, !436, !27}
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 66, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !29, line: 73, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !29, line: 15, baseType: !670)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1190, file: !237, line: 1991, baseType: !1330, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!14, !1174, !1333, !314, !314}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !237, line: 55, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1190, file: !237, line: 1993, baseType: !1336, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!14, !1174, !14}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1190, file: !237, line: 1994, baseType: !1340, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!14, !1174, !1139, !1013, !96, !16}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1190, file: !237, line: 1997, baseType: !1344, size: 64, offset: 1216)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!14, !1213, !1174, !1013, !16}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1190, file: !237, line: 1999, baseType: !1348, size: 64, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1184, !1213, !1139, !14}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1190, file: !237, line: 2001, baseType: !1352, size: 64, offset: 1344)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!14, !1213, !1139, !1184, !14}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1190, file: !237, line: 2003, baseType: !1356, size: 64, offset: 1408)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!14, !1213, !1139, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !237, line: 76, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1190, file: !237, line: 2005, baseType: !1362, size: 64, offset: 1472)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!14, !1139, !1359}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1190, file: !237, line: 2006, baseType: !1366, size: 64, offset: 1536)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !1174}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !237, line: 3192, size: 192, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1370, file: !237, line: 3193, baseType: !1089, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1370, file: !237, line: 3194, baseType: !381, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1175, file: !237, line: 655, baseType: !1375, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !237, line: 1190, size: 10752, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !4034, !4166, !4206, !4289, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4306, !4310, !4311, !4314, !4317, !4320, !4323, !4324, !4325, !4366, !4388, !4389, !4390, !4391, !4392, !4393, !4396, !4400, !4409, !4410, !4411, !4412, !4471, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1376, file: !237, line: 1191, baseType: !89, size: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1376, file: !237, line: 1192, baseType: !1248, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1376, file: !237, line: 1193, baseType: !79, size: 8, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1376, file: !237, line: 1194, baseType: !31, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1376, file: !237, line: 1195, baseType: !33, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1376, file: !237, line: 1196, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !237, line: 2366, size: 576, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1395, !1399, !1403, !1407, !4022, !4023, !4024, !4026, !4027, !4028, !4030, !4031, !4032, !4033}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !237, line: 2367, baseType: !8, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1385, file: !237, line: 2368, baseType: !14, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1385, file: !237, line: 2376, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!14, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1136, line: 21, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1385, file: !237, line: 2377, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !237, line: 75, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1385, file: !237, line: 2378, baseType: !1400, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1139, !1384, !14, !8, !12}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1385, file: !237, line: 2380, baseType: !1404, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1375}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1385, file: !237, line: 2381, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !114, line: 402, size: 9216, align: 512, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1417, !2228, !2254, !2255, !2256, !2257, !2261, !2264, !2265, !2266, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2334, !2338, !2358, !2378, !2379, !2380, !2381, !2390, !2413, !2414, !2417, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2431, !2432, !2531, !2539, !2540, !2541, !2543, !4000, !4001, !4010, !4011, !4012, !4013, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1409, file: !114, line: 403, baseType: !113, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1409, file: !114, line: 406, baseType: !89, size: 128, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1409, file: !114, line: 409, baseType: !1414, size: 448, offset: 192)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 448, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 56)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1409, file: !114, line: 417, baseType: !1418, size: 768, offset: 640)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !114, line: 45, size: 768, elements: !1419)
!1419 = !{!1420, !2222, !2223, !2224, !2227}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1418, file: !114, line: 46, baseType: !1421, size: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1422, line: 64, size: 512, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1423 = !{!1424, !1425, !1426, !1428, !1472, !2069, !2212, !2217, !2218, !2219, !2220, !2221}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1422, line: 65, baseType: !8, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1421, file: !1422, line: 66, baseType: !89, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1421, file: !1422, line: 67, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1421, file: !1422, line: 68, baseType: !1429, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1422, line: 168, size: 768, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1430, file: !1422, line: 169, baseType: !89, size: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1430, file: !1422, line: 170, baseType: !51, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1430, file: !1422, line: 171, baseType: !1421, size: 512, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1430, file: !1422, line: 172, baseType: !1436, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1422, line: 133, size: 192, elements: !1439)
!1439 = !{!1440, !1447, !1452}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1438, file: !1422, line: 134, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!14, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !1422, line: 135, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!8, !1445}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1438, file: !1422, line: 136, baseType: !1453, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!14, !1445, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1422, line: 125, size: 20736, elements: !1459)
!1459 = !{!1460, !1462, !1466, !1467, !1471}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1458, file: !1422, line: 126, baseType: !1461, size: 192)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 192, elements: !1059)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1458, file: !1422, line: 127, baseType: !1463, size: 4096, offset: 192)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 4096, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1458, file: !1422, line: 128, baseType: !14, size: 32, offset: 4288)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1458, file: !1422, line: 129, baseType: !1468, size: 16384, offset: 4320)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 2048)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1458, file: !1422, line: 130, baseType: !14, size: 32, offset: 20704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1421, file: !1422, line: 69, baseType: !1473, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1422, line: 116, size: 384, elements: !1476)
!1476 = !{!1477, !1481, !1500, !2030, !2061, !2065}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1475, file: !1422, line: 117, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1427}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1475, file: !1422, line: 118, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1485, line: 254, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1486 = !{!1487, !1496}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1484, file: !1485, line: 255, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1326, !1427, !1491, !436}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1485, line: 30, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1492, file: !1485, line: 31, baseType: !8, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1492, file: !1485, line: 32, baseType: !16, size: 16, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1484, file: !1485, line: 256, baseType: !1497, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1326, !1427, !1491, !8, !27}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1475, file: !1422, line: 119, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1485, line: 84, size: 320, elements: !1505)
!1505 = !{!1506, !1507, !1511, !2026, !2028}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !1485, line: 85, baseType: !8, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1504, file: !1485, line: 86, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!16, !1427, !1491, !14}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1504, file: !1485, line: 88, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!16, !1427, !1515, !14}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1485, line: 175, size: 512, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !2017, !2021, !2022}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1516, file: !1485, line: 176, baseType: !1492, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1516, file: !1485, line: 177, baseType: !27, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1516, file: !1485, line: 178, baseType: !12, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1516, file: !1485, line: 179, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !237, line: 472, size: 1536, align: 64, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !2009, !2010, !2011, !2014, !2015, !2016}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1526, file: !237, line: 473, baseType: !1174, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1526, file: !237, line: 474, baseType: !1089, size: 128, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1526, file: !237, line: 475, baseType: !351, size: 320, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1526, file: !237, line: 476, baseType: !1094, size: 32, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1526, file: !237, line: 477, baseType: !41, size: 32, offset: 544)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1526, file: !237, line: 482, baseType: !871, size: 128, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1526, file: !237, line: 483, baseType: !31, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1526, file: !237, line: 484, baseType: !31, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1526, file: !237, line: 485, baseType: !1537, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !237, line: 404, size: 1280, elements: !1540)
!1540 = !{!1541, !1834, !1904, !1908, !1912, !1918, !1924, !1928, !1933, !1937, !1941, !1945, !1973, !1977, !1981, !1985, !1990, !1994, !2001, !2005}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1539, file: !237, line: 405, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!14, !1545, !1832}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !129, line: 74, size: 512, align: 128, elements: !1547)
!1547 = !{!1548, !1549, !1826, !1831}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !129, line: 75, baseType: !31, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !129, line: 83, baseType: !1550, size: 320, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !129, line: 83, size: 320, elements: !1551)
!1551 = !{!1552, !1573, !1587, !1591, !1825}
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !129, line: 84, baseType: !1553, size: 320)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !129, line: 84, size: 320, elements: !1554)
!1554 = !{!1555, !1566, !1567, !1572}
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !129, line: 90, baseType: !1556, size: 128)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !129, line: 90, size: 128, elements: !1557)
!1557 = !{!1558, !1559, !1564, !1565}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1556, file: !129, line: 91, baseType: !89, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !129, line: 94, baseType: !1560, size: 128)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !129, line: 94, size: 128, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1560, file: !129, line: 96, baseType: !12, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1560, file: !129, line: 98, baseType: !96, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1556, file: !129, line: 102, baseType: !89, size: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1556, file: !129, line: 103, baseType: !89, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1553, file: !129, line: 106, baseType: !1525, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !129, line: 107, baseType: !1568, size: 64, offset: 192)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !129, line: 107, size: 64, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1568, file: !129, line: 108, baseType: !31, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1568, file: !129, line: 109, baseType: !31, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1553, file: !129, line: 117, baseType: !31, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !129, line: 119, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !129, line: 119, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1580, !1581, !1582}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1574, file: !129, line: 124, baseType: !31, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1574, file: !129, line: 125, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !129, line: 125, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1574, file: !129, line: 126, baseType: !31, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1574, file: !129, line: 127, baseType: !31, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !129, line: 128, baseType: !1583, size: 64, offset: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !129, line: 128, size: 64, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1583, file: !129, line: 133, baseType: !31, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1583, file: !129, line: 138, baseType: !282, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !129, line: 141, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !129, line: 141, size: 64, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1588, file: !129, line: 142, baseType: !31, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !129, line: 144, baseType: !1592, size: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !129, line: 144, size: 128, elements: !1593)
!1593 = !{!1594, !1824}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1592, file: !129, line: 146, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !121, line: 126, size: 1216, elements: !1597)
!1597 = !{!1598, !1608, !1629, !1630, !1631, !1632, !1633, !1806, !1807, !1808}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1596, file: !121, line: 127, baseType: !1599, size: 384)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !121, line: 21, size: 384, elements: !1600)
!1600 = !{!1601, !1602, !1604, !1605, !1606, !1607}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1599, file: !121, line: 22, baseType: !31, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1599, file: !121, line: 23, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1599, file: !121, line: 24, baseType: !1603, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1599, file: !121, line: 25, baseType: !31, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1599, file: !121, line: 26, baseType: !31, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1599, file: !121, line: 27, baseType: !31, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1596, file: !121, line: 128, baseType: !1609, size: 128, offset: 384)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1610, line: 105, size: 128, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1609, file: !1610, line: 110, baseType: !31, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1609, file: !1610, line: 118, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1610, line: 95, size: 448, elements: !1616)
!1616 = !{!1617, !1618, !1624, !1625, !1626, !1627, !1628}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1615, file: !1610, line: 96, baseType: !282, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1615, file: !1610, line: 97, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1610, line: 60, baseType: !1621)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1615, file: !1610, line: 98, baseType: !1619, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1615, file: !1610, line: 99, baseType: !425, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1615, file: !1610, line: 100, baseType: !425, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1615, file: !1610, line: 101, baseType: !415, size: 128, align: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1615, file: !1610, line: 102, baseType: !1623, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1596, file: !121, line: 129, baseType: !605, size: 256, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1596, file: !121, line: 130, baseType: !120, size: 32, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !121, line: 131, baseType: !96, size: 32, offset: 800)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1596, file: !121, line: 132, baseType: !31, size: 64, offset: 832)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1596, file: !121, line: 133, baseType: !1634, size: 64, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !121, line: 77, size: 192, elements: !1637)
!1637 = !{!1638, !1642, !1802}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1636, file: !121, line: 83, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1545}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1636, file: !121, line: 89, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !129, line: 1184, baseType: !96)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1649, line: 512, size: 896, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1650 = !{!1651, !1769, !1770, !1777, !1784, !1794, !1795, !1796, !1798, !1800}
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 513, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1649, line: 513, size: 320, elements: !1653)
!1653 = !{!1654, !1765, !1766, !1767, !1768}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1652, file: !1649, line: 514, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !129, line: 625, size: 1344, elements: !1657)
!1657 = !{!1658, !1667, !1668, !1676, !1683, !1684, !1689, !1690, !1695, !1696, !1699, !1758, !1759, !1760, !1761, !1762, !1763}
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !129, line: 628, baseType: !1659, size: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !129, line: 628, size: 128, elements: !1660)
!1660 = !{!1661, !1666}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !129, line: 629, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !129, line: 629, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1662, file: !129, line: 631, baseType: !31, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1662, file: !129, line: 632, baseType: !31, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1659, file: !129, line: 635, baseType: !415, size: 128, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1656, file: !129, line: 639, baseType: !985, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1656, file: !129, line: 640, baseType: !1669, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1670, line: 297, baseType: !1671)
!1670 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1670, line: 297, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1671, file: !1670, line: 297, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1675, line: 19, baseType: !31)
!1675 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !129, line: 646, baseType: !1677, size: 64, offset: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !129, line: 646, size: 64, elements: !1678)
!1678 = !{!1679, !1682}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1677, file: !129, line: 647, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !129, line: 542, baseType: !31)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1677, file: !129, line: 648, baseType: !1681, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1656, file: !129, line: 666, baseType: !14, size: 32, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1656, file: !129, line: 667, baseType: !1685, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !129, line: 579, size: 320, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1686, file: !129, line: 580, baseType: !351, size: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1656, file: !129, line: 670, baseType: !425, size: 8, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1656, file: !129, line: 681, baseType: !1691, size: 256, offset: 512)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !129, line: 678, size: 256, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1691, file: !129, line: 679, baseType: !343, size: 192, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1691, file: !129, line: 680, baseType: !31, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1656, file: !129, line: 689, baseType: !89, size: 128, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1656, file: !129, line: 691, baseType: !1697, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !129, line: 691, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1656, file: !129, line: 694, baseType: !1700, size: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1649, line: 563, size: 1024, elements: !1703)
!1703 = !{!1704, !1708, !1709, !1713, !1717, !1721, !1722, !1726, !1730, !1734, !1735, !1736, !1740, !1744, !1750, !1754}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1702, file: !1649, line: 564, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1655}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1702, file: !1649, line: 569, baseType: !1705, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1702, file: !1649, line: 571, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!14, !1655, !31}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1702, file: !1649, line: 572, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!14, !1655}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1702, file: !1649, line: 578, baseType: !1718, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!14, !1655, !31, !31, !31}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1702, file: !1649, line: 580, baseType: !1643, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1702, file: !1649, line: 581, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1646, !1647, !96}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1702, file: !1649, line: 582, baseType: !1727, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1646, !1647, !31, !31}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1702, file: !1649, line: 584, baseType: !1731, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!31, !1655}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1702, file: !1649, line: 588, baseType: !1643, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1702, file: !1649, line: 591, baseType: !1643, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1702, file: !1649, line: 597, baseType: !1737, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!14, !1655, !31, !12, !14, !14}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !1649, line: 603, baseType: !1741, size: 64, offset: 768)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!8, !1655}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1702, file: !1649, line: 613, baseType: !1745, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!14, !1655, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !129, line: 717, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1702, file: !1649, line: 625, baseType: !1751, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1748, !1655, !31}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1702, file: !1649, line: 633, baseType: !1755, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1545, !1655, !31}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1656, file: !129, line: 697, baseType: !31, size: 64, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1656, file: !129, line: 699, baseType: !1013, size: 64, offset: 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1656, file: !129, line: 700, baseType: !12, size: 64, offset: 1152)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1656, file: !129, line: 711, baseType: !282, size: 64, offset: 1216)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1656, file: !129, line: 717, baseType: !1748, size: 64, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1656, file: !129, line: 722, baseType: !1764, offset: 1344)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !129, line: 570, elements: !1006)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1652, file: !1649, line: 515, baseType: !1094, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1652, file: !1649, line: 516, baseType: !31, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1652, file: !1649, line: 517, baseType: !31, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1652, file: !1649, line: 518, baseType: !31, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1648, file: !1649, line: 520, baseType: !128, size: 32, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1648, file: !1649, line: 522, baseType: !1771, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1675, line: 22, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1675, line: 22, size: 64, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1773, file: !1675, line: 22, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1675, line: 15, baseType: !31)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1648, file: !1649, line: 524, baseType: !1778, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1670, line: 372, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 372, size: 64, elements: !1781)
!1781 = !{!1782}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1780, file: !1670, line: 372, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1675, line: 16, baseType: !31)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 527, baseType: !1785, size: 64, offset: 512)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !1649, line: 527, size: 64, elements: !1786)
!1786 = !{!1787, !1793}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1785, file: !1649, line: 528, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1675, line: 21, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1675, line: 21, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1789, file: !1675, line: 21, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1675, line: 14, baseType: !31)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1785, file: !1649, line: 529, baseType: !1772, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1648, file: !1649, line: 534, baseType: !1545, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1648, file: !1649, line: 535, baseType: !1545, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1648, file: !1649, line: 541, baseType: !1797, size: 64, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1648, file: !1649, line: 545, baseType: !1799, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1648, file: !1649, line: 549, baseType: !1801, size: 64, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1670, line: 520, baseType: !1545)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1636, file: !121, line: 100, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!14, !1595, !31, !31, !14}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1596, file: !121, line: 134, baseType: !12, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1596, file: !121, line: 135, baseType: !14, size: 32, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !121, line: 136, baseType: !1809, size: 128, offset: 1088)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !121, line: 136, size: 128, elements: !1810)
!1810 = !{!1811, !1817}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1809, file: !121, line: 137, baseType: !1812, size: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1813, line: 6, size: 128, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1812, file: !1813, line: 7, baseType: !314, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1812, file: !1813, line: 8, baseType: !314, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !121, line: 138, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !121, line: 138, elements: !1819)
!1819 = !{!1820, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1818, file: !121, line: 138, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !121, line: 138, elements: !1006)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1818, file: !121, line: 138, baseType: !1823)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1812, elements: !682)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1592, file: !129, line: 147, baseType: !12, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1550, file: !129, line: 161, baseType: !415, size: 128, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !129, line: 164, baseType: !1827, size: 32, offset: 384)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !129, line: 164, size: 32, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1827, file: !129, line: 169, baseType: !41, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1827, file: !129, line: 177, baseType: !96, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1546, file: !129, line: 181, baseType: !41, size: 32, offset: 416)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !237, line: 309, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1539, file: !237, line: 406, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!14, !1013, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !129, line: 293, size: 1536, elements: !1840)
!1840 = !{!1841, !1871, !1885}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !129, line: 295, baseType: !1842, size: 512)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !129, line: 295, size: 512, elements: !1843)
!1843 = !{!1844, !1870}
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !129, line: 296, baseType: !1845, size: 448)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !129, line: 296, size: 448, elements: !1846)
!1846 = !{!1847, !1848, !1857, !1858, !1859, !1868, !1869}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !129, line: 298, baseType: !31, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !129, line: 299, baseType: !1849, size: 128, offset: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !129, line: 299, size: 128, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1849, file: !129, line: 300, baseType: !89, size: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !129, line: 302, baseType: !1853, size: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !129, line: 302, size: 128, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1853, file: !129, line: 303, baseType: !12, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1853, file: !129, line: 305, baseType: !96, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1845, file: !129, line: 310, baseType: !1525, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1845, file: !129, line: 311, baseType: !31, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !129, line: 312, baseType: !1860, size: 64, offset: 320)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !129, line: 312, size: 64, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1860, file: !129, line: 313, baseType: !12, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1860, file: !129, line: 314, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !129, line: 257, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 255, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1865, file: !129, line: 256, baseType: !31, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1845, file: !129, line: 316, baseType: !41, size: 32, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1845, file: !129, line: 317, baseType: !41, size: 32, offset: 416)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1842, file: !129, line: 323, baseType: !1546, size: 512, align: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !129, line: 325, baseType: !1872, size: 512, offset: 512)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !129, line: 325, size: 512, elements: !1873)
!1873 = !{!1874, !1884}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !129, line: 326, baseType: !1875, size: 320)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1872, file: !129, line: 326, size: 320, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1875, file: !129, line: 327, baseType: !31, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1875, file: !129, line: 328, baseType: !31, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1875, file: !129, line: 329, baseType: !31, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1875, file: !129, line: 331, baseType: !41, size: 32, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1875, file: !129, line: 332, baseType: !41, size: 32, offset: 224)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1875, file: !129, line: 333, baseType: !41, size: 32, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1875, file: !129, line: 335, baseType: !96, size: 32, offset: 288)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1872, file: !129, line: 339, baseType: !1546, size: 512, align: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !129, line: 341, baseType: !1886, size: 512, offset: 1024)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !129, line: 341, size: 512, elements: !1887)
!1887 = !{!1888, !1897, !1903}
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !129, line: 342, baseType: !1889, size: 384)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !129, line: 342, size: 384, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1889, file: !129, line: 343, baseType: !31, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1889, file: !129, line: 344, baseType: !31, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1889, file: !129, line: 346, baseType: !12, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1889, file: !129, line: 347, baseType: !12, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1889, file: !129, line: 348, baseType: !12, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1889, file: !129, line: 349, baseType: !12, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1886, file: !129, line: 352, baseType: !1898, size: 256)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !129, line: 352, size: 256, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1898, file: !129, line: 353, baseType: !31, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1898, file: !129, line: 354, baseType: !31, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1898, file: !129, line: 356, baseType: !89, size: 128, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1886, file: !129, line: 359, baseType: !1546, size: 512, align: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1539, file: !237, line: 409, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!14, !1525, !1832}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1539, file: !237, line: 412, baseType: !1909, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!425, !1525, !1838}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1539, file: !237, line: 414, baseType: !1913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !237, line: 310, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1539, file: !237, line: 416, baseType: !1919, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!14, !1013, !1525, !33, !96, !1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1539, file: !237, line: 419, baseType: !1925, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!14, !1013, !1525, !33, !96, !96, !1545, !12}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1539, file: !237, line: 424, baseType: !1929, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1932, !1525, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !17, line: 131, baseType: !314)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1539, file: !237, line: 425, baseType: !1934, size: 64, offset: 512)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1838, !27, !27}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1539, file: !237, line: 426, baseType: !1938, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!425, !1838, !1094}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1539, file: !237, line: 427, baseType: !1942, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1838}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1539, file: !237, line: 428, baseType: !1946, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1326, !1949, !1971}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !237, line: 373, size: 384, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1958, !1959, !1960, !1961}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1950, file: !237, line: 374, baseType: !1013, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1950, file: !237, line: 375, baseType: !33, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1950, file: !237, line: 376, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1949, !670}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1950, file: !237, line: 377, baseType: !12, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1950, file: !237, line: 378, baseType: !14, size: 32, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1950, file: !237, line: 379, baseType: !85, size: 16, offset: 288)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !237, line: 380, baseType: !1962, size: 64, offset: 320)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !237, line: 380, size: 64, elements: !1963)
!1963 = !{!1964, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1962, file: !237, line: 386, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !237, line: 386, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1962, file: !237, line: 395, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1326, !12}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !237, line: 69, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1539, file: !237, line: 433, baseType: !1974, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!14, !1525, !1838, !1838, !144}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1539, file: !237, line: 435, baseType: !1978, size: 64, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!14, !1838}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1539, file: !237, line: 436, baseType: !1982, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!425, !1838, !27, !27}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1539, file: !237, line: 438, baseType: !1986, size: 64, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1838, !1989, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1539, file: !237, line: 439, baseType: !1991, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!14, !1525, !1545}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1539, file: !237, line: 442, baseType: !1995, size: 64, offset: 1088)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!14, !1998, !1013, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !237, line: 66, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1539, file: !237, line: 444, baseType: !2002, size: 64, offset: 1152)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !1013}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1539, file: !237, line: 445, baseType: !2006, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!14, !1949, !1971}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1526, file: !237, line: 486, baseType: !31, size: 64, offset: 896)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1526, file: !237, line: 487, baseType: !351, size: 320, offset: 960)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1526, file: !237, line: 488, baseType: !2012, size: 32, offset: 1280)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2013, line: 8, baseType: !381)
!2013 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1526, file: !237, line: 489, baseType: !51, size: 32, offset: 1312)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1526, file: !237, line: 490, baseType: !89, size: 128, offset: 1344)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1526, file: !237, line: 491, baseType: !12, size: 64, offset: 1472)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1516, file: !1485, line: 180, baseType: !2018, size: 64, offset: 320)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1326, !1013, !1427, !1515, !436, !33, !27}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1516, file: !1485, line: 182, baseType: !2018, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1516, file: !1485, line: 184, baseType: !2023, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!14, !1013, !1427, !1515, !1655}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1504, file: !1485, line: 90, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1504, file: !1485, line: 91, baseType: !2029, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1475, file: !1422, line: 120, baseType: !2031, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2034, !1445}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !152, line: 39, size: 384, elements: !2037)
!2037 = !{!2038, !2039, !2043, !2047, !2056, !2060}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2036, file: !152, line: 40, baseType: !151, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2036, file: !152, line: 41, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!425}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2036, file: !152, line: 42, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!12}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2036, file: !152, line: 43, baseType: !2048, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2055, line: 177, flags: DIFlagFwdDecl)
!2055 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2036, file: !152, line: 44, baseType: !2057, size: 64, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!2051}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2036, file: !152, line: 45, baseType: !1205, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1475, file: !1422, line: 121, baseType: !2062, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2051, !1445}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1475, file: !1422, line: 122, baseType: !2066, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !1445, !630, !631}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1421, file: !1422, line: 70, baseType: !2070, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2072, line: 190, size: 1152, elements: !2073)
!2072 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2204, !2205, !2206, !2207, !2208, !2211}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2071, file: !2072, line: 191, baseType: !41, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2071, file: !2072, line: 192, baseType: !41, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2071, file: !2072, line: 202, baseType: !2070, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2071, file: !2072, line: 203, baseType: !8, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2071, file: !2072, line: 205, baseType: !343, size: 192, align: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2071, file: !2072, line: 207, baseType: !2051, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2071, file: !2072, line: 208, baseType: !96, size: 32, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2072, line: 209, baseType: !2082, size: 256, offset: 512)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2072, line: 209, size: 256, elements: !2083)
!2083 = !{!2084, !2093, !2097}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2082, file: !2072, line: 210, baseType: !2085, size: 256)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2072, line: 153, size: 256, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2092}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2085, file: !2072, line: 154, baseType: !31, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2085, file: !2072, line: 156, baseType: !650, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2085, file: !2072, line: 162, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2072, line: 162, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2085, file: !2072, line: 167, baseType: !31, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2082, file: !2072, line: 211, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2072, line: 170, size: 64, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2094, file: !2072, line: 171, baseType: !2070, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2082, file: !2072, line: 212, baseType: !2098, size: 256)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2072, line: 174, size: 256, elements: !2099)
!2099 = !{!2100, !2199, !2202, !2203}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2098, file: !2072, line: 175, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2072, line: 271, size: 768, elements: !2104)
!2104 = !{!2105, !2163, !2167, !2168, !2169, !2170, !2171, !2175, !2176, !2177, !2178, !2195}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2103, file: !2072, line: 276, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!14, !2109}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2072, line: 251, size: 1216, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2110, file: !2072, line: 253, baseType: !2070, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2110, file: !2072, line: 254, baseType: !1013, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2110, file: !2072, line: 255, baseType: !2115, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2117, line: 17, size: 960, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2148, !2149, !2152}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2116, file: !2117, line: 18, baseType: !436, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2116, file: !2117, line: 19, baseType: !27, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2116, file: !2117, line: 20, baseType: !27, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2116, file: !2117, line: 21, baseType: !27, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2116, file: !2117, line: 22, baseType: !27, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2116, file: !2117, line: 23, baseType: !33, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2116, file: !2117, line: 24, baseType: !33, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2116, file: !2117, line: 25, baseType: !1027, size: 256, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2116, file: !2117, line: 26, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2117, line: 32, size: 256, elements: !2131)
!2131 = !{!2132, !2136, !2140, !2144}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2130, file: !2117, line: 33, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!12, !2115, !32}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2130, file: !2117, line: 34, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2115, !12}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2130, file: !2117, line: 35, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!12, !2115, !12, !32}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2130, file: !2117, line: 36, baseType: !2145, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!14, !2115, !12}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2116, file: !2117, line: 27, baseType: !14, size: 32, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2116, file: !2117, line: 28, baseType: !2150, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2116, file: !2117, line: 29, baseType: !12, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2110, file: !2072, line: 256, baseType: !12, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2110, file: !2072, line: 259, baseType: !1027, size: 256, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2110, file: !2072, line: 260, baseType: !1027, size: 256, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2110, file: !2072, line: 261, baseType: !14, size: 32, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2110, file: !2072, line: 262, baseType: !89, size: 128, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2110, file: !2072, line: 263, baseType: !436, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2110, file: !2072, line: 265, baseType: !27, size: 64, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2110, file: !2072, line: 266, baseType: !425, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2110, file: !2072, line: 267, baseType: !425, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2110, file: !2072, line: 268, baseType: !1700, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2103, file: !2072, line: 277, baseType: !2164, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2109}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2103, file: !2072, line: 290, baseType: !2145, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2103, file: !2072, line: 292, baseType: !2133, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2103, file: !2072, line: 293, baseType: !2141, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2103, file: !2072, line: 294, baseType: !2137, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2103, file: !2072, line: 296, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!1326, !2109, !436, !27, !33}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2103, file: !2072, line: 306, baseType: !27, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2103, file: !2072, line: 313, baseType: !425, size: 8, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2103, file: !2072, line: 314, baseType: !2172, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2103, file: !2072, line: 317, baseType: !2179, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !2109, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2183, line: 59, baseType: !96)
!2183 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2186, line: 37, size: 128, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2187 = !{!2188, !2194}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2185, file: !2186, line: 38, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2186, line: 31, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !1013, !2193, !2184}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2185, file: !2186, line: 39, baseType: !2182, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2103, file: !2072, line: 320, baseType: !2196, size: 64, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!14, !2109, !1655}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2098, file: !2072, line: 176, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2072, line: 35, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !2072, line: 177, baseType: !33, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2098, file: !2072, line: 178, baseType: !2070, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2071, file: !2072, line: 215, baseType: !12, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2071, file: !2072, line: 221, baseType: !314, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2071, file: !2072, line: 223, baseType: !18, size: 16, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2071, file: !2072, line: 224, baseType: !16, size: 16, offset: 912)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2071, file: !2072, line: 225, baseType: !2209, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2072, line: 36, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2071, file: !2072, line: 227, baseType: !415, size: 128, align: 64, offset: 1024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1421, file: !1422, line: 71, baseType: !2213, size: 32, offset: 448)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2214, line: 19, size: 32, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2213, file: !2214, line: 20, baseType: !328, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1421, file: !1422, line: 73, baseType: !96, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1421, file: !1422, line: 74, baseType: !96, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1421, file: !1422, line: 75, baseType: !96, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1421, file: !1422, line: 76, baseType: !96, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1421, file: !1422, line: 77, baseType: !96, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1418, file: !114, line: 47, baseType: !1408, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1418, file: !114, line: 48, baseType: !1427, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1418, file: !114, line: 49, baseType: !2225, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !114, line: 49, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1418, file: !114, line: 50, baseType: !604, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1409, file: !114, line: 418, baseType: !2229, size: 64, offset: 1408)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !114, line: 53, size: 448, elements: !2231)
!2231 = !{!2232, !2233, !2238, !2242, !2246, !2250}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2230, file: !114, line: 54, baseType: !1492, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2230, file: !114, line: 55, baseType: !2234, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!1326, !2229, !2237, !436}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2230, file: !114, line: 57, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!1326, !2229, !2237, !8, !27}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2230, file: !114, line: 59, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !1408, !8}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2230, file: !114, line: 60, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!14, !1408}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2230, file: !114, line: 61, baseType: !2251, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !1408}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1409, file: !114, line: 419, baseType: !8, size: 64, offset: 1472)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1409, file: !114, line: 420, baseType: !8, size: 64, offset: 1536)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1409, file: !114, line: 421, baseType: !1427, size: 64, offset: 1600)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1409, file: !114, line: 424, baseType: !2258, size: 64, offset: 1664)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !114, line: 424, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1409, file: !114, line: 425, baseType: !2262, size: 64, offset: 1728)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1409, file: !114, line: 426, baseType: !96, size: 32, offset: 1792)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1409, file: !114, line: 435, baseType: !1027, size: 256, offset: 1856)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1409, file: !114, line: 437, baseType: !2267, size: 64, offset: 2112)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2269, line: 69, size: 320, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2270 = !{!2271, !2272, !2273, !2290, !2292, !2296, !2297}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2268, file: !2269, line: 70, baseType: !8, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2268, file: !2269, line: 71, baseType: !1408, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2268, file: !2269, line: 72, baseType: !2274, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2269, line: 47, size: 256, elements: !2277)
!2277 = !{!2278, !2279, !2285, !2289}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !2269, line: 49, baseType: !96, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2276, file: !2269, line: 51, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!14, !8, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2268)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2276, file: !2269, line: 53, baseType: !2286, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!14, !436, !2283}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2276, file: !2269, line: 55, baseType: !1205, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2268, file: !2269, line: 73, baseType: !2291, size: 16, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2268, file: !2269, line: 74, baseType: !2293, size: 8, offset: 208)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !76, line: 16, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !78, line: 20, baseType: !2295)
!2295 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 75, baseType: !75, size: 8, offset: 216)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !2269, line: 76, baseType: !2298, size: 64, offset: 256)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2269, line: 76, size: 64, elements: !2299)
!2299 = !{!2300, !2301, !2308}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2298, file: !2269, line: 77, baseType: !12, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2298, file: !2269, line: 78, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2269, line: 86, size: 128, elements: !2305)
!2305 = !{!2306, !2307}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2304, file: !2269, line: 87, baseType: !96, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2304, file: !2269, line: 88, baseType: !436, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2298, file: !2269, line: 79, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2269, line: 92, size: 256, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2317, !2318}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2311, file: !2269, line: 94, baseType: !96, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2311, file: !2269, line: 95, baseType: !96, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2311, file: !2269, line: 96, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2311, file: !2269, line: 97, baseType: !2274, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2311, file: !2269, line: 98, baseType: !12, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1409, file: !114, line: 438, baseType: !96, size: 32, offset: 2176)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1409, file: !114, line: 441, baseType: !96, size: 32, offset: 2208)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1409, file: !114, line: 442, baseType: !2258, size: 64, offset: 2240)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1409, file: !114, line: 443, baseType: !2262, size: 64, offset: 2304)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1409, file: !114, line: 444, baseType: !425, size: 8, offset: 2368)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1409, file: !114, line: 451, baseType: !425, size: 8, offset: 2376)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1409, file: !114, line: 454, baseType: !96, size: 32, offset: 2400)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1409, file: !114, line: 455, baseType: !2327, size: 64, offset: 2432)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2329, line: 23, size: 96, elements: !2330)
!2329 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2328, file: !2329, line: 24, baseType: !14, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2328, file: !2329, line: 24, baseType: !14, size: 32, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2328, file: !2329, line: 24, baseType: !14, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1409, file: !114, line: 458, baseType: !2335, size: 64, offset: 2496)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!14}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1409, file: !114, line: 460, baseType: !2339, size: 4032, align: 512, offset: 2560)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 4032, elements: !2356)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !114, line: 362, size: 576, elements: !2341)
!2341 = !{!2342, !2343, !2344}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2340, file: !114, line: 363, baseType: !12, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2340, file: !114, line: 364, baseType: !96, size: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2340, file: !114, line: 367, baseType: !2345, size: 448, offset: 128)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !114, line: 319, size: 448, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2345, file: !114, line: 320, baseType: !1408, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2345, file: !114, line: 321, baseType: !2349, size: 384, offset: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2350, line: 40, size: 384, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2351 = !{!2352}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2349, file: !2350, line: 41, baseType: !2353, size: 384, align: 64)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 384, align: 64, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 2)
!2356 = !{!2357}
!2357 = !DISubrange(count: 7)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1409, file: !114, line: 463, baseType: !2359, size: 192, offset: 6592)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2360, line: 8, size: 192, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2361 = !{!2362, !2363, !2365}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2359, file: !2360, line: 10, baseType: !96, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2359, file: !2360, line: 11, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2359, file: !2360, line: 12, baseType: !2366, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2368, line: 59, size: 48, elements: !2369)
!2368 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2369 = !{!2370, !2373, !2374, !2375, !2376, !2377}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2367, file: !2368, line: 60, baseType: !2371, size: 16)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !76, line: 18, baseType: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !78, line: 23, baseType: !386)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2367, file: !2368, line: 61, baseType: !2371, size: 16, offset: 16)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2367, file: !2368, line: 63, baseType: !96, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2367, file: !2368, line: 64, baseType: !96, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2367, file: !2368, line: 65, baseType: !96, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2367, file: !2368, line: 66, baseType: !96, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1409, file: !114, line: 465, baseType: !31, size: 64, offset: 6784)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1409, file: !114, line: 469, baseType: !96, size: 32, offset: 6848)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1409, file: !114, line: 470, baseType: !89, size: 128, offset: 6912)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1409, file: !114, line: 471, baseType: !2382, size: 64, offset: 7040)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2384, line: 33, size: 96, elements: !2385)
!2384 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2383, file: !2384, line: 37, baseType: !14, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2383, file: !2384, line: 43, baseType: !14, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2383, file: !2384, line: 45, baseType: !18, size: 16, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2383, file: !2384, line: 47, baseType: !18, size: 16, offset: 80)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1409, file: !114, line: 476, baseType: !2391, size: 64, offset: 7104)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !114, line: 378, size: 256, elements: !2393)
!2393 = !{!2394, !2410, !2411, !2412}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2392, file: !114, line: 379, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2397, line: 204, baseType: !2398)
!2397 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2397, line: 197, size: 192, elements: !2399)
!2399 = !{!2400, !2402, !2403, !2404, !2406, !2408}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2398, file: !2397, line: 198, baseType: !2401, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2397, line: 21, baseType: !382)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2398, file: !2397, line: 199, baseType: !79, size: 8, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2398, file: !2397, line: 200, baseType: !79, size: 8, offset: 40)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2398, file: !2397, line: 201, baseType: !2405, size: 16, offset: 48)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2397, line: 17, baseType: !86)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2398, file: !2397, line: 202, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2397, line: 16, baseType: !315)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2398, file: !2397, line: 203, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2397, line: 22, baseType: !315)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2392, file: !114, line: 380, baseType: !96, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2392, file: !114, line: 381, baseType: !436, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2392, file: !114, line: 382, baseType: !436, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1409, file: !114, line: 477, baseType: !2392, size: 256, offset: 7168)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1409, file: !114, line: 480, baseType: !2415, size: 64, offset: 7424)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !114, line: 480, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1409, file: !114, line: 483, baseType: !2418, size: 64, offset: 7488)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !114, line: 483, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1409, file: !114, line: 488, baseType: !436, size: 64, offset: 7552)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1409, file: !114, line: 492, baseType: !12, size: 64, offset: 7616)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1409, file: !114, line: 493, baseType: !96, size: 32, offset: 7680)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1409, file: !114, line: 495, baseType: !12, size: 64, offset: 7744)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1409, file: !114, line: 496, baseType: !96, size: 32, offset: 7808)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1409, file: !114, line: 499, baseType: !96, size: 32, offset: 7840)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1409, file: !114, line: 500, baseType: !2427, size: 64, offset: 7872)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2429, line: 45, baseType: !2430)
!2429 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1409, file: !114, line: 503, baseType: !96, size: 32, offset: 7936)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1409, file: !114, line: 504, baseType: !2433, size: 64, offset: 8000)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2436, line: 96, size: 192, elements: !2437)
!2436 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2437 = !{!2438, !2439, !2492, !2495}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2435, file: !2436, line: 97, baseType: !96, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2435, file: !2436, line: 98, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2436, line: 24, size: 3072, elements: !2442)
!2442 = !{!2443, !2445, !2446, !2447, !2448, !2461, !2462, !2463, !2464, !2476, !2477, !2478, !2489, !2490, !2491}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2441, file: !2436, line: 26, baseType: !2444, size: 128)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 128, elements: !2354)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2441, file: !2436, line: 27, baseType: !2444, size: 128, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2441, file: !2436, line: 28, baseType: !14, size: 32, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2441, file: !2436, line: 31, baseType: !51, size: 32, align: 512, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2441, file: !2436, line: 32, baseType: !2449, size: 960, offset: 576)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2450, line: 206, size: 960, elements: !2451)
!2450 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2451 = !{!2452, !2453, !2456, !2458, !2459, !2460}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2449, file: !2450, line: 207, baseType: !418, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2449, file: !2450, line: 208, baseType: !2454, size: 256, offset: 64)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2455, size: 256, elements: !446)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2449, file: !2450, line: 209, baseType: !2457, size: 256, offset: 320)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !446)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2449, file: !2450, line: 213, baseType: !670, size: 64, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2449, file: !2450, line: 215, baseType: !672, size: 256, offset: 640)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2449, file: !2450, line: 216, baseType: !75, size: 8, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2441, file: !2436, line: 33, baseType: !31, size: 64, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2441, file: !2436, line: 34, baseType: !31, size: 64, offset: 1600)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2441, file: !2436, line: 35, baseType: !425, size: 8, offset: 1664)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2441, file: !2436, line: 36, baseType: !2465, size: 320, offset: 1728)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2466, line: 11, size: 320, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2467 = !{!2468, !2469, !2470, !2475}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2465, file: !2466, line: 16, baseType: !497, size: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2465, file: !2466, line: 17, baseType: !31, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2465, file: !2466, line: 18, baseType: !2471, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !2466, line: 19, baseType: !381, size: 32, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2441, file: !2436, line: 37, baseType: !566, size: 256, offset: 2048)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2441, file: !2436, line: 38, baseType: !415, size: 128, align: 64, offset: 2304)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2441, file: !2436, line: 39, baseType: !2479, size: 64, offset: 2432)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2436, line: 49, size: 768, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2480, file: !2436, line: 50, baseType: !51, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2480, file: !2436, line: 51, baseType: !2457, size: 256, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2480, file: !2436, line: 53, baseType: !2457, size: 256, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2480, file: !2436, line: 54, baseType: !31, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2480, file: !2436, line: 55, baseType: !2479, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2480, file: !2436, line: 56, baseType: !14, size: 32, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2480, file: !2436, line: 57, baseType: !14, size: 32, offset: 736)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2441, file: !2436, line: 40, baseType: !31, size: 64, offset: 2496)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2441, file: !2436, line: 42, baseType: !14, size: 32, offset: 2560)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2441, file: !2436, line: 43, baseType: !2434, size: 64, offset: 2624)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2435, file: !2436, line: 99, baseType: !2493, offset: 128)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2494, line: 211, elements: !1006)
!2494 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2435, file: !2436, line: 100, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2436, line: 63, size: 3008, elements: !2498)
!2498 = !{!2499, !2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2530}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2497, file: !2436, line: 64, baseType: !2479, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2497, file: !2436, line: 65, baseType: !2501, size: 192, offset: 64)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, size: 192, elements: !1059)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2497, file: !2436, line: 67, baseType: !14, size: 32, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2497, file: !2436, line: 68, baseType: !1027, size: 256, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2497, file: !2436, line: 69, baseType: !51, size: 32, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2497, file: !2436, line: 70, baseType: !1027, size: 256, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2497, file: !2436, line: 71, baseType: !31, size: 64, offset: 896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2497, file: !2436, line: 72, baseType: !31, size: 64, offset: 960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2497, file: !2436, line: 73, baseType: !31, size: 64, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2497, file: !2436, line: 74, baseType: !31, size: 64, offset: 1088)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2497, file: !2436, line: 75, baseType: !31, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2497, file: !2436, line: 76, baseType: !31, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2497, file: !2436, line: 77, baseType: !31, size: 64, offset: 1280)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2497, file: !2436, line: 78, baseType: !31, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2497, file: !2436, line: 79, baseType: !425, size: 8, offset: 1408)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2497, file: !2436, line: 80, baseType: !31, size: 64, offset: 1472)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2497, file: !2436, line: 81, baseType: !1027, size: 256, offset: 1536)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2497, file: !2436, line: 82, baseType: !605, size: 256, offset: 1792)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2497, file: !2436, line: 84, baseType: !41, size: 32, offset: 2048)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2497, file: !2436, line: 87, baseType: !31, size: 64, offset: 2112)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2497, file: !2436, line: 88, baseType: !31, size: 64, offset: 2176)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2497, file: !2436, line: 89, baseType: !2522, size: 704, offset: 2240)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !567, line: 111, size: 704, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2529}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2522, file: !567, line: 112, baseType: !566, size: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2522, file: !567, line: 113, baseType: !2465, size: 320, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2522, file: !567, line: 116, baseType: !2527, size: 64, offset: 576)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !567, line: 18, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2522, file: !567, line: 117, baseType: !14, size: 32, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2497, file: !2436, line: 90, baseType: !2434, size: 64, offset: 2944)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1409, file: !114, line: 515, baseType: !2532, size: 64, offset: 8064)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2534, line: 117, size: 128, elements: !2535)
!2534 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2533, file: !2534, line: 118, baseType: !336, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2533, file: !2534, line: 119, baseType: !336, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2533, file: !2534, line: 120, baseType: !670, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1409, file: !114, line: 516, baseType: !96, size: 32, offset: 8128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1409, file: !114, line: 519, baseType: !96, size: 32, offset: 8160)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1409, file: !114, line: 520, baseType: !2542, size: 64, offset: 8192)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1409, file: !114, line: 523, baseType: !2544, size: 64, offset: 8256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !158, line: 372, size: 1024, elements: !2547)
!2547 = !{!2548, !2549, !2589, !2649, !2730, !2731, !2734, !2739, !2740, !2741, !2742, !2744, !2747}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2546, file: !158, line: 373, baseType: !89, size: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2546, file: !158, line: 374, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !158, line: 291, size: 576, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2560, !2583, !2587, !2588}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2551, file: !158, line: 292, baseType: !8, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2551, file: !158, line: 293, baseType: !12, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2551, file: !158, line: 295, baseType: !12, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2551, file: !158, line: 297, baseType: !2557, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!14, !2545, !157, !12}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2551, file: !158, line: 299, baseType: !2561, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !158, line: 275, size: 320, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2562, file: !158, line: 276, baseType: !8, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !2562, file: !158, line: 277, baseType: !2566, size: 256, offset: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2562, file: !158, line: 277, size: 256, elements: !2567)
!2567 = !{!2568, !2579}
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !158, line: 278, baseType: !2569, size: 256)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2566, file: !158, line: 278, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2576, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2569, file: !158, line: 279, baseType: !8, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2569, file: !158, line: 280, baseType: !2430, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2569, file: !158, line: 281, baseType: !2430, size: 32, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2569, file: !158, line: 282, baseType: !2575, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2569, file: !158, line: 283, baseType: !96, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2569, file: !158, line: 284, baseType: !2430, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2569, file: !158, line: 285, baseType: !2430, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2566, file: !158, line: 287, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!14, !2545}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2551, file: !158, line: 300, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!92, !2545}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2551, file: !158, line: 301, baseType: !89, size: 128, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2551, file: !158, line: 302, baseType: !2580, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !158, line: 375, baseType: !2590, size: 64, offset: 192)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !158, line: 375, size: 64, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2590, file: !158, line: 376, baseType: !8, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2590, file: !158, line: 378, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2429, line: 32, size: 640, elements: !2596)
!2596 = !{!2597, !2598, !2610, !2634, !2635, !2636, !2637, !2638, !2642}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2595, file: !2429, line: 33, baseType: !8, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2595, file: !2429, line: 34, baseType: !2599, size: 128, offset: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2534, line: 85, size: 128, elements: !2600)
!2600 = !{!2601, !2602}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2599, file: !2534, line: 86, baseType: !41, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !2534, line: 101, baseType: !2603, size: 64, offset: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !2534, line: 101, size: 64, elements: !2604)
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2603, file: !2534, line: 102, baseType: !31, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2603, file: !2534, line: 103, baseType: !2532, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2603, file: !2534, line: 104, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2534, line: 104, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2595, file: !2429, line: 35, baseType: !2611, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2613, line: 61, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2612, file: !2613, line: 62, baseType: !12, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !2612, file: !2613, line: 63, baseType: !2617, size: 64, offset: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2612, file: !2613, line: 63, size: 64, elements: !2618)
!2618 = !{!2619, !2620, !2633}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2617, file: !2613, line: 65, baseType: !31, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2617, file: !2613, line: 66, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2623, line: 169, size: 192, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2624 = !{!2625, !2626, !2627}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2622, file: !2623, line: 170, baseType: !2621, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2622, file: !2623, line: 171, baseType: !1408, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2622, file: !2623, line: 172, baseType: !2628, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2613, line: 32, size: 64, elements: !2630)
!2630 = !{!2631, !2632}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2629, file: !2613, line: 33, baseType: !336, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2629, file: !2613, line: 34, baseType: !336, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2617, file: !2613, line: 67, baseType: !2628, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2595, file: !2429, line: 36, baseType: !12, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2595, file: !2429, line: 37, baseType: !12, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2595, file: !2429, line: 38, baseType: !12, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2595, file: !2429, line: 39, baseType: !2335, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2595, file: !2429, line: 40, baseType: !2639, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2595, file: !2429, line: 41, baseType: !2643, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2429, line: 26, size: 192, elements: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2644, file: !2429, line: 27, baseType: !12, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2644, file: !2429, line: 28, baseType: !12, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2644, file: !2429, line: 29, baseType: !14, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2546, file: !158, line: 380, baseType: !2650, size: 256, offset: 256)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !158, line: 148, size: 256, elements: !2651)
!2651 = !{!2652, !2653, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2650, file: !158, line: 149, baseType: !497, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2650, file: !158, line: 150, baseType: !14, size: 32, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2650, file: !158, line: 151, baseType: !2655, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !158, line: 141, size: 256, elements: !2657)
!2657 = !{!2658, !2727, !2728, !2729}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2656, file: !158, line: 142, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !158, line: 138, baseType: !2660)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!168, !2663, !14, !2726}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !158, line: 93, size: 67776, elements: !2665)
!2665 = !{!2666, !2669, !2672, !2675, !2676, !2677, !2678, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2706, !2709, !2710, !2711, !2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2664, file: !158, line: 94, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !158, line: 13, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2664, file: !158, line: 95, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !158, line: 15, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2664, file: !158, line: 96, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !158, line: 14, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2664, file: !158, line: 97, baseType: !12, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2664, file: !158, line: 98, baseType: !14, size: 32, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2664, file: !158, line: 99, baseType: !1027, size: 256, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2664, file: !158, line: 100, baseType: !2679, size: 64, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2682, line: 10, flags: DIFlagFwdDecl)
!2682 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2664, file: !158, line: 101, baseType: !31, size: 64, offset: 640)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2664, file: !158, line: 102, baseType: !12, size: 64, offset: 704)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2664, file: !158, line: 103, baseType: !96, size: 32, offset: 768)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2664, file: !158, line: 104, baseType: !436, size: 64, offset: 832)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2664, file: !158, line: 105, baseType: !96, size: 32, offset: 896)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2664, file: !158, line: 106, baseType: !670, size: 64, offset: 960)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2664, file: !158, line: 109, baseType: !2690, size: 33088, offset: 1024)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2691, line: 14, size: 33088, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2692 = !{!2693, !2697, !2704, !2705}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2690, file: !2691, line: 15, baseType: !2694, size: 32768)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32768, elements: !2695)
!2695 = !{!2696}
!2696 = !DISubrange(count: 4096)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2690, file: !2691, line: 16, baseType: !2698, size: 192, offset: 32768)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2699, line: 18, size: 192, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2698, file: !2699, line: 19, baseType: !436, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2698, file: !2699, line: 20, baseType: !27, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2698, file: !2699, line: 21, baseType: !27, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2690, file: !2691, line: 17, baseType: !27, size: 64, offset: 32960)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2690, file: !2691, line: 18, baseType: !14, size: 32, offset: 33024)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2664, file: !158, line: 111, baseType: !2707, size: 64, offset: 34112)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !932, line: 913, baseType: !2708)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 64, elements: !937)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2664, file: !158, line: 114, baseType: !425, size: 8, offset: 34176)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2664, file: !158, line: 117, baseType: !2690, size: 33088, offset: 34240)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2664, file: !158, line: 118, baseType: !2712, size: 64, offset: 67328)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !158, line: 79, size: 64, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2713, file: !158, line: 80, baseType: !18, size: 16)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !158, line: 81, baseType: !79, size: 8, offset: 16)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2713, file: !158, line: 82, baseType: !79, size: 8, offset: 24)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2713, file: !158, line: 83, baseType: !14, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2664, file: !158, line: 119, baseType: !31, size: 64, offset: 67392)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2664, file: !158, line: 120, baseType: !14, size: 32, offset: 67456)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2664, file: !158, line: 121, baseType: !14, size: 32, offset: 67488)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2664, file: !158, line: 122, baseType: !14, size: 32, offset: 67520)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2664, file: !158, line: 123, baseType: !314, size: 64, offset: 67584)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2664, file: !158, line: 125, baseType: !33, size: 64, offset: 67648)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2664, file: !158, line: 126, baseType: !670, size: 64, offset: 67712)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2656, file: !158, line: 143, baseType: !2659, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2656, file: !158, line: 144, baseType: !2659, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2656, file: !158, line: 145, baseType: !2659, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2546, file: !158, line: 381, baseType: !436, size: 64, offset: 512)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2546, file: !158, line: 382, baseType: !2732, size: 64, offset: 576)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !228, line: 821, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2546, file: !158, line: 387, baseType: !2735, size: 64, offset: 640)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2546, file: !158, line: 387, size: 64, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2735, file: !158, line: 388, baseType: !12, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2735, file: !158, line: 389, baseType: !41, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2546, file: !158, line: 391, baseType: !12, size: 64, offset: 704)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2546, file: !158, line: 394, baseType: !14, size: 32, offset: 768)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2546, file: !158, line: 397, baseType: !14, size: 32, offset: 800)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2546, file: !158, line: 398, baseType: !2743, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2546, file: !158, line: 399, baseType: !2745, size: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !158, line: 399, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2546, file: !158, line: 401, baseType: !2748, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!14, !2545, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !228, line: 671, size: 8512, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !3286, !3287, !3288, !3289, !3295, !3296, !3297, !3298, !3299, !3383, !3384, !3385, !3386, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3506, !3507, !3508, !3509, !3510, !3511, !3526, !3527, !3528, !3529, !3530, !3536, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3553, !3724, !3725, !3726, !3727, !3997, !3998, !3999}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2752, file: !228, line: 678, baseType: !89, size: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2752, file: !228, line: 684, baseType: !89, size: 128, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2752, file: !228, line: 685, baseType: !89, size: 128, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2752, file: !228, line: 689, baseType: !343, size: 192, align: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2752, file: !228, line: 690, baseType: !314, size: 64, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2752, file: !228, line: 696, baseType: !89, size: 128, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2752, file: !228, line: 698, baseType: !497, size: 128, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2752, file: !228, line: 699, baseType: !89, size: 128, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2752, file: !228, line: 700, baseType: !14, size: 32, offset: 1024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2752, file: !228, line: 703, baseType: !14, size: 32, offset: 1056)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2752, file: !228, line: 705, baseType: !14, size: 32, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2752, file: !228, line: 707, baseType: !96, size: 32, offset: 1120)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2752, file: !228, line: 708, baseType: !2751, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2752, file: !228, line: 714, baseType: !2768, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !228, line: 302, size: 2432, elements: !2770)
!2770 = !{!2771, !2772, !2773, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3196, !3197, !3198, !3199, !3200, !3204, !3205, !3209, !3213, !3214, !3218, !3222, !3223, !3224, !3228, !3232, !3236, !3237, !3238, !3242, !3243, !3247, !3251, !3252, !3272, !3276, !3277, !3278, !3282}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2769, file: !228, line: 303, baseType: !89, size: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2769, file: !228, line: 305, baseType: !1408, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2769, file: !228, line: 306, baseType: !2774, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !181, line: 705, size: 5824, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2782, !2783, !2836, !2906, !2907, !2908, !2909, !2910, !2917, !3009, !3022, !3032, !3036, !3038, !3039, !3040, !3044, !3051, !3052, !3055, !3058, !3062, !3065, !3066, !3067, !3068, !3069, !3070, !3100, !3101, !3102, !3105, !3108, !3117, !3118, !3119, !3120, !3121, !3122}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2775, file: !181, line: 706, baseType: !1421, size: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2775, file: !181, line: 707, baseType: !2774, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2775, file: !181, line: 709, baseType: !2780, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !181, line: 37, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2775, file: !181, line: 711, baseType: !8, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2775, file: !181, line: 712, baseType: !2784, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !181, line: 89, size: 384, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2796, !2801, !2805}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2786, file: !181, line: 90, baseType: !8, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2786, file: !181, line: 91, baseType: !1501, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2786, file: !181, line: 92, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!14, !2794, !1457}
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2786, file: !181, line: 93, baseType: !2797, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!436, !2794, !2800, !630, !631}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2786, file: !181, line: 95, baseType: !2802, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2774}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2786, file: !181, line: 97, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !188, line: 286, size: 1472, elements: !2809)
!2809 = !{!2810, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2808, file: !188, line: 287, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!14, !2774}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2808, file: !188, line: 288, baseType: !2802, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2808, file: !188, line: 289, baseType: !2811, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2808, file: !188, line: 290, baseType: !2811, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2808, file: !188, line: 291, baseType: !2811, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2808, file: !188, line: 292, baseType: !2811, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2808, file: !188, line: 293, baseType: !2811, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2808, file: !188, line: 294, baseType: !2811, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2808, file: !188, line: 295, baseType: !2811, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2808, file: !188, line: 296, baseType: !2811, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2808, file: !188, line: 297, baseType: !2811, size: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2808, file: !188, line: 298, baseType: !2811, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2808, file: !188, line: 299, baseType: !2811, size: 64, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2808, file: !188, line: 300, baseType: !2811, size: 64, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2808, file: !188, line: 301, baseType: !2811, size: 64, offset: 896)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2808, file: !188, line: 302, baseType: !2811, size: 64, offset: 960)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2808, file: !188, line: 303, baseType: !2811, size: 64, offset: 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2808, file: !188, line: 304, baseType: !2811, size: 64, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2808, file: !188, line: 305, baseType: !2811, size: 64, offset: 1152)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2808, file: !188, line: 306, baseType: !2811, size: 64, offset: 1216)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2808, file: !188, line: 307, baseType: !2811, size: 64, offset: 1280)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2808, file: !188, line: 308, baseType: !2811, size: 64, offset: 1344)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2808, file: !188, line: 309, baseType: !2811, size: 64, offset: 1408)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2775, file: !181, line: 714, baseType: !2837, size: 64, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2840, line: 80, size: 1344, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2905}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2839, file: !2840, line: 81, baseType: !8, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2839, file: !2840, line: 82, baseType: !8, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2839, file: !2840, line: 83, baseType: !1501, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2839, file: !2840, line: 84, baseType: !1501, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2839, file: !2840, line: 85, baseType: !1501, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2839, file: !2840, line: 87, baseType: !2848, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!14, !2774, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !175, line: 96, size: 1152, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860, !2864, !2868, !2869, !2870, !2871, !2872, !2880, !2881, !2882, !2883, !2884, !2885}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2852, file: !175, line: 97, baseType: !8, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2852, file: !175, line: 98, baseType: !2837, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2852, file: !175, line: 100, baseType: !1408, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2852, file: !175, line: 101, baseType: !8, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2852, file: !175, line: 103, baseType: !425, size: 8, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2852, file: !175, line: 104, baseType: !174, size: 32, offset: 288)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2852, file: !175, line: 106, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !175, line: 106, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2852, file: !175, line: 107, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2867)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !175, line: 107, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2852, file: !175, line: 109, baseType: !2811, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2852, file: !175, line: 110, baseType: !2802, size: 64, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2852, file: !175, line: 111, baseType: !2811, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2852, file: !175, line: 112, baseType: !2802, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2852, file: !175, line: 113, baseType: !2873, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!14, !2774, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !188, line: 60, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !188, line: 58, size: 32, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2877, file: !188, line: 59, baseType: !14, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2852, file: !175, line: 114, baseType: !2811, size: 64, offset: 768)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2852, file: !175, line: 115, baseType: !1501, size: 64, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2852, file: !175, line: 116, baseType: !1501, size: 64, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2852, file: !175, line: 118, baseType: !2806, size: 64, offset: 960)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2852, file: !175, line: 119, baseType: !2802, size: 64, offset: 1024)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2852, file: !175, line: 121, baseType: !2886, size: 64, offset: 1088)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !175, line: 121, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2839, file: !2840, line: 88, baseType: !2791, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2839, file: !2840, line: 89, baseType: !2811, size: 64, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2839, file: !2840, line: 90, baseType: !2802, size: 64, offset: 512)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2839, file: !2840, line: 91, baseType: !2802, size: 64, offset: 576)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2839, file: !2840, line: 92, baseType: !2802, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2839, file: !2840, line: 94, baseType: !2811, size: 64, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2839, file: !2840, line: 95, baseType: !2811, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2839, file: !2840, line: 97, baseType: !2873, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2839, file: !2840, line: 98, baseType: !2811, size: 64, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2839, file: !2840, line: 100, baseType: !2811, size: 64, offset: 960)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2839, file: !2840, line: 102, baseType: !2811, size: 64, offset: 1024)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2839, file: !2840, line: 103, baseType: !2802, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2839, file: !2840, line: 105, baseType: !2806, size: 64, offset: 1152)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2839, file: !2840, line: 107, baseType: !2902, size: 64, offset: 1216)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2840, line: 107, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2839, file: !2840, line: 109, baseType: !425, size: 8, offset: 1280)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2775, file: !181, line: 715, baseType: !2851, size: 64, offset: 832)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2775, file: !181, line: 717, baseType: !12, size: 64, offset: 896)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2775, file: !181, line: 719, baseType: !12, size: 64, offset: 960)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2775, file: !181, line: 721, baseType: !1027, size: 256, offset: 1024)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2775, file: !181, line: 725, baseType: !2911, size: 448, offset: 1280)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !181, line: 517, size: 448, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2911, file: !181, line: 518, baseType: !89, size: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2911, file: !181, line: 519, baseType: !89, size: 128, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2911, file: !181, line: 520, baseType: !89, size: 128, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2911, file: !181, line: 521, baseType: !180, size: 32, offset: 384)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2775, file: !181, line: 726, baseType: !2918, size: 2496, offset: 1728)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !188, line: 663, size: 2496, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3002, !3006}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2918, file: !188, line: 664, baseType: !2876, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2918, file: !188, line: 665, baseType: !96, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2918, file: !188, line: 666, baseType: !96, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2918, file: !188, line: 667, baseType: !425, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2918, file: !188, line: 668, baseType: !425, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2918, file: !188, line: 669, baseType: !425, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2918, file: !188, line: 670, baseType: !425, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2918, file: !188, line: 671, baseType: !425, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2918, file: !188, line: 672, baseType: !425, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2918, file: !188, line: 673, baseType: !425, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2918, file: !188, line: 674, baseType: !425, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2918, file: !188, line: 675, baseType: !381, size: 32, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2918, file: !188, line: 676, baseType: !51, size: 32, offset: 96)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2918, file: !188, line: 678, baseType: !89, size: 128, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2918, file: !188, line: 679, baseType: !605, size: 256, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2918, file: !188, line: 680, baseType: !2936, size: 64, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2938, line: 43, size: 1536, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2937, file: !2938, line: 44, baseType: !8, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2937, file: !2938, line: 45, baseType: !14, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2937, file: !2938, line: 46, baseType: !89, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !2938, line: 47, baseType: !51, size: 32, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2937, file: !2938, line: 48, baseType: !2945, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !188, line: 629, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2937, file: !2938, line: 49, baseType: !2465, size: 320, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2937, file: !2938, line: 50, baseType: !31, size: 64, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2937, file: !2938, line: 51, baseType: !815, size: 64, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2937, file: !2938, line: 52, baseType: !815, size: 64, offset: 832)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2937, file: !2938, line: 53, baseType: !815, size: 64, offset: 896)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2937, file: !2938, line: 54, baseType: !815, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2937, file: !2938, line: 55, baseType: !815, size: 64, offset: 1024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2937, file: !2938, line: 56, baseType: !31, size: 64, offset: 1088)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2937, file: !2938, line: 57, baseType: !31, size: 64, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2937, file: !2938, line: 58, baseType: !31, size: 64, offset: 1216)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2937, file: !2938, line: 59, baseType: !31, size: 64, offset: 1280)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2937, file: !2938, line: 60, baseType: !31, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2937, file: !2938, line: 61, baseType: !2774, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2937, file: !2938, line: 62, baseType: !425, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2937, file: !2938, line: 63, baseType: !425, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2918, file: !188, line: 681, baseType: !425, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2918, file: !188, line: 682, baseType: !425, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2918, file: !188, line: 683, baseType: !425, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2918, file: !188, line: 684, baseType: !96, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2918, file: !188, line: 685, baseType: !96, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2918, file: !188, line: 690, baseType: !807, size: 512, offset: 640)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2918, file: !188, line: 691, baseType: !314, size: 64, offset: 1152)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2918, file: !188, line: 692, baseType: !566, size: 256, offset: 1216)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2918, file: !188, line: 693, baseType: !46, size: 192, offset: 1472)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2918, file: !188, line: 694, baseType: !2945, size: 64, offset: 1664)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2918, file: !188, line: 695, baseType: !41, size: 32, offset: 1728)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2918, file: !188, line: 696, baseType: !41, size: 32, offset: 1760)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2918, file: !188, line: 697, baseType: !96, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2918, file: !188, line: 698, baseType: !96, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2918, file: !188, line: 699, baseType: !96, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2918, file: !188, line: 700, baseType: !96, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2918, file: !188, line: 701, baseType: !96, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2918, file: !188, line: 702, baseType: !96, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2918, file: !188, line: 703, baseType: !425, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2918, file: !188, line: 704, baseType: !96, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2918, file: !188, line: 705, baseType: !96, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2918, file: !188, line: 706, baseType: !96, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2918, file: !188, line: 707, baseType: !96, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2918, file: !188, line: 708, baseType: !96, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2918, file: !188, line: 709, baseType: !96, size: 32, offset: 1824)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2918, file: !188, line: 710, baseType: !187, size: 32, offset: 1856)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2918, file: !188, line: 711, baseType: !195, size: 32, offset: 1888)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2918, file: !188, line: 712, baseType: !195, size: 32, offset: 1920)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2918, file: !188, line: 713, baseType: !14, size: 32, offset: 1952)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2918, file: !188, line: 714, baseType: !14, size: 32, offset: 1984)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2918, file: !188, line: 715, baseType: !314, size: 64, offset: 2048)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2918, file: !188, line: 716, baseType: !314, size: 64, offset: 2112)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2918, file: !188, line: 717, baseType: !314, size: 64, offset: 2176)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2918, file: !188, line: 718, baseType: !314, size: 64, offset: 2240)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2918, file: !188, line: 720, baseType: !2997, size: 64, offset: 2304)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !188, line: 632, size: 64, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !188, line: 633, baseType: !51, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2998, file: !188, line: 634, baseType: !96, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2918, file: !188, line: 721, baseType: !3003, size: 64, offset: 2368)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2774, !336}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2918, file: !188, line: 722, baseType: !3007, size: 64, offset: 2432)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !188, line: 722, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2775, file: !181, line: 727, baseType: !3010, size: 64, offset: 4224)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !188, line: 742, size: 1792, elements: !3012)
!3012 = !{!3013, !3014, !3015, !3019, !3020, !3021}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3011, file: !188, line: 743, baseType: !2808, size: 1472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3011, file: !188, line: 744, baseType: !2811, size: 64, offset: 1472)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3011, file: !188, line: 745, baseType: !3016, size: 64, offset: 1536)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2774, !425}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3011, file: !188, line: 746, baseType: !2811, size: 64, offset: 1600)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3011, file: !188, line: 747, baseType: !2802, size: 64, offset: 1664)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3011, file: !188, line: 748, baseType: !2802, size: 64, offset: 1728)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2775, file: !181, line: 736, baseType: !3023, size: 128, offset: 4288)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !181, line: 529, size: 128, elements: !3024)
!3024 = !{!3025, !3029}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3023, file: !181, line: 531, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3028, line: 13, flags: DIFlagFwdDecl)
!3028 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3023, file: !181, line: 532, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !181, line: 49, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2775, file: !181, line: 738, baseType: !3033, size: 64, offset: 4416)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3035)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !181, line: 738, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2775, file: !181, line: 740, baseType: !3037, size: 64, offset: 4480)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2775, file: !181, line: 741, baseType: !314, size: 64, offset: 4544)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2775, file: !181, line: 746, baseType: !314, size: 64, offset: 4608)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2775, file: !181, line: 747, baseType: !3041, size: 64, offset: 4672)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3043)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !181, line: 747, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2775, file: !181, line: 749, baseType: !3045, size: 64, offset: 4736)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !181, line: 428, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3046, file: !181, line: 433, baseType: !96, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3046, file: !181, line: 434, baseType: !96, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3046, file: !181, line: 435, baseType: !31, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2775, file: !181, line: 751, baseType: !89, size: 128, offset: 4800)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2775, file: !181, line: 762, baseType: !3053, size: 64, offset: 4928)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !181, line: 762, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2775, file: !181, line: 770, baseType: !3056, offset: 4992)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3057, line: 5, elements: !1006)
!3057 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2775, file: !181, line: 772, baseType: !3059, size: 64, offset: 4992)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3061, line: 18, flags: DIFlagFwdDecl)
!3061 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2775, file: !181, line: 773, baseType: !3063, size: 64, offset: 5056)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2840, line: 22, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2775, file: !181, line: 776, baseType: !14, size: 32, offset: 5120)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2775, file: !181, line: 778, baseType: !1248, size: 32, offset: 5152)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2775, file: !181, line: 779, baseType: !381, size: 32, offset: 5184)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2775, file: !181, line: 781, baseType: !51, size: 32, offset: 5216)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2775, file: !181, line: 782, baseType: !89, size: 128, offset: 5248)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2775, file: !181, line: 784, baseType: !3071, size: 64, offset: 5376)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3074, line: 52, size: 768, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3084, !3088, !3089, !3090, !3091, !3095, !3099}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3073, file: !3074, line: 53, baseType: !8, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3073, file: !3074, line: 55, baseType: !1501, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3073, file: !3074, line: 56, baseType: !1501, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3073, file: !3074, line: 58, baseType: !2791, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3073, file: !3074, line: 59, baseType: !3081, size: 64, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!436, !2794, !2800}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3073, file: !3074, line: 61, baseType: !3085, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !3071}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3073, file: !3074, line: 62, baseType: !2802, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3073, file: !3074, line: 64, baseType: !2811, size: 64, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3073, file: !3074, line: 66, baseType: !2034, size: 64, offset: 512)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3073, file: !3074, line: 67, baseType: !3092, size: 64, offset: 576)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!2051, !2794}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3073, file: !3074, line: 69, baseType: !3096, size: 64, offset: 640)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !2794, !630, !631}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3073, file: !3074, line: 71, baseType: !2806, size: 64, offset: 704)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2775, file: !181, line: 785, baseType: !1501, size: 64, offset: 5440)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2775, file: !181, line: 787, baseType: !2802, size: 64, offset: 5504)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2775, file: !181, line: 788, baseType: !3103, size: 64, offset: 5568)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !181, line: 46, flags: DIFlagFwdDecl)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2775, file: !181, line: 789, baseType: !3106, size: 64, offset: 5632)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !181, line: 48, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2775, file: !181, line: 791, baseType: !3109, size: 64, offset: 5696)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !181, line: 597, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115, !3116}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3110, file: !181, line: 598, baseType: !202, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3110, file: !181, line: 599, baseType: !211, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3110, file: !181, line: 600, baseType: !216, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3110, file: !181, line: 601, baseType: !425, size: 8, offset: 96)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3110, file: !181, line: 602, baseType: !425, size: 8, offset: 104)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2775, file: !181, line: 793, baseType: !221, size: 32, offset: 5760)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2775, file: !181, line: 795, baseType: !425, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2775, file: !181, line: 796, baseType: !425, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2775, file: !181, line: 797, baseType: !425, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2775, file: !181, line: 798, baseType: !425, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2775, file: !181, line: 799, baseType: !425, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2769, file: !228, line: 307, baseType: !2774, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2769, file: !228, line: 308, baseType: !1501, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2769, file: !228, line: 309, baseType: !1501, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2769, file: !228, line: 310, baseType: !8, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2769, file: !228, line: 311, baseType: !14, size: 32, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2769, file: !228, line: 316, baseType: !14, size: 32, offset: 544)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2769, file: !228, line: 318, baseType: !2364, size: 64, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2769, file: !228, line: 319, baseType: !3131, size: 64, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !228, line: 977, size: 1856, elements: !3133)
!3133 = !{!3134, !3186, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3132, file: !228, line: 978, baseType: !3135, size: 896)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !228, line: 873, size: 896, elements: !3136)
!3136 = !{!3137, !3138, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3135, file: !228, line: 874, baseType: !2768, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3135, file: !228, line: 875, baseType: !3139, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !228, line: 912, size: 1792, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3140, file: !228, line: 917, baseType: !362, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3140, file: !228, line: 923, baseType: !1027, size: 256, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3140, file: !228, line: 925, baseType: !89, size: 128, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3140, file: !228, line: 926, baseType: !3146, size: 128, offset: 448)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !228, line: 901, size: 128, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3146, file: !228, line: 902, baseType: !650, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3146, file: !228, line: 903, baseType: !314, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3140, file: !228, line: 927, baseType: !3146, size: 128, offset: 576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3140, file: !228, line: 928, baseType: !89, size: 128, offset: 704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3140, file: !228, line: 930, baseType: !14, size: 32, offset: 832)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3140, file: !228, line: 931, baseType: !14, size: 32, offset: 864)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3140, file: !228, line: 932, baseType: !14, size: 32, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3140, file: !228, line: 934, baseType: !14, size: 32, offset: 928)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3140, file: !228, line: 935, baseType: !14, size: 32, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3140, file: !228, line: 936, baseType: !14, size: 32, offset: 992)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3140, file: !228, line: 937, baseType: !14, size: 32, offset: 1024)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3140, file: !228, line: 939, baseType: !328, size: 32, offset: 1056)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3140, file: !228, line: 940, baseType: !690, size: 64, offset: 1088)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3140, file: !228, line: 945, baseType: !314, size: 64, offset: 1152)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3140, file: !228, line: 946, baseType: !314, size: 64, offset: 1216)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3140, file: !228, line: 947, baseType: !314, size: 64, offset: 1280)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3140, file: !228, line: 953, baseType: !3139, size: 64, offset: 1344)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3140, file: !228, line: 954, baseType: !314, size: 64, offset: 1408)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3140, file: !228, line: 955, baseType: !314, size: 64, offset: 1472)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3140, file: !228, line: 956, baseType: !14, size: 32, offset: 1536)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3140, file: !228, line: 958, baseType: !14, size: 32, offset: 1568)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3140, file: !228, line: 960, baseType: !415, size: 128, align: 64, offset: 1600)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3140, file: !228, line: 968, baseType: !3171, size: 64, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3172, line: 12, baseType: !3173)
!3172 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3172, line: 10, size: 64, elements: !3174)
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3173, file: !3172, line: 11, baseType: !282, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3135, file: !228, line: 877, baseType: !89, size: 128, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3135, file: !228, line: 879, baseType: !89, size: 128, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3135, file: !228, line: 880, baseType: !89, size: 128, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3135, file: !228, line: 883, baseType: !96, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3135, file: !228, line: 885, baseType: !96, size: 32, offset: 544)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3135, file: !228, line: 886, baseType: !96, size: 32, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3135, file: !228, line: 888, baseType: !41, size: 32, offset: 608)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3135, file: !228, line: 889, baseType: !415, size: 128, align: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3135, file: !228, line: 891, baseType: !12, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3135, file: !228, line: 898, baseType: !14, size: 32, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3132, file: !228, line: 979, baseType: !3187, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3132, file: !228, line: 981, baseType: !89, size: 128, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3132, file: !228, line: 982, baseType: !14, size: 32, offset: 1088)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3132, file: !228, line: 984, baseType: !14, size: 32, offset: 1120)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3132, file: !228, line: 985, baseType: !14, size: 32, offset: 1152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3132, file: !228, line: 987, baseType: !362, size: 32, offset: 1184)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3132, file: !228, line: 988, baseType: !807, size: 512, offset: 1216)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3132, file: !228, line: 989, baseType: !815, size: 64, offset: 1728)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3132, file: !228, line: 990, baseType: !96, size: 32, offset: 1792)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2769, file: !228, line: 320, baseType: !41, size: 32, offset: 704)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2769, file: !228, line: 321, baseType: !14, size: 32, offset: 736)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2769, file: !228, line: 322, baseType: !14, size: 32, offset: 768)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2769, file: !228, line: 325, baseType: !96, size: 32, offset: 800)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2769, file: !228, line: 331, baseType: !3201, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !2768}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2769, file: !228, line: 332, baseType: !3201, size: 64, offset: 896)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2769, file: !228, line: 350, baseType: !3206, size: 64, offset: 960)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!14, !2751}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2769, file: !228, line: 356, baseType: !3210, size: 64, offset: 1024)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !2751, !985}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2769, file: !228, line: 357, baseType: !3210, size: 64, offset: 1088)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2769, file: !228, line: 385, baseType: !3215, size: 64, offset: 1152)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!14, !2751, !14}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2769, file: !228, line: 386, baseType: !3219, size: 64, offset: 1216)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !2751, !14}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2769, file: !228, line: 406, baseType: !3219, size: 64, offset: 1280)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2769, file: !228, line: 407, baseType: !3219, size: 64, offset: 1344)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2769, file: !228, line: 415, baseType: !3225, size: 64, offset: 1408)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !2751}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2769, file: !228, line: 427, baseType: !3229, size: 64, offset: 1472)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !2768, !96}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2769, file: !228, line: 436, baseType: !3233, size: 64, offset: 1536)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!14, !2768}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2769, file: !228, line: 443, baseType: !3201, size: 64, offset: 1600)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2769, file: !228, line: 450, baseType: !3206, size: 64, offset: 1664)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2769, file: !228, line: 455, baseType: !3239, size: 64, offset: 1728)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !3187, !425}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2769, file: !228, line: 461, baseType: !1102, size: 64, offset: 1792)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2769, file: !228, line: 469, baseType: !3244, size: 64, offset: 1856)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3187, !3187}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2769, file: !228, line: 476, baseType: !3248, size: 64, offset: 1920)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!12, !2751, !1923, !14, !425}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2769, file: !228, line: 483, baseType: !1205, size: 64, offset: 1984)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2769, file: !228, line: 494, baseType: !3253, size: 64, offset: 2048)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!670, !2751, !3256, !31}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !228, line: 1014, size: 448, elements: !3258)
!3258 = !{!3259, !3260, !3263, !3264, !3265, !3266, !3271}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3257, file: !228, line: 1015, baseType: !2751, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3257, file: !228, line: 1016, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !228, line: 641, flags: DIFlagFwdDecl)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3257, file: !228, line: 1017, baseType: !31, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3257, file: !228, line: 1018, baseType: !31, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3257, file: !228, line: 1019, baseType: !314, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !228, line: 1020, baseType: !3267, size: 64, offset: 320)
!3267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !228, line: 1020, size: 64, elements: !3268)
!3268 = !{!3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3267, file: !228, line: 1021, baseType: !12, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3267, file: !228, line: 1022, baseType: !31, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3257, file: !228, line: 1024, baseType: !14, size: 32, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2769, file: !228, line: 506, baseType: !3273, size: 64, offset: 2112)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!14, !92}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2769, file: !228, line: 520, baseType: !3225, size: 64, offset: 2176)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2769, file: !228, line: 530, baseType: !3206, size: 64, offset: 2240)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2769, file: !228, line: 537, baseType: !3279, size: 64, offset: 2304)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!425, !2768, !14}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2769, file: !228, line: 542, baseType: !3283, size: 64, offset: 2368)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!14, !2751, !314}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2752, file: !228, line: 715, baseType: !12, size: 64, offset: 1280)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2752, file: !228, line: 717, baseType: !227, size: 32, offset: 1344)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2752, file: !228, line: 718, baseType: !96, size: 32, offset: 1376)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2752, file: !228, line: 719, baseType: !3290, size: 64, offset: 1408)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3291, line: 26, baseType: !3292)
!3291 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3291, line: 24, size: 64, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3292, file: !3291, line: 25, baseType: !3171, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2752, file: !228, line: 720, baseType: !284, size: 64, offset: 1472)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2752, file: !228, line: 728, baseType: !314, size: 64, offset: 1536)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2752, file: !228, line: 729, baseType: !314, size: 64, offset: 1600)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2752, file: !228, line: 730, baseType: !314, size: 64, offset: 1664)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2752, file: !228, line: 732, baseType: !3300, size: 1088, offset: 1728)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3301, line: 385, size: 1088, elements: !3302)
!3301 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3302 = !{!3303, !3304, !3305, !3306, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3356, !3357, !3364, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3300, file: !3301, line: 390, baseType: !382, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3300, file: !3301, line: 395, baseType: !382, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3300, file: !3301, line: 400, baseType: !315, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !3301, line: 402, baseType: !3307, size: 64, offset: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 402, size: 64, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3307, file: !3301, line: 403, baseType: !315, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3307, file: !3301, line: 404, baseType: !315, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3300, file: !3301, line: 407, baseType: !315, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3300, file: !3301, line: 408, baseType: !315, size: 64, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3300, file: !3301, line: 410, baseType: !315, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3300, file: !3301, line: 411, baseType: !315, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3300, file: !3301, line: 412, baseType: !315, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3300, file: !3301, line: 413, baseType: !315, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3300, file: !3301, line: 414, baseType: !315, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3300, file: !3301, line: 415, baseType: !315, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3300, file: !3301, line: 416, baseType: !315, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3300, file: !3301, line: 417, baseType: !315, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3300, file: !3301, line: 418, baseType: !315, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3300, file: !3301, line: 419, baseType: !315, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3300, file: !3301, line: 420, baseType: !315, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3300, file: !3301, line: 421, baseType: !315, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3300, file: !3301, line: 422, baseType: !315, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3300, file: !3301, line: 423, baseType: !315, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3300, file: !3301, line: 424, baseType: !315, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3300, file: !3301, line: 435, baseType: !315, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3300, file: !3301, line: 436, baseType: !315, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3300, file: !3301, line: 437, baseType: !315, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3300, file: !3301, line: 439, baseType: !315, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3300, file: !3301, line: 440, baseType: !315, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3300, file: !3301, line: 442, baseType: !315, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3300, file: !3301, line: 443, baseType: !315, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3300, file: !3301, line: 444, baseType: !315, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3300, file: !3301, line: 445, baseType: !315, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3300, file: !3301, line: 446, baseType: !315, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3300, file: !3301, line: 447, baseType: !315, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3300, file: !3301, line: 448, baseType: !315, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3300, file: !3301, line: 449, baseType: !315, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3300, file: !3301, line: 450, baseType: !315, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3300, file: !3301, line: 451, baseType: !315, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3300, file: !3301, line: 452, baseType: !315, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3300, file: !3301, line: 453, baseType: !315, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3300, file: !3301, line: 454, baseType: !315, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3300, file: !3301, line: 455, baseType: !315, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3300, file: !3301, line: 456, baseType: !315, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3300, file: !3301, line: 457, baseType: !315, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3300, file: !3301, line: 458, baseType: !315, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3300, file: !3301, line: 459, baseType: !315, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !3301, line: 461, baseType: !3352, size: 32, offset: 384)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 461, size: 32, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3352, file: !3301, line: 462, baseType: !382, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3352, file: !3301, line: 463, baseType: !382, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3300, file: !3301, line: 466, baseType: !382, size: 32, offset: 416)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !3301, line: 467, baseType: !3358, size: 64, offset: 448)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 467, size: 64, elements: !3359)
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3358, file: !3301, line: 468, baseType: !315, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3358, file: !3301, line: 469, baseType: !315, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3358, file: !3301, line: 470, baseType: !315, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3358, file: !3301, line: 471, baseType: !315, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3300, file: !3301, line: 473, baseType: !3365, size: 64, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 473, size: 64, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3365, file: !3301, line: 474, baseType: !315, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3365, file: !3301, line: 475, baseType: !315, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3365, file: !3301, line: 476, baseType: !315, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3365, file: !3301, line: 477, baseType: !315, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3300, file: !3301, line: 479, baseType: !315, size: 64, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3300, file: !3301, line: 485, baseType: !315, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3300, file: !3301, line: 490, baseType: !382, size: 32, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3300, file: !3301, line: 492, baseType: !337, size: 32, offset: 736)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3300, file: !3301, line: 501, baseType: !315, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3300, file: !3301, line: 506, baseType: !382, size: 32, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3300, file: !3301, line: 507, baseType: !86, size: 16, offset: 864)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3300, file: !3301, line: 508, baseType: !86, size: 16, offset: 880)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3300, file: !3301, line: 509, baseType: !382, size: 32, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3300, file: !3301, line: 510, baseType: !382, size: 32, offset: 928)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3300, file: !3301, line: 518, baseType: !315, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3300, file: !3301, line: 520, baseType: !315, size: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2752, file: !228, line: 733, baseType: !85, size: 16, offset: 2816)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2752, file: !228, line: 734, baseType: !85, size: 16, offset: 2832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2752, file: !228, line: 735, baseType: !85, size: 16, offset: 2848)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2752, file: !228, line: 736, baseType: !3387, size: 1536, offset: 2880)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !228, line: 155, size: 1536, elements: !3388)
!3388 = !{!3389, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3473, !3474, !3475, !3476}
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3387, file: !228, line: 157, baseType: !3390, size: 768)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3387, file: !228, line: 157, size: 768, elements: !3391)
!3391 = !{!3392, !3411, !3415, !3419, !3424, !3446}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 158, baseType: !3393, size: 768)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 158, size: 768, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3410}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3393, file: !228, line: 159, baseType: !314, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3393, file: !228, line: 160, baseType: !314, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3393, file: !228, line: 161, baseType: !31, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3393, file: !228, line: 162, baseType: !31, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3393, file: !228, line: 163, baseType: !14, size: 32, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3393, file: !228, line: 164, baseType: !14, size: 32, offset: 288)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3393, file: !228, line: 165, baseType: !14, size: 32, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3393, file: !228, line: 166, baseType: !14, size: 32, offset: 352)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3393, file: !228, line: 168, baseType: !3404, size: 192, offset: 384)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !228, line: 134, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3404, file: !228, line: 135, baseType: !314, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3404, file: !228, line: 136, baseType: !96, size: 32, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3404, file: !228, line: 137, baseType: !14, size: 32, offset: 96)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3404, file: !228, line: 138, baseType: !14, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3393, file: !228, line: 169, baseType: !3404, size: 192, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 171, baseType: !3412, size: 512)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 171, size: 512, elements: !3413)
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3412, file: !228, line: 172, baseType: !807, size: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 174, baseType: !3416, size: 128)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 174, size: 128, elements: !3417)
!3417 = !{!3418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3416, file: !228, line: 176, baseType: !89, size: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 178, baseType: !3420, size: 128)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 178, size: 128, elements: !3421)
!3421 = !{!3422, !3423}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3420, file: !228, line: 179, baseType: !314, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3420, file: !228, line: 180, baseType: !314, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 183, baseType: !3425, size: 320)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 183, size: 320, elements: !3426)
!3426 = !{!3427, !3435}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3425, file: !228, line: 189, baseType: !3428, size: 192)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3429, line: 14, size: 192, elements: !3430)
!3429 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3428, file: !3429, line: 15, baseType: !31, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3428, file: !3429, line: 16, baseType: !31, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3428, file: !3429, line: 17, baseType: !75, size: 8, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3428, file: !3429, line: 18, baseType: !75, size: 8, offset: 136)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3425, file: !228, line: 190, baseType: !3436, size: 128, offset: 192)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3437, line: 21, size: 128, elements: !3438)
!3437 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3438 = !{!3439, !3444}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3436, file: !3437, line: 22, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3437, line: 17, size: 64, elements: !3441)
!3441 = !{!3442}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3440, file: !3437, line: 18, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3436, file: !3437, line: 23, baseType: !3445, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !228, line: 193, baseType: !3447, size: 192)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !228, line: 193, size: 192, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3447, file: !228, line: 194, baseType: !75, size: 8)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3447, file: !228, line: 195, baseType: !75, size: 8, offset: 8)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3447, file: !228, line: 196, baseType: !85, size: 16, offset: 16)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3447, file: !228, line: 197, baseType: !314, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3447, file: !228, line: 198, baseType: !314, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3387, file: !228, line: 205, baseType: !690, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3387, file: !228, line: 211, baseType: !12, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3387, file: !228, line: 214, baseType: !31, size: 64, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3387, file: !228, line: 223, baseType: !14, size: 32, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3387, file: !228, line: 229, baseType: !3290, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3387, file: !228, line: 234, baseType: !314, size: 64, offset: 1088)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3387, file: !228, line: 236, baseType: !3461, size: 128, offset: 1152)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3387, file: !228, line: 236, size: 128, elements: !3462)
!3462 = !{!3463, !3468}
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !228, line: 237, baseType: !3464, size: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3461, file: !228, line: 237, size: 128, elements: !3465)
!3465 = !{!3466, !3467}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3464, file: !228, line: 241, baseType: !314, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3464, file: !228, line: 249, baseType: !3290, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !228, line: 251, baseType: !3469, size: 128)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3461, file: !228, line: 251, size: 128, elements: !3470)
!3470 = !{!3471, !3472}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3469, file: !228, line: 252, baseType: !314, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3469, file: !228, line: 253, baseType: !314, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3387, file: !228, line: 261, baseType: !314, size: 64, offset: 1280)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3387, file: !228, line: 262, baseType: !314, size: 64, offset: 1344)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3387, file: !228, line: 268, baseType: !314, size: 64, offset: 1408)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3387, file: !228, line: 269, baseType: !314, size: 64, offset: 1472)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2752, file: !228, line: 738, baseType: !3139, size: 64, offset: 4416)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2752, file: !228, line: 744, baseType: !3187, size: 64, offset: 4480)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2752, file: !228, line: 745, baseType: !282, size: 64, offset: 4544)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2752, file: !228, line: 751, baseType: !284, size: 64, offset: 4608)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2752, file: !228, line: 752, baseType: !284, size: 64, offset: 4672)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2752, file: !228, line: 757, baseType: !1027, size: 256, offset: 4736)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2752, file: !228, line: 758, baseType: !89, size: 128, offset: 4992)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2752, file: !228, line: 759, baseType: !2751, size: 64, offset: 5120)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2752, file: !228, line: 761, baseType: !14, size: 32, offset: 5184)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2752, file: !228, line: 762, baseType: !14, size: 32, offset: 5216)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2752, file: !228, line: 764, baseType: !89, size: 128, offset: 5248)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2752, file: !228, line: 765, baseType: !690, size: 64, offset: 5376)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2752, file: !228, line: 768, baseType: !1027, size: 256, offset: 5440)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2752, file: !228, line: 769, baseType: !41, size: 32, offset: 5696)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2752, file: !228, line: 771, baseType: !3261, size: 64, offset: 5760)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2752, file: !228, line: 772, baseType: !89, size: 128, offset: 5824)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2752, file: !228, line: 773, baseType: !31, size: 64, offset: 5952)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2752, file: !228, line: 774, baseType: !14, size: 32, offset: 6016)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2752, file: !228, line: 777, baseType: !46, size: 192, offset: 6080)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2752, file: !228, line: 778, baseType: !3497, size: 64, offset: 6272)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !237, line: 1083, size: 384, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3498, file: !237, line: 1084, baseType: !1040, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3498, file: !237, line: 1085, baseType: !14, size: 32, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3498, file: !237, line: 1086, baseType: !14, size: 32, offset: 96)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3498, file: !237, line: 1087, baseType: !3497, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3498, file: !237, line: 1088, baseType: !1013, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3498, file: !237, line: 1089, baseType: !415, size: 128, align: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2752, file: !228, line: 781, baseType: !96, size: 32, offset: 6336)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2752, file: !228, line: 782, baseType: !96, size: 32, offset: 6368)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2752, file: !228, line: 783, baseType: !96, size: 32, offset: 6400)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2752, file: !228, line: 784, baseType: !96, size: 32, offset: 6432)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2752, file: !228, line: 785, baseType: !31, size: 64, offset: 6464)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2752, file: !228, line: 786, baseType: !3512, size: 256, offset: 6528)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3513, line: 17, size: 256, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3514 = !{!3515, !3516, !3521}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3512, file: !3513, line: 18, baseType: !709, size: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3512, file: !3513, line: 19, baseType: !3517, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3512, file: !3513, line: 20, baseType: !3522, size: 64, offset: 192)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3523, line: 16, size: 64, elements: !3524)
!3523 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3522, file: !3523, line: 17, baseType: !690, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2752, file: !228, line: 787, baseType: !415, size: 128, align: 64, offset: 6784)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2752, file: !228, line: 788, baseType: !96, size: 32, offset: 6912)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2752, file: !228, line: 789, baseType: !3522, size: 64, offset: 6976)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2752, file: !228, line: 791, baseType: !41, size: 32, offset: 7040)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2752, file: !228, line: 794, baseType: !3531, size: 192, offset: 7104)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !228, line: 579, size: 192, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3531, file: !228, line: 580, baseType: !89, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3531, file: !228, line: 581, baseType: !362, size: 32, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3531, file: !228, line: 582, baseType: !96, size: 32, offset: 160)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2752, file: !228, line: 796, baseType: !3537, size: 64, offset: 7296)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !228, line: 585, size: 128, elements: !3539)
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3538, file: !228, line: 586, baseType: !31, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3538, file: !228, line: 587, baseType: !31, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2752, file: !228, line: 797, baseType: !31, size: 64, offset: 7360)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2752, file: !228, line: 800, baseType: !2751, size: 64, offset: 7424)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2752, file: !228, line: 802, baseType: !3225, size: 64, offset: 7488)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2752, file: !228, line: 803, baseType: !415, size: 128, align: 64, offset: 7552)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2752, file: !228, line: 805, baseType: !1080, size: 64, offset: 7680)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2752, file: !228, line: 806, baseType: !314, size: 64, offset: 7744)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2752, file: !228, line: 808, baseType: !284, size: 64, offset: 7808)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2752, file: !228, line: 810, baseType: !3550, size: 64, offset: 7872)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!314}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2752, file: !228, line: 811, baseType: !3554, size: 64, offset: 7936)
!3554 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !228, line: 605, baseType: !3555)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !2751, !3558, !3663}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !228, line: 1148, size: 2048, align: 512, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3570, !3571, !3572, !3577, !3578, !3585, !3606, !3628, !3638, !3656, !3657, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3559, file: !228, line: 1153, baseType: !314, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3559, file: !228, line: 1154, baseType: !314, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3559, file: !228, line: 1155, baseType: !314, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3559, file: !228, line: 1161, baseType: !314, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3559, file: !228, line: 1165, baseType: !3566, size: 64, offset: 256)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3559, file: !228, line: 1162, size: 64, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3566, file: !228, line: 1163, baseType: !381, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3566, file: !228, line: 1164, baseType: !381, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3559, file: !228, line: 1166, baseType: !314, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !228, line: 1167, baseType: !314, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3559, file: !228, line: 1171, baseType: !3573, size: 64, offset: 448)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3559, file: !228, line: 1168, size: 64, elements: !3574)
!3574 = !{!3575, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3573, file: !228, line: 1169, baseType: !381, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3573, file: !228, line: 1170, baseType: !381, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3559, file: !228, line: 1177, baseType: !314, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3559, file: !228, line: 1178, baseType: !3579, size: 64, offset: 576)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !228, line: 67, size: 64, elements: !3581)
!3581 = !{!3582, !3583}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3580, file: !228, line: 68, baseType: !315, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3580, file: !228, line: 69, baseType: !3584, offset: 64)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !682)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3559, file: !228, line: 1179, baseType: !3586, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !228, line: 93, size: 256, elements: !3588)
!3588 = !{!3589, !3605}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3587, file: !228, line: 94, baseType: !3590, size: 224)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !228, line: 83, size: 224, elements: !3591)
!3591 = !{!3592, !3598, !3603, !3604}
!3592 = !DIDerivedType(tag: DW_TAG_member, scope: !3590, file: !228, line: 84, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3590, file: !228, line: 84, size: 64, elements: !3594)
!3594 = !{!3595, !3597}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3593, file: !228, line: 85, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3593, file: !228, line: 86, baseType: !31, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3590, file: !228, line: 88, baseType: !3599, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !228, line: 80, baseType: !3600)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!31, !12, !2051, !31, !31}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3590, file: !228, line: 89, baseType: !12, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3590, file: !228, line: 90, baseType: !381, size: 32, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3587, file: !228, line: 95, baseType: !381, size: 32, offset: 224)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3559, file: !228, line: 1180, baseType: !3607, size: 64, offset: 704)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !228, line: 123, size: 128, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3608, file: !228, line: 124, baseType: !315, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3608, file: !228, line: 125, baseType: !315, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3608, file: !228, line: 126, baseType: !3613, offset: 128)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3614, elements: !682)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3301, line: 1415, size: 192, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3614, file: !3301, line: 1416, baseType: !315, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3614, file: !3301, line: 1417, baseType: !315, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3614, file: !3301, line: 1418, baseType: !315, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3614, file: !3301, line: 1419, baseType: !315, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3614, file: !3301, line: 1420, baseType: !315, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3614, file: !3301, line: 1421, baseType: !315, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3614, file: !3301, line: 1422, baseType: !315, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3614, file: !3301, line: 1423, baseType: !315, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3614, file: !3301, line: 1424, baseType: !315, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3614, file: !3301, line: 1425, baseType: !315, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3614, file: !3301, line: 1426, baseType: !315, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3614, file: !3301, line: 1427, baseType: !315, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3559, file: !228, line: 1181, baseType: !3629, size: 64, offset: 768)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3301, line: 1430, size: 64, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3629, file: !3301, line: 1431, baseType: !315, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, scope: !3629, file: !3301, line: 1433, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3301, line: 1433, size: 64, elements: !3634)
!3634 = !{!3635, !3636, !3637}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3633, file: !3301, line: 1434, baseType: !382, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3633, file: !3301, line: 1435, baseType: !86, size: 16, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3633, file: !3301, line: 1436, baseType: !86, size: 16, offset: 48)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3559, file: !228, line: 1182, baseType: !3639, size: 64, offset: 832)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3301, line: 1267, size: 64, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3639, file: !3301, line: 1268, baseType: !315, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, scope: !3639, file: !3301, line: 1269, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3639, file: !3301, line: 1269, size: 64, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3643, file: !3301, line: 1270, baseType: !315, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3643, file: !3301, line: 1271, baseType: !315, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3643, file: !3301, line: 1272, baseType: !315, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3643, file: !3301, line: 1273, baseType: !315, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3643, file: !3301, line: 1274, baseType: !315, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3643, file: !3301, line: 1275, baseType: !315, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3643, file: !3301, line: 1276, baseType: !315, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3643, file: !3301, line: 1277, baseType: !315, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3643, file: !3301, line: 1278, baseType: !315, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3643, file: !3301, line: 1279, baseType: !315, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3643, file: !3301, line: 1280, baseType: !315, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3559, file: !228, line: 1183, baseType: !314, size: 64, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3559, file: !228, line: 1185, baseType: !3658, size: 128, offset: 960)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3659, line: 7, size: 128, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3658, file: !3659, line: 8, baseType: !315, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3658, file: !3659, line: 9, baseType: !3663, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3665, line: 103, size: 1344, elements: !3666)
!3665 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3695, !3696, !3697}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3664, file: !3665, line: 109, baseType: !31, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3664, file: !3665, line: 110, baseType: !31, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3664, file: !3665, line: 111, baseType: !31, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3664, file: !3665, line: 112, baseType: !31, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3664, file: !3665, line: 113, baseType: !31, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3664, file: !3665, line: 114, baseType: !31, size: 64, offset: 320)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3664, file: !3665, line: 117, baseType: !31, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3664, file: !3665, line: 118, baseType: !31, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3664, file: !3665, line: 119, baseType: !31, size: 64, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3664, file: !3665, line: 120, baseType: !31, size: 64, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3664, file: !3665, line: 121, baseType: !31, size: 64, offset: 640)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3664, file: !3665, line: 122, baseType: !31, size: 64, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3664, file: !3665, line: 123, baseType: !31, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3664, file: !3665, line: 124, baseType: !31, size: 64, offset: 832)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3664, file: !3665, line: 125, baseType: !31, size: 64, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3664, file: !3665, line: 139, baseType: !31, size: 64, offset: 960)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3664, file: !3665, line: 142, baseType: !31, size: 64, offset: 1024)
!3684 = !DIDerivedType(tag: DW_TAG_member, scope: !3664, file: !3665, line: 144, baseType: !3685, size: 64, offset: 1088)
!3685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3664, file: !3665, line: 144, size: 64, elements: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3685, file: !3665, line: 146, baseType: !85, size: 16)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3685, file: !3665, line: 148, baseType: !314, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3685, file: !3665, line: 150, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3665, line: 59, size: 64, elements: !3691)
!3691 = !{!3692, !3693, !3694}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3690, file: !3665, line: 61, baseType: !314, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3690, file: !3665, line: 63, baseType: !314, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3690, file: !3665, line: 65, baseType: !314, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3664, file: !3665, line: 153, baseType: !31, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3664, file: !3665, line: 154, baseType: !31, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, scope: !3664, file: !3665, line: 156, baseType: !3698, size: 64, offset: 1280)
!3698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3664, file: !3665, line: 156, size: 64, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3698, file: !3665, line: 158, baseType: !85, size: 16)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3698, file: !3665, line: 160, baseType: !314, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3698, file: !3665, line: 162, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3665, line: 69, size: 64, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3703, file: !3665, line: 71, baseType: !314, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3703, file: !3665, line: 73, baseType: !314, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3703, file: !3665, line: 75, baseType: !314, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3703, file: !3665, line: 77, baseType: !314, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3703, file: !3665, line: 80, baseType: !314, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3703, file: !3665, line: 83, baseType: !314, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3703, file: !3665, line: 86, baseType: !314, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3703, file: !3665, line: 88, baseType: !314, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3703, file: !3665, line: 93, baseType: !314, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3703, file: !3665, line: 100, baseType: !314, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3559, file: !228, line: 1186, baseType: !3658, size: 128, offset: 1088)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3559, file: !228, line: 1187, baseType: !314, size: 64, offset: 1216)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3559, file: !228, line: 1189, baseType: !314, size: 64, offset: 1280)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3559, file: !228, line: 1190, baseType: !314, size: 64, offset: 1344)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3559, file: !228, line: 1191, baseType: !314, size: 64, offset: 1408)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3559, file: !228, line: 1192, baseType: !314, size: 64, offset: 1472)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3559, file: !228, line: 1193, baseType: !314, size: 64, offset: 1536)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3559, file: !228, line: 1194, baseType: !314, size: 64, offset: 1600)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3559, file: !228, line: 1195, baseType: !314, size: 64, offset: 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2752, file: !228, line: 812, baseType: !12, size: 64, offset: 8000)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2752, file: !228, line: 820, baseType: !2545, size: 64, offset: 8064)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2752, file: !228, line: 821, baseType: !2732, size: 64, offset: 8128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2752, file: !228, line: 828, baseType: !3728, size: 64, offset: 8192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !228, line: 1046, size: 1664, elements: !3730)
!3730 = !{!3731, !3989}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3729, file: !228, line: 1047, baseType: !3732, size: 1600)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3733, line: 152, size: 1600, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3734 = !{!3735, !3845, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3988}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3732, file: !3733, line: 154, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3733, line: 389, size: 7872, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3758, !3759, !3763, !3764, !3765, !3766, !3767, !3772, !3788, !3789, !3791, !3792, !3793, !3815, !3816, !3817, !3818, !3824, !3825, !3826, !3827, !3828, !3832, !3835, !3836, !3843}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3737, file: !3733, line: 391, baseType: !3732, size: 1600)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3737, file: !3733, line: 393, baseType: !31, size: 64, offset: 1600)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3737, file: !3733, line: 401, baseType: !14, size: 32, offset: 1664)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3737, file: !3733, line: 404, baseType: !14, size: 32, offset: 1696)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3737, file: !3733, line: 417, baseType: !14, size: 32, offset: 1728)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3737, file: !3733, line: 418, baseType: !14, size: 32, offset: 1760)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3737, file: !3733, line: 419, baseType: !14, size: 32, offset: 1792)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3737, file: !3733, line: 432, baseType: !14, size: 32, offset: 1824)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3737, file: !3733, line: 433, baseType: !14, size: 32, offset: 1856)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3737, file: !3733, line: 434, baseType: !14, size: 32, offset: 1888)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3737, file: !3733, line: 436, baseType: !14, size: 32, offset: 1920)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3737, file: !3733, line: 439, baseType: !96, size: 32, offset: 1952)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3737, file: !3733, line: 441, baseType: !2070, size: 64, offset: 1984)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3737, file: !3733, line: 442, baseType: !3753, size: 448, offset: 2048)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3733, line: 138, size: 448, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3753, file: !3733, line: 140, baseType: !2070, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3753, file: !3733, line: 141, baseType: !31, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3753, file: !3733, line: 142, baseType: !2465, size: 320, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3737, file: !3733, line: 443, baseType: !3753, size: 448, offset: 2496)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3737, file: !3733, line: 446, baseType: !3760, offset: 2944)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3753, elements: !3761)
!3761 = !{!3762}
!3762 = !DISubrange(count: 0)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3737, file: !3733, line: 455, baseType: !85, size: 16, offset: 2944)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3737, file: !3733, line: 456, baseType: !85, size: 16, offset: 2960)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3737, file: !3733, line: 457, baseType: !85, size: 16, offset: 2976)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3737, file: !3733, line: 458, baseType: !85, size: 16, offset: 2992)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3737, file: !3733, line: 461, baseType: !3768, size: 896, offset: 3008)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3769, size: 896, elements: !3770)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3770 = !{!3771}
!3771 = !DISubrange(count: 14)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3737, file: !3733, line: 463, baseType: !3773, size: 64, offset: 3904)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3733, line: 537, size: 41664, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3774, file: !3733, line: 538, baseType: !2090, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3774, file: !3733, line: 541, baseType: !96, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3774, file: !3733, line: 544, baseType: !14, size: 32, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3774, file: !3733, line: 547, baseType: !89, size: 128, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3774, file: !3733, line: 548, baseType: !415, size: 128, align: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3774, file: !3733, line: 555, baseType: !3737, size: 7872, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3774, file: !3733, line: 558, baseType: !3736, size: 64, offset: 8256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3774, file: !3733, line: 561, baseType: !41, size: 32, offset: 8320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3774, file: !3733, line: 564, baseType: !96, size: 32, offset: 8352)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3774, file: !3733, line: 567, baseType: !2694, size: 32768, offset: 8384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3774, file: !3733, line: 570, baseType: !3787, size: 512, offset: 41152)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 512, elements: !1464)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3737, file: !3733, line: 469, baseType: !89, size: 128, offset: 3968)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3737, file: !3733, line: 478, baseType: !3790, size: 1792, offset: 4096)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1792, elements: !3770)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3737, file: !3733, line: 487, baseType: !3736, size: 64, offset: 5888)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3737, file: !3733, line: 488, baseType: !3736, size: 64, offset: 5952)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3737, file: !3733, line: 491, baseType: !3794, size: 64, offset: 6016)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3733, line: 327, size: 896, elements: !3796)
!3796 = !{!3797, !3800, !3810, !3811, !3812, !3813, !3814}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3795, file: !3733, line: 332, baseType: !3798)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3799, line: 64, elements: !1006)
!3799 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3795, file: !3733, line: 333, baseType: !3801, size: 192)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3733, line: 299, size: 192, elements: !3802)
!3802 = !{!3803}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3801, file: !3733, line: 300, baseType: !3804, size: 192)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3805, line: 17, size: 192, elements: !3806)
!3805 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3806 = !{!3807, !3808, !3809}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3804, file: !3805, line: 18, baseType: !314, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3804, file: !3805, line: 19, baseType: !314, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3804, file: !3805, line: 20, baseType: !316, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3795, file: !3733, line: 339, baseType: !3801, size: 192, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3795, file: !3733, line: 347, baseType: !3801, size: 192, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3795, file: !3733, line: 353, baseType: !3801, size: 192, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3795, file: !3733, line: 366, baseType: !3736, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3795, file: !3733, line: 367, baseType: !3736, size: 64, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3737, file: !3733, line: 492, baseType: !89, size: 128, offset: 6080)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3737, file: !3733, line: 495, baseType: !3801, size: 192, offset: 6208)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3737, file: !3733, line: 496, baseType: !3801, size: 192, offset: 6400)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3737, file: !3733, line: 497, baseType: !3819, size: 192, offset: 6592)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !692, line: 324, size: 192, elements: !3820)
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3819, file: !692, line: 326, baseType: !314, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3819, file: !692, line: 327, baseType: !314, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3819, file: !692, line: 328, baseType: !362, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3737, file: !3733, line: 503, baseType: !89, size: 128, offset: 6784)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3737, file: !3733, line: 504, baseType: !1027, size: 256, offset: 6912)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3737, file: !3733, line: 507, baseType: !46, size: 192, offset: 7168)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3737, file: !3733, line: 510, baseType: !566, size: 256, offset: 7360)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3737, file: !3733, line: 513, baseType: !3829, size: 64, offset: 7616)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3831, line: 214, elements: !1006)
!3831 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3737, file: !3733, line: 516, baseType: !3833, offset: 7680)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3834, line: 76, elements: !1006)
!3834 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3737, file: !3733, line: 519, baseType: !41, size: 32, offset: 7680)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3737, file: !3733, line: 522, baseType: !3837, size: 128, offset: 7712)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3733, line: 370, size: 128, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3837, file: !3733, line: 372, baseType: !425, size: 8)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3837, file: !3733, line: 375, baseType: !14, size: 32, offset: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3837, file: !3733, line: 380, baseType: !14, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3837, file: !3733, line: 386, baseType: !14, size: 32, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3737, file: !3733, line: 529, baseType: !3844, offset: 7872)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3736, elements: !682)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3732, file: !3733, line: 157, baseType: !3846, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3733, line: 669, size: 1984, elements: !3848)
!3848 = !{!3849, !3853, !3857, !3861, !3862, !3863, !3864, !3868, !3872, !3873, !3879, !3883, !3884, !3885, !3914, !3918, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3971, !3972}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3847, file: !3733, line: 670, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!3769, !3769}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3847, file: !3733, line: 671, baseType: !3854, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!14, !3769}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3847, file: !3733, line: 672, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3769}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3847, file: !3733, line: 673, baseType: !3858, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3847, file: !3733, line: 674, baseType: !3858, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3847, file: !3733, line: 675, baseType: !3858, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3847, file: !3733, line: 676, baseType: !3865, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !3769, !14}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3847, file: !3733, line: 677, baseType: !3869, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!14, !2115, !3769}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3847, file: !3733, line: 679, baseType: !3869, size: 64, offset: 512)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3847, file: !3733, line: 682, baseType: !3874, size: 64, offset: 576)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!14, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3733, line: 30, flags: DIFlagFwdDecl)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3847, file: !3733, line: 683, baseType: !3880, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3877}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3847, file: !3733, line: 684, baseType: !3880, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3847, file: !3733, line: 685, baseType: !2639, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3847, file: !3733, line: 686, baseType: !3886, size: 64, offset: 832)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!14, !690, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3733, line: 209, size: 4736, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3890, file: !3733, line: 215, baseType: !3768, size: 896)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3890, file: !3733, line: 218, baseType: !328, size: 32, offset: 896)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3890, file: !3733, line: 226, baseType: !3889, size: 64, offset: 960)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3890, file: !3733, line: 229, baseType: !3736, size: 64, offset: 1024)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3890, file: !3733, line: 232, baseType: !14, size: 32, offset: 1088)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3890, file: !3733, line: 241, baseType: !89, size: 128, offset: 1152)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3890, file: !3733, line: 242, baseType: !89, size: 128, offset: 1280)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3890, file: !3733, line: 243, baseType: !89, size: 128, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3890, file: !3733, line: 246, baseType: !89, size: 128, offset: 1536)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3890, file: !3733, line: 255, baseType: !3790, size: 1792, offset: 1664)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3890, file: !3733, line: 258, baseType: !89, size: 128, offset: 3456)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3890, file: !3733, line: 259, baseType: !89, size: 128, offset: 3584)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3890, file: !3733, line: 265, baseType: !497, size: 128, offset: 3712)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3890, file: !3733, line: 271, baseType: !89, size: 128, offset: 3840)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3890, file: !3733, line: 277, baseType: !89, size: 128, offset: 3968)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3890, file: !3733, line: 278, baseType: !89, size: 128, offset: 4096)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3890, file: !3733, line: 279, baseType: !89, size: 128, offset: 4224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3890, file: !3733, line: 288, baseType: !3736, size: 64, offset: 4352)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3890, file: !3733, line: 289, baseType: !3736, size: 64, offset: 4416)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3890, file: !3733, line: 290, baseType: !3889, size: 64, offset: 4480)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3890, file: !3733, line: 293, baseType: !425, size: 8, offset: 4544)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3890, file: !3733, line: 296, baseType: !415, size: 128, align: 64, offset: 4608)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3847, file: !3733, line: 688, baseType: !3915, size: 64, offset: 896)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !690, !3889}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3847, file: !3733, line: 689, baseType: !3919, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !690}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3847, file: !3733, line: 690, baseType: !3919, size: 64, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3847, file: !3733, line: 691, baseType: !3919, size: 64, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3847, file: !3733, line: 692, baseType: !3858, size: 64, offset: 1152)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3847, file: !3733, line: 694, baseType: !425, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3847, file: !3733, line: 707, baseType: !425, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3847, file: !3733, line: 719, baseType: !425, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3847, file: !3733, line: 722, baseType: !14, size: 32, offset: 1248)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3847, file: !3733, line: 723, baseType: !8, size: 64, offset: 1280)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3847, file: !3733, line: 726, baseType: !8, size: 64, offset: 1344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3847, file: !3733, line: 729, baseType: !3773, size: 64, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3847, file: !3733, line: 732, baseType: !1085, size: 192, offset: 1472)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3847, file: !3733, line: 738, baseType: !89, size: 128, offset: 1664)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3847, file: !3733, line: 744, baseType: !3935, size: 64, offset: 1792)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3733, line: 580, size: 1728, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3947, !3948, !3949, !3953, !3957, !3958, !3959, !3960, !3961, !3965, !3969, !3970}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3936, file: !3733, line: 586, baseType: !3787, size: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3936, file: !3733, line: 587, baseType: !31, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3936, file: !3733, line: 593, baseType: !27, size: 64, offset: 576)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !3733, line: 596, baseType: !96, size: 32, offset: 640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3936, file: !3733, line: 604, baseType: !96, size: 32, offset: 672)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3936, file: !3733, line: 610, baseType: !3846, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3936, file: !3733, line: 611, baseType: !89, size: 128, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3936, file: !3733, line: 612, baseType: !3946, size: 64, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3936, file: !3733, line: 614, baseType: !2106, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3936, file: !3733, line: 615, baseType: !2164, size: 64, offset: 1024)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3936, file: !3733, line: 621, baseType: !3950, size: 64, offset: 1088)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!314, !3769, !3935}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3936, file: !3733, line: 625, baseType: !3954, size: 64, offset: 1152)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!288, !3769, !3935}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3936, file: !3733, line: 628, baseType: !2145, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3936, file: !3733, line: 631, baseType: !2133, size: 64, offset: 1280)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3936, file: !3733, line: 632, baseType: !2141, size: 64, offset: 1344)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3936, file: !3733, line: 633, baseType: !2137, size: 64, offset: 1408)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3936, file: !3733, line: 640, baseType: !3962, size: 64, offset: 1472)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!14, !3769, !3935, !314}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3936, file: !3733, line: 645, baseType: !3966, size: 64, offset: 1536)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!14, !3769, !3935, !288}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3936, file: !3733, line: 654, baseType: !2172, size: 64, offset: 1600)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3936, file: !3733, line: 657, baseType: !2179, size: 64, offset: 1664)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3847, file: !3733, line: 745, baseType: !3935, size: 64, offset: 1856)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3847, file: !3733, line: 754, baseType: !96, size: 32, offset: 1920)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3732, file: !3733, line: 160, baseType: !1609, size: 128, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3732, file: !3733, line: 163, baseType: !89, size: 128, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3732, file: !3733, line: 164, baseType: !89, size: 128, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3732, file: !3733, line: 167, baseType: !89, size: 128, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3732, file: !3733, line: 173, baseType: !14, size: 32, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3732, file: !3733, line: 175, baseType: !96, size: 32, offset: 672)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3732, file: !3733, line: 183, baseType: !314, size: 64, offset: 704)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3732, file: !3733, line: 189, baseType: !41, size: 32, offset: 768)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3732, file: !3733, line: 192, baseType: !566, size: 256, offset: 832)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3732, file: !3733, line: 193, baseType: !3983, size: 448, offset: 1088)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !567, line: 120, size: 448, elements: !3984)
!3984 = !{!3985, !3986, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3983, file: !567, line: 121, baseType: !566, size: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3983, file: !567, line: 122, baseType: !415, size: 128, align: 64, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3983, file: !567, line: 125, baseType: !2527, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3732, file: !3733, line: 199, baseType: !3769, size: 64, offset: 1536)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3729, file: !228, line: 1048, baseType: !3990, size: 64, offset: 1600)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !228, line: 1039, size: 256, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3991, file: !228, line: 1040, baseType: !314, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3991, file: !228, line: 1041, baseType: !314, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3991, file: !228, line: 1042, baseType: !314, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3991, file: !228, line: 1043, baseType: !14, size: 32, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2752, file: !228, line: 832, baseType: !12, size: 64, offset: 8256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2752, file: !228, line: 834, baseType: !89, size: 128, offset: 8320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2752, file: !228, line: 842, baseType: !382, size: 32, offset: 8448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1409, file: !114, line: 524, baseType: !96, size: 32, offset: 8320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1409, file: !114, line: 525, baseType: !4002, size: 64, offset: 8384)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4005, line: 28, size: 192, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4006 = !{!4007, !4008, !4009}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4004, file: !4005, line: 29, baseType: !8, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4004, file: !4005, line: 30, baseType: !8, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4004, file: !4005, line: 31, baseType: !31, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1409, file: !114, line: 526, baseType: !96, size: 32, offset: 8448)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1409, file: !114, line: 533, baseType: !12, size: 64, offset: 8512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1409, file: !114, line: 534, baseType: !96, size: 32, offset: 8576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1409, file: !114, line: 535, baseType: !4014, size: 64, offset: 8640)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1409, file: !114, line: 536, baseType: !96, size: 32, offset: 8704)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1409, file: !114, line: 539, baseType: !14, size: 32, offset: 8736)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1409, file: !114, line: 540, baseType: !2628, size: 64, offset: 8768)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1409, file: !114, line: 563, baseType: !89, size: 128, offset: 8832)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1409, file: !114, line: 565, baseType: !89, size: 128, offset: 8960)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1409, file: !114, line: 568, baseType: !2639, size: 64, offset: 9088)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1409, file: !114, line: 570, baseType: !41, size: 32, offset: 9152)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1385, file: !237, line: 2382, baseType: !1384, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1385, file: !237, line: 2383, baseType: !646, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1385, file: !237, line: 2385, baseType: !4025, offset: 576)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2494, line: 206, elements: !1006)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1385, file: !237, line: 2386, baseType: !4025, offset: 576)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1385, file: !237, line: 2387, baseType: !4025, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1385, file: !237, line: 2388, baseType: !4029, offset: 576)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4025, elements: !1059)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1385, file: !237, line: 2390, baseType: !4025, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1385, file: !237, line: 2391, baseType: !4025, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1385, file: !237, line: 2392, baseType: !4025, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1385, file: !237, line: 2393, baseType: !4025, offset: 576)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1376, file: !237, line: 1197, baseType: !4035, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !237, line: 2057, size: 1664, elements: !4038)
!4038 = !{!4039, !4043, !4047, !4048, !4052, !4056, !4060, !4061, !4062, !4066, !4070, !4074, !4075, !4076, !4082, !4086, !4087, !4091, !4092, !4093, !4094, !4098, !4102, !4149, !4164, !4165}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4037, file: !237, line: 2058, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!1174, !1375}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4037, file: !237, line: 2059, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !1174}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4037, file: !237, line: 2060, baseType: !4044, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4037, file: !237, line: 2062, baseType: !4049, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !1174, !14}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4037, file: !237, line: 2063, baseType: !4053, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!14, !1174, !1832}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4037, file: !237, line: 2064, baseType: !4057, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!14, !1174}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4037, file: !237, line: 2065, baseType: !4044, size: 64, offset: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4037, file: !237, line: 2066, baseType: !1404, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4037, file: !237, line: 2067, baseType: !4063, size: 64, offset: 512)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!14, !1375, !14}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4037, file: !237, line: 2068, baseType: !4067, size: 64, offset: 576)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!14, !1375, !236}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4037, file: !237, line: 2069, baseType: !4071, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!14, !1375}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4037, file: !237, line: 2070, baseType: !4067, size: 64, offset: 704)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4037, file: !237, line: 2071, baseType: !4071, size: 64, offset: 768)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4037, file: !237, line: 2072, baseType: !4077, size: 64, offset: 832)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!14, !1139, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !237, line: 62, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4037, file: !237, line: 2073, baseType: !4083, size: 64, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!14, !1375, !2364, !436}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4037, file: !237, line: 2074, baseType: !1404, size: 64, offset: 960)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4037, file: !237, line: 2076, baseType: !4088, size: 64, offset: 1024)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!14, !2115, !1139}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4037, file: !237, line: 2077, baseType: !4088, size: 64, offset: 1088)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4037, file: !237, line: 2078, baseType: !4088, size: 64, offset: 1152)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4037, file: !237, line: 2079, baseType: !4088, size: 64, offset: 1216)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4037, file: !237, line: 2081, baseType: !4095, size: 64, offset: 1280)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!1326, !1375, !14, !436, !27, !33}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4037, file: !237, line: 2082, baseType: !4099, size: 64, offset: 1344)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!1326, !1375, !14, !8, !27, !33}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4037, file: !237, line: 2083, baseType: !4103, size: 64, offset: 1408)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!4106, !1174}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !242, line: 296, size: 1664, elements: !4109)
!4109 = !{!4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4134, !4135, !4136}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4108, file: !242, line: 297, baseType: !497, size: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4108, file: !242, line: 298, baseType: !89, size: 128, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4108, file: !242, line: 299, baseType: !89, size: 128, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4108, file: !242, line: 300, baseType: !89, size: 128, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4108, file: !242, line: 301, baseType: !1027, size: 256, offset: 512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4108, file: !242, line: 302, baseType: !51, size: 32, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4108, file: !242, line: 303, baseType: !41, size: 32, offset: 800)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4108, file: !242, line: 304, baseType: !1375, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4108, file: !242, line: 305, baseType: !4119, size: 64, offset: 896)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !242, line: 68, size: 64, elements: !4120)
!4120 = !{!4121, !4133}
!4121 = !DIDerivedType(tag: DW_TAG_member, scope: !4119, file: !242, line: 69, baseType: !4122, size: 32)
!4122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4119, file: !242, line: 69, size: 32, elements: !4123)
!4123 = !{!4124, !4125, !4126}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4122, file: !242, line: 70, baseType: !291, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4122, file: !242, line: 71, baseType: !297, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4122, file: !242, line: 72, baseType: !4127, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4128, line: 24, baseType: !4129)
!4128 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4128, line: 22, size: 32, elements: !4130)
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4129, file: !4128, line: 23, baseType: !4132, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4128, line: 20, baseType: !272)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4119, file: !242, line: 74, baseType: !241, size: 32, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4108, file: !242, line: 306, baseType: !33, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4108, file: !242, line: 307, baseType: !31, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4108, file: !242, line: 308, baseType: !4137, size: 576, offset: 1088)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !242, line: 205, size: 576, elements: !4138)
!4138 = !{!4139, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4137, file: !242, line: 206, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !242, line: 66, baseType: !35)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4137, file: !242, line: 207, baseType: !4140, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4137, file: !242, line: 208, baseType: !4140, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4137, file: !242, line: 209, baseType: !4140, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4137, file: !242, line: 210, baseType: !4140, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4137, file: !242, line: 211, baseType: !4140, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4137, file: !242, line: 212, baseType: !4140, size: 64, offset: 384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4137, file: !242, line: 213, baseType: !372, size: 64, offset: 448)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4137, file: !242, line: 214, baseType: !372, size: 64, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4037, file: !237, line: 2085, baseType: !4150, size: 64, offset: 1472)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!670, !1375, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4155, line: 15, size: 256, elements: !4156)
!4155 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4156 = !{!4157, !4158, !4159, !4160, !4161}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4154, file: !4155, line: 16, baseType: !1094, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4154, file: !4155, line: 19, baseType: !14, size: 32, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4154, file: !4155, line: 26, baseType: !31, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4154, file: !4155, line: 33, baseType: !31, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4154, file: !4155, line: 36, baseType: !4162, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !129, line: 33, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4037, file: !237, line: 2087, baseType: !4150, size: 64, offset: 1536)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4037, file: !237, line: 2089, baseType: !1404, size: 64, offset: 1600)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1376, file: !237, line: 1198, baseType: !4167, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4169)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !242, line: 324, size: 704, elements: !4170)
!4170 = !{!4171, !4175, !4179, !4183, !4184, !4185, !4186, !4187, !4192, !4197, !4201}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4169, file: !242, line: 325, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!14, !4107}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4169, file: !242, line: 326, baseType: !4176, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!4107, !1375, !14}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4169, file: !242, line: 327, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !4107}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4169, file: !242, line: 328, baseType: !4172, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4169, file: !242, line: 329, baseType: !4172, size: 64, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4169, file: !242, line: 330, baseType: !4172, size: 64, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4169, file: !242, line: 331, baseType: !4063, size: 64, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4169, file: !242, line: 334, baseType: !4188, size: 64, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!4191, !1174}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4169, file: !242, line: 335, baseType: !4193, size: 64, offset: 512)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!14, !1174, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4169, file: !242, line: 337, baseType: !4198, size: 64, offset: 576)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!14, !1174, !4191}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4169, file: !242, line: 339, baseType: !4202, size: 64, offset: 640)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!14, !1375, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1376, file: !237, line: 1199, baseType: !4207, size: 64, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !242, line: 430, size: 704, elements: !4210)
!4210 = !{!4211, !4215, !4216, !4220, !4221, !4222, !4237, !4260, !4264, !4265, !4288}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4209, file: !242, line: 431, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!14, !1375, !14, !14, !1295}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4209, file: !242, line: 432, baseType: !4063, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4209, file: !242, line: 433, baseType: !4217, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!14, !1375, !96}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4209, file: !242, line: 434, baseType: !4217, size: 64, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4209, file: !242, line: 435, baseType: !4063, size: 64, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4209, file: !242, line: 436, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!14, !1375, !14, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !242, line: 417, size: 256, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4227, file: !242, line: 418, baseType: !14, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4227, file: !242, line: 419, baseType: !96, size: 32, offset: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4227, file: !242, line: 420, baseType: !96, size: 32, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4227, file: !242, line: 422, baseType: !96, size: 32, offset: 96)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4227, file: !242, line: 423, baseType: !96, size: 32, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4227, file: !242, line: 424, baseType: !96, size: 32, offset: 160)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4227, file: !242, line: 425, baseType: !96, size: 32, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4227, file: !242, line: 426, baseType: !96, size: 32, offset: 224)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4209, file: !242, line: 437, baseType: !4238, size: 64, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!14, !1375, !4119, !4241}
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !242, line: 345, size: 960, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4242, file: !242, line: 346, baseType: !14, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4242, file: !242, line: 347, baseType: !314, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4242, file: !242, line: 348, baseType: !314, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4242, file: !242, line: 349, baseType: !314, size: 64, offset: 192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4242, file: !242, line: 350, baseType: !314, size: 64, offset: 256)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4242, file: !242, line: 351, baseType: !314, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4242, file: !242, line: 352, baseType: !314, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4242, file: !242, line: 353, baseType: !288, size: 64, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4242, file: !242, line: 355, baseType: !288, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4242, file: !242, line: 356, baseType: !14, size: 32, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4242, file: !242, line: 357, baseType: !14, size: 32, offset: 608)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4242, file: !242, line: 358, baseType: !314, size: 64, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4242, file: !242, line: 359, baseType: !314, size: 64, offset: 704)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4242, file: !242, line: 360, baseType: !314, size: 64, offset: 768)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4242, file: !242, line: 361, baseType: !288, size: 64, offset: 832)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4242, file: !242, line: 362, baseType: !14, size: 32, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4209, file: !242, line: 438, baseType: !4261, size: 64, offset: 448)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!14, !1375, !4205, !4241}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4209, file: !242, line: 440, baseType: !4238, size: 64, offset: 512)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4209, file: !242, line: 441, baseType: !4266, size: 64, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!14, !1375, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !242, line: 411, size: 1408, elements: !4271)
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4270, file: !242, line: 412, baseType: !96, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4270, file: !242, line: 413, baseType: !4274, size: 1344, offset: 64)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4275, size: 1344, elements: !1059)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !242, line: 397, size: 448, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4287}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4275, file: !242, line: 398, baseType: !96, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4275, file: !242, line: 399, baseType: !96, size: 32, offset: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4275, file: !242, line: 401, baseType: !96, size: 32, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4275, file: !242, line: 402, baseType: !96, size: 32, offset: 96)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4275, file: !242, line: 403, baseType: !96, size: 32, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4275, file: !242, line: 404, baseType: !96, size: 32, offset: 160)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4275, file: !242, line: 405, baseType: !96, size: 32, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4275, file: !242, line: 406, baseType: !316, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4275, file: !242, line: 407, baseType: !4286, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !17, line: 132, baseType: !314)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4275, file: !242, line: 408, baseType: !4286, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4209, file: !242, line: 442, baseType: !4217, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1376, file: !237, line: 1200, baseType: !4290, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4292)
!4292 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !237, line: 54, flags: DIFlagFwdDecl)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1376, file: !237, line: 1201, baseType: !31, size: 64, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1376, file: !237, line: 1202, baseType: !31, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1376, file: !237, line: 1203, baseType: !31, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1376, file: !237, line: 1204, baseType: !1139, size: 64, offset: 832)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1376, file: !237, line: 1205, baseType: !351, size: 320, offset: 896)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1376, file: !237, line: 1206, baseType: !14, size: 32, offset: 1216)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1376, file: !237, line: 1207, baseType: !41, size: 32, offset: 1248)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1376, file: !237, line: 1209, baseType: !12, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1376, file: !237, line: 1211, baseType: !4302, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !237, line: 1211, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1376, file: !237, line: 1223, baseType: !4307, size: 64, offset: 1408)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1151, line: 34, size: 64, elements: !4308)
!4308 = !{!4309}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4307, file: !1151, line: 35, baseType: !1154, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1376, file: !237, line: 1224, baseType: !89, size: 128, offset: 1472)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1376, file: !237, line: 1225, baseType: !4312, size: 64, offset: 1600)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !237, line: 1225, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1376, file: !237, line: 1226, baseType: !4315, size: 64, offset: 1664)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !237, line: 1226, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1376, file: !237, line: 1227, baseType: !4318, size: 64, offset: 1728)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !237, line: 50, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1376, file: !237, line: 1228, baseType: !4321, size: 64, offset: 1792)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !237, line: 1228, flags: DIFlagFwdDecl)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1376, file: !237, line: 1229, baseType: !497, size: 128, offset: 1856)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1376, file: !237, line: 1230, baseType: !96, size: 32, offset: 1984)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1376, file: !237, line: 1231, baseType: !4326, size: 2496, offset: 2048)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !242, line: 521, size: 2496, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4332, !4364}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4326, file: !242, line: 522, baseType: !96, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4326, file: !242, line: 523, baseType: !351, size: 320, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4326, file: !242, line: 524, baseType: !4331, size: 192, offset: 384)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 192, elements: !1059)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4326, file: !242, line: 525, baseType: !4333, size: 1728, offset: 576)
!4333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4334, size: 1728, elements: !1059)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !242, line: 222, size: 576, elements: !4335)
!4335 = !{!4336, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4334, file: !242, line: 223, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !242, line: 445, size: 256, elements: !4339)
!4339 = !{!4340, !4341, !4354, !4355}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4338, file: !242, line: 446, baseType: !14, size: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4338, file: !242, line: 447, baseType: !4342, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !242, line: 312, size: 512, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4344, file: !242, line: 313, baseType: !4063, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4344, file: !242, line: 314, baseType: !4063, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4344, file: !242, line: 315, baseType: !4063, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4344, file: !242, line: 316, baseType: !4063, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4344, file: !242, line: 317, baseType: !4172, size: 64, offset: 256)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4344, file: !242, line: 318, baseType: !4172, size: 64, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4344, file: !242, line: 319, baseType: !4172, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4344, file: !242, line: 320, baseType: !4202, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4338, file: !242, line: 448, baseType: !1408, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4338, file: !242, line: 449, baseType: !4337, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4334, file: !242, line: 224, baseType: !14, size: 32, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4334, file: !242, line: 226, baseType: !89, size: 128, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4334, file: !242, line: 227, baseType: !31, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4334, file: !242, line: 228, baseType: !96, size: 32, offset: 320)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4334, file: !242, line: 229, baseType: !96, size: 32, offset: 352)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4334, file: !242, line: 230, baseType: !4140, size: 64, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4334, file: !242, line: 231, baseType: !4140, size: 64, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4334, file: !242, line: 232, baseType: !12, size: 64, offset: 512)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4326, file: !242, line: 526, baseType: !4365, size: 192, offset: 2304)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4342, size: 192, elements: !1059)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1376, file: !237, line: 1233, baseType: !4367, size: 2368, offset: 4544)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !237, line: 1184, size: 2368, elements: !4368)
!4368 = !{!4369, !4370, !4371}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4367, file: !237, line: 1185, baseType: !18, size: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4367, file: !237, line: 1186, baseType: !18, size: 16, offset: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4367, file: !237, line: 1187, baseType: !4372, size: 2304, offset: 64)
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4373, size: 2304, elements: !1059)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4374, line: 12, size: 768, elements: !4375)
!4374 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4375 = !{!4376, !4384, !4385, !4386, !4387}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4373, file: !4374, line: 13, baseType: !4377, size: 384)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4378, line: 17, size: 384, elements: !4379)
!4378 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4379 = !{!4380, !4381, !4382, !4383}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4377, file: !4378, line: 18, baseType: !14, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4377, file: !4378, line: 19, baseType: !14, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4377, file: !4378, line: 20, baseType: !46, size: 192, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4377, file: !4378, line: 22, baseType: !415, size: 128, align: 64, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4373, file: !4374, line: 14, baseType: !2316, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4373, file: !4374, line: 15, baseType: !3522, size: 64, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4373, file: !4374, line: 16, baseType: !46, size: 192, offset: 512)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4373, file: !4374, line: 17, baseType: !41, size: 32, offset: 704)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1376, file: !237, line: 1240, baseType: !12, size: 64, offset: 6912)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1376, file: !237, line: 1243, baseType: !381, size: 32, offset: 6976)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1376, file: !237, line: 1245, baseType: !372, size: 64, offset: 7040)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1376, file: !237, line: 1246, baseType: !372, size: 64, offset: 7104)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1376, file: !237, line: 1248, baseType: !382, size: 32, offset: 7168)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1376, file: !237, line: 1249, baseType: !4394, size: 64, offset: 7232)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !237, line: 634, flags: DIFlagFwdDecl)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1376, file: !237, line: 1252, baseType: !4397, size: 256, offset: 7296)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !4398)
!4398 = !{!4399}
!4399 = !DISubrange(count: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1376, file: !237, line: 1253, baseType: !4401, size: 128, offset: 7552)
!4401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4402, line: 21, baseType: !4403)
!4402 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4402, line: 19, size: 128, elements: !4404)
!4404 = !{!4405}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4403, file: !4402, line: 20, baseType: !4406, size: 128)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !4407)
!4407 = !{!4408}
!4408 = !DISubrange(count: 16)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1376, file: !237, line: 1255, baseType: !96, size: 32, offset: 7680)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1376, file: !237, line: 1261, baseType: !1027, size: 256, offset: 7744)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1376, file: !237, line: 1267, baseType: !8, size: 64, offset: 8000)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1376, file: !237, line: 1269, baseType: !4413, size: 64, offset: 8064)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1141, line: 128, size: 1024, align: 512, elements: !4416)
!4416 = !{!4417, !4421, !4422, !4429, !4435, !4439, !4443, !4447, !4448, !4452, !4456, !4461, !4465}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4415, file: !1141, line: 129, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!14, !1139, !96}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4415, file: !1141, line: 130, baseType: !4418, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4415, file: !1141, line: 131, baseType: !4423, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!14, !4426, !4428}
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4415, file: !1141, line: 132, baseType: !4430, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!14, !4426, !96, !8, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4415, file: !1141, line: 134, baseType: !4436, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!14, !4426}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4415, file: !1141, line: 135, baseType: !4440, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!14, !1139}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4415, file: !1141, line: 136, baseType: !4444, size: 64, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{null, !1139}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4415, file: !1141, line: 137, baseType: !4444, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4415, file: !1141, line: 138, baseType: !4449, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !1139, !1174}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4415, file: !1141, line: 139, baseType: !4453, size: 64, offset: 576)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!436, !1139, !436, !14}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4415, file: !1141, line: 140, baseType: !4457, size: 64, offset: 640)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!1134, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4415, file: !1141, line: 141, baseType: !4462, size: 64, offset: 704)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!14, !1295, !425}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4415, file: !1141, line: 142, baseType: !4466, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!1139, !1139, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1376, file: !237, line: 1271, baseType: !4472, size: 448, offset: 8128)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4155, line: 63, size: 448, elements: !4473)
!4473 = !{!4474, !4479, !4480, !4481, !4482, !4483, !4484}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4472, file: !4155, line: 64, baseType: !4475, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!31, !4478, !4153}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4472, file: !4155, line: 66, baseType: !4475, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4472, file: !4155, line: 69, baseType: !670, size: 64, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4472, file: !4155, line: 70, baseType: !14, size: 32, offset: 192)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4472, file: !4155, line: 71, baseType: !96, size: 32, offset: 224)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4472, file: !4155, line: 74, baseType: !89, size: 128, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4472, file: !4155, line: 85, baseType: !4485, size: 64, offset: 384)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1376, file: !237, line: 1274, baseType: !282, size: 64, offset: 8576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1376, file: !237, line: 1280, baseType: !282, size: 64, offset: 8640)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1376, file: !237, line: 1283, baseType: !14, size: 32, offset: 8704)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1376, file: !237, line: 1286, baseType: !2012, size: 32, offset: 8736)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1376, file: !237, line: 1289, baseType: !2527, size: 64, offset: 8768)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1376, file: !237, line: 1290, baseType: !646, size: 64, offset: 8832)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1376, file: !237, line: 1297, baseType: !517, size: 64, offset: 8896)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1376, file: !237, line: 1304, baseType: !4494, size: 64, offset: 8960)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4495, line: 49, size: 64, elements: !4496)
!4495 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4496 = !{!4497}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4494, file: !4495, line: 50, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4495, line: 41, size: 512, align: 512, elements: !4500)
!4500 = !{!4501, !4502, !4507}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4499, file: !4495, line: 43, baseType: !51, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4499, file: !4495, line: 45, baseType: !4503, size: 192, offset: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4495, line: 29, size: 192, elements: !4504)
!4504 = !{!4505, !4506}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4503, file: !4495, line: 30, baseType: !89, size: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4503, file: !4495, line: 32, baseType: !670, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4499, file: !4495, line: 46, baseType: !670, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1376, file: !237, line: 1305, baseType: !4494, size: 64, offset: 9024)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1376, file: !237, line: 1306, baseType: !415, size: 128, align: 64, offset: 9088)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1376, file: !237, line: 1307, baseType: !566, size: 256, offset: 9216)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1376, file: !237, line: 1309, baseType: !1027, size: 256, offset: 9472)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1376, file: !237, line: 1314, baseType: !14, size: 32, offset: 9728)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1376, file: !237, line: 1317, baseType: !51, size: 32, align: 512, offset: 10240)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1376, file: !237, line: 1318, baseType: !89, size: 128, offset: 10304)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1376, file: !237, line: 1320, baseType: !51, size: 32, offset: 10432)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1376, file: !237, line: 1321, baseType: !89, size: 128, offset: 10496)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1175, file: !237, line: 656, baseType: !1525, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1175, file: !237, line: 659, baseType: !12, size: 64, offset: 576)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1175, file: !237, line: 663, baseType: !31, size: 64, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !237, line: 671, baseType: !4521, size: 32, offset: 704)
!4521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !237, line: 671, size: 32, elements: !4522)
!4522 = !{!4523, !4524}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4521, file: !237, line: 672, baseType: !2575, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4521, file: !237, line: 673, baseType: !96, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1175, file: !237, line: 675, baseType: !1248, size: 32, offset: 736)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1175, file: !237, line: 676, baseType: !33, size: 64, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1175, file: !237, line: 677, baseType: !1284, size: 128, offset: 832)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1175, file: !237, line: 678, baseType: !1284, size: 128, offset: 960)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1175, file: !237, line: 679, baseType: !1284, size: 128, offset: 1088)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1175, file: !237, line: 680, baseType: !51, size: 32, offset: 1216)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1175, file: !237, line: 681, baseType: !18, size: 16, offset: 1248)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1175, file: !237, line: 682, baseType: !75, size: 8, offset: 1264)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1175, file: !237, line: 683, baseType: !75, size: 8, offset: 1272)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1175, file: !237, line: 684, baseType: !4286, size: 64, offset: 1280)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1175, file: !237, line: 691, baseType: !31, size: 64, offset: 1344)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1175, file: !237, line: 692, baseType: !351, size: 320, offset: 1408)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1175, file: !237, line: 694, baseType: !31, size: 64, offset: 1728)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1175, file: !237, line: 695, baseType: !31, size: 64, offset: 1792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1175, file: !237, line: 697, baseType: !497, size: 128, offset: 1856)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1175, file: !237, line: 698, baseType: !89, size: 128, offset: 1984)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1175, file: !237, line: 707, baseType: !89, size: 128, offset: 2112)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1175, file: !237, line: 708, baseType: !89, size: 128, offset: 2240)
!4543 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !237, line: 709, baseType: !4544, size: 128, offset: 2368)
!4544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !237, line: 709, size: 128, elements: !4545)
!4545 = !{!4546, !4547}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4544, file: !237, line: 710, baseType: !646, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4544, file: !237, line: 711, baseType: !415, size: 128, align: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1175, file: !237, line: 713, baseType: !284, size: 64, offset: 2496)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1175, file: !237, line: 714, baseType: !284, size: 64, offset: 2560)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1175, file: !237, line: 715, baseType: !41, size: 32, offset: 2624)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1175, file: !237, line: 716, baseType: !41, size: 32, offset: 2656)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1175, file: !237, line: 717, baseType: !41, size: 32, offset: 2688)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1175, file: !237, line: 719, baseType: !41, size: 32, offset: 2720)
!4554 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !237, line: 721, baseType: !4555, size: 64, offset: 2752)
!4555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !237, line: 721, size: 64, elements: !4556)
!4556 = !{!4557, !4683}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4555, file: !237, line: 722, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4560)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !237, line: 1914, size: 2112, elements: !4561)
!4561 = !{!4562, !4563, !4567, !4571, !4575, !4576, !4577, !4583, !4596, !4600, !4604, !4605, !4609, !4610, !4614, !4619, !4620, !4624, !4628, !4634, !4635, !4639, !4640, !4646, !4650, !4651, !4656, !4660, !4664, !4668, !4672, !4673, !4679}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4560, file: !237, line: 1915, baseType: !1408, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4560, file: !237, line: 1916, baseType: !4564, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!33, !1013, !33, !14}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4560, file: !237, line: 1917, baseType: !4568, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!1326, !1013, !436, !27, !32}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4560, file: !237, line: 1918, baseType: !4572, size: 64, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!1326, !1013, !8, !27, !32}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4560, file: !237, line: 1919, baseType: !1946, size: 64, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4560, file: !237, line: 1920, baseType: !1946, size: 64, offset: 320)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4560, file: !237, line: 1921, baseType: !4578, size: 64, offset: 384)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!14, !1949, !4581, !96}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !237, line: 53, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4560, file: !237, line: 1923, baseType: !4584, size: 64, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!14, !1013, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !237, line: 1858, size: 128, elements: !4589)
!4589 = !{!4590, !4595}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4588, file: !237, line: 1859, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !237, line: 1855, baseType: !4592)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!425, !4587, !8, !14, !33, !314, !96}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4588, file: !237, line: 1860, baseType: !33, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4560, file: !237, line: 1924, baseType: !4597, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!2182, !1013, !2184}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4560, file: !237, line: 1925, baseType: !4601, size: 64, offset: 576)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!670, !1013, !96, !31}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4560, file: !237, line: 1926, baseType: !4601, size: 64, offset: 640)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4560, file: !237, line: 1927, baseType: !4606, size: 64, offset: 704)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!14, !1013, !1655}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4560, file: !237, line: 1928, baseType: !31, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4560, file: !237, line: 1929, baseType: !4611, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!14, !1174, !1013}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4560, file: !237, line: 1930, baseType: !4615, size: 64, offset: 896)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!14, !1013, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !237, line: 1061, baseType: !12)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4560, file: !237, line: 1931, baseType: !4611, size: 64, offset: 960)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4560, file: !237, line: 1932, baseType: !4621, size: 64, offset: 1024)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!14, !1013, !33, !33, !14}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4560, file: !237, line: 1933, baseType: !4625, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!14, !14, !1013, !14}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4560, file: !237, line: 1934, baseType: !4629, size: 64, offset: 1152)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!14, !1013, !14, !4632}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !237, line: 1063, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4560, file: !237, line: 1935, baseType: !1010, size: 64, offset: 1216)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4560, file: !237, line: 1936, baseType: !4636, size: 64, offset: 1280)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!14, !14}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4560, file: !237, line: 1937, baseType: !4629, size: 64, offset: 1344)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4560, file: !237, line: 1938, baseType: !4641, size: 64, offset: 1408)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!1326, !4644, !1013, !32, !27, !96}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !692, line: 59, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4560, file: !237, line: 1939, baseType: !4647, size: 64, offset: 1472)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!1326, !1013, !32, !4644, !27, !96}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4560, file: !237, line: 1940, baseType: !2002, size: 64, offset: 1536)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4560, file: !237, line: 1941, baseType: !4652, size: 64, offset: 1600)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!14, !1013, !14, !4655, !1923}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4560, file: !237, line: 1942, baseType: !4657, size: 64, offset: 1664)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!670, !1013, !14, !33, !33}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4560, file: !237, line: 1944, baseType: !4661, size: 64, offset: 1728)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !2115, !1013}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4560, file: !237, line: 1948, baseType: !4665, size: 64, offset: 1792)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!1326, !1013, !33, !1013, !33, !27, !96}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4560, file: !237, line: 1950, baseType: !4669, size: 64, offset: 1856)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!33, !1013, !33, !1013, !33, !33, !96}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4560, file: !237, line: 1953, baseType: !4621, size: 64, offset: 1920)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4560, file: !237, line: 1954, baseType: !4674, size: 64, offset: 1984)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!14, !4677, !96}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !237, line: 1911, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4560, file: !237, line: 1955, baseType: !4680, size: 64, offset: 2048)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!14, !4677, !4581, !96}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4555, file: !237, line: 723, baseType: !4044, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1175, file: !237, line: 725, baseType: !4685, size: 64, offset: 2816)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !237, line: 725, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1175, file: !237, line: 726, baseType: !1526, size: 1536, align: 64, offset: 2880)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1175, file: !237, line: 727, baseType: !89, size: 128, offset: 4416)
!4689 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !237, line: 728, baseType: !4690, size: 64, offset: 4544)
!4690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !237, line: 728, size: 64, elements: !4691)
!4691 = !{!4692, !4693, !4696, !4697}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4690, file: !237, line: 729, baseType: !4644, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4690, file: !237, line: 730, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !237, line: 730, flags: DIFlagFwdDecl)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4690, file: !237, line: 731, baseType: !436, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4690, file: !237, line: 732, baseType: !96, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1175, file: !237, line: 735, baseType: !382, size: 32, offset: 4608)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1175, file: !237, line: 738, baseType: !382, size: 32, offset: 4640)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1175, file: !237, line: 739, baseType: !4394, size: 64, offset: 4672)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1175, file: !237, line: 750, baseType: !12, size: 64, offset: 4736)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1140, file: !1141, line: 91, baseType: !4703, size: 256, offset: 448)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !4398)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1140, file: !1141, line: 94, baseType: !4705, size: 64, offset: 704)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4706, line: 25, size: 64, elements: !4707)
!4706 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4707 = !{!4708}
!4708 = !DIDerivedType(tag: DW_TAG_member, scope: !4705, file: !4706, line: 26, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4705, file: !4706, line: 26, size: 64, elements: !4710)
!4710 = !{!4711, !4712}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4709, file: !4706, line: 28, baseType: !315, size: 64, align: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, scope: !4709, file: !4706, line: 30, baseType: !4713, size: 64)
!4713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4709, file: !4706, line: 30, size: 64, elements: !4714)
!4714 = !{!4715, !4716}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4713, file: !4706, line: 31, baseType: !51, size: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4713, file: !4706, line: 32, baseType: !14, size: 32, offset: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1140, file: !1141, line: 95, baseType: !4413, size: 64, offset: 768)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1140, file: !1141, line: 96, baseType: !1375, size: 64, offset: 832)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1140, file: !1141, line: 97, baseType: !31, size: 64, offset: 896)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1140, file: !1141, line: 98, baseType: !12, size: 64, offset: 960)
!4721 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !1141, line: 100, baseType: !4722, size: 128, offset: 1024)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !1141, line: 100, size: 128, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4722, file: !1141, line: 101, baseType: !89, size: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4722, file: !1141, line: 102, baseType: !2193, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1140, file: !1141, line: 104, baseType: !89, size: 128, offset: 1152)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1140, file: !1141, line: 105, baseType: !89, size: 128, offset: 1280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1140, file: !1141, line: 113, baseType: !4729, size: 128, offset: 1408)
!4729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !1141, line: 109, size: 128, elements: !4730)
!4730 = !{!4731, !4732, !4733}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4729, file: !1141, line: 110, baseType: !497, size: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4729, file: !1141, line: 111, baseType: !1150, size: 128)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4729, file: !1141, line: 112, baseType: !415, size: 128, align: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1135, file: !1136, line: 72, baseType: !1375, size: 64, offset: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1135, file: !1136, line: 73, baseType: !14, size: 32, offset: 128)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1135, file: !1136, line: 74, baseType: !1213, size: 64, offset: 192)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1130, file: !1131, line: 10, baseType: !1139, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1014, file: !237, line: 1015, baseType: !1174, size: 64, offset: 1344)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1014, file: !237, line: 1016, baseType: !4558, size: 64, offset: 1408)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1014, file: !237, line: 1018, baseType: !314, size: 64, offset: 1472)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1014, file: !237, line: 1020, baseType: !12, size: 64, offset: 1536)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1014, file: !237, line: 1023, baseType: !12, size: 64, offset: 1600)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1014, file: !237, line: 1027, baseType: !2743, size: 64, offset: 1664)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1014, file: !237, line: 1029, baseType: !1525, size: 64, offset: 1728)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1014, file: !237, line: 1030, baseType: !2012, size: 32, offset: 1792)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1014, file: !237, line: 1031, baseType: !2012, size: 32, offset: 1824)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !989, file: !129, line: 756, baseType: !31, size: 64, offset: 704)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !989, file: !129, line: 757, baseType: !31, size: 64, offset: 768)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !989, file: !129, line: 760, baseType: !31, size: 64, offset: 832)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !989, file: !129, line: 761, baseType: !31, size: 64, offset: 896)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !989, file: !129, line: 763, baseType: !31, size: 64, offset: 960)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !989, file: !129, line: 764, baseType: !4753, size: 64, offset: 1024)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1670, line: 299, baseType: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 299, size: 64, elements: !4756)
!4756 = !{!4757}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4755, file: !1670, line: 299, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1675, line: 18, baseType: !31)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !989, file: !129, line: 773, baseType: !41, size: 32, offset: 1088)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !989, file: !129, line: 785, baseType: !41, size: 32, offset: 1120)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !989, file: !129, line: 795, baseType: !4762, size: 64, offset: 1152)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !129, line: 726, size: 128, elements: !4764)
!4764 = !{!4765, !4766}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4763, file: !129, line: 727, baseType: !314, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4763, file: !129, line: 728, baseType: !14, size: 32, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !989, file: !129, line: 801, baseType: !31, size: 64, offset: 1216)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !989, file: !129, line: 804, baseType: !282, size: 64, offset: 1280)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !989, file: !129, line: 806, baseType: !14, size: 32, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !989, file: !129, line: 808, baseType: !51, size: 32, offset: 1376)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !989, file: !129, line: 823, baseType: !351, size: 320, offset: 1408)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !989, file: !129, line: 825, baseType: !89, size: 128, offset: 1728)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !989, file: !129, line: 845, baseType: !14, size: 32, offset: 1856)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !989, file: !129, line: 849, baseType: !31, size: 64, offset: 1920)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !989, file: !129, line: 850, baseType: !31, size: 64, offset: 1984)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !989, file: !129, line: 852, baseType: !31, size: 64, offset: 2048)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !989, file: !129, line: 853, baseType: !31, size: 64, offset: 2112)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !989, file: !129, line: 854, baseType: !284, size: 64, offset: 2176)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !989, file: !129, line: 855, baseType: !31, size: 64, offset: 2240)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !989, file: !129, line: 856, baseType: !31, size: 64, offset: 2304)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !989, file: !129, line: 857, baseType: !31, size: 64, offset: 2368)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !989, file: !129, line: 858, baseType: !31, size: 64, offset: 2432)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !989, file: !129, line: 865, baseType: !862, size: 32, offset: 2496)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !989, file: !129, line: 867, baseType: !51, size: 32, offset: 2528)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !989, file: !129, line: 869, baseType: !31, size: 64, offset: 2560)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !989, file: !129, line: 869, baseType: !31, size: 64, offset: 2624)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !989, file: !129, line: 869, baseType: !31, size: 64, offset: 2688)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !989, file: !129, line: 869, baseType: !31, size: 64, offset: 2752)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !989, file: !129, line: 870, baseType: !31, size: 64, offset: 2816)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !989, file: !129, line: 870, baseType: !31, size: 64, offset: 2880)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !989, file: !129, line: 870, baseType: !31, size: 64, offset: 2944)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !989, file: !129, line: 871, baseType: !31, size: 64, offset: 3008)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !989, file: !129, line: 871, baseType: !31, size: 64, offset: 3072)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !989, file: !129, line: 871, baseType: !31, size: 64, offset: 3136)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !989, file: !129, line: 871, baseType: !31, size: 64, offset: 3200)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !989, file: !129, line: 873, baseType: !4797, size: 3328, offset: 3264)
!4797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3328, elements: !4798)
!4798 = !{!4799}
!4799 = !DISubrange(count: 52)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !989, file: !129, line: 875, baseType: !4801, size: 1280, offset: 6592)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 1280, elements: !446)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !989, file: !129, line: 877, baseType: !4803, size: 64, offset: 7872)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !129, line: 877, flags: DIFlagFwdDecl)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !989, file: !129, line: 880, baseType: !4806, size: 1088, offset: 7936)
!4806 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4807, line: 72, baseType: !4808)
!4807 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4807, line: 23, size: 1088, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813, !4814, !4817, !4818, !4819, !4820, !4845, !4846, !4847}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4808, file: !4807, line: 28, baseType: !314, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4808, file: !4807, line: 38, baseType: !284, size: 64, offset: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4808, file: !4807, line: 40, baseType: !31, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4808, file: !4807, line: 43, baseType: !351, size: 320, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4808, file: !4807, line: 44, baseType: !4815, size: 64, offset: 512)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4807, line: 44, flags: DIFlagFwdDecl)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4808, file: !4807, line: 48, baseType: !31, size: 64, offset: 576)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4808, file: !4807, line: 59, baseType: !1027, size: 256, offset: 640)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4808, file: !4807, line: 60, baseType: !12, size: 64, offset: 896)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4808, file: !4807, line: 61, baseType: !4821, size: 64, offset: 960)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4823)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4824, line: 13, size: 1216, elements: !4825)
!4824 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4823, file: !4824, line: 14, baseType: !12, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4823, file: !4824, line: 15, baseType: !31, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4823, file: !4824, line: 17, baseType: !31, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4823, file: !4824, line: 17, baseType: !31, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4823, file: !4824, line: 18, baseType: !31, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4823, file: !4824, line: 18, baseType: !31, size: 64, offset: 320)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4823, file: !4824, line: 19, baseType: !2051, size: 64, offset: 384)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4823, file: !4824, line: 21, baseType: !670, size: 64, offset: 448)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4823, file: !4824, line: 23, baseType: !670, size: 64, offset: 512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4823, file: !4824, line: 24, baseType: !670, size: 64, offset: 576)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4823, file: !4824, line: 25, baseType: !670, size: 64, offset: 640)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4823, file: !4824, line: 26, baseType: !670, size: 64, offset: 704)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4823, file: !4824, line: 27, baseType: !670, size: 64, offset: 768)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4823, file: !4824, line: 28, baseType: !670, size: 64, offset: 832)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4823, file: !4824, line: 29, baseType: !670, size: 64, offset: 896)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4823, file: !4824, line: 30, baseType: !670, size: 64, offset: 960)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4823, file: !4824, line: 31, baseType: !670, size: 64, offset: 1024)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4823, file: !4824, line: 32, baseType: !670, size: 64, offset: 1088)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4823, file: !4824, line: 33, baseType: !670, size: 64, offset: 1152)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4808, file: !4807, line: 63, baseType: !41, size: 32, offset: 1024)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4808, file: !4807, line: 69, baseType: !85, size: 16, offset: 1056)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4808, file: !4807, line: 70, baseType: !2371, size: 16, offset: 1072)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !129, line: 882, baseType: !31, size: 64, offset: 9024)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !989, file: !129, line: 885, baseType: !51, size: 32, offset: 9088)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !989, file: !129, line: 886, baseType: !4851, size: 64, offset: 9152)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !129, line: 732, flags: DIFlagFwdDecl)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !989, file: !129, line: 901, baseType: !517, size: 64, offset: 9216)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !989, file: !129, line: 904, baseType: !1013, size: 64, offset: 9280)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !989, file: !129, line: 906, baseType: !4856, size: 64, offset: 9344)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !129, line: 906, flags: DIFlagFwdDecl)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !989, file: !129, line: 930, baseType: !41, size: 32, offset: 9408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !989, file: !129, line: 933, baseType: !41, size: 32, offset: 9440)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !989, file: !129, line: 935, baseType: !4861, size: 64, offset: 9472)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !254, line: 103, size: 64, elements: !4862)
!4862 = !{!4863}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4861, file: !254, line: 104, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !254, line: 101, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !989, file: !129, line: 940, baseType: !282, size: 64, offset: 9536)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !989, file: !129, line: 942, baseType: !566, size: 256, offset: 9600)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !986, file: !129, line: 986, baseType: !4869, offset: 10240)
!4869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, elements: !682)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !691, file: !692, line: 882, baseType: !985, size: 64, offset: 9792)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !691, file: !692, line: 884, baseType: !14, size: 32, offset: 9856)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !691, file: !692, line: 885, baseType: !14, size: 32, offset: 9888)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !691, file: !692, line: 886, baseType: !14, size: 32, offset: 9920)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !691, file: !692, line: 888, baseType: !14, size: 32, offset: 9952)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !691, file: !692, line: 890, baseType: !31, size: 64, offset: 9984)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !691, file: !692, line: 893, baseType: !96, size: 32, offset: 10048)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !691, file: !692, line: 896, baseType: !96, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !691, file: !692, line: 897, baseType: !96, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !691, file: !692, line: 898, baseType: !96, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !691, file: !692, line: 899, baseType: !96, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !691, file: !692, line: 919, baseType: !96, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !691, file: !692, line: 922, baseType: !96, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !691, file: !692, line: 923, baseType: !96, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !691, file: !692, line: 925, baseType: !96, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !691, file: !692, line: 939, baseType: !96, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !691, file: !692, line: 941, baseType: !96, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !691, file: !692, line: 944, baseType: !96, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !691, file: !692, line: 956, baseType: !96, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !691, file: !692, line: 962, baseType: !96, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !691, file: !692, line: 966, baseType: !96, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !691, file: !692, line: 969, baseType: !31, size: 64, offset: 10176)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !691, file: !692, line: 971, baseType: !4893, size: 448, offset: 10240)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !248, line: 25, size: 448, elements: !4894)
!4894 = !{!4895, !4896, !4901}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4893, file: !248, line: 26, baseType: !31, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4893, file: !248, line: 27, baseType: !4897, size: 64, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!670, !4900}
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, scope: !4893, file: !248, line: 28, baseType: !4902, size: 320, offset: 128)
!4902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4893, file: !248, line: 28, size: 320, elements: !4903)
!4903 = !{!4904, !4914, !4939}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4902, file: !248, line: 37, baseType: !4905, size: 320)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4902, file: !248, line: 30, size: 320, elements: !4906)
!4906 = !{!4907, !4909, !4910, !4911, !4912, !4913}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4905, file: !248, line: 31, baseType: !4908, size: 64)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4905, file: !248, line: 32, baseType: !381, size: 32, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4905, file: !248, line: 33, baseType: !381, size: 32, offset: 96)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4905, file: !248, line: 34, baseType: !381, size: 32, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4905, file: !248, line: 35, baseType: !314, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4905, file: !248, line: 36, baseType: !4908, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4902, file: !248, line: 47, baseType: !4915, size: 192)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4902, file: !248, line: 39, size: 192, elements: !4916)
!4916 = !{!4917, !4918, !4919, !4938}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4915, file: !248, line: 40, baseType: !854, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4915, file: !248, line: 41, baseType: !247, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4915, file: !248, line: 42, baseType: !4920, size: 64, offset: 64)
!4920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4915, file: !248, line: 42, size: 64, elements: !4921)
!4921 = !{!4922, !4930}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4920, file: !248, line: 43, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4925, line: 7, size: 128, elements: !4926)
!4925 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4926 = !{!4927, !4929}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4924, file: !4925, line: 8, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !29, line: 93, baseType: !35)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4924, file: !4925, line: 9, baseType: !35, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4920, file: !248, line: 44, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4933, line: 7, size: 64, elements: !4934)
!4933 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4934 = !{!4935, !4937}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4932, file: !4933, line: 8, baseType: !4936, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4933, line: 5, baseType: !336)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4932, file: !4933, line: 9, baseType: !336, size: 32, offset: 32)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4915, file: !248, line: 46, baseType: !314, size: 64, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4902, file: !248, line: 55, baseType: !4940, size: 256)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4902, file: !248, line: 49, size: 256, elements: !4941)
!4941 = !{!4942, !4950, !4951, !4952, !4953}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4940, file: !248, line: 50, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4945, line: 36, size: 64, elements: !4946)
!4945 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4946 = !{!4947, !4948, !4949}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4944, file: !4945, line: 37, baseType: !14, size: 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4944, file: !4945, line: 38, baseType: !386, size: 16, offset: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4944, file: !4945, line: 39, baseType: !386, size: 16, offset: 48)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4940, file: !248, line: 51, baseType: !14, size: 32, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4940, file: !248, line: 52, baseType: !14, size: 32, offset: 96)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4940, file: !248, line: 53, baseType: !31, size: 64, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4940, file: !248, line: 54, baseType: !31, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !691, file: !692, line: 973, baseType: !4955, size: 32, offset: 10688)
!4955 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !17, line: 27, baseType: !4956)
!4956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !29, line: 28, baseType: !14)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !691, file: !692, line: 974, baseType: !4955, size: 32, offset: 10720)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !691, file: !692, line: 978, baseType: !31, size: 64, offset: 10752)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !691, file: !692, line: 987, baseType: !690, size: 64, offset: 10816)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !691, file: !692, line: 990, baseType: !690, size: 64, offset: 10880)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !691, file: !692, line: 995, baseType: !89, size: 128, offset: 10944)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !691, file: !692, line: 996, baseType: !89, size: 128, offset: 11072)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !691, file: !692, line: 997, baseType: !690, size: 64, offset: 11200)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !691, file: !692, line: 1005, baseType: !89, size: 128, offset: 11264)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !691, file: !692, line: 1006, baseType: !89, size: 128, offset: 11392)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !691, file: !692, line: 1009, baseType: !1063, size: 64, offset: 11520)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !691, file: !692, line: 1010, baseType: !4968, size: 512, offset: 11584)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 512, elements: !446)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !691, file: !692, line: 1011, baseType: !89, size: 128, offset: 12096)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !691, file: !692, line: 1012, baseType: !89, size: 128, offset: 12224)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !691, file: !692, line: 1014, baseType: !604, size: 64, offset: 12352)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !691, file: !692, line: 1017, baseType: !2364, size: 64, offset: 12416)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !691, file: !692, line: 1020, baseType: !2364, size: 64, offset: 12480)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !691, file: !692, line: 1023, baseType: !12, size: 64, offset: 12544)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !691, file: !692, line: 1025, baseType: !314, size: 64, offset: 12608)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !691, file: !692, line: 1026, baseType: !314, size: 64, offset: 12672)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !691, file: !692, line: 1031, baseType: !314, size: 64, offset: 12736)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !691, file: !692, line: 1032, baseType: !3819, size: 192, offset: 12800)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !691, file: !692, line: 1041, baseType: !31, size: 64, offset: 12992)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !691, file: !692, line: 1042, baseType: !31, size: 64, offset: 13056)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !691, file: !692, line: 1045, baseType: !314, size: 64, offset: 13120)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !691, file: !692, line: 1048, baseType: !314, size: 64, offset: 13184)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !691, file: !692, line: 1051, baseType: !31, size: 64, offset: 13248)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !691, file: !692, line: 1052, baseType: !31, size: 64, offset: 13312)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !691, file: !692, line: 1055, baseType: !4986, size: 640, offset: 13376)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4987, line: 132, size: 640, elements: !4988)
!4987 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4988 = !{!4989, !4995, !4996}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4986, file: !4987, line: 133, baseType: !4990, size: 576)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4991, size: 576, elements: !1059)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4987, line: 117, size: 192, elements: !4992)
!4992 = !{!4993, !4994}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4991, file: !4987, line: 118, baseType: !314, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4991, file: !4987, line: 119, baseType: !868, size: 128, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4986, file: !4987, line: 134, baseType: !96, size: 32, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4986, file: !4987, line: 135, baseType: !96, size: 32, offset: 608)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !691, file: !692, line: 1058, baseType: !4998, size: 448, offset: 14016)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4987, line: 144, size: 448, elements: !4999)
!4999 = !{!5000, !5001, !5002}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4998, file: !4987, line: 145, baseType: !415, size: 128, align: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4998, file: !4987, line: 146, baseType: !1027, size: 256, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4998, file: !4987, line: 147, baseType: !96, size: 32, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !691, file: !692, line: 1064, baseType: !276, size: 64, offset: 14464)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !691, file: !692, line: 1067, baseType: !276, size: 64, offset: 14528)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !691, file: !692, line: 1070, baseType: !276, size: 64, offset: 14592)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !691, file: !692, line: 1074, baseType: !323, size: 64, offset: 14656)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !691, file: !692, line: 1084, baseType: !5008, size: 128, offset: 14720)
!5008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !4407)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !691, file: !692, line: 1086, baseType: !5010, size: 64, offset: 14848)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !692, line: 55, flags: DIFlagFwdDecl)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !691, file: !692, line: 1089, baseType: !5013, size: 64, offset: 14912)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5014, line: 12, size: 64, elements: !5015)
!5014 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5015 = !{!5016}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5013, file: !5014, line: 13, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5014, line: 8, flags: DIFlagFwdDecl)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !691, file: !692, line: 1090, baseType: !5020, size: 128, offset: 14976)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5021, line: 13, size: 128, elements: !5022)
!5021 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5022 = !{!5023}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5020, file: !5021, line: 14, baseType: !89, size: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !691, file: !692, line: 1097, baseType: !5025, size: 64, offset: 15104)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !692, line: 50, flags: DIFlagFwdDecl)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !691, file: !692, line: 1100, baseType: !5028, size: 64, offset: 15168)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !692, line: 1100, flags: DIFlagFwdDecl)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !691, file: !692, line: 1103, baseType: !5031, size: 64, offset: 15232)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !692, line: 53, flags: DIFlagFwdDecl)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !691, file: !692, line: 1107, baseType: !5034, size: 64, offset: 15296)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5036, line: 31, size: 576, elements: !5037)
!5036 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5037 = !{!5038, !5039, !5042, !5045, !5048, !5049, !5052, !5055, !5056}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5035, file: !5036, line: 32, baseType: !328, size: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5035, file: !5036, line: 33, baseType: !5040, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5036, line: 9, flags: DIFlagFwdDecl)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5035, file: !5036, line: 34, baseType: !5043, size: 64, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5036, line: 10, flags: DIFlagFwdDecl)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5035, file: !5036, line: 35, baseType: !5046, size: 64, offset: 192)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5036, line: 8, flags: DIFlagFwdDecl)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5035, file: !5036, line: 36, baseType: !1080, size: 64, offset: 256)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5035, file: !5036, line: 37, baseType: !5050, size: 64, offset: 320)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !325, line: 34, flags: DIFlagFwdDecl)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5035, file: !5036, line: 38, baseType: !5053, size: 64, offset: 384)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5036, line: 38, flags: DIFlagFwdDecl)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5035, file: !5036, line: 39, baseType: !5053, size: 64, offset: 448)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5035, file: !5036, line: 40, baseType: !5057, size: 64, offset: 512)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5059, line: 771, size: 384, elements: !5060)
!5059 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5060 = !{!5061, !5062, !5063, !5064}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5058, file: !5059, line: 772, baseType: !550, size: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5058, file: !5059, line: 773, baseType: !517, size: 64, offset: 192)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5058, file: !5059, line: 774, baseType: !655, size: 64, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5058, file: !5059, line: 775, baseType: !3889, size: 64, offset: 320)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !691, file: !692, line: 1110, baseType: !5066, size: 64, offset: 15360)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5068, line: 93, size: 8768, elements: !5069)
!5068 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5069 = !{!5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5118, !5127, !5128, !5130, !5131, !5132, !5135, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5173, !5174, !5181, !5191, !5253, !5254, !5257, !5258, !5259, !5260, !5261, !5262}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5067, file: !5068, line: 94, baseType: !328, size: 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5067, file: !5068, line: 95, baseType: !41, size: 32, offset: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5067, file: !5068, line: 96, baseType: !14, size: 32, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5067, file: !5068, line: 97, baseType: !14, size: 32, offset: 96)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5067, file: !5068, line: 98, baseType: !89, size: 128, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5067, file: !5068, line: 100, baseType: !46, size: 192, offset: 256)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5067, file: !5068, line: 103, baseType: !690, size: 64, offset: 448)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5067, file: !5068, line: 106, baseType: !5078, size: 192, offset: 512)
!5078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5079, line: 32, size: 192, elements: !5080)
!5079 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5080 = !{!5081, !5082}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5078, file: !5079, line: 33, baseType: !89, size: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5078, file: !5079, line: 34, baseType: !5083, size: 64, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5084, line: 25, baseType: !5085)
!5084 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5084, line: 23, size: 64, elements: !5086)
!5086 = !{!5087}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5085, file: !5084, line: 24, baseType: !936, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5067, file: !5068, line: 109, baseType: !646, size: 64, offset: 704)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5067, file: !5068, line: 112, baseType: !14, size: 32, offset: 768)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5067, file: !5068, line: 114, baseType: !14, size: 32, offset: 800)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5067, file: !5068, line: 115, baseType: !690, size: 64, offset: 832)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5067, file: !5068, line: 118, baseType: !14, size: 32, offset: 896)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5067, file: !5068, line: 119, baseType: !96, size: 32, offset: 928)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5067, file: !5068, line: 121, baseType: !5095, size: 64, offset: 960)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5068, line: 80, size: 448, elements: !5097)
!5097 = !{!5098, !5099, !5105}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5096, file: !5068, line: 81, baseType: !41, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5096, file: !5068, line: 82, baseType: !5100, size: 128, offset: 64)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5068, line: 75, size: 128, elements: !5101)
!5101 = !{!5102, !5103}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5100, file: !5068, line: 76, baseType: !690, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5100, file: !5068, line: 77, baseType: !5104, size: 64, offset: 64)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5096, file: !5068, line: 83, baseType: !605, size: 256, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5067, file: !5068, line: 132, baseType: !96, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5067, file: !5068, line: 133, baseType: !96, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5067, file: !5068, line: 138, baseType: !96, size: 32, offset: 1056)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5067, file: !5068, line: 139, baseType: !89, size: 128, offset: 1088)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5067, file: !5068, line: 142, baseType: !807, size: 512, offset: 1216)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5067, file: !5068, line: 143, baseType: !815, size: 64, offset: 1728)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5067, file: !5068, line: 150, baseType: !5113, size: 256, offset: 1792)
!5113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5114, size: 256, elements: !2354)
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5068, line: 38, size: 128, elements: !5115)
!5115 = !{!5116, !5117}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5114, file: !5068, line: 39, baseType: !314, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5114, file: !5068, line: 40, baseType: !314, size: 64, offset: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5067, file: !5068, line: 156, baseType: !5119, size: 192, offset: 2048)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5068, line: 66, size: 192, elements: !5120)
!5120 = !{!5121}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5119, file: !5068, line: 67, baseType: !5122, size: 192)
!5122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5068, line: 47, size: 192, elements: !5123)
!5123 = !{!5124, !5125, !5126}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5122, file: !5068, line: 48, baseType: !284, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5122, file: !5068, line: 49, baseType: !284, size: 64, offset: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5122, file: !5068, line: 50, baseType: !284, size: 64, offset: 128)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5067, file: !5068, line: 160, baseType: !4986, size: 640, offset: 2240)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5067, file: !5068, line: 163, baseType: !5129, size: 256, offset: 2880)
!5129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 256, elements: !446)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5067, file: !5068, line: 169, baseType: !1063, size: 64, offset: 3136)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5067, file: !5068, line: 172, baseType: !14, size: 32, offset: 3200)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5067, file: !5068, line: 174, baseType: !5133, size: 64, offset: 3264)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5068, line: 174, flags: DIFlagFwdDecl)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5067, file: !5068, line: 185, baseType: !5136, size: 64, offset: 3328)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !858, line: 860, baseType: !5137)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 853, size: 64, elements: !5138)
!5138 = !{!5139, !5140}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5137, file: !858, line: 858, baseType: !1145, size: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5137, file: !858, line: 859, baseType: !51, size: 32, offset: 32)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5067, file: !5068, line: 186, baseType: !314, size: 64, offset: 3392)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5067, file: !5068, line: 186, baseType: !314, size: 64, offset: 3456)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5067, file: !5068, line: 186, baseType: !314, size: 64, offset: 3520)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5067, file: !5068, line: 186, baseType: !314, size: 64, offset: 3584)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5067, file: !5068, line: 187, baseType: !314, size: 64, offset: 3648)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5067, file: !5068, line: 188, baseType: !314, size: 64, offset: 3712)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5067, file: !5068, line: 189, baseType: !3819, size: 192, offset: 3776)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5067, file: !5068, line: 190, baseType: !31, size: 64, offset: 3968)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5067, file: !5068, line: 190, baseType: !31, size: 64, offset: 4032)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5067, file: !5068, line: 190, baseType: !31, size: 64, offset: 4096)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5067, file: !5068, line: 190, baseType: !31, size: 64, offset: 4160)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5067, file: !5068, line: 191, baseType: !31, size: 64, offset: 4224)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5067, file: !5068, line: 191, baseType: !31, size: 64, offset: 4288)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5067, file: !5068, line: 191, baseType: !31, size: 64, offset: 4352)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5067, file: !5068, line: 191, baseType: !31, size: 64, offset: 4416)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5067, file: !5068, line: 192, baseType: !31, size: 64, offset: 4480)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5067, file: !5068, line: 192, baseType: !31, size: 64, offset: 4544)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5067, file: !5068, line: 192, baseType: !31, size: 64, offset: 4608)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5067, file: !5068, line: 192, baseType: !31, size: 64, offset: 4672)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5067, file: !5068, line: 193, baseType: !31, size: 64, offset: 4736)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5067, file: !5068, line: 193, baseType: !31, size: 64, offset: 4800)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5067, file: !5068, line: 194, baseType: !5163, size: 448, offset: 4864)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5164, line: 12, size: 448, elements: !5165)
!5164 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5165 = !{!5166, !5167, !5168, !5169, !5170, !5171, !5172}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5163, file: !5164, line: 15, baseType: !314, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5163, file: !5164, line: 17, baseType: !314, size: 64, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5163, file: !5164, line: 19, baseType: !314, size: 64, offset: 128)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5163, file: !5164, line: 21, baseType: !314, size: 64, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5163, file: !5164, line: 29, baseType: !314, size: 64, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5163, file: !5164, line: 35, baseType: !314, size: 64, offset: 320)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5163, file: !5164, line: 44, baseType: !314, size: 64, offset: 384)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5067, file: !5068, line: 202, baseType: !316, size: 64, offset: 5312)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5067, file: !5068, line: 213, baseType: !5175, size: 2048, offset: 5376)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5176, size: 2048, elements: !4407)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5177, line: 43, size: 128, elements: !5178)
!5177 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5178 = !{!5179, !5180}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5176, file: !5177, line: 44, baseType: !30, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5176, file: !5177, line: 45, baseType: !30, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5067, file: !5068, line: 216, baseType: !5182, size: 448, offset: 7424)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5068, line: 30, size: 448, elements: !5183)
!5183 = !{!5184, !5185, !5186, !5187, !5188, !5189, !5190}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5182, file: !5068, line: 31, baseType: !14, size: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5182, file: !5068, line: 32, baseType: !670, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5182, file: !5068, line: 33, baseType: !31, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5182, file: !5068, line: 34, baseType: !314, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5182, file: !5068, line: 34, baseType: !314, size: 64, offset: 256)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5182, file: !5068, line: 35, baseType: !31, size: 64, offset: 320)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5182, file: !5068, line: 35, baseType: !31, size: 64, offset: 384)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5067, file: !5068, line: 219, baseType: !5192, size: 64, offset: 7872)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5194, line: 41, size: 3456, elements: !5195)
!5194 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5195 = !{!5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5193, file: !5194, line: 47, baseType: !86, size: 16)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5193, file: !5194, line: 48, baseType: !382, size: 32, offset: 32)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5193, file: !5194, line: 54, baseType: !77, size: 8, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5193, file: !5194, line: 55, baseType: !77, size: 8, offset: 72)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5193, file: !5194, line: 73, baseType: !315, size: 64, align: 64, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5193, file: !5194, line: 74, baseType: !315, size: 64, offset: 192)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5193, file: !5194, line: 81, baseType: !315, size: 64, offset: 256)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5193, file: !5194, line: 82, baseType: !315, size: 64, offset: 320)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5193, file: !5194, line: 85, baseType: !315, size: 64, offset: 384)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5193, file: !5194, line: 86, baseType: !315, size: 64, offset: 448)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5193, file: !5194, line: 94, baseType: !315, size: 64, offset: 512)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5193, file: !5194, line: 102, baseType: !315, size: 64, offset: 576)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5193, file: !5194, line: 107, baseType: !4397, size: 256, offset: 640)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5193, file: !5194, line: 108, baseType: !77, size: 8, align: 64, offset: 896)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5193, file: !5194, line: 110, baseType: !5211, size: 24, offset: 904)
!5211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !1059)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5193, file: !5194, line: 111, baseType: !382, size: 32, align: 64, offset: 960)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5193, file: !5194, line: 113, baseType: !382, size: 32, offset: 992)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5193, file: !5194, line: 114, baseType: !382, size: 32, offset: 1024)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5193, file: !5194, line: 115, baseType: !382, size: 32, offset: 1056)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5193, file: !5194, line: 117, baseType: !382, size: 32, offset: 1088)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5193, file: !5194, line: 118, baseType: !315, size: 64, align: 64, offset: 1152)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5193, file: !5194, line: 120, baseType: !315, size: 64, offset: 1216)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5193, file: !5194, line: 121, baseType: !315, size: 64, offset: 1280)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5193, file: !5194, line: 122, baseType: !315, size: 64, offset: 1344)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5193, file: !5194, line: 123, baseType: !315, size: 64, offset: 1408)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5193, file: !5194, line: 133, baseType: !315, size: 64, offset: 1472)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5193, file: !5194, line: 137, baseType: !315, size: 64, offset: 1536)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5193, file: !5194, line: 142, baseType: !315, size: 64, offset: 1600)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5193, file: !5194, line: 143, baseType: !315, size: 64, offset: 1664)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5193, file: !5194, line: 146, baseType: !315, size: 64, offset: 1728)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5193, file: !5194, line: 147, baseType: !315, size: 64, offset: 1792)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5193, file: !5194, line: 148, baseType: !315, size: 64, offset: 1856)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5193, file: !5194, line: 149, baseType: !315, size: 64, offset: 1920)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5193, file: !5194, line: 154, baseType: !315, size: 64, offset: 1984)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5193, file: !5194, line: 155, baseType: !315, size: 64, offset: 2048)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5193, file: !5194, line: 156, baseType: !315, size: 64, offset: 2112)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5193, file: !5194, line: 158, baseType: !315, size: 64, offset: 2176)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5193, file: !5194, line: 159, baseType: !315, size: 64, offset: 2240)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5193, file: !5194, line: 162, baseType: !315, size: 64, offset: 2304)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5193, file: !5194, line: 163, baseType: !315, size: 64, offset: 2368)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5193, file: !5194, line: 164, baseType: !315, size: 64, offset: 2432)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5193, file: !5194, line: 167, baseType: !315, size: 64, offset: 2496)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5193, file: !5194, line: 168, baseType: !315, size: 64, offset: 2560)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5193, file: !5194, line: 171, baseType: !315, size: 64, offset: 2624)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5193, file: !5194, line: 172, baseType: !315, size: 64, offset: 2688)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5193, file: !5194, line: 175, baseType: !315, size: 64, offset: 2752)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5193, file: !5194, line: 178, baseType: !315, size: 64, offset: 2816)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5193, file: !5194, line: 179, baseType: !315, size: 64, offset: 2880)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5193, file: !5194, line: 182, baseType: !382, size: 32, offset: 2944)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5193, file: !5194, line: 186, baseType: !315, size: 64, align: 64, offset: 3008)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5193, file: !5194, line: 194, baseType: !315, size: 64, offset: 3072)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5193, file: !5194, line: 195, baseType: !315, size: 64, offset: 3136)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5193, file: !5194, line: 199, baseType: !315, size: 64, offset: 3200)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5193, file: !5194, line: 200, baseType: !315, size: 64, offset: 3264)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5193, file: !5194, line: 203, baseType: !315, size: 64, offset: 3328)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5193, file: !5194, line: 204, baseType: !315, size: 64, offset: 3392)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5067, file: !5068, line: 222, baseType: !96, size: 32, offset: 7936)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5067, file: !5068, line: 223, baseType: !5255, size: 64, offset: 8000)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5068, line: 223, flags: DIFlagFwdDecl)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5067, file: !5068, line: 230, baseType: !425, size: 8, offset: 8064)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5067, file: !5068, line: 231, baseType: !386, size: 16, offset: 8080)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5067, file: !5068, line: 232, baseType: !386, size: 16, offset: 8096)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5067, file: !5068, line: 234, baseType: !985, size: 64, offset: 8128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5067, file: !5068, line: 237, baseType: !1027, size: 256, offset: 8192)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5067, file: !5068, line: 243, baseType: !351, size: 320, offset: 8448)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !691, file: !692, line: 1111, baseType: !5264, size: 64, offset: 15424)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5068, line: 20, size: 16640, elements: !5266)
!5266 = !{!5267, !5268, !5269, !5270}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5265, file: !5068, line: 21, baseType: !51, size: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5265, file: !5068, line: 22, baseType: !328, size: 32, offset: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5265, file: !5068, line: 23, baseType: !46, size: 192, offset: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5265, file: !5068, line: 24, baseType: !5271, size: 16384, offset: 256)
!5271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5272, size: 16384, elements: !1464)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5079, line: 51, size: 256, elements: !5273)
!5273 = !{!5274}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5272, file: !5079, line: 52, baseType: !5275, size: 256)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5079, line: 37, size: 256, elements: !5276)
!5276 = !{!5277, !5284, !5285, !5289}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5275, file: !5079, line: 39, baseType: !5278, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5279, line: 83, baseType: !5280)
!5279 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5279, line: 82, baseType: !5282)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{null, !14}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5275, file: !5079, line: 40, baseType: !31, size: 64, offset: 64)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5275, file: !5079, line: 46, baseType: !5286, size: 64, offset: 128)
!5286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5279, line: 86, baseType: !5287)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5279, line: 85, baseType: !2640)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5275, file: !5079, line: 48, baseType: !5083, size: 64, offset: 192)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !691, file: !692, line: 1112, baseType: !5083, size: 64, offset: 15488)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !691, file: !692, line: 1113, baseType: !5083, size: 64, offset: 15552)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !691, file: !692, line: 1115, baseType: !5083, size: 64, offset: 15616)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !691, file: !692, line: 1116, baseType: !5078, size: 192, offset: 15680)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !691, file: !692, line: 1117, baseType: !31, size: 64, offset: 15872)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !691, file: !692, line: 1118, baseType: !27, size: 64, offset: 15936)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !691, file: !692, line: 1119, baseType: !96, size: 32, offset: 16000)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !691, file: !692, line: 1121, baseType: !418, size: 64, offset: 16064)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !691, file: !692, line: 1125, baseType: !5299, size: 64, offset: 16128)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !692, line: 43, flags: DIFlagFwdDecl)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !691, file: !692, line: 1127, baseType: !291, size: 32, offset: 16192)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !691, file: !692, line: 1128, baseType: !96, size: 32, offset: 16224)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !691, file: !692, line: 1130, baseType: !5304, size: 128, offset: 16256)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5305, line: 37, size: 128, elements: !5306)
!5305 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5306 = !{!5307, !5308, !5309}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5304, file: !5305, line: 38, baseType: !14, size: 32)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5304, file: !5305, line: 39, baseType: !41, size: 32, offset: 32)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5304, file: !5305, line: 40, baseType: !5310, size: 64, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5305, line: 24, flags: DIFlagFwdDecl)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !691, file: !692, line: 1131, baseType: !5313, size: 256, offset: 16384)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5314, line: 12, size: 256, elements: !5315)
!5314 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5315 = !{!5316, !5317, !5318, !5319}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5313, file: !5314, line: 13, baseType: !436, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5313, file: !5314, line: 14, baseType: !31, size: 64, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5313, file: !5314, line: 15, baseType: !31, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5313, file: !5314, line: 16, baseType: !425, size: 8, offset: 192)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !691, file: !692, line: 1134, baseType: !314, size: 64, offset: 16640)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !691, file: !692, line: 1135, baseType: !314, size: 64, offset: 16704)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !691, file: !692, line: 1138, baseType: !51, size: 32, offset: 16768)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !691, file: !692, line: 1141, baseType: !362, size: 32, offset: 16800)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !691, file: !692, line: 1143, baseType: !5325, size: 64, offset: 16832)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !692, line: 735, size: 64, elements: !5326)
!5326 = !{!5327}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5325, file: !692, line: 736, baseType: !5328, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !691, file: !692, line: 1147, baseType: !871, size: 128, offset: 16896)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !691, file: !692, line: 1149, baseType: !690, size: 64, offset: 17024)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !691, file: !692, line: 1151, baseType: !5332, size: 64, offset: 17088)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !692, line: 1151, flags: DIFlagFwdDecl)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !691, file: !692, line: 1188, baseType: !12, size: 64, offset: 17152)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !691, file: !692, line: 1191, baseType: !5336, size: 64, offset: 17216)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !692, line: 44, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !691, file: !692, line: 1194, baseType: !5339, size: 64, offset: 17280)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !692, line: 45, flags: DIFlagFwdDecl)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !691, file: !692, line: 1197, baseType: !5342, size: 64, offset: 17344)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !692, line: 61, flags: DIFlagFwdDecl)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !691, file: !692, line: 1199, baseType: !5345, size: 64, offset: 17408)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5347, line: 99, size: 128, elements: !5348)
!5347 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5348 = !{!5349, !5350, !5351}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5346, file: !5347, line: 100, baseType: !282, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5346, file: !5347, line: 101, baseType: !41, size: 32, offset: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5346, file: !5347, line: 103, baseType: !18, size: 16, offset: 96)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !691, file: !692, line: 1202, baseType: !5353, size: 64, offset: 17472)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !692, line: 48, flags: DIFlagFwdDecl)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !691, file: !692, line: 1205, baseType: !31, size: 64, offset: 17536)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !691, file: !692, line: 1206, baseType: !5357, size: 64, offset: 17600)
!5357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5079, line: 14, baseType: !5359)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5079, line: 12, size: 384, elements: !5360)
!5360 = !{!5361}
!5361 = !DIDerivedType(tag: DW_TAG_member, scope: !5359, file: !5079, line: 13, baseType: !5362, size: 384)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5359, file: !5079, line: 13, size: 384, elements: !5363)
!5363 = !{!5364, !5365, !5366, !5367}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5362, file: !5079, line: 13, baseType: !14, size: 32)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5362, file: !5079, line: 13, baseType: !14, size: 32, offset: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5362, file: !5079, line: 13, baseType: !14, size: 32, offset: 64)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5362, file: !5079, line: 13, baseType: !5368, size: 256, offset: 128)
!5368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5369, line: 37, size: 256, elements: !5370)
!5369 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5370 = !{!5371, !5376, !5389, !5395, !5404, !5431, !5436}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5368, file: !5369, line: 42, baseType: !5372, size: 64)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 39, size: 64, elements: !5373)
!5373 = !{!5374, !5375}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5372, file: !5369, line: 40, baseType: !4956, size: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5372, file: !5369, line: 41, baseType: !272, size: 32, offset: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5368, file: !5369, line: 50, baseType: !5377, size: 192)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 45, size: 192, elements: !5378)
!5378 = !{!5379, !5381, !5382, !5388}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5377, file: !5369, line: 46, baseType: !5380, size: 32)
!5380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !29, line: 95, baseType: !14)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5377, file: !5369, line: 47, baseType: !14, size: 32, offset: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5377, file: !5369, line: 48, baseType: !5383, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5369, line: 11, baseType: !5384)
!5384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5369, line: 8, size: 64, elements: !5385)
!5385 = !{!5386, !5387}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5384, file: !5369, line: 9, baseType: !14, size: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5384, file: !5369, line: 10, baseType: !12, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5377, file: !5369, line: 49, baseType: !14, size: 32, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5368, file: !5369, line: 57, baseType: !5390, size: 128)
!5390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 53, size: 128, elements: !5391)
!5391 = !{!5392, !5393, !5394}
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5390, file: !5369, line: 54, baseType: !4956, size: 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5390, file: !5369, line: 55, baseType: !272, size: 32, offset: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5390, file: !5369, line: 56, baseType: !5383, size: 64, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5368, file: !5369, line: 66, baseType: !5396, size: 256)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 60, size: 256, elements: !5397)
!5397 = !{!5398, !5399, !5400, !5401, !5403}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5396, file: !5369, line: 61, baseType: !4956, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5396, file: !5369, line: 62, baseType: !272, size: 32, offset: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5396, file: !5369, line: 63, baseType: !14, size: 32, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5396, file: !5369, line: 64, baseType: !5402, size: 64, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !29, line: 94, baseType: !1328)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5396, file: !5369, line: 65, baseType: !5402, size: 64, offset: 192)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5368, file: !5369, line: 105, baseType: !5405, size: 256)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 69, size: 256, elements: !5406)
!5406 = !{!5407, !5408}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5405, file: !5369, line: 70, baseType: !12, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, scope: !5405, file: !5369, line: 79, baseType: !5409, size: 192, offset: 64)
!5409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5405, file: !5369, line: 79, size: 192, elements: !5410)
!5410 = !{!5411, !5412, !5413, !5420, !5425}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5409, file: !5369, line: 81, baseType: !14, size: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5409, file: !5369, line: 86, baseType: !386, size: 16)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5409, file: !5369, line: 92, baseType: !5414, size: 192)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5409, file: !5369, line: 88, size: 192, elements: !5415)
!5415 = !{!5416, !5418, !5419}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5414, file: !5369, line: 89, baseType: !5417, size: 64)
!5417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !850)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5414, file: !5369, line: 90, baseType: !12, size: 64, offset: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5414, file: !5369, line: 91, baseType: !12, size: 64, offset: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5409, file: !5369, line: 97, baseType: !5421, size: 96)
!5421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5409, file: !5369, line: 94, size: 96, elements: !5422)
!5422 = !{!5423, !5424}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5421, file: !5369, line: 95, baseType: !5417, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5421, file: !5369, line: 96, baseType: !382, size: 32, offset: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5409, file: !5369, line: 103, baseType: !5426, size: 128)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5409, file: !5369, line: 99, size: 128, elements: !5427)
!5427 = !{!5428, !5429, !5430}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5426, file: !5369, line: 100, baseType: !31, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5426, file: !5369, line: 101, baseType: !382, size: 32, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5426, file: !5369, line: 102, baseType: !382, size: 32, offset: 96)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5368, file: !5369, line: 111, baseType: !5432, size: 128)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 108, size: 128, elements: !5433)
!5433 = !{!5434, !5435}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5432, file: !5369, line: 109, baseType: !670, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5432, file: !5369, line: 110, baseType: !14, size: 32, offset: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5368, file: !5369, line: 118, baseType: !5437, size: 128)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5368, file: !5369, line: 114, size: 128, elements: !5438)
!5438 = !{!5439, !5440, !5441}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5437, file: !5369, line: 115, baseType: !12, size: 64)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5437, file: !5369, line: 116, baseType: !14, size: 32, offset: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5437, file: !5369, line: 117, baseType: !96, size: 32, offset: 96)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !691, file: !692, line: 1208, baseType: !5163, size: 448, offset: 17664)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !691, file: !692, line: 1215, baseType: !314, size: 64, offset: 18112)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !691, file: !692, line: 1217, baseType: !314, size: 64, offset: 18176)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !691, file: !692, line: 1219, baseType: !314, size: 64, offset: 18240)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !691, file: !692, line: 1223, baseType: !5447, size: 64, offset: 18304)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5448, line: 99, baseType: !5449)
!5448 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5448, line: 99, size: 64, elements: !5450)
!5450 = !{!5451}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5449, file: !5448, line: 99, baseType: !936, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !691, file: !692, line: 1225, baseType: !1145, size: 32, offset: 18368)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !691, file: !692, line: 1226, baseType: !14, size: 32, offset: 18400)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !691, file: !692, line: 1227, baseType: !14, size: 32, offset: 18432)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !691, file: !692, line: 1231, baseType: !3889, size: 64, offset: 18496)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !691, file: !692, line: 1233, baseType: !89, size: 128, offset: 18560)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !691, file: !692, line: 1240, baseType: !5458, size: 64, offset: 18688)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !692, line: 62, flags: DIFlagFwdDecl)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !691, file: !692, line: 1242, baseType: !5461, size: 64, offset: 18752)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !692, line: 1242, flags: DIFlagFwdDecl)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !691, file: !692, line: 1244, baseType: !89, size: 128, offset: 18816)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !691, file: !692, line: 1245, baseType: !5465, size: 64, offset: 18944)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !692, line: 51, flags: DIFlagFwdDecl)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !691, file: !692, line: 1246, baseType: !1027, size: 256, offset: 19008)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !691, file: !692, line: 1247, baseType: !96, size: 32, offset: 19264)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !691, file: !692, line: 1250, baseType: !3139, size: 64, offset: 19328)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !691, file: !692, line: 1251, baseType: !1027, size: 256, offset: 19392)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !691, file: !692, line: 1252, baseType: !89, size: 128, offset: 19648)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !691, file: !692, line: 1259, baseType: !1748, size: 64, offset: 19776)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !691, file: !692, line: 1260, baseType: !386, size: 16, offset: 19840)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !691, file: !692, line: 1261, baseType: !386, size: 16, offset: 19856)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !691, file: !692, line: 1314, baseType: !5476, size: 64, offset: 19904)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5478, line: 62, size: 256, align: 256, elements: !5479)
!5478 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5479 = !{!5480, !5481, !5482, !5483, !5484, !5485, !5486}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5477, file: !5478, line: 75, baseType: !382, size: 32)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5477, file: !5478, line: 90, baseType: !382, size: 32, offset: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5477, file: !5478, line: 112, baseType: !315, size: 64, offset: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5477, file: !5478, line: 132, baseType: !382, size: 32, offset: 128)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5477, file: !5478, line: 140, baseType: !382, size: 32, offset: 160)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5477, file: !5478, line: 149, baseType: !382, size: 32, offset: 192)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5477, file: !5478, line: 154, baseType: !5487, offset: 224)
!5487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !682)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !691, file: !692, line: 1315, baseType: !381, size: 32, offset: 19968)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !691, file: !692, line: 1316, baseType: !381, size: 32, offset: 20000)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !691, file: !692, line: 1321, baseType: !31, size: 64, offset: 20032)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !691, file: !692, line: 1325, baseType: !14, size: 32, offset: 20096)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !691, file: !692, line: 1326, baseType: !14, size: 32, offset: 20128)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !691, file: !692, line: 1327, baseType: !14, size: 32, offset: 20160)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !691, file: !692, line: 1328, baseType: !14, size: 32, offset: 20192)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !691, file: !692, line: 1329, baseType: !415, size: 128, align: 64, offset: 20224)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !691, file: !692, line: 1332, baseType: !5497, size: 128, offset: 20352)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5498, line: 51, size: 128, elements: !5499)
!5498 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5499 = !{!5500, !5505, !5506}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5497, file: !5498, line: 60, baseType: !5501, size: 64)
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5502, line: 7, size: 64, elements: !5503)
!5502 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5503 = !{!5504}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5501, file: !5502, line: 12, baseType: !933, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5497, file: !5498, line: 63, baseType: !425, size: 8, offset: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5497, file: !5498, line: 70, baseType: !425, size: 8, offset: 72)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !691, file: !692, line: 1335, baseType: !4644, size: 64, offset: 20480)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !691, file: !692, line: 1337, baseType: !5509, size: 128, offset: 20544)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5498, line: 39, size: 128, elements: !5510)
!5510 = !{!5511, !5512, !5513}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5509, file: !5498, line: 40, baseType: !1545, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5509, file: !5498, line: 42, baseType: !382, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5509, file: !5498, line: 43, baseType: !382, size: 32, offset: 96)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !691, file: !692, line: 1340, baseType: !5515, size: 64, offset: 20672)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !692, line: 69, flags: DIFlagFwdDecl)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !691, file: !692, line: 1351, baseType: !14, size: 32, offset: 20736)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !691, file: !692, line: 1352, baseType: !14, size: 32, offset: 20768)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !691, file: !692, line: 1354, baseType: !31, size: 64, offset: 20800)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !691, file: !692, line: 1364, baseType: !314, size: 64, offset: 20864)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !691, file: !692, line: 1365, baseType: !314, size: 64, offset: 20928)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !691, file: !692, line: 1412, baseType: !31, size: 64, offset: 20992)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !691, file: !692, line: 1453, baseType: !5524, size: 64, offset: 21056)
!5524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5525, size: 64)
!5525 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !692, line: 1453, flags: DIFlagFwdDecl)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !691, file: !692, line: 1457, baseType: !5527, size: 64, offset: 21120)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !254, line: 61, size: 576, elements: !5529)
!5529 = !{!5530, !5531, !5550, !5553, !5554, !5587, !5597}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5528, file: !254, line: 62, baseType: !253, size: 32)
!5531 = !DIDerivedType(tag: DW_TAG_member, scope: !5528, file: !254, line: 64, baseType: !5532, size: 192, offset: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5528, file: !254, line: 64, size: 192, elements: !5533)
!5533 = !{!5534, !5545}
!5534 = !DIDerivedType(tag: DW_TAG_member, scope: !5532, file: !254, line: 65, baseType: !5535, size: 192)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5532, file: !254, line: 65, size: 192, elements: !5536)
!5536 = !{!5537, !5544}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5535, file: !254, line: 66, baseType: !5538, size: 128)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5539, line: 50, size: 128, elements: !5540)
!5539 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5540 = !{!5541, !5542, !5543}
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5538, file: !5539, line: 52, baseType: !31, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5538, file: !5539, line: 54, baseType: !96, size: 32, offset: 64)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5538, file: !5539, line: 55, baseType: !96, size: 32, offset: 96)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5535, file: !254, line: 67, baseType: !31, size: 64, offset: 128)
!5545 = !DIDerivedType(tag: DW_TAG_member, scope: !5532, file: !254, line: 70, baseType: !5546, size: 192)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5532, file: !254, line: 70, size: 192, elements: !5547)
!5547 = !{!5548, !5549}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5546, file: !254, line: 71, baseType: !415, size: 128, align: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5546, file: !254, line: 72, baseType: !31, size: 64, offset: 128)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5528, file: !254, line: 76, baseType: !5551, size: 64, offset: 256)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !254, line: 76, flags: DIFlagFwdDecl)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5528, file: !254, line: 77, baseType: !31, size: 64, offset: 320)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5528, file: !254, line: 79, baseType: !5555, size: 64, offset: 384)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5539, line: 25, size: 256, elements: !5557)
!5557 = !{!5558, !5564, !5568}
!5558 = !DIDerivedType(tag: DW_TAG_member, scope: !5556, file: !5539, line: 26, baseType: !5559, size: 128)
!5559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5556, file: !5539, line: 26, size: 128, elements: !5560)
!5560 = !{!5561, !5563}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5559, file: !5539, line: 27, baseType: !5562, size: 128)
!5562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !4407)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5559, file: !5539, line: 28, baseType: !5562, size: 128)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5556, file: !5539, line: 31, baseType: !5565, size: 64, offset: 128)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5567)
!5567 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5539, line: 23, flags: DIFlagFwdDecl)
!5568 = !DIDerivedType(tag: DW_TAG_member, scope: !5556, file: !5539, line: 33, baseType: !5569, size: 64, offset: 192)
!5569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5556, file: !5539, line: 33, size: 64, elements: !5570)
!5570 = !{!5571, !5577, !5582}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5569, file: !5539, line: 38, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5569, file: !5539, line: 34, size: 64, elements: !5573)
!5573 = !{!5574, !5575, !5576}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5572, file: !5539, line: 35, baseType: !336, size: 32)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5572, file: !5539, line: 36, baseType: !75, size: 8, offset: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5572, file: !5539, line: 37, baseType: !75, size: 8, offset: 40)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5569, file: !5539, line: 42, baseType: !5578, size: 16)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5569, file: !5539, line: 39, size: 16, elements: !5579)
!5579 = !{!5580, !5581}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5578, file: !5539, line: 40, baseType: !75, size: 8)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5578, file: !5539, line: 41, baseType: !75, size: 8, offset: 8)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5569, file: !5539, line: 46, baseType: !5583, size: 16)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5569, file: !5539, line: 43, size: 16, elements: !5584)
!5584 = !{!5585, !5586}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5583, file: !5539, line: 44, baseType: !75, size: 8)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5583, file: !5539, line: 45, baseType: !75, size: 8, offset: 8)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5528, file: !254, line: 81, baseType: !5588, size: 64, offset: 448)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !254, line: 85, size: 384, elements: !5590)
!5590 = !{!5591, !5592, !5593, !5594, !5595, !5596}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5589, file: !254, line: 86, baseType: !5551, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5589, file: !254, line: 87, baseType: !31, size: 64, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5589, file: !254, line: 88, baseType: !31, size: 64, offset: 128)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5589, file: !254, line: 89, baseType: !31, size: 64, offset: 192)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5589, file: !254, line: 90, baseType: !425, size: 8, offset: 256)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5589, file: !254, line: 92, baseType: !5588, size: 64, offset: 320)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5528, file: !254, line: 82, baseType: !96, size: 32, offset: 512)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !691, file: !692, line: 1463, baseType: !5599, offset: 21184)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !692, line: 739, elements: !1006)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !692, line: 1470, baseType: !415, size: 128, align: 64, offset: 21184)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !691, file: !692, line: 1471, baseType: !328, size: 32, offset: 21312)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !691, file: !692, line: 1472, baseType: !14, size: 32, offset: 21344)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !691, file: !692, line: 1474, baseType: !690, size: 64, offset: 21376)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !691, file: !692, line: 1475, baseType: !2465, size: 320, offset: 21440)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !691, file: !692, line: 1478, baseType: !5606, size: 64, offset: 21760)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !692, line: 1478, flags: DIFlagFwdDecl)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !691, file: !692, line: 1482, baseType: !328, size: 32, offset: 21824)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !691, file: !692, line: 1489, baseType: !12, size: 64, offset: 21888)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !691, file: !692, line: 1504, baseType: !12, size: 64, offset: 21952)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !691, file: !692, line: 1505, baseType: !315, size: 64, offset: 22016)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !691, file: !692, line: 1506, baseType: !314, size: 64, offset: 22080)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !691, file: !692, line: 1507, baseType: !315, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !691, file: !692, line: 1508, baseType: !315, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !691, file: !692, line: 1509, baseType: !315, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !691, file: !692, line: 1510, baseType: !415, size: 128, align: 64, offset: 22208)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !691, file: !692, line: 1511, baseType: !14, size: 32, offset: 22336)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !691, file: !692, line: 1515, baseType: !5619, size: 64, offset: 22400)
!5619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !714, line: 56, size: 64, elements: !5620)
!5620 = !{!5621}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5619, file: !714, line: 57, baseType: !717, size: 64)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !691, file: !692, line: 1518, baseType: !5619, size: 64, offset: 22464)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !691, file: !692, line: 1528, baseType: !415, size: 128, align: 64, offset: 22528)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !691, file: !692, line: 1552, baseType: !5625, size: 35328, offset: 23040)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5626, line: 430, size: 35328, elements: !5627)
!5626 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5627 = !{!5628, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5655, !5656, !5657, !5658, !5659, !5660, !5663, !5664, !5665, !5666}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5625, file: !5626, line: 432, baseType: !5629, size: 192)
!5629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5630, size: 192, elements: !1059)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5631, line: 16, size: 64, elements: !5632)
!5631 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5632 = !{!5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5630, file: !5631, line: 17, baseType: !85, size: 16)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5630, file: !5631, line: 18, baseType: !85, size: 16, offset: 16)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5630, file: !5631, line: 19, baseType: !85, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5630, file: !5631, line: 19, baseType: !85, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5630, file: !5631, line: 19, baseType: !85, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5630, file: !5631, line: 19, baseType: !85, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5630, file: !5631, line: 19, baseType: !85, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5630, file: !5631, line: 20, baseType: !85, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5630, file: !5631, line: 20, baseType: !85, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5630, file: !5631, line: 20, baseType: !85, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5630, file: !5631, line: 20, baseType: !85, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5630, file: !5631, line: 20, baseType: !85, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5630, file: !5631, line: 20, baseType: !85, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5625, file: !5626, line: 436, baseType: !31, size: 64, offset: 192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5625, file: !5626, line: 440, baseType: !18, size: 16, offset: 256)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5625, file: !5626, line: 441, baseType: !18, size: 16, offset: 272)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5625, file: !5626, line: 442, baseType: !18, size: 16, offset: 288)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5625, file: !5626, line: 443, baseType: !18, size: 16, offset: 304)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5625, file: !5626, line: 447, baseType: !31, size: 64, offset: 320)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5625, file: !5626, line: 448, baseType: !31, size: 64, offset: 384)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5625, file: !5626, line: 459, baseType: !5654, size: 256, offset: 448)
!5654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2751, size: 256, elements: !446)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5625, file: !5626, line: 461, baseType: !31, size: 64, offset: 704)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5625, file: !5626, line: 463, baseType: !31, size: 64, offset: 768)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5625, file: !5626, line: 465, baseType: !31, size: 64, offset: 832)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5625, file: !5626, line: 466, baseType: !31, size: 64, offset: 896)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5625, file: !5626, line: 467, baseType: !31, size: 64, offset: 960)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5625, file: !5626, line: 473, baseType: !5661, size: 64, offset: 1024)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5626, line: 10, flags: DIFlagFwdDecl)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5625, file: !5626, line: 480, baseType: !31, size: 64, offset: 1088)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5625, file: !5626, line: 482, baseType: !96, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5625, file: !5626, line: 491, baseType: !381, size: 32, offset: 1184)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5625, file: !5626, line: 501, baseType: !5667, size: 33792, offset: 1536)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5668, line: 448, size: 33792, elements: !5669)
!5668 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5669 = !{!5670, !5671, !5672, !5780, !5781, !5787, !5788}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5667, file: !5668, line: 461, baseType: !96, size: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5667, file: !5668, line: 468, baseType: !31, size: 64, offset: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5667, file: !5668, line: 476, baseType: !5673, size: 64, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5668, line: 356, size: 33280, align: 512, elements: !5675)
!5675 = !{!5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5674, file: !5668, line: 358, baseType: !96, size: 32)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5674, file: !5668, line: 361, baseType: !96, size: 32, offset: 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5674, file: !5668, line: 364, baseType: !314, size: 64, offset: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5674, file: !5668, line: 367, baseType: !314, size: 64, offset: 128)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5674, file: !5668, line: 370, baseType: !314, size: 64, offset: 192)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5674, file: !5668, line: 373, baseType: !96, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5674, file: !5668, line: 376, baseType: !96, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5674, file: !5668, line: 391, baseType: !96, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5674, file: !5668, line: 394, baseType: !96, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5674, file: !5668, line: 397, baseType: !5686, size: 32768, offset: 512)
!5686 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5668, line: 348, size: 32768, elements: !5687)
!5687 = !{!5688, !5703, !5740, !5765, !5778}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5686, file: !5668, line: 349, baseType: !5689, size: 896)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5668, line: 12, size: 896, elements: !5690)
!5690 = !{!5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5702}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5689, file: !5668, line: 13, baseType: !381, size: 32)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5689, file: !5668, line: 14, baseType: !381, size: 32, offset: 32)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5689, file: !5668, line: 15, baseType: !381, size: 32, offset: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5689, file: !5668, line: 16, baseType: !381, size: 32, offset: 96)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5689, file: !5668, line: 17, baseType: !381, size: 32, offset: 128)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5689, file: !5668, line: 18, baseType: !381, size: 32, offset: 160)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5689, file: !5668, line: 19, baseType: !381, size: 32, offset: 192)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5689, file: !5668, line: 22, baseType: !5699, size: 640, offset: 224)
!5699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 640, elements: !5700)
!5700 = !{!5701}
!5701 = !DISubrange(count: 20)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5689, file: !5668, line: 25, baseType: !381, size: 32, offset: 864)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5686, file: !5668, line: 350, baseType: !5704, size: 4096, align: 128)
!5704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5668, line: 34, size: 4096, align: 128, elements: !5705)
!5705 = !{!5706, !5707, !5708, !5709, !5710, !5725, !5726, !5727, !5729, !5731, !5735}
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5704, file: !5668, line: 35, baseType: !85, size: 16)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5704, file: !5668, line: 36, baseType: !85, size: 16, offset: 16)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5704, file: !5668, line: 37, baseType: !85, size: 16, offset: 32)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5704, file: !5668, line: 38, baseType: !85, size: 16, offset: 48)
!5710 = !DIDerivedType(tag: DW_TAG_member, scope: !5704, file: !5668, line: 39, baseType: !5711, size: 128, offset: 64)
!5711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5704, file: !5668, line: 39, size: 128, elements: !5712)
!5712 = !{!5713, !5718}
!5713 = !DIDerivedType(tag: DW_TAG_member, scope: !5711, file: !5668, line: 40, baseType: !5714, size: 128)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5711, file: !5668, line: 40, size: 128, elements: !5715)
!5715 = !{!5716, !5717}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5714, file: !5668, line: 41, baseType: !314, size: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5714, file: !5668, line: 42, baseType: !314, size: 64, offset: 64)
!5718 = !DIDerivedType(tag: DW_TAG_member, scope: !5711, file: !5668, line: 44, baseType: !5719, size: 128)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5711, file: !5668, line: 44, size: 128, elements: !5720)
!5720 = !{!5721, !5722, !5723, !5724}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5719, file: !5668, line: 45, baseType: !381, size: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5719, file: !5668, line: 46, baseType: !381, size: 32, offset: 32)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5719, file: !5668, line: 47, baseType: !381, size: 32, offset: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5719, file: !5668, line: 48, baseType: !381, size: 32, offset: 96)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5704, file: !5668, line: 51, baseType: !381, size: 32, offset: 192)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5704, file: !5668, line: 52, baseType: !381, size: 32, offset: 224)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5704, file: !5668, line: 55, baseType: !5728, size: 1024, offset: 256)
!5728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 1024, elements: !4398)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5704, file: !5668, line: 58, baseType: !5730, size: 2048, offset: 1280)
!5730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 2048, elements: !1464)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5704, file: !5668, line: 60, baseType: !5732, size: 384, offset: 3328)
!5732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 384, elements: !5733)
!5733 = !{!5734}
!5734 = !DISubrange(count: 12)
!5735 = !DIDerivedType(tag: DW_TAG_member, scope: !5704, file: !5668, line: 62, baseType: !5736, size: 384, offset: 3712)
!5736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5704, file: !5668, line: 62, size: 384, elements: !5737)
!5737 = !{!5738, !5739}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5736, file: !5668, line: 63, baseType: !5732, size: 384)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5736, file: !5668, line: 64, baseType: !5732, size: 384)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5686, file: !5668, line: 351, baseType: !5741, size: 1088)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5668, line: 79, size: 1088, elements: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5764}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5741, file: !5668, line: 80, baseType: !381, size: 32)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5741, file: !5668, line: 81, baseType: !381, size: 32, offset: 32)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5741, file: !5668, line: 82, baseType: !381, size: 32, offset: 64)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5741, file: !5668, line: 83, baseType: !381, size: 32, offset: 96)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5741, file: !5668, line: 84, baseType: !381, size: 32, offset: 128)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5741, file: !5668, line: 85, baseType: !381, size: 32, offset: 160)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5741, file: !5668, line: 86, baseType: !381, size: 32, offset: 192)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5741, file: !5668, line: 88, baseType: !5699, size: 640, offset: 224)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5741, file: !5668, line: 89, baseType: !75, size: 8, offset: 864)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5741, file: !5668, line: 90, baseType: !75, size: 8, offset: 872)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5741, file: !5668, line: 91, baseType: !75, size: 8, offset: 880)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5741, file: !5668, line: 92, baseType: !75, size: 8, offset: 888)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5741, file: !5668, line: 93, baseType: !75, size: 8, offset: 896)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5741, file: !5668, line: 94, baseType: !75, size: 8, offset: 904)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5741, file: !5668, line: 95, baseType: !5758, size: 64, offset: 960)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5760, line: 11, size: 128, elements: !5761)
!5760 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5761 = !{!5762, !5763}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5759, file: !5760, line: 12, baseType: !670, size: 64)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5759, file: !5760, line: 13, baseType: !3663, size: 64, offset: 64)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5741, file: !5668, line: 96, baseType: !381, size: 32, offset: 1024)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5686, file: !5668, line: 352, baseType: !5766, size: 4608, align: 512)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5668, line: 333, size: 4608, align: 512, elements: !5767)
!5767 = !{!5768, !5769, !5776}
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5766, file: !5668, line: 334, baseType: !5704, size: 4096, align: 128)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5766, file: !5668, line: 335, baseType: !5770, size: 512, offset: 4096)
!5770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5668, line: 312, size: 512, elements: !5771)
!5771 = !{!5772, !5773, !5774}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5770, file: !5668, line: 313, baseType: !314, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5770, file: !5668, line: 314, baseType: !314, size: 64, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5770, file: !5668, line: 315, baseType: !5775, size: 384, offset: 128)
!5775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 384, elements: !404)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5766, file: !5668, line: 336, baseType: !5777, offset: 4608)
!5777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !682)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5686, file: !5668, line: 353, baseType: !5779, size: 32768)
!5779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32768, elements: !2695)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5667, file: !5668, line: 484, baseType: !5673, size: 64, offset: 192)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5667, file: !5668, line: 491, baseType: !5782, size: 128, offset: 256)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5668, line: 404, size: 128, elements: !5783)
!5783 = !{!5784, !5785, !5786}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5782, file: !5668, line: 424, baseType: !314, size: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5782, file: !5668, line: 432, baseType: !96, size: 32, offset: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5782, file: !5668, line: 440, baseType: !96, size: 32, offset: 96)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5667, file: !5668, line: 498, baseType: !5782, size: 128, offset: 384)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5667, file: !5668, line: 508, baseType: !5674, size: 33280, align: 512, offset: 512)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!5790 = !{!"rsp"}
!5791 = !{i32 7, !"Dwarf Version", i32 5}
!5792 = !{i32 2, !"Debug Info Version", i32 3}
!5793 = !{i32 1, !"wchar_size", i32 2}
!5794 = !{i32 8, !"cf-protection-branch", i32 1}
!5795 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5796 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5797 = !{i32 1, !"Code Model", i32 2}
!5798 = !{i32 1, !"override-stack-alignment", i32 8}
!5799 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5800 = distinct !DISubprogram(name: "__x64_sys_chown16", scope: !1, file: !1, line: 23, type: !5801, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5805)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!670, !5803}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5804, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!5805 = !{!5806}
!5806 = !DILocalVariable(name: "regs", arg: 1, scope: !5800, file: !1, line: 23, type: !5803)
!5807 = !DILocation(line: 23, column: 1, scope: !5800)
!5808 = distinct !DISubprogram(name: "__se_sys_chown16", scope: !1, file: !1, line: 23, type: !5809, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!670, !670, !670, !670}
!5811 = !{!5812, !5813, !5814, !5815}
!5812 = !DILocalVariable(name: "filename", arg: 1, scope: !5808, file: !1, line: 23, type: !670)
!5813 = !DILocalVariable(name: "user", arg: 2, scope: !5808, file: !1, line: 23, type: !670)
!5814 = !DILocalVariable(name: "group", arg: 3, scope: !5808, file: !1, line: 23, type: !670)
!5815 = !DILocalVariable(name: "ret", scope: !5808, file: !1, line: 23, type: !670)
!5816 = !DILocation(line: 23, column: 1, scope: !5808)
!5817 = !DILocation(line: 23, column: 1, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5808, file: !1, line: 23, column: 1)
!5819 = distinct !DISubprogram(name: "__ia32_sys_chown16", scope: !1, file: !1, line: 23, type: !5801, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5820)
!5820 = !{!5821}
!5821 = !DILocalVariable(name: "regs", arg: 1, scope: !5819, file: !1, line: 23, type: !5803)
!5822 = !DILocation(line: 23, column: 1, scope: !5819)
!5823 = distinct !DISubprogram(name: "__x64_sys_lchown16", scope: !1, file: !1, line: 28, type: !5801, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5824)
!5824 = !{!5825}
!5825 = !DILocalVariable(name: "regs", arg: 1, scope: !5823, file: !1, line: 28, type: !5803)
!5826 = !DILocation(line: 28, column: 1, scope: !5823)
!5827 = distinct !DISubprogram(name: "__se_sys_lchown16", scope: !1, file: !1, line: 28, type: !5809, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5828)
!5828 = !{!5829, !5830, !5831, !5832}
!5829 = !DILocalVariable(name: "filename", arg: 1, scope: !5827, file: !1, line: 28, type: !670)
!5830 = !DILocalVariable(name: "user", arg: 2, scope: !5827, file: !1, line: 28, type: !670)
!5831 = !DILocalVariable(name: "group", arg: 3, scope: !5827, file: !1, line: 28, type: !670)
!5832 = !DILocalVariable(name: "ret", scope: !5827, file: !1, line: 28, type: !670)
!5833 = !DILocation(line: 28, column: 1, scope: !5827)
!5834 = !DILocation(line: 28, column: 1, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5827, file: !1, line: 28, column: 1)
!5836 = distinct !DISubprogram(name: "__ia32_sys_lchown16", scope: !1, file: !1, line: 28, type: !5801, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5837)
!5837 = !{!5838}
!5838 = !DILocalVariable(name: "regs", arg: 1, scope: !5836, file: !1, line: 28, type: !5803)
!5839 = !DILocation(line: 28, column: 1, scope: !5836)
!5840 = distinct !DISubprogram(name: "__x64_sys_fchown16", scope: !1, file: !1, line: 33, type: !5801, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5841)
!5841 = !{!5842}
!5842 = !DILocalVariable(name: "regs", arg: 1, scope: !5840, file: !1, line: 33, type: !5803)
!5843 = !DILocation(line: 33, column: 1, scope: !5840)
!5844 = distinct !DISubprogram(name: "__se_sys_fchown16", scope: !1, file: !1, line: 33, type: !5809, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5845)
!5845 = !{!5846, !5847, !5848, !5849}
!5846 = !DILocalVariable(name: "fd", arg: 1, scope: !5844, file: !1, line: 33, type: !670)
!5847 = !DILocalVariable(name: "user", arg: 2, scope: !5844, file: !1, line: 33, type: !670)
!5848 = !DILocalVariable(name: "group", arg: 3, scope: !5844, file: !1, line: 33, type: !670)
!5849 = !DILocalVariable(name: "ret", scope: !5844, file: !1, line: 33, type: !670)
!5850 = !DILocation(line: 33, column: 1, scope: !5844)
!5851 = !DILocation(line: 33, column: 1, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5844, file: !1, line: 33, column: 1)
!5853 = distinct !DISubprogram(name: "__ia32_sys_fchown16", scope: !1, file: !1, line: 33, type: !5801, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5854)
!5854 = !{!5855}
!5855 = !DILocalVariable(name: "regs", arg: 1, scope: !5853, file: !1, line: 33, type: !5803)
!5856 = !DILocation(line: 33, column: 1, scope: !5853)
!5857 = distinct !DISubprogram(name: "__x64_sys_setregid16", scope: !1, file: !1, line: 38, type: !5801, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5858)
!5858 = !{!5859}
!5859 = !DILocalVariable(name: "regs", arg: 1, scope: !5857, file: !1, line: 38, type: !5803)
!5860 = !DILocation(line: 38, column: 1, scope: !5857)
!5861 = distinct !DISubprogram(name: "__se_sys_setregid16", scope: !1, file: !1, line: 38, type: !5862, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5864)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{!670, !670, !670}
!5864 = !{!5865, !5866, !5867}
!5865 = !DILocalVariable(name: "rgid", arg: 1, scope: !5861, file: !1, line: 38, type: !670)
!5866 = !DILocalVariable(name: "egid", arg: 2, scope: !5861, file: !1, line: 38, type: !670)
!5867 = !DILocalVariable(name: "ret", scope: !5861, file: !1, line: 38, type: !670)
!5868 = !DILocation(line: 38, column: 1, scope: !5861)
!5869 = !DILocation(line: 38, column: 1, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5861, file: !1, line: 38, column: 1)
!5871 = distinct !DISubprogram(name: "__ia32_sys_setregid16", scope: !1, file: !1, line: 38, type: !5801, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5872)
!5872 = !{!5873}
!5873 = !DILocalVariable(name: "regs", arg: 1, scope: !5871, file: !1, line: 38, type: !5803)
!5874 = !DILocation(line: 38, column: 1, scope: !5871)
!5875 = distinct !DISubprogram(name: "__x64_sys_setgid16", scope: !1, file: !1, line: 43, type: !5801, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5876)
!5876 = !{!5877}
!5877 = !DILocalVariable(name: "regs", arg: 1, scope: !5875, file: !1, line: 43, type: !5803)
!5878 = !DILocation(line: 43, column: 1, scope: !5875)
!5879 = distinct !DISubprogram(name: "__se_sys_setgid16", scope: !1, file: !1, line: 43, type: !5880, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5882)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{!670, !670}
!5882 = !{!5883, !5884}
!5883 = !DILocalVariable(name: "gid", arg: 1, scope: !5879, file: !1, line: 43, type: !670)
!5884 = !DILocalVariable(name: "ret", scope: !5879, file: !1, line: 43, type: !670)
!5885 = !DILocation(line: 43, column: 1, scope: !5879)
!5886 = !DILocation(line: 43, column: 1, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5879, file: !1, line: 43, column: 1)
!5888 = distinct !DISubprogram(name: "__ia32_sys_setgid16", scope: !1, file: !1, line: 43, type: !5801, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5889)
!5889 = !{!5890}
!5890 = !DILocalVariable(name: "regs", arg: 1, scope: !5888, file: !1, line: 43, type: !5803)
!5891 = !DILocation(line: 43, column: 1, scope: !5888)
!5892 = distinct !DISubprogram(name: "__x64_sys_setreuid16", scope: !1, file: !1, line: 48, type: !5801, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5893)
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "regs", arg: 1, scope: !5892, file: !1, line: 48, type: !5803)
!5895 = !DILocation(line: 48, column: 1, scope: !5892)
!5896 = distinct !DISubprogram(name: "__se_sys_setreuid16", scope: !1, file: !1, line: 48, type: !5862, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5897)
!5897 = !{!5898, !5899, !5900}
!5898 = !DILocalVariable(name: "ruid", arg: 1, scope: !5896, file: !1, line: 48, type: !670)
!5899 = !DILocalVariable(name: "euid", arg: 2, scope: !5896, file: !1, line: 48, type: !670)
!5900 = !DILocalVariable(name: "ret", scope: !5896, file: !1, line: 48, type: !670)
!5901 = !DILocation(line: 48, column: 1, scope: !5896)
!5902 = !DILocation(line: 48, column: 1, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5896, file: !1, line: 48, column: 1)
!5904 = distinct !DISubprogram(name: "__ia32_sys_setreuid16", scope: !1, file: !1, line: 48, type: !5801, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5905)
!5905 = !{!5906}
!5906 = !DILocalVariable(name: "regs", arg: 1, scope: !5904, file: !1, line: 48, type: !5803)
!5907 = !DILocation(line: 48, column: 1, scope: !5904)
!5908 = distinct !DISubprogram(name: "__x64_sys_setuid16", scope: !1, file: !1, line: 53, type: !5801, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5909)
!5909 = !{!5910}
!5910 = !DILocalVariable(name: "regs", arg: 1, scope: !5908, file: !1, line: 53, type: !5803)
!5911 = !DILocation(line: 53, column: 1, scope: !5908)
!5912 = distinct !DISubprogram(name: "__se_sys_setuid16", scope: !1, file: !1, line: 53, type: !5880, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5913)
!5913 = !{!5914, !5915}
!5914 = !DILocalVariable(name: "uid", arg: 1, scope: !5912, file: !1, line: 53, type: !670)
!5915 = !DILocalVariable(name: "ret", scope: !5912, file: !1, line: 53, type: !670)
!5916 = !DILocation(line: 53, column: 1, scope: !5912)
!5917 = !DILocation(line: 53, column: 1, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5912, file: !1, line: 53, column: 1)
!5919 = distinct !DISubprogram(name: "__ia32_sys_setuid16", scope: !1, file: !1, line: 53, type: !5801, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5920)
!5920 = !{!5921}
!5921 = !DILocalVariable(name: "regs", arg: 1, scope: !5919, file: !1, line: 53, type: !5803)
!5922 = !DILocation(line: 53, column: 1, scope: !5919)
!5923 = distinct !DISubprogram(name: "__x64_sys_setresuid16", scope: !1, file: !1, line: 58, type: !5801, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5924)
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "regs", arg: 1, scope: !5923, file: !1, line: 58, type: !5803)
!5926 = !DILocation(line: 58, column: 1, scope: !5923)
!5927 = distinct !DISubprogram(name: "__se_sys_setresuid16", scope: !1, file: !1, line: 58, type: !5809, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5928)
!5928 = !{!5929, !5930, !5931, !5932}
!5929 = !DILocalVariable(name: "ruid", arg: 1, scope: !5927, file: !1, line: 58, type: !670)
!5930 = !DILocalVariable(name: "euid", arg: 2, scope: !5927, file: !1, line: 58, type: !670)
!5931 = !DILocalVariable(name: "suid", arg: 3, scope: !5927, file: !1, line: 58, type: !670)
!5932 = !DILocalVariable(name: "ret", scope: !5927, file: !1, line: 58, type: !670)
!5933 = !DILocation(line: 58, column: 1, scope: !5927)
!5934 = !DILocation(line: 58, column: 1, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5927, file: !1, line: 58, column: 1)
!5936 = distinct !DISubprogram(name: "__ia32_sys_setresuid16", scope: !1, file: !1, line: 58, type: !5801, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5937)
!5937 = !{!5938}
!5938 = !DILocalVariable(name: "regs", arg: 1, scope: !5936, file: !1, line: 58, type: !5803)
!5939 = !DILocation(line: 58, column: 1, scope: !5936)
!5940 = distinct !DISubprogram(name: "__x64_sys_getresuid16", scope: !1, file: !1, line: 64, type: !5801, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5941)
!5941 = !{!5942}
!5942 = !DILocalVariable(name: "regs", arg: 1, scope: !5940, file: !1, line: 64, type: !5803)
!5943 = !DILocation(line: 64, column: 1, scope: !5940)
!5944 = distinct !DISubprogram(name: "__se_sys_getresuid16", scope: !1, file: !1, line: 64, type: !5809, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948, !5949}
!5946 = !DILocalVariable(name: "ruidp", arg: 1, scope: !5944, file: !1, line: 64, type: !670)
!5947 = !DILocalVariable(name: "euidp", arg: 2, scope: !5944, file: !1, line: 64, type: !670)
!5948 = !DILocalVariable(name: "suidp", arg: 3, scope: !5944, file: !1, line: 64, type: !670)
!5949 = !DILocalVariable(name: "ret", scope: !5944, file: !1, line: 64, type: !670)
!5950 = !DILocation(line: 64, column: 1, scope: !5944)
!5951 = !DILocation(line: 64, column: 1, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5944, file: !1, line: 64, column: 1)
!5953 = distinct !DISubprogram(name: "__ia32_sys_getresuid16", scope: !1, file: !1, line: 64, type: !5801, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5954)
!5954 = !{!5955}
!5955 = !DILocalVariable(name: "regs", arg: 1, scope: !5953, file: !1, line: 64, type: !5803)
!5956 = !DILocation(line: 64, column: 1, scope: !5953)
!5957 = distinct !DISubprogram(name: "__x64_sys_setresgid16", scope: !1, file: !1, line: 81, type: !5801, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5958)
!5958 = !{!5959}
!5959 = !DILocalVariable(name: "regs", arg: 1, scope: !5957, file: !1, line: 81, type: !5803)
!5960 = !DILocation(line: 81, column: 1, scope: !5957)
!5961 = distinct !DISubprogram(name: "__se_sys_setresgid16", scope: !1, file: !1, line: 81, type: !5809, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5962)
!5962 = !{!5963, !5964, !5965, !5966}
!5963 = !DILocalVariable(name: "rgid", arg: 1, scope: !5961, file: !1, line: 81, type: !670)
!5964 = !DILocalVariable(name: "egid", arg: 2, scope: !5961, file: !1, line: 81, type: !670)
!5965 = !DILocalVariable(name: "sgid", arg: 3, scope: !5961, file: !1, line: 81, type: !670)
!5966 = !DILocalVariable(name: "ret", scope: !5961, file: !1, line: 81, type: !670)
!5967 = !DILocation(line: 81, column: 1, scope: !5961)
!5968 = !DILocation(line: 81, column: 1, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5961, file: !1, line: 81, column: 1)
!5970 = distinct !DISubprogram(name: "__ia32_sys_setresgid16", scope: !1, file: !1, line: 81, type: !5801, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5971)
!5971 = !{!5972}
!5972 = !DILocalVariable(name: "regs", arg: 1, scope: !5970, file: !1, line: 81, type: !5803)
!5973 = !DILocation(line: 81, column: 1, scope: !5970)
!5974 = distinct !DISubprogram(name: "__x64_sys_getresgid16", scope: !1, file: !1, line: 87, type: !5801, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5975)
!5975 = !{!5976}
!5976 = !DILocalVariable(name: "regs", arg: 1, scope: !5974, file: !1, line: 87, type: !5803)
!5977 = !DILocation(line: 87, column: 1, scope: !5974)
!5978 = distinct !DISubprogram(name: "__se_sys_getresgid16", scope: !1, file: !1, line: 87, type: !5809, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5979)
!5979 = !{!5980, !5981, !5982, !5983}
!5980 = !DILocalVariable(name: "rgidp", arg: 1, scope: !5978, file: !1, line: 87, type: !670)
!5981 = !DILocalVariable(name: "egidp", arg: 2, scope: !5978, file: !1, line: 87, type: !670)
!5982 = !DILocalVariable(name: "sgidp", arg: 3, scope: !5978, file: !1, line: 87, type: !670)
!5983 = !DILocalVariable(name: "ret", scope: !5978, file: !1, line: 87, type: !670)
!5984 = !DILocation(line: 87, column: 1, scope: !5978)
!5985 = !DILocation(line: 87, column: 1, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5978, file: !1, line: 87, column: 1)
!5987 = distinct !DISubprogram(name: "__ia32_sys_getresgid16", scope: !1, file: !1, line: 87, type: !5801, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5988)
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "regs", arg: 1, scope: !5987, file: !1, line: 87, type: !5803)
!5990 = !DILocation(line: 87, column: 1, scope: !5987)
!5991 = distinct !DISubprogram(name: "__x64_sys_setfsuid16", scope: !1, file: !1, line: 104, type: !5801, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5992)
!5992 = !{!5993}
!5993 = !DILocalVariable(name: "regs", arg: 1, scope: !5991, file: !1, line: 104, type: !5803)
!5994 = !DILocation(line: 104, column: 1, scope: !5991)
!5995 = distinct !DISubprogram(name: "__se_sys_setfsuid16", scope: !1, file: !1, line: 104, type: !5880, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5996)
!5996 = !{!5997, !5998}
!5997 = !DILocalVariable(name: "uid", arg: 1, scope: !5995, file: !1, line: 104, type: !670)
!5998 = !DILocalVariable(name: "ret", scope: !5995, file: !1, line: 104, type: !670)
!5999 = !DILocation(line: 104, column: 1, scope: !5995)
!6000 = !DILocation(line: 104, column: 1, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5995, file: !1, line: 104, column: 1)
!6002 = distinct !DISubprogram(name: "__ia32_sys_setfsuid16", scope: !1, file: !1, line: 104, type: !5801, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6003)
!6003 = !{!6004}
!6004 = !DILocalVariable(name: "regs", arg: 1, scope: !6002, file: !1, line: 104, type: !5803)
!6005 = !DILocation(line: 104, column: 1, scope: !6002)
!6006 = distinct !DISubprogram(name: "__x64_sys_setfsgid16", scope: !1, file: !1, line: 109, type: !5801, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6007)
!6007 = !{!6008}
!6008 = !DILocalVariable(name: "regs", arg: 1, scope: !6006, file: !1, line: 109, type: !5803)
!6009 = !DILocation(line: 109, column: 1, scope: !6006)
!6010 = distinct !DISubprogram(name: "__se_sys_setfsgid16", scope: !1, file: !1, line: 109, type: !5880, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6011)
!6011 = !{!6012, !6013}
!6012 = !DILocalVariable(name: "gid", arg: 1, scope: !6010, file: !1, line: 109, type: !670)
!6013 = !DILocalVariable(name: "ret", scope: !6010, file: !1, line: 109, type: !670)
!6014 = !DILocation(line: 109, column: 1, scope: !6010)
!6015 = !DILocation(line: 109, column: 1, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6010, file: !1, line: 109, column: 1)
!6017 = distinct !DISubprogram(name: "__ia32_sys_setfsgid16", scope: !1, file: !1, line: 109, type: !5801, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6018)
!6018 = !{!6019}
!6019 = !DILocalVariable(name: "regs", arg: 1, scope: !6017, file: !1, line: 109, type: !5803)
!6020 = !DILocation(line: 109, column: 1, scope: !6017)
!6021 = distinct !DISubprogram(name: "__x64_sys_getgroups16", scope: !1, file: !1, line: 154, type: !5801, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6022)
!6022 = !{!6023}
!6023 = !DILocalVariable(name: "regs", arg: 1, scope: !6021, file: !1, line: 154, type: !5803)
!6024 = !DILocation(line: 154, column: 1, scope: !6021)
!6025 = distinct !DISubprogram(name: "__se_sys_getgroups16", scope: !1, file: !1, line: 154, type: !5862, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6026)
!6026 = !{!6027, !6028, !6029}
!6027 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6025, file: !1, line: 154, type: !670)
!6028 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6025, file: !1, line: 154, type: !670)
!6029 = !DILocalVariable(name: "ret", scope: !6025, file: !1, line: 154, type: !670)
!6030 = !DILocation(line: 154, column: 1, scope: !6025)
!6031 = !DILocation(line: 154, column: 1, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6025, file: !1, line: 154, column: 1)
!6033 = distinct !DISubprogram(name: "__ia32_sys_getgroups16", scope: !1, file: !1, line: 154, type: !5801, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6034)
!6034 = !{!6035}
!6035 = !DILocalVariable(name: "regs", arg: 1, scope: !6033, file: !1, line: 154, type: !5803)
!6036 = !DILocation(line: 154, column: 1, scope: !6033)
!6037 = distinct !DISubprogram(name: "__x64_sys_setgroups16", scope: !1, file: !1, line: 177, type: !5801, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6038)
!6038 = !{!6039}
!6039 = !DILocalVariable(name: "regs", arg: 1, scope: !6037, file: !1, line: 177, type: !5803)
!6040 = !DILocation(line: 177, column: 1, scope: !6037)
!6041 = distinct !DISubprogram(name: "__se_sys_setgroups16", scope: !1, file: !1, line: 177, type: !5862, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6042)
!6042 = !{!6043, !6044, !6045}
!6043 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6041, file: !1, line: 177, type: !670)
!6044 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6041, file: !1, line: 177, type: !670)
!6045 = !DILocalVariable(name: "ret", scope: !6041, file: !1, line: 177, type: !670)
!6046 = !DILocation(line: 177, column: 1, scope: !6041)
!6047 = !DILocation(line: 177, column: 1, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6041, file: !1, line: 177, column: 1)
!6049 = distinct !DISubprogram(name: "__ia32_sys_setgroups16", scope: !1, file: !1, line: 177, type: !5801, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6050)
!6050 = !{!6051}
!6051 = !DILocalVariable(name: "regs", arg: 1, scope: !6049, file: !1, line: 177, type: !5803)
!6052 = !DILocation(line: 177, column: 1, scope: !6049)
!6053 = distinct !DISubprogram(name: "__do_sys_getuid16", scope: !1, file: !1, line: 203, type: !5801, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6054)
!6054 = !{!6055}
!6055 = !DILocalVariable(name: "__unused", arg: 1, scope: !6053, file: !1, line: 203, type: !5803)
!6056 = !DILocation(line: 203, column: 1, scope: !6053)
!6057 = !DILocation(line: 205, column: 9, scope: !6053)
!6058 = !DILocation(line: 205, column: 9, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6060, file: !1, line: 205, column: 9)
!6060 = distinct !DILexicalBlock(scope: !6053, file: !1, line: 205, column: 9)
!6061 = !DILocation(line: 205, column: 9, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6059, file: !1, line: 205, column: 9)
!6063 = !DILocation(line: 205, column: 9, scope: !6060)
!6064 = !DILocation(line: 205, column: 9, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !1, line: 205, column: 9)
!6066 = distinct !DILexicalBlock(scope: !6053, file: !1, line: 205, column: 9)
!6067 = !DILocation(line: 205, column: 9, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6065, file: !1, line: 205, column: 9)
!6069 = !DILocation(line: 205, column: 9, scope: !6066)
!6070 = !DILocation(line: 205, column: 2, scope: !6053)
!6071 = distinct !DISubprogram(name: "__do_sys_geteuid16", scope: !1, file: !1, line: 208, type: !5801, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6072)
!6072 = !{!6073}
!6073 = !DILocalVariable(name: "__unused", arg: 1, scope: !6071, file: !1, line: 208, type: !5803)
!6074 = !DILocation(line: 208, column: 1, scope: !6071)
!6075 = !DILocation(line: 210, column: 9, scope: !6071)
!6076 = !DILocation(line: 210, column: 9, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6078, file: !1, line: 210, column: 9)
!6078 = distinct !DILexicalBlock(scope: !6071, file: !1, line: 210, column: 9)
!6079 = !DILocation(line: 210, column: 9, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6077, file: !1, line: 210, column: 9)
!6081 = !DILocation(line: 210, column: 9, scope: !6078)
!6082 = !DILocation(line: 210, column: 9, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6084, file: !1, line: 210, column: 9)
!6084 = distinct !DILexicalBlock(scope: !6071, file: !1, line: 210, column: 9)
!6085 = !DILocation(line: 210, column: 9, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6083, file: !1, line: 210, column: 9)
!6087 = !DILocation(line: 210, column: 9, scope: !6084)
!6088 = !DILocation(line: 210, column: 2, scope: !6071)
!6089 = distinct !DISubprogram(name: "__do_sys_getgid16", scope: !1, file: !1, line: 213, type: !5801, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6090)
!6090 = !{!6091}
!6091 = !DILocalVariable(name: "__unused", arg: 1, scope: !6089, file: !1, line: 213, type: !5803)
!6092 = !DILocation(line: 213, column: 1, scope: !6089)
!6093 = !DILocation(line: 215, column: 9, scope: !6089)
!6094 = !DILocation(line: 215, column: 9, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !1, line: 215, column: 9)
!6096 = distinct !DILexicalBlock(scope: !6089, file: !1, line: 215, column: 9)
!6097 = !DILocation(line: 215, column: 9, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6095, file: !1, line: 215, column: 9)
!6099 = !DILocation(line: 215, column: 9, scope: !6096)
!6100 = !DILocation(line: 215, column: 9, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !1, line: 215, column: 9)
!6102 = distinct !DILexicalBlock(scope: !6089, file: !1, line: 215, column: 9)
!6103 = !DILocation(line: 215, column: 9, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6101, file: !1, line: 215, column: 9)
!6105 = !DILocation(line: 215, column: 9, scope: !6102)
!6106 = !DILocation(line: 215, column: 2, scope: !6089)
!6107 = distinct !DISubprogram(name: "__do_sys_getegid16", scope: !1, file: !1, line: 218, type: !5801, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6108)
!6108 = !{!6109}
!6109 = !DILocalVariable(name: "__unused", arg: 1, scope: !6107, file: !1, line: 218, type: !5803)
!6110 = !DILocation(line: 218, column: 1, scope: !6107)
!6111 = !DILocation(line: 220, column: 9, scope: !6107)
!6112 = !DILocation(line: 220, column: 9, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !1, line: 220, column: 9)
!6114 = distinct !DILexicalBlock(scope: !6107, file: !1, line: 220, column: 9)
!6115 = !DILocation(line: 220, column: 9, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6113, file: !1, line: 220, column: 9)
!6117 = !DILocation(line: 220, column: 9, scope: !6114)
!6118 = !DILocation(line: 220, column: 9, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6120, file: !1, line: 220, column: 9)
!6120 = distinct !DILexicalBlock(scope: !6107, file: !1, line: 220, column: 9)
!6121 = !DILocation(line: 220, column: 9, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6119, file: !1, line: 220, column: 9)
!6123 = !DILocation(line: 220, column: 9, scope: !6120)
!6124 = !DILocation(line: 220, column: 2, scope: !6107)
!6125 = distinct !DISubprogram(name: "__do_sys_chown16", scope: !1, file: !1, line: 23, type: !6126, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!670, !8, !266, !269}
!6128 = !{!6129, !6130, !6131}
!6129 = !DILocalVariable(name: "filename", arg: 1, scope: !6125, file: !1, line: 23, type: !8)
!6130 = !DILocalVariable(name: "user", arg: 2, scope: !6125, file: !1, line: 23, type: !266)
!6131 = !DILocalVariable(name: "group", arg: 3, scope: !6125, file: !1, line: 23, type: !269)
!6132 = !DILocation(line: 23, column: 1, scope: !6125)
!6133 = !DILocation(line: 25, column: 20, scope: !6125)
!6134 = !DILocation(line: 25, column: 30, scope: !6125)
!6135 = !DILocation(line: 25, column: 49, scope: !6125)
!6136 = !DILocation(line: 25, column: 9, scope: !6125)
!6137 = !DILocation(line: 25, column: 2, scope: !6125)
!6138 = distinct !DISubprogram(name: "ksys_chown", scope: !6139, file: !6139, line: 1217, type: !6140, scopeLine: 1219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6142)
!6139 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!670, !8, !271, !273}
!6142 = !{!6143, !6144, !6145}
!6143 = !DILocalVariable(name: "filename", arg: 1, scope: !6138, file: !6139, line: 1217, type: !8)
!6144 = !DILocalVariable(name: "user", arg: 2, scope: !6138, file: !6139, line: 1217, type: !271)
!6145 = !DILocalVariable(name: "group", arg: 3, scope: !6138, file: !6139, line: 1218, type: !273)
!6146 = !DILocation(line: 1217, column: 50, scope: !6138)
!6147 = !DILocation(line: 1217, column: 66, scope: !6138)
!6148 = !DILocation(line: 1218, column: 16, scope: !6138)
!6149 = !DILocation(line: 1220, column: 31, scope: !6138)
!6150 = !DILocation(line: 1220, column: 41, scope: !6138)
!6151 = !DILocation(line: 1220, column: 47, scope: !6138)
!6152 = !DILocation(line: 1220, column: 9, scope: !6138)
!6153 = !DILocation(line: 1220, column: 2, scope: !6138)
!6154 = !DISubprogram(name: "do_fchownat", scope: !6139, file: !6139, line: 1214, type: !6155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!14, !14, !8, !271, !273, !14}
!6157 = distinct !DISubprogram(name: "__do_sys_lchown16", scope: !1, file: !1, line: 28, type: !6126, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6158)
!6158 = !{!6159, !6160, !6161}
!6159 = !DILocalVariable(name: "filename", arg: 1, scope: !6157, file: !1, line: 28, type: !8)
!6160 = !DILocalVariable(name: "user", arg: 2, scope: !6157, file: !1, line: 28, type: !266)
!6161 = !DILocalVariable(name: "group", arg: 3, scope: !6157, file: !1, line: 28, type: !269)
!6162 = !DILocation(line: 28, column: 1, scope: !6157)
!6163 = !DILocation(line: 30, column: 21, scope: !6157)
!6164 = !DILocation(line: 30, column: 31, scope: !6157)
!6165 = !DILocation(line: 30, column: 50, scope: !6157)
!6166 = !DILocation(line: 30, column: 9, scope: !6157)
!6167 = !DILocation(line: 30, column: 2, scope: !6157)
!6168 = distinct !DISubprogram(name: "ksys_lchown", scope: !6139, file: !6139, line: 1223, type: !6140, scopeLine: 1225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6169)
!6169 = !{!6170, !6171, !6172}
!6170 = !DILocalVariable(name: "filename", arg: 1, scope: !6168, file: !6139, line: 1223, type: !8)
!6171 = !DILocalVariable(name: "user", arg: 2, scope: !6168, file: !6139, line: 1223, type: !271)
!6172 = !DILocalVariable(name: "group", arg: 3, scope: !6168, file: !6139, line: 1224, type: !273)
!6173 = !DILocation(line: 1223, column: 51, scope: !6168)
!6174 = !DILocation(line: 1223, column: 67, scope: !6168)
!6175 = !DILocation(line: 1224, column: 17, scope: !6168)
!6176 = !DILocation(line: 1226, column: 31, scope: !6168)
!6177 = !DILocation(line: 1226, column: 41, scope: !6168)
!6178 = !DILocation(line: 1226, column: 47, scope: !6168)
!6179 = !DILocation(line: 1226, column: 9, scope: !6168)
!6180 = !DILocation(line: 1226, column: 2, scope: !6168)
!6181 = distinct !DISubprogram(name: "__do_sys_fchown16", scope: !1, file: !1, line: 33, type: !6182, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6184)
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!670, !96, !266, !269}
!6184 = !{!6185, !6186, !6187}
!6185 = !DILocalVariable(name: "fd", arg: 1, scope: !6181, file: !1, line: 33, type: !96)
!6186 = !DILocalVariable(name: "user", arg: 2, scope: !6181, file: !1, line: 33, type: !266)
!6187 = !DILocalVariable(name: "group", arg: 3, scope: !6181, file: !1, line: 33, type: !269)
!6188 = !DILocation(line: 33, column: 1, scope: !6181)
!6189 = !DILocation(line: 35, column: 21, scope: !6181)
!6190 = !DILocation(line: 35, column: 25, scope: !6181)
!6191 = !DILocation(line: 35, column: 44, scope: !6181)
!6192 = !DILocation(line: 35, column: 9, scope: !6181)
!6193 = !DILocation(line: 35, column: 2, scope: !6181)
!6194 = !DISubprogram(name: "ksys_fchown", scope: !6139, file: !6139, line: 1180, type: !6195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6195 = !DISubroutineType(types: !6196)
!6196 = !{!14, !96, !271, !273}
!6197 = distinct !DISubprogram(name: "__do_sys_setregid16", scope: !1, file: !1, line: 38, type: !6198, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6200)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{!670, !269, !269}
!6200 = !{!6201, !6202}
!6201 = !DILocalVariable(name: "rgid", arg: 1, scope: !6197, file: !1, line: 38, type: !269)
!6202 = !DILocalVariable(name: "egid", arg: 2, scope: !6197, file: !1, line: 38, type: !269)
!6203 = !DILocation(line: 38, column: 1, scope: !6197)
!6204 = !DILocation(line: 40, column: 24, scope: !6197)
!6205 = !DILocation(line: 40, column: 43, scope: !6197)
!6206 = !DILocation(line: 40, column: 9, scope: !6197)
!6207 = !DILocation(line: 40, column: 2, scope: !6197)
!6208 = !DISubprogram(name: "__sys_setregid", scope: !6209, file: !6209, line: 8, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6209 = !DIFile(filename: "kernel/uid16.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27bfdee462f0c553990152dff066847b")
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!670, !273, !273}
!6212 = distinct !DISubprogram(name: "__do_sys_setgid16", scope: !1, file: !1, line: 43, type: !6213, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6215)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{!670, !269}
!6215 = !{!6216}
!6216 = !DILocalVariable(name: "gid", arg: 1, scope: !6212, file: !1, line: 43, type: !269)
!6217 = !DILocation(line: 43, column: 1, scope: !6212)
!6218 = !DILocation(line: 45, column: 22, scope: !6212)
!6219 = !DILocation(line: 45, column: 9, scope: !6212)
!6220 = !DILocation(line: 45, column: 2, scope: !6212)
!6221 = !DISubprogram(name: "__sys_setgid", scope: !6209, file: !6209, line: 6, type: !6222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{!670, !273}
!6224 = distinct !DISubprogram(name: "__do_sys_setreuid16", scope: !1, file: !1, line: 48, type: !6225, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6227)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!670, !266, !266}
!6227 = !{!6228, !6229}
!6228 = !DILocalVariable(name: "ruid", arg: 1, scope: !6224, file: !1, line: 48, type: !266)
!6229 = !DILocalVariable(name: "euid", arg: 2, scope: !6224, file: !1, line: 48, type: !266)
!6230 = !DILocation(line: 48, column: 1, scope: !6224)
!6231 = !DILocation(line: 50, column: 24, scope: !6224)
!6232 = !DILocation(line: 50, column: 43, scope: !6224)
!6233 = !DILocation(line: 50, column: 9, scope: !6224)
!6234 = !DILocation(line: 50, column: 2, scope: !6224)
!6235 = !DISubprogram(name: "__sys_setreuid", scope: !6209, file: !6209, line: 7, type: !6236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!670, !271, !271}
!6238 = distinct !DISubprogram(name: "__do_sys_setuid16", scope: !1, file: !1, line: 53, type: !6239, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6241)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{!670, !266}
!6241 = !{!6242}
!6242 = !DILocalVariable(name: "uid", arg: 1, scope: !6238, file: !1, line: 53, type: !266)
!6243 = !DILocation(line: 53, column: 1, scope: !6238)
!6244 = !DILocation(line: 55, column: 22, scope: !6238)
!6245 = !DILocation(line: 55, column: 9, scope: !6238)
!6246 = !DILocation(line: 55, column: 2, scope: !6238)
!6247 = !DISubprogram(name: "__sys_setuid", scope: !6209, file: !6209, line: 5, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!670, !271}
!6250 = distinct !DISubprogram(name: "__do_sys_setresuid16", scope: !1, file: !1, line: 58, type: !6251, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!670, !266, !266, !266}
!6253 = !{!6254, !6255, !6256}
!6254 = !DILocalVariable(name: "ruid", arg: 1, scope: !6250, file: !1, line: 58, type: !266)
!6255 = !DILocalVariable(name: "euid", arg: 2, scope: !6250, file: !1, line: 58, type: !266)
!6256 = !DILocalVariable(name: "suid", arg: 3, scope: !6250, file: !1, line: 58, type: !266)
!6257 = !DILocation(line: 58, column: 1, scope: !6250)
!6258 = !DILocation(line: 60, column: 25, scope: !6250)
!6259 = !DILocation(line: 60, column: 44, scope: !6250)
!6260 = !DILocation(line: 61, column: 6, scope: !6250)
!6261 = !DILocation(line: 60, column: 9, scope: !6250)
!6262 = !DILocation(line: 60, column: 2, scope: !6250)
!6263 = !DISubprogram(name: "__sys_setresuid", scope: !6209, file: !6209, line: 9, type: !6264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!670, !271, !271, !271}
!6266 = distinct !DISubprogram(name: "__do_sys_getresuid16", scope: !1, file: !1, line: 64, type: !6267, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6269)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!670, !275, !275, !275}
!6269 = !{!6270, !6271, !6272, !6273, !6274, !6275, !6276, !6277, !6278, !6282, !6283, !6284, !6285, !6286, !6289, !6290, !6291, !6292, !6293, !6296, !6297, !6298, !6299}
!6270 = !DILocalVariable(name: "ruidp", arg: 1, scope: !6266, file: !1, line: 64, type: !275)
!6271 = !DILocalVariable(name: "euidp", arg: 2, scope: !6266, file: !1, line: 64, type: !275)
!6272 = !DILocalVariable(name: "suidp", arg: 3, scope: !6266, file: !1, line: 64, type: !275)
!6273 = !DILocalVariable(name: "cred", scope: !6266, file: !1, line: 66, type: !276)
!6274 = !DILocalVariable(name: "retval", scope: !6266, file: !1, line: 67, type: !14)
!6275 = !DILocalVariable(name: "ruid", scope: !6266, file: !1, line: 68, type: !266)
!6276 = !DILocalVariable(name: "euid", scope: !6266, file: !1, line: 68, type: !266)
!6277 = !DILocalVariable(name: "suid", scope: !6266, file: !1, line: 68, type: !266)
!6278 = !DILocalVariable(name: "__ret_pu", scope: !6279, file: !1, line: 74, type: !14)
!6279 = distinct !DILexicalBlock(scope: !6280, file: !1, line: 74, column: 19)
!6280 = distinct !DILexicalBlock(scope: !6281, file: !1, line: 74, column: 19)
!6281 = distinct !DILexicalBlock(scope: !6266, file: !1, line: 74, column: 6)
!6282 = !DILocalVariable(name: "__ptr_pu", scope: !6279, file: !1, line: 74, type: !12)
!6283 = !DILocalVariable(name: "__val_pu", scope: !6279, file: !1, line: 74, type: !266)
!6284 = !DILocalVariable(name: "__x", scope: !6279, file: !1, line: 74, type: !266)
!6285 = !DILocalVariable(name: "__ptr", scope: !6279, file: !1, line: 74, type: !275)
!6286 = !DILocalVariable(name: "__ret_pu", scope: !6287, file: !1, line: 75, type: !14)
!6287 = distinct !DILexicalBlock(scope: !6288, file: !1, line: 75, column: 19)
!6288 = distinct !DILexicalBlock(scope: !6281, file: !1, line: 75, column: 19)
!6289 = !DILocalVariable(name: "__ptr_pu", scope: !6287, file: !1, line: 75, type: !12)
!6290 = !DILocalVariable(name: "__val_pu", scope: !6287, file: !1, line: 75, type: !266)
!6291 = !DILocalVariable(name: "__x", scope: !6287, file: !1, line: 75, type: !266)
!6292 = !DILocalVariable(name: "__ptr", scope: !6287, file: !1, line: 75, type: !275)
!6293 = !DILocalVariable(name: "__ret_pu", scope: !6294, file: !1, line: 76, type: !14)
!6294 = distinct !DILexicalBlock(scope: !6295, file: !1, line: 76, column: 12)
!6295 = distinct !DILexicalBlock(scope: !6281, file: !1, line: 76, column: 12)
!6296 = !DILocalVariable(name: "__ptr_pu", scope: !6294, file: !1, line: 76, type: !12)
!6297 = !DILocalVariable(name: "__val_pu", scope: !6294, file: !1, line: 76, type: !266)
!6298 = !DILocalVariable(name: "__x", scope: !6294, file: !1, line: 76, type: !266)
!6299 = !DILocalVariable(name: "__ptr", scope: !6294, file: !1, line: 76, type: !275)
!6300 = !DILocation(line: 64, column: 1, scope: !6266)
!6301 = !DILocation(line: 66, column: 2, scope: !6266)
!6302 = !DILocation(line: 66, column: 21, scope: !6266)
!6303 = !DILocation(line: 66, column: 28, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6266, file: !1, line: 66, column: 28)
!6305 = !DILocation(line: 66, column: 28, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6304, file: !1, line: 66, column: 28)
!6307 = !DILocation(line: 67, column: 2, scope: !6266)
!6308 = !DILocation(line: 67, column: 6, scope: !6266)
!6309 = !DILocation(line: 68, column: 2, scope: !6266)
!6310 = !DILocation(line: 68, column: 12, scope: !6266)
!6311 = !DILocation(line: 68, column: 18, scope: !6266)
!6312 = !DILocation(line: 68, column: 24, scope: !6266)
!6313 = !DILocation(line: 70, column: 9, scope: !6266)
!6314 = !DILocation(line: 70, column: 7, scope: !6266)
!6315 = !DILocation(line: 71, column: 9, scope: !6266)
!6316 = !DILocation(line: 71, column: 7, scope: !6266)
!6317 = !DILocation(line: 72, column: 9, scope: !6266)
!6318 = !DILocation(line: 72, column: 7, scope: !6266)
!6319 = !DILocation(line: 74, column: 19, scope: !6280)
!6320 = !DILocation(line: 74, column: 19, scope: !6279)
!6321 = !{i64 2155584829}
!6322 = !DILocation(line: 74, column: 19, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6279, file: !1, line: 74, column: 19)
!6324 = !DILocation(line: 74, column: 19, scope: !6281)
!6325 = !DILocation(line: 74, column: 17, scope: !6281)
!6326 = !DILocation(line: 74, column: 42, scope: !6281)
!6327 = !DILocation(line: 75, column: 19, scope: !6288)
!6328 = !DILocation(line: 75, column: 19, scope: !6287)
!6329 = !{i64 2155585871}
!6330 = !DILocation(line: 75, column: 19, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6287, file: !1, line: 75, column: 19)
!6332 = !DILocation(line: 75, column: 19, scope: !6281)
!6333 = !DILocation(line: 75, column: 17, scope: !6281)
!6334 = !DILocation(line: 74, column: 6, scope: !6266)
!6335 = !DILocation(line: 76, column: 12, scope: !6295)
!6336 = !DILocation(line: 76, column: 12, scope: !6294)
!6337 = !{i64 2155586913}
!6338 = !DILocation(line: 76, column: 12, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6294, file: !1, line: 76, column: 12)
!6340 = !DILocation(line: 76, column: 12, scope: !6281)
!6341 = !DILocation(line: 76, column: 10, scope: !6281)
!6342 = !DILocation(line: 76, column: 3, scope: !6281)
!6343 = !DILocation(line: 78, column: 9, scope: !6266)
!6344 = !DILocation(line: 79, column: 1, scope: !6266)
!6345 = !DILocation(line: 78, column: 2, scope: !6266)
!6346 = distinct !DISubprogram(name: "get_current", scope: !6347, file: !6347, line: 39, type: !6348, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6350)
!6347 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!690}
!6350 = !{!6351, !6353, !6355}
!6351 = !DILocalVariable(name: "pscr_ret__", scope: !6352, file: !6347, line: 41, type: !690)
!6352 = distinct !DILexicalBlock(scope: !6346, file: !6347, line: 41, column: 9)
!6353 = !DILocalVariable(name: "__vpp_verify", scope: !6354, file: !6347, line: 41, type: !2051)
!6354 = distinct !DILexicalBlock(scope: !6352, file: !6347, line: 41, column: 9)
!6355 = !DILocalVariable(name: "pfo_val__", scope: !6356, file: !6347, line: 41, type: !314)
!6356 = distinct !DILexicalBlock(scope: !6352, file: !6347, line: 41, column: 9)
!6357 = !DILocation(line: 41, column: 9, scope: !6352)
!6358 = !DILocation(line: 41, column: 9, scope: !6354)
!6359 = !DILocation(line: 41, column: 9, scope: !6356)
!6360 = !{i64 2148517274}
!6361 = !DILocation(line: 41, column: 9, scope: !6346)
!6362 = !DILocation(line: 41, column: 2, scope: !6346)
!6363 = distinct !DISubprogram(name: "from_kuid_munged", scope: !292, file: !292, line: 163, type: !6364, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6366)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!271, !517, !291}
!6366 = !{!6367, !6368, !6369}
!6367 = !DILocalVariable(name: "to", arg: 1, scope: !6363, file: !292, line: 163, type: !517)
!6368 = !DILocalVariable(name: "kuid", arg: 2, scope: !6363, file: !292, line: 163, type: !291)
!6369 = !DILocalVariable(name: "uid", scope: !6363, file: !292, line: 165, type: !271)
!6370 = !DILocation(line: 163, column: 61, scope: !6363)
!6371 = !DILocation(line: 163, column: 72, scope: !6363)
!6372 = !DILocation(line: 165, column: 2, scope: !6363)
!6373 = !DILocation(line: 165, column: 8, scope: !6363)
!6374 = !DILocation(line: 165, column: 24, scope: !6363)
!6375 = !DILocation(line: 165, column: 14, scope: !6363)
!6376 = !DILocation(line: 166, column: 6, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6363, file: !292, line: 166, column: 6)
!6378 = !DILocation(line: 166, column: 10, scope: !6377)
!6379 = !DILocation(line: 166, column: 6, scope: !6363)
!6380 = !DILocation(line: 167, column: 9, scope: !6377)
!6381 = !DILocation(line: 167, column: 7, scope: !6377)
!6382 = !DILocation(line: 167, column: 3, scope: !6377)
!6383 = !DILocation(line: 168, column: 9, scope: !6363)
!6384 = !DILocation(line: 169, column: 1, scope: !6363)
!6385 = !DILocation(line: 168, column: 2, scope: !6363)
!6386 = distinct !DISubprogram(name: "might_fault", scope: !6387, file: !6387, line: 202, type: !2640, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!6387 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6388 = !DILocation(line: 202, column: 40, scope: !6386)
!6389 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6390, file: !6390, line: 76, type: !6391, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6393)
!6390 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6391 = !DISubroutineType(types: !6392)
!6392 = !{null, !12, !2051, !27, !27}
!6393 = !{!6394, !6395, !6396, !6397}
!6394 = !DILocalVariable(name: "to", arg: 1, scope: !6389, file: !6390, line: 76, type: !12)
!6395 = !DILocalVariable(name: "from", arg: 2, scope: !6389, file: !6390, line: 76, type: !2051)
!6396 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6389, file: !6390, line: 77, type: !27)
!6397 = !DILocalVariable(name: "left", arg: 4, scope: !6389, file: !6390, line: 77, type: !27)
!6398 = !DILocation(line: 76, column: 52, scope: !6389)
!6399 = !DILocation(line: 76, column: 68, scope: !6389)
!6400 = !DILocation(line: 77, column: 18, scope: !6389)
!6401 = !DILocation(line: 77, column: 34, scope: !6389)
!6402 = !DILocation(line: 79, column: 1, scope: !6389)
!6403 = distinct !DISubprogram(name: "from_kuid", scope: !292, file: !292, line: 153, type: !6364, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6404)
!6404 = !{!6405, !6406}
!6405 = !DILocalVariable(name: "to", arg: 1, scope: !6403, file: !292, line: 153, type: !517)
!6406 = !DILocalVariable(name: "kuid", arg: 2, scope: !6403, file: !292, line: 153, type: !291)
!6407 = !DILocation(line: 153, column: 54, scope: !6403)
!6408 = !DILocation(line: 153, column: 65, scope: !6403)
!6409 = !DILocation(line: 155, column: 9, scope: !6403)
!6410 = !DILocation(line: 155, column: 2, scope: !6403)
!6411 = distinct !DISubprogram(name: "__kuid_val", scope: !292, file: !292, line: 34, type: !6412, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6414)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!271, !291}
!6414 = !{!6415}
!6415 = !DILocalVariable(name: "uid", arg: 1, scope: !6411, file: !292, line: 34, type: !291)
!6416 = !DILocation(line: 34, column: 39, scope: !6411)
!6417 = !DILocation(line: 36, column: 13, scope: !6411)
!6418 = !DILocation(line: 36, column: 2, scope: !6411)
!6419 = distinct !DISubprogram(name: "__do_sys_setresgid16", scope: !1, file: !1, line: 81, type: !6420, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6422)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!670, !269, !269, !269}
!6422 = !{!6423, !6424, !6425}
!6423 = !DILocalVariable(name: "rgid", arg: 1, scope: !6419, file: !1, line: 81, type: !269)
!6424 = !DILocalVariable(name: "egid", arg: 2, scope: !6419, file: !1, line: 81, type: !269)
!6425 = !DILocalVariable(name: "sgid", arg: 3, scope: !6419, file: !1, line: 81, type: !269)
!6426 = !DILocation(line: 81, column: 1, scope: !6419)
!6427 = !DILocation(line: 83, column: 25, scope: !6419)
!6428 = !DILocation(line: 83, column: 44, scope: !6419)
!6429 = !DILocation(line: 84, column: 6, scope: !6419)
!6430 = !DILocation(line: 83, column: 9, scope: !6419)
!6431 = !DILocation(line: 83, column: 2, scope: !6419)
!6432 = !DISubprogram(name: "__sys_setresgid", scope: !6209, file: !6209, line: 10, type: !6433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!670, !273, !273, !273}
!6435 = distinct !DISubprogram(name: "__do_sys_getresgid16", scope: !1, file: !1, line: 87, type: !6436, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6438)
!6436 = !DISubroutineType(types: !6437)
!6437 = !{!670, !5789, !5789, !5789}
!6438 = !{!6439, !6440, !6441, !6442, !6443, !6444, !6445, !6446, !6447, !6451, !6452, !6453, !6454, !6455, !6458, !6459, !6460, !6461, !6462, !6465, !6466, !6467, !6468}
!6439 = !DILocalVariable(name: "rgidp", arg: 1, scope: !6435, file: !1, line: 87, type: !5789)
!6440 = !DILocalVariable(name: "egidp", arg: 2, scope: !6435, file: !1, line: 87, type: !5789)
!6441 = !DILocalVariable(name: "sgidp", arg: 3, scope: !6435, file: !1, line: 87, type: !5789)
!6442 = !DILocalVariable(name: "cred", scope: !6435, file: !1, line: 89, type: !276)
!6443 = !DILocalVariable(name: "retval", scope: !6435, file: !1, line: 90, type: !14)
!6444 = !DILocalVariable(name: "rgid", scope: !6435, file: !1, line: 91, type: !269)
!6445 = !DILocalVariable(name: "egid", scope: !6435, file: !1, line: 91, type: !269)
!6446 = !DILocalVariable(name: "sgid", scope: !6435, file: !1, line: 91, type: !269)
!6447 = !DILocalVariable(name: "__ret_pu", scope: !6448, file: !1, line: 97, type: !14)
!6448 = distinct !DILexicalBlock(scope: !6449, file: !1, line: 97, column: 19)
!6449 = distinct !DILexicalBlock(scope: !6450, file: !1, line: 97, column: 19)
!6450 = distinct !DILexicalBlock(scope: !6435, file: !1, line: 97, column: 6)
!6451 = !DILocalVariable(name: "__ptr_pu", scope: !6448, file: !1, line: 97, type: !12)
!6452 = !DILocalVariable(name: "__val_pu", scope: !6448, file: !1, line: 97, type: !269)
!6453 = !DILocalVariable(name: "__x", scope: !6448, file: !1, line: 97, type: !269)
!6454 = !DILocalVariable(name: "__ptr", scope: !6448, file: !1, line: 97, type: !5789)
!6455 = !DILocalVariable(name: "__ret_pu", scope: !6456, file: !1, line: 98, type: !14)
!6456 = distinct !DILexicalBlock(scope: !6457, file: !1, line: 98, column: 19)
!6457 = distinct !DILexicalBlock(scope: !6450, file: !1, line: 98, column: 19)
!6458 = !DILocalVariable(name: "__ptr_pu", scope: !6456, file: !1, line: 98, type: !12)
!6459 = !DILocalVariable(name: "__val_pu", scope: !6456, file: !1, line: 98, type: !269)
!6460 = !DILocalVariable(name: "__x", scope: !6456, file: !1, line: 98, type: !269)
!6461 = !DILocalVariable(name: "__ptr", scope: !6456, file: !1, line: 98, type: !5789)
!6462 = !DILocalVariable(name: "__ret_pu", scope: !6463, file: !1, line: 99, type: !14)
!6463 = distinct !DILexicalBlock(scope: !6464, file: !1, line: 99, column: 12)
!6464 = distinct !DILexicalBlock(scope: !6450, file: !1, line: 99, column: 12)
!6465 = !DILocalVariable(name: "__ptr_pu", scope: !6463, file: !1, line: 99, type: !12)
!6466 = !DILocalVariable(name: "__val_pu", scope: !6463, file: !1, line: 99, type: !269)
!6467 = !DILocalVariable(name: "__x", scope: !6463, file: !1, line: 99, type: !269)
!6468 = !DILocalVariable(name: "__ptr", scope: !6463, file: !1, line: 99, type: !5789)
!6469 = !DILocation(line: 87, column: 1, scope: !6435)
!6470 = !DILocation(line: 89, column: 2, scope: !6435)
!6471 = !DILocation(line: 89, column: 21, scope: !6435)
!6472 = !DILocation(line: 89, column: 28, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6435, file: !1, line: 89, column: 28)
!6474 = !DILocation(line: 89, column: 28, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6473, file: !1, line: 89, column: 28)
!6476 = !DILocation(line: 90, column: 2, scope: !6435)
!6477 = !DILocation(line: 90, column: 6, scope: !6435)
!6478 = !DILocation(line: 91, column: 2, scope: !6435)
!6479 = !DILocation(line: 91, column: 12, scope: !6435)
!6480 = !DILocation(line: 91, column: 18, scope: !6435)
!6481 = !DILocation(line: 91, column: 24, scope: !6435)
!6482 = !DILocation(line: 93, column: 9, scope: !6435)
!6483 = !DILocation(line: 93, column: 7, scope: !6435)
!6484 = !DILocation(line: 94, column: 9, scope: !6435)
!6485 = !DILocation(line: 94, column: 7, scope: !6435)
!6486 = !DILocation(line: 95, column: 9, scope: !6435)
!6487 = !DILocation(line: 95, column: 7, scope: !6435)
!6488 = !DILocation(line: 97, column: 19, scope: !6449)
!6489 = !DILocation(line: 97, column: 19, scope: !6448)
!6490 = !{i64 2155619158}
!6491 = !DILocation(line: 97, column: 19, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6448, file: !1, line: 97, column: 19)
!6493 = !DILocation(line: 97, column: 19, scope: !6450)
!6494 = !DILocation(line: 97, column: 17, scope: !6450)
!6495 = !DILocation(line: 97, column: 42, scope: !6450)
!6496 = !DILocation(line: 98, column: 19, scope: !6457)
!6497 = !DILocation(line: 98, column: 19, scope: !6456)
!6498 = !{i64 2155620200}
!6499 = !DILocation(line: 98, column: 19, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6456, file: !1, line: 98, column: 19)
!6501 = !DILocation(line: 98, column: 19, scope: !6450)
!6502 = !DILocation(line: 98, column: 17, scope: !6450)
!6503 = !DILocation(line: 97, column: 6, scope: !6435)
!6504 = !DILocation(line: 99, column: 12, scope: !6464)
!6505 = !DILocation(line: 99, column: 12, scope: !6463)
!6506 = !{i64 2155621242}
!6507 = !DILocation(line: 99, column: 12, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6463, file: !1, line: 99, column: 12)
!6509 = !DILocation(line: 99, column: 12, scope: !6450)
!6510 = !DILocation(line: 99, column: 10, scope: !6450)
!6511 = !DILocation(line: 99, column: 3, scope: !6450)
!6512 = !DILocation(line: 101, column: 9, scope: !6435)
!6513 = !DILocation(line: 102, column: 1, scope: !6435)
!6514 = !DILocation(line: 101, column: 2, scope: !6435)
!6515 = distinct !DISubprogram(name: "from_kgid_munged", scope: !292, file: !292, line: 171, type: !6516, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6518)
!6516 = !DISubroutineType(types: !6517)
!6517 = !{!273, !517, !297}
!6518 = !{!6519, !6520, !6521}
!6519 = !DILocalVariable(name: "to", arg: 1, scope: !6515, file: !292, line: 171, type: !517)
!6520 = !DILocalVariable(name: "kgid", arg: 2, scope: !6515, file: !292, line: 171, type: !297)
!6521 = !DILocalVariable(name: "gid", scope: !6515, file: !292, line: 173, type: !273)
!6522 = !DILocation(line: 171, column: 61, scope: !6515)
!6523 = !DILocation(line: 171, column: 72, scope: !6515)
!6524 = !DILocation(line: 173, column: 2, scope: !6515)
!6525 = !DILocation(line: 173, column: 8, scope: !6515)
!6526 = !DILocation(line: 173, column: 24, scope: !6515)
!6527 = !DILocation(line: 173, column: 14, scope: !6515)
!6528 = !DILocation(line: 174, column: 6, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6515, file: !292, line: 174, column: 6)
!6530 = !DILocation(line: 174, column: 10, scope: !6529)
!6531 = !DILocation(line: 174, column: 6, scope: !6515)
!6532 = !DILocation(line: 175, column: 9, scope: !6529)
!6533 = !DILocation(line: 175, column: 7, scope: !6529)
!6534 = !DILocation(line: 175, column: 3, scope: !6529)
!6535 = !DILocation(line: 176, column: 9, scope: !6515)
!6536 = !DILocation(line: 177, column: 1, scope: !6515)
!6537 = !DILocation(line: 176, column: 2, scope: !6515)
!6538 = distinct !DISubprogram(name: "from_kgid", scope: !292, file: !292, line: 158, type: !6516, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6539)
!6539 = !{!6540, !6541}
!6540 = !DILocalVariable(name: "to", arg: 1, scope: !6538, file: !292, line: 158, type: !517)
!6541 = !DILocalVariable(name: "kgid", arg: 2, scope: !6538, file: !292, line: 158, type: !297)
!6542 = !DILocation(line: 158, column: 54, scope: !6538)
!6543 = !DILocation(line: 158, column: 65, scope: !6538)
!6544 = !DILocation(line: 160, column: 9, scope: !6538)
!6545 = !DILocation(line: 160, column: 2, scope: !6538)
!6546 = distinct !DISubprogram(name: "__kgid_val", scope: !292, file: !292, line: 39, type: !6547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6549)
!6547 = !DISubroutineType(types: !6548)
!6548 = !{!273, !297}
!6549 = !{!6550}
!6550 = !DILocalVariable(name: "gid", arg: 1, scope: !6546, file: !292, line: 39, type: !297)
!6551 = !DILocation(line: 39, column: 39, scope: !6546)
!6552 = !DILocation(line: 41, column: 13, scope: !6546)
!6553 = !DILocation(line: 41, column: 2, scope: !6546)
!6554 = distinct !DISubprogram(name: "__do_sys_setfsuid16", scope: !1, file: !1, line: 104, type: !6239, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6555)
!6555 = !{!6556}
!6556 = !DILocalVariable(name: "uid", arg: 1, scope: !6554, file: !1, line: 104, type: !266)
!6557 = !DILocation(line: 104, column: 1, scope: !6554)
!6558 = !DILocation(line: 106, column: 24, scope: !6554)
!6559 = !DILocation(line: 106, column: 9, scope: !6554)
!6560 = !DILocation(line: 106, column: 2, scope: !6554)
!6561 = !DISubprogram(name: "__sys_setfsuid", scope: !6209, file: !6209, line: 11, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6562 = distinct !DISubprogram(name: "__do_sys_setfsgid16", scope: !1, file: !1, line: 109, type: !6213, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6563)
!6563 = !{!6564}
!6564 = !DILocalVariable(name: "gid", arg: 1, scope: !6562, file: !1, line: 109, type: !269)
!6565 = !DILocation(line: 109, column: 1, scope: !6562)
!6566 = !DILocation(line: 111, column: 24, scope: !6562)
!6567 = !DILocation(line: 111, column: 9, scope: !6562)
!6568 = !DILocation(line: 111, column: 2, scope: !6562)
!6569 = !DISubprogram(name: "__sys_setfsgid", scope: !6209, file: !6209, line: 12, type: !6222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6570 = distinct !DISubprogram(name: "__do_sys_getgroups16", scope: !1, file: !1, line: 154, type: !6571, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6573)
!6571 = !DISubroutineType(types: !6572)
!6572 = !{!670, !14, !5789}
!6573 = !{!6574, !6575, !6576, !6577, !6578}
!6574 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6570, file: !1, line: 154, type: !14)
!6575 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6570, file: !1, line: 154, type: !5789)
!6576 = !DILocalVariable(name: "cred", scope: !6570, file: !1, line: 156, type: !276)
!6577 = !DILocalVariable(name: "i", scope: !6570, file: !1, line: 157, type: !14)
!6578 = !DILabel(scope: !6570, name: "out", file: !1, line: 173)
!6579 = !DILocation(line: 154, column: 1, scope: !6570)
!6580 = !DILocation(line: 156, column: 2, scope: !6570)
!6581 = !DILocation(line: 156, column: 21, scope: !6570)
!6582 = !DILocation(line: 156, column: 28, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6570, file: !1, line: 156, column: 28)
!6584 = !DILocation(line: 156, column: 28, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6583, file: !1, line: 156, column: 28)
!6586 = !DILocation(line: 157, column: 2, scope: !6570)
!6587 = !DILocation(line: 157, column: 6, scope: !6570)
!6588 = !DILocation(line: 159, column: 6, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6570, file: !1, line: 159, column: 6)
!6590 = !DILocation(line: 159, column: 17, scope: !6589)
!6591 = !DILocation(line: 159, column: 6, scope: !6570)
!6592 = !DILocation(line: 160, column: 3, scope: !6589)
!6593 = !DILocation(line: 162, column: 6, scope: !6570)
!6594 = !DILocation(line: 162, column: 12, scope: !6570)
!6595 = !DILocation(line: 162, column: 24, scope: !6570)
!6596 = !DILocation(line: 162, column: 4, scope: !6570)
!6597 = !DILocation(line: 163, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6570, file: !1, line: 163, column: 6)
!6599 = !DILocation(line: 163, column: 6, scope: !6570)
!6600 = !DILocation(line: 164, column: 7, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6602, file: !1, line: 164, column: 7)
!6602 = distinct !DILexicalBlock(scope: !6598, file: !1, line: 163, column: 18)
!6603 = !DILocation(line: 164, column: 11, scope: !6601)
!6604 = !DILocation(line: 164, column: 9, scope: !6601)
!6605 = !DILocation(line: 164, column: 7, scope: !6602)
!6606 = !DILocation(line: 165, column: 6, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6601, file: !1, line: 164, column: 23)
!6608 = !DILocation(line: 166, column: 4, scope: !6607)
!6609 = !DILocation(line: 168, column: 24, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6602, file: !1, line: 168, column: 7)
!6611 = !DILocation(line: 168, column: 35, scope: !6610)
!6612 = !DILocation(line: 168, column: 41, scope: !6610)
!6613 = !DILocation(line: 168, column: 7, scope: !6610)
!6614 = !DILocation(line: 168, column: 7, scope: !6602)
!6615 = !DILocation(line: 169, column: 6, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6610, file: !1, line: 168, column: 54)
!6617 = !DILocation(line: 170, column: 4, scope: !6616)
!6618 = !DILocation(line: 172, column: 2, scope: !6602)
!6619 = !DILocation(line: 173, column: 1, scope: !6570)
!6620 = !DILocation(line: 174, column: 9, scope: !6570)
!6621 = !DILocation(line: 174, column: 2, scope: !6570)
!6622 = !DILocation(line: 175, column: 1, scope: !6570)
!6623 = distinct !DISubprogram(name: "groups16_to_user", scope: !1, file: !1, line: 114, type: !6624, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6626)
!6624 = !DISubroutineType(types: !6625)
!6625 = !{!14, !5789, !675}
!6626 = !{!6627, !6628, !6629, !6630, !6631, !6632, !6633, !6640, !6641, !6642, !6643}
!6627 = !DILocalVariable(name: "grouplist", arg: 1, scope: !6623, file: !1, line: 114, type: !5789)
!6628 = !DILocalVariable(name: "group_info", arg: 2, scope: !6623, file: !1, line: 115, type: !675)
!6629 = !DILocalVariable(name: "user_ns", scope: !6623, file: !1, line: 117, type: !517)
!6630 = !DILocalVariable(name: "i", scope: !6623, file: !1, line: 118, type: !14)
!6631 = !DILocalVariable(name: "group", scope: !6623, file: !1, line: 119, type: !269)
!6632 = !DILocalVariable(name: "kgid", scope: !6623, file: !1, line: 120, type: !297)
!6633 = !DILocalVariable(name: "__ret_pu", scope: !6634, file: !1, line: 125, type: !14)
!6634 = distinct !DILexicalBlock(scope: !6635, file: !1, line: 125, column: 7)
!6635 = distinct !DILexicalBlock(scope: !6636, file: !1, line: 125, column: 7)
!6636 = distinct !DILexicalBlock(scope: !6637, file: !1, line: 125, column: 7)
!6637 = distinct !DILexicalBlock(scope: !6638, file: !1, line: 122, column: 44)
!6638 = distinct !DILexicalBlock(scope: !6639, file: !1, line: 122, column: 2)
!6639 = distinct !DILexicalBlock(scope: !6623, file: !1, line: 122, column: 2)
!6640 = !DILocalVariable(name: "__ptr_pu", scope: !6634, file: !1, line: 125, type: !12)
!6641 = !DILocalVariable(name: "__val_pu", scope: !6634, file: !1, line: 125, type: !269)
!6642 = !DILocalVariable(name: "__x", scope: !6634, file: !1, line: 125, type: !269)
!6643 = !DILocalVariable(name: "__ptr", scope: !6634, file: !1, line: 125, type: !5789)
!6644 = !DILocation(line: 114, column: 47, scope: !6623)
!6645 = !DILocation(line: 115, column: 24, scope: !6623)
!6646 = !DILocation(line: 117, column: 2, scope: !6623)
!6647 = !DILocation(line: 117, column: 25, scope: !6623)
!6648 = !DILocation(line: 117, column: 35, scope: !6623)
!6649 = !DILocation(line: 118, column: 2, scope: !6623)
!6650 = !DILocation(line: 118, column: 6, scope: !6623)
!6651 = !DILocation(line: 119, column: 2, scope: !6623)
!6652 = !DILocation(line: 119, column: 12, scope: !6623)
!6653 = !DILocation(line: 120, column: 2, scope: !6623)
!6654 = !DILocation(line: 120, column: 9, scope: !6623)
!6655 = !DILocation(line: 122, column: 9, scope: !6639)
!6656 = !DILocation(line: 122, column: 7, scope: !6639)
!6657 = !DILocation(line: 122, column: 14, scope: !6638)
!6658 = !DILocation(line: 122, column: 18, scope: !6638)
!6659 = !DILocation(line: 122, column: 30, scope: !6638)
!6660 = !DILocation(line: 122, column: 16, scope: !6638)
!6661 = !DILocation(line: 122, column: 2, scope: !6639)
!6662 = !DILocation(line: 123, column: 10, scope: !6637)
!6663 = !DILocation(line: 123, column: 22, scope: !6637)
!6664 = !DILocation(line: 123, column: 26, scope: !6637)
!6665 = !DILocation(line: 124, column: 11, scope: !6637)
!6666 = !DILocation(line: 124, column: 9, scope: !6637)
!6667 = !DILocation(line: 125, column: 7, scope: !6635)
!6668 = !DILocation(line: 125, column: 7, scope: !6634)
!6669 = !{i64 2155633534}
!6670 = !DILocation(line: 125, column: 7, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6634, file: !1, line: 125, column: 7)
!6672 = !DILocation(line: 125, column: 7, scope: !6636)
!6673 = !DILocation(line: 125, column: 7, scope: !6637)
!6674 = !DILocation(line: 126, column: 4, scope: !6636)
!6675 = !DILocation(line: 127, column: 2, scope: !6637)
!6676 = !DILocation(line: 122, column: 40, scope: !6638)
!6677 = !DILocation(line: 122, column: 2, scope: !6638)
!6678 = distinct !{!6678, !6661, !6679, !6680, !6681}
!6679 = !DILocation(line: 127, column: 2, scope: !6639)
!6680 = !{!"llvm.loop.mustprogress"}
!6681 = !{!"llvm.loop.unroll.disable"}
!6682 = !DILocation(line: 129, column: 2, scope: !6623)
!6683 = !DILocation(line: 130, column: 1, scope: !6623)
!6684 = distinct !DISubprogram(name: "current_user_ns", scope: !279, file: !279, line: 346, type: !6685, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!6685 = !DISubroutineType(types: !6686)
!6686 = !{!517}
!6687 = !DILocation(line: 348, column: 2, scope: !6684)
!6688 = distinct !DISubprogram(name: "__do_sys_setgroups16", scope: !1, file: !1, line: 177, type: !6571, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6689)
!6689 = !{!6690, !6691, !6692, !6693}
!6690 = !DILocalVariable(name: "gidsetsize", arg: 1, scope: !6688, file: !1, line: 177, type: !14)
!6691 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6688, file: !1, line: 177, type: !5789)
!6692 = !DILocalVariable(name: "group_info", scope: !6688, file: !1, line: 179, type: !675)
!6693 = !DILocalVariable(name: "retval", scope: !6688, file: !1, line: 180, type: !14)
!6694 = !DILocation(line: 177, column: 1, scope: !6688)
!6695 = !DILocation(line: 179, column: 2, scope: !6688)
!6696 = !DILocation(line: 179, column: 21, scope: !6688)
!6697 = !DILocation(line: 180, column: 2, scope: !6688)
!6698 = !DILocation(line: 180, column: 6, scope: !6688)
!6699 = !DILocation(line: 182, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6688, file: !1, line: 182, column: 6)
!6701 = !DILocation(line: 182, column: 6, scope: !6688)
!6702 = !DILocation(line: 183, column: 3, scope: !6700)
!6703 = !DILocation(line: 184, column: 16, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6688, file: !1, line: 184, column: 6)
!6705 = !DILocation(line: 184, column: 27, scope: !6704)
!6706 = !DILocation(line: 184, column: 6, scope: !6688)
!6707 = !DILocation(line: 185, column: 3, scope: !6704)
!6708 = !DILocation(line: 187, column: 28, scope: !6688)
!6709 = !DILocation(line: 187, column: 15, scope: !6688)
!6710 = !DILocation(line: 187, column: 13, scope: !6688)
!6711 = !DILocation(line: 188, column: 7, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6688, file: !1, line: 188, column: 6)
!6713 = !DILocation(line: 188, column: 6, scope: !6688)
!6714 = !DILocation(line: 189, column: 3, scope: !6712)
!6715 = !DILocation(line: 190, column: 30, scope: !6688)
!6716 = !DILocation(line: 190, column: 42, scope: !6688)
!6717 = !DILocation(line: 190, column: 11, scope: !6688)
!6718 = !DILocation(line: 190, column: 9, scope: !6688)
!6719 = !DILocation(line: 191, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6688, file: !1, line: 191, column: 6)
!6721 = !DILocation(line: 191, column: 6, scope: !6688)
!6722 = !DILocation(line: 192, column: 3, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6720, file: !1, line: 191, column: 14)
!6724 = !DILocation(line: 192, column: 3, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6726, file: !1, line: 192, column: 3)
!6726 = distinct !DILexicalBlock(scope: !6723, file: !1, line: 192, column: 3)
!6727 = !DILocation(line: 192, column: 3, scope: !6726)
!6728 = !DILocation(line: 193, column: 10, scope: !6723)
!6729 = !DILocation(line: 193, column: 3, scope: !6723)
!6730 = !DILocation(line: 196, column: 14, scope: !6688)
!6731 = !DILocation(line: 196, column: 2, scope: !6688)
!6732 = !DILocation(line: 197, column: 30, scope: !6688)
!6733 = !DILocation(line: 197, column: 11, scope: !6688)
!6734 = !DILocation(line: 197, column: 9, scope: !6688)
!6735 = !DILocation(line: 198, column: 2, scope: !6688)
!6736 = !DILocation(line: 198, column: 2, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6738, file: !1, line: 198, column: 2)
!6738 = distinct !DILexicalBlock(scope: !6688, file: !1, line: 198, column: 2)
!6739 = !DILocation(line: 198, column: 2, scope: !6738)
!6740 = !DILocation(line: 200, column: 9, scope: !6688)
!6741 = !DILocation(line: 200, column: 2, scope: !6688)
!6742 = !DILocation(line: 201, column: 1, scope: !6688)
!6743 = !DISubprogram(name: "may_setgroups", scope: !279, file: !279, line: 66, type: !2041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6744 = !DISubprogram(name: "groups_alloc", scope: !279, file: !279, line: 57, type: !6745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6745 = !DISubroutineType(types: !6746)
!6746 = !{!675, !14}
!6747 = distinct !DISubprogram(name: "groups16_from_user", scope: !1, file: !1, line: 132, type: !6748, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6750)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{!14, !675, !5789}
!6750 = !{!6751, !6752, !6753, !6754, !6755, !6756, !6757, !6764, !6765}
!6751 = !DILocalVariable(name: "group_info", arg: 1, scope: !6747, file: !1, line: 132, type: !675)
!6752 = !DILocalVariable(name: "grouplist", arg: 2, scope: !6747, file: !1, line: 133, type: !5789)
!6753 = !DILocalVariable(name: "user_ns", scope: !6747, file: !1, line: 135, type: !517)
!6754 = !DILocalVariable(name: "i", scope: !6747, file: !1, line: 136, type: !14)
!6755 = !DILocalVariable(name: "group", scope: !6747, file: !1, line: 137, type: !269)
!6756 = !DILocalVariable(name: "kgid", scope: !6747, file: !1, line: 138, type: !297)
!6757 = !DILocalVariable(name: "__ret_gu", scope: !6758, file: !1, line: 141, type: !14)
!6758 = distinct !DILexicalBlock(scope: !6759, file: !1, line: 141, column: 7)
!6759 = distinct !DILexicalBlock(scope: !6760, file: !1, line: 141, column: 7)
!6760 = distinct !DILexicalBlock(scope: !6761, file: !1, line: 141, column: 7)
!6761 = distinct !DILexicalBlock(scope: !6762, file: !1, line: 140, column: 44)
!6762 = distinct !DILexicalBlock(scope: !6763, file: !1, line: 140, column: 2)
!6763 = distinct !DILexicalBlock(scope: !6747, file: !1, line: 140, column: 2)
!6764 = !DILocalVariable(name: "__val_gu", scope: !6758, file: !1, line: 141, type: !18)
!6765 = !DILocalVariable(name: "__tmp", scope: !6766, file: !1, line: 141, type: !314)
!6766 = distinct !DILexicalBlock(scope: !6758, file: !1, line: 141, column: 7)
!6767 = !DILocation(line: 132, column: 50, scope: !6747)
!6768 = !DILocation(line: 133, column: 23, scope: !6747)
!6769 = !DILocation(line: 135, column: 2, scope: !6747)
!6770 = !DILocation(line: 135, column: 25, scope: !6747)
!6771 = !DILocation(line: 135, column: 35, scope: !6747)
!6772 = !DILocation(line: 136, column: 2, scope: !6747)
!6773 = !DILocation(line: 136, column: 6, scope: !6747)
!6774 = !DILocation(line: 137, column: 2, scope: !6747)
!6775 = !DILocation(line: 137, column: 12, scope: !6747)
!6776 = !DILocation(line: 138, column: 2, scope: !6747)
!6777 = !DILocation(line: 138, column: 9, scope: !6747)
!6778 = !DILocation(line: 140, column: 9, scope: !6763)
!6779 = !DILocation(line: 140, column: 7, scope: !6763)
!6780 = !DILocation(line: 140, column: 14, scope: !6762)
!6781 = !DILocation(line: 140, column: 18, scope: !6762)
!6782 = !DILocation(line: 140, column: 30, scope: !6762)
!6783 = !DILocation(line: 140, column: 16, scope: !6762)
!6784 = !DILocation(line: 140, column: 2, scope: !6763)
!6785 = !DILocation(line: 141, column: 7, scope: !6759)
!6786 = !DILocation(line: 141, column: 7, scope: !6758)
!6787 = !{i64 2155634449}
!6788 = !DILocation(line: 141, column: 7, scope: !6766)
!6789 = !DILocation(line: 141, column: 7, scope: !6760)
!6790 = !DILocation(line: 141, column: 7, scope: !6761)
!6791 = !DILocation(line: 142, column: 4, scope: !6760)
!6792 = !DILocation(line: 144, column: 10, scope: !6761)
!6793 = !DILocation(line: 144, column: 20, scope: !6761)
!6794 = !DILocation(line: 144, column: 29, scope: !6761)
!6795 = !DILocation(line: 145, column: 8, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6761, file: !1, line: 145, column: 7)
!6797 = !DILocation(line: 145, column: 7, scope: !6761)
!6798 = !DILocation(line: 146, column: 4, scope: !6796)
!6799 = !DILocation(line: 148, column: 3, scope: !6761)
!6800 = !DILocation(line: 148, column: 15, scope: !6761)
!6801 = !DILocation(line: 148, column: 19, scope: !6761)
!6802 = !DILocation(line: 148, column: 24, scope: !6761)
!6803 = !DILocation(line: 149, column: 2, scope: !6761)
!6804 = !DILocation(line: 140, column: 40, scope: !6762)
!6805 = !DILocation(line: 140, column: 2, scope: !6762)
!6806 = distinct !{!6806, !6784, !6807, !6680, !6681}
!6807 = !DILocation(line: 149, column: 2, scope: !6763)
!6808 = !DILocation(line: 151, column: 2, scope: !6747)
!6809 = !DILocation(line: 152, column: 1, scope: !6747)
!6810 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !6811, file: !6811, line: 1372, type: !6812, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6815)
!6811 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!425, !6814}
!6814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!6815 = !{!6816}
!6816 = !DILocalVariable(name: "v", arg: 1, scope: !6810, file: !6811, line: 1372, type: !6814)
!6817 = !DILocation(line: 1372, column: 31, scope: !6810)
!6818 = !DILocation(line: 1374, column: 2, scope: !6810)
!6819 = !DILocation(line: 1374, column: 2, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6810, file: !6811, line: 1374, column: 2)
!6821 = !DILocation(line: 1375, column: 31, scope: !6810)
!6822 = !DILocation(line: 1375, column: 2, scope: !6810)
!6823 = !DILocation(line: 1376, column: 33, scope: !6810)
!6824 = !DILocation(line: 1376, column: 9, scope: !6810)
!6825 = !DILocation(line: 1376, column: 2, scope: !6810)
!6826 = !DISubprogram(name: "groups_free", scope: !279, file: !279, line: 58, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{null, !675}
!6829 = !DISubprogram(name: "groups_sort", scope: !279, file: !279, line: 67, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6830 = !DISubprogram(name: "set_current_groups", scope: !279, file: !279, line: 64, type: !6831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6831 = !DISubroutineType(types: !6832)
!6832 = !{!14, !675}
!6833 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6390, file: !6390, line: 70, type: !6834, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6836)
!6834 = !DISubroutineType(types: !6835)
!6835 = !{null, !2051, !27}
!6836 = !{!6837, !6838}
!6837 = !DILocalVariable(name: "address", arg: 1, scope: !6833, file: !6390, line: 70, type: !2051)
!6838 = !DILocalVariable(name: "size", arg: 2, scope: !6833, file: !6390, line: 70, type: !27)
!6839 = !DILocation(line: 70, column: 54, scope: !6833)
!6840 = !DILocation(line: 70, column: 70, scope: !6833)
!6841 = !DILocation(line: 72, column: 1, scope: !6833)
!6842 = distinct !DISubprogram(name: "make_kgid", scope: !292, file: !292, line: 148, type: !6843, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6845)
!6843 = !DISubroutineType(types: !6844)
!6844 = !{!297, !517, !273}
!6845 = !{!6846, !6847}
!6846 = !DILocalVariable(name: "from", arg: 1, scope: !6842, file: !292, line: 148, type: !517)
!6847 = !DILocalVariable(name: "gid", arg: 2, scope: !6842, file: !292, line: 148, type: !273)
!6848 = !DILocation(line: 148, column: 55, scope: !6842)
!6849 = !DILocation(line: 148, column: 67, scope: !6842)
!6850 = !DILocation(line: 150, column: 9, scope: !6842)
!6851 = !DILocation(line: 150, column: 2, scope: !6842)
!6852 = distinct !DISubprogram(name: "gid_valid", scope: !292, file: !292, line: 116, type: !6853, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6855)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{!425, !297}
!6855 = !{!6856}
!6856 = !DILocalVariable(name: "gid", arg: 1, scope: !6852, file: !292, line: 116, type: !297)
!6857 = !DILocation(line: 116, column: 37, scope: !6852)
!6858 = !DILocation(line: 118, column: 9, scope: !6852)
!6859 = !DILocation(line: 118, column: 25, scope: !6852)
!6860 = !DILocation(line: 118, column: 2, scope: !6852)
!6861 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6862, file: !6862, line: 94, type: !6863, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6868)
!6862 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6863 = !DISubroutineType(types: !6864)
!6864 = !{null, !6865, !27}
!6865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6866, size: 64)
!6866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6867)
!6867 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6868 = !{!6869, !6870}
!6869 = !DILocalVariable(name: "v", arg: 1, scope: !6861, file: !6862, line: 94, type: !6865)
!6870 = !DILocalVariable(name: "size", arg: 2, scope: !6861, file: !6862, line: 94, type: !27)
!6871 = !DILocation(line: 94, column: 79, scope: !6861)
!6872 = !DILocation(line: 94, column: 89, scope: !6861)
!6873 = !DILocation(line: 96, column: 20, scope: !6861)
!6874 = !DILocation(line: 96, column: 23, scope: !6861)
!6875 = !DILocation(line: 96, column: 2, scope: !6861)
!6876 = !DILocation(line: 97, column: 2, scope: !6861)
!6877 = !DILocation(line: 98, column: 1, scope: !6861)
!6878 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6879, file: !6879, line: 2254, type: !6812, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6880)
!6879 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6880 = !{!6881}
!6881 = !DILocalVariable(name: "v", arg: 1, scope: !6878, file: !6879, line: 2254, type: !6814)
!6882 = !DILocation(line: 2254, column: 35, scope: !6878)
!6883 = !DILocation(line: 2257, column: 34, scope: !6878)
!6884 = !DILocation(line: 2257, column: 9, scope: !6878)
!6885 = !DILocation(line: 2257, column: 2, scope: !6878)
!6886 = distinct !DISubprogram(name: "kasan_check_write", scope: !6887, file: !6887, line: 44, type: !6888, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6890)
!6887 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6888 = !DISubroutineType(types: !6889)
!6889 = !{!425, !6865, !96}
!6890 = !{!6891, !6892}
!6891 = !DILocalVariable(name: "p", arg: 1, scope: !6886, file: !6887, line: 44, type: !6865)
!6892 = !DILocalVariable(name: "size", arg: 2, scope: !6886, file: !6887, line: 44, type: !96)
!6893 = !DILocation(line: 44, column: 59, scope: !6886)
!6894 = !DILocation(line: 44, column: 75, scope: !6886)
!6895 = !DILocation(line: 46, column: 2, scope: !6886)
!6896 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6897, file: !6897, line: 229, type: !6898, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6900)
!6897 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6898 = !DISubroutineType(types: !6899)
!6899 = !{null, !6865, !27, !14}
!6900 = !{!6901, !6902, !6903}
!6901 = !DILocalVariable(name: "ptr", arg: 1, scope: !6896, file: !6897, line: 229, type: !6865)
!6902 = !DILocalVariable(name: "size", arg: 2, scope: !6896, file: !6897, line: 229, type: !27)
!6903 = !DILocalVariable(name: "type", arg: 3, scope: !6896, file: !6897, line: 230, type: !14)
!6904 = !DILocation(line: 229, column: 60, scope: !6896)
!6905 = !DILocation(line: 229, column: 72, scope: !6896)
!6906 = !DILocation(line: 230, column: 15, scope: !6896)
!6907 = !DILocation(line: 230, column: 23, scope: !6896)
!6908 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6909, file: !6909, line: 65, type: !6812, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6910)
!6909 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6910 = !{!6911, !6912}
!6911 = !DILocalVariable(name: "v", arg: 1, scope: !6908, file: !6909, line: 65, type: !6814)
!6912 = !DILocalVariable(name: "c", scope: !6913, file: !6909, line: 67, type: !425)
!6913 = distinct !DILexicalBlock(scope: !6908, file: !6909, line: 67, column: 9)
!6914 = !DILocation(line: 65, column: 64, scope: !6908)
!6915 = !DILocation(line: 67, column: 9, scope: !6913)
!6916 = !{i64 2149028434, i64 2149028473, i64 2149028494, i64 2149028531, i64 2149028554, i64 2149028563, i64 2149028637}
!6917 = !{i8 0, i8 2}
!6918 = !DILocation(line: 67, column: 9, scope: !6908)
!6919 = !DILocation(line: 67, column: 2, scope: !6908)
