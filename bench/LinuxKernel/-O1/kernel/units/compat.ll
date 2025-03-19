; ModuleID = 'kernel/compat.c'
source_filename = "kernel/compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_compat_sigset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad get_compat_sigset ; .previous"

%struct.pcpu_hot = type { %union.anon.25 }
%union.anon.25 = type { %struct.anon.26, [16 x i8] }
%struct.anon.26 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.compat_rusage = type { %struct.old_timeval32, %struct.old_timeval32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.old_timeval32 = type { i32, i32 }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.compat_sigevent = type { %union.compat_sigval, i32, i32, %union.anon.2 }
%union.compat_sigval = type { i32 }
%union.anon.2 = type { [13 x i32] }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.1 }
%union.sigval = type { ptr }
%union.anon.1 = type { %struct.anon, [32 x i8] }
%struct.anon = type { ptr, ptr }
%struct.__large_struct = type { [100 x i64] }
%struct.sigset_t = type { [1 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.15, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.18 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i64, i64 }
%union.anon.18 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@__UNIQUE_ID___addressable_get_compat_sigset354 = internal global ptr @get_compat_sigset, section ".discard.addressable", align 8, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !6079
@nr_cpu_ids = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_get_compat_sigset354], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_sigprocmask(ptr noundef %regs) #0 align 16 !dbg !6095 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6102
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6102
  %1 = load i64, ptr %bx, align 8, !dbg !6102
  %conv = trunc i64 %1 to i32, !dbg !6102
  %conv1 = zext i32 %conv to i64, !dbg !6102
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6102
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6102
  %3 = load i64, ptr %cx, align 8, !dbg !6102
  %conv2 = trunc i64 %3 to i32, !dbg !6102
  %conv3 = zext i32 %conv2 to i64, !dbg !6102
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6102
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6102
  %5 = load i64, ptr %dx, align 8, !dbg !6102
  %conv4 = trunc i64 %5 to i32, !dbg !6102
  %conv5 = zext i32 %conv4 to i64, !dbg !6102
  %call = call i64 @__se_compat_sys_sigprocmask(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #14, !dbg !6102
  ret i64 %call, !dbg !6102
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_sigprocmask(i64 noundef %how, i64 noundef %nset, i64 noundef %oset) #0 align 16 !dbg !6103 {
entry:
  %how.addr = alloca i64, align 8
  %nset.addr = alloca i64, align 8
  %oset.addr = alloca i64, align 8
  store i64 %how, ptr %how.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !6107, metadata !DIExpression()), !dbg !6110
  store i64 %nset, ptr %nset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nset.addr, metadata !6108, metadata !DIExpression()), !dbg !6110
  store i64 %oset, ptr %oset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oset.addr, metadata !6109, metadata !DIExpression()), !dbg !6110
  %0 = load i64, ptr %how.addr, align 8, !dbg !6110
  %conv = trunc i64 %0 to i32, !dbg !6110
  %1 = load i64, ptr %nset.addr, align 8, !dbg !6110
  %2 = inttoptr i64 %1 to ptr, !dbg !6110
  %3 = load i64, ptr %oset.addr, align 8, !dbg !6110
  %4 = inttoptr i64 %3 to ptr, !dbg !6110
  %call = call i64 @__do_compat_sys_sigprocmask(i32 noundef %conv, ptr noundef %2, ptr noundef %4) #14, !dbg !6110
  ret i64 %call, !dbg !6110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @put_compat_rusage(ptr noundef %r, ptr noundef %ru) #0 align 16 !dbg !6111 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %ru.addr = alloca ptr, align 8
  %r32 = alloca %struct.compat_rusage, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6162, metadata !DIExpression()), !dbg !6165
  store ptr %ru, ptr %ru.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ru.addr, metadata !6163, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 72, ptr %r32) #15, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %r32, metadata !6164, metadata !DIExpression()), !dbg !6168
  call void @llvm.memset.p0.i64(ptr align 4 %r32, i8 0, i64 72, i1 false), !dbg !6169
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6170
  %ru_utime = getelementptr inbounds %struct.rusage, ptr %0, i32 0, i32 0, !dbg !6171
  %tv_sec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %ru_utime, i32 0, i32 0, !dbg !6172
  %1 = load i64, ptr %tv_sec, align 8, !dbg !6172
  %conv = trunc i64 %1 to i32, !dbg !6170
  %ru_utime1 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 0, !dbg !6173
  %tv_sec2 = getelementptr inbounds %struct.old_timeval32, ptr %ru_utime1, i32 0, i32 0, !dbg !6174
  store i32 %conv, ptr %tv_sec2, align 4, !dbg !6175
  %2 = load ptr, ptr %r.addr, align 8, !dbg !6176
  %ru_utime3 = getelementptr inbounds %struct.rusage, ptr %2, i32 0, i32 0, !dbg !6177
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %ru_utime3, i32 0, i32 1, !dbg !6178
  %3 = load i64, ptr %tv_usec, align 8, !dbg !6178
  %conv4 = trunc i64 %3 to i32, !dbg !6176
  %ru_utime5 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 0, !dbg !6179
  %tv_usec6 = getelementptr inbounds %struct.old_timeval32, ptr %ru_utime5, i32 0, i32 1, !dbg !6180
  store i32 %conv4, ptr %tv_usec6, align 4, !dbg !6181
  %4 = load ptr, ptr %r.addr, align 8, !dbg !6182
  %ru_stime = getelementptr inbounds %struct.rusage, ptr %4, i32 0, i32 1, !dbg !6183
  %tv_sec7 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %ru_stime, i32 0, i32 0, !dbg !6184
  %5 = load i64, ptr %tv_sec7, align 8, !dbg !6184
  %conv8 = trunc i64 %5 to i32, !dbg !6182
  %ru_stime9 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 1, !dbg !6185
  %tv_sec10 = getelementptr inbounds %struct.old_timeval32, ptr %ru_stime9, i32 0, i32 0, !dbg !6186
  store i32 %conv8, ptr %tv_sec10, align 4, !dbg !6187
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6188
  %ru_stime11 = getelementptr inbounds %struct.rusage, ptr %6, i32 0, i32 1, !dbg !6189
  %tv_usec12 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %ru_stime11, i32 0, i32 1, !dbg !6190
  %7 = load i64, ptr %tv_usec12, align 8, !dbg !6190
  %conv13 = trunc i64 %7 to i32, !dbg !6188
  %ru_stime14 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 1, !dbg !6191
  %tv_usec15 = getelementptr inbounds %struct.old_timeval32, ptr %ru_stime14, i32 0, i32 1, !dbg !6192
  store i32 %conv13, ptr %tv_usec15, align 4, !dbg !6193
  %8 = load ptr, ptr %r.addr, align 8, !dbg !6194
  %ru_maxrss = getelementptr inbounds %struct.rusage, ptr %8, i32 0, i32 2, !dbg !6195
  %9 = load i64, ptr %ru_maxrss, align 8, !dbg !6195
  %conv16 = trunc i64 %9 to i32, !dbg !6194
  %ru_maxrss17 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 2, !dbg !6196
  store i32 %conv16, ptr %ru_maxrss17, align 4, !dbg !6197
  %10 = load ptr, ptr %r.addr, align 8, !dbg !6198
  %ru_ixrss = getelementptr inbounds %struct.rusage, ptr %10, i32 0, i32 3, !dbg !6199
  %11 = load i64, ptr %ru_ixrss, align 8, !dbg !6199
  %conv18 = trunc i64 %11 to i32, !dbg !6198
  %ru_ixrss19 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 3, !dbg !6200
  store i32 %conv18, ptr %ru_ixrss19, align 4, !dbg !6201
  %12 = load ptr, ptr %r.addr, align 8, !dbg !6202
  %ru_idrss = getelementptr inbounds %struct.rusage, ptr %12, i32 0, i32 4, !dbg !6203
  %13 = load i64, ptr %ru_idrss, align 8, !dbg !6203
  %conv20 = trunc i64 %13 to i32, !dbg !6202
  %ru_idrss21 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 4, !dbg !6204
  store i32 %conv20, ptr %ru_idrss21, align 4, !dbg !6205
  %14 = load ptr, ptr %r.addr, align 8, !dbg !6206
  %ru_isrss = getelementptr inbounds %struct.rusage, ptr %14, i32 0, i32 5, !dbg !6207
  %15 = load i64, ptr %ru_isrss, align 8, !dbg !6207
  %conv22 = trunc i64 %15 to i32, !dbg !6206
  %ru_isrss23 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 5, !dbg !6208
  store i32 %conv22, ptr %ru_isrss23, align 4, !dbg !6209
  %16 = load ptr, ptr %r.addr, align 8, !dbg !6210
  %ru_minflt = getelementptr inbounds %struct.rusage, ptr %16, i32 0, i32 6, !dbg !6211
  %17 = load i64, ptr %ru_minflt, align 8, !dbg !6211
  %conv24 = trunc i64 %17 to i32, !dbg !6210
  %ru_minflt25 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 6, !dbg !6212
  store i32 %conv24, ptr %ru_minflt25, align 4, !dbg !6213
  %18 = load ptr, ptr %r.addr, align 8, !dbg !6214
  %ru_majflt = getelementptr inbounds %struct.rusage, ptr %18, i32 0, i32 7, !dbg !6215
  %19 = load i64, ptr %ru_majflt, align 8, !dbg !6215
  %conv26 = trunc i64 %19 to i32, !dbg !6214
  %ru_majflt27 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 7, !dbg !6216
  store i32 %conv26, ptr %ru_majflt27, align 4, !dbg !6217
  %20 = load ptr, ptr %r.addr, align 8, !dbg !6218
  %ru_nswap = getelementptr inbounds %struct.rusage, ptr %20, i32 0, i32 8, !dbg !6219
  %21 = load i64, ptr %ru_nswap, align 8, !dbg !6219
  %conv28 = trunc i64 %21 to i32, !dbg !6218
  %ru_nswap29 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 8, !dbg !6220
  store i32 %conv28, ptr %ru_nswap29, align 4, !dbg !6221
  %22 = load ptr, ptr %r.addr, align 8, !dbg !6222
  %ru_inblock = getelementptr inbounds %struct.rusage, ptr %22, i32 0, i32 9, !dbg !6223
  %23 = load i64, ptr %ru_inblock, align 8, !dbg !6223
  %conv30 = trunc i64 %23 to i32, !dbg !6222
  %ru_inblock31 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 9, !dbg !6224
  store i32 %conv30, ptr %ru_inblock31, align 4, !dbg !6225
  %24 = load ptr, ptr %r.addr, align 8, !dbg !6226
  %ru_oublock = getelementptr inbounds %struct.rusage, ptr %24, i32 0, i32 10, !dbg !6227
  %25 = load i64, ptr %ru_oublock, align 8, !dbg !6227
  %conv32 = trunc i64 %25 to i32, !dbg !6226
  %ru_oublock33 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 10, !dbg !6228
  store i32 %conv32, ptr %ru_oublock33, align 4, !dbg !6229
  %26 = load ptr, ptr %r.addr, align 8, !dbg !6230
  %ru_msgsnd = getelementptr inbounds %struct.rusage, ptr %26, i32 0, i32 11, !dbg !6231
  %27 = load i64, ptr %ru_msgsnd, align 8, !dbg !6231
  %conv34 = trunc i64 %27 to i32, !dbg !6230
  %ru_msgsnd35 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 11, !dbg !6232
  store i32 %conv34, ptr %ru_msgsnd35, align 4, !dbg !6233
  %28 = load ptr, ptr %r.addr, align 8, !dbg !6234
  %ru_msgrcv = getelementptr inbounds %struct.rusage, ptr %28, i32 0, i32 12, !dbg !6235
  %29 = load i64, ptr %ru_msgrcv, align 8, !dbg !6235
  %conv36 = trunc i64 %29 to i32, !dbg !6234
  %ru_msgrcv37 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 12, !dbg !6236
  store i32 %conv36, ptr %ru_msgrcv37, align 4, !dbg !6237
  %30 = load ptr, ptr %r.addr, align 8, !dbg !6238
  %ru_nsignals = getelementptr inbounds %struct.rusage, ptr %30, i32 0, i32 13, !dbg !6239
  %31 = load i64, ptr %ru_nsignals, align 8, !dbg !6239
  %conv38 = trunc i64 %31 to i32, !dbg !6238
  %ru_nsignals39 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 13, !dbg !6240
  store i32 %conv38, ptr %ru_nsignals39, align 4, !dbg !6241
  %32 = load ptr, ptr %r.addr, align 8, !dbg !6242
  %ru_nvcsw = getelementptr inbounds %struct.rusage, ptr %32, i32 0, i32 14, !dbg !6243
  %33 = load i64, ptr %ru_nvcsw, align 8, !dbg !6243
  %conv40 = trunc i64 %33 to i32, !dbg !6242
  %ru_nvcsw41 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 14, !dbg !6244
  store i32 %conv40, ptr %ru_nvcsw41, align 4, !dbg !6245
  %34 = load ptr, ptr %r.addr, align 8, !dbg !6246
  %ru_nivcsw = getelementptr inbounds %struct.rusage, ptr %34, i32 0, i32 15, !dbg !6247
  %35 = load i64, ptr %ru_nivcsw, align 8, !dbg !6247
  %conv42 = trunc i64 %35 to i32, !dbg !6246
  %ru_nivcsw43 = getelementptr inbounds %struct.compat_rusage, ptr %r32, i32 0, i32 15, !dbg !6248
  store i32 %conv42, ptr %ru_nivcsw43, align 4, !dbg !6249
  %36 = load ptr, ptr %ru.addr, align 8, !dbg !6250
  %call = call i64 @copy_to_user(ptr noundef %36, ptr noundef %r32, i64 noundef 72) #14, !dbg !6252
  %tobool = icmp ne i64 %call, 0, !dbg !6252
  br i1 %tobool, label %if.then, label %if.end, !dbg !6253

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6254

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6255

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr %r32) #15, !dbg !6256
  %37 = load i32, ptr %retval, align 4, !dbg !6256
  ret i32 %37, !dbg !6256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6257 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6262, metadata !DIExpression()), !dbg !6265
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6263, metadata !DIExpression()), !dbg !6266
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6264, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6268
  %1 = load i64, ptr %n.addr, align 8, !dbg !6270
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #14, !dbg !6271
  br i1 %call, label %if.then, label %if.end, !dbg !6272

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6273
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6274
  %4 = load i64, ptr %n.addr, align 8, !dbg !6275
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !6276
  store i64 %call1, ptr %n.addr, align 8, !dbg !6277
  br label %if.end, !dbg !6278

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6279
  ret i64 %5, !dbg !6280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_sched_setaffinity(ptr noundef %regs) #0 align 16 !dbg !6281 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6283, metadata !DIExpression()), !dbg !6284
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6284
  %1 = load i64, ptr %bx, align 8, !dbg !6284
  %conv = trunc i64 %1 to i32, !dbg !6284
  %conv1 = zext i32 %conv to i64, !dbg !6284
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6284
  %3 = load i64, ptr %cx, align 8, !dbg !6284
  %conv2 = trunc i64 %3 to i32, !dbg !6284
  %conv3 = zext i32 %conv2 to i64, !dbg !6284
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6284
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6284
  %5 = load i64, ptr %dx, align 8, !dbg !6284
  %conv4 = trunc i64 %5 to i32, !dbg !6284
  %conv5 = zext i32 %conv4 to i64, !dbg !6284
  %call = call i64 @__se_compat_sys_sched_setaffinity(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #14, !dbg !6284
  ret i64 %call, !dbg !6284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_sched_setaffinity(i64 noundef %pid, i64 noundef %len, i64 noundef %user_mask_ptr) #0 align 16 !dbg !6285 {
entry:
  %pid.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %user_mask_ptr.addr = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6287, metadata !DIExpression()), !dbg !6290
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6288, metadata !DIExpression()), !dbg !6290
  store i64 %user_mask_ptr, ptr %user_mask_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask_ptr.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load i64, ptr %pid.addr, align 8, !dbg !6290
  %conv = trunc i64 %0 to i32, !dbg !6290
  %1 = load i64, ptr %len.addr, align 8, !dbg !6290
  %conv1 = trunc i64 %1 to i32, !dbg !6290
  %2 = load i64, ptr %user_mask_ptr.addr, align 8, !dbg !6290
  %3 = inttoptr i64 %2 to ptr, !dbg !6290
  %call = call i64 @__do_compat_sys_sched_setaffinity(i32 noundef %conv, i32 noundef %conv1, ptr noundef %3) #14, !dbg !6290
  ret i64 %call, !dbg !6290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_compat_sys_sched_getaffinity(ptr noundef %regs) #0 align 16 !dbg !6291 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6294
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6294
  %1 = load i64, ptr %bx, align 8, !dbg !6294
  %conv = trunc i64 %1 to i32, !dbg !6294
  %conv1 = zext i32 %conv to i64, !dbg !6294
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6294
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6294
  %3 = load i64, ptr %cx, align 8, !dbg !6294
  %conv2 = trunc i64 %3 to i32, !dbg !6294
  %conv3 = zext i32 %conv2 to i64, !dbg !6294
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !6294
  %dx = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 12, !dbg !6294
  %5 = load i64, ptr %dx, align 8, !dbg !6294
  %conv4 = trunc i64 %5 to i32, !dbg !6294
  %conv5 = zext i32 %conv4 to i64, !dbg !6294
  %call = call i64 @__se_compat_sys_sched_getaffinity(i64 noundef %conv1, i64 noundef %conv3, i64 noundef %conv5) #14, !dbg !6294
  ret i64 %call, !dbg !6294
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_compat_sys_sched_getaffinity(i64 noundef %pid, i64 noundef %len, i64 noundef %user_mask_ptr) #0 align 16 !dbg !6295 {
entry:
  %pid.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %user_mask_ptr.addr = alloca i64, align 8
  store i64 %pid, ptr %pid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6297, metadata !DIExpression()), !dbg !6300
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6298, metadata !DIExpression()), !dbg !6300
  store i64 %user_mask_ptr, ptr %user_mask_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask_ptr.addr, metadata !6299, metadata !DIExpression()), !dbg !6300
  %0 = load i64, ptr %pid.addr, align 8, !dbg !6300
  %conv = trunc i64 %0 to i32, !dbg !6300
  %1 = load i64, ptr %len.addr, align 8, !dbg !6300
  %conv1 = trunc i64 %1 to i32, !dbg !6300
  %2 = load i64, ptr %user_mask_ptr.addr, align 8, !dbg !6300
  %3 = inttoptr i64 %2 to ptr, !dbg !6300
  %call = call i64 @__do_compat_sys_sched_getaffinity(i32 noundef %conv, i32 noundef %conv1, ptr noundef %3) #14, !dbg !6300
  ret i64 %call, !dbg !6300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_compat_sigevent(ptr noundef %event, ptr noundef %u_event) #0 align 16 !dbg !6301 {
entry:
  %event.addr = alloca ptr, align 8
  %u_event.addr = alloca ptr, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp7 = alloca i64, align 8
  %__ret_gu12 = alloca i32, align 4
  %__val_gu13 = alloca i32, align 4
  %__tmp17 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  %__ret_gu27 = alloca i32, align 4
  %__val_gu28 = alloca i32, align 4
  %__tmp32 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  %tmp37 = alloca i64, align 8
  %__ret_gu41 = alloca i32, align 4
  %__val_gu42 = alloca i32, align 4
  %__tmp46 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !6350, metadata !DIExpression()), !dbg !6372
  store ptr %u_event, ptr %u_event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_event.addr, metadata !6351, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %event.addr, align 8, !dbg !6374
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false), !dbg !6375
  %1 = load ptr, ptr %u_event.addr, align 8, !dbg !6376
  %call = call zeroext i1 @__access_ok(ptr noundef %1, i64 noundef 64) #14, !dbg !6376
  %lnot = xor i1 %call, true, !dbg !6376
  %lnot1 = xor i1 %lnot, true, !dbg !6376
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6376
  %conv = sext i32 %lnot.ext to i64, !dbg !6376
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6376
  %tobool = icmp ne i64 %expval, 0, !dbg !6376
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !6377

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6352, metadata !DIExpression()), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #15, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6354, metadata !DIExpression()), !dbg !6378
  %2 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6378
  %3 = load ptr, ptr %u_event.addr, align 8, !dbg !6378
  %sigev_value = getelementptr inbounds %struct.compat_sigevent, ptr %3, i32 0, i32 0, !dbg !6378
  %4 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %sigev_value, i64 4, i64 %2) #15, !dbg !6378, !srcloc !6379
  %asmresult = extractvalue { ptr, i32, i64 } %4, 0, !dbg !6378
  %asmresult2 = extractvalue { ptr, i32, i64 } %4, 1, !dbg !6378
  %asmresult3 = extractvalue { ptr, i32, i64 } %4, 2, !dbg !6378
  %5 = ptrtoint ptr %asmresult to i64, !dbg !6378
  %6 = trunc i64 %5 to i32, !dbg !6378
  store i32 %6, ptr %__ret_gu, align 4, !dbg !6378
  store i32 %asmresult2, ptr %__val_gu, align 4, !dbg !6378
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult3), !dbg !6378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6355, metadata !DIExpression()), !dbg !6380
  %7 = load i32, ptr %__val_gu, align 4, !dbg !6380
  %conv4 = zext i32 %7 to i64, !dbg !6380
  store i64 %conv4, ptr %__tmp, align 8, !dbg !6380
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !6380
  %8 = load i64, ptr %__tmp, align 8, !dbg !6380
  %conv5 = trunc i64 %8 to i32, !dbg !6380
  store i32 %conv5, ptr %__val_gu, align 4, !dbg !6380
  store i32 %conv5, ptr %tmp, align 4, !dbg !6380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !6378
  %9 = load i32, ptr %tmp, align 4, !dbg !6380
  %10 = load i32, ptr %__val_gu, align 4, !dbg !6378
  %11 = load ptr, ptr %event.addr, align 8, !dbg !6378
  %sigev_value6 = getelementptr inbounds %struct.sigevent, ptr %11, i32 0, i32 0, !dbg !6378
  store i32 %10, ptr %sigev_value6, align 8, !dbg !6378
  %12 = load i32, ptr %__ret_gu, align 4, !dbg !6378
  %conv8 = sext i32 %12 to i64, !dbg !6378
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6378
  store i64 %expval9, ptr %tmp7, align 8, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #15, !dbg !6381
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !6381
  %13 = load i64, ptr %tmp7, align 8, !dbg !6378
  %tobool10 = icmp ne i64 %13, 0, !dbg !6381
  br i1 %tobool10, label %lor.end, label %lor.lhs.false11, !dbg !6382

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu12) #15, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %__ret_gu12, metadata !6357, metadata !DIExpression()), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu13) #15, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %__val_gu13, metadata !6359, metadata !DIExpression()), !dbg !6383
  %14 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6383
  %15 = load ptr, ptr %u_event.addr, align 8, !dbg !6383
  %sigev_signo = getelementptr inbounds %struct.compat_sigevent, ptr %15, i32 0, i32 1, !dbg !6383
  %16 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %sigev_signo, i64 4, i64 %14) #15, !dbg !6383, !srcloc !6384
  %asmresult14 = extractvalue { ptr, i32, i64 } %16, 0, !dbg !6383
  %asmresult15 = extractvalue { ptr, i32, i64 } %16, 1, !dbg !6383
  %asmresult16 = extractvalue { ptr, i32, i64 } %16, 2, !dbg !6383
  %17 = ptrtoint ptr %asmresult14 to i64, !dbg !6383
  %18 = trunc i64 %17 to i32, !dbg !6383
  store i32 %18, ptr %__ret_gu12, align 4, !dbg !6383
  store i32 %asmresult15, ptr %__val_gu13, align 4, !dbg !6383
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult16), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp17) #15, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %__tmp17, metadata !6360, metadata !DIExpression()), !dbg !6385
  %19 = load i32, ptr %__val_gu13, align 4, !dbg !6385
  %conv18 = zext i32 %19 to i64, !dbg !6385
  store i64 %conv18, ptr %__tmp17, align 8, !dbg !6385
  call void @kmsan_unpoison_memory(ptr noundef %__tmp17, i64 noundef 8) #14, !dbg !6385
  %20 = load i64, ptr %__tmp17, align 8, !dbg !6385
  %conv20 = trunc i64 %20 to i32, !dbg !6385
  store i32 %conv20, ptr %__val_gu13, align 4, !dbg !6385
  store i32 %conv20, ptr %tmp19, align 4, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp17) #15, !dbg !6383
  %21 = load i32, ptr %tmp19, align 4, !dbg !6385
  %22 = load i32, ptr %__val_gu13, align 4, !dbg !6383
  %23 = load ptr, ptr %event.addr, align 8, !dbg !6383
  %sigev_signo21 = getelementptr inbounds %struct.sigevent, ptr %23, i32 0, i32 1, !dbg !6383
  store i32 %22, ptr %sigev_signo21, align 8, !dbg !6383
  %24 = load i32, ptr %__ret_gu12, align 4, !dbg !6383
  %conv23 = sext i32 %24 to i64, !dbg !6383
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6383
  store i64 %expval24, ptr %tmp22, align 8, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu13) #15, !dbg !6386
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu12) #15, !dbg !6386
  %25 = load i64, ptr %tmp22, align 8, !dbg !6383
  %tobool25 = icmp ne i64 %25, 0, !dbg !6386
  br i1 %tobool25, label %lor.end, label %lor.lhs.false26, !dbg !6387

lor.lhs.false26:                                  ; preds = %lor.lhs.false11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu27) #15, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %__ret_gu27, metadata !6362, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu28) #15, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %__val_gu28, metadata !6364, metadata !DIExpression()), !dbg !6388
  %26 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6388
  %27 = load ptr, ptr %u_event.addr, align 8, !dbg !6388
  %sigev_notify = getelementptr inbounds %struct.compat_sigevent, ptr %27, i32 0, i32 2, !dbg !6388
  %28 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %sigev_notify, i64 4, i64 %26) #15, !dbg !6388, !srcloc !6389
  %asmresult29 = extractvalue { ptr, i32, i64 } %28, 0, !dbg !6388
  %asmresult30 = extractvalue { ptr, i32, i64 } %28, 1, !dbg !6388
  %asmresult31 = extractvalue { ptr, i32, i64 } %28, 2, !dbg !6388
  %29 = ptrtoint ptr %asmresult29 to i64, !dbg !6388
  %30 = trunc i64 %29 to i32, !dbg !6388
  store i32 %30, ptr %__ret_gu27, align 4, !dbg !6388
  store i32 %asmresult30, ptr %__val_gu28, align 4, !dbg !6388
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult31), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp32) #15, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %__tmp32, metadata !6365, metadata !DIExpression()), !dbg !6390
  %31 = load i32, ptr %__val_gu28, align 4, !dbg !6390
  %conv33 = zext i32 %31 to i64, !dbg !6390
  store i64 %conv33, ptr %__tmp32, align 8, !dbg !6390
  call void @kmsan_unpoison_memory(ptr noundef %__tmp32, i64 noundef 8) #14, !dbg !6390
  %32 = load i64, ptr %__tmp32, align 8, !dbg !6390
  %conv35 = trunc i64 %32 to i32, !dbg !6390
  store i32 %conv35, ptr %__val_gu28, align 4, !dbg !6390
  store i32 %conv35, ptr %tmp34, align 4, !dbg !6390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp32) #15, !dbg !6388
  %33 = load i32, ptr %tmp34, align 4, !dbg !6390
  %34 = load i32, ptr %__val_gu28, align 4, !dbg !6388
  %35 = load ptr, ptr %event.addr, align 8, !dbg !6388
  %sigev_notify36 = getelementptr inbounds %struct.sigevent, ptr %35, i32 0, i32 2, !dbg !6388
  store i32 %34, ptr %sigev_notify36, align 4, !dbg !6388
  %36 = load i32, ptr %__ret_gu27, align 4, !dbg !6388
  %conv38 = sext i32 %36 to i64, !dbg !6388
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !6388
  store i64 %expval39, ptr %tmp37, align 8, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu28) #15, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu27) #15, !dbg !6391
  %37 = load i64, ptr %tmp37, align 8, !dbg !6388
  %tobool40 = icmp ne i64 %37, 0, !dbg !6391
  br i1 %tobool40, label %lor.end, label %lor.rhs, !dbg !6392

lor.rhs:                                          ; preds = %lor.lhs.false26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu41) #15, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %__ret_gu41, metadata !6367, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu42) #15, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %__val_gu42, metadata !6369, metadata !DIExpression()), !dbg !6393
  %38 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6393
  %39 = load ptr, ptr %u_event.addr, align 8, !dbg !6393
  %_sigev_un = getelementptr inbounds %struct.compat_sigevent, ptr %39, i32 0, i32 3, !dbg !6393
  %40 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %_sigev_un, i64 4, i64 %38) #15, !dbg !6393, !srcloc !6394
  %asmresult43 = extractvalue { ptr, i32, i64 } %40, 0, !dbg !6393
  %asmresult44 = extractvalue { ptr, i32, i64 } %40, 1, !dbg !6393
  %asmresult45 = extractvalue { ptr, i32, i64 } %40, 2, !dbg !6393
  %41 = ptrtoint ptr %asmresult43 to i64, !dbg !6393
  %42 = trunc i64 %41 to i32, !dbg !6393
  store i32 %42, ptr %__ret_gu41, align 4, !dbg !6393
  store i32 %asmresult44, ptr %__val_gu42, align 4, !dbg !6393
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult45), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp46) #15, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %__tmp46, metadata !6370, metadata !DIExpression()), !dbg !6395
  %43 = load i32, ptr %__val_gu42, align 4, !dbg !6395
  %conv47 = zext i32 %43 to i64, !dbg !6395
  store i64 %conv47, ptr %__tmp46, align 8, !dbg !6395
  call void @kmsan_unpoison_memory(ptr noundef %__tmp46, i64 noundef 8) #14, !dbg !6395
  %44 = load i64, ptr %__tmp46, align 8, !dbg !6395
  %conv49 = trunc i64 %44 to i32, !dbg !6395
  store i32 %conv49, ptr %__val_gu42, align 4, !dbg !6395
  store i32 %conv49, ptr %tmp48, align 4, !dbg !6395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp46) #15, !dbg !6393
  %45 = load i32, ptr %tmp48, align 4, !dbg !6395
  %46 = load i32, ptr %__val_gu42, align 4, !dbg !6393
  %47 = load ptr, ptr %event.addr, align 8, !dbg !6393
  %_sigev_un50 = getelementptr inbounds %struct.sigevent, ptr %47, i32 0, i32 3, !dbg !6393
  store i32 %46, ptr %_sigev_un50, align 8, !dbg !6393
  %48 = load i32, ptr %__ret_gu41, align 4, !dbg !6393
  %conv52 = sext i32 %48 to i64, !dbg !6393
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !6393
  store i64 %expval53, ptr %tmp51, align 8, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu42) #15, !dbg !6396
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu41) #15, !dbg !6396
  %49 = load i64, ptr %tmp51, align 8, !dbg !6393
  %tobool54 = icmp ne i64 %49, 0, !dbg !6392
  br label %lor.end, !dbg !6392

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false26, %lor.lhs.false11, %lor.lhs.false, %entry
  %50 = phi i1 [ true, %lor.lhs.false26 ], [ true, %lor.lhs.false11 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool54, %lor.rhs ]
  %51 = zext i1 %50 to i64, !dbg !6397
  %cond = select i1 %50, i32 -14, i32 0, !dbg !6397
  ret i32 %cond, !dbg !6398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !6399 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6404, metadata !DIExpression()), !dbg !6409
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6405, metadata !DIExpression()), !dbg !6410
  %0 = load i64, ptr %size.addr, align 8, !dbg !6411
  %cmp = icmp ule i64 %0, 4096, !dbg !6412
  %conv = zext i1 %cmp to i32, !dbg !6412
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6413
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !6414

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6415
  %cmp1 = icmp ule i64 %2, 4096, !dbg !6416
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6417

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !6418
  %4 = ptrtoint ptr %3 to i64, !dbg !6418
  %cmp3 = icmp sge i64 %4, 0, !dbg !6418
  store i1 %cmp3, ptr %retval, align 1, !dbg !6420
  br label %return, !dbg !6420

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #15, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !6406, metadata !DIExpression()), !dbg !6422
  %5 = load i64, ptr %size.addr, align 8, !dbg !6423
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !6424
  %7 = ptrtoint ptr %6 to i64, !dbg !6425
  %add = add i64 %5, %7, !dbg !6426
  store i64 %add, ptr %sum, align 8, !dbg !6422
  %8 = load i64, ptr %sum, align 8, !dbg !6427
  %cmp5 = icmp sge i64 %8, 0, !dbg !6427
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !6428

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !6429
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !6430
  %11 = ptrtoint ptr %10 to i64, !dbg !6431
  %cmp7 = icmp uge i64 %9, %11, !dbg !6432
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !6433
  store i1 %12, ptr %retval, align 1, !dbg !6434
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #15, !dbg !6435
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !6436
  ret i1 %13, !dbg !6436
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !6437 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6442, metadata !DIExpression()), !dbg !6444
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6443, metadata !DIExpression()), !dbg !6445
  ret void, !dbg !6446
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @compat_get_bitmap(ptr noundef %mask, ptr noundef %umask, i64 noundef %bitmap_size) #0 align 16 !dbg !6447 {
entry:
  %retval = alloca i64, align 8
  %mask.addr = alloca ptr, align 8
  %umask.addr = alloca ptr, align 8
  %bitmap_size.addr = alloca i64, align 8
  %nr_compat_longs = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %__gu_val = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__gu_val8 = alloca i32, align 4
  %__tmp13 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  %__gu_val27 = alloca i32, align 4
  %__tmp32 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6453, metadata !DIExpression()), !dbg !6477
  store ptr %umask, ptr %umask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %umask.addr, metadata !6454, metadata !DIExpression()), !dbg !6478
  store i64 %bitmap_size, ptr %bitmap_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitmap_size.addr, metadata !6455, metadata !DIExpression()), !dbg !6479
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_compat_longs) #15, !dbg !6480
  call void @llvm.dbg.declare(metadata ptr %nr_compat_longs, metadata !6456, metadata !DIExpression()), !dbg !6481
  %0 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6482
  %add = add i64 %0, 31, !dbg !6482
  %and = and i64 %add, -32, !dbg !6482
  store i64 %and, ptr %bitmap_size.addr, align 8, !dbg !6483
  %1 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6484
  %add1 = add i64 %1, 32, !dbg !6484
  %sub = sub i64 %add1, 1, !dbg !6484
  %div = udiv i64 %sub, 32, !dbg !6484
  store i64 %div, ptr %nr_compat_longs, align 8, !dbg !6485
  %2 = load ptr, ptr %umask.addr, align 8, !dbg !6486
  %3 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6486
  %div2 = udiv i64 %3, 8, !dbg !6486
  %call = call zeroext i1 @user_access_begin(ptr noundef %2, i64 noundef %div2) #14, !dbg !6486
  br i1 %call, label %if.end, label %if.then, !dbg !6488

if.then:                                          ; preds = %entry
  store i64 -14, ptr %retval, align 8, !dbg !6489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6489

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6490

while.cond:                                       ; preds = %do.end20, %if.end
  %4 = load i64, ptr %nr_compat_longs, align 8, !dbg !6491
  %cmp = icmp ugt i64 %4, 1, !dbg !6492
  br i1 %cmp, label %while.body, label %while.end, !dbg !6490

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #15, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %l1, metadata !6457, metadata !DIExpression()), !dbg !6494
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #15, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %l2, metadata !6459, metadata !DIExpression()), !dbg !6495
  br label %do.body, !dbg !6496

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__gu_val) #15, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__gu_val, metadata !6460, metadata !DIExpression()), !dbg !6497
  br label %do.body3, !dbg !6497

do.body3:                                         ; preds = %do.body
  %5 = load ptr, ptr %umask.addr, align 8, !dbg !6498
  %incdec.ptr = getelementptr i32, ptr %5, i32 1, !dbg !6498
  store ptr %incdec.ptr, ptr %umask.addr, align 8, !dbg !6498
  %6 = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %5) #15
          to label %asm.fallthrough [label %Efault.split], !dbg !6498, !srcloc !6499

asm.fallthrough:                                  ; preds = %do.body3
  store i32 %6, ptr %__gu_val, align 4, !dbg !6498
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6462, metadata !DIExpression()), !dbg !6500
  %7 = load i32, ptr %__gu_val, align 4, !dbg !6500
  %conv = zext i32 %7 to i64, !dbg !6500
  store i64 %conv, ptr %__tmp, align 8, !dbg !6500
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !6500
  %8 = load i64, ptr %__tmp, align 8, !dbg !6500
  %conv4 = trunc i64 %8 to i32, !dbg !6500
  store i32 %conv4, ptr %__gu_val, align 4, !dbg !6500
  store i32 %conv4, ptr %tmp, align 4, !dbg !6500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !6498
  %9 = load i32, ptr %tmp, align 4, !dbg !6500
  br label %do.cond, !dbg !6498

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !6498

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %__gu_val, align 4, !dbg !6497
  store i32 %10, ptr %l1, align 4, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 4, ptr %__gu_val) #15, !dbg !6496
  br label %do.cond5, !dbg !6497

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !6497

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !6501

do.body7:                                         ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %__gu_val8) #15, !dbg !6502
  call void @llvm.dbg.declare(metadata ptr %__gu_val8, metadata !6465, metadata !DIExpression()), !dbg !6502
  br label %do.body9, !dbg !6502

do.body9:                                         ; preds = %do.body7
  %11 = load ptr, ptr %umask.addr, align 8, !dbg !6503
  %incdec.ptr10 = getelementptr i32, ptr %11, i32 1, !dbg !6503
  store ptr %incdec.ptr10, ptr %umask.addr, align 8, !dbg !6503
  %12 = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %11) #15
          to label %asm.fallthrough11 [label %Efault.split12], !dbg !6503, !srcloc !6504

asm.fallthrough11:                                ; preds = %do.body9
  store i32 %12, ptr %__gu_val8, align 4, !dbg !6503
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp13) #15, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %__tmp13, metadata !6467, metadata !DIExpression()), !dbg !6505
  %13 = load i32, ptr %__gu_val8, align 4, !dbg !6505
  %conv14 = zext i32 %13 to i64, !dbg !6505
  store i64 %conv14, ptr %__tmp13, align 8, !dbg !6505
  call void @kmsan_unpoison_memory(ptr noundef %__tmp13, i64 noundef 8) #14, !dbg !6505
  %14 = load i64, ptr %__tmp13, align 8, !dbg !6505
  %conv16 = trunc i64 %14 to i32, !dbg !6505
  store i32 %conv16, ptr %__gu_val8, align 4, !dbg !6505
  store i32 %conv16, ptr %tmp15, align 4, !dbg !6505
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp13) #15, !dbg !6503
  %15 = load i32, ptr %tmp15, align 4, !dbg !6505
  br label %do.cond17, !dbg !6503

do.cond17:                                        ; preds = %asm.fallthrough11
  br label %do.end18, !dbg !6503

do.end18:                                         ; preds = %do.cond17
  %16 = load i32, ptr %__gu_val8, align 4, !dbg !6502
  store i32 %16, ptr %l2, align 4, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 4, ptr %__gu_val8) #15, !dbg !6501
  br label %do.cond19, !dbg !6502

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6502

do.end20:                                         ; preds = %do.cond19
  %17 = load i32, ptr %l2, align 4, !dbg !6506
  %conv21 = zext i32 %17 to i64, !dbg !6507
  %shl = shl i64 %conv21, 32, !dbg !6508
  %18 = load i32, ptr %l1, align 4, !dbg !6509
  %conv22 = zext i32 %18 to i64, !dbg !6509
  %or = or i64 %shl, %conv22, !dbg !6510
  %19 = load ptr, ptr %mask.addr, align 8, !dbg !6511
  %incdec.ptr23 = getelementptr i64, ptr %19, i32 1, !dbg !6511
  store ptr %incdec.ptr23, ptr %mask.addr, align 8, !dbg !6511
  store i64 %or, ptr %19, align 8, !dbg !6512
  %20 = load i64, ptr %nr_compat_longs, align 8, !dbg !6513
  %sub24 = sub i64 %20, 2, !dbg !6513
  store i64 %sub24, ptr %nr_compat_longs, align 8, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #15, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #15, !dbg !6514
  br label %while.cond, !dbg !6490, !llvm.loop !6515

Efault.split:                                     ; preds = %do.body3
  store i32 %6, ptr %__gu_val, align 4, !dbg !6498
  br label %Efault, !dbg !6498

Efault.split12:                                   ; preds = %do.body9
  store i32 %12, ptr %__gu_val8, align 4, !dbg !6503
  br label %Efault, !dbg !6503

while.end:                                        ; preds = %while.cond
  %21 = load i64, ptr %nr_compat_longs, align 8, !dbg !6518
  %tobool = icmp ne i64 %21, 0, !dbg !6518
  br i1 %tobool, label %if.then25, label %if.end41, !dbg !6519

if.then25:                                        ; preds = %while.end
  br label %do.body26, !dbg !6520

do.body26:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 4, ptr %__gu_val27) #15, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %__gu_val27, metadata !6470, metadata !DIExpression()), !dbg !6521
  br label %do.body28, !dbg !6521

do.body28:                                        ; preds = %do.body26
  %22 = load ptr, ptr %umask.addr, align 8, !dbg !6522
  %incdec.ptr29 = getelementptr i32, ptr %22, i32 1, !dbg !6522
  store ptr %incdec.ptr29, ptr %umask.addr, align 8, !dbg !6522
  %23 = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %22) #15
          to label %asm.fallthrough30 [label %Efault.split31], !dbg !6522, !srcloc !6523

asm.fallthrough30:                                ; preds = %do.body28
  store i32 %23, ptr %__gu_val27, align 4, !dbg !6522
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp32) #15, !dbg !6524
  call void @llvm.dbg.declare(metadata ptr %__tmp32, metadata !6473, metadata !DIExpression()), !dbg !6524
  %24 = load i32, ptr %__gu_val27, align 4, !dbg !6524
  %conv33 = zext i32 %24 to i64, !dbg !6524
  store i64 %conv33, ptr %__tmp32, align 8, !dbg !6524
  call void @kmsan_unpoison_memory(ptr noundef %__tmp32, i64 noundef 8) #14, !dbg !6524
  %25 = load i64, ptr %__tmp32, align 8, !dbg !6524
  %conv35 = trunc i64 %25 to i32, !dbg !6524
  store i32 %conv35, ptr %__gu_val27, align 4, !dbg !6524
  store i32 %conv35, ptr %tmp34, align 4, !dbg !6524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp32) #15, !dbg !6522
  %26 = load i32, ptr %tmp34, align 4, !dbg !6524
  br label %do.cond36, !dbg !6522

do.cond36:                                        ; preds = %asm.fallthrough30
  br label %do.end37, !dbg !6522

do.end37:                                         ; preds = %do.cond36
  %27 = load i32, ptr %__gu_val27, align 4, !dbg !6521
  %conv38 = zext i32 %27 to i64, !dbg !6521
  %28 = load ptr, ptr %mask.addr, align 8, !dbg !6521
  store i64 %conv38, ptr %28, align 8, !dbg !6521
  call void @llvm.lifetime.end.p0(i64 4, ptr %__gu_val27) #15, !dbg !6520
  br label %do.cond39, !dbg !6521

do.cond39:                                        ; preds = %do.end37
  br label %do.end40, !dbg !6521

do.end40:                                         ; preds = %do.cond39
  br label %if.end41, !dbg !6521

Efault.split31:                                   ; preds = %do.body28
  store i32 %23, ptr %__gu_val27, align 4, !dbg !6522
  br label %Efault, !dbg !6522

if.end41:                                         ; preds = %do.end40, %while.end
  call void @clac() #14, !dbg !6525
  store i64 0, ptr %retval, align 8, !dbg !6526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6526

Efault:                                           ; preds = %Efault.split31, %Efault.split12, %Efault.split
  call void @llvm.dbg.label(metadata !6476), !dbg !6527
  call void @clac() #14, !dbg !6528
  store i64 -14, ptr %retval, align 8, !dbg !6529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6529

cleanup:                                          ; preds = %Efault, %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_compat_longs) #15, !dbg !6530
  %29 = load i64, ptr %retval, align 8, !dbg !6530
  ret i64 %29, !dbg !6530
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_access_begin(ptr noundef %ptr, i64 noundef %len) #4 align 16 !dbg !6531 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6535, metadata !DIExpression()), !dbg !6537
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6536, metadata !DIExpression()), !dbg !6538
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6539
  %1 = load i64, ptr %len.addr, align 8, !dbg !6539
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #14, !dbg !6539
  %lnot = xor i1 %call, true, !dbg !6539
  %lnot1 = xor i1 %lnot, true, !dbg !6539
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6539
  %conv = sext i32 %lnot.ext to i64, !dbg !6539
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6539
  %tobool = icmp ne i64 %expval, 0, !dbg !6539
  %lnot2 = xor i1 %tobool, true, !dbg !6539
  %lnot4 = xor i1 %lnot2, true, !dbg !6539
  %lnot6 = xor i1 %lnot4, true, !dbg !6539
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6539
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !6539
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !6539
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !6539
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6541

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6542
  br label %return, !dbg !6542

if.end:                                           ; preds = %entry
  call void @stac() #14, !dbg !6543
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6543, !srcloc !6545
  store i1 true, ptr %retval, align 1, !dbg !6546
  br label %return, !dbg !6546

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !6547
  ret i1 %2, !dbg !6547
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !6548 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6550, !srcloc !6551
  ret void, !dbg !6552
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @compat_put_bitmap(ptr noundef %umask, ptr noundef %mask, i64 noundef %bitmap_size) #0 align 16 !dbg !6553 {
entry:
  %retval = alloca i64, align 8
  %umask.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %bitmap_size.addr = alloca i64, align 8
  %nr_compat_longs = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca i64, align 8
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %__x5 = alloca i32, align 4
  %__ptr7 = alloca ptr, align 8
  %__x15 = alloca i32, align 4
  %__ptr17 = alloca ptr, align 8
  store ptr %umask, ptr %umask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %umask.addr, metadata !6557, metadata !DIExpression()), !dbg !6574
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6558, metadata !DIExpression()), !dbg !6575
  store i64 %bitmap_size, ptr %bitmap_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bitmap_size.addr, metadata !6559, metadata !DIExpression()), !dbg !6576
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_compat_longs) #15, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %nr_compat_longs, metadata !6560, metadata !DIExpression()), !dbg !6578
  %0 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6579
  %add = add i64 %0, 31, !dbg !6579
  %and = and i64 %add, -32, !dbg !6579
  store i64 %and, ptr %bitmap_size.addr, align 8, !dbg !6580
  %1 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6581
  %add1 = add i64 %1, 32, !dbg !6581
  %sub = sub i64 %add1, 1, !dbg !6581
  %div = udiv i64 %sub, 32, !dbg !6581
  store i64 %div, ptr %nr_compat_longs, align 8, !dbg !6582
  %2 = load ptr, ptr %umask.addr, align 8, !dbg !6583
  %3 = load i64, ptr %bitmap_size.addr, align 8, !dbg !6583
  %div2 = udiv i64 %3, 8, !dbg !6583
  %call = call zeroext i1 @user_access_begin(ptr noundef %2, i64 noundef %div2) #14, !dbg !6583
  br i1 %call, label %if.end, label %if.then, !dbg !6585

if.then:                                          ; preds = %entry
  store i64 -14, ptr %retval, align 8, !dbg !6586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6586

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6587

while.cond:                                       ; preds = %do.end11, %if.end
  %4 = load i64, ptr %nr_compat_longs, align 8, !dbg !6588
  %cmp = icmp ugt i64 %4, 1, !dbg !6589
  br i1 %cmp, label %while.body, label %while.end, !dbg !6587

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #15, !dbg !6590
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6561, metadata !DIExpression()), !dbg !6591
  %5 = load ptr, ptr %mask.addr, align 8, !dbg !6592
  %incdec.ptr = getelementptr i64, ptr %5, i32 1, !dbg !6592
  store ptr %incdec.ptr, ptr %mask.addr, align 8, !dbg !6592
  %6 = load i64, ptr %5, align 8, !dbg !6593
  store i64 %6, ptr %m, align 8, !dbg !6591
  br label %do.body, !dbg !6594

do.body:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6563, metadata !DIExpression()), !dbg !6595
  %7 = load i64, ptr %m, align 8, !dbg !6595
  %conv = trunc i64 %7 to i32, !dbg !6595
  store i32 %conv, ptr %__x, align 4, !dbg !6595
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6565, metadata !DIExpression()), !dbg !6595
  %8 = load ptr, ptr %umask.addr, align 8, !dbg !6595
  %incdec.ptr3 = getelementptr i32, ptr %8, i32 1, !dbg !6595
  store ptr %incdec.ptr3, ptr %umask.addr, align 8, !dbg !6595
  store ptr %8, ptr %__ptr, align 8, !dbg !6595
  %9 = load i32, ptr %__x, align 4, !dbg !6595
  %10 = load ptr, ptr %__ptr, align 8, !dbg !6595
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %9, ptr elementtype(%struct.__large_struct) %10) #15
          to label %asm.fallthrough [label %Efault], !dbg !6595, !srcloc !6596

asm.fallthrough:                                  ; preds = %do.body
  %11 = load ptr, ptr %__ptr, align 8, !dbg !6597
  call void @kmsan_copy_to_user(ptr noundef %11, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #14, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6594
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !6594
  br label %do.cond, !dbg !6595

do.cond:                                          ; preds = %asm.fallthrough
  br label %do.end, !dbg !6595

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !6599

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x5) #15, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %__x5, metadata !6566, metadata !DIExpression()), !dbg !6600
  %12 = load i64, ptr %m, align 8, !dbg !6600
  %shr = lshr i64 %12, 32, !dbg !6600
  %conv6 = trunc i64 %shr to i32, !dbg !6600
  store i32 %conv6, ptr %__x5, align 4, !dbg !6600
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr7) #15, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %__ptr7, metadata !6568, metadata !DIExpression()), !dbg !6600
  %13 = load ptr, ptr %umask.addr, align 8, !dbg !6600
  %incdec.ptr8 = getelementptr i32, ptr %13, i32 1, !dbg !6600
  store ptr %incdec.ptr8, ptr %umask.addr, align 8, !dbg !6600
  store ptr %13, ptr %__ptr7, align 8, !dbg !6600
  %14 = load i32, ptr %__x5, align 4, !dbg !6600
  %15 = load ptr, ptr %__ptr7, align 8, !dbg !6600
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %14, ptr elementtype(%struct.__large_struct) %15) #15
          to label %asm.fallthrough9 [label %Efault], !dbg !6600, !srcloc !6601

asm.fallthrough9:                                 ; preds = %do.body4
  %16 = load ptr, ptr %__ptr7, align 8, !dbg !6602
  call void @kmsan_copy_to_user(ptr noundef %16, ptr noundef %__x5, i64 noundef 4, i64 noundef 0) #14, !dbg !6602
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr7) #15, !dbg !6599
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x5) #15, !dbg !6599
  br label %do.cond10, !dbg !6600

do.cond10:                                        ; preds = %asm.fallthrough9
  br label %do.end11, !dbg !6600

do.end11:                                         ; preds = %do.cond10
  %17 = load i64, ptr %nr_compat_longs, align 8, !dbg !6604
  %sub12 = sub i64 %17, 2, !dbg !6604
  store i64 %sub12, ptr %nr_compat_longs, align 8, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #15, !dbg !6605
  br label %while.cond, !dbg !6587, !llvm.loop !6606

while.end:                                        ; preds = %while.cond
  %18 = load i64, ptr %nr_compat_longs, align 8, !dbg !6607
  %tobool = icmp ne i64 %18, 0, !dbg !6607
  br i1 %tobool, label %if.then13, label %if.end22, !dbg !6608

if.then13:                                        ; preds = %while.end
  br label %do.body14, !dbg !6609

do.body14:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x15) #15, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %__x15, metadata !6569, metadata !DIExpression()), !dbg !6610
  %19 = load ptr, ptr %mask.addr, align 8, !dbg !6610
  %20 = load i64, ptr %19, align 8, !dbg !6610
  %conv16 = trunc i64 %20 to i32, !dbg !6610
  store i32 %conv16, ptr %__x15, align 4, !dbg !6610
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #15, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !6572, metadata !DIExpression()), !dbg !6610
  %21 = load ptr, ptr %umask.addr, align 8, !dbg !6610
  %incdec.ptr18 = getelementptr i32, ptr %21, i32 1, !dbg !6610
  store ptr %incdec.ptr18, ptr %umask.addr, align 8, !dbg !6610
  store ptr %21, ptr %__ptr17, align 8, !dbg !6610
  %22 = load i32, ptr %__x15, align 4, !dbg !6610
  %23 = load ptr, ptr %__ptr17, align 8, !dbg !6610
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %22, ptr elementtype(%struct.__large_struct) %23) #15
          to label %asm.fallthrough19 [label %Efault], !dbg !6610, !srcloc !6611

asm.fallthrough19:                                ; preds = %do.body14
  %24 = load ptr, ptr %__ptr17, align 8, !dbg !6612
  call void @kmsan_copy_to_user(ptr noundef %24, ptr noundef %__x15, i64 noundef 4, i64 noundef 0) #14, !dbg !6612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #15, !dbg !6609
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x15) #15, !dbg !6609
  br label %do.cond20, !dbg !6610

do.cond20:                                        ; preds = %asm.fallthrough19
  br label %do.end21, !dbg !6610

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6610

if.end22:                                         ; preds = %do.end21, %while.end
  call void @clac() #14, !dbg !6614
  store i64 0, ptr %retval, align 8, !dbg !6615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6615

Efault:                                           ; preds = %do.body14, %do.body4, %do.body
  call void @llvm.dbg.label(metadata !6573), !dbg !6616
  call void @clac() #14, !dbg !6617
  store i64 -14, ptr %retval, align 8, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6618

cleanup:                                          ; preds = %Efault, %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_compat_longs) #15, !dbg !6619
  %25 = load i64, ptr %retval, align 8, !dbg !6619
  ret i64 %25, !dbg !6619
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !6620 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6624, metadata !DIExpression()), !dbg !6628
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6625, metadata !DIExpression()), !dbg !6629
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6626, metadata !DIExpression()), !dbg !6630
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6627, metadata !DIExpression()), !dbg !6631
  ret void, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_compat_sigset(ptr noundef %set, ptr noundef %compat) #0 align 16 !dbg !6633 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %compat.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  store ptr %compat, ptr %compat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compat.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  %0 = load ptr, ptr %set.addr, align 8, !dbg !6650
  %1 = load ptr, ptr %compat.addr, align 8, !dbg !6652
  %call = call i64 @copy_from_user(ptr noundef %0, ptr noundef %1, i64 noundef 8) #14, !dbg !6653
  %tobool = icmp ne i64 %call, 0, !dbg !6653
  br i1 %tobool, label %if.then, label %if.end, !dbg !6654

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6655
  br label %return, !dbg !6655

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6657
  ret i32 %2, !dbg !6657
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6658 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6660, metadata !DIExpression()), !dbg !6663
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6661, metadata !DIExpression()), !dbg !6664
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6662, metadata !DIExpression()), !dbg !6665
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6666
  %1 = load i64, ptr %n.addr, align 8, !dbg !6668
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #14, !dbg !6669
  br i1 %call, label %if.then, label %if.end, !dbg !6670

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6671
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6672
  %4 = load i64, ptr %n.addr, align 8, !dbg !6673
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !6674
  store i64 %call1, ptr %n.addr, align 8, !dbg !6675
  br label %if.end, !dbg !6676

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6677
  ret i64 %5, !dbg !6678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_sigprocmask(i32 noundef %how, ptr noundef %nset, ptr noundef %oset) #5 align 16 !dbg !6679 {
entry:
  %retval = alloca i64, align 8
  %how.addr = alloca i32, align 4
  %nset.addr = alloca ptr, align 8
  %oset.addr = alloca ptr, align 8
  %old_set = alloca i64, align 8
  %new_set = alloca i64, align 8
  %new_blocked = alloca %struct.sigset_t, align 8
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp22 = alloca i64, align 8
  store i32 %how, ptr %how.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how.addr, metadata !6683, metadata !DIExpression()), !dbg !6709
  store ptr %nset, ptr %nset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nset.addr, metadata !6684, metadata !DIExpression()), !dbg !6709
  store ptr %oset, ptr %oset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oset.addr, metadata !6685, metadata !DIExpression()), !dbg !6709
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_set) #15, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %old_set, metadata !6686, metadata !DIExpression()), !dbg !6711
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_set) #15, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %new_set, metadata !6688, metadata !DIExpression()), !dbg !6712
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_blocked) #15, !dbg !6713
  call void @llvm.dbg.declare(metadata ptr %new_blocked, metadata !6689, metadata !DIExpression()), !dbg !6714
  %call = call ptr @get_current() #14, !dbg !6715
  %blocked = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 106, !dbg !6716
  %sig = getelementptr inbounds %struct.sigset_t, ptr %blocked, i32 0, i32 0, !dbg !6717
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6715
  %0 = load i64, ptr %arrayidx, align 16, !dbg !6715
  store i64 %0, ptr %old_set, align 8, !dbg !6718
  %1 = load ptr, ptr %nset.addr, align 8, !dbg !6719
  %tobool = icmp ne ptr %1, null, !dbg !6719
  br i1 %tobool, label %if.then, label %if.end15, !dbg !6720

if.then:                                          ; preds = %entry
  call void @might_fault() #14, !dbg !6721
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6690, metadata !DIExpression()), !dbg !6722
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #15, !dbg !6722
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6696, metadata !DIExpression()), !dbg !6722
  %2 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6722
  %3 = load ptr, ptr %nset.addr, align 8, !dbg !6722
  %4 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %3, i64 4, i64 %2) #15, !dbg !6722, !srcloc !6723
  %asmresult = extractvalue { ptr, i32, i64 } %4, 0, !dbg !6722
  %asmresult1 = extractvalue { ptr, i32, i64 } %4, 1, !dbg !6722
  %asmresult2 = extractvalue { ptr, i32, i64 } %4, 2, !dbg !6722
  %5 = ptrtoint ptr %asmresult to i64, !dbg !6722
  %6 = trunc i64 %5 to i32, !dbg !6722
  store i32 %6, ptr %__ret_gu, align 4, !dbg !6722
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6722
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult2), !dbg !6722
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !6724
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6697, metadata !DIExpression()), !dbg !6724
  %7 = load i32, ptr %__val_gu, align 4, !dbg !6724
  %conv = zext i32 %7 to i64, !dbg !6724
  store i64 %conv, ptr %__tmp, align 8, !dbg !6724
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #14, !dbg !6724
  %8 = load i64, ptr %__tmp, align 8, !dbg !6724
  %conv4 = trunc i64 %8 to i32, !dbg !6724
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6724
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !6722
  %9 = load i32, ptr %tmp3, align 4, !dbg !6724
  %10 = load i32, ptr %__val_gu, align 4, !dbg !6722
  %conv5 = zext i32 %10 to i64, !dbg !6722
  store i64 %conv5, ptr %new_set, align 8, !dbg !6722
  %11 = load i32, ptr %__ret_gu, align 4, !dbg !6722
  %conv7 = sext i32 %11 to i64, !dbg !6722
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6722
  store i64 %expval, ptr %tmp6, align 8, !dbg !6722
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #15, !dbg !6721
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !6721
  %12 = load i64, ptr %tmp6, align 8, !dbg !6722
  store i64 %12, ptr %tmp, align 8, !dbg !6721
  %13 = load i64, ptr %tmp, align 8, !dbg !6721
  %tobool8 = icmp ne i64 %13, 0, !dbg !6725
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !6726

if.then9:                                         ; preds = %if.then
  store i64 -14, ptr %retval, align 8, !dbg !6727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6727

if.end:                                           ; preds = %if.then
  %14 = load i64, ptr %new_set, align 8, !dbg !6728
  %and = and i64 %14, -262401, !dbg !6728
  store i64 %and, ptr %new_set, align 8, !dbg !6728
  %call10 = call ptr @get_current() #14, !dbg !6729
  %blocked11 = getelementptr inbounds %struct.task_struct, ptr %call10, i32 0, i32 106, !dbg !6730
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new_blocked, ptr align 16 %blocked11, i64 8, i1 false), !dbg !6730
  %15 = load i32, ptr %how.addr, align 4, !dbg !6731
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
  ], !dbg !6732

sw.bb:                                            ; preds = %if.end
  %16 = load i64, ptr %new_set, align 8, !dbg !6733
  call void @sigaddsetmask(ptr noundef %new_blocked, i64 noundef %16) #14, !dbg !6735
  br label %sw.epilog, !dbg !6736

sw.bb12:                                          ; preds = %if.end
  %17 = load i64, ptr %new_set, align 8, !dbg !6737
  call void @sigdelsetmask(ptr noundef %new_blocked, i64 noundef %17) #14, !dbg !6738
  br label %sw.epilog, !dbg !6739

sw.bb13:                                          ; preds = %if.end
  %18 = load i64, ptr %new_set, align 8, !dbg !6740
  %conv14 = trunc i64 %18 to i32, !dbg !6740
  call void @compat_sig_setmask(ptr noundef %new_blocked, i32 noundef %conv14) #14, !dbg !6741
  br label %sw.epilog, !dbg !6742

sw.default:                                       ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6743

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb
  call void @set_current_blocked(ptr noundef %new_blocked) #14, !dbg !6744
  br label %if.end15, !dbg !6745

if.end15:                                         ; preds = %sw.epilog, %entry
  %19 = load ptr, ptr %oset.addr, align 8, !dbg !6746
  %tobool16 = icmp ne ptr %19, null, !dbg !6746
  br i1 %tobool16, label %if.then17, label %if.end28, !dbg !6747

if.then17:                                        ; preds = %if.end15
  call void @might_fault() #14, !dbg !6748
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !6699, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !6705, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !6706, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6707, metadata !DIExpression()), !dbg !6749
  %20 = load i64, ptr %old_set, align 8, !dbg !6749
  %conv19 = trunc i64 %20 to i32, !dbg !6749
  store i32 %conv19, ptr %__x, align 4, !dbg !6749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6708, metadata !DIExpression()), !dbg !6749
  %21 = load ptr, ptr %oset.addr, align 8, !dbg !6749
  store ptr %21, ptr %__ptr, align 8, !dbg !6749
  %22 = load ptr, ptr %__ptr, align 8, !dbg !6749
  store ptr %22, ptr %__ptr_pu, align 8, !dbg !6749
  %23 = load i32, ptr %__x, align 4, !dbg !6749
  store i32 %23, ptr %__val_pu, align 4, !dbg !6749
  %24 = call i64 @llvm.read_register.i64(metadata !6085), !dbg !6749
  %25 = load ptr, ptr %__ptr_pu, align 8, !dbg !6749
  %26 = load i32, ptr %__val_pu, align 4, !dbg !6749
  %27 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %25, i32 %26, i64 4, i64 %24) #15, !dbg !6749, !srcloc !6750
  %asmresult20 = extractvalue { ptr, i64 } %27, 0, !dbg !6749
  %asmresult21 = extractvalue { ptr, i64 } %27, 1, !dbg !6749
  %28 = ptrtoint ptr %asmresult20 to i64, !dbg !6749
  %29 = trunc i64 %28 to i32, !dbg !6749
  store i32 %29, ptr %__ret_pu, align 4, !dbg !6749
  call void @llvm.write_register.i64(metadata !6085, i64 %asmresult21), !dbg !6749
  %30 = load ptr, ptr %__ptr, align 8, !dbg !6751
  call void @kmsan_copy_to_user(ptr noundef %30, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #14, !dbg !6751
  %31 = load i32, ptr %__ret_pu, align 4, !dbg !6749
  %conv23 = sext i32 %31 to i64, !dbg !6749
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6749
  store i64 %expval24, ptr %tmp22, align 8, !dbg !6749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !6748
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !6748
  %32 = load i64, ptr %tmp22, align 8, !dbg !6749
  store i64 %32, ptr %tmp18, align 8, !dbg !6748
  %33 = load i64, ptr %tmp18, align 8, !dbg !6748
  %tobool25 = icmp ne i64 %33, 0, !dbg !6753
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6754

if.then26:                                        ; preds = %if.then17
  store i64 -14, ptr %retval, align 8, !dbg !6755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6755

if.end27:                                         ; preds = %if.then17
  br label %if.end28, !dbg !6756

if.end28:                                         ; preds = %if.end27, %if.end15
  store i64 0, ptr %retval, align 8, !dbg !6757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6757

cleanup:                                          ; preds = %if.end28, %if.then26, %sw.default, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_blocked) #15, !dbg !6758
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_set) #15, !dbg !6758
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_set) #15, !dbg !6758
  %34 = load i64, ptr %retval, align 8, !dbg !6758
  ret i64 %34, !dbg !6758
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !6759 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6770
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6764, metadata !DIExpression()), !dbg !6770
  br label %do.body, !dbg !6770

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6766, metadata !DIExpression()), !dbg !6771
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6771
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6770
  br label %do.cond, !dbg !6771

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6771

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6768, metadata !DIExpression()), !dbg !6772
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !6772, !srcloc !6773
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6772
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6772
  %3 = inttoptr i64 %2 to ptr, !dbg !6772
  store ptr %3, ptr %tmp, align 8, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6770
  %4 = load ptr, ptr %tmp, align 8, !dbg !6772
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6770
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6770
  store ptr %5, ptr %tmp1, align 8, !dbg !6770
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6774
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6770
  ret ptr %6, !dbg !6775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !6776 {
entry:
  ret void, !dbg !6778
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sigaddsetmask(ptr noundef %set, i64 noundef %mask) #5 align 16 !dbg !6779 {
entry:
  %set.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6783, metadata !DIExpression()), !dbg !6785
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6784, metadata !DIExpression()), !dbg !6786
  %0 = load i64, ptr %mask.addr, align 8, !dbg !6787
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6788
  %sig = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6789
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6788
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6790
  %or = or i64 %2, %0, !dbg !6790
  store i64 %or, ptr %arrayidx, align 8, !dbg !6790
  ret void, !dbg !6791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sigdelsetmask(ptr noundef %set, i64 noundef %mask) #5 align 16 !dbg !6792 {
entry:
  %set.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6794, metadata !DIExpression()), !dbg !6796
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6795, metadata !DIExpression()), !dbg !6797
  %0 = load i64, ptr %mask.addr, align 8, !dbg !6798
  %not = xor i64 %0, -1, !dbg !6799
  %1 = load ptr, ptr %set.addr, align 8, !dbg !6800
  %sig = getelementptr inbounds %struct.sigset_t, ptr %1, i32 0, i32 0, !dbg !6801
  %arrayidx = getelementptr [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6800
  %2 = load i64, ptr %arrayidx, align 8, !dbg !6802
  %and = and i64 %2, %not, !dbg !6802
  store i64 %and, ptr %arrayidx, align 8, !dbg !6802
  ret void, !dbg !6803
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @compat_sig_setmask(ptr noundef %blocked, i32 noundef %set) #5 align 16 !dbg !6804 {
entry:
  %blocked.addr = alloca ptr, align 8
  %set.addr = alloca i32, align 4
  store ptr %blocked, ptr %blocked.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocked.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6809, metadata !DIExpression()), !dbg !6811
  %0 = load ptr, ptr %blocked.addr, align 8, !dbg !6812
  %sig = getelementptr inbounds %struct.sigset_t, ptr %0, i32 0, i32 0, !dbg !6813
  %arraydecay = getelementptr inbounds [1 x i64], ptr %sig, i64 0, i64 0, !dbg !6814
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 4 %set.addr, i64 4, i1 false), !dbg !6814
  ret void, !dbg !6815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6816 dso_local void @set_current_blocked(ptr noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !6819 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6823, metadata !DIExpression()), !dbg !6833
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6824, metadata !DIExpression()), !dbg !6834
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6825, metadata !DIExpression()), !dbg !6835
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #15, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6826, metadata !DIExpression()), !dbg !6837
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6838
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6839
  %conv = trunc i64 %1 to i32, !dbg !6839
  store i32 %conv, ptr %sz, align 4, !dbg !6837
  %2 = load i32, ptr %sz, align 4, !dbg !6840
  %cmp = icmp sge i32 %2, 0, !dbg !6840
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6840

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6840
  %conv2 = sext i32 %3 to i64, !dbg !6840
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6840
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6840
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6842
  %lnot = xor i1 %5, true, !dbg !6840
  %lnot5 = xor i1 %lnot, true, !dbg !6840
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6840
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6840
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6840
  %tobool = icmp ne i64 %expval, 0, !dbg !6840
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6843

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6844
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6847
  br i1 %7, label %if.else, label %if.then7, !dbg !6848

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6849
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6850
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !6851
  br label %if.end11, !dbg !6851

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6852, !range !6854, !noundef !640
  %tobool8 = trunc i8 %10 to i1, !dbg !6852
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6855

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !6856, !srcloc !6857
  br label %if.end, !dbg !6856

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !6858, !srcloc !6859
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6860

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6827, metadata !DIExpression()), !dbg !6861
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6861
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6861
  %lnot15 = xor i1 %cmp13, true, !dbg !6861
  %lnot17 = xor i1 %lnot15, true, !dbg !6861
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6861
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6861
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6862
  %tobool19 = icmp ne i32 %12, 0, !dbg !6862
  %lnot20 = xor i1 %tobool19, true, !dbg !6862
  %lnot22 = xor i1 %lnot20, true, !dbg !6862
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6862
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6862
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6862
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6862
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6861

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6862

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6863
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6830, metadata !DIExpression()), !dbg !6863
  store i32 2307, ptr %__flags, align 4, !dbg !6863
  br label %do.body28, !dbg !6863

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6864

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6864

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6863

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6866
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #15, !dbg !6866, !srcloc !6868
  br label %do.cond30, !dbg !6866

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6866

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6863

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6869

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6869

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6862
  br label %do.cond35, !dbg !6863

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6863

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6863

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6861
  %tobool38 = icmp ne i32 %14, 0, !dbg !6861
  %lnot39 = xor i1 %tobool38, true, !dbg !6861
  %lnot41 = xor i1 %lnot39, true, !dbg !6861
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6861
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6861
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6861
  store i64 %expval44, ptr %tmp, align 8, !dbg !6862
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6871
  %15 = load i64, ptr %tmp, align 8, !dbg !6861
  %tobool45 = icmp ne i64 %15, 0, !dbg !6871
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6872

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6873

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6874
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6875
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6876, !range !6854, !noundef !640
  %tobool48 = trunc i8 %18 to i1, !dbg !6876
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !6877
  store i1 true, ptr %retval, align 1, !dbg !6878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6878

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #15, !dbg !6879
  %19 = load i1, ptr %retval, align 1, !dbg !6879
  ret i1 %19, !dbg !6879
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6880 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6881 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6886, metadata !DIExpression()), !dbg !6888
  %0 = load i32, ptr %size.addr, align 4, !dbg !6889
  %1 = load i64, ptr %count.addr, align 8, !dbg !6891
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !6892
  ret void, !dbg !6893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6894 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6895 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6896 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6900, metadata !DIExpression()), !dbg !6903
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6901, metadata !DIExpression()), !dbg !6904
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6902, metadata !DIExpression()), !dbg !6905
  ret void, !dbg !6906
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6907 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_sched_setaffinity(i32 noundef %pid, i32 noundef %len, ptr noundef %user_mask_ptr) #5 align 16 !dbg !6908 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %user_mask_ptr.addr = alloca ptr, align 8
  %new_mask = alloca [1 x %struct.cpumask], align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !6912, metadata !DIExpression()), !dbg !6918
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6913, metadata !DIExpression()), !dbg !6918
  store ptr %user_mask_ptr, ptr %user_mask_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask_ptr.addr, metadata !6914, metadata !DIExpression()), !dbg !6918
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_mask) #15, !dbg !6919
  call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !6915, metadata !DIExpression()), !dbg !6920
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15, !dbg !6921
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6916, metadata !DIExpression()), !dbg !6922
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %new_mask, i32 noundef 3264) #14, !dbg !6923
  br i1 %call, label %if.end, label %if.then, !dbg !6925

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6926

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %user_mask_ptr.addr, align 8, !dbg !6927
  %1 = load i32, ptr %len.addr, align 4, !dbg !6928
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %new_mask, i64 0, i64 0, !dbg !6929
  %call2 = call i32 @compat_get_user_cpu_mask(ptr noundef %0, i32 noundef %1, ptr noundef %arraydecay) #14, !dbg !6930
  store i32 %call2, ptr %retval1, align 4, !dbg !6931
  %2 = load i32, ptr %retval1, align 4, !dbg !6932
  %tobool = icmp ne i32 %2, 0, !dbg !6932
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !6934

if.then3:                                         ; preds = %if.end
  br label %out, !dbg !6935

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %pid.addr, align 4, !dbg !6936
  %arraydecay5 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_mask, i64 0, i64 0, !dbg !6937
  %call6 = call i64 @sched_setaffinity(i32 noundef %3, ptr noundef %arraydecay5) #14, !dbg !6938
  %conv = trunc i64 %call6 to i32, !dbg !6938
  store i32 %conv, ptr %retval1, align 4, !dbg !6939
  br label %out, !dbg !6940

out:                                              ; preds = %if.end4, %if.then3
  call void @llvm.dbg.label(metadata !6917), !dbg !6941
  %arraydecay7 = getelementptr inbounds [1 x %struct.cpumask], ptr %new_mask, i64 0, i64 0, !dbg !6942
  call void @free_cpumask_var(ptr noundef %arraydecay7) #14, !dbg !6943
  %4 = load i32, ptr %retval1, align 4, !dbg !6944
  %conv8 = sext i32 %4 to i64, !dbg !6944
  store i64 %conv8, ptr %retval, align 8, !dbg !6945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6945

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15, !dbg !6946
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_mask) #15, !dbg !6946
  %5 = load i64, ptr %retval, align 8, !dbg !6946
  ret i64 %5, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #5 align 16 !dbg !6947 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6953, metadata !DIExpression()), !dbg !6955
  ret i1 true, !dbg !6956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compat_get_user_cpu_mask(ptr noundef %user_mask_ptr, i32 noundef %len, ptr noundef %new_mask) #0 align 16 !dbg !6957 {
entry:
  %user_mask_ptr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %new_mask.addr = alloca ptr, align 8
  %k = alloca ptr, align 8
  store ptr %user_mask_ptr, ptr %user_mask_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask_ptr.addr, metadata !6962, metadata !DIExpression()), !dbg !6966
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6963, metadata !DIExpression()), !dbg !6967
  store ptr %new_mask, ptr %new_mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_mask.addr, metadata !6964, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #15, !dbg !6969
  call void @llvm.dbg.declare(metadata ptr %k, metadata !6965, metadata !DIExpression()), !dbg !6970
  %0 = load i32, ptr %len.addr, align 4, !dbg !6971
  %call = call i32 @cpumask_size() #14, !dbg !6973
  %cmp = icmp ult i32 %0, %call, !dbg !6974
  br i1 %cmp, label %if.then, label %if.else, !dbg !6975

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %new_mask.addr, align 8, !dbg !6976
  %call1 = call i32 @cpumask_size() #14, !dbg !6977
  %conv = zext i32 %call1 to i64, !dbg !6977
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %conv, i1 false), !dbg !6978
  br label %if.end7, !dbg !6978

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %len.addr, align 4, !dbg !6979
  %call2 = call i32 @cpumask_size() #14, !dbg !6981
  %cmp3 = icmp ugt i32 %2, %call2, !dbg !6982
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !6983

if.then5:                                         ; preds = %if.else
  %call6 = call i32 @cpumask_size() #14, !dbg !6984
  store i32 %call6, ptr %len.addr, align 4, !dbg !6985
  br label %if.end, !dbg !6986

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %3 = load ptr, ptr %new_mask.addr, align 8, !dbg !6987
  %bits = getelementptr inbounds %struct.cpumask, ptr %3, i32 0, i32 0, !dbg !6987
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6987
  store ptr %arraydecay, ptr %k, align 8, !dbg !6988
  %4 = load ptr, ptr %k, align 8, !dbg !6989
  %5 = load ptr, ptr %user_mask_ptr.addr, align 8, !dbg !6990
  %6 = load i32, ptr %len.addr, align 4, !dbg !6991
  %mul = mul i32 %6, 8, !dbg !6992
  %conv8 = zext i32 %mul to i64, !dbg !6991
  %call9 = call i64 @compat_get_bitmap(ptr noundef %4, ptr noundef %5, i64 noundef %conv8) #14, !dbg !6993
  %conv10 = trunc i64 %call9 to i32, !dbg !6993
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #15, !dbg !6994
  ret i32 %conv10, !dbg !6995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6996 dso_local i64 @sched_setaffinity(i32 noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #5 align 16 !dbg !7001 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7005, metadata !DIExpression()), !dbg !7006
  ret void, !dbg !7007
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_size() #5 align 16 !dbg !7008 {
entry:
  ret i32 8, !dbg !7011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_compat_sys_sched_getaffinity(i32 noundef %pid, i32 noundef %len, ptr noundef %user_mask_ptr) #5 align 16 !dbg !7012 {
entry:
  %retval = alloca i64, align 8
  %pid.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %user_mask_ptr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %mask = alloca [1 x %struct.cpumask], align 8
  %cleanup.dest.slot = alloca i32, align 4
  %retlen = alloca i32, align 4
  %__UNIQUE_ID___x352 = alloca i32, align 4
  %__UNIQUE_ID___y353 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %pid, ptr %pid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !7014, metadata !DIExpression()), !dbg !7025
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7015, metadata !DIExpression()), !dbg !7025
  store ptr %user_mask_ptr, ptr %user_mask_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_mask_ptr.addr, metadata !7016, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7017, metadata !DIExpression()), !dbg !7027
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7018, metadata !DIExpression()), !dbg !7029
  %0 = load i32, ptr %len.addr, align 4, !dbg !7030
  %mul = mul i32 %0, 8, !dbg !7032
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !7033
  %cmp = icmp ult i32 %mul, %1, !dbg !7034
  br i1 %cmp, label %if.then, label %if.end, !dbg !7035

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !7036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7036

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %len.addr, align 4, !dbg !7037
  %conv = zext i32 %2 to i64, !dbg !7037
  %and = and i64 %conv, 3, !dbg !7039
  %tobool = icmp ne i64 %and, 0, !dbg !7039
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !7040

if.then1:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !7041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7041

if.end2:                                          ; preds = %if.end
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #14, !dbg !7042
  br i1 %call, label %if.end4, label %if.then3, !dbg !7044

if.then3:                                         ; preds = %if.end2
  store i64 -12, ptr %retval, align 8, !dbg !7045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7045

if.end4:                                          ; preds = %if.end2
  %3 = load i32, ptr %pid.addr, align 4, !dbg !7046
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7047
  %call5 = call i64 @sched_getaffinity(i32 noundef %3, ptr noundef %arraydecay) #14, !dbg !7048
  %conv6 = trunc i64 %call5 to i32, !dbg !7048
  store i32 %conv6, ptr %ret, align 4, !dbg !7049
  %4 = load i32, ptr %ret, align 4, !dbg !7050
  %cmp7 = icmp eq i32 %4, 0, !dbg !7051
  br i1 %cmp7, label %if.then9, label %if.end21, !dbg !7052

if.then9:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retlen) #15, !dbg !7053
  call void @llvm.dbg.declare(metadata ptr %retlen, metadata !7019, metadata !DIExpression()), !dbg !7054
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x352) #15, !dbg !7055
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x352, metadata !7022, metadata !DIExpression()), !dbg !7055
  %5 = load i32, ptr %len.addr, align 4, !dbg !7055
  store i32 %5, ptr %__UNIQUE_ID___x352, align 4, !dbg !7055
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y353) #15, !dbg !7055
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y353, metadata !7024, metadata !DIExpression()), !dbg !7055
  %call10 = call i32 @cpumask_size() #14, !dbg !7055
  store i32 %call10, ptr %__UNIQUE_ID___y353, align 4, !dbg !7055
  %6 = load i32, ptr %__UNIQUE_ID___x352, align 4, !dbg !7055
  %7 = load i32, ptr %__UNIQUE_ID___y353, align 4, !dbg !7055
  %cmp11 = icmp ult i32 %6, %7, !dbg !7055
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !7055

cond.true:                                        ; preds = %if.then9
  %8 = load i32, ptr %__UNIQUE_ID___x352, align 4, !dbg !7055
  br label %cond.end, !dbg !7055

cond.false:                                       ; preds = %if.then9
  %9 = load i32, ptr %__UNIQUE_ID___y353, align 4, !dbg !7055
  br label %cond.end, !dbg !7055

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !7055
  store i32 %cond, ptr %tmp, align 4, !dbg !7055
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y353) #15, !dbg !7056
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x352) #15, !dbg !7056
  %10 = load i32, ptr %tmp, align 4, !dbg !7055
  store i32 %10, ptr %retlen, align 4, !dbg !7054
  %11 = load ptr, ptr %user_mask_ptr.addr, align 8, !dbg !7057
  %arraydecay13 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7059
  %bits = getelementptr inbounds %struct.cpumask, ptr %arraydecay13, i32 0, i32 0, !dbg !7059
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7059
  %12 = load i32, ptr %retlen, align 4, !dbg !7060
  %mul15 = mul i32 %12, 8, !dbg !7061
  %conv16 = zext i32 %mul15 to i64, !dbg !7060
  %call17 = call i64 @compat_put_bitmap(ptr noundef %11, ptr noundef %arraydecay14, i64 noundef %conv16) #14, !dbg !7062
  %tobool18 = icmp ne i64 %call17, 0, !dbg !7062
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !7063

if.then19:                                        ; preds = %cond.end
  store i32 -14, ptr %ret, align 4, !dbg !7064
  br label %if.end20, !dbg !7065

if.else:                                          ; preds = %cond.end
  %13 = load i32, ptr %retlen, align 4, !dbg !7066
  store i32 %13, ptr %ret, align 4, !dbg !7067
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %retlen) #15, !dbg !7068
  br label %if.end21, !dbg !7069

if.end21:                                         ; preds = %if.end20, %if.end4
  %arraydecay22 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7070
  call void @free_cpumask_var(ptr noundef %arraydecay22) #14, !dbg !7071
  %14 = load i32, ptr %ret, align 4, !dbg !7072
  %conv23 = sext i32 %14 to i64, !dbg !7072
  store i64 %conv23, ptr %retval, align 8, !dbg !7073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7073

cleanup:                                          ; preds = %if.end21, %if.then3, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !7074
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7074
  %15 = load i64, ptr %retval, align 8, !dbg !7074
  ret i64 %15, !dbg !7074
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #5 align 16 !dbg !7075 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7077, metadata !DIExpression()), !dbg !7079
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7078, metadata !DIExpression()), !dbg !7080
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !7081
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !7082
  call void @cpumask_clear(ptr noundef %arraydecay) #14, !dbg !7083
  ret i1 true, !dbg !7084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7085 dso_local i64 @sched_getaffinity(i32 noundef, ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #5 align 16 !dbg !7088 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !7090, metadata !DIExpression()), !dbg !7091
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !7092
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !7092
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7092
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !7093
  ret void, !dbg !7094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #5 align 16 !dbg !7095 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7100, metadata !DIExpression()), !dbg !7103
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !7101, metadata !DIExpression()), !dbg !7104
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !7105
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7102, metadata !DIExpression()), !dbg !7106
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !7107
  %add = add i32 %0, 63, !dbg !7107
  %and = and i32 %add, -64, !dbg !7107
  %div = udiv i32 %and, 8, !dbg !7107
  store i32 %div, ptr %len, align 4, !dbg !7106
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !7108
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !7108
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !7108

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !7108
  %cmp = icmp ule i32 %3, 64, !dbg !7108
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !7108

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !7108
  %cmp2 = icmp ugt i32 %4, 0, !dbg !7108
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7110

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !7111
  store i64 0, ptr %5, align 8, !dbg !7112
  br label %if.end, !dbg !7113

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !7114
  %7 = load i32, ptr %len, align 4, !dbg !7115
  %conv = zext i32 %7 to i64, !dbg !7115
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !7116
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !7117
  ret void, !dbg !7117
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !7118 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7119, !srcloc !7120
  ret void, !dbg !7121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7122 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6085}
!llvm.module.flags = !{!6086, !6087, !6088, !6089, !6090, !6091, !6092, !6093}
!llvm.ident = !{!6094}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_compat_sigset354", scope: !2, file: !3, line: 271, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.compat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/compat\22 -D KBUILD_BASENAME=\22compat\22 -D KBUILD_MODNAME=\22compat\22 -D __KBUILD_MODNAME=kmod_compat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/compat.ll kernel/compat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !284, globals: !6078, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/compat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d3e15df8aaacb083cb0c816dccf7a8d")
!4 = !{!5, !11, !107, !115, !122, !130, !146, !151, !158, !164, !171, !179, !186, !192, !201, !206, !211, !217, !228, !234, !243, !248, !254, !266, !272, !279}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !108, line: 9, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!111 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!112 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!113 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!114 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !147, line: 32, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!150 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !159, line: 45, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!162 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!163 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !165, line: 487, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!168 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!169 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!170 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !172, line: 620, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!173 = !{!174, !175, !176, !177, !178}
!174 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!175 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!176 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!177 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!178 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !172, line: 597, baseType: !22, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!182 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!183 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!184 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!185 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !187, line: 26, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!190 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!191 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !165, line: 547, baseType: !7, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200}
!194 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!195 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!196 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!197 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!198 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!200 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !165, line: 564, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!204 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!205 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !165, line: 577, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!209 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !165, line: 503, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!214 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!215 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!216 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !218, line: 253, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227}
!220 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!221 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!222 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!223 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!224 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!225 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!226 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!227 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !218, line: 158, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!231 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!232 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!233 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !235, line: 593, baseType: !22, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!238 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!239 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!240 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!241 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !244, line: 2052, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!245 = !{!246, !247}
!246 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!247 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !249, line: 54, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "USRQUOTA", value: 0)
!252 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!253 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !255, line: 44, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!258 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!259 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!260 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!261 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!262 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!263 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!264 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!265 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !267, line: 16, baseType: !7, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "TT_NONE", value: 0)
!270 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!271 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !273, line: 51, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!276 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!277 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!278 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 10, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!281 = !{!282, !283}
!282 = !DIEnumerator(name: "false", value: 0)
!283 = !DIEnumerator(name: "true", value: 1)
!284 = !{!7, !285, !288, !39, !292, !300, !20, !22, !303, !304, !305, !306, !6076, !6077, !757, !1055}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !287)
!287 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_int_t", file: !289, line: 41, baseType: !290)
!289 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__large_struct", file: !294, line: 471, size: 6400, elements: !295)
!294 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b103a53a1960df693128e0148737f8c5")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !293, file: !294, line: 471, baseType: !297, size: 6400)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 6400, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 100)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !289, line: 45, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_old_sigset_t", file: !289, line: 49, baseType: !301)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !308, line: 746, size: 58368, elements: !309)
!308 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!309 = !{!310, !318, !319, !320, !326, !327, !328, !329, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !409, !420, !521, !525, !528, !559, !560, !561, !562, !573, !575, !576, !577, !578, !579, !580, !591, !592, !595, !596, !597, !598, !599, !600, !601, !602, !609, !610, !617, !618, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5237, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5280, !5286, !5287, !5288, !5289, !5290, !5292, !5295, !5302, !5307, !5310, !5313, !5316, !5348, !5546, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5584, !5585, !5586, !5595, !5603, !5604, !5605, !5606, !5607, !5612, !5613, !5614, !5617, !5618, !5621, !5624, !5629, !5636, !5639, !5640, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5739, !5752, !5753, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5796, !5797, !5803, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5885, !5887, !5888, !5889, !5890, !5891, !5892, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5909, !5910, !5911}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !307, file: !308, line: 752, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !312, line: 56, size: 192, elements: !313)
!312 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!313 = !{!314, !315, !316, !317}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 57, baseType: !39, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !311, file: !312, line: 58, baseType: !39, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !311, file: !312, line: 59, baseType: !301, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !311, file: !312, line: 61, baseType: !301, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !307, file: !308, line: 754, baseType: !7, size: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !307, file: !308, line: 767, baseType: !20, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !307, file: !308, line: 768, baseType: !321, size: 32, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !322, line: 113, baseType: !323)
!322 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !322, line: 111, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !323, file: !322, line: 112, baseType: !49, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !308, line: 770, baseType: !7, size: 32, offset: 352)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !307, file: !308, line: 771, baseType: !7, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !307, file: !308, line: 774, baseType: !22, size: 32, offset: 416)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !307, file: !308, line: 775, baseType: !330, size: 128, offset: 448)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !331, line: 58, size: 128, elements: !332)
!331 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!332 = !{!333, !339, !344, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !330, file: !331, line: 59, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !335, line: 60, size: 64, elements: !336)
!335 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !335, line: 61, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !331, line: 60, baseType: !340, size: 32, offset: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !331, line: 60, size: 32, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !340, file: !331, line: 61, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !340, file: !331, line: 62, baseType: !49, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !330, file: !331, line: 65, baseType: !93, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !330, file: !331, line: 65, baseType: !93, size: 16, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !307, file: !308, line: 776, baseType: !7, size: 32, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !307, file: !308, line: 777, baseType: !39, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !307, file: !308, line: 778, baseType: !306, size: 64, offset: 704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !307, file: !308, line: 787, baseType: !22, size: 32, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !307, file: !308, line: 788, baseType: !22, size: 32, offset: 800)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !307, file: !308, line: 790, baseType: !22, size: 32, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !307, file: !308, line: 792, baseType: !22, size: 32, offset: 864)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !307, file: !308, line: 793, baseType: !22, size: 32, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !307, file: !308, line: 794, baseType: !22, size: 32, offset: 928)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !307, file: !308, line: 795, baseType: !7, size: 32, offset: 960)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !307, file: !308, line: 797, baseType: !357, size: 2048, offset: 1024)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !308, line: 551, size: 2048, elements: !358)
!358 = !{!359, !364, !372, !373, !374, !375, !376, !377, !378, !379, !380, !383, !384, !385, !386, !388, !391, !392, !393}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !357, file: !308, line: 553, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !308, line: 411, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !360, file: !308, line: 412, baseType: !39, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !360, file: !308, line: 413, baseType: !301, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !357, file: !308, line: 554, baseType: !365, size: 192, align: 64, offset: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !366, line: 5, size: 192, align: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!367 = !{!368, !369, !371}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !365, file: !366, line: 6, baseType: !39, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !365, file: !366, line: 7, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !365, file: !366, line: 8, baseType: !370, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !357, file: !308, line: 555, baseType: !285, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !357, file: !308, line: 556, baseType: !285, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !357, file: !308, line: 558, baseType: !97, size: 128, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !357, file: !308, line: 559, baseType: !7, size: 32, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !357, file: !308, line: 561, baseType: !285, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !357, file: !308, line: 562, baseType: !285, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !357, file: !308, line: 563, baseType: !285, size: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !357, file: !308, line: 564, baseType: !285, size: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !357, file: !308, line: 565, baseType: !381, size: 64, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !357, file: !308, line: 566, baseType: !285, size: 64, offset: 960)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !357, file: !308, line: 568, baseType: !285, size: 64, offset: 1024)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !357, file: !308, line: 571, baseType: !22, size: 32, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !357, file: !308, line: 572, baseType: !387, size: 64, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !357, file: !308, line: 574, baseType: !389, size: 64, offset: 1216)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !308, line: 49, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !357, file: !308, line: 576, baseType: !389, size: 64, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !357, file: !308, line: 578, baseType: !39, size: 64, offset: 1344)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !357, file: !308, line: 588, baseType: !394, size: 512, align: 512, offset: 1536)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !308, line: 497, size: 512, align: 512, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !394, file: !308, line: 498, baseType: !285, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !394, file: !308, line: 499, baseType: !285, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !394, file: !308, line: 500, baseType: !285, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !394, file: !308, line: 501, baseType: !301, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !394, file: !308, line: 502, baseType: !301, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !394, file: !308, line: 503, baseType: !39, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !394, file: !308, line: 504, baseType: !39, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !394, file: !308, line: 505, baseType: !39, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !394, file: !308, line: 506, baseType: !405, size: 64, align: 64, offset: 448)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !308, line: 445, size: 64, align: 64, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !405, file: !308, line: 446, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !405, file: !308, line: 447, baseType: !7, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !307, file: !308, line: 798, baseType: !410, size: 384, offset: 3072)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !308, line: 592, size: 384, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !410, file: !308, line: 593, baseType: !97, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !410, file: !308, line: 594, baseType: !39, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !410, file: !308, line: 595, baseType: !39, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !410, file: !308, line: 596, baseType: !7, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !410, file: !308, line: 597, baseType: !26, size: 16, offset: 288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !410, file: !308, line: 598, baseType: !26, size: 16, offset: 304)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !410, file: !308, line: 600, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !307, file: !308, line: 799, baseType: !421, size: 1792, offset: 3456)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !308, line: 610, size: 1792, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !518, !519}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !421, file: !308, line: 611, baseType: !365, size: 192, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !421, file: !308, line: 618, baseType: !285, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !421, file: !308, line: 619, baseType: !285, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !421, file: !308, line: 620, baseType: !285, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !421, file: !308, line: 621, baseType: !285, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !421, file: !308, line: 622, baseType: !285, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !421, file: !308, line: 629, baseType: !381, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !421, file: !308, line: 630, baseType: !285, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !308, line: 631, baseType: !7, size: 32, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !421, file: !308, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !421, file: !308, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !421, file: !308, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !421, file: !308, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !421, file: !308, line: 662, baseType: !437, size: 512, offset: 704)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !438)
!438 = !{!439, !447, !448, !453, !514, !515, !516, !517}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !6, line: 119, baseType: !440, size: 256)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !441, line: 9, size: 256, elements: !442)
!441 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !441, line: 10, baseType: !365, size: 192, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !440, file: !441, line: 11, baseType: !445, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !446, line: 29, baseType: !381)
!446 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !437, file: !6, line: 120, baseType: !445, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !437, file: !6, line: 121, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!5, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !437, file: !6, line: 122, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !456)
!456 = !{!457, !483, !484, !487, !497, !498, !509, !513}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !455, file: !6, line: 160, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !460)
!460 = !{!461, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !6, line: 216, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !459, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !459, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !459, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !459, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !459, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !459, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !459, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !459, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !459, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !459, file: !6, line: 227, baseType: !26, size: 16, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !459, file: !6, line: 228, baseType: !26, size: 16, offset: 208)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !459, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !459, file: !6, line: 235, baseType: !445, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !459, file: !6, line: 236, baseType: !452, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !459, file: !6, line: 237, baseType: !445, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !459, file: !6, line: 238, baseType: !452, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !459, file: !6, line: 239, baseType: !480, size: 4096, align: 512, offset: 512)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 4096, align: 512, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !455, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !455, file: !6, line: 162, baseType: !485, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !25, line: 32, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !37, line: 96, baseType: !22)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !455, file: !6, line: 163, baseType: !488, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !489, line: 274, baseType: !490)
!489 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !489, line: 274, size: 32, elements: !491)
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !490, file: !489, line: 274, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !489, line: 69, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !489, line: 64, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !494, file: !489, line: 65, baseType: !7, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !455, file: !6, line: 164, baseType: !452, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !455, file: !6, line: 165, baseType: !499, size: 128, offset: 256)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !441, line: 14, size: 128, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !499, file: !441, line: 15, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !366, line: 26, size: 128, elements: !503)
!503 = !{!504, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !502, file: !366, line: 27, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !366, line: 12, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !505, file: !366, line: 13, baseType: !370, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !502, file: !366, line: 28, baseType: !370, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !455, file: !6, line: 166, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!445}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !455, file: !6, line: 167, baseType: !445, size: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !6, line: 123, baseType: !83, size: 8, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !437, file: !6, line: 124, baseType: !83, size: 8, offset: 456)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !437, file: !6, line: 125, baseType: !83, size: 8, offset: 464)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !437, file: !6, line: 126, baseType: !83, size: 8, offset: 472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !421, file: !308, line: 671, baseType: !437, size: 512, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !421, file: !308, line: 679, baseType: !520, size: 64, offset: 1728)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !307, file: !308, line: 800, baseType: !522, size: 64, offset: 5248)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !308, line: 800, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !307, file: !308, line: 809, baseType: !526, size: 64, offset: 5312)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !308, line: 70, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !307, file: !308, line: 825, baseType: !529, size: 2048, align: 512, offset: 5632)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !308, line: 509, size: 2048, align: 512, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !529, file: !308, line: 511, baseType: !285, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !529, file: !308, line: 512, baseType: !285, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !529, file: !308, line: 513, baseType: !285, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !529, file: !308, line: 514, baseType: !285, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !529, file: !308, line: 515, baseType: !285, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !529, file: !308, line: 516, baseType: !285, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !529, file: !308, line: 518, baseType: !285, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !529, file: !308, line: 519, baseType: !285, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !529, file: !308, line: 520, baseType: !381, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !529, file: !308, line: 522, baseType: !285, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !529, file: !308, line: 523, baseType: !285, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !529, file: !308, line: 524, baseType: !381, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !529, file: !308, line: 526, baseType: !381, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !529, file: !308, line: 527, baseType: !285, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !529, file: !308, line: 529, baseType: !285, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !529, file: !308, line: 530, baseType: !285, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !529, file: !308, line: 531, baseType: !285, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !529, file: !308, line: 532, baseType: !285, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !529, file: !308, line: 533, baseType: !285, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !529, file: !308, line: 535, baseType: !285, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !529, file: !308, line: 536, baseType: !285, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !529, file: !308, line: 537, baseType: !285, size: 64, offset: 1344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !529, file: !308, line: 538, baseType: !285, size: 64, offset: 1408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !529, file: !308, line: 539, baseType: !285, size: 64, offset: 1472)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !529, file: !308, line: 540, baseType: !285, size: 64, offset: 1536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !529, file: !308, line: 541, baseType: !285, size: 64, offset: 1600)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !529, file: !308, line: 542, baseType: !285, size: 64, offset: 1664)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !529, file: !308, line: 543, baseType: !285, size: 64, offset: 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !307, file: !308, line: 833, baseType: !7, size: 32, offset: 7680)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !307, file: !308, line: 836, baseType: !7, size: 32, offset: 7712)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !307, file: !308, line: 837, baseType: !22, size: 32, offset: 7744)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !307, file: !308, line: 838, baseType: !563, size: 64, offset: 7808)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !566, line: 19, baseType: !567)
!566 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !566, line: 19, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !567, file: !566, line: 19, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 1)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !307, file: !308, line: 839, baseType: !574, size: 64, offset: 7872)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !307, file: !308, line: 840, baseType: !565, size: 64, offset: 7936)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !307, file: !308, line: 841, baseType: !20, size: 64, offset: 8000)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !307, file: !308, line: 843, baseType: !26, size: 16, offset: 8064)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !307, file: !308, line: 845, baseType: !26, size: 16, offset: 8080)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !307, file: !308, line: 848, baseType: !22, size: 32, offset: 8096)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !307, file: !308, line: 849, baseType: !581, size: 32, offset: 8128)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !308, line: 718, size: 32, elements: !582)
!582 = !{!583, !590}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !581, file: !308, line: 724, baseType: !584, size: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !308, line: 719, size: 32, elements: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !584, file: !308, line: 720, baseType: !83, size: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !584, file: !308, line: 721, baseType: !83, size: 8, offset: 8)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !584, file: !308, line: 722, baseType: !83, size: 8, offset: 16)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !584, file: !308, line: 723, baseType: !83, size: 8, offset: 24)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !581, file: !308, line: 725, baseType: !301, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !307, file: !308, line: 850, baseType: !97, size: 128, offset: 8192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !307, file: !308, line: 851, baseType: !593, size: 64, offset: 8320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !308, line: 60, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !307, file: !308, line: 855, baseType: !39, size: 64, offset: 8384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !307, file: !308, line: 856, baseType: !83, size: 8, offset: 8448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !307, file: !308, line: 857, baseType: !83, size: 8, offset: 8456)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !307, file: !308, line: 858, baseType: !22, size: 32, offset: 8480)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !307, file: !308, line: 859, baseType: !97, size: 128, offset: 8512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !307, file: !308, line: 860, baseType: !22, size: 32, offset: 8640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !307, file: !308, line: 861, baseType: !97, size: 128, offset: 8704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !307, file: !308, line: 873, baseType: !603, size: 256, offset: 8832)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !308, line: 376, size: 256, elements: !604)
!604 = !{!605, !606, !607, !608}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !603, file: !308, line: 381, baseType: !39, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !603, file: !308, line: 384, baseType: !287, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !603, file: !308, line: 389, baseType: !287, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !603, file: !308, line: 392, baseType: !287, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !307, file: !308, line: 875, baseType: !97, size: 128, offset: 9088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !307, file: !308, line: 877, baseType: !611, size: 320, offset: 9216)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !612, line: 86, size: 320, elements: !613)
!612 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !611, file: !612, line: 87, baseType: !22, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !611, file: !612, line: 88, baseType: !97, size: 128, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !611, file: !612, line: 89, baseType: !97, size: 128, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !307, file: !308, line: 878, baseType: !365, size: 192, align: 64, offset: 9536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !307, file: !308, line: 881, baseType: !619, size: 64, offset: 9728)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !621)
!621 = !{!622, !5151}
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !131, line: 734, baseType: !623, size: 10240)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !131, line: 734, size: 10240, elements: !624)
!624 = !{!625, !629, !643, !5031, !5032, !5033, !5034, !5035, !5036, !5043, !5044, !5045, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5084, !5085, !5088, !5131, !5132, !5133, !5136, !5137, !5138, !5141, !5142, !5143, !5149, !5150}
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !131, line: 739, baseType: !626, size: 512, align: 512)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !131, line: 739, size: 512, align: 512, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !626, file: !131, line: 747, baseType: !49, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !623, file: !131, line: 750, baseType: !630, size: 128, offset: 512)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !631, line: 218, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!632 = !{!633, !641, !642}
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !631, line: 219, baseType: !634, size: 32)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !631, line: 219, size: 32, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !634, file: !631, line: 220, baseType: !59, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !634, file: !631, line: 221, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !631, line: 197, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 197, elements: !640)
!640 = !{}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !630, file: !631, line: 223, baseType: !7, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !630, file: !631, line: 224, baseType: !20, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !623, file: !131, line: 752, baseType: !644, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!39, !647, !39, !39, !39, !39}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !244, line: 994, size: 1856, align: 64, elements: !649)
!649 = !{!650, !664, !665, !667, !674, !686, !687, !688, !1068, !1146, !1155, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !244, line: 995, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !244, line: 995, size: 128, elements: !652)
!652 = !{!653, !654, !663}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !651, file: !244, line: 996, baseType: !334, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !651, file: !244, line: 997, baseType: !655, size: 128, align: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !656)
!656 = !{!657, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !25, line: 233, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !655, file: !25, line: 234, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !658}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !651, file: !244, line: 998, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !648, file: !244, line: 1005, baseType: !59, size: 32, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !648, file: !244, line: 1006, baseType: !666, size: 32, offset: 160)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !25, line: 156, baseType: !7)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !648, file: !244, line: 1007, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !669, line: 13, baseType: !670)
!669 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !671, file: !25, line: 180, baseType: !381, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !648, file: !244, line: 1008, baseType: !675, size: 256, offset: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !676, line: 66, size: 256, elements: !677)
!676 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!677 = !{!678, !679, !680, !685}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !675, file: !676, line: 67, baseType: !668, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !675, file: !676, line: 68, baseType: !462, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !675, file: !676, line: 70, baseType: !681, size: 32, offset: 96)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !682, line: 15, size: 32, elements: !683)
!682 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !681, file: !682, line: 20, baseType: !49, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !675, file: !676, line: 72, baseType: !97, size: 128, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !648, file: !244, line: 1009, baseType: !41, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !648, file: !244, line: 1010, baseType: !7, size: 32, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !648, file: !244, line: 1011, baseType: !689, size: 256, offset: 640)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !244, line: 948, size: 256, elements: !690)
!690 = !{!691, !714, !1064, !1065, !1066, !1067}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !244, line: 949, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !693, line: 34, baseType: !694)
!693 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 25, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !694, file: !693, line: 26, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !698, line: 27, baseType: !699)
!698 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !698, line: 13, size: 64, elements: !700)
!700 = !{!701, !713}
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !698, line: 14, baseType: !702, size: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !698, line: 14, size: 32, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !702, file: !698, line: 15, baseType: !49, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 16, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 16, size: 32, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !706, file: !698, line: 18, baseType: !83, size: 8)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !706, file: !698, line: 19, baseType: !710, size: 24, offset: 8)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 24, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 3)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !699, file: !698, line: 26, baseType: !71, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !689, file: !244, line: 950, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !108, line: 59, size: 768, elements: !717)
!717 = !{!718, !719, !720, !721, !734, !735, !736, !737}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !108, line: 61, baseType: !321, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !716, file: !108, line: 62, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !108, line: 63, baseType: !59, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !716, file: !108, line: 65, baseType: !722, size: 256, offset: 128)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !732)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !723, file: !25, line: 195, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !25, line: 199, baseType: !726, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !727, file: !25, line: 199, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!732 = !{!733}
!733 = !DISubrange(count: 4)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !716, file: !108, line: 66, baseType: !723, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !716, file: !108, line: 68, baseType: !54, size: 192, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !716, file: !108, line: 69, baseType: !655, size: 128, align: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !716, file: !108, line: 70, baseType: !738, offset: 768)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, elements: !1062)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !108, line: 54, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !739, file: !108, line: 55, baseType: !22, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !739, file: !108, line: 56, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !745, line: 26, size: 1152, elements: !746)
!745 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!746 = !{!747, !761, !762, !763, !764, !768, !769, !770, !773, !1058, !1059, !1060, !1061}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !744, file: !745, line: 27, baseType: !748, size: 192)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !749, line: 19, size: 192, elements: !750)
!749 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!750 = !{!751, !759, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !748, file: !749, line: 20, baseType: !752, size: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !753, line: 296, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!754 = !{!755, !756, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !752, file: !753, line: 297, baseType: !59, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !752, file: !753, line: 299, baseType: !757, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !752, file: !753, line: 300, baseType: !20, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !748, file: !749, line: 21, baseType: !7, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !748, file: !749, line: 22, baseType: !7, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !745, line: 28, baseType: !655, size: 128, align: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !744, file: !745, line: 29, baseType: !7, size: 32, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !744, file: !745, line: 30, baseType: !306, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !744, file: !745, line: 31, baseType: !765, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !767, line: 325, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !744, file: !745, line: 32, baseType: !7, size: 32, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !744, file: !745, line: 33, baseType: !743, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !744, file: !745, line: 35, baseType: !771, size: 64, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !745, line: 17, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !744, file: !745, line: 37, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !776, line: 68, size: 4800, elements: !777)
!776 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!777 = !{!778, !800, !801, !802, !803, !804, !812, !819, !830, !831, !834, !835, !955, !956, !968, !1038, !1039, !1053, !1056}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !775, file: !776, line: 69, baseType: !779, size: 576)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !776, line: 23, size: 576, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !779, file: !776, line: 24, baseType: !301, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !776, line: 25, baseType: !783, size: 512, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !779, file: !776, line: 25, size: 512, elements: !784)
!784 = !{!785, !794}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !783, file: !776, line: 26, baseType: !786, size: 480)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 480, elements: !792)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !776, line: 17, size: 96, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !787, file: !776, line: 18, baseType: !301, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !787, file: !776, line: 19, baseType: !301, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !787, file: !776, line: 20, baseType: !301, size: 32, offset: 64)
!792 = !{!793}
!793 = !DISubrange(count: 5)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !776, line: 27, baseType: !795, size: 128)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !783, file: !776, line: 27, size: 128, elements: !796)
!796 = !{!797, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !795, file: !776, line: 28, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !795, file: !776, line: 29, baseType: !798, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !775, file: !776, line: 70, baseType: !779, size: 576, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !775, file: !776, line: 71, baseType: !779, size: 576, offset: 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !775, file: !776, line: 72, baseType: !774, size: 64, offset: 1728)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !775, file: !776, line: 73, baseType: !22, size: 32, offset: 1792)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !775, file: !776, line: 74, baseType: !805, size: 32, offset: 1824)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !806, line: 23, baseType: !807)
!806 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 21, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !807, file: !806, line: 22, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !775, file: !776, line: 75, baseType: !813, size: 32, offset: 1856)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !806, line: 28, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 26, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !806, line: 27, baseType: !817, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !775, file: !776, line: 76, baseType: !820, size: 192, offset: 1920)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !821, line: 9, size: 192, elements: !822)
!821 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!822 = !{!823, !824, !828, !829}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !820, file: !821, line: 10, baseType: !668, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !820, file: !821, line: 11, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !821, line: 7, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !820, file: !821, line: 12, baseType: !7, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 13, baseType: !321, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !776, line: 77, baseType: !39, size: 64, offset: 2112)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !775, file: !776, line: 80, baseType: !832, size: 8, offset: 2176)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !833)
!833 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !775, file: !776, line: 88, baseType: !97, size: 128, offset: 2240)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !775, file: !776, line: 89, baseType: !836, size: 64, offset: 2368)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !838, line: 195, size: 1728, elements: !839)
!838 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!839 = !{!840, !841, !844, !849, !858, !861, !862, !869, !870, !871, !872, !875, !876, !877, !879, !880, !919, !940}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !837, file: !838, line: 196, baseType: !321, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !837, file: !838, line: 197, baseType: !842, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !838, line: 28, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !290)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 198, baseType: !845, size: 192, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 198, size: 192, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !845, file: !838, line: 199, baseType: !97, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !845, file: !838, line: 200, baseType: !365, size: 192, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !837, file: !838, line: 205, baseType: !850, size: 320, offset: 256)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !851, line: 48, size: 320, elements: !852)
!851 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!852 = !{!853, !854, !855, !856, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !850, file: !851, line: 49, baseType: !668, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !850, file: !851, line: 55, baseType: !668, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !850, file: !851, line: 57, baseType: !681, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !850, file: !851, line: 59, baseType: !462, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !850, file: !851, line: 60, baseType: !97, size: 128, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !837, file: !838, line: 206, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !838, line: 206, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !837, file: !838, line: 207, baseType: !20, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 208, baseType: !863, size: 64, offset: 704)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 208, size: 64, elements: !864)
!864 = !{!865, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !863, file: !838, line: 209, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !867, line: 8, baseType: !382)
!867 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !863, file: !838, line: 210, baseType: !866, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !837, file: !838, line: 212, baseType: !866, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !837, file: !838, line: 213, baseType: !805, size: 32, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !837, file: !838, line: 214, baseType: !813, size: 32, offset: 864)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !837, file: !838, line: 215, baseType: !873, size: 32, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !838, line: 31, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !301)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !837, file: !838, line: 216, baseType: !26, size: 16, offset: 928)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !837, file: !838, line: 217, baseType: !26, size: 16, offset: 944)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !837, file: !838, line: 221, baseType: !878, size: 16, offset: 960)
!878 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !838, line: 228, baseType: !39, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 245, baseType: !881, size: 320, offset: 1088)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 245, size: 320, elements: !882)
!882 = !{!883, !910}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !881, file: !838, line: 246, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !838, line: 114, size: 320, elements: !885)
!885 = !{!886, !887, !899, !902, !909}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !884, file: !838, line: 116, baseType: !39, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !838, line: 117, baseType: !888, size: 64, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !838, line: 117, size: 64, elements: !889)
!889 = !{!890, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !838, line: 118, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !838, line: 118, size: 64, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !891, file: !838, line: 120, baseType: !93, size: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !891, file: !838, line: 121, baseType: !895, size: 48, offset: 16)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 6)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !888, file: !838, line: 127, baseType: !39, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !838, line: 129, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !838, line: 102, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !884, file: !838, line: 130, baseType: !903, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !838, line: 108, size: 192, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !904, file: !838, line: 109, baseType: !655, size: 128, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !904, file: !838, line: 110, baseType: !321, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !904, file: !838, line: 111, baseType: !832, size: 8, offset: 160)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !884, file: !838, line: 131, baseType: !16, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !838, line: 247, baseType: !911, size: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !838, line: 247, size: 320, elements: !912)
!912 = !{!913, !914, !915, !916, !917}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !911, file: !838, line: 248, baseType: !39, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !911, file: !838, line: 249, baseType: !39, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !911, file: !838, line: 250, baseType: !900, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !911, file: !838, line: 251, baseType: !903, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !911, file: !838, line: 252, baseType: !918, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !838, line: 260, baseType: !920, size: 256, offset: 1408)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !838, line: 260, size: 256, elements: !921)
!921 = !{!922, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !920, file: !838, line: 261, baseType: !923, size: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !838, line: 134, size: 256, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !923, file: !838, line: 135, baseType: !20, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !923, file: !838, line: 136, baseType: !927, size: 256)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !732)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !838, line: 262, baseType: !929, size: 256)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !838, line: 262, size: 256, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !929, file: !838, line: 264, baseType: !97, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !929, file: !838, line: 265, baseType: !933, size: 128, offset: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !934, line: 22, size: 128, elements: !935)
!934 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!935 = !{!936, !939}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !933, file: !934, line: 23, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !934, line: 23, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !933, file: !934, line: 24, baseType: !39, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !837, file: !838, line: 280, baseType: !941, size: 64, offset: 1664)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !838, line: 176, size: 192, elements: !943)
!943 = !{!944, !953, !954}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !942, file: !838, line: 177, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !838, line: 171, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!22, !836, !949, !951, !836}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !942, file: !838, line: 178, baseType: !836, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !942, file: !838, line: 179, baseType: !900, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !775, file: !776, line: 90, baseType: !850, size: 320, offset: 2432)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !775, file: !776, line: 97, baseType: !957, size: 256, offset: 2752)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !958, line: 98, size: 256, elements: !959)
!958 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !957, file: !958, line: 99, baseType: !668, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !957, file: !958, line: 100, baseType: !97, size: 128, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !957, file: !958, line: 101, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !958, line: 21, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !775, file: !776, line: 99, baseType: !969, size: 768, offset: 3008)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !970)
!970 = !{!971, !976}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !969, file: !12, line: 200, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!22, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !969, file: !12, line: 201, baseType: !977, size: 704, offset: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !978)
!978 = !{!979, !1037}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !977, file: !12, line: 195, baseType: !980, size: 640)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !981)
!981 = !{!982, !994, !1006, !1007, !1027, !1028, !1030, !1036}
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !12, line: 174, baseType: !983, size: 192)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !12, line: 174, size: 192, elements: !984)
!984 = !{!985, !993}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !12, line: 175, baseType: !986, size: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !12, line: 175, size: 192, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !986, file: !12, line: 176, baseType: !33, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !986, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !986, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !986, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !986, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !983, file: !12, line: 182, baseType: !655, size: 128, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !980, file: !12, line: 184, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !997, line: 26, size: 256, elements: !998)
!997 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !996, file: !997, line: 27, baseType: !7, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !996, file: !997, line: 28, baseType: !1001, size: 192, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1002, line: 43, size: 192, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !1002, line: 44, baseType: !462, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1001, file: !1002, line: 45, baseType: !97, size: 128, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !980, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !980, file: !12, line: 186, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !1010)
!1010 = !{!1011, !1012, !1016, !1023}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1009, file: !12, line: 205, baseType: !969, size: 768)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1009, file: !12, line: 206, baseType: !1013, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!975, !1008}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1009, file: !12, line: 207, baseType: !1017, size: 64, offset: 832)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1009, file: !12, line: 209, baseType: !1024, size: 64, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!22, !1020, !33}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !980, file: !12, line: 187, baseType: !975, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !980, file: !12, line: 188, baseType: !1029, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !980, file: !12, line: 189, baseType: !1031, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1032, file: !12, line: 158, baseType: !365, size: 192, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1032, file: !12, line: 159, baseType: !1020, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !980, file: !12, line: 190, baseType: !723, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !977, file: !12, line: 196, baseType: !505, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !775, file: !776, line: 100, baseType: !1020, size: 64, offset: 3776)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !775, file: !776, line: 102, baseType: !1040, size: 64, offset: 3840)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !776, line: 107, size: 1152, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1051}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1041, file: !776, line: 108, baseType: !727, size: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1041, file: !776, line: 109, baseType: !774, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1041, file: !776, line: 110, baseType: !805, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1041, file: !776, line: 111, baseType: !49, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1041, file: !776, line: 112, baseType: !1048, size: 640, offset: 256)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 640, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 10)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1041, file: !776, line: 113, baseType: !1052, size: 256, offset: 896)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !732)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !775, file: !776, line: 103, baseType: !1054, size: 640, offset: 3904)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 640, elements: !1049)
!1055 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !775, file: !776, line: 104, baseType: !1057, size: 256, offset: 4544)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 256, elements: !732)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !744, file: !745, line: 38, baseType: !1040, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !744, file: !745, line: 39, baseType: !22, size: 32, offset: 832)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !744, file: !745, line: 40, baseType: !820, size: 192, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !744, file: !745, line: 42, baseType: !22, size: 32, offset: 1088)
!1062 = !{!1063}
!1063 = !DISubrange(count: -1)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !689, file: !244, line: 951, baseType: !107, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !689, file: !244, line: 952, baseType: !805, size: 32, offset: 160)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !689, file: !244, line: 952, baseType: !805, size: 32, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !689, file: !244, line: 953, baseType: !22, size: 32, offset: 224)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !648, file: !244, line: 1012, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1072, line: 110, size: 1472, elements: !1073)
!1072 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1131, !1132, !1133, !1141}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1071, file: !1072, line: 111, baseType: !668, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1071, file: !1072, line: 112, baseType: !805, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1071, file: !1072, line: 113, baseType: !813, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1071, file: !1072, line: 114, baseType: !805, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1071, file: !1072, line: 115, baseType: !813, size: 32, offset: 160)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1071, file: !1072, line: 116, baseType: !805, size: 32, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1071, file: !1072, line: 117, baseType: !813, size: 32, offset: 224)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1071, file: !1072, line: 118, baseType: !805, size: 32, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1071, file: !1072, line: 119, baseType: !813, size: 32, offset: 288)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1071, file: !1072, line: 120, baseType: !7, size: 32, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1071, file: !1072, line: 121, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1086, line: 24, baseType: !1087)
!1086 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 24, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1087, file: !1086, line: 24, baseType: !285, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1071, file: !1072, line: 122, baseType: !1085, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1071, file: !1072, line: 123, baseType: !1085, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1071, file: !1072, line: 124, baseType: !1085, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1071, file: !1072, line: 125, baseType: !1085, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1071, file: !1072, line: 127, baseType: !87, size: 8, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1071, file: !1072, line: 129, baseType: !836, size: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1071, file: !1072, line: 130, baseType: !836, size: 64, offset: 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1071, file: !1072, line: 131, baseType: !836, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1071, file: !1072, line: 132, baseType: !836, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1071, file: !1072, line: 135, baseType: !20, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1071, file: !1072, line: 137, baseType: !1101, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1103, line: 14, size: 1088, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1104 = !{!1105, !1106, !1115, !1116, !1117, !1118, !1119, !1120}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1102, file: !1103, line: 15, baseType: !321, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1102, file: !1103, line: 17, baseType: !1107, size: 320, offset: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1108, line: 22, size: 320, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1107, file: !1108, line: 23, baseType: !462, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1107, file: !1108, line: 24, baseType: !381, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1107, file: !1108, line: 26, baseType: !97, size: 128, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1107, file: !1108, line: 28, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1102, file: !1103, line: 19, baseType: !39, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1102, file: !1103, line: 20, baseType: !668, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1102, file: !1103, line: 23, baseType: !727, size: 128, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1102, file: !1103, line: 24, baseType: !805, size: 32, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1102, file: !1103, line: 29, baseType: !668, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1102, file: !1103, line: 36, baseType: !1121, size: 320, offset: 768)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1122, line: 15, size: 320, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1122, line: 16, baseType: !462, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1121, file: !1122, line: 18, baseType: !22, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1121, file: !1122, line: 19, baseType: !22, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1121, file: !1122, line: 20, baseType: !22, size: 32, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1121, file: !1122, line: 21, baseType: !22, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1121, file: !1122, line: 22, baseType: !39, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !1122, line: 23, baseType: !39, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1071, file: !1072, line: 138, baseType: !774, size: 64, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1071, file: !1072, line: 139, baseType: !1040, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1071, file: !1072, line: 140, baseType: !1134, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1072, line: 25, size: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !1072, line: 26, baseType: !49, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1135, file: !1072, line: 27, baseType: !22, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1135, file: !1072, line: 28, baseType: !1140, offset: 64)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, elements: !1062)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1072, line: 142, baseType: !1142, size: 128, offset: 1344)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !1072, line: 142, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1142, file: !1072, line: 143, baseType: !22, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1142, file: !1072, line: 144, baseType: !655, size: 128, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !648, file: !244, line: 1013, baseType: !1147, size: 256, offset: 960)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !244, line: 970, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1147, file: !244, line: 971, baseType: !39, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !244, line: 972, baseType: !7, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1147, file: !244, line: 973, baseType: !7, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1147, file: !244, line: 974, baseType: !7, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1147, file: !244, line: 975, baseType: !7, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1147, file: !244, line: 976, baseType: !41, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !648, file: !244, line: 1014, baseType: !1156, size: 128, offset: 1216)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1157, line: 8, size: 128, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1158 = !{!1159, !5021}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1156, file: !1157, line: 9, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1162, line: 70, size: 256, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1163 = !{!1164, !5018, !5019, !5020}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1161, file: !1162, line: 71, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1167, line: 82, size: 1536, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1168 = !{!1169, !1170, !1175, !1183, !1184, !1199, !4986, !4988, !5001, !5002, !5003, !5004, !5005, !5010, !5011, !5012}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1166, file: !1167, line: 84, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1166, file: !1167, line: 85, baseType: !1171, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !489, line: 275, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !489, line: 275, size: 32, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1172, file: !489, line: 275, baseType: !493, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1166, file: !1167, line: 86, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1177, line: 38, size: 128, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1178 = !{!1179, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !1177, line: 39, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1176, file: !1177, line: 39, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1166, file: !1167, line: 87, baseType: !1165, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1166, file: !1167, line: 88, baseType: !1185, size: 128, offset: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1167, line: 49, size: 128, elements: !1186)
!1186 = !{!1187, !1196}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1167, line: 50, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1167, line: 50, size: 64, elements: !1189)
!1189 = !{!1190, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1167, line: 51, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !1167, line: 51, size: 64, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1191, file: !1167, line: 52, baseType: !301, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1191, file: !1167, line: 52, baseType: !301, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1188, file: !1167, line: 54, baseType: !285, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1185, file: !1167, line: 56, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1166, file: !1167, line: 89, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !244, line: 641, size: 4800, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1212, !1213, !1400, !4801, !4802, !4803, !4804, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4968, !4971, !4972, !4973, !4982, !4983, !4984, !4985}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1201, file: !244, line: 642, baseType: !24, size: 16)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1201, file: !244, line: 643, baseType: !26, size: 16, offset: 16)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1201, file: !244, line: 644, baseType: !805, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1201, file: !244, line: 645, baseType: !97, size: 128, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1201, file: !244, line: 646, baseType: !813, size: 32, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1201, file: !244, line: 647, baseType: !7, size: 32, offset: 224)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1201, file: !244, line: 650, baseType: !1210, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !244, line: 607, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1201, file: !244, line: 651, baseType: !1210, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1201, file: !244, line: 654, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !244, line: 1966, size: 2048, align: 512, elements: !1217)
!1217 = !{!1218, !1222, !1235, !1241, !1245, !1249, !1253, !1257, !1261, !1265, !1269, !1270, !1276, !1280, !1317, !1348, !1355, !1361, !1365, !1369, !1373, !1377, !1381, !1387, !1391}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1216, file: !244, line: 1967, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1165, !1200, !1165, !7}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1216, file: !244, line: 1968, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!16, !1165, !1200, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1228, line: 10, size: 128, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1229 = !{!1230, !1234}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1227, file: !1228, line: 11, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !20}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1227, file: !1228, line: 12, baseType: !20, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1216, file: !244, line: 1969, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!22, !1239, !1200, !22}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1086, line: 42, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1216, file: !244, line: 1970, baseType: !1242, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1210, !1200, !22, !832}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1216, file: !244, line: 1972, baseType: !1246, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!22, !1165, !918, !22}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1216, file: !244, line: 1974, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!22, !1239, !1200, !1165, !24, !832}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1216, file: !244, line: 1976, baseType: !1254, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!22, !1165, !1200, !1165}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1216, file: !244, line: 1977, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!22, !1200, !1165}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1216, file: !244, line: 1978, baseType: !1262, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!22, !1239, !1200, !1165, !16}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1216, file: !244, line: 1980, baseType: !1266, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!22, !1239, !1200, !1165, !24}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1216, file: !244, line: 1982, baseType: !1258, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1216, file: !244, line: 1983, baseType: !1271, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!22, !1239, !1200, !1165, !24, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !25, line: 21, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !25, line: 18, baseType: !301)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1216, file: !244, line: 1985, baseType: !1277, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!22, !1239, !1200, !1165, !1200, !1165, !7}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1216, file: !244, line: 1987, baseType: !1281, size: 64, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!22, !1239, !1165, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !244, line: 226, size: 640, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1299, !1308, !1309, !1314, !1315, !1316}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1285, file: !244, line: 227, baseType: !7, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1285, file: !244, line: 228, baseType: !24, size: 16, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !244, line: 241, baseType: !1290, size: 32, offset: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !244, line: 241, size: 32, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1290, file: !244, line: 242, baseType: !805, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1290, file: !244, line: 243, baseType: !1294, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1295, line: 16, baseType: !1296)
!1295 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 14, size: 32, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1296, file: !1295, line: 15, baseType: !810, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !244, line: 245, baseType: !1300, size: 32, offset: 96)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !244, line: 245, size: 32, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1300, file: !244, line: 246, baseType: !813, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1300, file: !244, line: 247, baseType: !1304, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1295, line: 20, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 18, size: 32, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1305, file: !1295, line: 19, baseType: !817, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1285, file: !244, line: 249, baseType: !41, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1285, file: !244, line: 250, baseType: !1310, size: 128, offset: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !867, line: 13, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1310, file: !867, line: 14, baseType: !866, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1310, file: !867, line: 15, baseType: !1055, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1285, file: !244, line: 251, baseType: !1310, size: 128, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1285, file: !244, line: 252, baseType: !1310, size: 128, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1285, file: !244, line: 259, baseType: !647, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1216, file: !244, line: 1988, baseType: !1318, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!22, !1239, !1321, !1323, !301, !7}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1325, line: 22, size: 1280, elements: !1326)
!1325 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1324, file: !1325, line: 23, baseType: !301, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1324, file: !1325, line: 24, baseType: !24, size: 16, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1324, file: !1325, line: 25, baseType: !7, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1324, file: !1325, line: 26, baseType: !874, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1324, file: !1325, line: 27, baseType: !285, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1324, file: !1325, line: 28, baseType: !285, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1324, file: !1325, line: 41, baseType: !285, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1324, file: !1325, line: 42, baseType: !1274, size: 32, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1324, file: !1325, line: 43, baseType: !1274, size: 32, offset: 352)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1324, file: !1325, line: 44, baseType: !805, size: 32, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1324, file: !1325, line: 45, baseType: !813, size: 32, offset: 416)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1324, file: !1325, line: 46, baseType: !41, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1324, file: !1325, line: 47, baseType: !1310, size: 128, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1324, file: !1325, line: 48, baseType: !1310, size: 128, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1324, file: !1325, line: 49, baseType: !1310, size: 128, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1324, file: !1325, line: 50, baseType: !1310, size: 128, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1324, file: !1325, line: 51, baseType: !285, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1324, file: !1325, line: 52, baseType: !285, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1324, file: !1325, line: 53, baseType: !301, size: 32, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1324, file: !1325, line: 54, baseType: !301, size: 32, offset: 1184)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1324, file: !1325, line: 55, baseType: !285, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1216, file: !244, line: 1990, baseType: !1349, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !1165, !918, !35}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 66, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !37, line: 73, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !37, line: 15, baseType: !1055)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1216, file: !244, line: 1991, baseType: !1356, size: 64, offset: 1024)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!22, !1200, !1359, !285, !285}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !244, line: 55, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1216, file: !244, line: 1993, baseType: !1362, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!22, !1200, !22}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1216, file: !244, line: 1994, baseType: !1366, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!22, !1200, !1165, !647, !7, !24}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1216, file: !244, line: 1997, baseType: !1370, size: 64, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!22, !1239, !1200, !647, !24}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1216, file: !244, line: 1999, baseType: !1374, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1210, !1239, !1165, !22}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1216, file: !244, line: 2001, baseType: !1378, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!22, !1239, !1165, !1210, !22}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1216, file: !244, line: 2003, baseType: !1382, size: 64, offset: 1408)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!22, !1239, !1165, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !244, line: 76, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1216, file: !244, line: 2005, baseType: !1388, size: 64, offset: 1472)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!22, !1165, !1385}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1216, file: !244, line: 2006, baseType: !1392, size: 64, offset: 1536)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1395, !1200}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !244, line: 3192, size: 192, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1396, file: !244, line: 3193, baseType: !752, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1396, file: !244, line: 3194, baseType: !301, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1201, file: !244, line: 655, baseType: !1401, size: 64, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !244, line: 1190, size: 10752, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !4265, !4397, !4437, !4520, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4537, !4541, !4542, !4543, !4546, !4604, !4607, !4608, !4609, !4650, !4672, !4673, !4674, !4675, !4676, !4677, !4680, !4684, !4693, !4694, !4695, !4696, !4755, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1402, file: !244, line: 1191, baseType: !97, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1402, file: !244, line: 1192, baseType: !1274, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1402, file: !244, line: 1193, baseType: !87, size: 8, offset: 160)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1402, file: !244, line: 1194, baseType: !39, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1402, file: !244, line: 1195, baseType: !41, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1402, file: !244, line: 1196, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !244, line: 2366, size: 576, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1421, !1425, !1429, !1433, !4253, !4254, !4255, !4257, !4258, !4259, !4261, !4262, !4263, !4264}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1411, file: !244, line: 2367, baseType: !16, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1411, file: !244, line: 2368, baseType: !22, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1411, file: !244, line: 2376, baseType: !1416, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!22, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1162, line: 21, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1411, file: !244, line: 2377, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !244, line: 75, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1411, file: !244, line: 2378, baseType: !1426, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1165, !1410, !22, !16, !20}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1411, file: !244, line: 2380, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1401}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1411, file: !244, line: 2381, baseType: !1434, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1443, !2821, !2847, !2848, !2849, !2850, !2854, !2857, !2858, !2859, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2925, !2929, !2949, !2969, !2970, !2971, !2972, !2981, !3004, !3005, !3008, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3022, !3023, !3111, !3119, !3120, !3121, !3123, !4231, !4232, !4241, !4242, !4243, !4244, !4246, !4247, !4248, !4249, !4250, !4251, !4252}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1435, file: !116, line: 403, baseType: !115, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1435, file: !116, line: 406, baseType: !97, size: 128, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1435, file: !116, line: 409, baseType: !1440, size: 448, offset: 192)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 56)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1435, file: !116, line: 417, baseType: !1444, size: 768, offset: 640)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1445)
!1445 = !{!1446, !2815, !2816, !2817, !2820}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1444, file: !116, line: 46, baseType: !1447, size: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1448, line: 64, size: 512, elements: !1449)
!1448 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1449 = !{!1450, !1451, !1452, !1454, !1498, !2662, !2805, !2810, !2811, !2812, !2813, !2814}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1447, file: !1448, line: 65, baseType: !16, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1447, file: !1448, line: 66, baseType: !97, size: 128, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1447, file: !1448, line: 67, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1447, file: !1448, line: 68, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1448, line: 168, size: 768, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1456, file: !1448, line: 169, baseType: !97, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1456, file: !1448, line: 170, baseType: !59, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1456, file: !1448, line: 171, baseType: !1447, size: 512, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1456, file: !1448, line: 172, baseType: !1462, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1448, line: 133, size: 192, elements: !1465)
!1465 = !{!1466, !1473, !1478}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1464, file: !1448, line: 134, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!22, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1464, file: !1448, line: 135, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!16, !1471}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1464, file: !1448, line: 136, baseType: !1479, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!22, !1471, !1483}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1448, line: 125, size: 20736, elements: !1485)
!1485 = !{!1486, !1488, !1492, !1493, !1497}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1484, file: !1448, line: 126, baseType: !1487, size: 192)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 192, elements: !711)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1484, file: !1448, line: 127, baseType: !1489, size: 4096, offset: 192)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 4096, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1484, file: !1448, line: 128, baseType: !22, size: 32, offset: 4288)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1484, file: !1448, line: 129, baseType: !1494, size: 16384, offset: 4320)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !1495)
!1495 = !{!1496}
!1496 = !DISubrange(count: 2048)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1484, file: !1448, line: 130, baseType: !22, size: 32, offset: 20704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1447, file: !1448, line: 69, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1448, line: 116, size: 384, elements: !1502)
!1502 = !{!1503, !1507, !1526, !2650, !2654, !2658}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1501, file: !1448, line: 117, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1453}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1501, file: !1448, line: 118, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1511, line: 254, size: 128, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1512 = !{!1513, !1522}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1510, file: !1511, line: 255, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1352, !1453, !1517, !918}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1511, line: 30, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1518, file: !1511, line: 31, baseType: !16, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1518, file: !1511, line: 32, baseType: !24, size: 16, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1510, file: !1511, line: 256, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1352, !1453, !1517, !16, !35}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1501, file: !1448, line: 119, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1511, line: 84, size: 320, elements: !1531)
!1531 = !{!1532, !1533, !1537, !2646, !2648}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1530, file: !1511, line: 85, baseType: !16, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1530, file: !1511, line: 86, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!24, !1453, !1517, !22}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1530, file: !1511, line: 88, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!24, !1453, !1541, !22}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1511, line: 175, size: 512, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !2637, !2641, !2642}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1542, file: !1511, line: 176, baseType: !1518, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1542, file: !1511, line: 177, baseType: !35, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1542, file: !1511, line: 178, baseType: !20, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1542, file: !1511, line: 179, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !244, line: 472, size: 1536, align: 64, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !2629, !2630, !2631, !2634, !2635, !2636}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1552, file: !244, line: 473, baseType: !1200, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1552, file: !244, line: 474, baseType: !752, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1552, file: !244, line: 475, baseType: !850, size: 320, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1552, file: !244, line: 476, baseType: !757, size: 32, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1552, file: !244, line: 477, baseType: !49, size: 32, offset: 544)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1552, file: !244, line: 482, baseType: !502, size: 128, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1552, file: !244, line: 483, baseType: !39, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1552, file: !244, line: 484, baseType: !39, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1552, file: !244, line: 485, baseType: !1563, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !244, line: 404, size: 1280, elements: !1566)
!1566 = !{!1567, !1895, !1965, !1969, !1973, !1990, !1996, !2000, !2005, !2009, !2013, !2017, !2116, !2120, !2124, !2128, !2133, !2137, !2621, !2625}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1565, file: !244, line: 405, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!22, !1571, !1875}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1573)
!1573 = !{!1574, !1575, !1869, !1874}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !131, line: 75, baseType: !39, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !131, line: 83, baseType: !1576, size: 320, offset: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !131, line: 83, size: 320, elements: !1577)
!1577 = !{!1578, !1599, !1613, !1617, !1868}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !131, line: 84, baseType: !1579, size: 320)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !131, line: 84, size: 320, elements: !1580)
!1580 = !{!1581, !1592, !1593, !1598}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !131, line: 90, baseType: !1582, size: 128)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !131, line: 90, size: 128, elements: !1583)
!1583 = !{!1584, !1585, !1590, !1591}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1582, file: !131, line: 91, baseType: !97, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !131, line: 94, baseType: !1586, size: 128)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !131, line: 94, size: 128, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1586, file: !131, line: 96, baseType: !20, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1586, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1582, file: !131, line: 102, baseType: !97, size: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1582, file: !131, line: 103, baseType: !97, size: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1579, file: !131, line: 106, baseType: !1551, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !131, line: 107, baseType: !1594, size: 64, offset: 192)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1579, file: !131, line: 107, size: 64, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1594, file: !131, line: 108, baseType: !39, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1594, file: !131, line: 109, baseType: !39, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1579, file: !131, line: 117, baseType: !39, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !131, line: 119, baseType: !1600, size: 320)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !131, line: 119, size: 320, elements: !1601)
!1601 = !{!1602, !1603, !1606, !1607, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1600, file: !131, line: 124, baseType: !39, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1600, file: !131, line: 125, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1600, file: !131, line: 126, baseType: !39, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1600, file: !131, line: 127, baseType: !39, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !131, line: 128, baseType: !1609, size: 64, offset: 256)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !131, line: 128, size: 64, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1609, file: !131, line: 133, baseType: !39, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1609, file: !131, line: 138, baseType: !668, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !131, line: 141, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !131, line: 141, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1614, file: !131, line: 142, baseType: !39, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !131, line: 144, baseType: !1618, size: 128)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !131, line: 144, size: 128, elements: !1619)
!1619 = !{!1620, !1867}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1618, file: !131, line: 146, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1623)
!1623 = !{!1624, !1634, !1655, !1656, !1657, !1658, !1659, !1849, !1850, !1851}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1622, file: !123, line: 127, baseType: !1625, size: 384)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1626)
!1626 = !{!1627, !1628, !1630, !1631, !1632, !1633}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1625, file: !123, line: 22, baseType: !39, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1625, file: !123, line: 23, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1625, file: !123, line: 24, baseType: !1629, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1625, file: !123, line: 25, baseType: !39, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1625, file: !123, line: 26, baseType: !39, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1625, file: !123, line: 27, baseType: !39, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1622, file: !123, line: 128, baseType: !1635, size: 128, offset: 384)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1636, line: 105, size: 128, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1635, file: !1636, line: 110, baseType: !39, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1635, file: !1636, line: 118, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1636, line: 95, size: 448, elements: !1642)
!1642 = !{!1643, !1644, !1650, !1651, !1652, !1653, !1654}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1641, file: !1636, line: 96, baseType: !668, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1641, file: !1636, line: 97, baseType: !1645, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1636, line: 60, baseType: !1647)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1641, file: !1636, line: 98, baseType: !1645, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1641, file: !1636, line: 99, baseType: !832, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1641, file: !1636, line: 100, baseType: !832, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1641, file: !1636, line: 101, baseType: !655, size: 128, align: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1641, file: !1636, line: 102, baseType: !1649, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1622, file: !123, line: 129, baseType: !996, size: 256, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1622, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1622, file: !123, line: 132, baseType: !39, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1622, file: !123, line: 133, baseType: !1660, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1663)
!1663 = !{!1664, !1668, !1845}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1662, file: !123, line: 83, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1571}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1662, file: !123, line: 89, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1675, line: 512, size: 896, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1676 = !{!1677, !1812, !1813, !1820, !1827, !1837, !1838, !1839, !1841, !1843}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1675, line: 513, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1675, line: 513, size: 320, elements: !1679)
!1679 = !{!1680, !1808, !1809, !1810, !1811}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1678, file: !1675, line: 514, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1683)
!1683 = !{!1684, !1693, !1694, !1702, !1709, !1710, !1715, !1716, !1721, !1722, !1725, !1801, !1802, !1803, !1804, !1805, !1806}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !131, line: 628, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !131, line: 628, size: 128, elements: !1686)
!1686 = !{!1687, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !131, line: 629, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1685, file: !131, line: 629, size: 128, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1688, file: !131, line: 631, baseType: !39, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1688, file: !131, line: 632, baseType: !39, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1685, file: !131, line: 635, baseType: !655, size: 128, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1682, file: !131, line: 639, baseType: !619, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1682, file: !131, line: 640, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1696, line: 297, baseType: !1697)
!1696 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1696, line: 297, size: 64, elements: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1697, file: !1696, line: 297, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1701, line: 19, baseType: !39)
!1701 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !131, line: 646, baseType: !1703, size: 64, offset: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !131, line: 646, size: 64, elements: !1704)
!1704 = !{!1705, !1708}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1703, file: !131, line: 647, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !39)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1703, file: !131, line: 648, baseType: !1707, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1682, file: !131, line: 666, baseType: !22, size: 32, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1682, file: !131, line: 667, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1712, file: !131, line: 580, baseType: !850, size: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1682, file: !131, line: 670, baseType: !832, size: 8, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1682, file: !131, line: 681, baseType: !1717, size: 256, offset: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !131, line: 678, size: 256, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1717, file: !131, line: 679, baseType: !365, size: 192, align: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1717, file: !131, line: 680, baseType: !39, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1682, file: !131, line: 689, baseType: !97, size: 128, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1682, file: !131, line: 691, baseType: !1723, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !131, line: 691, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1682, file: !131, line: 694, baseType: !1726, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1675, line: 563, size: 1024, elements: !1729)
!1729 = !{!1730, !1734, !1735, !1739, !1743, !1747, !1748, !1752, !1756, !1760, !1761, !1762, !1766, !1770, !1793, !1797}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1728, file: !1675, line: 564, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1681}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1728, file: !1675, line: 569, baseType: !1731, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1728, file: !1675, line: 571, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!22, !1681, !39}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1728, file: !1675, line: 572, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!22, !1681}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1728, file: !1675, line: 578, baseType: !1744, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!22, !1681, !39, !39, !39}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1728, file: !1675, line: 580, baseType: !1669, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1728, file: !1675, line: 581, baseType: !1749, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1672, !1673, !7}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1728, file: !1675, line: 582, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1672, !1673, !39, !39}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1728, file: !1675, line: 584, baseType: !1757, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!39, !1681}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1728, file: !1675, line: 588, baseType: !1669, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1728, file: !1675, line: 591, baseType: !1669, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1728, file: !1675, line: 597, baseType: !1763, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!22, !1681, !39, !20, !22, !22}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1728, file: !1675, line: 603, baseType: !1767, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!16, !1681}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1728, file: !1675, line: 613, baseType: !1771, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!22, !1681, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1776, line: 44, size: 256, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1777 = !{!1778, !1779, !1780, !1781, !1787, !1788}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1775, file: !1776, line: 45, baseType: !49, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1775, file: !1776, line: 46, baseType: !26, size: 16, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 47, baseType: !26, size: 16, offset: 48)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1775, file: !1776, line: 48, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1783, line: 99, baseType: !1784)
!1783 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1783, line: 99, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1784, file: !1783, line: 99, baseType: !570, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1775, file: !1776, line: 49, baseType: !22, size: 32, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1775, file: !1776, line: 54, baseType: !1789, size: 64, offset: 192)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !1776, line: 51, size: 64, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1789, file: !1776, line: 52, baseType: !1782, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1789, file: !1776, line: 53, baseType: !1782, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1728, file: !1675, line: 625, baseType: !1794, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1774, !1681, !39}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1728, file: !1675, line: 633, baseType: !1798, size: 64, offset: 960)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1571, !1681, !39}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1682, file: !131, line: 697, baseType: !39, size: 64, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1682, file: !131, line: 699, baseType: !647, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1682, file: !131, line: 700, baseType: !20, size: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1682, file: !131, line: 711, baseType: !668, size: 64, offset: 1216)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1682, file: !131, line: 717, baseType: !1774, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1682, file: !131, line: 722, baseType: !1807, offset: 1344)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1678, file: !1675, line: 515, baseType: !757, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1678, file: !1675, line: 516, baseType: !39, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1678, file: !1675, line: 517, baseType: !39, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1678, file: !1675, line: 518, baseType: !39, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !1675, line: 520, baseType: !130, size: 32, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1674, file: !1675, line: 522, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1701, line: 22, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1701, line: 22, size: 64, elements: !1817)
!1817 = !{!1818}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1816, file: !1701, line: 22, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1701, line: 15, baseType: !39)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1674, file: !1675, line: 524, baseType: !1821, size: 64, offset: 448)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1696, line: 372, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 372, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1823, file: !1696, line: 372, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1701, line: 16, baseType: !39)
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1675, line: 527, baseType: !1828, size: 64, offset: 512)
!1828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !1675, line: 527, size: 64, elements: !1829)
!1829 = !{!1830, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1828, file: !1675, line: 528, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1701, line: 21, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1701, line: 21, size: 64, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1832, file: !1701, line: 21, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1701, line: 14, baseType: !39)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1828, file: !1675, line: 529, baseType: !1815, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1674, file: !1675, line: 534, baseType: !1571, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1674, file: !1675, line: 535, baseType: !1571, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1674, file: !1675, line: 541, baseType: !1840, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1674, file: !1675, line: 545, baseType: !1842, size: 64, offset: 768)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1674, file: !1675, line: 549, baseType: !1844, size: 64, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1696, line: 520, baseType: !1571)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1662, file: !123, line: 100, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!22, !1621, !39, !39, !22}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1622, file: !123, line: 134, baseType: !20, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1622, file: !123, line: 135, baseType: !22, size: 32, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !123, line: 136, baseType: !1852, size: 128, offset: 1088)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !123, line: 136, size: 128, elements: !1853)
!1853 = !{!1854, !1860}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1852, file: !123, line: 137, baseType: !1855, size: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1856, line: 6, size: 128, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1855, file: !1856, line: 7, baseType: !285, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1855, file: !1856, line: 8, baseType: !285, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !123, line: 138, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !123, line: 138, elements: !1862)
!1862 = !{!1863, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1861, file: !123, line: 138, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !123, line: 138, elements: !640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1861, file: !123, line: 138, baseType: !1866)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1855, elements: !1062)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1618, file: !131, line: 147, baseType: !20, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1576, file: !131, line: 161, baseType: !655, size: 128, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !131, line: 164, baseType: !1870, size: 32, offset: 384)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !131, line: 164, size: 32, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1870, file: !131, line: 169, baseType: !49, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1870, file: !131, line: 177, baseType: !7, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1572, file: !131, line: 181, baseType: !49, size: 32, offset: 416)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !147, line: 42, size: 384, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1876, file: !147, line: 43, baseType: !1055, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1876, file: !147, line: 45, baseType: !1055, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1876, file: !147, line: 52, baseType: !41, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1876, file: !147, line: 53, baseType: !41, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1876, file: !147, line: 55, baseType: !146, size: 32, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1876, file: !147, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1876, file: !147, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1876, file: !147, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1876, file: !147, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1876, file: !147, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1876, file: !147, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1876, file: !147, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1876, file: !147, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1876, file: !147, line: 78, baseType: !1892, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !147, line: 78, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1565, file: !244, line: 406, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!22, !647, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1901)
!1901 = !{!1902, !1932, !1946}
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !131, line: 295, baseType: !1903, size: 512)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !131, line: 295, size: 512, elements: !1904)
!1904 = !{!1905, !1931}
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !131, line: 296, baseType: !1906, size: 448)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1903, file: !131, line: 296, size: 448, elements: !1907)
!1907 = !{!1908, !1909, !1918, !1919, !1920, !1929, !1930}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !131, line: 298, baseType: !39, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !131, line: 299, baseType: !1910, size: 128, offset: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !131, line: 299, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1910, file: !131, line: 300, baseType: !97, size: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !131, line: 302, baseType: !1914, size: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !131, line: 302, size: 128, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1914, file: !131, line: 303, baseType: !20, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1914, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1906, file: !131, line: 310, baseType: !1551, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1906, file: !131, line: 311, baseType: !39, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !131, line: 312, baseType: !1921, size: 64, offset: 320)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !131, line: 312, size: 64, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1921, file: !131, line: 313, baseType: !20, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1921, file: !131, line: 314, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1926, file: !131, line: 256, baseType: !39, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1906, file: !131, line: 316, baseType: !49, size: 32, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1906, file: !131, line: 317, baseType: !49, size: 32, offset: 416)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1903, file: !131, line: 323, baseType: !1572, size: 512, align: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !131, line: 325, baseType: !1933, size: 512, offset: 512)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !131, line: 325, size: 512, elements: !1934)
!1934 = !{!1935, !1945}
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !131, line: 326, baseType: !1936, size: 320)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !131, line: 326, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1936, file: !131, line: 327, baseType: !39, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1936, file: !131, line: 328, baseType: !39, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1936, file: !131, line: 329, baseType: !39, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1936, file: !131, line: 331, baseType: !49, size: 32, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1936, file: !131, line: 332, baseType: !49, size: 32, offset: 224)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1936, file: !131, line: 333, baseType: !49, size: 32, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1936, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1933, file: !131, line: 339, baseType: !1572, size: 512, align: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !131, line: 341, baseType: !1947, size: 512, offset: 1024)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !131, line: 341, size: 512, elements: !1948)
!1948 = !{!1949, !1958, !1964}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !131, line: 342, baseType: !1950, size: 384)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !131, line: 342, size: 384, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1950, file: !131, line: 343, baseType: !39, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1950, file: !131, line: 344, baseType: !39, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1950, file: !131, line: 346, baseType: !20, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1950, file: !131, line: 347, baseType: !20, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1950, file: !131, line: 348, baseType: !20, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1950, file: !131, line: 349, baseType: !20, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !131, line: 352, baseType: !1959, size: 256)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !131, line: 352, size: 256, elements: !1960)
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1959, file: !131, line: 353, baseType: !39, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1959, file: !131, line: 354, baseType: !39, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1959, file: !131, line: 356, baseType: !97, size: 128, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1947, file: !131, line: 359, baseType: !1572, size: 512, align: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1565, file: !244, line: 409, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!22, !1551, !1875}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1565, file: !244, line: 412, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!832, !1551, !1899}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1565, file: !244, line: 414, baseType: !1974, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1979, line: 1276, size: 448, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1980 = !{!1981, !1982, !1983, !1985, !1986, !1987, !1988, !1989}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1978, file: !1979, line: 1277, baseType: !647, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1978, file: !1979, line: 1278, baseType: !1551, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1978, file: !1979, line: 1279, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1978, file: !1979, line: 1281, baseType: !39, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1978, file: !1979, line: 1282, baseType: !7, size: 32, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1978, file: !1979, line: 1283, baseType: !7, size: 32, offset: 288)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1978, file: !1979, line: 1284, baseType: !832, size: 8, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1978, file: !1979, line: 1285, baseType: !39, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1565, file: !244, line: 416, baseType: !1991, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!22, !647, !1551, !41, !7, !1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1565, file: !244, line: 419, baseType: !1997, size: 64, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!22, !647, !1551, !41, !7, !7, !1571, !20}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1565, file: !244, line: 424, baseType: !2001, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!2004, !1551, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !25, line: 131, baseType: !285)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1565, file: !244, line: 425, baseType: !2006, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1899, !35, !35}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1565, file: !244, line: 426, baseType: !2010, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!832, !1899, !757}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1565, file: !244, line: 427, baseType: !2014, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1899}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1565, file: !244, line: 428, baseType: !2018, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1352, !2021, !2059}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !244, line: 373, size: 384, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2030, !2031, !2032, !2033}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2022, file: !244, line: 374, baseType: !647, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2022, file: !244, line: 375, baseType: !41, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2022, file: !244, line: 376, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !2021, !1055}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2022, file: !244, line: 377, baseType: !20, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2022, file: !244, line: 378, baseType: !22, size: 32, offset: 256)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2022, file: !244, line: 379, baseType: !93, size: 16, offset: 288)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !244, line: 380, baseType: !2034, size: 64, offset: 320)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !244, line: 380, size: 64, elements: !2035)
!2035 = !{!2036, !2055}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2034, file: !244, line: 386, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1979, line: 998, size: 448, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2038, file: !1979, line: 999, baseType: !1899, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2038, file: !1979, line: 1000, baseType: !22, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2038, file: !1979, line: 1001, baseType: !2043, size: 320, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !55, line: 14, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !55, line: 30, size: 320, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2054}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !55, line: 31, baseType: !7, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2044, file: !55, line: 32, baseType: !20, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2044, file: !55, line: 33, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !55, line: 16, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!22, !2053, !7, !22, !20}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2044, file: !55, line: 34, baseType: !97, size: 128, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2034, file: !244, line: 395, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!1352, !20}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2061, line: 41, size: 320, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2073, !2111}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2060, file: !2061, line: 42, baseType: !83, size: 8)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2060, file: !2061, line: 43, baseType: !832, size: 8, offset: 8)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2060, file: !2061, line: 44, baseType: !832, size: 8, offset: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2060, file: !2061, line: 45, baseType: !832, size: 8, offset: 24)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2060, file: !2061, line: 46, baseType: !832, size: 8, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 47, baseType: !2069, size: 64, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 47, size: 64, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2069, file: !2061, line: 48, baseType: !35, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2069, file: !2061, line: 49, baseType: !22, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 61, baseType: !2074, size: 128, offset: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 61, size: 128, elements: !2075)
!2075 = !{!2076, !2082}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2074, file: !2061, line: 67, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2078, line: 17, size: 128, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2077, file: !2078, line: 19, baseType: !20, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2077, file: !2078, line: 20, baseType: !36, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !2061, line: 68, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2061, line: 68, size: 128, elements: !2084)
!2084 = !{!2085, !2110}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !2061, line: 69, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2061, line: 69, size: 64, elements: !2087)
!2087 = !{!2088, !2091, !2098, !2107, !2109}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2086, file: !2061, line: 71, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2086, file: !2061, line: 72, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2061, line: 17, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2094, file: !2061, line: 18, baseType: !20, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2094, file: !2061, line: 19, baseType: !35, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2086, file: !2061, line: 73, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2102, line: 31, size: 128, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2101, file: !2102, line: 32, baseType: !1571, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2101, file: !2102, line: 33, baseType: !7, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2101, file: !2102, line: 34, baseType: !7, size: 32, offset: 96)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2086, file: !2061, line: 74, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2086, file: !2061, line: 75, baseType: !20, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2083, file: !2061, line: 77, baseType: !35, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 80, baseType: !2112, size: 64, offset: 256)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 80, size: 64, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2112, file: !2061, line: 81, baseType: !39, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2112, file: !2061, line: 82, baseType: !41, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1565, file: !244, line: 433, baseType: !2117, size: 64, offset: 768)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!22, !1551, !1899, !1899, !151}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1565, file: !244, line: 435, baseType: !2121, size: 64, offset: 832)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!22, !1899}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1565, file: !244, line: 436, baseType: !2125, size: 64, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!832, !1899, !35, !35}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1565, file: !244, line: 438, baseType: !2129, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !1899, !2132, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1565, file: !244, line: 439, baseType: !2134, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!22, !1551, !1571}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1565, file: !244, line: 442, baseType: !2138, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!22, !2141, !647, !2620}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2143, line: 282, size: 2176, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2151, !2152, !2154, !2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2174, !2180, !2181, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2142, file: !2143, line: 283, baseType: !1635, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 284, baseType: !39, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2142, file: !2143, line: 285, baseType: !878, size: 16, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2142, file: !2143, line: 286, baseType: !611, size: 320, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2142, file: !2143, line: 287, baseType: !2150, size: 8, offset: 576)
!2150 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2142, file: !2143, line: 288, baseType: !7, size: 32, offset: 608)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2142, file: !2143, line: 289, baseType: !2153, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2142, file: !2143, line: 290, baseType: !2155, size: 64, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2143, line: 250, size: 64, elements: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2156, file: !2143, line: 251, baseType: !59, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2156, file: !2143, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !2143, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2142, file: !2143, line: 291, baseType: !2162, size: 128, offset: 768)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2143, line: 274, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2162, file: !2143, line: 275, baseType: !2156, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2162, file: !2143, line: 276, baseType: !2156, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2142, file: !2143, line: 292, baseType: !7, size: 32, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2142, file: !2143, line: 293, baseType: !7, size: 32, offset: 928)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2142, file: !2143, line: 294, baseType: !7, size: 32, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2142, file: !2143, line: 295, baseType: !7, size: 32, offset: 992)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2142, file: !2143, line: 296, baseType: !7, size: 32, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2142, file: !2143, line: 297, baseType: !7, size: 32, offset: 1056)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2142, file: !2143, line: 298, baseType: !2173, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2142, file: !2143, line: 299, baseType: !2175, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2143, line: 269, size: 96, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2176, file: !2143, line: 270, baseType: !2156, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !2143, line: 271, baseType: !7, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2142, file: !2143, line: 300, baseType: !505, size: 64, offset: 1216)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2142, file: !2143, line: 301, baseType: !2182, size: 64, offset: 1280)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2184, line: 40, size: 7424, elements: !2185)
!2184 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2185 = !{!2186, !2187, !2188, !2191, !2195, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2222, !2223}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2183, file: !2184, line: 41, baseType: !2004, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2183, file: !2184, line: 42, baseType: !2004, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2183, file: !2184, line: 43, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !308, line: 1453, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2183, file: !2184, line: 44, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2194, line: 74, flags: DIFlagFwdDecl)
!2194 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2183, file: !2184, line: 45, baseType: !2196, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2184, line: 45, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2183, file: !2184, line: 46, baseType: !39, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2183, file: !2184, line: 47, baseType: !832, size: 8, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2183, file: !2184, line: 48, baseType: !83, size: 8, offset: 392)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2183, file: !2184, line: 49, baseType: !832, size: 8, offset: 400)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2183, file: !2184, line: 50, baseType: !832, size: 8, offset: 408)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2183, file: !2184, line: 51, baseType: !1274, size: 32, offset: 416)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2183, file: !2184, line: 52, baseType: !49, size: 32, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2183, file: !2184, line: 53, baseType: !59, size: 32, offset: 480)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2183, file: !2184, line: 54, baseType: !1200, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2183, file: !2184, line: 55, baseType: !20, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2183, file: !2184, line: 56, baseType: !20, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2183, file: !2184, line: 57, baseType: !2210, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2212)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2184, line: 57, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2183, file: !2184, line: 58, baseType: !675, size: 256, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2183, file: !2184, line: 60, baseType: !22, size: 32, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2183, file: !2184, line: 61, baseType: !22, size: 32, offset: 1056)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2183, file: !2184, line: 62, baseType: !1453, size: 64, offset: 1088)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2183, file: !2184, line: 65, baseType: !675, size: 256, offset: 1152)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2183, file: !2184, line: 66, baseType: !1401, size: 64, offset: 1408)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2183, file: !2184, line: 68, baseType: !2220, size: 64, offset: 1472)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2184, line: 68, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2183, file: !2184, line: 72, baseType: !832, size: 8, offset: 1536)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2183, file: !2184, line: 77, baseType: !2224, size: 5824, offset: 1600)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !165, line: 705, size: 5824, elements: !2225)
!2225 = !{!2226, !2227, !2229, !2232, !2233, !2286, !2356, !2357, !2358, !2359, !2360, !2367, !2470, !2483, !2493, !2497, !2499, !2500, !2501, !2505, !2512, !2513, !2516, !2519, !2523, !2526, !2527, !2528, !2529, !2530, !2531, !2588, !2589, !2590, !2593, !2596, !2605, !2606, !2607, !2608, !2609, !2610}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2224, file: !165, line: 706, baseType: !1447, size: 512)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2224, file: !165, line: 707, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2224, file: !165, line: 709, baseType: !2230, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !165, line: 37, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2224, file: !165, line: 711, baseType: !16, size: 64, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2224, file: !165, line: 712, baseType: !2234, size: 64, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !165, line: 89, size: 384, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2246, !2251, !2255}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2236, file: !165, line: 90, baseType: !16, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2236, file: !165, line: 91, baseType: !1527, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2236, file: !165, line: 92, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!22, !2244, !1483}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2224)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2236, file: !165, line: 93, baseType: !2247, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!918, !2244, !2250, !1021, !1022}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2236, file: !165, line: 95, baseType: !2252, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2228}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2236, file: !165, line: 97, baseType: !2256, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !172, line: 286, size: 1472, elements: !2259)
!2259 = !{!2260, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2258, file: !172, line: 287, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!22, !2228}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2258, file: !172, line: 288, baseType: !2252, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2258, file: !172, line: 289, baseType: !2261, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2258, file: !172, line: 290, baseType: !2261, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2258, file: !172, line: 291, baseType: !2261, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2258, file: !172, line: 292, baseType: !2261, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2258, file: !172, line: 293, baseType: !2261, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2258, file: !172, line: 294, baseType: !2261, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2258, file: !172, line: 295, baseType: !2261, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2258, file: !172, line: 296, baseType: !2261, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2258, file: !172, line: 297, baseType: !2261, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2258, file: !172, line: 298, baseType: !2261, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2258, file: !172, line: 299, baseType: !2261, size: 64, offset: 768)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2258, file: !172, line: 300, baseType: !2261, size: 64, offset: 832)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2258, file: !172, line: 301, baseType: !2261, size: 64, offset: 896)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2258, file: !172, line: 302, baseType: !2261, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2258, file: !172, line: 303, baseType: !2261, size: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2258, file: !172, line: 304, baseType: !2261, size: 64, offset: 1088)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2258, file: !172, line: 305, baseType: !2261, size: 64, offset: 1152)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2258, file: !172, line: 306, baseType: !2261, size: 64, offset: 1216)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2258, file: !172, line: 307, baseType: !2261, size: 64, offset: 1280)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2258, file: !172, line: 308, baseType: !2261, size: 64, offset: 1344)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2258, file: !172, line: 309, baseType: !2261, size: 64, offset: 1408)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2224, file: !165, line: 714, baseType: !2287, size: 64, offset: 768)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2290, line: 80, size: 1344, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2355}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2289, file: !2290, line: 81, baseType: !16, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2289, file: !2290, line: 82, baseType: !16, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2289, file: !2290, line: 83, baseType: !1527, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2289, file: !2290, line: 84, baseType: !1527, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2289, file: !2290, line: 85, baseType: !1527, size: 64, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2289, file: !2290, line: 87, baseType: !2298, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!22, !2228, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !159, line: 96, size: 1152, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2314, !2318, !2319, !2320, !2321, !2322, !2330, !2331, !2332, !2333, !2334, !2335}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2302, file: !159, line: 97, baseType: !16, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2302, file: !159, line: 98, baseType: !2287, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2302, file: !159, line: 100, baseType: !1434, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2302, file: !159, line: 101, baseType: !16, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2302, file: !159, line: 103, baseType: !832, size: 8, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2302, file: !159, line: 104, baseType: !158, size: 32, offset: 288)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2302, file: !159, line: 106, baseType: !2311, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !159, line: 106, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2302, file: !159, line: 107, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !159, line: 107, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2302, file: !159, line: 109, baseType: !2261, size: 64, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2302, file: !159, line: 110, baseType: !2252, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2302, file: !159, line: 111, baseType: !2261, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2302, file: !159, line: 112, baseType: !2252, size: 64, offset: 640)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2302, file: !159, line: 113, baseType: !2323, size: 64, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!22, !2228, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !172, line: 60, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !172, line: 58, size: 32, elements: !2328)
!2328 = !{!2329}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2327, file: !172, line: 59, baseType: !22, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2302, file: !159, line: 114, baseType: !2261, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2302, file: !159, line: 115, baseType: !1527, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2302, file: !159, line: 116, baseType: !1527, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2302, file: !159, line: 118, baseType: !2256, size: 64, offset: 960)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2302, file: !159, line: 119, baseType: !2252, size: 64, offset: 1024)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2302, file: !159, line: 121, baseType: !2336, size: 64, offset: 1088)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !159, line: 121, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2289, file: !2290, line: 88, baseType: !2241, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2289, file: !2290, line: 89, baseType: !2261, size: 64, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2289, file: !2290, line: 90, baseType: !2252, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2289, file: !2290, line: 91, baseType: !2252, size: 64, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2289, file: !2290, line: 92, baseType: !2252, size: 64, offset: 640)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2289, file: !2290, line: 94, baseType: !2261, size: 64, offset: 704)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2289, file: !2290, line: 95, baseType: !2261, size: 64, offset: 768)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2289, file: !2290, line: 97, baseType: !2323, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2289, file: !2290, line: 98, baseType: !2261, size: 64, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2289, file: !2290, line: 100, baseType: !2261, size: 64, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2289, file: !2290, line: 102, baseType: !2261, size: 64, offset: 1024)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2289, file: !2290, line: 103, baseType: !2252, size: 64, offset: 1088)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2289, file: !2290, line: 105, baseType: !2256, size: 64, offset: 1152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2289, file: !2290, line: 107, baseType: !2352, size: 64, offset: 1216)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2354)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2290, line: 107, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2289, file: !2290, line: 109, baseType: !832, size: 8, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2224, file: !165, line: 715, baseType: !2301, size: 64, offset: 832)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2224, file: !165, line: 717, baseType: !20, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2224, file: !165, line: 719, baseType: !20, size: 64, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2224, file: !165, line: 721, baseType: !675, size: 256, offset: 1024)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2224, file: !165, line: 725, baseType: !2361, size: 448, offset: 1280)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !165, line: 517, size: 448, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2361, file: !165, line: 518, baseType: !97, size: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2361, file: !165, line: 519, baseType: !97, size: 128, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2361, file: !165, line: 520, baseType: !97, size: 128, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2361, file: !165, line: 521, baseType: !164, size: 32, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2224, file: !165, line: 726, baseType: !2368, size: 2496, offset: 1728)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !172, line: 663, size: 2496, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2463, !2467}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2368, file: !172, line: 664, baseType: !2326, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2368, file: !172, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2368, file: !172, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2368, file: !172, line: 667, baseType: !832, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2368, file: !172, line: 668, baseType: !832, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2368, file: !172, line: 669, baseType: !832, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2368, file: !172, line: 670, baseType: !832, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2368, file: !172, line: 671, baseType: !832, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2368, file: !172, line: 672, baseType: !832, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2368, file: !172, line: 673, baseType: !832, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2368, file: !172, line: 674, baseType: !832, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2368, file: !172, line: 675, baseType: !301, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2368, file: !172, line: 676, baseType: !59, size: 32, offset: 96)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2368, file: !172, line: 678, baseType: !97, size: 128, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2368, file: !172, line: 679, baseType: !996, size: 256, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2368, file: !172, line: 680, baseType: !2386, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2388, line: 43, size: 1536, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2397, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2387, file: !2388, line: 44, baseType: !16, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2387, file: !2388, line: 45, baseType: !22, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2387, file: !2388, line: 46, baseType: !97, size: 128, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !2388, line: 47, baseType: !59, size: 32, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2387, file: !2388, line: 48, baseType: !2395, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !172, line: 629, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2387, file: !2388, line: 49, baseType: !2398, size: 320, offset: 384)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2399, line: 11, size: 320, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2400 = !{!2401, !2402, !2403, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2398, file: !2399, line: 16, baseType: !727, size: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2398, file: !2399, line: 17, baseType: !39, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2398, file: !2399, line: 18, baseType: !2404, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !2399, line: 19, baseType: !301, size: 32, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2387, file: !2388, line: 50, baseType: !39, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2387, file: !2388, line: 51, baseType: !445, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2387, file: !2388, line: 52, baseType: !445, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2387, file: !2388, line: 53, baseType: !445, size: 64, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2387, file: !2388, line: 54, baseType: !445, size: 64, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2387, file: !2388, line: 55, baseType: !445, size: 64, offset: 1024)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2387, file: !2388, line: 56, baseType: !39, size: 64, offset: 1088)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2387, file: !2388, line: 57, baseType: !39, size: 64, offset: 1152)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2387, file: !2388, line: 58, baseType: !39, size: 64, offset: 1216)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2387, file: !2388, line: 59, baseType: !39, size: 64, offset: 1280)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2387, file: !2388, line: 60, baseType: !39, size: 64, offset: 1344)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2387, file: !2388, line: 61, baseType: !2228, size: 64, offset: 1408)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2387, file: !2388, line: 62, baseType: !832, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2387, file: !2388, line: 63, baseType: !832, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2368, file: !172, line: 681, baseType: !832, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2368, file: !172, line: 682, baseType: !832, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2368, file: !172, line: 683, baseType: !832, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2368, file: !172, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2368, file: !172, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2368, file: !172, line: 690, baseType: !437, size: 512, offset: 640)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2368, file: !172, line: 691, baseType: !285, size: 64, offset: 1152)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2368, file: !172, line: 692, baseType: !957, size: 256, offset: 1216)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2368, file: !172, line: 693, baseType: !54, size: 192, offset: 1472)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2368, file: !172, line: 694, baseType: !2395, size: 64, offset: 1664)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2368, file: !172, line: 695, baseType: !49, size: 32, offset: 1728)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2368, file: !172, line: 696, baseType: !49, size: 32, offset: 1760)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2368, file: !172, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2368, file: !172, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2368, file: !172, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2368, file: !172, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2368, file: !172, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2368, file: !172, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2368, file: !172, line: 703, baseType: !832, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2368, file: !172, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2368, file: !172, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2368, file: !172, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2368, file: !172, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2368, file: !172, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2368, file: !172, line: 709, baseType: !7, size: 32, offset: 1824)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2368, file: !172, line: 710, baseType: !171, size: 32, offset: 1856)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2368, file: !172, line: 711, baseType: !179, size: 32, offset: 1888)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2368, file: !172, line: 712, baseType: !179, size: 32, offset: 1920)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2368, file: !172, line: 713, baseType: !22, size: 32, offset: 1952)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2368, file: !172, line: 714, baseType: !22, size: 32, offset: 1984)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2368, file: !172, line: 715, baseType: !285, size: 64, offset: 2048)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2368, file: !172, line: 716, baseType: !285, size: 64, offset: 2112)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2368, file: !172, line: 717, baseType: !285, size: 64, offset: 2176)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2368, file: !172, line: 718, baseType: !285, size: 64, offset: 2240)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2368, file: !172, line: 720, baseType: !2458, size: 64, offset: 2304)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !172, line: 632, size: 64, elements: !2460)
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2459, file: !172, line: 633, baseType: !59, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2459, file: !172, line: 634, baseType: !7, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2368, file: !172, line: 721, baseType: !2464, size: 64, offset: 2368)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2228, !290}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2368, file: !172, line: 722, baseType: !2468, size: 64, offset: 2432)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !172, line: 722, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2224, file: !165, line: 727, baseType: !2471, size: 64, offset: 4224)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !172, line: 742, size: 1792, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2480, !2481, !2482}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2472, file: !172, line: 743, baseType: !2258, size: 1472)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2472, file: !172, line: 744, baseType: !2261, size: 64, offset: 1472)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2472, file: !172, line: 745, baseType: !2477, size: 64, offset: 1536)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2228, !832}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2472, file: !172, line: 746, baseType: !2261, size: 64, offset: 1600)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2472, file: !172, line: 747, baseType: !2252, size: 64, offset: 1664)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2472, file: !172, line: 748, baseType: !2252, size: 64, offset: 1728)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2224, file: !165, line: 736, baseType: !2484, size: 128, offset: 4288)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !165, line: 529, size: 128, elements: !2485)
!2485 = !{!2486, !2490}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2484, file: !165, line: 531, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2489, line: 13, flags: DIFlagFwdDecl)
!2489 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2484, file: !165, line: 532, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !165, line: 49, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2224, file: !165, line: 738, baseType: !2494, size: 64, offset: 4416)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !165, line: 738, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2224, file: !165, line: 740, baseType: !2498, size: 64, offset: 4480)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2224, file: !165, line: 741, baseType: !285, size: 64, offset: 4544)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2224, file: !165, line: 746, baseType: !285, size: 64, offset: 4608)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2224, file: !165, line: 747, baseType: !2502, size: 64, offset: 4672)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !165, line: 747, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2224, file: !165, line: 749, baseType: !2506, size: 64, offset: 4736)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !165, line: 428, size: 128, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2507, file: !165, line: 433, baseType: !7, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2507, file: !165, line: 434, baseType: !7, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2507, file: !165, line: 435, baseType: !39, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2224, file: !165, line: 751, baseType: !97, size: 128, offset: 4800)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2224, file: !165, line: 762, baseType: !2514, size: 64, offset: 4928)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !165, line: 762, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2224, file: !165, line: 770, baseType: !2517, offset: 4992)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2518, line: 5, elements: !640)
!2518 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2224, file: !165, line: 772, baseType: !2520, size: 64, offset: 4992)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2522, line: 18, flags: DIFlagFwdDecl)
!2522 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2224, file: !165, line: 773, baseType: !2524, size: 64, offset: 5056)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2290, line: 22, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2224, file: !165, line: 776, baseType: !22, size: 32, offset: 5120)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2224, file: !165, line: 778, baseType: !1274, size: 32, offset: 5152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2224, file: !165, line: 779, baseType: !301, size: 32, offset: 5184)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2224, file: !165, line: 781, baseType: !59, size: 32, offset: 5216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2224, file: !165, line: 782, baseType: !97, size: 128, offset: 5248)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2224, file: !165, line: 784, baseType: !2532, size: 64, offset: 5376)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2535, line: 52, size: 768, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2545, !2549, !2550, !2551, !2579, !2583, !2587}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2534, file: !2535, line: 53, baseType: !16, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2534, file: !2535, line: 55, baseType: !1527, size: 64, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2534, file: !2535, line: 56, baseType: !1527, size: 64, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2534, file: !2535, line: 58, baseType: !2241, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2534, file: !2535, line: 59, baseType: !2542, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!918, !2244, !2250}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2534, file: !2535, line: 61, baseType: !2546, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2532}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2534, file: !2535, line: 62, baseType: !2252, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2534, file: !2535, line: 64, baseType: !2261, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2534, file: !2535, line: 66, baseType: !2552, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !187, line: 39, size: 384, elements: !2555)
!2555 = !{!2556, !2557, !2561, !2565, !2574, !2578}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2554, file: !187, line: 40, baseType: !186, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2554, file: !187, line: 41, baseType: !2558, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!832}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2554, file: !187, line: 42, baseType: !2562, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!20}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2554, file: !187, line: 43, baseType: !2566, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2569, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2573, line: 17, flags: DIFlagFwdDecl)
!2573 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2554, file: !187, line: 44, baseType: !2575, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!2569}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2554, file: !187, line: 45, baseType: !1231, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2534, file: !2535, line: 67, baseType: !2580, size: 64, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!2569, !2244}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2534, file: !2535, line: 69, baseType: !2584, size: 64, offset: 640)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !2244, !1021, !1022}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2534, file: !2535, line: 71, baseType: !2256, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2224, file: !165, line: 785, baseType: !1527, size: 64, offset: 5440)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2224, file: !165, line: 787, baseType: !2252, size: 64, offset: 5504)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2224, file: !165, line: 788, baseType: !2591, size: 64, offset: 5568)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !165, line: 46, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2224, file: !165, line: 789, baseType: !2594, size: 64, offset: 5632)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !165, line: 48, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2224, file: !165, line: 791, baseType: !2597, size: 64, offset: 5696)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !165, line: 597, size: 128, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603, !2604}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2598, file: !165, line: 598, baseType: !192, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2598, file: !165, line: 599, baseType: !201, size: 32, offset: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2598, file: !165, line: 600, baseType: !206, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2598, file: !165, line: 601, baseType: !832, size: 8, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2598, file: !165, line: 602, baseType: !832, size: 8, offset: 104)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2224, file: !165, line: 793, baseType: !211, size: 32, offset: 5760)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2224, file: !165, line: 795, baseType: !832, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2224, file: !165, line: 796, baseType: !832, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2224, file: !165, line: 797, baseType: !832, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2224, file: !165, line: 798, baseType: !832, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2224, file: !165, line: 799, baseType: !832, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2142, file: !2143, line: 302, baseType: !647, size: 64, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2142, file: !2143, line: 303, baseType: !7, size: 32, offset: 1408)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2142, file: !2143, line: 304, baseType: !996, size: 256, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2142, file: !2143, line: 305, baseType: !59, size: 32, offset: 1728)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2142, file: !2143, line: 318, baseType: !59, size: 32, offset: 1760)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2142, file: !2143, line: 322, baseType: !957, size: 256, offset: 1792)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2142, file: !2143, line: 323, baseType: !2162, size: 128, offset: 2048)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2142, file: !2143, line: 324, baseType: !2619, offset: 2176)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, elements: !1062)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1565, file: !244, line: 444, baseType: !2622, size: 64, offset: 1152)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !647}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1565, file: !244, line: 445, baseType: !2626, size: 64, offset: 1216)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!22, !2021, !2059}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !244, line: 486, baseType: !39, size: 64, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1552, file: !244, line: 487, baseType: !850, size: 320, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1552, file: !244, line: 488, baseType: !2632, size: 32, offset: 1280)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2633, line: 8, baseType: !301)
!2633 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1552, file: !244, line: 489, baseType: !59, size: 32, offset: 1312)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1552, file: !244, line: 490, baseType: !97, size: 128, offset: 1344)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1552, file: !244, line: 491, baseType: !20, size: 64, offset: 1472)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1542, file: !1511, line: 180, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!1352, !647, !1453, !1541, !918, !41, !35}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1542, file: !1511, line: 182, baseType: !2638, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1542, file: !1511, line: 184, baseType: !2643, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!22, !647, !1453, !1541, !1681}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1530, file: !1511, line: 90, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1530, file: !1511, line: 91, baseType: !2649, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1501, file: !1448, line: 120, baseType: !2651, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!2552, !1471}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1501, file: !1448, line: 121, baseType: !2655, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!2569, !1471}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1501, file: !1448, line: 122, baseType: !2659, size: 64, offset: 320)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !1471, !1021, !1022}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1447, file: !1448, line: 70, baseType: !2663, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2665, line: 190, size: 1152, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2797, !2798, !2799, !2800, !2801, !2804}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2664, file: !2665, line: 191, baseType: !49, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2664, file: !2665, line: 192, baseType: !49, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2664, file: !2665, line: 202, baseType: !2663, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2664, file: !2665, line: 203, baseType: !16, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2664, file: !2665, line: 205, baseType: !365, size: 192, align: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2664, file: !2665, line: 207, baseType: !2569, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2664, file: !2665, line: 208, baseType: !7, size: 32, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2664, file: !2665, line: 209, baseType: !2675, size: 256, offset: 512)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2664, file: !2665, line: 209, size: 256, elements: !2676)
!2676 = !{!2677, !2686, !2690}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2675, file: !2665, line: 210, baseType: !2678, size: 256)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2665, line: 153, size: 256, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2685}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2678, file: !2665, line: 154, baseType: !39, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2678, file: !2665, line: 156, baseType: !505, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2678, file: !2665, line: 162, baseType: !2683, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2665, line: 162, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2678, file: !2665, line: 167, baseType: !39, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2675, file: !2665, line: 211, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2665, line: 170, size: 64, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2687, file: !2665, line: 171, baseType: !2663, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2675, file: !2665, line: 212, baseType: !2691, size: 256)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2665, line: 174, size: 256, elements: !2692)
!2692 = !{!2693, !2792, !2795, !2796}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2691, file: !2665, line: 175, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2665, line: 271, size: 768, elements: !2697)
!2697 = !{!2698, !2756, !2760, !2761, !2762, !2763, !2764, !2768, !2769, !2770, !2771, !2788}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2696, file: !2665, line: 276, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!22, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2665, line: 251, size: 1216, elements: !2704)
!2704 = !{!2705, !2706, !2707, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2703, file: !2665, line: 253, baseType: !2663, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2703, file: !2665, line: 254, baseType: !647, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2703, file: !2665, line: 255, baseType: !2708, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2710, line: 17, size: 960, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2711 = !{!2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2741, !2742, !2745}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2709, file: !2710, line: 18, baseType: !918, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2709, file: !2710, line: 19, baseType: !35, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2709, file: !2710, line: 20, baseType: !35, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2709, file: !2710, line: 21, baseType: !35, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2709, file: !2710, line: 22, baseType: !35, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2709, file: !2710, line: 23, baseType: !41, size: 64, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2709, file: !2710, line: 24, baseType: !41, size: 64, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2709, file: !2710, line: 25, baseType: !675, size: 256, offset: 448)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2709, file: !2710, line: 26, baseType: !2721, size: 64, offset: 704)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2710, line: 32, size: 256, elements: !2724)
!2724 = !{!2725, !2729, !2733, !2737}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2723, file: !2710, line: 33, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!20, !2708, !40}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2723, file: !2710, line: 34, baseType: !2730, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2708, !20}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2723, file: !2710, line: 35, baseType: !2734, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!20, !2708, !20, !40}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2723, file: !2710, line: 36, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!22, !2708, !20}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2709, file: !2710, line: 27, baseType: !22, size: 32, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2709, file: !2710, line: 28, baseType: !2743, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2709, file: !2710, line: 29, baseType: !20, size: 64, offset: 896)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2703, file: !2665, line: 256, baseType: !20, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2703, file: !2665, line: 259, baseType: !675, size: 256, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2703, file: !2665, line: 260, baseType: !675, size: 256, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2703, file: !2665, line: 261, baseType: !22, size: 32, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2703, file: !2665, line: 262, baseType: !97, size: 128, offset: 832)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2703, file: !2665, line: 263, baseType: !918, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2703, file: !2665, line: 265, baseType: !35, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2703, file: !2665, line: 266, baseType: !832, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2703, file: !2665, line: 267, baseType: !832, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2703, file: !2665, line: 268, baseType: !1726, size: 64, offset: 1152)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2696, file: !2665, line: 277, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2702}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2696, file: !2665, line: 290, baseType: !2738, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2696, file: !2665, line: 292, baseType: !2726, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2696, file: !2665, line: 293, baseType: !2734, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2696, file: !2665, line: 294, baseType: !2730, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2696, file: !2665, line: 296, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!1352, !2702, !918, !35, !41}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2696, file: !2665, line: 306, baseType: !35, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2696, file: !2665, line: 313, baseType: !832, size: 8, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2696, file: !2665, line: 314, baseType: !2765, size: 64, offset: 576)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2696, file: !2665, line: 317, baseType: !2772, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2775, !2702, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2776, line: 59, baseType: !7)
!2776 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2779, line: 37, size: 128, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2780 = !{!2781, !2787}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2778, file: !2779, line: 38, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2779, line: 31, baseType: !2783)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !647, !2786, !2777}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2778, file: !2779, line: 39, baseType: !2775, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2696, file: !2665, line: 320, baseType: !2789, size: 64, offset: 704)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!22, !2702, !1681}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2691, file: !2665, line: 176, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2665, line: 35, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2691, file: !2665, line: 177, baseType: !41, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2691, file: !2665, line: 178, baseType: !2663, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2664, file: !2665, line: 215, baseType: !20, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2664, file: !2665, line: 221, baseType: !285, size: 64, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !2665, line: 223, baseType: !26, size: 16, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2664, file: !2665, line: 224, baseType: !24, size: 16, offset: 912)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2664, file: !2665, line: 225, baseType: !2802, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2665, line: 36, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2664, file: !2665, line: 227, baseType: !655, size: 128, align: 64, offset: 1024)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1447, file: !1448, line: 71, baseType: !2806, size: 32, offset: 448)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2807, line: 19, size: 32, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2806, file: !2807, line: 20, baseType: !321, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1447, file: !1448, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1447, file: !1448, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1447, file: !1448, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1447, file: !1448, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1447, file: !1448, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1444, file: !116, line: 47, baseType: !1434, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1444, file: !116, line: 48, baseType: !1453, size: 64, offset: 576)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1444, file: !116, line: 49, baseType: !2818, size: 64, offset: 640)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1444, file: !116, line: 50, baseType: !995, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1435, file: !116, line: 418, baseType: !2822, size: 64, offset: 1408)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !2824)
!2824 = !{!2825, !2826, !2831, !2835, !2839, !2843}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2823, file: !116, line: 54, baseType: !1518, size: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2823, file: !116, line: 55, baseType: !2827, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!1352, !2822, !2830, !918}
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2823, file: !116, line: 57, baseType: !2832, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!1352, !2822, !2830, !16, !35}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2823, file: !116, line: 59, baseType: !2836, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !1434, !16}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2823, file: !116, line: 60, baseType: !2840, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!22, !1434}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2823, file: !116, line: 61, baseType: !2844, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !1434}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1435, file: !116, line: 419, baseType: !16, size: 64, offset: 1472)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1435, file: !116, line: 420, baseType: !16, size: 64, offset: 1536)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1435, file: !116, line: 421, baseType: !1453, size: 64, offset: 1600)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1435, file: !116, line: 424, baseType: !2851, size: 64, offset: 1664)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1435, file: !116, line: 425, baseType: !2855, size: 64, offset: 1728)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1435, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1435, file: !116, line: 435, baseType: !675, size: 256, offset: 1856)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1435, file: !116, line: 437, baseType: !2860, size: 64, offset: 2112)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2862, line: 69, size: 320, elements: !2863)
!2862 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2863 = !{!2864, !2865, !2866, !2883, !2885, !2888, !2889}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2861, file: !2862, line: 70, baseType: !16, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2861, file: !2862, line: 71, baseType: !1434, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2861, file: !2862, line: 72, baseType: !2867, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2869)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2862, line: 47, size: 256, elements: !2870)
!2870 = !{!2871, !2872, !2878, !2882}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2869, file: !2862, line: 49, baseType: !7, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2869, file: !2862, line: 51, baseType: !2873, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!22, !16, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2869, file: !2862, line: 53, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!22, !918, !2876}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2869, file: !2862, line: 55, baseType: !1231, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2861, file: !2862, line: 73, baseType: !2884, size: 16, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2861, file: !2862, line: 74, baseType: !2886, size: 8, offset: 208)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !84, line: 16, baseType: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !86, line: 20, baseType: !2150)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2861, file: !2862, line: 75, baseType: !83, size: 8, offset: 216)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2861, file: !2862, line: 76, baseType: !2890, size: 64, offset: 256)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2861, file: !2862, line: 76, size: 64, elements: !2891)
!2891 = !{!2892, !2893, !2900}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2890, file: !2862, line: 77, baseType: !20, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2890, file: !2862, line: 78, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2862, line: 86, size: 128, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2896, file: !2862, line: 87, baseType: !7, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2896, file: !2862, line: 88, baseType: !918, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2890, file: !2862, line: 79, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2862, line: 92, size: 256, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2903, file: !2862, line: 94, baseType: !7, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2903, file: !2862, line: 95, baseType: !7, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2903, file: !2862, line: 96, baseType: !2173, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2903, file: !2862, line: 97, baseType: !2867, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2903, file: !2862, line: 98, baseType: !20, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1435, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1435, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1435, file: !116, line: 442, baseType: !2851, size: 64, offset: 2240)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1435, file: !116, line: 443, baseType: !2855, size: 64, offset: 2304)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1435, file: !116, line: 444, baseType: !832, size: 8, offset: 2368)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1435, file: !116, line: 451, baseType: !832, size: 8, offset: 2376)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1435, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1435, file: !116, line: 455, baseType: !2918, size: 64, offset: 2432)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2920, line: 23, size: 96, elements: !2921)
!2920 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2921 = !{!2922, !2923, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2919, file: !2920, line: 24, baseType: !22, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2919, file: !2920, line: 24, baseType: !22, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2919, file: !2920, line: 24, baseType: !22, size: 32, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1435, file: !116, line: 458, baseType: !2926, size: 64, offset: 2496)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!22}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1435, file: !116, line: 460, baseType: !2930, size: 4032, align: 512, offset: 2560)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2931, size: 4032, elements: !2947)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2931, file: !116, line: 363, baseType: !20, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2931, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2931, file: !116, line: 367, baseType: !2936, size: 448, offset: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2936, file: !116, line: 320, baseType: !1434, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2936, file: !116, line: 321, baseType: !2940, size: 384, offset: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2941, line: 40, size: 384, elements: !2942)
!2941 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2940, file: !2941, line: 41, baseType: !2944, size: 384, align: 64)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 384, align: 64, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 2)
!2947 = !{!2948}
!2948 = !DISubrange(count: 7)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1435, file: !116, line: 463, baseType: !2950, size: 192, offset: 6592)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2951, line: 8, size: 192, elements: !2952)
!2951 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2952 = !{!2953, !2954, !2956}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2950, file: !2951, line: 10, baseType: !7, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2950, file: !2951, line: 11, baseType: !2955, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2950, file: !2951, line: 12, baseType: !2957, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2959, line: 59, size: 48, elements: !2960)
!2959 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2960 = !{!2961, !2964, !2965, !2966, !2967, !2968}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2958, file: !2959, line: 60, baseType: !2962, size: 16)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !878)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2958, file: !2959, line: 61, baseType: !2962, size: 16, offset: 16)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2958, file: !2959, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2958, file: !2959, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2958, file: !2959, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2958, file: !2959, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1435, file: !116, line: 465, baseType: !39, size: 64, offset: 6784)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1435, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1435, file: !116, line: 470, baseType: !97, size: 128, offset: 6912)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1435, file: !116, line: 471, baseType: !2973, size: 64, offset: 7040)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2975, line: 33, size: 96, elements: !2976)
!2975 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2976 = !{!2977, !2978, !2979, !2980}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2974, file: !2975, line: 37, baseType: !22, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2974, file: !2975, line: 43, baseType: !22, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2974, file: !2975, line: 45, baseType: !26, size: 16, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2974, file: !2975, line: 47, baseType: !26, size: 16, offset: 80)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1435, file: !116, line: 476, baseType: !2982, size: 64, offset: 7104)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !2984)
!2984 = !{!2985, !3001, !3002, !3003}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2983, file: !116, line: 379, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2988, line: 204, baseType: !2989)
!2988 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2988, line: 197, size: 192, elements: !2990)
!2990 = !{!2991, !2993, !2994, !2995, !2997, !2999}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2989, file: !2988, line: 198, baseType: !2992, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2988, line: 21, baseType: !302)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2989, file: !2988, line: 199, baseType: !87, size: 8, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2989, file: !2988, line: 200, baseType: !87, size: 8, offset: 40)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2989, file: !2988, line: 201, baseType: !2996, size: 16, offset: 48)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2988, line: 17, baseType: !94)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2989, file: !2988, line: 202, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2988, line: 16, baseType: !286)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2989, file: !2988, line: 203, baseType: !3000, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2988, line: 22, baseType: !286)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2983, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2983, file: !116, line: 381, baseType: !918, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2983, file: !116, line: 382, baseType: !918, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1435, file: !116, line: 477, baseType: !2983, size: 256, offset: 7168)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1435, file: !116, line: 480, baseType: !3006, size: 64, offset: 7424)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1435, file: !116, line: 483, baseType: !3009, size: 64, offset: 7488)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1435, file: !116, line: 488, baseType: !918, size: 64, offset: 7552)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1435, file: !116, line: 492, baseType: !20, size: 64, offset: 7616)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1435, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1435, file: !116, line: 495, baseType: !20, size: 64, offset: 7744)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1435, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1435, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1435, file: !116, line: 500, baseType: !3018, size: 64, offset: 7872)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3020, line: 45, baseType: !3021)
!3020 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1435, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1435, file: !116, line: 504, baseType: !3024, size: 64, offset: 8000)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3027, line: 96, size: 192, elements: !3028)
!3027 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3028 = !{!3029, !3030, !3072, !3075}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3026, file: !3027, line: 97, baseType: !7, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3026, file: !3027, line: 98, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3027, line: 24, size: 3072, elements: !3033)
!3033 = !{!3034, !3036, !3037, !3038, !3039, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3069, !3070, !3071}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3032, file: !3027, line: 26, baseType: !3035, size: 128)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 128, elements: !2945)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3032, file: !3027, line: 27, baseType: !3035, size: 128, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3032, file: !3027, line: 28, baseType: !22, size: 32, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3032, file: !3027, line: 31, baseType: !59, size: 32, align: 512, offset: 512)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3032, file: !3027, line: 32, baseType: !3040, size: 960, offset: 576)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3041, line: 206, size: 960, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3042 = !{!3043, !3044, !3047, !3049, !3050, !3051}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3040, file: !3041, line: 207, baseType: !658, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3040, file: !3041, line: 208, baseType: !3045, size: 256, offset: 64)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3046, size: 256, elements: !732)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3040, file: !3041, line: 209, baseType: !3048, size: 256, offset: 320)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !732)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3040, file: !3041, line: 213, baseType: !1055, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3040, file: !3041, line: 215, baseType: !1057, size: 256, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !3041, line: 216, baseType: !83, size: 8, offset: 896)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3032, file: !3027, line: 33, baseType: !39, size: 64, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3032, file: !3027, line: 34, baseType: !39, size: 64, offset: 1600)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3032, file: !3027, line: 35, baseType: !832, size: 8, offset: 1664)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3032, file: !3027, line: 36, baseType: !2398, size: 320, offset: 1728)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3032, file: !3027, line: 37, baseType: !957, size: 256, offset: 2048)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3032, file: !3027, line: 38, baseType: !655, size: 128, align: 64, offset: 2304)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3032, file: !3027, line: 39, baseType: !3059, size: 64, offset: 2432)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3027, line: 49, size: 768, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !3027, line: 50, baseType: !59, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3060, file: !3027, line: 51, baseType: !3048, size: 256, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3060, file: !3027, line: 53, baseType: !3048, size: 256, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3060, file: !3027, line: 54, baseType: !39, size: 64, offset: 576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3060, file: !3027, line: 55, baseType: !3059, size: 64, offset: 640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3060, file: !3027, line: 56, baseType: !22, size: 32, offset: 704)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3060, file: !3027, line: 57, baseType: !22, size: 32, offset: 736)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3032, file: !3027, line: 40, baseType: !39, size: 64, offset: 2496)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3032, file: !3027, line: 42, baseType: !22, size: 32, offset: 2560)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3032, file: !3027, line: 43, baseType: !3025, size: 64, offset: 2624)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3026, file: !3027, line: 99, baseType: !3073, offset: 128)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3074, line: 211, elements: !640)
!3074 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3026, file: !3027, line: 100, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3027, line: 63, size: 3008, elements: !3078)
!3078 = !{!3079, !3080, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3110}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3077, file: !3027, line: 64, baseType: !3059, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3077, file: !3027, line: 65, baseType: !3081, size: 192, offset: 64)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3059, size: 192, elements: !711)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3077, file: !3027, line: 67, baseType: !22, size: 32, offset: 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3077, file: !3027, line: 68, baseType: !675, size: 256, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3077, file: !3027, line: 69, baseType: !59, size: 32, offset: 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3077, file: !3027, line: 70, baseType: !675, size: 256, offset: 640)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3077, file: !3027, line: 71, baseType: !39, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3077, file: !3027, line: 72, baseType: !39, size: 64, offset: 960)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3077, file: !3027, line: 73, baseType: !39, size: 64, offset: 1024)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3077, file: !3027, line: 74, baseType: !39, size: 64, offset: 1088)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3077, file: !3027, line: 75, baseType: !39, size: 64, offset: 1152)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3077, file: !3027, line: 76, baseType: !39, size: 64, offset: 1216)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3077, file: !3027, line: 77, baseType: !39, size: 64, offset: 1280)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3077, file: !3027, line: 78, baseType: !39, size: 64, offset: 1344)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3077, file: !3027, line: 79, baseType: !832, size: 8, offset: 1408)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3077, file: !3027, line: 80, baseType: !39, size: 64, offset: 1472)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3077, file: !3027, line: 81, baseType: !675, size: 256, offset: 1536)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3077, file: !3027, line: 82, baseType: !996, size: 256, offset: 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3077, file: !3027, line: 84, baseType: !49, size: 32, offset: 2048)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3077, file: !3027, line: 87, baseType: !39, size: 64, offset: 2112)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3077, file: !3027, line: 88, baseType: !39, size: 64, offset: 2176)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3077, file: !3027, line: 89, baseType: !3102, size: 704, offset: 2240)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !958, line: 111, size: 704, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3109}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3102, file: !958, line: 112, baseType: !957, size: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3102, file: !958, line: 113, baseType: !2398, size: 320, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3102, file: !958, line: 116, baseType: !3107, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !958, line: 18, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3102, file: !958, line: 117, baseType: !22, size: 32, offset: 640)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3077, file: !3027, line: 90, baseType: !3025, size: 64, offset: 2944)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1435, file: !116, line: 515, baseType: !3112, size: 64, offset: 8064)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3114, line: 117, size: 128, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3113, file: !3114, line: 118, baseType: !290, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3113, file: !3114, line: 119, baseType: !290, size: 32, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3113, file: !3114, line: 120, baseType: !1055, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1435, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1435, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1435, file: !116, line: 520, baseType: !3122, size: 64, offset: 8192)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1435, file: !116, line: 523, baseType: !3124, size: 64, offset: 8256)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !218, line: 372, size: 1024, elements: !3127)
!3127 = !{!3128, !3129, !3169, !3229, !3310, !3311, !3314, !3319, !3320, !3321, !3322, !3324, !3327}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3126, file: !218, line: 373, baseType: !97, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3126, file: !218, line: 374, baseType: !3130, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !218, line: 291, size: 576, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3140, !3163, !3167, !3168}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3131, file: !218, line: 292, baseType: !16, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3131, file: !218, line: 293, baseType: !20, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !3131, file: !218, line: 295, baseType: !20, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3131, file: !218, line: 297, baseType: !3137, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!22, !3125, !217, !20}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !3131, file: !218, line: 299, baseType: !3141, size: 64, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !218, line: 275, size: 320, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3142, file: !218, line: 276, baseType: !16, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !218, line: 277, baseType: !3146, size: 256, offset: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3142, file: !218, line: 277, size: 256, elements: !3147)
!3147 = !{!3148, !3159}
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !218, line: 278, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !218, line: 278, size: 256, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3156, !3157, !3158}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3149, file: !218, line: 279, baseType: !16, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3149, file: !218, line: 280, baseType: !3021, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3149, file: !218, line: 281, baseType: !3021, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !3149, file: !218, line: 282, baseType: !3155, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !3149, file: !218, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !3149, file: !218, line: 284, baseType: !3021, size: 32, offset: 160)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3149, file: !218, line: 285, baseType: !3021, size: 32, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !3146, file: !218, line: 287, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!22, !3125}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !3131, file: !218, line: 300, baseType: !3164, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!100, !3125}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !3131, file: !218, line: 301, baseType: !97, size: 128, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !3131, file: !218, line: 302, baseType: !3160, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !218, line: 375, baseType: !3170, size: 64, offset: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !218, line: 375, size: 64, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3170, file: !218, line: 376, baseType: !16, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !3170, file: !218, line: 378, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !3020, line: 32, size: 640, elements: !3176)
!3176 = !{!3177, !3178, !3190, !3214, !3215, !3216, !3217, !3218, !3222}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3175, file: !3020, line: 33, baseType: !16, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3175, file: !3020, line: 34, baseType: !3179, size: 128, offset: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3114, line: 85, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3179, file: !3114, line: 86, baseType: !49, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !3114, line: 101, baseType: !3183, size: 64, offset: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !3114, line: 101, size: 64, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3183, file: !3114, line: 102, baseType: !39, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3183, file: !3114, line: 103, baseType: !3112, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3183, file: !3114, line: 104, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3114, line: 104, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !3175, file: !3020, line: 35, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !3193, line: 61, size: 128, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3192, file: !3193, line: 62, baseType: !20, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3192, file: !3193, line: 63, baseType: !3197, size: 64, offset: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3192, file: !3193, line: 63, size: 64, elements: !3198)
!3198 = !{!3199, !3200, !3213}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3197, file: !3193, line: 65, baseType: !39, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !3197, file: !3193, line: 66, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !3203, line: 169, size: 192, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3202, file: !3203, line: 170, baseType: !3201, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3202, file: !3203, line: 171, baseType: !1434, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3202, file: !3203, line: 172, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3193, line: 32, size: 64, elements: !3210)
!3210 = !{!3211, !3212}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3209, file: !3193, line: 33, baseType: !290, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3209, file: !3193, line: 34, baseType: !290, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !3197, file: !3193, line: 67, baseType: !3208, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !3175, file: !3020, line: 36, baseType: !20, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3175, file: !3020, line: 37, baseType: !20, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !3175, file: !3020, line: 38, baseType: !20, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !3175, file: !3020, line: 39, baseType: !2926, size: 64, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !3175, file: !3020, line: 40, baseType: !3219, size: 64, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3175, file: !3020, line: 41, baseType: !3223, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !3020, line: 26, size: 192, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3224, file: !3020, line: 27, baseType: !20, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3224, file: !3020, line: 28, baseType: !20, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3224, file: !3020, line: 29, baseType: !22, size: 32, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3126, file: !218, line: 380, baseType: !3230, size: 256, offset: 256)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !218, line: 148, size: 256, elements: !3231)
!3231 = !{!3232, !3233, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3230, file: !218, line: 149, baseType: !727, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3230, file: !218, line: 150, baseType: !22, size: 32, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !3230, file: !218, line: 151, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !218, line: 141, size: 256, elements: !3237)
!3237 = !{!3238, !3307, !3308, !3309}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3236, file: !218, line: 142, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !218, line: 138, baseType: !3240)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!228, !3243, !22, !3306}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !218, line: 93, size: 67776, elements: !3245)
!3245 = !{!3246, !3249, !3252, !3255, !3256, !3257, !3258, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3286, !3289, !3290, !3291, !3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !3244, file: !218, line: 94, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !218, line: 13, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !3244, file: !218, line: 95, baseType: !3250, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !218, line: 15, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !3244, file: !218, line: 96, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !218, line: 14, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3244, file: !218, line: 97, baseType: !20, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !3244, file: !218, line: 98, baseType: !22, size: 32, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3244, file: !218, line: 99, baseType: !675, size: 256, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !3244, file: !218, line: 100, baseType: !3259, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !3262, line: 10, flags: DIFlagFwdDecl)
!3262 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !3244, file: !218, line: 101, baseType: !39, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3244, file: !218, line: 102, baseType: !20, size: 64, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !3244, file: !218, line: 103, baseType: !7, size: 32, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !3244, file: !218, line: 104, baseType: !918, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !3244, file: !218, line: 105, baseType: !7, size: 32, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !3244, file: !218, line: 106, baseType: !1055, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !3244, file: !218, line: 109, baseType: !3270, size: 33088, offset: 1024)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !3271, line: 14, size: 33088, elements: !3272)
!3271 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!3272 = !{!3273, !3277, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3270, file: !3271, line: 15, baseType: !3274, size: 32768)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !3275)
!3275 = !{!3276}
!3276 = !DISubrange(count: 4096)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3270, file: !3271, line: 16, baseType: !3278, size: 192, offset: 32768)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !3279, line: 18, size: 192, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3278, file: !3279, line: 19, baseType: !918, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3278, file: !3279, line: 20, baseType: !35, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3278, file: !3279, line: 21, baseType: !35, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !3270, file: !3271, line: 17, baseType: !35, size: 64, offset: 32960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3270, file: !3271, line: 18, baseType: !22, size: 32, offset: 33024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !3244, file: !218, line: 111, baseType: !3287, size: 64, offset: 34112)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !566, line: 913, baseType: !3288)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 64, elements: !571)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !3244, file: !218, line: 114, baseType: !832, size: 8, offset: 34176)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3244, file: !218, line: 117, baseType: !3270, size: 33088, offset: 34240)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !3244, file: !218, line: 118, baseType: !3292, size: 64, offset: 67328)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !218, line: 79, size: 64, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3293, file: !218, line: 80, baseType: !26, size: 16)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !218, line: 81, baseType: !87, size: 8, offset: 16)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !3293, file: !218, line: 82, baseType: !87, size: 8, offset: 24)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3293, file: !218, line: 83, baseType: !22, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !3244, file: !218, line: 119, baseType: !39, size: 64, offset: 67392)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !3244, file: !218, line: 120, baseType: !22, size: 32, offset: 67456)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !3244, file: !218, line: 121, baseType: !22, size: 32, offset: 67488)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3244, file: !218, line: 122, baseType: !22, size: 32, offset: 67520)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !3244, file: !218, line: 123, baseType: !285, size: 64, offset: 67584)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3244, file: !218, line: 125, baseType: !41, size: 64, offset: 67648)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3244, file: !218, line: 126, baseType: !1055, size: 64, offset: 67712)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3236, file: !218, line: 143, baseType: !3239, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !3236, file: !218, line: 144, baseType: !3239, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !3236, file: !218, line: 145, baseType: !3239, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !3126, file: !218, line: 381, baseType: !918, size: 64, offset: 512)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3126, file: !218, line: 382, baseType: !3312, size: 64, offset: 576)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !235, line: 821, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !218, line: 387, baseType: !3315, size: 64, offset: 640)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !218, line: 387, size: 64, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3315, file: !218, line: 388, baseType: !20, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3315, file: !218, line: 389, baseType: !49, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3126, file: !218, line: 391, baseType: !20, size: 64, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3126, file: !218, line: 394, baseType: !22, size: 32, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !3126, file: !218, line: 397, baseType: !22, size: 32, offset: 800)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !3126, file: !218, line: 398, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !3126, file: !218, line: 399, baseType: !3325, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !218, line: 399, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !3126, file: !218, line: 401, baseType: !3328, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!22, !3125, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !235, line: 671, size: 8512, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3517, !3518, !3519, !3520, !3526, !3527, !3528, !3529, !3530, !3614, !3615, !3616, !3617, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3737, !3738, !3739, !3740, !3741, !3742, !3757, !3758, !3759, !3760, !3761, !3767, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3784, !3955, !3956, !3957, !3958, !4228, !4229, !4230}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3332, file: !235, line: 678, baseType: !97, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3332, file: !235, line: 684, baseType: !97, size: 128, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3332, file: !235, line: 685, baseType: !97, size: 128, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3332, file: !235, line: 689, baseType: !365, size: 192, align: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3332, file: !235, line: 690, baseType: !285, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3332, file: !235, line: 696, baseType: !97, size: 128, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3332, file: !235, line: 698, baseType: !727, size: 128, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3332, file: !235, line: 699, baseType: !97, size: 128, offset: 896)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3332, file: !235, line: 700, baseType: !22, size: 32, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3332, file: !235, line: 703, baseType: !22, size: 32, offset: 1056)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3332, file: !235, line: 705, baseType: !22, size: 32, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3332, file: !235, line: 707, baseType: !7, size: 32, offset: 1120)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3332, file: !235, line: 708, baseType: !3331, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3332, file: !235, line: 714, baseType: !3348, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !235, line: 302, size: 2432, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3427, !3428, !3429, !3430, !3431, !3435, !3436, !3440, !3444, !3445, !3449, !3453, !3454, !3455, !3459, !3463, !3467, !3468, !3469, !3473, !3474, !3478, !3482, !3483, !3503, !3507, !3508, !3509, !3513}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3349, file: !235, line: 303, baseType: !97, size: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3349, file: !235, line: 305, baseType: !1434, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3349, file: !235, line: 306, baseType: !2228, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3349, file: !235, line: 307, baseType: !2228, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3349, file: !235, line: 308, baseType: !1527, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3349, file: !235, line: 309, baseType: !1527, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3349, file: !235, line: 310, baseType: !16, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3349, file: !235, line: 311, baseType: !22, size: 32, offset: 512)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3349, file: !235, line: 316, baseType: !22, size: 32, offset: 544)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3349, file: !235, line: 318, baseType: !2955, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3349, file: !235, line: 319, baseType: !3362, size: 64, offset: 640)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !235, line: 977, size: 1856, elements: !3364)
!3364 = !{!3365, !3417, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3363, file: !235, line: 978, baseType: !3366, size: 896)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !235, line: 873, size: 896, elements: !3367)
!3367 = !{!3368, !3369, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3366, file: !235, line: 874, baseType: !3348, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3366, file: !235, line: 875, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !235, line: 912, size: 1792, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3371, file: !235, line: 917, baseType: !462, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3371, file: !235, line: 923, baseType: !675, size: 256, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3371, file: !235, line: 925, baseType: !97, size: 128, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3371, file: !235, line: 926, baseType: !3377, size: 128, offset: 448)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !235, line: 901, size: 128, elements: !3378)
!3378 = !{!3379, !3380}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3377, file: !235, line: 902, baseType: !505, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3377, file: !235, line: 903, baseType: !285, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3371, file: !235, line: 927, baseType: !3377, size: 128, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3371, file: !235, line: 928, baseType: !97, size: 128, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3371, file: !235, line: 930, baseType: !22, size: 32, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3371, file: !235, line: 931, baseType: !22, size: 32, offset: 864)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3371, file: !235, line: 932, baseType: !22, size: 32, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3371, file: !235, line: 934, baseType: !22, size: 32, offset: 928)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3371, file: !235, line: 935, baseType: !22, size: 32, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3371, file: !235, line: 936, baseType: !22, size: 32, offset: 992)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3371, file: !235, line: 937, baseType: !22, size: 32, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3371, file: !235, line: 939, baseType: !321, size: 32, offset: 1056)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3371, file: !235, line: 940, baseType: !306, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3371, file: !235, line: 945, baseType: !285, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3371, file: !235, line: 946, baseType: !285, size: 64, offset: 1216)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3371, file: !235, line: 947, baseType: !285, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3371, file: !235, line: 953, baseType: !3370, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3371, file: !235, line: 954, baseType: !285, size: 64, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3371, file: !235, line: 955, baseType: !285, size: 64, offset: 1472)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3371, file: !235, line: 956, baseType: !22, size: 32, offset: 1536)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3371, file: !235, line: 958, baseType: !22, size: 32, offset: 1568)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3371, file: !235, line: 960, baseType: !655, size: 128, align: 64, offset: 1600)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3371, file: !235, line: 968, baseType: !3402, size: 64, offset: 1728)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3403, line: 12, baseType: !3404)
!3403 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3403, line: 10, size: 64, elements: !3405)
!3405 = !{!3406}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3404, file: !3403, line: 11, baseType: !668, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3366, file: !235, line: 877, baseType: !97, size: 128, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3366, file: !235, line: 879, baseType: !97, size: 128, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3366, file: !235, line: 880, baseType: !97, size: 128, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3366, file: !235, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3366, file: !235, line: 885, baseType: !7, size: 32, offset: 544)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3366, file: !235, line: 886, baseType: !7, size: 32, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3366, file: !235, line: 888, baseType: !49, size: 32, offset: 608)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3366, file: !235, line: 889, baseType: !655, size: 128, align: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3366, file: !235, line: 891, baseType: !20, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3366, file: !235, line: 898, baseType: !22, size: 32, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3363, file: !235, line: 979, baseType: !3418, size: 64, offset: 896)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3363, file: !235, line: 981, baseType: !97, size: 128, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3363, file: !235, line: 982, baseType: !22, size: 32, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3363, file: !235, line: 984, baseType: !22, size: 32, offset: 1120)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3363, file: !235, line: 985, baseType: !22, size: 32, offset: 1152)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3363, file: !235, line: 987, baseType: !462, size: 32, offset: 1184)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3363, file: !235, line: 988, baseType: !437, size: 512, offset: 1216)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3363, file: !235, line: 989, baseType: !445, size: 64, offset: 1728)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3363, file: !235, line: 990, baseType: !7, size: 32, offset: 1792)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3349, file: !235, line: 320, baseType: !49, size: 32, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3349, file: !235, line: 321, baseType: !22, size: 32, offset: 736)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3349, file: !235, line: 322, baseType: !22, size: 32, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3349, file: !235, line: 325, baseType: !7, size: 32, offset: 800)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3349, file: !235, line: 331, baseType: !3432, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3348}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3349, file: !235, line: 332, baseType: !3432, size: 64, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3349, file: !235, line: 350, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!22, !3331}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3349, file: !235, line: 356, baseType: !3441, size: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3331, !619}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3349, file: !235, line: 357, baseType: !3441, size: 64, offset: 1088)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3349, file: !235, line: 385, baseType: !3446, size: 64, offset: 1152)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!22, !3331, !22}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3349, file: !235, line: 386, baseType: !3450, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3331, !22}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3349, file: !235, line: 406, baseType: !3450, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3349, file: !235, line: 407, baseType: !3450, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3349, file: !235, line: 415, baseType: !3456, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{null, !3331}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3349, file: !235, line: 427, baseType: !3460, size: 64, offset: 1472)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3348, !7}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3349, file: !235, line: 436, baseType: !3464, size: 64, offset: 1536)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!22, !3348}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3349, file: !235, line: 443, baseType: !3432, size: 64, offset: 1600)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3349, file: !235, line: 450, baseType: !3437, size: 64, offset: 1664)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3349, file: !235, line: 455, baseType: !3470, size: 64, offset: 1728)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3418, !832}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3349, file: !235, line: 461, baseType: !765, size: 64, offset: 1792)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3349, file: !235, line: 469, baseType: !3475, size: 64, offset: 1856)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !3418, !3418}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3349, file: !235, line: 476, baseType: !3479, size: 64, offset: 1920)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!20, !3331, !1995, !22, !832}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3349, file: !235, line: 483, baseType: !1231, size: 64, offset: 1984)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3349, file: !235, line: 494, baseType: !3484, size: 64, offset: 2048)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!1055, !3331, !3487, !39}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !235, line: 1014, size: 448, elements: !3489)
!3489 = !{!3490, !3491, !3494, !3495, !3496, !3497, !3502}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3488, file: !235, line: 1015, baseType: !3331, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3488, file: !235, line: 1016, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !235, line: 641, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3488, file: !235, line: 1017, baseType: !39, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3488, file: !235, line: 1018, baseType: !39, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3488, file: !235, line: 1019, baseType: !285, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !235, line: 1020, baseType: !3498, size: 64, offset: 320)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !235, line: 1020, size: 64, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3498, file: !235, line: 1021, baseType: !20, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3498, file: !235, line: 1022, baseType: !39, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3488, file: !235, line: 1024, baseType: !22, size: 32, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3349, file: !235, line: 506, baseType: !3504, size: 64, offset: 2112)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!22, !100}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3349, file: !235, line: 520, baseType: !3456, size: 64, offset: 2176)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3349, file: !235, line: 530, baseType: !3437, size: 64, offset: 2240)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3349, file: !235, line: 537, baseType: !3510, size: 64, offset: 2304)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!832, !3348, !22}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3349, file: !235, line: 542, baseType: !3514, size: 64, offset: 2368)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!22, !3331, !285}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3332, file: !235, line: 715, baseType: !20, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3332, file: !235, line: 717, baseType: !234, size: 32, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3332, file: !235, line: 718, baseType: !7, size: 32, offset: 1376)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3332, file: !235, line: 719, baseType: !3521, size: 64, offset: 1408)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3522, line: 26, baseType: !3523)
!3522 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3522, line: 24, size: 64, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3523, file: !3522, line: 25, baseType: !3402, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3332, file: !235, line: 720, baseType: !670, size: 64, offset: 1472)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3332, file: !235, line: 728, baseType: !285, size: 64, offset: 1536)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3332, file: !235, line: 729, baseType: !285, size: 64, offset: 1600)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3332, file: !235, line: 730, baseType: !285, size: 64, offset: 1664)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3332, file: !235, line: 732, baseType: !3531, size: 1088, offset: 1728)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3532, line: 385, size: 1088, elements: !3533)
!3532 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3533 = !{!3534, !3535, !3536, !3537, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3587, !3588, !3595, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3531, file: !3532, line: 390, baseType: !302, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3531, file: !3532, line: 395, baseType: !302, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3531, file: !3532, line: 400, baseType: !286, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 402, baseType: !3538, size: 64, offset: 128)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 402, size: 64, elements: !3539)
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3538, file: !3532, line: 403, baseType: !286, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3538, file: !3532, line: 404, baseType: !286, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3531, file: !3532, line: 407, baseType: !286, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3531, file: !3532, line: 408, baseType: !286, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3531, file: !3532, line: 410, baseType: !286, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3531, file: !3532, line: 411, baseType: !286, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3531, file: !3532, line: 412, baseType: !286, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3531, file: !3532, line: 413, baseType: !286, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3531, file: !3532, line: 414, baseType: !286, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3531, file: !3532, line: 415, baseType: !286, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3531, file: !3532, line: 416, baseType: !286, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3531, file: !3532, line: 417, baseType: !286, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3531, file: !3532, line: 418, baseType: !286, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3531, file: !3532, line: 419, baseType: !286, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3531, file: !3532, line: 420, baseType: !286, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3531, file: !3532, line: 421, baseType: !286, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3531, file: !3532, line: 422, baseType: !286, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3531, file: !3532, line: 423, baseType: !286, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3531, file: !3532, line: 424, baseType: !286, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3531, file: !3532, line: 435, baseType: !286, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3531, file: !3532, line: 436, baseType: !286, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3531, file: !3532, line: 437, baseType: !286, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3531, file: !3532, line: 439, baseType: !286, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3531, file: !3532, line: 440, baseType: !286, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3531, file: !3532, line: 442, baseType: !286, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3531, file: !3532, line: 443, baseType: !286, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3531, file: !3532, line: 444, baseType: !286, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3531, file: !3532, line: 445, baseType: !286, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3531, file: !3532, line: 446, baseType: !286, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3531, file: !3532, line: 447, baseType: !286, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3531, file: !3532, line: 448, baseType: !286, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3531, file: !3532, line: 449, baseType: !286, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3531, file: !3532, line: 450, baseType: !286, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3531, file: !3532, line: 451, baseType: !286, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3531, file: !3532, line: 452, baseType: !286, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3531, file: !3532, line: 453, baseType: !286, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3531, file: !3532, line: 454, baseType: !286, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3531, file: !3532, line: 455, baseType: !286, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3531, file: !3532, line: 456, baseType: !286, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3531, file: !3532, line: 457, baseType: !286, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3531, file: !3532, line: 458, baseType: !286, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3531, file: !3532, line: 459, baseType: !286, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3582 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 461, baseType: !3583, size: 32, offset: 384)
!3583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 461, size: 32, elements: !3584)
!3584 = !{!3585, !3586}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3583, file: !3532, line: 462, baseType: !302, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3583, file: !3532, line: 463, baseType: !302, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3531, file: !3532, line: 466, baseType: !302, size: 32, offset: 416)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 467, baseType: !3589, size: 64, offset: 448)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 467, size: 64, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3589, file: !3532, line: 468, baseType: !286, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3589, file: !3532, line: 469, baseType: !286, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3589, file: !3532, line: 470, baseType: !286, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3589, file: !3532, line: 471, baseType: !286, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3532, line: 473, baseType: !3596, size: 64, offset: 512)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3532, line: 473, size: 64, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3596, file: !3532, line: 474, baseType: !286, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3596, file: !3532, line: 475, baseType: !286, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3596, file: !3532, line: 476, baseType: !286, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3596, file: !3532, line: 477, baseType: !286, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3531, file: !3532, line: 479, baseType: !286, size: 64, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3531, file: !3532, line: 485, baseType: !286, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3531, file: !3532, line: 490, baseType: !302, size: 32, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3531, file: !3532, line: 492, baseType: !291, size: 32, offset: 736)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3531, file: !3532, line: 501, baseType: !286, size: 64, offset: 768)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3531, file: !3532, line: 506, baseType: !302, size: 32, offset: 832)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3531, file: !3532, line: 507, baseType: !94, size: 16, offset: 864)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3531, file: !3532, line: 508, baseType: !94, size: 16, offset: 880)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3531, file: !3532, line: 509, baseType: !302, size: 32, offset: 896)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3531, file: !3532, line: 510, baseType: !302, size: 32, offset: 928)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3531, file: !3532, line: 518, baseType: !286, size: 64, offset: 960)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3531, file: !3532, line: 520, baseType: !286, size: 64, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3332, file: !235, line: 733, baseType: !93, size: 16, offset: 2816)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3332, file: !235, line: 734, baseType: !93, size: 16, offset: 2832)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3332, file: !235, line: 735, baseType: !93, size: 16, offset: 2848)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3332, file: !235, line: 736, baseType: !3618, size: 1536, offset: 2880)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !235, line: 155, size: 1536, elements: !3619)
!3619 = !{!3620, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3704, !3705, !3706, !3707}
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !235, line: 157, baseType: !3621, size: 768)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !235, line: 157, size: 768, elements: !3622)
!3622 = !{!3623, !3642, !3646, !3650, !3655, !3677}
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 158, baseType: !3624, size: 768)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 158, size: 768, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3641}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3624, file: !235, line: 159, baseType: !285, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3624, file: !235, line: 160, baseType: !285, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3624, file: !235, line: 161, baseType: !39, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3624, file: !235, line: 162, baseType: !39, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3624, file: !235, line: 163, baseType: !22, size: 32, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3624, file: !235, line: 164, baseType: !22, size: 32, offset: 288)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3624, file: !235, line: 165, baseType: !22, size: 32, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3624, file: !235, line: 166, baseType: !22, size: 32, offset: 352)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3624, file: !235, line: 168, baseType: !3635, size: 192, offset: 384)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !235, line: 134, size: 192, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3635, file: !235, line: 135, baseType: !285, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3635, file: !235, line: 136, baseType: !7, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3635, file: !235, line: 137, baseType: !22, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3635, file: !235, line: 138, baseType: !22, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3624, file: !235, line: 169, baseType: !3635, size: 192, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 171, baseType: !3643, size: 512)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 171, size: 512, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3643, file: !235, line: 172, baseType: !437, size: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 174, baseType: !3647, size: 128)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 174, size: 128, elements: !3648)
!3648 = !{!3649}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3647, file: !235, line: 176, baseType: !97, size: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 178, baseType: !3651, size: 128)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 178, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3651, file: !235, line: 179, baseType: !285, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3651, file: !235, line: 180, baseType: !285, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 183, baseType: !3656, size: 320)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 183, size: 320, elements: !3657)
!3657 = !{!3658, !3666}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3656, file: !235, line: 189, baseType: !3659, size: 192)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3660, line: 14, size: 192, elements: !3661)
!3660 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3661 = !{!3662, !3663, !3664, !3665}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3659, file: !3660, line: 15, baseType: !39, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3659, file: !3660, line: 16, baseType: !39, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3659, file: !3660, line: 17, baseType: !83, size: 8, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3659, file: !3660, line: 18, baseType: !83, size: 8, offset: 136)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3656, file: !235, line: 190, baseType: !3667, size: 128, offset: 192)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3668, line: 21, size: 128, elements: !3669)
!3668 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3669 = !{!3670, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3667, file: !3668, line: 22, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3668, line: 17, size: 64, elements: !3672)
!3672 = !{!3673}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3671, file: !3668, line: 18, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3667, file: !3668, line: 23, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !235, line: 193, baseType: !3678, size: 192)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !235, line: 193, size: 192, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3678, file: !235, line: 194, baseType: !83, size: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3678, file: !235, line: 195, baseType: !83, size: 8, offset: 8)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3678, file: !235, line: 196, baseType: !93, size: 16, offset: 16)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3678, file: !235, line: 197, baseType: !285, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3678, file: !235, line: 198, baseType: !285, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3618, file: !235, line: 205, baseType: !306, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3618, file: !235, line: 211, baseType: !20, size: 64, offset: 832)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3618, file: !235, line: 214, baseType: !39, size: 64, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3618, file: !235, line: 223, baseType: !22, size: 32, offset: 960)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3618, file: !235, line: 229, baseType: !3521, size: 64, offset: 1024)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3618, file: !235, line: 234, baseType: !285, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !235, line: 236, baseType: !3692, size: 128, offset: 1152)
!3692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !235, line: 236, size: 128, elements: !3693)
!3693 = !{!3694, !3699}
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !235, line: 237, baseType: !3695, size: 128)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !235, line: 237, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3695, file: !235, line: 241, baseType: !285, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3695, file: !235, line: 249, baseType: !3521, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3692, file: !235, line: 251, baseType: !3700, size: 128)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3692, file: !235, line: 251, size: 128, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3700, file: !235, line: 252, baseType: !285, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3700, file: !235, line: 253, baseType: !285, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3618, file: !235, line: 261, baseType: !285, size: 64, offset: 1280)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3618, file: !235, line: 262, baseType: !285, size: 64, offset: 1344)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3618, file: !235, line: 268, baseType: !285, size: 64, offset: 1408)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3618, file: !235, line: 269, baseType: !285, size: 64, offset: 1472)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3332, file: !235, line: 738, baseType: !3370, size: 64, offset: 4416)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3332, file: !235, line: 744, baseType: !3418, size: 64, offset: 4480)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3332, file: !235, line: 745, baseType: !668, size: 64, offset: 4544)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3332, file: !235, line: 751, baseType: !670, size: 64, offset: 4608)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3332, file: !235, line: 752, baseType: !670, size: 64, offset: 4672)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3332, file: !235, line: 757, baseType: !675, size: 256, offset: 4736)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3332, file: !235, line: 758, baseType: !97, size: 128, offset: 4992)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3332, file: !235, line: 759, baseType: !3331, size: 64, offset: 5120)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3332, file: !235, line: 761, baseType: !22, size: 32, offset: 5184)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3332, file: !235, line: 762, baseType: !22, size: 32, offset: 5216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3332, file: !235, line: 764, baseType: !97, size: 128, offset: 5248)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3332, file: !235, line: 765, baseType: !306, size: 64, offset: 5376)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3332, file: !235, line: 768, baseType: !675, size: 256, offset: 5440)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3332, file: !235, line: 769, baseType: !49, size: 32, offset: 5696)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3332, file: !235, line: 771, baseType: !3492, size: 64, offset: 5760)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3332, file: !235, line: 772, baseType: !97, size: 128, offset: 5824)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3332, file: !235, line: 773, baseType: !39, size: 64, offset: 5952)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3332, file: !235, line: 774, baseType: !22, size: 32, offset: 6016)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3332, file: !235, line: 777, baseType: !54, size: 192, offset: 6080)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3332, file: !235, line: 778, baseType: !3728, size: 64, offset: 6272)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !244, line: 1083, size: 384, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3729, file: !244, line: 1084, baseType: !692, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3729, file: !244, line: 1085, baseType: !22, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3729, file: !244, line: 1086, baseType: !22, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3729, file: !244, line: 1087, baseType: !3728, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3729, file: !244, line: 1088, baseType: !647, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3729, file: !244, line: 1089, baseType: !655, size: 128, align: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3332, file: !235, line: 781, baseType: !7, size: 32, offset: 6336)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3332, file: !235, line: 782, baseType: !7, size: 32, offset: 6368)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3332, file: !235, line: 783, baseType: !7, size: 32, offset: 6400)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3332, file: !235, line: 784, baseType: !7, size: 32, offset: 6432)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3332, file: !235, line: 785, baseType: !39, size: 64, offset: 6464)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3332, file: !235, line: 786, baseType: !3743, size: 256, offset: 6528)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3744, line: 17, size: 256, elements: !3745)
!3744 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3745 = !{!3746, !3747, !3752}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3743, file: !3744, line: 18, baseType: !330, size: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3743, file: !3744, line: 19, baseType: !3748, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !3751}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3743, file: !3744, line: 20, baseType: !3753, size: 64, offset: 192)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3754, line: 16, size: 64, elements: !3755)
!3754 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3755 = !{!3756}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3753, file: !3754, line: 17, baseType: !306, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3332, file: !235, line: 787, baseType: !655, size: 128, align: 64, offset: 6784)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3332, file: !235, line: 788, baseType: !7, size: 32, offset: 6912)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3332, file: !235, line: 789, baseType: !3753, size: 64, offset: 6976)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3332, file: !235, line: 791, baseType: !49, size: 32, offset: 7040)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3332, file: !235, line: 794, baseType: !3762, size: 192, offset: 7104)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !235, line: 579, size: 192, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3762, file: !235, line: 580, baseType: !97, size: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3762, file: !235, line: 581, baseType: !462, size: 32, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3762, file: !235, line: 582, baseType: !7, size: 32, offset: 160)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3332, file: !235, line: 796, baseType: !3768, size: 64, offset: 7296)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !235, line: 585, size: 128, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3769, file: !235, line: 586, baseType: !39, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3769, file: !235, line: 587, baseType: !39, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3332, file: !235, line: 797, baseType: !39, size: 64, offset: 7360)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3332, file: !235, line: 800, baseType: !3331, size: 64, offset: 7424)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3332, file: !235, line: 802, baseType: !3456, size: 64, offset: 7488)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3332, file: !235, line: 803, baseType: !655, size: 128, align: 64, offset: 7552)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3332, file: !235, line: 805, baseType: !743, size: 64, offset: 7680)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3332, file: !235, line: 806, baseType: !285, size: 64, offset: 7744)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3332, file: !235, line: 808, baseType: !670, size: 64, offset: 7808)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3332, file: !235, line: 810, baseType: !3781, size: 64, offset: 7872)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!285}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3332, file: !235, line: 811, baseType: !3785, size: 64, offset: 7936)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !235, line: 605, baseType: !3786)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3331, !3789, !3894}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !235, line: 1148, size: 2048, align: 512, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3801, !3802, !3803, !3808, !3809, !3816, !3837, !3859, !3869, !3887, !3888, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3790, file: !235, line: 1153, baseType: !285, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3790, file: !235, line: 1154, baseType: !285, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3790, file: !235, line: 1155, baseType: !285, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3790, file: !235, line: 1161, baseType: !285, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3790, file: !235, line: 1165, baseType: !3797, size: 64, offset: 256)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3790, file: !235, line: 1162, size: 64, elements: !3798)
!3798 = !{!3799, !3800}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3797, file: !235, line: 1163, baseType: !301, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3797, file: !235, line: 1164, baseType: !301, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3790, file: !235, line: 1166, baseType: !285, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3790, file: !235, line: 1167, baseType: !285, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3790, file: !235, line: 1171, baseType: !3804, size: 64, offset: 448)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3790, file: !235, line: 1168, size: 64, elements: !3805)
!3805 = !{!3806, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3804, file: !235, line: 1169, baseType: !301, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3804, file: !235, line: 1170, baseType: !301, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3790, file: !235, line: 1177, baseType: !285, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3790, file: !235, line: 1178, baseType: !3810, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !235, line: 67, size: 64, elements: !3812)
!3812 = !{!3813, !3814}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3811, file: !235, line: 68, baseType: !286, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3811, file: !235, line: 69, baseType: !3815, offset: 64)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !1062)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3790, file: !235, line: 1179, baseType: !3817, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !235, line: 93, size: 256, elements: !3819)
!3819 = !{!3820, !3836}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3818, file: !235, line: 94, baseType: !3821, size: 224)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !235, line: 83, size: 224, elements: !3822)
!3822 = !{!3823, !3829, !3834, !3835}
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !235, line: 84, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3821, file: !235, line: 84, size: 64, elements: !3825)
!3825 = !{!3826, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3824, file: !235, line: 85, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3824, file: !235, line: 86, baseType: !39, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3821, file: !235, line: 88, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !235, line: 80, baseType: !3831)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!39, !20, !2569, !39, !39}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3821, file: !235, line: 89, baseType: !20, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3821, file: !235, line: 90, baseType: !301, size: 32, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3818, file: !235, line: 95, baseType: !301, size: 32, offset: 224)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3790, file: !235, line: 1180, baseType: !3838, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !235, line: 123, size: 128, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3839, file: !235, line: 124, baseType: !286, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3839, file: !235, line: 125, baseType: !286, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3839, file: !235, line: 126, baseType: !3844, offset: 128)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, elements: !1062)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3532, line: 1415, size: 192, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3845, file: !3532, line: 1416, baseType: !286, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3845, file: !3532, line: 1417, baseType: !286, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3845, file: !3532, line: 1418, baseType: !286, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3845, file: !3532, line: 1419, baseType: !286, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3845, file: !3532, line: 1420, baseType: !286, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3845, file: !3532, line: 1421, baseType: !286, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3845, file: !3532, line: 1422, baseType: !286, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3845, file: !3532, line: 1423, baseType: !286, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3845, file: !3532, line: 1424, baseType: !286, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3845, file: !3532, line: 1425, baseType: !286, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3845, file: !3532, line: 1426, baseType: !286, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3845, file: !3532, line: 1427, baseType: !286, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3790, file: !235, line: 1181, baseType: !3860, size: 64, offset: 768)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3532, line: 1430, size: 64, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3860, file: !3532, line: 1431, baseType: !286, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !3532, line: 1433, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !3532, line: 1433, size: 64, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3864, file: !3532, line: 1434, baseType: !302, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3864, file: !3532, line: 1435, baseType: !94, size: 16, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3864, file: !3532, line: 1436, baseType: !94, size: 16, offset: 48)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3790, file: !235, line: 1182, baseType: !3870, size: 64, offset: 832)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3532, line: 1267, size: 64, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3870, file: !3532, line: 1268, baseType: !286, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !3532, line: 1269, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3870, file: !3532, line: 1269, size: 64, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3874, file: !3532, line: 1270, baseType: !286, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3874, file: !3532, line: 1271, baseType: !286, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3874, file: !3532, line: 1272, baseType: !286, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3874, file: !3532, line: 1273, baseType: !286, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3874, file: !3532, line: 1274, baseType: !286, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3874, file: !3532, line: 1275, baseType: !286, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3874, file: !3532, line: 1276, baseType: !286, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3874, file: !3532, line: 1277, baseType: !286, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3874, file: !3532, line: 1278, baseType: !286, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3874, file: !3532, line: 1279, baseType: !286, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3874, file: !3532, line: 1280, baseType: !286, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3790, file: !235, line: 1183, baseType: !285, size: 64, offset: 896)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3790, file: !235, line: 1185, baseType: !3889, size: 128, offset: 960)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3890, line: 7, size: 128, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3891 = !{!3892, !3893}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3889, file: !3890, line: 8, baseType: !286, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3889, file: !3890, line: 9, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3896, line: 103, size: 1344, elements: !3897)
!3896 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3926, !3927, !3928}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3895, file: !3896, line: 109, baseType: !39, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3895, file: !3896, line: 110, baseType: !39, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3895, file: !3896, line: 111, baseType: !39, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3895, file: !3896, line: 112, baseType: !39, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3895, file: !3896, line: 113, baseType: !39, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3895, file: !3896, line: 114, baseType: !39, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3895, file: !3896, line: 117, baseType: !39, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3895, file: !3896, line: 118, baseType: !39, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3895, file: !3896, line: 119, baseType: !39, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3895, file: !3896, line: 120, baseType: !39, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3895, file: !3896, line: 121, baseType: !39, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3895, file: !3896, line: 122, baseType: !39, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3895, file: !3896, line: 123, baseType: !39, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3895, file: !3896, line: 124, baseType: !39, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3895, file: !3896, line: 125, baseType: !39, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3895, file: !3896, line: 139, baseType: !39, size: 64, offset: 960)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3895, file: !3896, line: 142, baseType: !39, size: 64, offset: 1024)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !3896, line: 144, baseType: !3916, size: 64, offset: 1088)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !3896, line: 144, size: 64, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3916, file: !3896, line: 146, baseType: !93, size: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3916, file: !3896, line: 148, baseType: !285, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3916, file: !3896, line: 150, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3896, line: 59, size: 64, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3921, file: !3896, line: 61, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3921, file: !3896, line: 63, baseType: !285, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3921, file: !3896, line: 65, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !3896, line: 153, baseType: !39, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3895, file: !3896, line: 154, baseType: !39, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !3896, line: 156, baseType: !3929, size: 64, offset: 1280)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !3896, line: 156, size: 64, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3929, file: !3896, line: 158, baseType: !93, size: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3929, file: !3896, line: 160, baseType: !285, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3929, file: !3896, line: 162, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3896, line: 69, size: 64, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3934, file: !3896, line: 71, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3934, file: !3896, line: 73, baseType: !285, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3934, file: !3896, line: 75, baseType: !285, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3934, file: !3896, line: 77, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3934, file: !3896, line: 80, baseType: !285, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3934, file: !3896, line: 83, baseType: !285, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3934, file: !3896, line: 86, baseType: !285, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3934, file: !3896, line: 88, baseType: !285, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3934, file: !3896, line: 93, baseType: !285, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3934, file: !3896, line: 100, baseType: !285, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3790, file: !235, line: 1186, baseType: !3889, size: 128, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3790, file: !235, line: 1187, baseType: !285, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3790, file: !235, line: 1189, baseType: !285, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3790, file: !235, line: 1190, baseType: !285, size: 64, offset: 1344)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3790, file: !235, line: 1191, baseType: !285, size: 64, offset: 1408)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3790, file: !235, line: 1192, baseType: !285, size: 64, offset: 1472)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3790, file: !235, line: 1193, baseType: !285, size: 64, offset: 1536)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3790, file: !235, line: 1194, baseType: !285, size: 64, offset: 1600)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3790, file: !235, line: 1195, baseType: !285, size: 64, offset: 1664)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3332, file: !235, line: 812, baseType: !20, size: 64, offset: 8000)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3332, file: !235, line: 820, baseType: !3125, size: 64, offset: 8064)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3332, file: !235, line: 821, baseType: !3312, size: 64, offset: 8128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3332, file: !235, line: 828, baseType: !3959, size: 64, offset: 8192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !235, line: 1046, size: 1664, elements: !3961)
!3961 = !{!3962, !4220}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3960, file: !235, line: 1047, baseType: !3963, size: 1600)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3964, line: 152, size: 1600, elements: !3965)
!3964 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3965 = !{!3966, !4076, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4219}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3963, file: !3964, line: 154, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3964, line: 389, size: 7872, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3989, !3990, !3994, !3995, !3996, !3997, !3998, !4003, !4019, !4020, !4022, !4023, !4024, !4046, !4047, !4048, !4049, !4055, !4056, !4057, !4058, !4059, !4063, !4066, !4067, !4074}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3968, file: !3964, line: 391, baseType: !3963, size: 1600)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3968, file: !3964, line: 393, baseType: !39, size: 64, offset: 1600)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3968, file: !3964, line: 401, baseType: !22, size: 32, offset: 1664)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3968, file: !3964, line: 404, baseType: !22, size: 32, offset: 1696)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3968, file: !3964, line: 417, baseType: !22, size: 32, offset: 1728)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3968, file: !3964, line: 418, baseType: !22, size: 32, offset: 1760)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3968, file: !3964, line: 419, baseType: !22, size: 32, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3968, file: !3964, line: 432, baseType: !22, size: 32, offset: 1824)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3968, file: !3964, line: 433, baseType: !22, size: 32, offset: 1856)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3968, file: !3964, line: 434, baseType: !22, size: 32, offset: 1888)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3968, file: !3964, line: 436, baseType: !22, size: 32, offset: 1920)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3968, file: !3964, line: 439, baseType: !7, size: 32, offset: 1952)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3968, file: !3964, line: 441, baseType: !2663, size: 64, offset: 1984)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3968, file: !3964, line: 442, baseType: !3984, size: 448, offset: 2048)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3964, line: 138, size: 448, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3984, file: !3964, line: 140, baseType: !2663, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3984, file: !3964, line: 141, baseType: !39, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3984, file: !3964, line: 142, baseType: !2398, size: 320, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3968, file: !3964, line: 443, baseType: !3984, size: 448, offset: 2496)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3968, file: !3964, line: 446, baseType: !3991, offset: 2944)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3984, elements: !3992)
!3992 = !{!3993}
!3993 = !DISubrange(count: 0)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3968, file: !3964, line: 455, baseType: !93, size: 16, offset: 2944)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3968, file: !3964, line: 456, baseType: !93, size: 16, offset: 2960)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3968, file: !3964, line: 457, baseType: !93, size: 16, offset: 2976)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3968, file: !3964, line: 458, baseType: !93, size: 16, offset: 2992)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3968, file: !3964, line: 461, baseType: !3999, size: 896, offset: 3008)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4000, size: 896, elements: !4001)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!4001 = !{!4002}
!4002 = !DISubrange(count: 14)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3968, file: !3964, line: 463, baseType: !4004, size: 64, offset: 3904)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3964, line: 537, size: 41664, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4005, file: !3964, line: 538, baseType: !2683, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4005, file: !3964, line: 541, baseType: !7, size: 32, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4005, file: !3964, line: 544, baseType: !22, size: 32, offset: 96)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4005, file: !3964, line: 547, baseType: !97, size: 128, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4005, file: !3964, line: 548, baseType: !655, size: 128, align: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4005, file: !3964, line: 555, baseType: !3968, size: 7872, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4005, file: !3964, line: 558, baseType: !3967, size: 64, offset: 8256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4005, file: !3964, line: 561, baseType: !49, size: 32, offset: 8320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4005, file: !3964, line: 564, baseType: !7, size: 32, offset: 8352)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4005, file: !3964, line: 567, baseType: !3274, size: 32768, offset: 8384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4005, file: !3964, line: 570, baseType: !4018, size: 512, offset: 41152)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !1490)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3968, file: !3964, line: 469, baseType: !97, size: 128, offset: 3968)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3968, file: !3964, line: 478, baseType: !4021, size: 1792, offset: 4096)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1792, elements: !4001)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3968, file: !3964, line: 487, baseType: !3967, size: 64, offset: 5888)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3968, file: !3964, line: 488, baseType: !3967, size: 64, offset: 5952)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3968, file: !3964, line: 491, baseType: !4025, size: 64, offset: 6016)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3964, line: 327, size: 896, elements: !4027)
!4027 = !{!4028, !4031, !4041, !4042, !4043, !4044, !4045}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4026, file: !3964, line: 332, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4030, line: 64, elements: !640)
!4030 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4026, file: !3964, line: 333, baseType: !4032, size: 192)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3964, line: 299, size: 192, elements: !4033)
!4033 = !{!4034}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4032, file: !3964, line: 300, baseType: !4035, size: 192)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4036, line: 17, size: 192, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4037 = !{!4038, !4039, !4040}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4035, file: !4036, line: 18, baseType: !285, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4035, file: !4036, line: 19, baseType: !285, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4035, file: !4036, line: 20, baseType: !287, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4026, file: !3964, line: 339, baseType: !4032, size: 192, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4026, file: !3964, line: 347, baseType: !4032, size: 192, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4026, file: !3964, line: 353, baseType: !4032, size: 192, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4026, file: !3964, line: 366, baseType: !3967, size: 64, offset: 768)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4026, file: !3964, line: 367, baseType: !3967, size: 64, offset: 832)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3968, file: !3964, line: 492, baseType: !97, size: 128, offset: 6080)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3968, file: !3964, line: 495, baseType: !4032, size: 192, offset: 6208)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3968, file: !3964, line: 496, baseType: !4032, size: 192, offset: 6400)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3968, file: !3964, line: 497, baseType: !4050, size: 192, offset: 6592)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !308, line: 324, size: 192, elements: !4051)
!4051 = !{!4052, !4053, !4054}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4050, file: !308, line: 326, baseType: !285, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4050, file: !308, line: 327, baseType: !285, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4050, file: !308, line: 328, baseType: !462, size: 32, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3968, file: !3964, line: 503, baseType: !97, size: 128, offset: 6784)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3968, file: !3964, line: 504, baseType: !675, size: 256, offset: 6912)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3968, file: !3964, line: 507, baseType: !54, size: 192, offset: 7168)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3968, file: !3964, line: 510, baseType: !957, size: 256, offset: 7360)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3968, file: !3964, line: 513, baseType: !4060, size: 64, offset: 7616)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4062, line: 214, elements: !640)
!4062 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3968, file: !3964, line: 516, baseType: !4064, offset: 7680)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4065, line: 76, elements: !640)
!4065 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3968, file: !3964, line: 519, baseType: !49, size: 32, offset: 7680)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3968, file: !3964, line: 522, baseType: !4068, size: 128, offset: 7712)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3964, line: 370, size: 128, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4068, file: !3964, line: 372, baseType: !832, size: 8)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4068, file: !3964, line: 375, baseType: !22, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4068, file: !3964, line: 380, baseType: !22, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4068, file: !3964, line: 386, baseType: !22, size: 32, offset: 96)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3968, file: !3964, line: 529, baseType: !4075, offset: 7872)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3967, elements: !1062)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3963, file: !3964, line: 157, baseType: !4077, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3964, line: 669, size: 1984, elements: !4079)
!4079 = !{!4080, !4084, !4088, !4092, !4093, !4094, !4095, !4099, !4103, !4104, !4110, !4114, !4115, !4116, !4145, !4149, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4202, !4203}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4078, file: !3964, line: 670, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!4000, !4000}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4078, file: !3964, line: 671, baseType: !4085, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!22, !4000}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4078, file: !3964, line: 672, baseType: !4089, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4000}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4078, file: !3964, line: 673, baseType: !4089, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4078, file: !3964, line: 674, baseType: !4089, size: 64, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4078, file: !3964, line: 675, baseType: !4089, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4078, file: !3964, line: 676, baseType: !4096, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !4000, !22}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4078, file: !3964, line: 677, baseType: !4100, size: 64, offset: 448)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!22, !2708, !4000}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4078, file: !3964, line: 679, baseType: !4100, size: 64, offset: 512)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4078, file: !3964, line: 682, baseType: !4105, size: 64, offset: 576)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!22, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3964, line: 30, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4078, file: !3964, line: 683, baseType: !4111, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !4108}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4078, file: !3964, line: 684, baseType: !4111, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4078, file: !3964, line: 685, baseType: !3219, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4078, file: !3964, line: 686, baseType: !4117, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!22, !306, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3964, line: 209, size: 4736, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4121, file: !3964, line: 215, baseType: !3999, size: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4121, file: !3964, line: 218, baseType: !321, size: 32, offset: 896)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4121, file: !3964, line: 226, baseType: !4120, size: 64, offset: 960)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4121, file: !3964, line: 229, baseType: !3967, size: 64, offset: 1024)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4121, file: !3964, line: 232, baseType: !22, size: 32, offset: 1088)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4121, file: !3964, line: 241, baseType: !97, size: 128, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4121, file: !3964, line: 242, baseType: !97, size: 128, offset: 1280)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4121, file: !3964, line: 243, baseType: !97, size: 128, offset: 1408)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4121, file: !3964, line: 246, baseType: !97, size: 128, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4121, file: !3964, line: 255, baseType: !4021, size: 1792, offset: 1664)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4121, file: !3964, line: 258, baseType: !97, size: 128, offset: 3456)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4121, file: !3964, line: 259, baseType: !97, size: 128, offset: 3584)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4121, file: !3964, line: 265, baseType: !727, size: 128, offset: 3712)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4121, file: !3964, line: 271, baseType: !97, size: 128, offset: 3840)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4121, file: !3964, line: 277, baseType: !97, size: 128, offset: 3968)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4121, file: !3964, line: 278, baseType: !97, size: 128, offset: 4096)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4121, file: !3964, line: 279, baseType: !97, size: 128, offset: 4224)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4121, file: !3964, line: 288, baseType: !3967, size: 64, offset: 4352)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4121, file: !3964, line: 289, baseType: !3967, size: 64, offset: 4416)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4121, file: !3964, line: 290, baseType: !4120, size: 64, offset: 4480)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4121, file: !3964, line: 293, baseType: !832, size: 8, offset: 4544)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4121, file: !3964, line: 296, baseType: !655, size: 128, align: 64, offset: 4608)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4078, file: !3964, line: 688, baseType: !4146, size: 64, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !306, !4120}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4078, file: !3964, line: 689, baseType: !4150, size: 64, offset: 960)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !306}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4078, file: !3964, line: 690, baseType: !4150, size: 64, offset: 1024)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4078, file: !3964, line: 691, baseType: !4150, size: 64, offset: 1088)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4078, file: !3964, line: 692, baseType: !4089, size: 64, offset: 1152)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4078, file: !3964, line: 694, baseType: !832, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4078, file: !3964, line: 707, baseType: !832, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4078, file: !3964, line: 719, baseType: !832, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4078, file: !3964, line: 722, baseType: !22, size: 32, offset: 1248)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4078, file: !3964, line: 723, baseType: !16, size: 64, offset: 1280)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4078, file: !3964, line: 726, baseType: !16, size: 64, offset: 1344)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4078, file: !3964, line: 729, baseType: !4004, size: 64, offset: 1408)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4078, file: !3964, line: 732, baseType: !748, size: 192, offset: 1472)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4078, file: !3964, line: 738, baseType: !97, size: 128, offset: 1664)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4078, file: !3964, line: 744, baseType: !4166, size: 64, offset: 1792)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3964, line: 580, size: 1728, elements: !4168)
!4168 = !{!4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4178, !4179, !4180, !4184, !4188, !4189, !4190, !4191, !4192, !4196, !4200, !4201}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4167, file: !3964, line: 586, baseType: !4018, size: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4167, file: !3964, line: 587, baseType: !39, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4167, file: !3964, line: 593, baseType: !35, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4167, file: !3964, line: 596, baseType: !7, size: 32, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4167, file: !3964, line: 604, baseType: !7, size: 32, offset: 672)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4167, file: !3964, line: 610, baseType: !4077, size: 64, offset: 704)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4167, file: !3964, line: 611, baseType: !97, size: 128, offset: 768)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4167, file: !3964, line: 612, baseType: !4177, size: 64, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4167, file: !3964, line: 614, baseType: !2699, size: 64, offset: 960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4167, file: !3964, line: 615, baseType: !2757, size: 64, offset: 1024)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4167, file: !3964, line: 621, baseType: !4181, size: 64, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!285, !4000, !4166}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4167, file: !3964, line: 625, baseType: !4185, size: 64, offset: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!381, !4000, !4166}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4167, file: !3964, line: 628, baseType: !2738, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4167, file: !3964, line: 631, baseType: !2726, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4167, file: !3964, line: 632, baseType: !2734, size: 64, offset: 1344)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4167, file: !3964, line: 633, baseType: !2730, size: 64, offset: 1408)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4167, file: !3964, line: 640, baseType: !4193, size: 64, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!22, !4000, !4166, !285}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4167, file: !3964, line: 645, baseType: !4197, size: 64, offset: 1536)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!22, !4000, !4166, !381}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4167, file: !3964, line: 654, baseType: !2765, size: 64, offset: 1600)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4167, file: !3964, line: 657, baseType: !2772, size: 64, offset: 1664)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4078, file: !3964, line: 745, baseType: !4166, size: 64, offset: 1856)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4078, file: !3964, line: 754, baseType: !7, size: 32, offset: 1920)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3963, file: !3964, line: 160, baseType: !1635, size: 128, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3963, file: !3964, line: 163, baseType: !97, size: 128, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3963, file: !3964, line: 164, baseType: !97, size: 128, offset: 384)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3963, file: !3964, line: 167, baseType: !97, size: 128, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3963, file: !3964, line: 173, baseType: !22, size: 32, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !3964, line: 175, baseType: !7, size: 32, offset: 672)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3963, file: !3964, line: 183, baseType: !285, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3963, file: !3964, line: 189, baseType: !49, size: 32, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3963, file: !3964, line: 192, baseType: !957, size: 256, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3963, file: !3964, line: 193, baseType: !4214, size: 448, offset: 1088)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !958, line: 120, size: 448, elements: !4215)
!4215 = !{!4216, !4217, !4218}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4214, file: !958, line: 121, baseType: !957, size: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4214, file: !958, line: 122, baseType: !655, size: 128, align: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4214, file: !958, line: 125, baseType: !3107, size: 64, offset: 384)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3963, file: !3964, line: 199, baseType: !4000, size: 64, offset: 1536)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3960, file: !235, line: 1048, baseType: !4221, size: 64, offset: 1600)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !235, line: 1039, size: 256, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4222, file: !235, line: 1040, baseType: !285, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4222, file: !235, line: 1041, baseType: !285, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4222, file: !235, line: 1042, baseType: !285, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4222, file: !235, line: 1043, baseType: !22, size: 32, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3332, file: !235, line: 832, baseType: !20, size: 64, offset: 8256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3332, file: !235, line: 834, baseType: !97, size: 128, offset: 8320)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3332, file: !235, line: 842, baseType: !302, size: 32, offset: 8448)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1435, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1435, file: !116, line: 525, baseType: !4233, size: 64, offset: 8384)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4236, line: 28, size: 192, elements: !4237)
!4236 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4237 = !{!4238, !4239, !4240}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4235, file: !4236, line: 29, baseType: !16, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4235, file: !4236, line: 30, baseType: !16, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4235, file: !4236, line: 31, baseType: !39, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1435, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1435, file: !116, line: 533, baseType: !20, size: 64, offset: 8512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1435, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1435, file: !116, line: 535, baseType: !4245, size: 64, offset: 8640)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1435, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1435, file: !116, line: 539, baseType: !22, size: 32, offset: 8736)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1435, file: !116, line: 540, baseType: !3208, size: 64, offset: 8768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1435, file: !116, line: 563, baseType: !97, size: 128, offset: 8832)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1435, file: !116, line: 565, baseType: !97, size: 128, offset: 8960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1435, file: !116, line: 568, baseType: !3219, size: 64, offset: 9088)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1435, file: !116, line: 570, baseType: !49, size: 32, offset: 9152)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1411, file: !244, line: 2382, baseType: !1410, size: 64, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1411, file: !244, line: 2383, baseType: !723, size: 64, offset: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1411, file: !244, line: 2385, baseType: !4256, offset: 576)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3074, line: 206, elements: !640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1411, file: !244, line: 2386, baseType: !4256, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1411, file: !244, line: 2387, baseType: !4256, offset: 576)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1411, file: !244, line: 2388, baseType: !4260, offset: 576)
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4256, elements: !711)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1411, file: !244, line: 2390, baseType: !4256, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1411, file: !244, line: 2391, baseType: !4256, offset: 576)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1411, file: !244, line: 2392, baseType: !4256, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1411, file: !244, line: 2393, baseType: !4256, offset: 576)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1402, file: !244, line: 1197, baseType: !4266, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4268)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !244, line: 2057, size: 1664, elements: !4269)
!4269 = !{!4270, !4274, !4278, !4279, !4283, !4287, !4291, !4292, !4293, !4297, !4301, !4305, !4306, !4307, !4313, !4317, !4318, !4322, !4323, !4324, !4325, !4329, !4333, !4380, !4395, !4396}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4268, file: !244, line: 2058, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!1200, !1401}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4268, file: !244, line: 2059, baseType: !4275, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{null, !1200}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4268, file: !244, line: 2060, baseType: !4275, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4268, file: !244, line: 2062, baseType: !4280, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !1200, !22}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4268, file: !244, line: 2063, baseType: !4284, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!22, !1200, !1875}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4268, file: !244, line: 2064, baseType: !4288, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!22, !1200}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4268, file: !244, line: 2065, baseType: !4275, size: 64, offset: 384)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4268, file: !244, line: 2066, baseType: !1430, size: 64, offset: 448)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4268, file: !244, line: 2067, baseType: !4294, size: 64, offset: 512)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!22, !1401, !22}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4268, file: !244, line: 2068, baseType: !4298, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!22, !1401, !243}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4268, file: !244, line: 2069, baseType: !4302, size: 64, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!22, !1401}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4268, file: !244, line: 2070, baseType: !4298, size: 64, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4268, file: !244, line: 2071, baseType: !4302, size: 64, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4268, file: !244, line: 2072, baseType: !4308, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!22, !1165, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !244, line: 62, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4268, file: !244, line: 2073, baseType: !4314, size: 64, offset: 896)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!22, !1401, !2955, !918}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4268, file: !244, line: 2074, baseType: !1430, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4268, file: !244, line: 2076, baseType: !4319, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!22, !2708, !1165}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4268, file: !244, line: 2077, baseType: !4319, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4268, file: !244, line: 2078, baseType: !4319, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4268, file: !244, line: 2079, baseType: !4319, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4268, file: !244, line: 2081, baseType: !4326, size: 64, offset: 1280)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!1352, !1401, !22, !918, !35, !41}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4268, file: !244, line: 2082, baseType: !4330, size: 64, offset: 1344)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!1352, !1401, !22, !16, !35, !41}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4268, file: !244, line: 2083, baseType: !4334, size: 64, offset: 1408)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!4337, !1200}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !249, line: 296, size: 1664, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4365, !4366, !4367}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4339, file: !249, line: 297, baseType: !727, size: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4339, file: !249, line: 298, baseType: !97, size: 128, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4339, file: !249, line: 299, baseType: !97, size: 128, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4339, file: !249, line: 300, baseType: !97, size: 128, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4339, file: !249, line: 301, baseType: !675, size: 256, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4339, file: !249, line: 302, baseType: !59, size: 32, offset: 768)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4339, file: !249, line: 303, baseType: !49, size: 32, offset: 800)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4339, file: !249, line: 304, baseType: !1401, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4339, file: !249, line: 305, baseType: !4350, size: 64, offset: 896)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !249, line: 68, size: 64, elements: !4351)
!4351 = !{!4352, !4364}
!4352 = !DIDerivedType(tag: DW_TAG_member, scope: !4350, file: !249, line: 69, baseType: !4353, size: 32)
!4353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4350, file: !249, line: 69, size: 32, elements: !4354)
!4354 = !{!4355, !4356, !4357}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4353, file: !249, line: 70, baseType: !805, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4353, file: !249, line: 71, baseType: !813, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4353, file: !249, line: 72, baseType: !4358, size: 32)
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4359, line: 24, baseType: !4360)
!4359 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4359, line: 22, size: 32, elements: !4361)
!4361 = !{!4362}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4360, file: !4359, line: 23, baseType: !4363, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4359, line: 20, baseType: !811)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4350, file: !249, line: 74, baseType: !248, size: 32, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4339, file: !249, line: 306, baseType: !41, size: 64, offset: 960)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4339, file: !249, line: 307, baseType: !39, size: 64, offset: 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4339, file: !249, line: 308, baseType: !4368, size: 576, offset: 1088)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !249, line: 205, size: 576, elements: !4369)
!4369 = !{!4370, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4368, file: !249, line: 206, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !249, line: 66, baseType: !43)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4368, file: !249, line: 207, baseType: !4371, size: 64, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4368, file: !249, line: 208, baseType: !4371, size: 64, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4368, file: !249, line: 209, baseType: !4371, size: 64, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4368, file: !249, line: 210, baseType: !4371, size: 64, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4368, file: !249, line: 211, baseType: !4371, size: 64, offset: 320)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4368, file: !249, line: 212, baseType: !4371, size: 64, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4368, file: !249, line: 213, baseType: !866, size: 64, offset: 448)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4368, file: !249, line: 214, baseType: !866, size: 64, offset: 512)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4268, file: !244, line: 2085, baseType: !4381, size: 64, offset: 1472)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!1055, !1401, !4384}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4386, line: 15, size: 256, elements: !4387)
!4386 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4387 = !{!4388, !4389, !4390, !4391, !4392}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4385, file: !4386, line: 16, baseType: !757, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4385, file: !4386, line: 19, baseType: !22, size: 32, offset: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4385, file: !4386, line: 26, baseType: !39, size: 64, offset: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4385, file: !4386, line: 33, baseType: !39, size: 64, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4385, file: !4386, line: 36, baseType: !4393, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !131, line: 33, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4268, file: !244, line: 2087, baseType: !4381, size: 64, offset: 1536)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4268, file: !244, line: 2089, baseType: !1430, size: 64, offset: 1600)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1402, file: !244, line: 1198, baseType: !4398, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4400)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !249, line: 324, size: 704, elements: !4401)
!4401 = !{!4402, !4406, !4410, !4414, !4415, !4416, !4417, !4418, !4423, !4428, !4432}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4400, file: !249, line: 325, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!22, !4338}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4400, file: !249, line: 326, baseType: !4407, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!4338, !1401, !22}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4400, file: !249, line: 327, baseType: !4411, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{null, !4338}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4400, file: !249, line: 328, baseType: !4403, size: 64, offset: 192)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4400, file: !249, line: 329, baseType: !4403, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4400, file: !249, line: 330, baseType: !4403, size: 64, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4400, file: !249, line: 331, baseType: !4294, size: 64, offset: 384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4400, file: !249, line: 334, baseType: !4419, size: 64, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4422, !1200}
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4400, file: !249, line: 335, baseType: !4424, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!22, !1200, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4400, file: !249, line: 337, baseType: !4429, size: 64, offset: 576)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!22, !1200, !4422}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4400, file: !249, line: 339, baseType: !4433, size: 64, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!22, !1401, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1402, file: !244, line: 1199, baseType: !4438, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !249, line: 430, size: 704, elements: !4441)
!4441 = !{!4442, !4446, !4447, !4451, !4452, !4453, !4468, !4491, !4495, !4496, !4519}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4440, file: !249, line: 431, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!22, !1401, !22, !22, !1321}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4440, file: !249, line: 432, baseType: !4294, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4440, file: !249, line: 433, baseType: !4448, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!22, !1401, !7}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4440, file: !249, line: 434, baseType: !4448, size: 64, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4440, file: !249, line: 435, baseType: !4294, size: 64, offset: 256)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4440, file: !249, line: 436, baseType: !4454, size: 64, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!22, !1401, !22, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !249, line: 417, size: 256, elements: !4459)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4458, file: !249, line: 418, baseType: !22, size: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4458, file: !249, line: 419, baseType: !7, size: 32, offset: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4458, file: !249, line: 420, baseType: !7, size: 32, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4458, file: !249, line: 422, baseType: !7, size: 32, offset: 96)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4458, file: !249, line: 423, baseType: !7, size: 32, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4458, file: !249, line: 424, baseType: !7, size: 32, offset: 160)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4458, file: !249, line: 425, baseType: !7, size: 32, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4458, file: !249, line: 426, baseType: !7, size: 32, offset: 224)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4440, file: !249, line: 437, baseType: !4469, size: 64, offset: 384)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!22, !1401, !4350, !4472}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !249, line: 345, size: 960, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4473, file: !249, line: 346, baseType: !22, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4473, file: !249, line: 347, baseType: !285, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4473, file: !249, line: 348, baseType: !285, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4473, file: !249, line: 349, baseType: !285, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4473, file: !249, line: 350, baseType: !285, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4473, file: !249, line: 351, baseType: !285, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4473, file: !249, line: 352, baseType: !285, size: 64, offset: 384)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4473, file: !249, line: 353, baseType: !381, size: 64, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4473, file: !249, line: 355, baseType: !381, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4473, file: !249, line: 356, baseType: !22, size: 32, offset: 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4473, file: !249, line: 357, baseType: !22, size: 32, offset: 608)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4473, file: !249, line: 358, baseType: !285, size: 64, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4473, file: !249, line: 359, baseType: !285, size: 64, offset: 704)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4473, file: !249, line: 360, baseType: !285, size: 64, offset: 768)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4473, file: !249, line: 361, baseType: !381, size: 64, offset: 832)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4473, file: !249, line: 362, baseType: !22, size: 32, offset: 896)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4440, file: !249, line: 438, baseType: !4492, size: 64, offset: 448)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!22, !1401, !4436, !4472}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4440, file: !249, line: 440, baseType: !4469, size: 64, offset: 512)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4440, file: !249, line: 441, baseType: !4497, size: 64, offset: 576)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!22, !1401, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !249, line: 411, size: 1408, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4501, file: !249, line: 412, baseType: !7, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4501, file: !249, line: 413, baseType: !4505, size: 1344, offset: 64)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4506, size: 1344, elements: !711)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !249, line: 397, size: 448, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4518}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4506, file: !249, line: 398, baseType: !7, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4506, file: !249, line: 399, baseType: !7, size: 32, offset: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4506, file: !249, line: 401, baseType: !7, size: 32, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4506, file: !249, line: 402, baseType: !7, size: 32, offset: 96)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4506, file: !249, line: 403, baseType: !7, size: 32, offset: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4506, file: !249, line: 404, baseType: !7, size: 32, offset: 160)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4506, file: !249, line: 405, baseType: !7, size: 32, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4506, file: !249, line: 406, baseType: !287, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4506, file: !249, line: 407, baseType: !4517, size: 64, offset: 320)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !25, line: 132, baseType: !285)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4506, file: !249, line: 408, baseType: !4517, size: 64, offset: 384)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4440, file: !249, line: 442, baseType: !4448, size: 64, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1402, file: !244, line: 1200, baseType: !4521, size: 64, offset: 576)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !244, line: 54, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1402, file: !244, line: 1201, baseType: !39, size: 64, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1402, file: !244, line: 1202, baseType: !39, size: 64, offset: 704)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1402, file: !244, line: 1203, baseType: !39, size: 64, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1402, file: !244, line: 1204, baseType: !1165, size: 64, offset: 832)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1402, file: !244, line: 1205, baseType: !850, size: 320, offset: 896)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1402, file: !244, line: 1206, baseType: !22, size: 32, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1402, file: !244, line: 1207, baseType: !49, size: 32, offset: 1248)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1402, file: !244, line: 1209, baseType: !20, size: 64, offset: 1280)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1402, file: !244, line: 1211, baseType: !4533, size: 64, offset: 1344)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4536)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !244, line: 1211, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1402, file: !244, line: 1223, baseType: !4538, size: 64, offset: 1408)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1177, line: 34, size: 64, elements: !4539)
!4539 = !{!4540}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4538, file: !1177, line: 35, baseType: !1180, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1402, file: !244, line: 1224, baseType: !97, size: 128, offset: 1472)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1402, file: !244, line: 1225, baseType: !2182, size: 64, offset: 1600)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1402, file: !244, line: 1226, baseType: !4544, size: 64, offset: 1664)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !244, line: 1226, flags: DIFlagFwdDecl)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1402, file: !244, line: 1227, baseType: !4547, size: 64, offset: 1728)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !255, line: 163, size: 6848, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4597, !4598, !4599, !4600, !4601, !4602, !4603}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4548, file: !255, line: 164, baseType: !285, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4548, file: !255, line: 165, baseType: !365, size: 192, align: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4548, file: !255, line: 166, baseType: !97, size: 128, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4548, file: !255, line: 167, baseType: !39, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4548, file: !255, line: 168, baseType: !39, size: 64, offset: 448)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4548, file: !255, line: 170, baseType: !2806, size: 32, offset: 512)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4548, file: !255, line: 171, baseType: !7, size: 32, offset: 544)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4548, file: !255, line: 172, baseType: !7, size: 32, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4548, file: !255, line: 173, baseType: !7, size: 32, offset: 608)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4548, file: !255, line: 173, baseType: !7, size: 32, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4548, file: !255, line: 179, baseType: !668, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4548, file: !255, line: 184, baseType: !39, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4548, file: !255, line: 186, baseType: !4563, size: 4672, offset: 832)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !255, line: 105, size: 4672, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4563, file: !255, line: 106, baseType: !4547, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4563, file: !255, line: 108, baseType: !39, size: 64, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4563, file: !255, line: 109, baseType: !39, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4563, file: !255, line: 111, baseType: !97, size: 128, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4563, file: !255, line: 112, baseType: !97, size: 128, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4563, file: !255, line: 113, baseType: !97, size: 128, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4563, file: !255, line: 114, baseType: !97, size: 128, offset: 576)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4563, file: !255, line: 115, baseType: !59, size: 32, offset: 704)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4563, file: !255, line: 117, baseType: !49, size: 32, offset: 736)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4563, file: !255, line: 118, baseType: !4575, size: 1280, offset: 768)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 1280, elements: !732)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4563, file: !255, line: 120, baseType: !39, size: 64, offset: 2048)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4563, file: !255, line: 121, baseType: !39, size: 64, offset: 2112)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4563, file: !255, line: 122, baseType: !39, size: 64, offset: 2176)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4563, file: !255, line: 123, baseType: !39, size: 64, offset: 2240)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4563, file: !255, line: 124, baseType: !39, size: 64, offset: 2304)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4563, file: !255, line: 132, baseType: !39, size: 64, offset: 2368)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4563, file: !255, line: 133, baseType: !39, size: 64, offset: 2432)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4563, file: !255, line: 135, baseType: !4584, size: 384, offset: 2496)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4585, line: 76, size: 384, elements: !4586)
!4585 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4586 = !{!4587, !4588, !4589}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4584, file: !4585, line: 78, baseType: !1107, size: 320)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4584, file: !4585, line: 80, baseType: !7, size: 32, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4584, file: !4585, line: 81, baseType: !462, size: 32, offset: 352)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4563, file: !255, line: 136, baseType: !22, size: 32, offset: 2880)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4563, file: !255, line: 137, baseType: !254, size: 32, offset: 2912)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4563, file: !255, line: 139, baseType: !59, size: 32, offset: 2944)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4563, file: !255, line: 140, baseType: !97, size: 128, offset: 3008)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4563, file: !255, line: 141, baseType: !3102, size: 704, offset: 3136)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4563, file: !255, line: 142, baseType: !3102, size: 704, offset: 3840)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4563, file: !255, line: 144, baseType: !97, size: 128, offset: 4544)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4548, file: !255, line: 187, baseType: !97, size: 128, offset: 5504)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4548, file: !255, line: 193, baseType: !54, size: 192, offset: 5632)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4548, file: !255, line: 195, baseType: !2228, size: 64, offset: 5824)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4548, file: !255, line: 196, baseType: !4018, size: 512, offset: 5888)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4548, file: !255, line: 197, baseType: !2228, size: 64, offset: 6400)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4548, file: !255, line: 199, baseType: !2398, size: 320, offset: 6464)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4548, file: !255, line: 202, baseType: !1165, size: 64, offset: 6784)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1402, file: !244, line: 1228, baseType: !4605, size: 64, offset: 1792)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !244, line: 1228, flags: DIFlagFwdDecl)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1402, file: !244, line: 1229, baseType: !727, size: 128, offset: 1856)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1402, file: !244, line: 1230, baseType: !7, size: 32, offset: 1984)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1402, file: !244, line: 1231, baseType: !4610, size: 2496, offset: 2048)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !249, line: 521, size: 2496, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4616, !4648}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4610, file: !249, line: 522, baseType: !7, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4610, file: !249, line: 523, baseType: !850, size: 320, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4610, file: !249, line: 524, baseType: !4615, size: 192, offset: 384)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 192, elements: !711)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4610, file: !249, line: 525, baseType: !4617, size: 1728, offset: 576)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4618, size: 1728, elements: !711)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !249, line: 222, size: 576, elements: !4619)
!4619 = !{!4620, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4618, file: !249, line: 223, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !249, line: 445, size: 256, elements: !4623)
!4623 = !{!4624, !4625, !4638, !4639}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4622, file: !249, line: 446, baseType: !22, size: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4622, file: !249, line: 447, baseType: !4626, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4628)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !249, line: 312, size: 512, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4628, file: !249, line: 313, baseType: !4294, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4628, file: !249, line: 314, baseType: !4294, size: 64, offset: 64)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4628, file: !249, line: 315, baseType: !4294, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4628, file: !249, line: 316, baseType: !4294, size: 64, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4628, file: !249, line: 317, baseType: !4403, size: 64, offset: 256)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4628, file: !249, line: 318, baseType: !4403, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4628, file: !249, line: 319, baseType: !4403, size: 64, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4628, file: !249, line: 320, baseType: !4433, size: 64, offset: 448)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4622, file: !249, line: 448, baseType: !1434, size: 64, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4622, file: !249, line: 449, baseType: !4621, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4618, file: !249, line: 224, baseType: !22, size: 32, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4618, file: !249, line: 226, baseType: !97, size: 128, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4618, file: !249, line: 227, baseType: !39, size: 64, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4618, file: !249, line: 228, baseType: !7, size: 32, offset: 320)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4618, file: !249, line: 229, baseType: !7, size: 32, offset: 352)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4618, file: !249, line: 230, baseType: !4371, size: 64, offset: 384)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4618, file: !249, line: 231, baseType: !4371, size: 64, offset: 448)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4618, file: !249, line: 232, baseType: !20, size: 64, offset: 512)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4610, file: !249, line: 526, baseType: !4649, size: 192, offset: 2304)
!4649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4626, size: 192, elements: !711)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1402, file: !244, line: 1233, baseType: !4651, size: 2368, offset: 4544)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !244, line: 1184, size: 2368, elements: !4652)
!4652 = !{!4653, !4654, !4655}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4651, file: !244, line: 1185, baseType: !26, size: 16)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4651, file: !244, line: 1186, baseType: !26, size: 16, offset: 16)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4651, file: !244, line: 1187, baseType: !4656, size: 2304, offset: 64)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 2304, elements: !711)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4658, line: 12, size: 768, elements: !4659)
!4658 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4659 = !{!4660, !4668, !4669, !4670, !4671}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4657, file: !4658, line: 13, baseType: !4661, size: 384)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4662, line: 17, size: 384, elements: !4663)
!4662 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4663 = !{!4664, !4665, !4666, !4667}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4661, file: !4662, line: 18, baseType: !22, size: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4661, file: !4662, line: 19, baseType: !22, size: 32, offset: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4661, file: !4662, line: 20, baseType: !54, size: 192, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4661, file: !4662, line: 22, baseType: !655, size: 128, align: 64, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4657, file: !4658, line: 14, baseType: !2173, size: 64, offset: 384)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4657, file: !4658, line: 15, baseType: !3753, size: 64, offset: 448)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4657, file: !4658, line: 16, baseType: !54, size: 192, offset: 512)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4657, file: !4658, line: 17, baseType: !49, size: 32, offset: 704)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1402, file: !244, line: 1240, baseType: !20, size: 64, offset: 6912)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1402, file: !244, line: 1243, baseType: !301, size: 32, offset: 6976)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1402, file: !244, line: 1245, baseType: !866, size: 64, offset: 7040)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1402, file: !244, line: 1246, baseType: !866, size: 64, offset: 7104)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1402, file: !244, line: 1248, baseType: !302, size: 32, offset: 7168)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1402, file: !244, line: 1249, baseType: !4678, size: 64, offset: 7232)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !244, line: 634, flags: DIFlagFwdDecl)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1402, file: !244, line: 1252, baseType: !4681, size: 256, offset: 7296)
!4681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !4682)
!4682 = !{!4683}
!4683 = !DISubrange(count: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1402, file: !244, line: 1253, baseType: !4685, size: 128, offset: 7552)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4686, line: 21, baseType: !4687)
!4686 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4686, line: 19, size: 128, elements: !4688)
!4688 = !{!4689}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4687, file: !4686, line: 20, baseType: !4690, size: 128)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !4691)
!4691 = !{!4692}
!4692 = !DISubrange(count: 16)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1402, file: !244, line: 1255, baseType: !7, size: 32, offset: 7680)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1402, file: !244, line: 1261, baseType: !675, size: 256, offset: 7744)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1402, file: !244, line: 1267, baseType: !16, size: 64, offset: 8000)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1402, file: !244, line: 1269, baseType: !4697, size: 64, offset: 8064)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4699)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1167, line: 128, size: 1024, align: 512, elements: !4700)
!4700 = !{!4701, !4705, !4706, !4713, !4719, !4723, !4727, !4731, !4732, !4736, !4740, !4745, !4749}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4699, file: !1167, line: 129, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!22, !1165, !7}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4699, file: !1167, line: 130, baseType: !4702, size: 64, offset: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4699, file: !1167, line: 131, baseType: !4707, size: 64, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!22, !4710, !4712}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4699, file: !1167, line: 132, baseType: !4714, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!22, !4710, !7, !16, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4699, file: !1167, line: 134, baseType: !4720, size: 64, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!22, !4710}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4699, file: !1167, line: 135, baseType: !4724, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!22, !1165}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4699, file: !1167, line: 136, baseType: !4728, size: 64, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{null, !1165}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4699, file: !1167, line: 137, baseType: !4728, size: 64, offset: 448)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4699, file: !1167, line: 138, baseType: !4733, size: 64, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !1165, !1200}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4699, file: !1167, line: 139, baseType: !4737, size: 64, offset: 576)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!918, !1165, !918, !22}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4699, file: !1167, line: 140, baseType: !4741, size: 64, offset: 640)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!1160, !4744}
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4699, file: !1167, line: 141, baseType: !4746, size: 64, offset: 704)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!22, !1321, !832}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4699, file: !1167, line: 142, baseType: !4750, size: 64, offset: 768)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!1165, !1165, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1402, file: !244, line: 1271, baseType: !4756, size: 448, offset: 8128)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4386, line: 63, size: 448, elements: !4757)
!4757 = !{!4758, !4763, !4764, !4765, !4766, !4767, !4768}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4756, file: !4386, line: 64, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!39, !4762, !4384}
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4756, file: !4386, line: 66, baseType: !4759, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4756, file: !4386, line: 69, baseType: !1055, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4756, file: !4386, line: 70, baseType: !22, size: 32, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4756, file: !4386, line: 71, baseType: !7, size: 32, offset: 224)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4756, file: !4386, line: 74, baseType: !97, size: 128, offset: 256)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4756, file: !4386, line: 85, baseType: !4769, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1402, file: !244, line: 1274, baseType: !668, size: 64, offset: 8576)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1402, file: !244, line: 1280, baseType: !668, size: 64, offset: 8640)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1402, file: !244, line: 1283, baseType: !22, size: 32, offset: 8704)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1402, file: !244, line: 1286, baseType: !2632, size: 32, offset: 8736)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1402, file: !244, line: 1289, baseType: !3107, size: 64, offset: 8768)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1402, file: !244, line: 1290, baseType: !723, size: 64, offset: 8832)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1402, file: !244, line: 1297, baseType: !774, size: 64, offset: 8896)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1402, file: !244, line: 1304, baseType: !4778, size: 64, offset: 8960)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4779, line: 49, size: 64, elements: !4780)
!4779 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4780 = !{!4781}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4778, file: !4779, line: 50, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4779, line: 41, size: 512, align: 512, elements: !4784)
!4784 = !{!4785, !4786, !4791}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4783, file: !4779, line: 43, baseType: !59, size: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4783, file: !4779, line: 45, baseType: !4787, size: 192, offset: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4779, line: 29, size: 192, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4787, file: !4779, line: 30, baseType: !97, size: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4787, file: !4779, line: 32, baseType: !1055, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4783, file: !4779, line: 46, baseType: !1055, size: 64, offset: 256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1402, file: !244, line: 1305, baseType: !4778, size: 64, offset: 9024)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1402, file: !244, line: 1306, baseType: !655, size: 128, align: 64, offset: 9088)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1402, file: !244, line: 1307, baseType: !957, size: 256, offset: 9216)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1402, file: !244, line: 1309, baseType: !675, size: 256, offset: 9472)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1402, file: !244, line: 1314, baseType: !22, size: 32, offset: 9728)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1402, file: !244, line: 1317, baseType: !59, size: 32, align: 512, offset: 10240)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1402, file: !244, line: 1318, baseType: !97, size: 128, offset: 10304)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1402, file: !244, line: 1320, baseType: !59, size: 32, offset: 10432)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1402, file: !244, line: 1321, baseType: !97, size: 128, offset: 10496)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1201, file: !244, line: 656, baseType: !1551, size: 64, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1201, file: !244, line: 659, baseType: !20, size: 64, offset: 576)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1201, file: !244, line: 663, baseType: !39, size: 64, offset: 640)
!4804 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !244, line: 671, baseType: !4805, size: 32, offset: 704)
!4805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !244, line: 671, size: 32, elements: !4806)
!4806 = !{!4807, !4808}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4805, file: !244, line: 672, baseType: !3155, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4805, file: !244, line: 673, baseType: !7, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1201, file: !244, line: 675, baseType: !1274, size: 32, offset: 736)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1201, file: !244, line: 676, baseType: !41, size: 64, offset: 768)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1201, file: !244, line: 677, baseType: !1310, size: 128, offset: 832)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1201, file: !244, line: 678, baseType: !1310, size: 128, offset: 960)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1201, file: !244, line: 679, baseType: !1310, size: 128, offset: 1088)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1201, file: !244, line: 680, baseType: !59, size: 32, offset: 1216)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1201, file: !244, line: 681, baseType: !26, size: 16, offset: 1248)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1201, file: !244, line: 682, baseType: !83, size: 8, offset: 1264)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1201, file: !244, line: 683, baseType: !83, size: 8, offset: 1272)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1201, file: !244, line: 684, baseType: !4517, size: 64, offset: 1280)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1201, file: !244, line: 691, baseType: !39, size: 64, offset: 1344)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1201, file: !244, line: 692, baseType: !850, size: 320, offset: 1408)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1201, file: !244, line: 694, baseType: !39, size: 64, offset: 1728)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1201, file: !244, line: 695, baseType: !39, size: 64, offset: 1792)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1201, file: !244, line: 697, baseType: !727, size: 128, offset: 1856)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1201, file: !244, line: 698, baseType: !97, size: 128, offset: 1984)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1201, file: !244, line: 707, baseType: !97, size: 128, offset: 2112)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1201, file: !244, line: 708, baseType: !97, size: 128, offset: 2240)
!4827 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !244, line: 709, baseType: !4828, size: 128, offset: 2368)
!4828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !244, line: 709, size: 128, elements: !4829)
!4829 = !{!4830, !4831}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4828, file: !244, line: 710, baseType: !723, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4828, file: !244, line: 711, baseType: !655, size: 128, align: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1201, file: !244, line: 713, baseType: !670, size: 64, offset: 2496)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1201, file: !244, line: 714, baseType: !670, size: 64, offset: 2560)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1201, file: !244, line: 715, baseType: !49, size: 32, offset: 2624)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1201, file: !244, line: 716, baseType: !49, size: 32, offset: 2656)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1201, file: !244, line: 717, baseType: !49, size: 32, offset: 2688)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1201, file: !244, line: 719, baseType: !49, size: 32, offset: 2720)
!4838 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !244, line: 721, baseType: !4839, size: 64, offset: 2752)
!4839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !244, line: 721, size: 64, elements: !4840)
!4840 = !{!4841, !4967}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4839, file: !244, line: 722, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4844)
!4844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !244, line: 1914, size: 2112, elements: !4845)
!4845 = !{!4846, !4847, !4851, !4855, !4859, !4860, !4861, !4867, !4880, !4884, !4888, !4889, !4893, !4894, !4898, !4903, !4904, !4908, !4912, !4918, !4919, !4923, !4924, !4930, !4934, !4935, !4940, !4944, !4948, !4952, !4956, !4957, !4963}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4844, file: !244, line: 1915, baseType: !1434, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4844, file: !244, line: 1916, baseType: !4848, size: 64, offset: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!41, !647, !41, !22}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4844, file: !244, line: 1917, baseType: !4852, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DISubroutineType(types: !4854)
!4854 = !{!1352, !647, !918, !35, !40}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4844, file: !244, line: 1918, baseType: !4856, size: 64, offset: 192)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!1352, !647, !16, !35, !40}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4844, file: !244, line: 1919, baseType: !2018, size: 64, offset: 256)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4844, file: !244, line: 1920, baseType: !2018, size: 64, offset: 320)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4844, file: !244, line: 1921, baseType: !4862, size: 64, offset: 384)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!22, !2021, !4865, !7}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !244, line: 53, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4844, file: !244, line: 1923, baseType: !4868, size: 64, offset: 448)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!22, !647, !4871}
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !244, line: 1858, size: 128, elements: !4873)
!4873 = !{!4874, !4879}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4872, file: !244, line: 1859, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !244, line: 1855, baseType: !4876)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!832, !4871, !16, !22, !41, !285, !7}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4872, file: !244, line: 1860, baseType: !41, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4844, file: !244, line: 1924, baseType: !4881, size: 64, offset: 512)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!2775, !647, !2777}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4844, file: !244, line: 1925, baseType: !4885, size: 64, offset: 576)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!1055, !647, !7, !39}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4844, file: !244, line: 1926, baseType: !4885, size: 64, offset: 640)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4844, file: !244, line: 1927, baseType: !4890, size: 64, offset: 704)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!22, !647, !1681}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4844, file: !244, line: 1928, baseType: !39, size: 64, offset: 768)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4844, file: !244, line: 1929, baseType: !4895, size: 64, offset: 832)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!22, !1200, !647}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4844, file: !244, line: 1930, baseType: !4899, size: 64, offset: 896)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!22, !647, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !244, line: 1061, baseType: !20)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4844, file: !244, line: 1931, baseType: !4895, size: 64, offset: 960)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4844, file: !244, line: 1932, baseType: !4905, size: 64, offset: 1024)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!22, !647, !41, !41, !22}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4844, file: !244, line: 1933, baseType: !4909, size: 64, offset: 1088)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!22, !22, !647, !22}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4844, file: !244, line: 1934, baseType: !4913, size: 64, offset: 1152)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!22, !647, !22, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !244, line: 1063, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4844, file: !244, line: 1935, baseType: !644, size: 64, offset: 1216)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4844, file: !244, line: 1936, baseType: !4920, size: 64, offset: 1280)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!22, !22}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4844, file: !244, line: 1937, baseType: !4913, size: 64, offset: 1344)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4844, file: !244, line: 1938, baseType: !4925, size: 64, offset: 1408)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!1352, !4928, !647, !40, !35, !7}
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !308, line: 59, flags: DIFlagFwdDecl)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4844, file: !244, line: 1939, baseType: !4931, size: 64, offset: 1472)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!1352, !647, !40, !4928, !35, !7}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4844, file: !244, line: 1940, baseType: !2622, size: 64, offset: 1536)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4844, file: !244, line: 1941, baseType: !4936, size: 64, offset: 1600)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!22, !647, !22, !4939, !1995}
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4844, file: !244, line: 1942, baseType: !4941, size: 64, offset: 1664)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!1055, !647, !22, !41, !41}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4844, file: !244, line: 1944, baseType: !4945, size: 64, offset: 1728)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{null, !2708, !647}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4844, file: !244, line: 1948, baseType: !4949, size: 64, offset: 1792)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!1352, !647, !41, !647, !41, !35, !7}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4844, file: !244, line: 1950, baseType: !4953, size: 64, offset: 1856)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!41, !647, !41, !647, !41, !41, !7}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4844, file: !244, line: 1953, baseType: !4905, size: 64, offset: 1920)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4844, file: !244, line: 1954, baseType: !4958, size: 64, offset: 1984)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!22, !4961, !7}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !244, line: 1911, flags: DIFlagFwdDecl)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4844, file: !244, line: 1955, baseType: !4964, size: 64, offset: 2048)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!22, !4961, !4865, !7}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4839, file: !244, line: 723, baseType: !4275, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1201, file: !244, line: 725, baseType: !4969, size: 64, offset: 2816)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !244, line: 725, flags: DIFlagFwdDecl)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1201, file: !244, line: 726, baseType: !1552, size: 1536, align: 64, offset: 2880)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1201, file: !244, line: 727, baseType: !97, size: 128, offset: 4416)
!4973 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !244, line: 728, baseType: !4974, size: 64, offset: 4544)
!4974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !244, line: 728, size: 64, elements: !4975)
!4975 = !{!4976, !4977, !4980, !4981}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4974, file: !244, line: 729, baseType: !4928, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4974, file: !244, line: 730, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !244, line: 730, flags: DIFlagFwdDecl)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4974, file: !244, line: 731, baseType: !918, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4974, file: !244, line: 732, baseType: !7, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1201, file: !244, line: 735, baseType: !302, size: 32, offset: 4608)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1201, file: !244, line: 738, baseType: !302, size: 32, offset: 4640)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1201, file: !244, line: 739, baseType: !4678, size: 64, offset: 4672)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1201, file: !244, line: 750, baseType: !20, size: 64, offset: 4736)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1166, file: !1167, line: 91, baseType: !4987, size: 256, offset: 448)
!4987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !4682)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1166, file: !1167, line: 94, baseType: !4989, size: 64, offset: 704)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4990, line: 25, size: 64, elements: !4991)
!4990 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4991 = !{!4992}
!4992 = !DIDerivedType(tag: DW_TAG_member, scope: !4989, file: !4990, line: 26, baseType: !4993, size: 64)
!4993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !4990, line: 26, size: 64, elements: !4994)
!4994 = !{!4995, !4996}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4993, file: !4990, line: 28, baseType: !286, size: 64, align: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !4993, file: !4990, line: 30, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4993, file: !4990, line: 30, size: 64, elements: !4998)
!4998 = !{!4999, !5000}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4997, file: !4990, line: 31, baseType: !59, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4997, file: !4990, line: 32, baseType: !22, size: 32, offset: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1166, file: !1167, line: 95, baseType: !4697, size: 64, offset: 768)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1166, file: !1167, line: 96, baseType: !1401, size: 64, offset: 832)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1166, file: !1167, line: 97, baseType: !39, size: 64, offset: 896)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1166, file: !1167, line: 98, baseType: !20, size: 64, offset: 960)
!5005 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1167, line: 100, baseType: !5006, size: 128, offset: 1024)
!5006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 100, size: 128, elements: !5007)
!5007 = !{!5008, !5009}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5006, file: !1167, line: 101, baseType: !97, size: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5006, file: !1167, line: 102, baseType: !2786, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1166, file: !1167, line: 104, baseType: !97, size: 128, offset: 1152)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1166, file: !1167, line: 105, baseType: !97, size: 128, offset: 1280)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1166, file: !1167, line: 113, baseType: !5013, size: 128, offset: 1408)
!5013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1166, file: !1167, line: 109, size: 128, elements: !5014)
!5014 = !{!5015, !5016, !5017}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5013, file: !1167, line: 110, baseType: !727, size: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5013, file: !1167, line: 111, baseType: !1176, size: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5013, file: !1167, line: 112, baseType: !655, size: 128, align: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1161, file: !1162, line: 72, baseType: !1401, size: 64, offset: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1161, file: !1162, line: 73, baseType: !22, size: 32, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1161, file: !1162, line: 74, baseType: !1239, size: 64, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1156, file: !1157, line: 10, baseType: !1165, size: 64, offset: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !648, file: !244, line: 1015, baseType: !1200, size: 64, offset: 1344)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !648, file: !244, line: 1016, baseType: !4842, size: 64, offset: 1408)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !648, file: !244, line: 1018, baseType: !285, size: 64, offset: 1472)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !648, file: !244, line: 1020, baseType: !20, size: 64, offset: 1536)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !648, file: !244, line: 1023, baseType: !20, size: 64, offset: 1600)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !648, file: !244, line: 1027, baseType: !3323, size: 64, offset: 1664)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !648, file: !244, line: 1029, baseType: !1551, size: 64, offset: 1728)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !648, file: !244, line: 1030, baseType: !2632, size: 32, offset: 1792)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !648, file: !244, line: 1031, baseType: !2632, size: 32, offset: 1824)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !623, file: !131, line: 756, baseType: !39, size: 64, offset: 704)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !623, file: !131, line: 757, baseType: !39, size: 64, offset: 768)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !623, file: !131, line: 760, baseType: !39, size: 64, offset: 832)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !623, file: !131, line: 761, baseType: !39, size: 64, offset: 896)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !623, file: !131, line: 763, baseType: !39, size: 64, offset: 960)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !623, file: !131, line: 764, baseType: !5037, size: 64, offset: 1024)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1696, line: 299, baseType: !5039)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 299, size: 64, elements: !5040)
!5040 = !{!5041}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !5039, file: !1696, line: 299, baseType: !5042, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1701, line: 18, baseType: !39)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !623, file: !131, line: 773, baseType: !49, size: 32, offset: 1088)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !623, file: !131, line: 785, baseType: !49, size: 32, offset: 1120)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !623, file: !131, line: 795, baseType: !5046, size: 64, offset: 1152)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !5048)
!5048 = !{!5049, !5050}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5047, file: !131, line: 727, baseType: !285, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !5047, file: !131, line: 728, baseType: !22, size: 32, offset: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !623, file: !131, line: 801, baseType: !39, size: 64, offset: 1216)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !623, file: !131, line: 804, baseType: !668, size: 64, offset: 1280)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !623, file: !131, line: 806, baseType: !22, size: 32, offset: 1344)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !623, file: !131, line: 808, baseType: !59, size: 32, offset: 1376)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !623, file: !131, line: 823, baseType: !850, size: 320, offset: 1408)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !623, file: !131, line: 825, baseType: !97, size: 128, offset: 1728)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !623, file: !131, line: 845, baseType: !22, size: 32, offset: 1856)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !623, file: !131, line: 849, baseType: !39, size: 64, offset: 1920)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !623, file: !131, line: 850, baseType: !39, size: 64, offset: 1984)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !623, file: !131, line: 852, baseType: !39, size: 64, offset: 2048)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !623, file: !131, line: 853, baseType: !39, size: 64, offset: 2112)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !623, file: !131, line: 854, baseType: !670, size: 64, offset: 2176)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !623, file: !131, line: 855, baseType: !39, size: 64, offset: 2240)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !623, file: !131, line: 856, baseType: !39, size: 64, offset: 2304)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !623, file: !131, line: 857, baseType: !39, size: 64, offset: 2368)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !623, file: !131, line: 858, baseType: !39, size: 64, offset: 2432)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !623, file: !131, line: 865, baseType: !493, size: 32, offset: 2496)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !623, file: !131, line: 867, baseType: !59, size: 32, offset: 2528)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !623, file: !131, line: 869, baseType: !39, size: 64, offset: 2560)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !623, file: !131, line: 869, baseType: !39, size: 64, offset: 2624)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !623, file: !131, line: 869, baseType: !39, size: 64, offset: 2688)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !623, file: !131, line: 869, baseType: !39, size: 64, offset: 2752)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !623, file: !131, line: 870, baseType: !39, size: 64, offset: 2816)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !623, file: !131, line: 870, baseType: !39, size: 64, offset: 2880)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !623, file: !131, line: 870, baseType: !39, size: 64, offset: 2944)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !623, file: !131, line: 871, baseType: !39, size: 64, offset: 3008)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !623, file: !131, line: 871, baseType: !39, size: 64, offset: 3072)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !623, file: !131, line: 871, baseType: !39, size: 64, offset: 3136)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !623, file: !131, line: 871, baseType: !39, size: 64, offset: 3200)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !623, file: !131, line: 873, baseType: !5081, size: 3328, offset: 3264)
!5081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3328, elements: !5082)
!5082 = !{!5083}
!5083 = !DISubrange(count: 52)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !623, file: !131, line: 875, baseType: !4575, size: 1280, offset: 6592)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !623, file: !131, line: 877, baseType: !5086, size: 64, offset: 7872)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !623, file: !131, line: 880, baseType: !5089, size: 1088, offset: 7936)
!5089 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !5090, line: 72, baseType: !5091)
!5090 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5090, line: 23, size: 1088, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5096, !5097, !5100, !5101, !5102, !5103, !5128, !5129, !5130}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !5091, file: !5090, line: 28, baseType: !285, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !5091, file: !5090, line: 38, baseType: !670, size: 64, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !5091, file: !5090, line: 40, baseType: !39, size: 64, offset: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !5091, file: !5090, line: 43, baseType: !850, size: 320, offset: 192)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !5091, file: !5090, line: 44, baseType: !5098, size: 64, offset: 512)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !5090, line: 44, flags: DIFlagFwdDecl)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5091, file: !5090, line: 48, baseType: !39, size: 64, offset: 576)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5091, file: !5090, line: 59, baseType: !675, size: 256, offset: 640)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !5091, file: !5090, line: 60, baseType: !20, size: 64, offset: 896)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !5091, file: !5090, line: 61, baseType: !5104, size: 64, offset: 960)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5106)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !5107, line: 13, size: 1216, elements: !5108)
!5107 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!5108 = !{!5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5106, file: !5107, line: 14, baseType: !20, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5106, file: !5107, line: 15, baseType: !39, size: 64, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !5106, file: !5107, line: 17, baseType: !39, size: 64, offset: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !5106, file: !5107, line: 17, baseType: !39, size: 64, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !5106, file: !5107, line: 18, baseType: !39, size: 64, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !5106, file: !5107, line: 18, baseType: !39, size: 64, offset: 320)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !5106, file: !5107, line: 19, baseType: !2569, size: 64, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !5106, file: !5107, line: 21, baseType: !1055, size: 64, offset: 448)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !5106, file: !5107, line: 23, baseType: !1055, size: 64, offset: 512)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !5106, file: !5107, line: 24, baseType: !1055, size: 64, offset: 576)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !5106, file: !5107, line: 25, baseType: !1055, size: 64, offset: 640)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !5106, file: !5107, line: 26, baseType: !1055, size: 64, offset: 704)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !5106, file: !5107, line: 27, baseType: !1055, size: 64, offset: 768)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !5106, file: !5107, line: 28, baseType: !1055, size: 64, offset: 832)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !5106, file: !5107, line: 29, baseType: !1055, size: 64, offset: 896)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !5106, file: !5107, line: 30, baseType: !1055, size: 64, offset: 960)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !5106, file: !5107, line: 31, baseType: !1055, size: 64, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !5106, file: !5107, line: 32, baseType: !1055, size: 64, offset: 1088)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !5106, file: !5107, line: 33, baseType: !1055, size: 64, offset: 1152)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !5091, file: !5090, line: 63, baseType: !49, size: 32, offset: 1024)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !5091, file: !5090, line: 69, baseType: !93, size: 16, offset: 1056)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !5091, file: !5090, line: 70, baseType: !2962, size: 16, offset: 1072)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !131, line: 882, baseType: !39, size: 64, offset: 9024)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !623, file: !131, line: 885, baseType: !59, size: 32, offset: 9088)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !623, file: !131, line: 886, baseType: !5134, size: 64, offset: 9152)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !623, file: !131, line: 901, baseType: !774, size: 64, offset: 9216)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !623, file: !131, line: 904, baseType: !647, size: 64, offset: 9280)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !623, file: !131, line: 906, baseType: !5139, size: 64, offset: 9344)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !623, file: !131, line: 930, baseType: !49, size: 32, offset: 9408)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !623, file: !131, line: 933, baseType: !49, size: 32, offset: 9440)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !623, file: !131, line: 935, baseType: !5144, size: 64, offset: 9472)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !273, line: 103, size: 64, elements: !5145)
!5145 = !{!5146}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !5144, file: !273, line: 104, baseType: !5147, size: 64)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !273, line: 101, flags: DIFlagFwdDecl)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !623, file: !131, line: 940, baseType: !668, size: 64, offset: 9536)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !623, file: !131, line: 942, baseType: !957, size: 256, offset: 9600)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !620, file: !131, line: 986, baseType: !5152, offset: 10240)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1062)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !307, file: !308, line: 882, baseType: !619, size: 64, offset: 9792)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !307, file: !308, line: 884, baseType: !22, size: 32, offset: 9856)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !307, file: !308, line: 885, baseType: !22, size: 32, offset: 9888)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !307, file: !308, line: 886, baseType: !22, size: 32, offset: 9920)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !307, file: !308, line: 888, baseType: !22, size: 32, offset: 9952)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !307, file: !308, line: 890, baseType: !39, size: 64, offset: 9984)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !307, file: !308, line: 893, baseType: !7, size: 32, offset: 10048)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !307, file: !308, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !307, file: !308, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !307, file: !308, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !307, file: !308, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !307, file: !308, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !307, file: !308, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !307, file: !308, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !307, file: !308, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !307, file: !308, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !307, file: !308, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !307, file: !308, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !307, file: !308, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !307, file: !308, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !307, file: !308, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !307, file: !308, line: 969, baseType: !39, size: 64, offset: 10176)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !307, file: !308, line: 971, baseType: !5176, size: 448, offset: 10240)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !267, line: 25, size: 448, elements: !5177)
!5177 = !{!5178, !5179, !5184}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !5176, file: !267, line: 26, baseType: !39, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5176, file: !267, line: 27, baseType: !5180, size: 64, offset: 64)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!1055, !5183}
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, scope: !5176, file: !267, line: 28, baseType: !5185, size: 320, offset: 128)
!5185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5176, file: !267, line: 28, size: 320, elements: !5186)
!5186 = !{!5187, !5197, !5222}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !5185, file: !267, line: 37, baseType: !5188, size: 320)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5185, file: !267, line: 30, size: 320, elements: !5189)
!5189 = !{!5190, !5192, !5193, !5194, !5195, !5196}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !5188, file: !267, line: 31, baseType: !5191, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5188, file: !267, line: 32, baseType: !301, size: 32, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5188, file: !267, line: 33, baseType: !301, size: 32, offset: 96)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !5188, file: !267, line: 34, baseType: !301, size: 32, offset: 128)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5188, file: !267, line: 35, baseType: !285, size: 64, offset: 192)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !5188, file: !267, line: 36, baseType: !5191, size: 64, offset: 256)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !5185, file: !267, line: 47, baseType: !5198, size: 192)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5185, file: !267, line: 39, size: 192, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5221}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !5198, file: !267, line: 40, baseType: !485, size: 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5198, file: !267, line: 41, baseType: !266, size: 32, offset: 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, scope: !5198, file: !267, line: 42, baseType: !5203, size: 64, offset: 64)
!5203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5198, file: !267, line: 42, size: 64, elements: !5204)
!5204 = !{!5205, !5213}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !5203, file: !267, line: 43, baseType: !5206, size: 64)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !5208, line: 7, size: 128, elements: !5209)
!5208 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!5209 = !{!5210, !5212}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5207, file: !5208, line: 8, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !37, line: 93, baseType: !43)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5207, file: !5208, line: 9, baseType: !43, size: 64, offset: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !5203, file: !267, line: 44, baseType: !5214, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !5216, line: 7, size: 64, elements: !5217)
!5216 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!5217 = !{!5218, !5220}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5215, file: !5216, line: 8, baseType: !5219, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !5216, line: 5, baseType: !290)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5215, file: !5216, line: 9, baseType: !290, size: 32, offset: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5198, file: !267, line: 46, baseType: !285, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5185, file: !267, line: 55, baseType: !5223, size: 256)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5185, file: !267, line: 49, size: 256, elements: !5224)
!5224 = !{!5225, !5233, !5234, !5235, !5236}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !5223, file: !267, line: 50, baseType: !5226, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !5228, line: 36, size: 64, elements: !5229)
!5228 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!5229 = !{!5230, !5231, !5232}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !5227, file: !5228, line: 37, baseType: !22, size: 32)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5227, file: !5228, line: 38, baseType: !878, size: 16, offset: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !5227, file: !5228, line: 39, baseType: !878, size: 16, offset: 48)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !5223, file: !267, line: 51, baseType: !22, size: 32, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !5223, file: !267, line: 52, baseType: !22, size: 32, offset: 96)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5223, file: !267, line: 53, baseType: !39, size: 64, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5223, file: !267, line: 54, baseType: !39, size: 64, offset: 192)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !307, file: !308, line: 973, baseType: !5238, size: 32, offset: 10688)
!5238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !25, line: 27, baseType: !5239)
!5239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !37, line: 28, baseType: !22)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !307, file: !308, line: 974, baseType: !5238, size: 32, offset: 10720)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !307, file: !308, line: 978, baseType: !39, size: 64, offset: 10752)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !307, file: !308, line: 987, baseType: !306, size: 64, offset: 10816)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !307, file: !308, line: 990, baseType: !306, size: 64, offset: 10880)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !307, file: !308, line: 995, baseType: !97, size: 128, offset: 10944)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !307, file: !308, line: 996, baseType: !97, size: 128, offset: 11072)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !307, file: !308, line: 997, baseType: !306, size: 64, offset: 11200)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !307, file: !308, line: 1005, baseType: !97, size: 128, offset: 11264)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !307, file: !308, line: 1006, baseType: !97, size: 128, offset: 11392)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !307, file: !308, line: 1009, baseType: !715, size: 64, offset: 11520)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !307, file: !308, line: 1010, baseType: !5251, size: 512, offset: 11584)
!5251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 512, elements: !732)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !307, file: !308, line: 1011, baseType: !97, size: 128, offset: 12096)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !307, file: !308, line: 1012, baseType: !97, size: 128, offset: 12224)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !307, file: !308, line: 1014, baseType: !995, size: 64, offset: 12352)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !307, file: !308, line: 1017, baseType: !2955, size: 64, offset: 12416)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !307, file: !308, line: 1020, baseType: !2955, size: 64, offset: 12480)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !307, file: !308, line: 1023, baseType: !20, size: 64, offset: 12544)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !307, file: !308, line: 1025, baseType: !285, size: 64, offset: 12608)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !307, file: !308, line: 1026, baseType: !285, size: 64, offset: 12672)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !307, file: !308, line: 1031, baseType: !285, size: 64, offset: 12736)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !307, file: !308, line: 1032, baseType: !4050, size: 192, offset: 12800)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !307, file: !308, line: 1041, baseType: !39, size: 64, offset: 12992)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !307, file: !308, line: 1042, baseType: !39, size: 64, offset: 13056)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !307, file: !308, line: 1045, baseType: !285, size: 64, offset: 13120)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !307, file: !308, line: 1048, baseType: !285, size: 64, offset: 13184)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !307, file: !308, line: 1051, baseType: !39, size: 64, offset: 13248)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !307, file: !308, line: 1052, baseType: !39, size: 64, offset: 13312)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !307, file: !308, line: 1055, baseType: !5269, size: 640, offset: 13376)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !5270, line: 132, size: 640, elements: !5271)
!5270 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!5271 = !{!5272, !5278, !5279}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !5269, file: !5270, line: 133, baseType: !5273, size: 576)
!5273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5274, size: 576, elements: !711)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !5270, line: 117, size: 192, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !5274, file: !5270, line: 118, baseType: !285, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !5274, file: !5270, line: 119, baseType: !499, size: 128, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !5269, file: !5270, line: 134, baseType: !7, size: 32, offset: 576)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !5269, file: !5270, line: 135, baseType: !7, size: 32, offset: 608)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !307, file: !308, line: 1058, baseType: !5281, size: 448, offset: 14016)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !5270, line: 144, size: 448, elements: !5282)
!5282 = !{!5283, !5284, !5285}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5281, file: !5270, line: 145, baseType: !655, size: 128, align: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5281, file: !5270, line: 146, baseType: !675, size: 256, offset: 128)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !5281, file: !5270, line: 147, baseType: !7, size: 32, offset: 384)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !307, file: !308, line: 1064, baseType: !1069, size: 64, offset: 14464)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !307, file: !308, line: 1067, baseType: !1069, size: 64, offset: 14528)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !307, file: !308, line: 1070, baseType: !1069, size: 64, offset: 14592)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !307, file: !308, line: 1074, baseType: !836, size: 64, offset: 14656)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !307, file: !308, line: 1084, baseType: !5291, size: 128, offset: 14720)
!5291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !4691)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !307, file: !308, line: 1086, baseType: !5293, size: 64, offset: 14848)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !308, line: 55, flags: DIFlagFwdDecl)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !307, file: !308, line: 1089, baseType: !5296, size: 64, offset: 14912)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5297, line: 12, size: 64, elements: !5298)
!5297 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5298 = !{!5299}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5296, file: !5297, line: 13, baseType: !5300, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5297, line: 8, flags: DIFlagFwdDecl)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !307, file: !308, line: 1090, baseType: !5303, size: 128, offset: 14976)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5304, line: 13, size: 128, elements: !5305)
!5304 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5305 = !{!5306}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5303, file: !5304, line: 14, baseType: !97, size: 128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !307, file: !308, line: 1097, baseType: !5308, size: 64, offset: 15104)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !308, line: 50, flags: DIFlagFwdDecl)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !307, file: !308, line: 1100, baseType: !5311, size: 64, offset: 15168)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !308, line: 1100, flags: DIFlagFwdDecl)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !307, file: !308, line: 1103, baseType: !5314, size: 64, offset: 15232)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !308, line: 53, flags: DIFlagFwdDecl)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !307, file: !308, line: 1107, baseType: !5317, size: 64, offset: 15296)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5319, line: 31, size: 576, elements: !5320)
!5319 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5320 = !{!5321, !5322, !5325, !5328, !5331, !5332, !5335, !5338, !5339}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5318, file: !5319, line: 32, baseType: !321, size: 32)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5318, file: !5319, line: 33, baseType: !5323, size: 64, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5319, line: 9, flags: DIFlagFwdDecl)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5318, file: !5319, line: 34, baseType: !5326, size: 64, offset: 128)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5319, line: 10, flags: DIFlagFwdDecl)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5318, file: !5319, line: 35, baseType: !5329, size: 64, offset: 192)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5319, line: 8, flags: DIFlagFwdDecl)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5318, file: !5319, line: 36, baseType: !743, size: 64, offset: 256)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5318, file: !5319, line: 37, baseType: !5333, size: 64, offset: 320)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !838, line: 34, flags: DIFlagFwdDecl)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5318, file: !5319, line: 38, baseType: !5336, size: 64, offset: 384)
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5319, line: 38, flags: DIFlagFwdDecl)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5318, file: !5319, line: 39, baseType: !5336, size: 64, offset: 448)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5318, file: !5319, line: 40, baseType: !5340, size: 64, offset: 512)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5342, line: 771, size: 384, elements: !5343)
!5342 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5343 = !{!5344, !5345, !5346, !5347}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5341, file: !5342, line: 772, baseType: !820, size: 192)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5341, file: !5342, line: 773, baseType: !774, size: 64, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5341, file: !5342, line: 774, baseType: !1040, size: 64, offset: 256)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5341, file: !5342, line: 775, baseType: !4120, size: 64, offset: 320)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !307, file: !308, line: 1110, baseType: !5349, size: 64, offset: 15360)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5351, line: 93, size: 8768, elements: !5352)
!5351 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5352 = !{!5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5401, !5410, !5411, !5413, !5414, !5415, !5418, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5456, !5457, !5464, !5474, !5536, !5537, !5540, !5541, !5542, !5543, !5544, !5545}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5350, file: !5351, line: 94, baseType: !321, size: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5350, file: !5351, line: 95, baseType: !49, size: 32, offset: 32)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5350, file: !5351, line: 96, baseType: !22, size: 32, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5350, file: !5351, line: 97, baseType: !22, size: 32, offset: 96)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5350, file: !5351, line: 98, baseType: !97, size: 128, offset: 128)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5350, file: !5351, line: 100, baseType: !54, size: 192, offset: 256)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5350, file: !5351, line: 103, baseType: !306, size: 64, offset: 448)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5350, file: !5351, line: 106, baseType: !5361, size: 192, offset: 512)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5362, line: 32, size: 192, elements: !5363)
!5362 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5363 = !{!5364, !5365}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5361, file: !5362, line: 33, baseType: !97, size: 128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5361, file: !5362, line: 34, baseType: !5366, size: 64, offset: 128)
!5366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5367, line: 25, baseType: !5368)
!5367 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5367, line: 23, size: 64, elements: !5369)
!5369 = !{!5370}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5368, file: !5367, line: 24, baseType: !570, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5350, file: !5351, line: 109, baseType: !723, size: 64, offset: 704)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5350, file: !5351, line: 112, baseType: !22, size: 32, offset: 768)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5350, file: !5351, line: 114, baseType: !22, size: 32, offset: 800)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5350, file: !5351, line: 115, baseType: !306, size: 64, offset: 832)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5350, file: !5351, line: 118, baseType: !22, size: 32, offset: 896)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5350, file: !5351, line: 119, baseType: !7, size: 32, offset: 928)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5350, file: !5351, line: 121, baseType: !5378, size: 64, offset: 960)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5351, line: 80, size: 448, elements: !5380)
!5380 = !{!5381, !5382, !5388}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5379, file: !5351, line: 81, baseType: !49, size: 32)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5379, file: !5351, line: 82, baseType: !5383, size: 128, offset: 64)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5351, line: 75, size: 128, elements: !5384)
!5384 = !{!5385, !5386}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5383, file: !5351, line: 76, baseType: !306, size: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5383, file: !5351, line: 77, baseType: !5387, size: 64, offset: 64)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5379, file: !5351, line: 83, baseType: !996, size: 256, offset: 192)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5350, file: !5351, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5350, file: !5351, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5350, file: !5351, line: 138, baseType: !7, size: 32, offset: 1056)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5350, file: !5351, line: 139, baseType: !97, size: 128, offset: 1088)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5350, file: !5351, line: 142, baseType: !437, size: 512, offset: 1216)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5350, file: !5351, line: 143, baseType: !445, size: 64, offset: 1728)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5350, file: !5351, line: 150, baseType: !5396, size: 256, offset: 1792)
!5396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5397, size: 256, elements: !2945)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5351, line: 38, size: 128, elements: !5398)
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5397, file: !5351, line: 39, baseType: !285, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5397, file: !5351, line: 40, baseType: !285, size: 64, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5350, file: !5351, line: 156, baseType: !5402, size: 192, offset: 2048)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5351, line: 66, size: 192, elements: !5403)
!5403 = !{!5404}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5402, file: !5351, line: 67, baseType: !5405, size: 192)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5351, line: 47, size: 192, elements: !5406)
!5406 = !{!5407, !5408, !5409}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5405, file: !5351, line: 48, baseType: !670, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5405, file: !5351, line: 49, baseType: !670, size: 64, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5405, file: !5351, line: 50, baseType: !670, size: 64, offset: 128)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5350, file: !5351, line: 160, baseType: !5269, size: 640, offset: 2240)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5350, file: !5351, line: 163, baseType: !5412, size: 256, offset: 2880)
!5412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 256, elements: !732)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5350, file: !5351, line: 169, baseType: !715, size: 64, offset: 3136)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5350, file: !5351, line: 172, baseType: !22, size: 32, offset: 3200)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5350, file: !5351, line: 174, baseType: !5416, size: 64, offset: 3264)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5351, line: 174, flags: DIFlagFwdDecl)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5350, file: !5351, line: 185, baseType: !5419, size: 64, offset: 3328)
!5419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !489, line: 860, baseType: !5420)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 853, size: 64, elements: !5421)
!5421 = !{!5422, !5423}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5420, file: !489, line: 858, baseType: !1171, size: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5420, file: !489, line: 859, baseType: !59, size: 32, offset: 32)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5350, file: !5351, line: 186, baseType: !285, size: 64, offset: 3392)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5350, file: !5351, line: 186, baseType: !285, size: 64, offset: 3456)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5350, file: !5351, line: 186, baseType: !285, size: 64, offset: 3520)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5350, file: !5351, line: 186, baseType: !285, size: 64, offset: 3584)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5350, file: !5351, line: 187, baseType: !285, size: 64, offset: 3648)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5350, file: !5351, line: 188, baseType: !285, size: 64, offset: 3712)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5350, file: !5351, line: 189, baseType: !4050, size: 192, offset: 3776)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5350, file: !5351, line: 190, baseType: !39, size: 64, offset: 3968)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5350, file: !5351, line: 190, baseType: !39, size: 64, offset: 4032)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5350, file: !5351, line: 190, baseType: !39, size: 64, offset: 4096)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5350, file: !5351, line: 190, baseType: !39, size: 64, offset: 4160)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5350, file: !5351, line: 191, baseType: !39, size: 64, offset: 4224)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5350, file: !5351, line: 191, baseType: !39, size: 64, offset: 4288)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5350, file: !5351, line: 191, baseType: !39, size: 64, offset: 4352)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5350, file: !5351, line: 191, baseType: !39, size: 64, offset: 4416)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5350, file: !5351, line: 192, baseType: !39, size: 64, offset: 4480)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5350, file: !5351, line: 192, baseType: !39, size: 64, offset: 4544)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5350, file: !5351, line: 192, baseType: !39, size: 64, offset: 4608)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5350, file: !5351, line: 192, baseType: !39, size: 64, offset: 4672)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5350, file: !5351, line: 193, baseType: !39, size: 64, offset: 4736)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5350, file: !5351, line: 193, baseType: !39, size: 64, offset: 4800)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5350, file: !5351, line: 194, baseType: !5446, size: 448, offset: 4864)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5447, line: 12, size: 448, elements: !5448)
!5447 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454, !5455}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5446, file: !5447, line: 15, baseType: !285, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5446, file: !5447, line: 17, baseType: !285, size: 64, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5446, file: !5447, line: 19, baseType: !285, size: 64, offset: 128)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5446, file: !5447, line: 21, baseType: !285, size: 64, offset: 192)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5446, file: !5447, line: 29, baseType: !285, size: 64, offset: 256)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5446, file: !5447, line: 35, baseType: !285, size: 64, offset: 320)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5446, file: !5447, line: 44, baseType: !285, size: 64, offset: 384)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5350, file: !5351, line: 202, baseType: !287, size: 64, offset: 5312)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5350, file: !5351, line: 213, baseType: !5458, size: 2048, offset: 5376)
!5458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5459, size: 2048, elements: !4691)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5460, line: 43, size: 128, elements: !5461)
!5460 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5461 = !{!5462, !5463}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5459, file: !5460, line: 44, baseType: !38, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5459, file: !5460, line: 45, baseType: !38, size: 64, offset: 64)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5350, file: !5351, line: 216, baseType: !5465, size: 448, offset: 7424)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5351, line: 30, size: 448, elements: !5466)
!5466 = !{!5467, !5468, !5469, !5470, !5471, !5472, !5473}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5465, file: !5351, line: 31, baseType: !22, size: 32)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5465, file: !5351, line: 32, baseType: !1055, size: 64, offset: 64)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5465, file: !5351, line: 33, baseType: !39, size: 64, offset: 128)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5465, file: !5351, line: 34, baseType: !285, size: 64, offset: 192)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5465, file: !5351, line: 34, baseType: !285, size: 64, offset: 256)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5465, file: !5351, line: 35, baseType: !39, size: 64, offset: 320)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5465, file: !5351, line: 35, baseType: !39, size: 64, offset: 384)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5350, file: !5351, line: 219, baseType: !5475, size: 64, offset: 7872)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5477, line: 41, size: 3456, elements: !5478)
!5477 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5478 = !{!5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5476, file: !5477, line: 47, baseType: !94, size: 16)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5476, file: !5477, line: 48, baseType: !302, size: 32, offset: 32)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5476, file: !5477, line: 54, baseType: !85, size: 8, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5476, file: !5477, line: 55, baseType: !85, size: 8, offset: 72)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5476, file: !5477, line: 73, baseType: !286, size: 64, align: 64, offset: 128)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5476, file: !5477, line: 74, baseType: !286, size: 64, offset: 192)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5476, file: !5477, line: 81, baseType: !286, size: 64, offset: 256)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5476, file: !5477, line: 82, baseType: !286, size: 64, offset: 320)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5476, file: !5477, line: 85, baseType: !286, size: 64, offset: 384)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5476, file: !5477, line: 86, baseType: !286, size: 64, offset: 448)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5476, file: !5477, line: 94, baseType: !286, size: 64, offset: 512)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5476, file: !5477, line: 102, baseType: !286, size: 64, offset: 576)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5476, file: !5477, line: 107, baseType: !4681, size: 256, offset: 640)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5476, file: !5477, line: 108, baseType: !85, size: 8, align: 64, offset: 896)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5476, file: !5477, line: 110, baseType: !5494, size: 24, offset: 904)
!5494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !711)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5476, file: !5477, line: 111, baseType: !302, size: 32, align: 64, offset: 960)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5476, file: !5477, line: 113, baseType: !302, size: 32, offset: 992)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5476, file: !5477, line: 114, baseType: !302, size: 32, offset: 1024)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5476, file: !5477, line: 115, baseType: !302, size: 32, offset: 1056)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5476, file: !5477, line: 117, baseType: !302, size: 32, offset: 1088)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5476, file: !5477, line: 118, baseType: !286, size: 64, align: 64, offset: 1152)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5476, file: !5477, line: 120, baseType: !286, size: 64, offset: 1216)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5476, file: !5477, line: 121, baseType: !286, size: 64, offset: 1280)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5476, file: !5477, line: 122, baseType: !286, size: 64, offset: 1344)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5476, file: !5477, line: 123, baseType: !286, size: 64, offset: 1408)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5476, file: !5477, line: 133, baseType: !286, size: 64, offset: 1472)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5476, file: !5477, line: 137, baseType: !286, size: 64, offset: 1536)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5476, file: !5477, line: 142, baseType: !286, size: 64, offset: 1600)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5476, file: !5477, line: 143, baseType: !286, size: 64, offset: 1664)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5476, file: !5477, line: 146, baseType: !286, size: 64, offset: 1728)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5476, file: !5477, line: 147, baseType: !286, size: 64, offset: 1792)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5476, file: !5477, line: 148, baseType: !286, size: 64, offset: 1856)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5476, file: !5477, line: 149, baseType: !286, size: 64, offset: 1920)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5476, file: !5477, line: 154, baseType: !286, size: 64, offset: 1984)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5476, file: !5477, line: 155, baseType: !286, size: 64, offset: 2048)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5476, file: !5477, line: 156, baseType: !286, size: 64, offset: 2112)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5476, file: !5477, line: 158, baseType: !286, size: 64, offset: 2176)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5476, file: !5477, line: 159, baseType: !286, size: 64, offset: 2240)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5476, file: !5477, line: 162, baseType: !286, size: 64, offset: 2304)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5476, file: !5477, line: 163, baseType: !286, size: 64, offset: 2368)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5476, file: !5477, line: 164, baseType: !286, size: 64, offset: 2432)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5476, file: !5477, line: 167, baseType: !286, size: 64, offset: 2496)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5476, file: !5477, line: 168, baseType: !286, size: 64, offset: 2560)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5476, file: !5477, line: 171, baseType: !286, size: 64, offset: 2624)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5476, file: !5477, line: 172, baseType: !286, size: 64, offset: 2688)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5476, file: !5477, line: 175, baseType: !286, size: 64, offset: 2752)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5476, file: !5477, line: 178, baseType: !286, size: 64, offset: 2816)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5476, file: !5477, line: 179, baseType: !286, size: 64, offset: 2880)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5476, file: !5477, line: 182, baseType: !302, size: 32, offset: 2944)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5476, file: !5477, line: 186, baseType: !286, size: 64, align: 64, offset: 3008)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5476, file: !5477, line: 194, baseType: !286, size: 64, offset: 3072)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5476, file: !5477, line: 195, baseType: !286, size: 64, offset: 3136)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5476, file: !5477, line: 199, baseType: !286, size: 64, offset: 3200)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5476, file: !5477, line: 200, baseType: !286, size: 64, offset: 3264)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5476, file: !5477, line: 203, baseType: !286, size: 64, offset: 3328)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5476, file: !5477, line: 204, baseType: !286, size: 64, offset: 3392)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5350, file: !5351, line: 222, baseType: !7, size: 32, offset: 7936)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5350, file: !5351, line: 223, baseType: !5538, size: 64, offset: 8000)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5351, line: 223, flags: DIFlagFwdDecl)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5350, file: !5351, line: 230, baseType: !832, size: 8, offset: 8064)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5350, file: !5351, line: 231, baseType: !878, size: 16, offset: 8080)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5350, file: !5351, line: 232, baseType: !878, size: 16, offset: 8096)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5350, file: !5351, line: 234, baseType: !619, size: 64, offset: 8128)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5350, file: !5351, line: 237, baseType: !675, size: 256, offset: 8192)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5350, file: !5351, line: 243, baseType: !850, size: 320, offset: 8448)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !307, file: !308, line: 1111, baseType: !5547, size: 64, offset: 15424)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5351, line: 20, size: 16640, elements: !5549)
!5549 = !{!5550, !5551, !5552, !5553}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5548, file: !5351, line: 21, baseType: !59, size: 32)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5548, file: !5351, line: 22, baseType: !321, size: 32, offset: 32)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5548, file: !5351, line: 23, baseType: !54, size: 192, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5548, file: !5351, line: 24, baseType: !5554, size: 16384, offset: 256)
!5554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5555, size: 16384, elements: !1490)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5362, line: 51, size: 256, elements: !5556)
!5556 = !{!5557}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5555, file: !5362, line: 52, baseType: !5558, size: 256)
!5558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5362, line: 37, size: 256, elements: !5559)
!5559 = !{!5560, !5567, !5568, !5572}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5558, file: !5362, line: 39, baseType: !5561, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5562, line: 83, baseType: !5563)
!5562 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5562, line: 82, baseType: !5565)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{null, !22}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5558, file: !5362, line: 40, baseType: !39, size: 64, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5558, file: !5362, line: 46, baseType: !5569, size: 64, offset: 128)
!5569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5562, line: 86, baseType: !5570)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5562, line: 85, baseType: !3220)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5558, file: !5362, line: 48, baseType: !5366, size: 64, offset: 192)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !307, file: !308, line: 1112, baseType: !5366, size: 64, offset: 15488)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !307, file: !308, line: 1113, baseType: !5366, size: 64, offset: 15552)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !307, file: !308, line: 1115, baseType: !5366, size: 64, offset: 15616)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !307, file: !308, line: 1116, baseType: !5361, size: 192, offset: 15680)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !307, file: !308, line: 1117, baseType: !39, size: 64, offset: 15872)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !307, file: !308, line: 1118, baseType: !35, size: 64, offset: 15936)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !307, file: !308, line: 1119, baseType: !7, size: 32, offset: 16000)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !307, file: !308, line: 1121, baseType: !658, size: 64, offset: 16064)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !307, file: !308, line: 1125, baseType: !5582, size: 64, offset: 16128)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !308, line: 43, flags: DIFlagFwdDecl)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !307, file: !308, line: 1127, baseType: !805, size: 32, offset: 16192)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !307, file: !308, line: 1128, baseType: !7, size: 32, offset: 16224)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !307, file: !308, line: 1130, baseType: !5587, size: 128, offset: 16256)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5588, line: 37, size: 128, elements: !5589)
!5588 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5589 = !{!5590, !5591, !5592}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5587, file: !5588, line: 38, baseType: !22, size: 32)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5587, file: !5588, line: 39, baseType: !49, size: 32, offset: 32)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5587, file: !5588, line: 40, baseType: !5593, size: 64, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5588, line: 24, flags: DIFlagFwdDecl)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !307, file: !308, line: 1131, baseType: !5596, size: 256, offset: 16384)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5597, line: 12, size: 256, elements: !5598)
!5597 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5598 = !{!5599, !5600, !5601, !5602}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5596, file: !5597, line: 13, baseType: !918, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5596, file: !5597, line: 14, baseType: !39, size: 64, offset: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5596, file: !5597, line: 15, baseType: !39, size: 64, offset: 128)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5596, file: !5597, line: 16, baseType: !832, size: 8, offset: 192)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !307, file: !308, line: 1134, baseType: !285, size: 64, offset: 16640)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !307, file: !308, line: 1135, baseType: !285, size: 64, offset: 16704)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !307, file: !308, line: 1138, baseType: !59, size: 32, offset: 16768)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !307, file: !308, line: 1141, baseType: !462, size: 32, offset: 16800)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !307, file: !308, line: 1143, baseType: !5608, size: 64, offset: 16832)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !308, line: 735, size: 64, elements: !5609)
!5609 = !{!5610}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5608, file: !308, line: 736, baseType: !5611, size: 64)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !307, file: !308, line: 1147, baseType: !502, size: 128, offset: 16896)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !307, file: !308, line: 1149, baseType: !306, size: 64, offset: 17024)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !307, file: !308, line: 1151, baseType: !5615, size: 64, offset: 17088)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !308, line: 1151, flags: DIFlagFwdDecl)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !307, file: !308, line: 1188, baseType: !20, size: 64, offset: 17152)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !307, file: !308, line: 1191, baseType: !5619, size: 64, offset: 17216)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !308, line: 44, flags: DIFlagFwdDecl)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !307, file: !308, line: 1194, baseType: !5622, size: 64, offset: 17280)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !308, line: 45, flags: DIFlagFwdDecl)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !307, file: !308, line: 1197, baseType: !5625, size: 64, offset: 17344)
!5625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5626, size: 64)
!5626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2143, line: 155, size: 64, elements: !5627)
!5627 = !{!5628}
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5626, file: !2143, line: 157, baseType: !39, size: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !307, file: !308, line: 1199, baseType: !5630, size: 64, offset: 17408)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2194, line: 99, size: 128, elements: !5632)
!5632 = !{!5633, !5634, !5635}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5631, file: !2194, line: 100, baseType: !668, size: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5631, file: !2194, line: 101, baseType: !49, size: 32, offset: 64)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5631, file: !2194, line: 103, baseType: !26, size: 16, offset: 96)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !307, file: !308, line: 1202, baseType: !5637, size: 64, offset: 17472)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !308, line: 48, flags: DIFlagFwdDecl)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !307, file: !308, line: 1205, baseType: !39, size: 64, offset: 17536)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !307, file: !308, line: 1206, baseType: !5641, size: 64, offset: 17600)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5362, line: 14, baseType: !5643)
!5643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5362, line: 12, size: 384, elements: !5644)
!5644 = !{!5645}
!5645 = !DIDerivedType(tag: DW_TAG_member, scope: !5643, file: !5362, line: 13, baseType: !5646, size: 384)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5643, file: !5362, line: 13, size: 384, elements: !5647)
!5647 = !{!5648, !5649, !5650, !5651}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5646, file: !5362, line: 13, baseType: !22, size: 32)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5646, file: !5362, line: 13, baseType: !22, size: 32, offset: 32)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5646, file: !5362, line: 13, baseType: !22, size: 32, offset: 64)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5646, file: !5362, line: 13, baseType: !5652, size: 256, offset: 128)
!5652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5653, line: 37, size: 256, elements: !5654)
!5653 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5654 = !{!5655, !5660, !5673, !5679, !5688, !5715, !5720}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5652, file: !5653, line: 42, baseType: !5656, size: 64)
!5656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 39, size: 64, elements: !5657)
!5657 = !{!5658, !5659}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5656, file: !5653, line: 40, baseType: !5239, size: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5656, file: !5653, line: 41, baseType: !811, size: 32, offset: 32)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5652, file: !5653, line: 50, baseType: !5661, size: 192)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 45, size: 192, elements: !5662)
!5662 = !{!5663, !5665, !5666, !5672}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5661, file: !5653, line: 46, baseType: !5664, size: 32)
!5664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !37, line: 95, baseType: !22)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5661, file: !5653, line: 47, baseType: !22, size: 32, offset: 32)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5661, file: !5653, line: 48, baseType: !5667, size: 64, offset: 64)
!5667 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5653, line: 11, baseType: !5668)
!5668 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5653, line: 8, size: 64, elements: !5669)
!5669 = !{!5670, !5671}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5668, file: !5653, line: 9, baseType: !22, size: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5668, file: !5653, line: 10, baseType: !20, size: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5661, file: !5653, line: 49, baseType: !22, size: 32, offset: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5652, file: !5653, line: 57, baseType: !5674, size: 128)
!5674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 53, size: 128, elements: !5675)
!5675 = !{!5676, !5677, !5678}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5674, file: !5653, line: 54, baseType: !5239, size: 32)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5674, file: !5653, line: 55, baseType: !811, size: 32, offset: 32)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5674, file: !5653, line: 56, baseType: !5667, size: 64, offset: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5652, file: !5653, line: 66, baseType: !5680, size: 256)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 60, size: 256, elements: !5681)
!5681 = !{!5682, !5683, !5684, !5685, !5687}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5680, file: !5653, line: 61, baseType: !5239, size: 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5680, file: !5653, line: 62, baseType: !811, size: 32, offset: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5680, file: !5653, line: 63, baseType: !22, size: 32, offset: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5680, file: !5653, line: 64, baseType: !5686, size: 64, offset: 128)
!5686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !37, line: 94, baseType: !1354)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5680, file: !5653, line: 65, baseType: !5686, size: 64, offset: 192)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5652, file: !5653, line: 105, baseType: !5689, size: 256)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 69, size: 256, elements: !5690)
!5690 = !{!5691, !5692}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5689, file: !5653, line: 70, baseType: !20, size: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, scope: !5689, file: !5653, line: 79, baseType: !5693, size: 192, offset: 64)
!5693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5689, file: !5653, line: 79, size: 192, elements: !5694)
!5694 = !{!5695, !5696, !5697, !5704, !5709}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5693, file: !5653, line: 81, baseType: !22, size: 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5693, file: !5653, line: 86, baseType: !878, size: 16)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5693, file: !5653, line: 92, baseType: !5698, size: 192)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5693, file: !5653, line: 88, size: 192, elements: !5699)
!5699 = !{!5700, !5702, !5703}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5698, file: !5653, line: 89, baseType: !5701, size: 64)
!5701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !481)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5698, file: !5653, line: 90, baseType: !20, size: 64, offset: 64)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5698, file: !5653, line: 91, baseType: !20, size: 64, offset: 128)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5693, file: !5653, line: 97, baseType: !5705, size: 96)
!5705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5693, file: !5653, line: 94, size: 96, elements: !5706)
!5706 = !{!5707, !5708}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5705, file: !5653, line: 95, baseType: !5701, size: 64)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5705, file: !5653, line: 96, baseType: !302, size: 32, offset: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5693, file: !5653, line: 103, baseType: !5710, size: 128)
!5710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5693, file: !5653, line: 99, size: 128, elements: !5711)
!5711 = !{!5712, !5713, !5714}
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5710, file: !5653, line: 100, baseType: !39, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5710, file: !5653, line: 101, baseType: !302, size: 32, offset: 64)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5710, file: !5653, line: 102, baseType: !302, size: 32, offset: 96)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5652, file: !5653, line: 111, baseType: !5716, size: 128)
!5716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 108, size: 128, elements: !5717)
!5717 = !{!5718, !5719}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5716, file: !5653, line: 109, baseType: !1055, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5716, file: !5653, line: 110, baseType: !22, size: 32, offset: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5652, file: !5653, line: 118, baseType: !5721, size: 128)
!5721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5653, line: 114, size: 128, elements: !5722)
!5722 = !{!5723, !5724, !5725}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5721, file: !5653, line: 115, baseType: !20, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5721, file: !5653, line: 116, baseType: !22, size: 32, offset: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5721, file: !5653, line: 117, baseType: !7, size: 32, offset: 96)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !307, file: !308, line: 1208, baseType: !5446, size: 448, offset: 17664)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !307, file: !308, line: 1215, baseType: !285, size: 64, offset: 18112)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !307, file: !308, line: 1217, baseType: !285, size: 64, offset: 18176)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !307, file: !308, line: 1219, baseType: !285, size: 64, offset: 18240)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !307, file: !308, line: 1223, baseType: !1782, size: 64, offset: 18304)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !307, file: !308, line: 1225, baseType: !1171, size: 32, offset: 18368)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !307, file: !308, line: 1226, baseType: !22, size: 32, offset: 18400)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !307, file: !308, line: 1227, baseType: !22, size: 32, offset: 18432)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !307, file: !308, line: 1231, baseType: !4120, size: 64, offset: 18496)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !307, file: !308, line: 1233, baseType: !97, size: 128, offset: 18560)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !307, file: !308, line: 1240, baseType: !5737, size: 64, offset: 18688)
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !308, line: 62, flags: DIFlagFwdDecl)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !307, file: !308, line: 1242, baseType: !5740, size: 64, offset: 18752)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !5742, line: 392, size: 96, elements: !5743)
!5742 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!5743 = !{!5744, !5749, !5751}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5741, file: !5742, line: 393, baseType: !5745, size: 32)
!5745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !5742, line: 388, size: 32, elements: !5746)
!5746 = !{!5747}
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5745, file: !5742, line: 389, baseType: !5748, size: 32)
!5748 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !289, line: 46, baseType: !301)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !5741, file: !5742, line: 394, baseType: !5750, size: 32, offset: 32)
!5750 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !289, line: 42, baseType: !290)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !5741, file: !5742, line: 395, baseType: !5748, size: 32, offset: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !307, file: !308, line: 1244, baseType: !97, size: 128, offset: 18816)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !307, file: !308, line: 1245, baseType: !5754, size: 64, offset: 18944)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !308, line: 51, flags: DIFlagFwdDecl)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !307, file: !308, line: 1246, baseType: !675, size: 256, offset: 19008)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !307, file: !308, line: 1247, baseType: !7, size: 32, offset: 19264)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !307, file: !308, line: 1250, baseType: !3370, size: 64, offset: 19328)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !307, file: !308, line: 1251, baseType: !675, size: 256, offset: 19392)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !307, file: !308, line: 1252, baseType: !97, size: 128, offset: 19648)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !307, file: !308, line: 1259, baseType: !1774, size: 64, offset: 19776)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !307, file: !308, line: 1260, baseType: !878, size: 16, offset: 19840)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !307, file: !308, line: 1261, baseType: !878, size: 16, offset: 19856)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !307, file: !308, line: 1314, baseType: !5765, size: 64, offset: 19904)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5767, line: 62, size: 256, align: 256, elements: !5768)
!5767 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5768 = !{!5769, !5770, !5771, !5772, !5773, !5774, !5775}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5766, file: !5767, line: 75, baseType: !302, size: 32)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5766, file: !5767, line: 90, baseType: !302, size: 32, offset: 32)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5766, file: !5767, line: 112, baseType: !286, size: 64, offset: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5766, file: !5767, line: 132, baseType: !302, size: 32, offset: 128)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5766, file: !5767, line: 140, baseType: !302, size: 32, offset: 160)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5766, file: !5767, line: 149, baseType: !302, size: 32, offset: 192)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5766, file: !5767, line: 154, baseType: !5776, offset: 224)
!5776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !1062)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !307, file: !308, line: 1315, baseType: !301, size: 32, offset: 19968)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !307, file: !308, line: 1316, baseType: !301, size: 32, offset: 20000)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !307, file: !308, line: 1321, baseType: !39, size: 64, offset: 20032)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !307, file: !308, line: 1325, baseType: !22, size: 32, offset: 20096)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !307, file: !308, line: 1326, baseType: !22, size: 32, offset: 20128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !307, file: !308, line: 1327, baseType: !22, size: 32, offset: 20160)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !307, file: !308, line: 1328, baseType: !22, size: 32, offset: 20192)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !307, file: !308, line: 1329, baseType: !655, size: 128, align: 64, offset: 20224)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !307, file: !308, line: 1332, baseType: !5786, size: 128, offset: 20352)
!5786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5787, line: 51, size: 128, elements: !5788)
!5787 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5788 = !{!5789, !5794, !5795}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5786, file: !5787, line: 60, baseType: !5790, size: 64)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5791, line: 7, size: 64, elements: !5792)
!5791 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5792 = !{!5793}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5790, file: !5791, line: 12, baseType: !567, size: 64)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5786, file: !5787, line: 63, baseType: !832, size: 8, offset: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5786, file: !5787, line: 70, baseType: !832, size: 8, offset: 72)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !307, file: !308, line: 1335, baseType: !4928, size: 64, offset: 20480)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !307, file: !308, line: 1337, baseType: !5798, size: 128, offset: 20544)
!5798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5787, line: 39, size: 128, elements: !5799)
!5799 = !{!5800, !5801, !5802}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5798, file: !5787, line: 40, baseType: !1571, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5798, file: !5787, line: 42, baseType: !302, size: 32, offset: 64)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5798, file: !5787, line: 43, baseType: !302, size: 32, offset: 96)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !307, file: !308, line: 1340, baseType: !5804, size: 64, offset: 20672)
!5804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5805, size: 64)
!5805 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !308, line: 69, flags: DIFlagFwdDecl)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !307, file: !308, line: 1351, baseType: !22, size: 32, offset: 20736)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !307, file: !308, line: 1352, baseType: !22, size: 32, offset: 20768)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !307, file: !308, line: 1354, baseType: !39, size: 64, offset: 20800)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !307, file: !308, line: 1364, baseType: !285, size: 64, offset: 20864)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !307, file: !308, line: 1365, baseType: !285, size: 64, offset: 20928)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !307, file: !308, line: 1412, baseType: !39, size: 64, offset: 20992)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !307, file: !308, line: 1453, baseType: !2189, size: 64, offset: 21056)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !307, file: !308, line: 1457, baseType: !5814, size: 64, offset: 21120)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !273, line: 61, size: 576, elements: !5816)
!5816 = !{!5817, !5818, !5837, !5840, !5841, !5874, !5884}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5815, file: !273, line: 62, baseType: !272, size: 32)
!5818 = !DIDerivedType(tag: DW_TAG_member, scope: !5815, file: !273, line: 64, baseType: !5819, size: 192, offset: 64)
!5819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5815, file: !273, line: 64, size: 192, elements: !5820)
!5820 = !{!5821, !5832}
!5821 = !DIDerivedType(tag: DW_TAG_member, scope: !5819, file: !273, line: 65, baseType: !5822, size: 192)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5819, file: !273, line: 65, size: 192, elements: !5823)
!5823 = !{!5824, !5831}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5822, file: !273, line: 66, baseType: !5825, size: 128)
!5825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5826, line: 50, size: 128, elements: !5827)
!5826 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5827 = !{!5828, !5829, !5830}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5825, file: !5826, line: 52, baseType: !39, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5825, file: !5826, line: 54, baseType: !7, size: 32, offset: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5825, file: !5826, line: 55, baseType: !7, size: 32, offset: 96)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5822, file: !273, line: 67, baseType: !39, size: 64, offset: 128)
!5832 = !DIDerivedType(tag: DW_TAG_member, scope: !5819, file: !273, line: 70, baseType: !5833, size: 192)
!5833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5819, file: !273, line: 70, size: 192, elements: !5834)
!5834 = !{!5835, !5836}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5833, file: !273, line: 71, baseType: !655, size: 128, align: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5833, file: !273, line: 72, baseType: !39, size: 64, offset: 128)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5815, file: !273, line: 76, baseType: !5838, size: 64, offset: 256)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !273, line: 76, flags: DIFlagFwdDecl)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5815, file: !273, line: 77, baseType: !39, size: 64, offset: 320)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5815, file: !273, line: 79, baseType: !5842, size: 64, offset: 384)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5826, line: 25, size: 256, elements: !5844)
!5844 = !{!5845, !5851, !5855}
!5845 = !DIDerivedType(tag: DW_TAG_member, scope: !5843, file: !5826, line: 26, baseType: !5846, size: 128)
!5846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5843, file: !5826, line: 26, size: 128, elements: !5847)
!5847 = !{!5848, !5850}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5846, file: !5826, line: 27, baseType: !5849, size: 128)
!5849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 128, elements: !4691)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5846, file: !5826, line: 28, baseType: !5849, size: 128)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5843, file: !5826, line: 31, baseType: !5852, size: 64, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5854)
!5854 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5826, line: 23, flags: DIFlagFwdDecl)
!5855 = !DIDerivedType(tag: DW_TAG_member, scope: !5843, file: !5826, line: 33, baseType: !5856, size: 64, offset: 192)
!5856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5843, file: !5826, line: 33, size: 64, elements: !5857)
!5857 = !{!5858, !5864, !5869}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5856, file: !5826, line: 38, baseType: !5859, size: 64)
!5859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5856, file: !5826, line: 34, size: 64, elements: !5860)
!5860 = !{!5861, !5862, !5863}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5859, file: !5826, line: 35, baseType: !290, size: 32)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5859, file: !5826, line: 36, baseType: !83, size: 8, offset: 32)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5859, file: !5826, line: 37, baseType: !83, size: 8, offset: 40)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5856, file: !5826, line: 42, baseType: !5865, size: 16)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5856, file: !5826, line: 39, size: 16, elements: !5866)
!5866 = !{!5867, !5868}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5865, file: !5826, line: 40, baseType: !83, size: 8)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5865, file: !5826, line: 41, baseType: !83, size: 8, offset: 8)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5856, file: !5826, line: 46, baseType: !5870, size: 16)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5856, file: !5826, line: 43, size: 16, elements: !5871)
!5871 = !{!5872, !5873}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5870, file: !5826, line: 44, baseType: !83, size: 8)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5870, file: !5826, line: 45, baseType: !83, size: 8, offset: 8)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5815, file: !273, line: 81, baseType: !5875, size: 64, offset: 448)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !273, line: 85, size: 384, elements: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882, !5883}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5876, file: !273, line: 86, baseType: !5838, size: 64)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5876, file: !273, line: 87, baseType: !39, size: 64, offset: 64)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5876, file: !273, line: 88, baseType: !39, size: 64, offset: 128)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5876, file: !273, line: 89, baseType: !39, size: 64, offset: 192)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5876, file: !273, line: 90, baseType: !832, size: 8, offset: 256)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5876, file: !273, line: 92, baseType: !5875, size: 64, offset: 320)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5815, file: !273, line: 82, baseType: !7, size: 32, offset: 512)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !307, file: !308, line: 1463, baseType: !5886, offset: 21184)
!5886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !308, line: 739, elements: !640)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !307, file: !308, line: 1470, baseType: !655, size: 128, align: 64, offset: 21184)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !307, file: !308, line: 1471, baseType: !321, size: 32, offset: 21312)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !307, file: !308, line: 1472, baseType: !22, size: 32, offset: 21344)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !307, file: !308, line: 1474, baseType: !306, size: 64, offset: 21376)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !307, file: !308, line: 1475, baseType: !2398, size: 320, offset: 21440)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !307, file: !308, line: 1478, baseType: !5893, size: 64, offset: 21760)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !308, line: 1478, flags: DIFlagFwdDecl)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !307, file: !308, line: 1482, baseType: !321, size: 32, offset: 21824)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !307, file: !308, line: 1489, baseType: !20, size: 64, offset: 21888)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !307, file: !308, line: 1504, baseType: !20, size: 64, offset: 21952)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !307, file: !308, line: 1505, baseType: !286, size: 64, offset: 22016)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !307, file: !308, line: 1506, baseType: !285, size: 64, offset: 22080)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !307, file: !308, line: 1507, baseType: !286, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !307, file: !308, line: 1508, baseType: !286, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !307, file: !308, line: 1509, baseType: !286, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !307, file: !308, line: 1510, baseType: !655, size: 128, align: 64, offset: 22208)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !307, file: !308, line: 1511, baseType: !22, size: 32, offset: 22336)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !307, file: !308, line: 1515, baseType: !5906, size: 64, offset: 22400)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !335, line: 56, size: 64, elements: !5907)
!5907 = !{!5908}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5906, file: !335, line: 57, baseType: !338, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !307, file: !308, line: 1518, baseType: !5906, size: 64, offset: 22464)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !307, file: !308, line: 1528, baseType: !655, size: 128, align: 64, offset: 22528)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !307, file: !308, line: 1552, baseType: !5912, size: 35328, offset: 23040)
!5912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5913, line: 430, size: 35328, elements: !5914)
!5913 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5914 = !{!5915, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5942, !5943, !5944, !5945, !5946, !5947, !5950, !5951, !5952, !5953}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5912, file: !5913, line: 432, baseType: !5916, size: 192)
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5917, size: 192, elements: !711)
!5917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5918, line: 16, size: 64, elements: !5919)
!5918 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5919 = !{!5920, !5921, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5931, !5932}
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5917, file: !5918, line: 17, baseType: !93, size: 16)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5917, file: !5918, line: 18, baseType: !93, size: 16, offset: 16)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5917, file: !5918, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5917, file: !5918, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5917, file: !5918, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5917, file: !5918, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5917, file: !5918, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5917, file: !5918, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5917, file: !5918, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5917, file: !5918, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5917, file: !5918, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5917, file: !5918, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5917, file: !5918, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5912, file: !5913, line: 436, baseType: !39, size: 64, offset: 192)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5912, file: !5913, line: 440, baseType: !26, size: 16, offset: 256)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5912, file: !5913, line: 441, baseType: !26, size: 16, offset: 272)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5912, file: !5913, line: 442, baseType: !26, size: 16, offset: 288)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5912, file: !5913, line: 443, baseType: !26, size: 16, offset: 304)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5912, file: !5913, line: 447, baseType: !39, size: 64, offset: 320)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5912, file: !5913, line: 448, baseType: !39, size: 64, offset: 384)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5912, file: !5913, line: 459, baseType: !5941, size: 256, offset: 448)
!5941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 256, elements: !732)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5912, file: !5913, line: 461, baseType: !39, size: 64, offset: 704)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5912, file: !5913, line: 463, baseType: !39, size: 64, offset: 768)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5912, file: !5913, line: 465, baseType: !39, size: 64, offset: 832)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5912, file: !5913, line: 466, baseType: !39, size: 64, offset: 896)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5912, file: !5913, line: 467, baseType: !39, size: 64, offset: 960)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5912, file: !5913, line: 473, baseType: !5948, size: 64, offset: 1024)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5913, line: 10, flags: DIFlagFwdDecl)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5912, file: !5913, line: 480, baseType: !39, size: 64, offset: 1088)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5912, file: !5913, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5912, file: !5913, line: 491, baseType: !301, size: 32, offset: 1184)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5912, file: !5913, line: 501, baseType: !5954, size: 33792, offset: 1536)
!5954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5955, line: 448, size: 33792, elements: !5956)
!5955 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5956 = !{!5957, !5958, !5959, !6067, !6068, !6074, !6075}
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5954, file: !5955, line: 461, baseType: !7, size: 32)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5954, file: !5955, line: 468, baseType: !39, size: 64, offset: 64)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5954, file: !5955, line: 476, baseType: !5960, size: 64, offset: 128)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5955, line: 356, size: 33280, align: 512, elements: !5962)
!5962 = !{!5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5961, file: !5955, line: 358, baseType: !7, size: 32)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5961, file: !5955, line: 361, baseType: !7, size: 32, offset: 32)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5961, file: !5955, line: 364, baseType: !285, size: 64, offset: 64)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5961, file: !5955, line: 367, baseType: !285, size: 64, offset: 128)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5961, file: !5955, line: 370, baseType: !285, size: 64, offset: 192)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5961, file: !5955, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5961, file: !5955, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5961, file: !5955, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5961, file: !5955, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5961, file: !5955, line: 397, baseType: !5973, size: 32768, offset: 512)
!5973 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5955, line: 348, size: 32768, elements: !5974)
!5974 = !{!5975, !5990, !6027, !6052, !6065}
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5973, file: !5955, line: 349, baseType: !5976, size: 896)
!5976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5955, line: 12, size: 896, elements: !5977)
!5977 = !{!5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5989}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5976, file: !5955, line: 13, baseType: !301, size: 32)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5976, file: !5955, line: 14, baseType: !301, size: 32, offset: 32)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5976, file: !5955, line: 15, baseType: !301, size: 32, offset: 64)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5976, file: !5955, line: 16, baseType: !301, size: 32, offset: 96)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5976, file: !5955, line: 17, baseType: !301, size: 32, offset: 128)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5976, file: !5955, line: 18, baseType: !301, size: 32, offset: 160)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5976, file: !5955, line: 19, baseType: !301, size: 32, offset: 192)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5976, file: !5955, line: 22, baseType: !5986, size: 640, offset: 224)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 640, elements: !5987)
!5987 = !{!5988}
!5988 = !DISubrange(count: 20)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5976, file: !5955, line: 25, baseType: !301, size: 32, offset: 864)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5973, file: !5955, line: 350, baseType: !5991, size: 4096, align: 128)
!5991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5955, line: 34, size: 4096, align: 128, elements: !5992)
!5992 = !{!5993, !5994, !5995, !5996, !5997, !6012, !6013, !6014, !6016, !6018, !6022}
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5991, file: !5955, line: 35, baseType: !93, size: 16)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5991, file: !5955, line: 36, baseType: !93, size: 16, offset: 16)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5991, file: !5955, line: 37, baseType: !93, size: 16, offset: 32)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5991, file: !5955, line: 38, baseType: !93, size: 16, offset: 48)
!5997 = !DIDerivedType(tag: DW_TAG_member, scope: !5991, file: !5955, line: 39, baseType: !5998, size: 128, offset: 64)
!5998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5991, file: !5955, line: 39, size: 128, elements: !5999)
!5999 = !{!6000, !6005}
!6000 = !DIDerivedType(tag: DW_TAG_member, scope: !5998, file: !5955, line: 40, baseType: !6001, size: 128)
!6001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5998, file: !5955, line: 40, size: 128, elements: !6002)
!6002 = !{!6003, !6004}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !6001, file: !5955, line: 41, baseType: !285, size: 64)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !6001, file: !5955, line: 42, baseType: !285, size: 64, offset: 64)
!6005 = !DIDerivedType(tag: DW_TAG_member, scope: !5998, file: !5955, line: 44, baseType: !6006, size: 128)
!6006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5998, file: !5955, line: 44, size: 128, elements: !6007)
!6007 = !{!6008, !6009, !6010, !6011}
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6006, file: !5955, line: 45, baseType: !301, size: 32)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6006, file: !5955, line: 46, baseType: !301, size: 32, offset: 32)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6006, file: !5955, line: 47, baseType: !301, size: 32, offset: 64)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6006, file: !5955, line: 48, baseType: !301, size: 32, offset: 96)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5991, file: !5955, line: 51, baseType: !301, size: 32, offset: 192)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5991, file: !5955, line: 52, baseType: !301, size: 32, offset: 224)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5991, file: !5955, line: 55, baseType: !6015, size: 1024, offset: 256)
!6015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 1024, elements: !4682)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5991, file: !5955, line: 58, baseType: !6017, size: 2048, offset: 1280)
!6017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 2048, elements: !1490)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5991, file: !5955, line: 60, baseType: !6019, size: 384, offset: 3328)
!6019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 384, elements: !6020)
!6020 = !{!6021}
!6021 = !DISubrange(count: 12)
!6022 = !DIDerivedType(tag: DW_TAG_member, scope: !5991, file: !5955, line: 62, baseType: !6023, size: 384, offset: 3712)
!6023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5991, file: !5955, line: 62, size: 384, elements: !6024)
!6024 = !{!6025, !6026}
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !6023, file: !5955, line: 63, baseType: !6019, size: 384)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !6023, file: !5955, line: 64, baseType: !6019, size: 384)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5973, file: !5955, line: 351, baseType: !6028, size: 1088)
!6028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5955, line: 79, size: 1088, elements: !6029)
!6029 = !{!6030, !6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6051}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !6028, file: !5955, line: 80, baseType: !301, size: 32)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !6028, file: !5955, line: 81, baseType: !301, size: 32, offset: 32)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !6028, file: !5955, line: 82, baseType: !301, size: 32, offset: 64)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !6028, file: !5955, line: 83, baseType: !301, size: 32, offset: 96)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !6028, file: !5955, line: 84, baseType: !301, size: 32, offset: 128)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !6028, file: !5955, line: 85, baseType: !301, size: 32, offset: 160)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !6028, file: !5955, line: 86, baseType: !301, size: 32, offset: 192)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !6028, file: !5955, line: 88, baseType: !5986, size: 640, offset: 224)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !6028, file: !5955, line: 89, baseType: !83, size: 8, offset: 864)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !6028, file: !5955, line: 90, baseType: !83, size: 8, offset: 872)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !6028, file: !5955, line: 91, baseType: !83, size: 8, offset: 880)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !6028, file: !5955, line: 92, baseType: !83, size: 8, offset: 888)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !6028, file: !5955, line: 93, baseType: !83, size: 8, offset: 896)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !6028, file: !5955, line: 94, baseType: !83, size: 8, offset: 904)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6028, file: !5955, line: 95, baseType: !6045, size: 64, offset: 960)
!6045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !6047, line: 11, size: 128, elements: !6048)
!6047 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!6048 = !{!6049, !6050}
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !6046, file: !6047, line: 12, baseType: !1055, size: 64)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !6046, file: !6047, line: 13, baseType: !3894, size: 64, offset: 64)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !6028, file: !5955, line: 96, baseType: !301, size: 32, offset: 1024)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5973, file: !5955, line: 352, baseType: !6053, size: 4608, align: 512)
!6053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5955, line: 333, size: 4608, align: 512, elements: !6054)
!6054 = !{!6055, !6056, !6063}
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !6053, file: !5955, line: 334, baseType: !5991, size: 4096, align: 128)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !6053, file: !5955, line: 335, baseType: !6057, size: 512, offset: 4096)
!6057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5955, line: 312, size: 512, elements: !6058)
!6058 = !{!6059, !6060, !6061}
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !6057, file: !5955, line: 313, baseType: !285, size: 64)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !6057, file: !5955, line: 314, baseType: !285, size: 64, offset: 64)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6057, file: !5955, line: 315, baseType: !6062, size: 384, offset: 128)
!6062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 384, elements: !896)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !6053, file: !5955, line: 336, baseType: !6064, offset: 4608)
!6064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1062)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5973, file: !5955, line: 353, baseType: !6066, size: 32768)
!6066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32768, elements: !3275)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5954, file: !5955, line: 484, baseType: !5960, size: 64, offset: 192)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5954, file: !5955, line: 491, baseType: !6069, size: 128, offset: 256)
!6069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5955, line: 404, size: 128, elements: !6070)
!6070 = !{!6071, !6072, !6073}
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !6069, file: !5955, line: 424, baseType: !285, size: 64)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !6069, file: !5955, line: 432, baseType: !7, size: 32, offset: 64)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !6069, file: !5955, line: 440, baseType: !7, size: 32, offset: 96)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5954, file: !5955, line: 498, baseType: !6069, size: 128, offset: 384)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5954, file: !5955, line: 508, baseType: !5961, size: 33280, align: 512, offset: 512)
!6076 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_pid_t", file: !289, line: 33, baseType: !290)
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!6078 = !{!0, !6079}
!6079 = !DIGlobalVariableExpression(var: !6080, expr: !DIExpression())
!6080 = distinct !DIGlobalVariable(scope: null, file: !6081, line: 249, type: !6082, isLocal: true, isDefinition: true)
!6081 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!6082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !6083)
!6083 = !{!6084}
!6084 = !DISubrange(count: 28)
!6085 = !{!"rsp"}
!6086 = !{i32 7, !"Dwarf Version", i32 5}
!6087 = !{i32 2, !"Debug Info Version", i32 3}
!6088 = !{i32 1, !"wchar_size", i32 2}
!6089 = !{i32 8, !"cf-protection-branch", i32 1}
!6090 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6091 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6092 = !{i32 1, !"Code Model", i32 2}
!6093 = !{i32 1, !"override-stack-alignment", i32 8}
!6094 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6095 = distinct !DISubprogram(name: "__ia32_compat_sys_sigprocmask", scope: !3, file: !3, line: 40, type: !6096, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6100)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{!1055, !6098}
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!6100 = !{!6101}
!6101 = !DILocalVariable(name: "regs", arg: 1, scope: !6095, file: !3, line: 40, type: !6098)
!6102 = !DILocation(line: 40, column: 1, scope: !6095)
!6103 = distinct !DISubprogram(name: "__se_compat_sys_sigprocmask", scope: !3, file: !3, line: 40, type: !6104, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!1055, !1055, !1055, !1055}
!6106 = !{!6107, !6108, !6109}
!6107 = !DILocalVariable(name: "how", arg: 1, scope: !6103, file: !3, line: 40, type: !1055)
!6108 = !DILocalVariable(name: "nset", arg: 2, scope: !6103, file: !3, line: 40, type: !1055)
!6109 = !DILocalVariable(name: "oset", arg: 3, scope: !6103, file: !3, line: 40, type: !1055)
!6110 = !DILocation(line: 40, column: 1, scope: !6103)
!6111 = distinct !DISubprogram(name: "put_compat_rusage", scope: !3, file: !3, line: 83, type: !6112, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!22, !6114, !6138}
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6115, size: 64)
!6115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6116)
!6116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !5460, line: 24, size: 1152, elements: !6117)
!6117 = !{!6118, !6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137}
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !6116, file: !5460, line: 25, baseType: !6119, size: 128)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_timeval", file: !5208, line: 25, size: 128, elements: !6120)
!6120 = !{!6121, !6122}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6119, file: !5208, line: 26, baseType: !1354, size: 64)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6119, file: !5208, line: 27, baseType: !1354, size: 64, offset: 64)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !6116, file: !5460, line: 26, baseType: !6119, size: 128, offset: 128)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !6116, file: !5460, line: 27, baseType: !1354, size: 64, offset: 256)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !6116, file: !5460, line: 28, baseType: !1354, size: 64, offset: 320)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !6116, file: !5460, line: 29, baseType: !1354, size: 64, offset: 384)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !6116, file: !5460, line: 30, baseType: !1354, size: 64, offset: 448)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !6116, file: !5460, line: 31, baseType: !1354, size: 64, offset: 512)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !6116, file: !5460, line: 32, baseType: !1354, size: 64, offset: 576)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !6116, file: !5460, line: 33, baseType: !1354, size: 64, offset: 640)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !6116, file: !5460, line: 34, baseType: !1354, size: 64, offset: 704)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !6116, file: !5460, line: 35, baseType: !1354, size: 64, offset: 768)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !6116, file: !5460, line: 36, baseType: !1354, size: 64, offset: 832)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !6116, file: !5460, line: 37, baseType: !1354, size: 64, offset: 896)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !6116, file: !5460, line: 38, baseType: !1354, size: 64, offset: 960)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !6116, file: !5460, line: 39, baseType: !1354, size: 64, offset: 1024)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !6116, file: !5460, line: 40, baseType: !1354, size: 64, offset: 1088)
!6138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6139, size: 64)
!6139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_rusage", file: !5742, line: 291, size: 576, elements: !6140)
!6140 = !{!6141, !6146, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160}
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !6139, file: !5742, line: 292, baseType: !6142, size: 64)
!6142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timeval32", file: !5216, line: 12, size: 64, elements: !6143)
!6143 = !{!6144, !6145}
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6142, file: !5216, line: 13, baseType: !5219, size: 32)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6142, file: !5216, line: 14, baseType: !290, size: 32, offset: 32)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !6139, file: !5742, line: 293, baseType: !6142, size: 64, offset: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !6139, file: !5742, line: 294, baseType: !5750, size: 32, offset: 128)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !6139, file: !5742, line: 295, baseType: !5750, size: 32, offset: 160)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !6139, file: !5742, line: 296, baseType: !5750, size: 32, offset: 192)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !6139, file: !5742, line: 297, baseType: !5750, size: 32, offset: 224)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !6139, file: !5742, line: 298, baseType: !5750, size: 32, offset: 256)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !6139, file: !5742, line: 299, baseType: !5750, size: 32, offset: 288)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !6139, file: !5742, line: 300, baseType: !5750, size: 32, offset: 320)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !6139, file: !5742, line: 301, baseType: !5750, size: 32, offset: 352)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !6139, file: !5742, line: 302, baseType: !5750, size: 32, offset: 384)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !6139, file: !5742, line: 303, baseType: !5750, size: 32, offset: 416)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !6139, file: !5742, line: 304, baseType: !5750, size: 32, offset: 448)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !6139, file: !5742, line: 305, baseType: !5750, size: 32, offset: 480)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !6139, file: !5742, line: 306, baseType: !5750, size: 32, offset: 512)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !6139, file: !5742, line: 307, baseType: !5750, size: 32, offset: 544)
!6161 = !{!6162, !6163, !6164}
!6162 = !DILocalVariable(name: "r", arg: 1, scope: !6111, file: !3, line: 83, type: !6114)
!6163 = !DILocalVariable(name: "ru", arg: 2, scope: !6111, file: !3, line: 83, type: !6138)
!6164 = !DILocalVariable(name: "r32", scope: !6111, file: !3, line: 85, type: !6139)
!6165 = !DILocation(line: 83, column: 44, scope: !6111)
!6166 = !DILocation(line: 83, column: 76, scope: !6111)
!6167 = !DILocation(line: 85, column: 2, scope: !6111)
!6168 = !DILocation(line: 85, column: 23, scope: !6111)
!6169 = !DILocation(line: 86, column: 2, scope: !6111)
!6170 = !DILocation(line: 87, column: 24, scope: !6111)
!6171 = !DILocation(line: 87, column: 27, scope: !6111)
!6172 = !DILocation(line: 87, column: 36, scope: !6111)
!6173 = !DILocation(line: 87, column: 6, scope: !6111)
!6174 = !DILocation(line: 87, column: 15, scope: !6111)
!6175 = !DILocation(line: 87, column: 22, scope: !6111)
!6176 = !DILocation(line: 88, column: 25, scope: !6111)
!6177 = !DILocation(line: 88, column: 28, scope: !6111)
!6178 = !DILocation(line: 88, column: 37, scope: !6111)
!6179 = !DILocation(line: 88, column: 6, scope: !6111)
!6180 = !DILocation(line: 88, column: 15, scope: !6111)
!6181 = !DILocation(line: 88, column: 23, scope: !6111)
!6182 = !DILocation(line: 89, column: 24, scope: !6111)
!6183 = !DILocation(line: 89, column: 27, scope: !6111)
!6184 = !DILocation(line: 89, column: 36, scope: !6111)
!6185 = !DILocation(line: 89, column: 6, scope: !6111)
!6186 = !DILocation(line: 89, column: 15, scope: !6111)
!6187 = !DILocation(line: 89, column: 22, scope: !6111)
!6188 = !DILocation(line: 90, column: 25, scope: !6111)
!6189 = !DILocation(line: 90, column: 28, scope: !6111)
!6190 = !DILocation(line: 90, column: 37, scope: !6111)
!6191 = !DILocation(line: 90, column: 6, scope: !6111)
!6192 = !DILocation(line: 90, column: 15, scope: !6111)
!6193 = !DILocation(line: 90, column: 23, scope: !6111)
!6194 = !DILocation(line: 91, column: 18, scope: !6111)
!6195 = !DILocation(line: 91, column: 21, scope: !6111)
!6196 = !DILocation(line: 91, column: 6, scope: !6111)
!6197 = !DILocation(line: 91, column: 16, scope: !6111)
!6198 = !DILocation(line: 92, column: 17, scope: !6111)
!6199 = !DILocation(line: 92, column: 20, scope: !6111)
!6200 = !DILocation(line: 92, column: 6, scope: !6111)
!6201 = !DILocation(line: 92, column: 15, scope: !6111)
!6202 = !DILocation(line: 93, column: 17, scope: !6111)
!6203 = !DILocation(line: 93, column: 20, scope: !6111)
!6204 = !DILocation(line: 93, column: 6, scope: !6111)
!6205 = !DILocation(line: 93, column: 15, scope: !6111)
!6206 = !DILocation(line: 94, column: 17, scope: !6111)
!6207 = !DILocation(line: 94, column: 20, scope: !6111)
!6208 = !DILocation(line: 94, column: 6, scope: !6111)
!6209 = !DILocation(line: 94, column: 15, scope: !6111)
!6210 = !DILocation(line: 95, column: 18, scope: !6111)
!6211 = !DILocation(line: 95, column: 21, scope: !6111)
!6212 = !DILocation(line: 95, column: 6, scope: !6111)
!6213 = !DILocation(line: 95, column: 16, scope: !6111)
!6214 = !DILocation(line: 96, column: 18, scope: !6111)
!6215 = !DILocation(line: 96, column: 21, scope: !6111)
!6216 = !DILocation(line: 96, column: 6, scope: !6111)
!6217 = !DILocation(line: 96, column: 16, scope: !6111)
!6218 = !DILocation(line: 97, column: 17, scope: !6111)
!6219 = !DILocation(line: 97, column: 20, scope: !6111)
!6220 = !DILocation(line: 97, column: 6, scope: !6111)
!6221 = !DILocation(line: 97, column: 15, scope: !6111)
!6222 = !DILocation(line: 98, column: 19, scope: !6111)
!6223 = !DILocation(line: 98, column: 22, scope: !6111)
!6224 = !DILocation(line: 98, column: 6, scope: !6111)
!6225 = !DILocation(line: 98, column: 17, scope: !6111)
!6226 = !DILocation(line: 99, column: 19, scope: !6111)
!6227 = !DILocation(line: 99, column: 22, scope: !6111)
!6228 = !DILocation(line: 99, column: 6, scope: !6111)
!6229 = !DILocation(line: 99, column: 17, scope: !6111)
!6230 = !DILocation(line: 100, column: 18, scope: !6111)
!6231 = !DILocation(line: 100, column: 21, scope: !6111)
!6232 = !DILocation(line: 100, column: 6, scope: !6111)
!6233 = !DILocation(line: 100, column: 16, scope: !6111)
!6234 = !DILocation(line: 101, column: 18, scope: !6111)
!6235 = !DILocation(line: 101, column: 21, scope: !6111)
!6236 = !DILocation(line: 101, column: 6, scope: !6111)
!6237 = !DILocation(line: 101, column: 16, scope: !6111)
!6238 = !DILocation(line: 102, column: 20, scope: !6111)
!6239 = !DILocation(line: 102, column: 23, scope: !6111)
!6240 = !DILocation(line: 102, column: 6, scope: !6111)
!6241 = !DILocation(line: 102, column: 18, scope: !6111)
!6242 = !DILocation(line: 103, column: 17, scope: !6111)
!6243 = !DILocation(line: 103, column: 20, scope: !6111)
!6244 = !DILocation(line: 103, column: 6, scope: !6111)
!6245 = !DILocation(line: 103, column: 15, scope: !6111)
!6246 = !DILocation(line: 104, column: 18, scope: !6111)
!6247 = !DILocation(line: 104, column: 21, scope: !6111)
!6248 = !DILocation(line: 104, column: 6, scope: !6111)
!6249 = !DILocation(line: 104, column: 16, scope: !6111)
!6250 = !DILocation(line: 105, column: 19, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 105, column: 6)
!6252 = !DILocation(line: 105, column: 6, scope: !6251)
!6253 = !DILocation(line: 105, column: 6, scope: !6111)
!6254 = !DILocation(line: 106, column: 3, scope: !6251)
!6255 = !DILocation(line: 107, column: 2, scope: !6111)
!6256 = !DILocation(line: 108, column: 1, scope: !6111)
!6257 = distinct !DISubprogram(name: "copy_to_user", scope: !6258, file: !6258, line: 188, type: !6259, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6261)
!6258 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6259 = !DISubroutineType(types: !6260)
!6260 = !{!39, !20, !2569, !39}
!6261 = !{!6262, !6263, !6264}
!6262 = !DILocalVariable(name: "to", arg: 1, scope: !6257, file: !6258, line: 188, type: !20)
!6263 = !DILocalVariable(name: "from", arg: 2, scope: !6257, file: !6258, line: 188, type: !2569)
!6264 = !DILocalVariable(name: "n", arg: 3, scope: !6257, file: !6258, line: 188, type: !39)
!6265 = !DILocation(line: 188, column: 27, scope: !6257)
!6266 = !DILocation(line: 188, column: 43, scope: !6257)
!6267 = !DILocation(line: 188, column: 63, scope: !6257)
!6268 = !DILocation(line: 190, column: 22, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6257, file: !6258, line: 190, column: 6)
!6270 = !DILocation(line: 190, column: 28, scope: !6269)
!6271 = !DILocation(line: 190, column: 6, scope: !6269)
!6272 = !DILocation(line: 190, column: 6, scope: !6257)
!6273 = !DILocation(line: 191, column: 21, scope: !6269)
!6274 = !DILocation(line: 191, column: 25, scope: !6269)
!6275 = !DILocation(line: 191, column: 31, scope: !6269)
!6276 = !DILocation(line: 191, column: 7, scope: !6269)
!6277 = !DILocation(line: 191, column: 5, scope: !6269)
!6278 = !DILocation(line: 191, column: 3, scope: !6269)
!6279 = !DILocation(line: 192, column: 9, scope: !6257)
!6280 = !DILocation(line: 192, column: 2, scope: !6257)
!6281 = distinct !DISubprogram(name: "__ia32_compat_sys_sched_setaffinity", scope: !3, file: !3, line: 124, type: !6096, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6282 = !{!6283}
!6283 = !DILocalVariable(name: "regs", arg: 1, scope: !6281, file: !3, line: 124, type: !6098)
!6284 = !DILocation(line: 124, column: 1, scope: !6281)
!6285 = distinct !DISubprogram(name: "__se_compat_sys_sched_setaffinity", scope: !3, file: !3, line: 124, type: !6104, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6286)
!6286 = !{!6287, !6288, !6289}
!6287 = !DILocalVariable(name: "pid", arg: 1, scope: !6285, file: !3, line: 124, type: !1055)
!6288 = !DILocalVariable(name: "len", arg: 2, scope: !6285, file: !3, line: 124, type: !1055)
!6289 = !DILocalVariable(name: "user_mask_ptr", arg: 3, scope: !6285, file: !3, line: 124, type: !1055)
!6290 = !DILocation(line: 124, column: 1, scope: !6285)
!6291 = distinct !DISubprogram(name: "__ia32_compat_sys_sched_getaffinity", scope: !3, file: !3, line: 144, type: !6096, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6292)
!6292 = !{!6293}
!6293 = !DILocalVariable(name: "regs", arg: 1, scope: !6291, file: !3, line: 144, type: !6098)
!6294 = !DILocation(line: 144, column: 1, scope: !6291)
!6295 = distinct !DISubprogram(name: "__se_compat_sys_sched_getaffinity", scope: !3, file: !3, line: 144, type: !6104, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6296)
!6296 = !{!6297, !6298, !6299}
!6297 = !DILocalVariable(name: "pid", arg: 1, scope: !6295, file: !3, line: 144, type: !1055)
!6298 = !DILocalVariable(name: "len", arg: 2, scope: !6295, file: !3, line: 144, type: !1055)
!6299 = !DILocalVariable(name: "user_mask_ptr", arg: 3, scope: !6295, file: !3, line: 144, type: !1055)
!6300 = !DILocation(line: 144, column: 1, scope: !6295)
!6301 = distinct !DISubprogram(name: "get_compat_sigevent", scope: !3, file: !3, line: 179, type: !6302, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!22, !6304, !6324}
!6304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6305, size: 64)
!6305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigevent", file: !5653, line: 341, size: 512, elements: !6306)
!6306 = !{!6307, !6308, !6309, !6310}
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !6305, file: !5653, line: 342, baseType: !5667, size: 64)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !6305, file: !5653, line: 343, baseType: !22, size: 32, offset: 64)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !6305, file: !5653, line: 344, baseType: !22, size: 32, offset: 96)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !6305, file: !5653, line: 353, baseType: !6311, size: 384, offset: 128)
!6311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6305, file: !5653, line: 345, size: 384, elements: !6312)
!6312 = !{!6313, !6315, !6316}
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !6311, file: !5653, line: 346, baseType: !6314, size: 384)
!6314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 384, elements: !6020)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !6311, file: !5653, line: 347, baseType: !22, size: 32)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !6311, file: !5653, line: 352, baseType: !6317, size: 128)
!6317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6311, file: !5653, line: 349, size: 128, elements: !6318)
!6318 = !{!6319, !6323}
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !6317, file: !5653, line: 350, baseType: !6320, size: 64)
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6321, size: 64)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{null, !5667}
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !6317, file: !5653, line: 351, baseType: !20, size: 64, offset: 64)
!6324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6325, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6326)
!6326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_sigevent", file: !5742, line: 332, size: 512, elements: !6327)
!6327 = !{!6328, !6334, !6335, !6336}
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_value", scope: !6326, file: !5742, line: 333, baseType: !6329, size: 32)
!6329 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_sigval_t", file: !5742, line: 153, baseType: !6330)
!6330 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "compat_sigval", file: !5742, line: 150, size: 32, elements: !6331)
!6331 = !{!6332, !6333}
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !6330, file: !5742, line: 151, baseType: !288, size: 32)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !6330, file: !5742, line: 152, baseType: !5748, size: 32)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_signo", scope: !6326, file: !5742, line: 334, baseType: !288, size: 32, offset: 32)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "sigev_notify", scope: !6326, file: !5742, line: 335, baseType: !288, size: 32, offset: 64)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_un", scope: !6326, file: !5742, line: 344, baseType: !6337, size: 416, offset: 96)
!6337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6326, file: !5742, line: 336, size: 416, elements: !6338)
!6338 = !{!6339, !6343, !6344}
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !6337, file: !5742, line: 337, baseType: !6340, size: 416)
!6340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 416, elements: !6341)
!6341 = !{!6342}
!6342 = !DISubrange(count: 13)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !6337, file: !5742, line: 338, baseType: !288, size: 32)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "_sigev_thread", scope: !6337, file: !5742, line: 343, baseType: !6345, size: 64)
!6345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6337, file: !5742, line: 340, size: 64, elements: !6346)
!6346 = !{!6347, !6348}
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "_function", scope: !6345, file: !5742, line: 341, baseType: !5748, size: 32)
!6348 = !DIDerivedType(tag: DW_TAG_member, name: "_attribute", scope: !6345, file: !5742, line: 342, baseType: !5748, size: 32, offset: 32)
!6349 = !{!6350, !6351, !6352, !6354, !6355, !6357, !6359, !6360, !6362, !6364, !6365, !6367, !6369, !6370}
!6350 = !DILocalVariable(name: "event", arg: 1, scope: !6301, file: !3, line: 179, type: !6304)
!6351 = !DILocalVariable(name: "u_event", arg: 2, scope: !6301, file: !3, line: 180, type: !6324)
!6352 = !DILocalVariable(name: "__ret_gu", scope: !6353, file: !3, line: 184, type: !22)
!6353 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 184, column: 3)
!6354 = !DILocalVariable(name: "__val_gu", scope: !6353, file: !3, line: 184, type: !7)
!6355 = !DILocalVariable(name: "__tmp", scope: !6356, file: !3, line: 184, type: !285)
!6356 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 184, column: 3)
!6357 = !DILocalVariable(name: "__ret_gu", scope: !6358, file: !3, line: 186, type: !22)
!6358 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 186, column: 3)
!6359 = !DILocalVariable(name: "__val_gu", scope: !6358, file: !3, line: 186, type: !7)
!6360 = !DILocalVariable(name: "__tmp", scope: !6361, file: !3, line: 186, type: !285)
!6361 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 186, column: 3)
!6362 = !DILocalVariable(name: "__ret_gu", scope: !6363, file: !3, line: 187, type: !22)
!6363 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 187, column: 3)
!6364 = !DILocalVariable(name: "__val_gu", scope: !6363, file: !3, line: 187, type: !7)
!6365 = !DILocalVariable(name: "__tmp", scope: !6366, file: !3, line: 187, type: !285)
!6366 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 187, column: 3)
!6367 = !DILocalVariable(name: "__ret_gu", scope: !6368, file: !3, line: 188, type: !22)
!6368 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 188, column: 3)
!6369 = !DILocalVariable(name: "__val_gu", scope: !6368, file: !3, line: 188, type: !7)
!6370 = !DILocalVariable(name: "__tmp", scope: !6371, file: !3, line: 188, type: !285)
!6371 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 188, column: 3)
!6372 = !DILocation(line: 179, column: 42, scope: !6301)
!6373 = !DILocation(line: 180, column: 40, scope: !6301)
!6374 = !DILocation(line: 182, column: 9, scope: !6301)
!6375 = !DILocation(line: 182, column: 2, scope: !6301)
!6376 = !DILocation(line: 183, column: 11, scope: !6301)
!6377 = !DILocation(line: 183, column: 48, scope: !6301)
!6378 = !DILocation(line: 184, column: 3, scope: !6353)
!6379 = !{i64 2156332605}
!6380 = !DILocation(line: 184, column: 3, scope: !6356)
!6381 = !DILocation(line: 184, column: 3, scope: !6301)
!6382 = !DILocation(line: 185, column: 37, scope: !6301)
!6383 = !DILocation(line: 186, column: 3, scope: !6358)
!6384 = !{i64 2156335021}
!6385 = !DILocation(line: 186, column: 3, scope: !6361)
!6386 = !DILocation(line: 186, column: 3, scope: !6301)
!6387 = !DILocation(line: 186, column: 57, scope: !6301)
!6388 = !DILocation(line: 187, column: 3, scope: !6363)
!6389 = !{i64 2156337239}
!6390 = !DILocation(line: 187, column: 3, scope: !6366)
!6391 = !DILocation(line: 187, column: 3, scope: !6301)
!6392 = !DILocation(line: 187, column: 59, scope: !6301)
!6393 = !DILocation(line: 188, column: 3, scope: !6368)
!6394 = !{i64 2156339513}
!6395 = !DILocation(line: 188, column: 3, scope: !6371)
!6396 = !DILocation(line: 188, column: 3, scope: !6301)
!6397 = !DILocation(line: 183, column: 9, scope: !6301)
!6398 = !DILocation(line: 183, column: 2, scope: !6301)
!6399 = distinct !DISubprogram(name: "__access_ok", scope: !6400, file: !6400, line: 85, type: !6401, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6403)
!6400 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6401 = !DISubroutineType(types: !6402)
!6402 = !{!832, !2569, !39}
!6403 = !{!6404, !6405, !6406}
!6404 = !DILocalVariable(name: "ptr", arg: 1, scope: !6399, file: !6400, line: 85, type: !2569)
!6405 = !DILocalVariable(name: "size", arg: 2, scope: !6399, file: !6400, line: 85, type: !39)
!6406 = !DILocalVariable(name: "sum", scope: !6407, file: !6400, line: 90, type: !39)
!6407 = distinct !DILexicalBlock(scope: !6408, file: !6400, line: 89, column: 9)
!6408 = distinct !DILexicalBlock(scope: !6399, file: !6400, line: 87, column: 6)
!6409 = !DILocation(line: 85, column: 51, scope: !6399)
!6410 = !DILocation(line: 85, column: 70, scope: !6399)
!6411 = !DILocation(line: 87, column: 27, scope: !6408)
!6412 = !DILocation(line: 87, column: 32, scope: !6408)
!6413 = !DILocation(line: 87, column: 6, scope: !6408)
!6414 = !DILocation(line: 87, column: 46, scope: !6408)
!6415 = !DILocation(line: 87, column: 49, scope: !6408)
!6416 = !DILocation(line: 87, column: 54, scope: !6408)
!6417 = !DILocation(line: 87, column: 6, scope: !6399)
!6418 = !DILocation(line: 88, column: 10, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6408, file: !6400, line: 87, column: 68)
!6420 = !DILocation(line: 88, column: 3, scope: !6419)
!6421 = !DILocation(line: 90, column: 3, scope: !6407)
!6422 = !DILocation(line: 90, column: 17, scope: !6407)
!6423 = !DILocation(line: 90, column: 23, scope: !6407)
!6424 = !DILocation(line: 90, column: 45, scope: !6407)
!6425 = !DILocation(line: 90, column: 30, scope: !6407)
!6426 = !DILocation(line: 90, column: 28, scope: !6407)
!6427 = !DILocation(line: 91, column: 10, scope: !6407)
!6428 = !DILocation(line: 91, column: 34, scope: !6407)
!6429 = !DILocation(line: 91, column: 37, scope: !6407)
!6430 = !DILocation(line: 91, column: 59, scope: !6407)
!6431 = !DILocation(line: 91, column: 44, scope: !6407)
!6432 = !DILocation(line: 91, column: 41, scope: !6407)
!6433 = !DILocation(line: 0, scope: !6407)
!6434 = !DILocation(line: 91, column: 3, scope: !6407)
!6435 = !DILocation(line: 92, column: 2, scope: !6408)
!6436 = !DILocation(line: 93, column: 1, scope: !6399)
!6437 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6438, file: !6438, line: 70, type: !6439, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6441)
!6438 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6439 = !DISubroutineType(types: !6440)
!6440 = !{null, !2569, !35}
!6441 = !{!6442, !6443}
!6442 = !DILocalVariable(name: "address", arg: 1, scope: !6437, file: !6438, line: 70, type: !2569)
!6443 = !DILocalVariable(name: "size", arg: 2, scope: !6437, file: !6438, line: 70, type: !35)
!6444 = !DILocation(line: 70, column: 54, scope: !6437)
!6445 = !DILocation(line: 70, column: 70, scope: !6437)
!6446 = !DILocation(line: 72, column: 1, scope: !6437)
!6447 = distinct !DISubprogram(name: "compat_get_bitmap", scope: !3, file: !3, line: 193, type: !6448, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6452)
!6448 = !DISubroutineType(types: !6449)
!6449 = !{!1055, !4245, !6450, !39}
!6450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6451, size: 64)
!6451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!6452 = !{!6453, !6454, !6455, !6456, !6457, !6459, !6460, !6462, !6465, !6467, !6470, !6473, !6476}
!6453 = !DILocalVariable(name: "mask", arg: 1, scope: !6447, file: !3, line: 193, type: !4245)
!6454 = !DILocalVariable(name: "umask", arg: 2, scope: !6447, file: !3, line: 193, type: !6450)
!6455 = !DILocalVariable(name: "bitmap_size", arg: 3, scope: !6447, file: !3, line: 194, type: !39)
!6456 = !DILocalVariable(name: "nr_compat_longs", scope: !6447, file: !3, line: 196, type: !39)
!6457 = !DILocalVariable(name: "l1", scope: !6458, file: !3, line: 206, type: !300)
!6458 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 205, column: 30)
!6459 = !DILocalVariable(name: "l2", scope: !6458, file: !3, line: 206, type: !300)
!6460 = !DILocalVariable(name: "__gu_val", scope: !6461, file: !3, line: 207, type: !7)
!6461 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 207, column: 3)
!6462 = !DILocalVariable(name: "__tmp", scope: !6463, file: !3, line: 207, type: !285)
!6463 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 207, column: 3)
!6464 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 207, column: 3)
!6465 = !DILocalVariable(name: "__gu_val", scope: !6466, file: !3, line: 208, type: !7)
!6466 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 208, column: 3)
!6467 = !DILocalVariable(name: "__tmp", scope: !6468, file: !3, line: 208, type: !285)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 208, column: 3)
!6469 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 208, column: 3)
!6470 = !DILocalVariable(name: "__gu_val", scope: !6471, file: !3, line: 213, type: !7)
!6471 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 213, column: 3)
!6472 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 212, column: 6)
!6473 = !DILocalVariable(name: "__tmp", scope: !6474, file: !3, line: 213, type: !285)
!6474 = distinct !DILexicalBlock(scope: !6475, file: !3, line: 213, column: 3)
!6475 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 213, column: 3)
!6476 = !DILabel(scope: !6447, name: "Efault", file: !3, line: 217)
!6477 = !DILocation(line: 193, column: 39, scope: !6447)
!6478 = !DILocation(line: 193, column: 74, scope: !6447)
!6479 = !DILocation(line: 194, column: 24, scope: !6447)
!6480 = !DILocation(line: 196, column: 2, scope: !6447)
!6481 = !DILocation(line: 196, column: 16, scope: !6447)
!6482 = !DILocation(line: 199, column: 16, scope: !6447)
!6483 = !DILocation(line: 199, column: 14, scope: !6447)
!6484 = !DILocation(line: 200, column: 20, scope: !6447)
!6485 = !DILocation(line: 200, column: 18, scope: !6447)
!6486 = !DILocation(line: 202, column: 7, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 202, column: 6)
!6488 = !DILocation(line: 202, column: 6, scope: !6447)
!6489 = !DILocation(line: 203, column: 3, scope: !6487)
!6490 = !DILocation(line: 205, column: 2, scope: !6447)
!6491 = !DILocation(line: 205, column: 9, scope: !6447)
!6492 = !DILocation(line: 205, column: 25, scope: !6447)
!6493 = !DILocation(line: 206, column: 3, scope: !6458)
!6494 = !DILocation(line: 206, column: 18, scope: !6458)
!6495 = !DILocation(line: 206, column: 22, scope: !6458)
!6496 = !DILocation(line: 207, column: 3, scope: !6458)
!6497 = !DILocation(line: 207, column: 3, scope: !6461)
!6498 = !DILocation(line: 207, column: 3, scope: !6464)
!6499 = !{i64 2156346799, i64 2156346819, i64 2156346855, i64 2156346899, i64 2156346922, i64 2156346954, i64 2156346987, i64 2156347012}
!6500 = !DILocation(line: 207, column: 3, scope: !6463)
!6501 = !DILocation(line: 208, column: 3, scope: !6458)
!6502 = !DILocation(line: 208, column: 3, scope: !6466)
!6503 = !DILocation(line: 208, column: 3, scope: !6469)
!6504 = !{i64 2156352881, i64 2156352901, i64 2156352937, i64 2156352981, i64 2156353004, i64 2156353036, i64 2156353069, i64 2156353094}
!6505 = !DILocation(line: 208, column: 3, scope: !6468)
!6506 = !DILocation(line: 209, column: 29, scope: !6458)
!6507 = !DILocation(line: 209, column: 14, scope: !6458)
!6508 = !DILocation(line: 209, column: 32, scope: !6458)
!6509 = !DILocation(line: 209, column: 59, scope: !6458)
!6510 = !DILocation(line: 209, column: 57, scope: !6458)
!6511 = !DILocation(line: 209, column: 8, scope: !6458)
!6512 = !DILocation(line: 209, column: 11, scope: !6458)
!6513 = !DILocation(line: 210, column: 19, scope: !6458)
!6514 = !DILocation(line: 211, column: 2, scope: !6447)
!6515 = distinct !{!6515, !6490, !6514, !6516, !6517}
!6516 = !{!"llvm.loop.mustprogress"}
!6517 = !{!"llvm.loop.unroll.disable"}
!6518 = !DILocation(line: 212, column: 6, scope: !6472)
!6519 = !DILocation(line: 212, column: 6, scope: !6447)
!6520 = !DILocation(line: 213, column: 3, scope: !6472)
!6521 = !DILocation(line: 213, column: 3, scope: !6471)
!6522 = !DILocation(line: 213, column: 3, scope: !6475)
!6523 = !{i64 2156358992, i64 2156359012, i64 2156359048, i64 2156359092, i64 2156359115, i64 2156359147, i64 2156359180, i64 2156359205}
!6524 = !DILocation(line: 213, column: 3, scope: !6474)
!6525 = !DILocation(line: 214, column: 2, scope: !6447)
!6526 = !DILocation(line: 215, column: 2, scope: !6447)
!6527 = !DILocation(line: 217, column: 1, scope: !6447)
!6528 = !DILocation(line: 218, column: 2, scope: !6447)
!6529 = !DILocation(line: 219, column: 2, scope: !6447)
!6530 = !DILocation(line: 220, column: 1, scope: !6447)
!6531 = distinct !DISubprogram(name: "user_access_begin", scope: !294, file: !294, line: 519, type: !6532, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6534)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{!832, !2569, !35}
!6534 = !{!6535, !6536}
!6535 = !DILocalVariable(name: "ptr", arg: 1, scope: !6531, file: !294, line: 519, type: !2569)
!6536 = !DILocalVariable(name: "len", arg: 2, scope: !6531, file: !294, line: 519, type: !35)
!6537 = !DILocation(line: 519, column: 79, scope: !6531)
!6538 = !DILocation(line: 519, column: 91, scope: !6531)
!6539 = !DILocation(line: 521, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6531, file: !294, line: 521, column: 6)
!6541 = !DILocation(line: 521, column: 6, scope: !6531)
!6542 = !DILocation(line: 522, column: 3, scope: !6540)
!6543 = !DILocation(line: 523, column: 2, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6531, file: !294, line: 523, column: 2)
!6545 = !{i64 2152987861, i64 2152987889, i64 2152987895, i64 2152987911, i64 2152987927, i64 2152987954, i64 2152988268, i64 2152987625, i64 2152988274, i64 2152988322, i64 2152988386, i64 2152988450, i64 2152988507, i64 2152987706, i64 2152987731, i64 2152988714, i64 2152988836, i64 2152988775, i64 2152988850, i64 2152987823}
!6546 = !DILocation(line: 524, column: 2, scope: !6531)
!6547 = !DILocation(line: 525, column: 1, scope: !6531)
!6548 = distinct !DISubprogram(name: "clac", scope: !6549, file: !6549, line: 30, type: !3220, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6549 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!6550 = !DILocation(line: 33, column: 2, scope: !6548)
!6551 = !{i64 2152474519, i64 2152474547, i64 2152474553, i64 2152474569, i64 2152474585, i64 2152474612, i64 2152474926, i64 2152474269, i64 2152474932, i64 2152474980, i64 2152475044, i64 2152475108, i64 2152475165, i64 2152474350, i64 2152474375, i64 2152475372, i64 2152475508, i64 2152475433, i64 2152475522, i64 2152474467}
!6552 = !DILocation(line: 34, column: 1, scope: !6548)
!6553 = distinct !DISubprogram(name: "compat_put_bitmap", scope: !3, file: !3, line: 222, type: !6554, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6556)
!6554 = !DISubroutineType(types: !6555)
!6555 = !{!1055, !6077, !4245, !39}
!6556 = !{!6557, !6558, !6559, !6560, !6561, !6563, !6565, !6566, !6568, !6569, !6572, !6573}
!6557 = !DILocalVariable(name: "umask", arg: 1, scope: !6553, file: !3, line: 222, type: !6077)
!6558 = !DILocalVariable(name: "mask", arg: 2, scope: !6553, file: !3, line: 222, type: !4245)
!6559 = !DILocalVariable(name: "bitmap_size", arg: 3, scope: !6553, file: !3, line: 223, type: !39)
!6560 = !DILocalVariable(name: "nr_compat_longs", scope: !6553, file: !3, line: 225, type: !39)
!6561 = !DILocalVariable(name: "m", scope: !6562, file: !3, line: 235, type: !39)
!6562 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 234, column: 30)
!6563 = !DILocalVariable(name: "__x", scope: !6564, file: !3, line: 236, type: !300)
!6564 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 236, column: 3)
!6565 = !DILocalVariable(name: "__ptr", scope: !6564, file: !3, line: 236, type: !6077)
!6566 = !DILocalVariable(name: "__x", scope: !6567, file: !3, line: 237, type: !300)
!6567 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 237, column: 3)
!6568 = !DILocalVariable(name: "__ptr", scope: !6567, file: !3, line: 237, type: !6077)
!6569 = !DILocalVariable(name: "__x", scope: !6570, file: !3, line: 241, type: !300)
!6570 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 241, column: 3)
!6571 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 240, column: 6)
!6572 = !DILocalVariable(name: "__ptr", scope: !6570, file: !3, line: 241, type: !6077)
!6573 = !DILabel(scope: !6553, name: "Efault", file: !3, line: 244)
!6574 = !DILocation(line: 222, column: 47, scope: !6553)
!6575 = !DILocation(line: 222, column: 69, scope: !6553)
!6576 = !DILocation(line: 223, column: 24, scope: !6553)
!6577 = !DILocation(line: 225, column: 2, scope: !6553)
!6578 = !DILocation(line: 225, column: 16, scope: !6553)
!6579 = !DILocation(line: 228, column: 16, scope: !6553)
!6580 = !DILocation(line: 228, column: 14, scope: !6553)
!6581 = !DILocation(line: 229, column: 20, scope: !6553)
!6582 = !DILocation(line: 229, column: 18, scope: !6553)
!6583 = !DILocation(line: 231, column: 7, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 231, column: 6)
!6585 = !DILocation(line: 231, column: 6, scope: !6553)
!6586 = !DILocation(line: 232, column: 3, scope: !6584)
!6587 = !DILocation(line: 234, column: 2, scope: !6553)
!6588 = !DILocation(line: 234, column: 9, scope: !6553)
!6589 = !DILocation(line: 234, column: 25, scope: !6553)
!6590 = !DILocation(line: 235, column: 3, scope: !6562)
!6591 = !DILocation(line: 235, column: 17, scope: !6562)
!6592 = !DILocation(line: 235, column: 26, scope: !6562)
!6593 = !DILocation(line: 235, column: 21, scope: !6562)
!6594 = !DILocation(line: 236, column: 3, scope: !6562)
!6595 = !DILocation(line: 236, column: 3, scope: !6564)
!6596 = !{i64 2156363191, i64 2156363207, i64 2156363396, i64 2156363440, i64 2156363463, i64 2156363496, i64 2156363527, i64 2156363566}
!6597 = !DILocation(line: 236, column: 3, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6564, file: !3, line: 236, column: 3)
!6599 = !DILocation(line: 237, column: 3, scope: !6562)
!6600 = !DILocation(line: 237, column: 3, scope: !6567)
!6601 = !{i64 2156366323, i64 2156366339, i64 2156366528, i64 2156366572, i64 2156366595, i64 2156366628, i64 2156366659, i64 2156366698}
!6602 = !DILocation(line: 237, column: 3, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 237, column: 3)
!6604 = !DILocation(line: 238, column: 19, scope: !6562)
!6605 = !DILocation(line: 239, column: 2, scope: !6553)
!6606 = distinct !{!6606, !6587, !6605, !6516, !6517}
!6607 = !DILocation(line: 240, column: 6, scope: !6571)
!6608 = !DILocation(line: 240, column: 6, scope: !6553)
!6609 = !DILocation(line: 241, column: 3, scope: !6571)
!6610 = !DILocation(line: 241, column: 3, scope: !6570)
!6611 = !{i64 2156369411, i64 2156369427, i64 2156369616, i64 2156369660, i64 2156369683, i64 2156369716, i64 2156369747, i64 2156369786}
!6612 = !DILocation(line: 241, column: 3, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 241, column: 3)
!6614 = !DILocation(line: 242, column: 2, scope: !6553)
!6615 = !DILocation(line: 243, column: 2, scope: !6553)
!6616 = !DILocation(line: 244, column: 1, scope: !6553)
!6617 = !DILocation(line: 245, column: 2, scope: !6553)
!6618 = !DILocation(line: 246, column: 2, scope: !6553)
!6619 = !DILocation(line: 247, column: 1, scope: !6553)
!6620 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6438, file: !6438, line: 76, type: !6621, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6621 = !DISubroutineType(types: !6622)
!6622 = !{null, !20, !2569, !35, !35}
!6623 = !{!6624, !6625, !6626, !6627}
!6624 = !DILocalVariable(name: "to", arg: 1, scope: !6620, file: !6438, line: 76, type: !20)
!6625 = !DILocalVariable(name: "from", arg: 2, scope: !6620, file: !6438, line: 76, type: !2569)
!6626 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6620, file: !6438, line: 77, type: !35)
!6627 = !DILocalVariable(name: "left", arg: 4, scope: !6620, file: !6438, line: 77, type: !35)
!6628 = !DILocation(line: 76, column: 52, scope: !6620)
!6629 = !DILocation(line: 76, column: 68, scope: !6620)
!6630 = !DILocation(line: 77, column: 18, scope: !6620)
!6631 = !DILocation(line: 77, column: 34, scope: !6620)
!6632 = !DILocation(line: 79, column: 1, scope: !6620)
!6633 = distinct !DISubprogram(name: "get_compat_sigset", scope: !3, file: !3, line: 250, type: !6634, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6645)
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!22, !6636, !6637}
!6636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!6637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6638, size: 64)
!6638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6639)
!6639 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_sigset_t", file: !5742, line: 131, baseType: !6640)
!6640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5742, line: 129, size: 64, elements: !6641)
!6641 = !{!6642}
!6642 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !6640, file: !5742, line: 130, baseType: !6643, size: 64)
!6643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6644, size: 64, elements: !2945)
!6644 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_sigset_word", file: !289, line: 74, baseType: !301)
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "set", arg: 1, scope: !6633, file: !3, line: 250, type: !6636)
!6647 = !DILocalVariable(name: "compat", arg: 2, scope: !6633, file: !3, line: 250, type: !6637)
!6648 = !DILocation(line: 250, column: 29, scope: !6633)
!6649 = !DILocation(line: 250, column: 64, scope: !6633)
!6650 = !DILocation(line: 266, column: 21, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 266, column: 6)
!6652 = !DILocation(line: 266, column: 26, scope: !6651)
!6653 = !DILocation(line: 266, column: 6, scope: !6651)
!6654 = !DILocation(line: 266, column: 6, scope: !6633)
!6655 = !DILocation(line: 267, column: 3, scope: !6651)
!6656 = !DILocation(line: 269, column: 2, scope: !6633)
!6657 = !DILocation(line: 270, column: 1, scope: !6633)
!6658 = distinct !DISubprogram(name: "copy_from_user", scope: !6258, file: !6258, line: 180, type: !6259, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6659)
!6659 = !{!6660, !6661, !6662}
!6660 = !DILocalVariable(name: "to", arg: 1, scope: !6658, file: !6258, line: 180, type: !20)
!6661 = !DILocalVariable(name: "from", arg: 2, scope: !6658, file: !6258, line: 180, type: !2569)
!6662 = !DILocalVariable(name: "n", arg: 3, scope: !6658, file: !6258, line: 180, type: !39)
!6663 = !DILocation(line: 180, column: 22, scope: !6658)
!6664 = !DILocation(line: 180, column: 45, scope: !6658)
!6665 = !DILocation(line: 180, column: 65, scope: !6658)
!6666 = !DILocation(line: 182, column: 22, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6658, file: !6258, line: 182, column: 6)
!6668 = !DILocation(line: 182, column: 26, scope: !6667)
!6669 = !DILocation(line: 182, column: 6, scope: !6667)
!6670 = !DILocation(line: 182, column: 6, scope: !6658)
!6671 = !DILocation(line: 183, column: 23, scope: !6667)
!6672 = !DILocation(line: 183, column: 27, scope: !6667)
!6673 = !DILocation(line: 183, column: 33, scope: !6667)
!6674 = !DILocation(line: 183, column: 7, scope: !6667)
!6675 = !DILocation(line: 183, column: 5, scope: !6667)
!6676 = !DILocation(line: 183, column: 3, scope: !6667)
!6677 = !DILocation(line: 184, column: 9, scope: !6658)
!6678 = !DILocation(line: 184, column: 2, scope: !6658)
!6679 = distinct !DISubprogram(name: "__do_compat_sys_sigprocmask", scope: !3, file: !3, line: 40, type: !6680, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6682)
!6680 = !DISubroutineType(types: !6681)
!6681 = !{!1055, !22, !303, !303}
!6682 = !{!6683, !6684, !6685, !6686, !6688, !6689, !6690, !6696, !6697, !6699, !6705, !6706, !6707, !6708}
!6683 = !DILocalVariable(name: "how", arg: 1, scope: !6679, file: !3, line: 40, type: !22)
!6684 = !DILocalVariable(name: "nset", arg: 2, scope: !6679, file: !3, line: 40, type: !303)
!6685 = !DILocalVariable(name: "oset", arg: 3, scope: !6679, file: !3, line: 40, type: !303)
!6686 = !DILocalVariable(name: "old_set", scope: !6679, file: !3, line: 44, type: !6687)
!6687 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_sigset_t", file: !5367, line: 21, baseType: !39)
!6688 = !DILocalVariable(name: "new_set", scope: !6679, file: !3, line: 44, type: !6687)
!6689 = !DILocalVariable(name: "new_blocked", scope: !6679, file: !3, line: 45, type: !5366)
!6690 = !DILocalVariable(name: "__ret_gu", scope: !6691, file: !3, line: 50, type: !22)
!6691 = distinct !DILexicalBlock(scope: !6692, file: !3, line: 50, column: 7)
!6692 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 50, column: 7)
!6693 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 50, column: 7)
!6694 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 49, column: 12)
!6695 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 49, column: 6)
!6696 = !DILocalVariable(name: "__val_gu", scope: !6691, file: !3, line: 50, type: !7)
!6697 = !DILocalVariable(name: "__tmp", scope: !6698, file: !3, line: 50, type: !285)
!6698 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 50, column: 7)
!6699 = !DILocalVariable(name: "__ret_pu", scope: !6700, file: !3, line: 74, type: !22)
!6700 = distinct !DILexicalBlock(scope: !6701, file: !3, line: 74, column: 7)
!6701 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 74, column: 7)
!6702 = distinct !DILexicalBlock(scope: !6703, file: !3, line: 74, column: 7)
!6703 = distinct !DILexicalBlock(scope: !6704, file: !3, line: 73, column: 12)
!6704 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 73, column: 6)
!6705 = !DILocalVariable(name: "__ptr_pu", scope: !6700, file: !3, line: 74, type: !20)
!6706 = !DILocalVariable(name: "__val_pu", scope: !6700, file: !3, line: 74, type: !304)
!6707 = !DILocalVariable(name: "__x", scope: !6700, file: !3, line: 74, type: !304)
!6708 = !DILocalVariable(name: "__ptr", scope: !6700, file: !3, line: 74, type: !303)
!6709 = !DILocation(line: 40, column: 1, scope: !6679)
!6710 = !DILocation(line: 44, column: 2, scope: !6679)
!6711 = !DILocation(line: 44, column: 15, scope: !6679)
!6712 = !DILocation(line: 44, column: 24, scope: !6679)
!6713 = !DILocation(line: 45, column: 2, scope: !6679)
!6714 = !DILocation(line: 45, column: 11, scope: !6679)
!6715 = !DILocation(line: 47, column: 12, scope: !6679)
!6716 = !DILocation(line: 47, column: 21, scope: !6679)
!6717 = !DILocation(line: 47, column: 29, scope: !6679)
!6718 = !DILocation(line: 47, column: 10, scope: !6679)
!6719 = !DILocation(line: 49, column: 6, scope: !6695)
!6720 = !DILocation(line: 49, column: 6, scope: !6679)
!6721 = !DILocation(line: 50, column: 7, scope: !6692)
!6722 = !DILocation(line: 50, column: 7, scope: !6691)
!6723 = !{i64 2156300996}
!6724 = !DILocation(line: 50, column: 7, scope: !6698)
!6725 = !DILocation(line: 50, column: 7, scope: !6693)
!6726 = !DILocation(line: 50, column: 7, scope: !6694)
!6727 = !DILocation(line: 51, column: 4, scope: !6693)
!6728 = !DILocation(line: 52, column: 11, scope: !6694)
!6729 = !DILocation(line: 54, column: 17, scope: !6694)
!6730 = !DILocation(line: 54, column: 26, scope: !6694)
!6731 = !DILocation(line: 56, column: 11, scope: !6694)
!6732 = !DILocation(line: 56, column: 3, scope: !6694)
!6733 = !DILocation(line: 58, column: 32, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 56, column: 16)
!6735 = !DILocation(line: 58, column: 4, scope: !6734)
!6736 = !DILocation(line: 59, column: 4, scope: !6734)
!6737 = !DILocation(line: 61, column: 32, scope: !6734)
!6738 = !DILocation(line: 61, column: 4, scope: !6734)
!6739 = !DILocation(line: 62, column: 4, scope: !6734)
!6740 = !DILocation(line: 64, column: 37, scope: !6734)
!6741 = !DILocation(line: 64, column: 4, scope: !6734)
!6742 = !DILocation(line: 65, column: 4, scope: !6734)
!6743 = !DILocation(line: 67, column: 4, scope: !6734)
!6744 = !DILocation(line: 70, column: 3, scope: !6694)
!6745 = !DILocation(line: 71, column: 2, scope: !6694)
!6746 = !DILocation(line: 73, column: 6, scope: !6704)
!6747 = !DILocation(line: 73, column: 6, scope: !6679)
!6748 = !DILocation(line: 74, column: 7, scope: !6701)
!6749 = !DILocation(line: 74, column: 7, scope: !6700)
!6750 = !{i64 2156303127}
!6751 = !DILocation(line: 74, column: 7, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 74, column: 7)
!6753 = !DILocation(line: 74, column: 7, scope: !6702)
!6754 = !DILocation(line: 74, column: 7, scope: !6703)
!6755 = !DILocation(line: 75, column: 4, scope: !6702)
!6756 = !DILocation(line: 76, column: 2, scope: !6703)
!6757 = !DILocation(line: 78, column: 2, scope: !6679)
!6758 = !DILocation(line: 79, column: 1, scope: !6679)
!6759 = distinct !DISubprogram(name: "get_current", scope: !6760, file: !6760, line: 39, type: !6761, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6763)
!6760 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6761 = !DISubroutineType(types: !6762)
!6762 = !{!306}
!6763 = !{!6764, !6766, !6768}
!6764 = !DILocalVariable(name: "pscr_ret__", scope: !6765, file: !6760, line: 41, type: !306)
!6765 = distinct !DILexicalBlock(scope: !6759, file: !6760, line: 41, column: 9)
!6766 = !DILocalVariable(name: "__vpp_verify", scope: !6767, file: !6760, line: 41, type: !2569)
!6767 = distinct !DILexicalBlock(scope: !6765, file: !6760, line: 41, column: 9)
!6768 = !DILocalVariable(name: "pfo_val__", scope: !6769, file: !6760, line: 41, type: !285)
!6769 = distinct !DILexicalBlock(scope: !6765, file: !6760, line: 41, column: 9)
!6770 = !DILocation(line: 41, column: 9, scope: !6765)
!6771 = !DILocation(line: 41, column: 9, scope: !6767)
!6772 = !DILocation(line: 41, column: 9, scope: !6769)
!6773 = !{i64 2148426189}
!6774 = !DILocation(line: 41, column: 9, scope: !6759)
!6775 = !DILocation(line: 41, column: 2, scope: !6759)
!6776 = distinct !DISubprogram(name: "might_fault", scope: !6777, file: !6777, line: 202, type: !3220, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6777 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6778 = !DILocation(line: 202, column: 40, scope: !6776)
!6779 = distinct !DISubprogram(name: "sigaddsetmask", scope: !767, file: !767, line: 219, type: !6780, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6782)
!6780 = !DISubroutineType(types: !6781)
!6781 = !{null, !6636, !39}
!6782 = !{!6783, !6784}
!6783 = !DILocalVariable(name: "set", arg: 1, scope: !6779, file: !767, line: 219, type: !6636)
!6784 = !DILocalVariable(name: "mask", arg: 2, scope: !6779, file: !767, line: 219, type: !39)
!6785 = !DILocation(line: 219, column: 44, scope: !6779)
!6786 = !DILocation(line: 219, column: 63, scope: !6779)
!6787 = !DILocation(line: 221, column: 17, scope: !6779)
!6788 = !DILocation(line: 221, column: 2, scope: !6779)
!6789 = !DILocation(line: 221, column: 7, scope: !6779)
!6790 = !DILocation(line: 221, column: 14, scope: !6779)
!6791 = !DILocation(line: 222, column: 1, scope: !6779)
!6792 = distinct !DISubprogram(name: "sigdelsetmask", scope: !767, file: !767, line: 224, type: !6780, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6793)
!6793 = !{!6794, !6795}
!6794 = !DILocalVariable(name: "set", arg: 1, scope: !6792, file: !767, line: 224, type: !6636)
!6795 = !DILocalVariable(name: "mask", arg: 2, scope: !6792, file: !767, line: 224, type: !39)
!6796 = !DILocation(line: 224, column: 44, scope: !6792)
!6797 = !DILocation(line: 224, column: 63, scope: !6792)
!6798 = !DILocation(line: 226, column: 18, scope: !6792)
!6799 = !DILocation(line: 226, column: 17, scope: !6792)
!6800 = !DILocation(line: 226, column: 2, scope: !6792)
!6801 = !DILocation(line: 226, column: 7, scope: !6792)
!6802 = !DILocation(line: 226, column: 14, scope: !6792)
!6803 = !DILocation(line: 227, column: 1, scope: !6792)
!6804 = distinct !DISubprogram(name: "compat_sig_setmask", scope: !3, file: !3, line: 35, type: !6805, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6807)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{null, !6636, !6644}
!6807 = !{!6808, !6809}
!6808 = !DILocalVariable(name: "blocked", arg: 1, scope: !6804, file: !3, line: 35, type: !6636)
!6809 = !DILocalVariable(name: "set", arg: 2, scope: !6804, file: !3, line: 35, type: !6644)
!6810 = !DILocation(line: 35, column: 49, scope: !6804)
!6811 = !DILocation(line: 35, column: 77, scope: !6804)
!6812 = !DILocation(line: 37, column: 9, scope: !6804)
!6813 = !DILocation(line: 37, column: 18, scope: !6804)
!6814 = !DILocation(line: 37, column: 2, scope: !6804)
!6815 = !DILocation(line: 38, column: 1, scope: !6804)
!6816 = !DISubprogram(name: "set_current_blocked", scope: !767, file: !767, line: 288, type: !6817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6817 = !DISubroutineType(types: !6818)
!6818 = !{null, !6636}
!6819 = distinct !DISubprogram(name: "check_copy_size", scope: !6081, file: !6081, line: 237, type: !6820, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6822)
!6820 = !DISubroutineType(types: !6821)
!6821 = !{!832, !2569, !35, !832}
!6822 = !{!6823, !6824, !6825, !6826, !6827, !6830}
!6823 = !DILocalVariable(name: "addr", arg: 1, scope: !6819, file: !6081, line: 237, type: !2569)
!6824 = !DILocalVariable(name: "bytes", arg: 2, scope: !6819, file: !6081, line: 237, type: !35)
!6825 = !DILocalVariable(name: "is_source", arg: 3, scope: !6819, file: !6081, line: 237, type: !832)
!6826 = !DILocalVariable(name: "sz", scope: !6819, file: !6081, line: 239, type: !22)
!6827 = !DILocalVariable(name: "__ret_warn_on", scope: !6828, file: !6081, line: 249, type: !22)
!6828 = distinct !DILexicalBlock(scope: !6829, file: !6081, line: 249, column: 6)
!6829 = distinct !DILexicalBlock(scope: !6819, file: !6081, line: 249, column: 6)
!6830 = !DILocalVariable(name: "__flags", scope: !6831, file: !6081, line: 249, type: !22)
!6831 = distinct !DILexicalBlock(scope: !6832, file: !6081, line: 249, column: 6)
!6832 = distinct !DILexicalBlock(scope: !6828, file: !6081, line: 249, column: 6)
!6833 = !DILocation(line: 237, column: 29, scope: !6819)
!6834 = !DILocation(line: 237, column: 42, scope: !6819)
!6835 = !DILocation(line: 237, column: 54, scope: !6819)
!6836 = !DILocation(line: 239, column: 2, scope: !6819)
!6837 = !DILocation(line: 239, column: 6, scope: !6819)
!6838 = !DILocation(line: 239, column: 33, scope: !6819)
!6839 = !DILocation(line: 239, column: 11, scope: !6819)
!6840 = !DILocation(line: 240, column: 6, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6819, file: !6081, line: 240, column: 6)
!6842 = !DILocation(line: 0, scope: !6841)
!6843 = !DILocation(line: 240, column: 6, scope: !6819)
!6844 = !DILocation(line: 241, column: 29, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6846, file: !6081, line: 241, column: 7)
!6846 = distinct !DILexicalBlock(scope: !6841, file: !6081, line: 240, column: 39)
!6847 = !DILocation(line: 241, column: 8, scope: !6845)
!6848 = !DILocation(line: 241, column: 7, scope: !6846)
!6849 = !DILocation(line: 242, column: 18, scope: !6845)
!6850 = !DILocation(line: 242, column: 22, scope: !6845)
!6851 = !DILocation(line: 242, column: 4, scope: !6845)
!6852 = !DILocation(line: 243, column: 12, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6845, file: !6081, line: 243, column: 12)
!6854 = !{i8 0, i8 2}
!6855 = !DILocation(line: 243, column: 12, scope: !6845)
!6856 = !DILocation(line: 244, column: 4, scope: !6853)
!6857 = !{i32 2068059}
!6858 = !DILocation(line: 246, column: 4, scope: !6853)
!6859 = !{i32 2068088}
!6860 = !DILocation(line: 247, column: 3, scope: !6846)
!6861 = !DILocation(line: 249, column: 6, scope: !6828)
!6862 = !DILocation(line: 249, column: 6, scope: !6832)
!6863 = !DILocation(line: 249, column: 6, scope: !6831)
!6864 = !DILocation(line: 249, column: 6, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6831, file: !6081, line: 249, column: 6)
!6866 = !DILocation(line: 249, column: 6, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6831, file: !6081, line: 249, column: 6)
!6868 = !{i64 2149568521, i64 2149568550, i64 2149568596, i64 2149568654, i64 2149568708, i64 2149568762, i64 2149568817, i64 2149568848, i64 2149569156, i64 2149569162, i64 2149569209, i64 2149569232, i64 2149569258}
!6869 = !DILocation(line: 249, column: 6, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6831, file: !6081, line: 249, column: 6)
!6871 = !DILocation(line: 249, column: 6, scope: !6829)
!6872 = !DILocation(line: 249, column: 6, scope: !6819)
!6873 = !DILocation(line: 250, column: 3, scope: !6829)
!6874 = !DILocation(line: 251, column: 20, scope: !6819)
!6875 = !DILocation(line: 251, column: 26, scope: !6819)
!6876 = !DILocation(line: 251, column: 33, scope: !6819)
!6877 = !DILocation(line: 251, column: 2, scope: !6819)
!6878 = !DILocation(line: 252, column: 2, scope: !6819)
!6879 = !DILocation(line: 253, column: 1, scope: !6819)
!6880 = !DISubprogram(name: "_copy_to_user", scope: !6258, file: !6258, line: 176, type: !6259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6881 = distinct !DISubprogram(name: "copy_overflow", scope: !6081, file: !6081, line: 230, type: !6882, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6884)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{null, !22, !39}
!6884 = !{!6885, !6886}
!6885 = !DILocalVariable(name: "size", arg: 1, scope: !6881, file: !6081, line: 230, type: !22)
!6886 = !DILocalVariable(name: "count", arg: 2, scope: !6881, file: !6081, line: 230, type: !39)
!6887 = !DILocation(line: 230, column: 38, scope: !6881)
!6888 = !DILocation(line: 230, column: 58, scope: !6881)
!6889 = !DILocation(line: 233, column: 19, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6881, file: !6081, line: 232, column: 6)
!6891 = !DILocation(line: 233, column: 25, scope: !6890)
!6892 = !DILocation(line: 233, column: 3, scope: !6890)
!6893 = !DILocation(line: 234, column: 1, scope: !6881)
!6894 = !DISubprogram(name: "__bad_copy_from", scope: !6081, file: !6081, line: 224, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6895 = !DISubprogram(name: "__bad_copy_to", scope: !6081, file: !6081, line: 226, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6896 = distinct !DISubprogram(name: "check_object_size", scope: !6081, file: !6081, line: 218, type: !6897, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{null, !2569, !39, !832}
!6899 = !{!6900, !6901, !6902}
!6900 = !DILocalVariable(name: "ptr", arg: 1, scope: !6896, file: !6081, line: 218, type: !2569)
!6901 = !DILocalVariable(name: "n", arg: 2, scope: !6896, file: !6081, line: 218, type: !39)
!6902 = !DILocalVariable(name: "to_user", arg: 3, scope: !6896, file: !6081, line: 219, type: !832)
!6903 = !DILocation(line: 218, column: 50, scope: !6896)
!6904 = !DILocation(line: 218, column: 69, scope: !6896)
!6905 = !DILocation(line: 219, column: 15, scope: !6896)
!6906 = !DILocation(line: 220, column: 3, scope: !6896)
!6907 = !DISubprogram(name: "__copy_overflow", scope: !6081, file: !6081, line: 228, type: !6882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6908 = distinct !DISubprogram(name: "__do_compat_sys_sched_setaffinity", scope: !3, file: !3, line: 124, type: !6909, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6911)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{!1055, !6076, !7, !6077}
!6911 = !{!6912, !6913, !6914, !6915, !6916, !6917}
!6912 = !DILocalVariable(name: "pid", arg: 1, scope: !6908, file: !3, line: 124, type: !6076)
!6913 = !DILocalVariable(name: "len", arg: 2, scope: !6908, file: !3, line: 124, type: !7)
!6914 = !DILocalVariable(name: "user_mask_ptr", arg: 3, scope: !6908, file: !3, line: 124, type: !6077)
!6915 = !DILocalVariable(name: "new_mask", scope: !6908, file: !3, line: 128, type: !3287)
!6916 = !DILocalVariable(name: "retval", scope: !6908, file: !3, line: 129, type: !22)
!6917 = !DILabel(scope: !6908, name: "out", file: !3, line: 139)
!6918 = !DILocation(line: 124, column: 1, scope: !6908)
!6919 = !DILocation(line: 128, column: 2, scope: !6908)
!6920 = !DILocation(line: 128, column: 16, scope: !6908)
!6921 = !DILocation(line: 129, column: 2, scope: !6908)
!6922 = !DILocation(line: 129, column: 6, scope: !6908)
!6923 = !DILocation(line: 131, column: 7, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 131, column: 6)
!6925 = !DILocation(line: 131, column: 6, scope: !6908)
!6926 = !DILocation(line: 132, column: 3, scope: !6924)
!6927 = !DILocation(line: 134, column: 36, scope: !6908)
!6928 = !DILocation(line: 134, column: 51, scope: !6908)
!6929 = !DILocation(line: 134, column: 56, scope: !6908)
!6930 = !DILocation(line: 134, column: 11, scope: !6908)
!6931 = !DILocation(line: 134, column: 9, scope: !6908)
!6932 = !DILocation(line: 135, column: 6, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 135, column: 6)
!6934 = !DILocation(line: 135, column: 6, scope: !6908)
!6935 = !DILocation(line: 136, column: 3, scope: !6933)
!6936 = !DILocation(line: 138, column: 29, scope: !6908)
!6937 = !DILocation(line: 138, column: 34, scope: !6908)
!6938 = !DILocation(line: 138, column: 11, scope: !6908)
!6939 = !DILocation(line: 138, column: 9, scope: !6908)
!6940 = !DILocation(line: 138, column: 2, scope: !6908)
!6941 = !DILocation(line: 139, column: 1, scope: !6908)
!6942 = !DILocation(line: 140, column: 19, scope: !6908)
!6943 = !DILocation(line: 140, column: 2, scope: !6908)
!6944 = !DILocation(line: 141, column: 9, scope: !6908)
!6945 = !DILocation(line: 141, column: 2, scope: !6908)
!6946 = !DILocation(line: 142, column: 1, scope: !6908)
!6947 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !566, file: !566, line: 918, type: !6948, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6951)
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!832, !6950, !757}
!6950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!6951 = !{!6952, !6953}
!6952 = !DILocalVariable(name: "mask", arg: 1, scope: !6947, file: !566, line: 918, type: !6950)
!6953 = !DILocalVariable(name: "flags", arg: 2, scope: !6947, file: !566, line: 918, type: !757)
!6954 = !DILocation(line: 918, column: 53, scope: !6947)
!6955 = !DILocation(line: 918, column: 65, scope: !6947)
!6956 = !DILocation(line: 920, column: 2, scope: !6947)
!6957 = distinct !DISubprogram(name: "compat_get_user_cpu_mask", scope: !3, file: !3, line: 110, type: !6958, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6961)
!6958 = !DISubroutineType(types: !6959)
!6959 = !{!22, !6077, !7, !6960}
!6960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!6961 = !{!6962, !6963, !6964, !6965}
!6962 = !DILocalVariable(name: "user_mask_ptr", arg: 1, scope: !6957, file: !3, line: 110, type: !6077)
!6963 = !DILocalVariable(name: "len", arg: 2, scope: !6957, file: !3, line: 111, type: !7)
!6964 = !DILocalVariable(name: "new_mask", arg: 3, scope: !6957, file: !3, line: 111, type: !6960)
!6965 = !DILocalVariable(name: "k", scope: !6957, file: !3, line: 113, type: !4245)
!6966 = !DILocation(line: 110, column: 60, scope: !6957)
!6967 = !DILocation(line: 111, column: 18, scope: !6957)
!6968 = !DILocation(line: 111, column: 39, scope: !6957)
!6969 = !DILocation(line: 113, column: 2, scope: !6957)
!6970 = !DILocation(line: 113, column: 17, scope: !6957)
!6971 = !DILocation(line: 115, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6957, file: !3, line: 115, column: 6)
!6973 = !DILocation(line: 115, column: 12, scope: !6972)
!6974 = !DILocation(line: 115, column: 10, scope: !6972)
!6975 = !DILocation(line: 115, column: 6, scope: !6957)
!6976 = !DILocation(line: 116, column: 10, scope: !6972)
!6977 = !DILocation(line: 116, column: 23, scope: !6972)
!6978 = !DILocation(line: 116, column: 3, scope: !6972)
!6979 = !DILocation(line: 117, column: 11, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6972, file: !3, line: 117, column: 11)
!6981 = !DILocation(line: 117, column: 17, scope: !6980)
!6982 = !DILocation(line: 117, column: 15, scope: !6980)
!6983 = !DILocation(line: 117, column: 11, scope: !6972)
!6984 = !DILocation(line: 118, column: 9, scope: !6980)
!6985 = !DILocation(line: 118, column: 7, scope: !6980)
!6986 = !DILocation(line: 118, column: 3, scope: !6980)
!6987 = !DILocation(line: 120, column: 6, scope: !6957)
!6988 = !DILocation(line: 120, column: 4, scope: !6957)
!6989 = !DILocation(line: 121, column: 27, scope: !6957)
!6990 = !DILocation(line: 121, column: 30, scope: !6957)
!6991 = !DILocation(line: 121, column: 45, scope: !6957)
!6992 = !DILocation(line: 121, column: 49, scope: !6957)
!6993 = !DILocation(line: 121, column: 9, scope: !6957)
!6994 = !DILocation(line: 122, column: 1, scope: !6957)
!6995 = !DILocation(line: 121, column: 2, scope: !6957)
!6996 = !DISubprogram(name: "sched_setaffinity", scope: !308, file: !308, line: 2309, type: !6997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6997 = !DISubroutineType(types: !6998)
!6998 = !{!1055, !5238, !6999}
!6999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7000, size: 64)
!7000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!7001 = distinct !DISubprogram(name: "free_cpumask_var", scope: !566, file: !566, line: 946, type: !7002, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7004)
!7002 = !DISubroutineType(types: !7003)
!7003 = !{null, !6960}
!7004 = !{!7005}
!7005 = !DILocalVariable(name: "mask", arg: 1, scope: !7001, file: !566, line: 946, type: !6960)
!7006 = !DILocation(line: 946, column: 51, scope: !7001)
!7007 = !DILocation(line: 948, column: 1, scope: !7001)
!7008 = distinct !DISubprogram(name: "cpumask_size", scope: !566, file: !566, line: 822, type: !7009, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7009 = !DISubroutineType(types: !7010)
!7010 = !{!7}
!7011 = !DILocation(line: 824, column: 2, scope: !7008)
!7012 = distinct !DISubprogram(name: "__do_compat_sys_sched_getaffinity", scope: !3, file: !3, line: 144, type: !6909, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7013)
!7013 = !{!7014, !7015, !7016, !7017, !7018, !7019, !7022, !7024}
!7014 = !DILocalVariable(name: "pid", arg: 1, scope: !7012, file: !3, line: 144, type: !6076)
!7015 = !DILocalVariable(name: "len", arg: 2, scope: !7012, file: !3, line: 144, type: !7)
!7016 = !DILocalVariable(name: "user_mask_ptr", arg: 3, scope: !7012, file: !3, line: 144, type: !6077)
!7017 = !DILocalVariable(name: "ret", scope: !7012, file: !3, line: 147, type: !22)
!7018 = !DILocalVariable(name: "mask", scope: !7012, file: !3, line: 148, type: !3287)
!7019 = !DILocalVariable(name: "retlen", scope: !7020, file: !3, line: 160, type: !7)
!7020 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 159, column: 16)
!7021 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 159, column: 6)
!7022 = !DILocalVariable(name: "__UNIQUE_ID___x352", scope: !7023, file: !3, line: 160, type: !7)
!7023 = distinct !DILexicalBlock(scope: !7020, file: !3, line: 160, column: 25)
!7024 = !DILocalVariable(name: "__UNIQUE_ID___y353", scope: !7023, file: !3, line: 160, type: !7)
!7025 = !DILocation(line: 144, column: 1, scope: !7012)
!7026 = !DILocation(line: 147, column: 2, scope: !7012)
!7027 = !DILocation(line: 147, column: 6, scope: !7012)
!7028 = !DILocation(line: 148, column: 2, scope: !7012)
!7029 = !DILocation(line: 148, column: 16, scope: !7012)
!7030 = !DILocation(line: 150, column: 7, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 150, column: 6)
!7032 = !DILocation(line: 150, column: 11, scope: !7031)
!7033 = !DILocation(line: 150, column: 30, scope: !7031)
!7034 = !DILocation(line: 150, column: 28, scope: !7031)
!7035 = !DILocation(line: 150, column: 6, scope: !7012)
!7036 = !DILocation(line: 151, column: 3, scope: !7031)
!7037 = !DILocation(line: 152, column: 6, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 152, column: 6)
!7039 = !DILocation(line: 152, column: 10, scope: !7038)
!7040 = !DILocation(line: 152, column: 6, scope: !7012)
!7041 = !DILocation(line: 153, column: 3, scope: !7038)
!7042 = !DILocation(line: 155, column: 7, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 155, column: 6)
!7044 = !DILocation(line: 155, column: 6, scope: !7012)
!7045 = !DILocation(line: 156, column: 3, scope: !7043)
!7046 = !DILocation(line: 158, column: 26, scope: !7012)
!7047 = !DILocation(line: 158, column: 31, scope: !7012)
!7048 = !DILocation(line: 158, column: 8, scope: !7012)
!7049 = !DILocation(line: 158, column: 6, scope: !7012)
!7050 = !DILocation(line: 159, column: 6, scope: !7021)
!7051 = !DILocation(line: 159, column: 10, scope: !7021)
!7052 = !DILocation(line: 159, column: 6, scope: !7012)
!7053 = !DILocation(line: 160, column: 3, scope: !7020)
!7054 = !DILocation(line: 160, column: 16, scope: !7020)
!7055 = !DILocation(line: 160, column: 25, scope: !7023)
!7056 = !DILocation(line: 160, column: 25, scope: !7020)
!7057 = !DILocation(line: 162, column: 25, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7020, file: !3, line: 162, column: 7)
!7059 = !DILocation(line: 162, column: 40, scope: !7058)
!7060 = !DILocation(line: 162, column: 60, scope: !7058)
!7061 = !DILocation(line: 162, column: 67, scope: !7058)
!7062 = !DILocation(line: 162, column: 7, scope: !7058)
!7063 = !DILocation(line: 162, column: 7, scope: !7020)
!7064 = !DILocation(line: 163, column: 8, scope: !7058)
!7065 = !DILocation(line: 163, column: 4, scope: !7058)
!7066 = !DILocation(line: 165, column: 10, scope: !7058)
!7067 = !DILocation(line: 165, column: 8, scope: !7058)
!7068 = !DILocation(line: 166, column: 2, scope: !7021)
!7069 = !DILocation(line: 166, column: 2, scope: !7020)
!7070 = !DILocation(line: 167, column: 19, scope: !7012)
!7071 = !DILocation(line: 167, column: 2, scope: !7012)
!7072 = !DILocation(line: 169, column: 9, scope: !7012)
!7073 = !DILocation(line: 169, column: 2, scope: !7012)
!7074 = !DILocation(line: 170, column: 1, scope: !7012)
!7075 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !566, file: !566, line: 929, type: !6948, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7076)
!7076 = !{!7077, !7078}
!7077 = !DILocalVariable(name: "mask", arg: 1, scope: !7075, file: !566, line: 929, type: !6950)
!7078 = !DILocalVariable(name: "flags", arg: 2, scope: !7075, file: !566, line: 929, type: !757)
!7079 = !DILocation(line: 929, column: 54, scope: !7075)
!7080 = !DILocation(line: 929, column: 66, scope: !7075)
!7081 = !DILocation(line: 931, column: 17, scope: !7075)
!7082 = !DILocation(line: 931, column: 16, scope: !7075)
!7083 = !DILocation(line: 931, column: 2, scope: !7075)
!7084 = !DILocation(line: 932, column: 2, scope: !7075)
!7085 = !DISubprogram(name: "sched_getaffinity", scope: !308, file: !308, line: 2310, type: !7086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7086 = !DISubroutineType(types: !7087)
!7087 = !{!1055, !5238, !6960}
!7088 = distinct !DISubprogram(name: "cpumask_clear", scope: !566, file: !566, line: 552, type: !7002, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7089)
!7089 = !{!7090}
!7090 = !DILocalVariable(name: "dstp", arg: 1, scope: !7088, file: !566, line: 552, type: !6960)
!7091 = !DILocation(line: 552, column: 50, scope: !7088)
!7092 = !DILocation(line: 554, column: 14, scope: !7088)
!7093 = !DILocation(line: 554, column: 2, scope: !7088)
!7094 = !DILocation(line: 555, column: 1, scope: !7088)
!7095 = distinct !DISubprogram(name: "bitmap_zero", scope: !7096, file: !7096, line: 246, type: !7097, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7099)
!7096 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7097 = !DISubroutineType(types: !7098)
!7098 = !{null, !4245, !7}
!7099 = !{!7100, !7101, !7102}
!7100 = !DILocalVariable(name: "dst", arg: 1, scope: !7095, file: !7096, line: 246, type: !4245)
!7101 = !DILocalVariable(name: "nbits", arg: 2, scope: !7095, file: !7096, line: 246, type: !7)
!7102 = !DILocalVariable(name: "len", scope: !7095, file: !7096, line: 248, type: !7)
!7103 = !DILocation(line: 246, column: 47, scope: !7095)
!7104 = !DILocation(line: 246, column: 65, scope: !7095)
!7105 = !DILocation(line: 248, column: 2, scope: !7095)
!7106 = !DILocation(line: 248, column: 15, scope: !7095)
!7107 = !DILocation(line: 248, column: 21, scope: !7095)
!7108 = !DILocation(line: 250, column: 6, scope: !7109)
!7109 = distinct !DILexicalBlock(scope: !7095, file: !7096, line: 250, column: 6)
!7110 = !DILocation(line: 250, column: 6, scope: !7095)
!7111 = !DILocation(line: 251, column: 4, scope: !7109)
!7112 = !DILocation(line: 251, column: 8, scope: !7109)
!7113 = !DILocation(line: 251, column: 3, scope: !7109)
!7114 = !DILocation(line: 253, column: 10, scope: !7109)
!7115 = !DILocation(line: 253, column: 18, scope: !7109)
!7116 = !DILocation(line: 253, column: 3, scope: !7109)
!7117 = !DILocation(line: 254, column: 1, scope: !7095)
!7118 = distinct !DISubprogram(name: "stac", scope: !6549, file: !6549, line: 36, type: !3220, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7119 = !DILocation(line: 39, column: 2, scope: !7118)
!7120 = !{i64 2152476186, i64 2152476214, i64 2152476220, i64 2152476236, i64 2152476252, i64 2152476279, i64 2152476593, i64 2152475936, i64 2152476599, i64 2152476647, i64 2152476711, i64 2152476775, i64 2152476832, i64 2152476017, i64 2152476042, i64 2152477039, i64 2152477175, i64 2152477100, i64 2152477189, i64 2152476134}
!7121 = !DILocation(line: 40, column: 1, scope: !7118)
!7122 = !DISubprogram(name: "_copy_from_user", scope: !6258, file: !6258, line: 158, type: !6259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
